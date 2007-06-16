/*
 *  Generic Dynamic compiler generator
 * 
 *  Copyright (c) 2003 Fabrice Bellard
 *  Copyright (c) 2007 Tilmann Scheller
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 */

/*
 * TODO: - get arg count for micro ops
 *       - add extern declarations for all relocations which are not parameters
 *
 *       - load bitcode file with micro ops
 *       - create array of Functions indexed by micro op indices
 *       - set up JIT
 *       - create TB function
 *       - add mappings to JIT for external symbols
 *       - JIT TB function
 *
 *       - input: buffer containing micro op indices, buffer containing micro op parameters
 *       - for every micro index:
 *         - determine micro op type (at compile time):
 *           - "void" op:
 *             - load op parameters
 *             - patch __op_param relocations
 *               - add call to micro op
 *               - fill in arguments from parameter variables
 *           - "int" op
 *             - load op parameters
 *             - patch __op_gen_label relocations
 *              - modify all micro ops which use GOTO_PARAM_LABEL to return a sensible value
 *              - add CFG framework, including call to micro op
 *              - fetch jump target from parameter variables
 *              - keep track of jump targets and patch branches in CFG framework
 *
 *       - check where micro op size is used and make changes, e.g. dyngen_labels()
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <stdarg.h>
#include <inttypes.h>
#include <unistd.h>
#include <fcntl.h>

#include "config-host.h"

// #ifdef CONFIG_FORMAT_LLVM
#include "llvm/Module.h"
#include "llvm/Constants.h"
#include "llvm/DerivedTypes.h"
#include "llvm/Instructions.h"
#include "llvm/ModuleProvider.h"
#include "llvm/ExecutionEngine/JIT.h"
#include "llvm/ExecutionEngine/Interpreter.h"
#include "llvm/ExecutionEngine/GenericValue.h"

#include "llvm/Bitcode/ReaderWriter.h"
#include "llvm/Support/MemoryBuffer.h"

#include "llvm/Transforms/Utils/Cloning.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

#include "llvm/ValueSymbolTable.h"

#include <iostream>
// #endif /* CONFIG_FORMAT_LLVM */

enum {
    OUT_GEN_OP,
    OUT_CODE,
    OUT_INDEX_OP
};

/* all dynamically generated functions begin with this code */
#define OP_PREFIX "op_"

void __attribute__((noreturn)) __attribute__((format (printf, 1, 2))) error(const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    fprintf(stderr, "dyngen: ");
    vfprintf(stderr, fmt, ap);
    fprintf(stderr, "\n");
    va_end(ap);
    exit(1);
}

int strstart(const char *str, const char *val, const char **ptr)
{
    const char *p, *q;
    p = str;
    q = val;
    while (*q != '\0') {
        if (*p != *q)
            return 0;
        p++;
        q++;
    }
    if (ptr)
        *ptr = p;
    return 1;
}

void pstrcpy(char *buf, int buf_size, const char *str)
{
    int c;
    char *q = buf;

    if (buf_size <= 0)
        return;

    for(;;) {
        c = *str++;
        if (c == 0 || q >= buf + buf_size - 1)
            break;
        *q++ = c;
    }
    *q = '\0';
}

// #ifdef CONFIG_FORMAT_LLVM
using namespace llvm;

Module * ops;

int load_object_llvm(const char *filename)
{
  MemoryBuffer *buf = MemoryBuffer::getFile(filename, strlen(filename));
  
  if (buf == NULL) {
    std::cout << "micro op bitcode file not found\n";
    exit(-1);
  }
  
  ops = ParseBitcodeFile(buf, NULL);

  if (ops == NULL) {
    std::cout << "micro op bitcode file could not be read\n";
    exit(-1);
  }
  
//   for (Module::global_iterator i = ops->global_begin(), e = ops->global_end(); i != e; ++i) {
//    std::cout << *i;
//   }
//   for (Module::iterator i = ops->begin(), e = ops->end(); i != e; ++i) {
//     Function *f = (Function *) i;
//     if (f->isDeclaration() && f->hasExternalLinkage()) {
//       std::cout << *f;
//     }
//   }
}

// #endif /* CONFIG_FORMAT_LLVM */

void get_reloc_expr(char *name, int name_size, const char *sym_name)
{
    const char *p;

    if (strstart(sym_name, "__op_param", &p)) {
        snprintf(name, name_size, "param%s", p);
    } else if (strstart(sym_name, "__op_gen_label", &p)) {
        snprintf(name, name_size, "gen_labels[param%s]", p);
    } else {
      snprintf(name, name_size, "(long)(&%s)", sym_name);
    }
}

#define MAX_ARGS 3

int get_arg_count(const char *name, Function *op)
{
    uint8_t args_present[MAX_ARGS];
    int nb_args, i, n;
    const char *p;

    for(i = 0;i < MAX_ARGS; i++)
        args_present[i] = 0;

    // compute the number of arguments by looking at
    // the uses of the op parameters
    for (Function::arg_iterator i = op->arg_begin(), e = op->arg_end(); i != e; ++i) {
      const char *tmpArgName = i->getName().c_str();
      char *argName = (char *) malloc(strlen(tmpArgName + 1));
      strcpy(argName, tmpArgName);

      if (strstart(argName, "__op_param", &p)) {
	if (i->hasNUsesOrMore(1)) {
	  n = strtoul(p, NULL, 10);
	  if (n > MAX_ARGS)
	    error("too many arguments in %s", name);
	  args_present[n - 1] = 1;
	}
      }
    }

    for (i = 1; i <= MAX_ARGS; i++) {
      char *funcName = (char *) malloc(20);
      sprintf(funcName, "__op_gen_label%d", i);
      Function *f = ops->getFunction(std::string(funcName));
      if (f != NULL) {
	  for (Function::use_iterator j = f->use_begin(), e = f->use_end(); j != e; ++j) {
	      if (Instruction *inst = dyn_cast<Instruction>(*j)) {
		if (inst->getParent()->getParent() == op) {
		  args_present[i - 1] = 1;
		}
	      }
	  }
      } else {
	  std::cout << "symbol not found\n";
      }
    }

    nb_args = 0;
    while (nb_args < MAX_ARGS && args_present[nb_args])
        nb_args++;

    for(i = nb_args; i < MAX_ARGS; i++) {
        if (args_present[i])
            error("inconsistent argument numbering in %s", name);
    }

    return nb_args;
}

// generate code for ops which return a void value
void gen_code_void_op(const char *name,
              FILE *outfile, Function *op)
{
    uint8_t args_present[MAX_ARGS];
    int nb_args, i, n;
    const char *p;

    for(i = 0;i < MAX_ARGS; i++)
        args_present[i] = 0;

    // compute the number of arguments by looking at
    // the uses of the op parameters
    for (Function::arg_iterator i = op->arg_begin(), e = op->arg_end(); i != e; ++i) {
      const char *tmpArgName = i->getName().c_str();
      char *argName = (char *) malloc(strlen(tmpArgName + 1));
      strcpy(argName, tmpArgName);

      if (strstart(argName, "__op_param", &p)) {
	if (i->hasNUsesOrMore(1)) {
	  n = strtoul(p, NULL, 10);
	  if (n > MAX_ARGS)
	    error("too many arguments in %s", name);
	  args_present[n - 1] = 1;
	}
      }
    }

    nb_args = 0;
    while (nb_args < MAX_ARGS && args_present[nb_args])
        nb_args++;

    for(i = nb_args; i < MAX_ARGS; i++) {
        if (args_present[i])
            error("inconsistent argument numbering in %s", name);
    }

    // add local variables for op parameters
    if (nb_args > 0) {
        fprintf(outfile, "    long ");
        for(i = 0; i < nb_args; i++) {
	    if (i != 0)
	        fprintf(outfile, ", ");
	    fprintf(outfile, "param%d", i + 1);
        }
        fprintf(outfile, ";\n");
    }

    // load parameres in variables
    for(i = 0; i < nb_args; i++) {
        fprintf(outfile, "    param%d = *opparam_ptr++;\n", i + 1);
    }

    // load op parameters into the arguments of the call
    fprintf(outfile, "Value * args[MAX_ARGS];\n");
    for (i = 0; i < nb_args; i++) {
      fprintf(outfile, "args[%d] = ConstantInt::get(Type::Int32Ty, param%d);\n", i, i + 1);
    }
    for (i = nb_args; i < MAX_ARGS; i++) {
      fprintf(outfile, "args[%d] = zero;\n", i);
    }
    // add call to micro op
    fprintf(outfile, "    currCall = new CallInst(M->getFunction(\"%s\"), (Value **)&args, %d, \"\", currBB);\n", name, MAX_ARGS);
    fprintf(outfile, "    InlineFunction(currCall);");
}


void gen_code_int_op();

// add external declarations and the necessary code to resolve them
void add_decls(FILE *outfile)
{
    for (Module::global_iterator i = ops->global_begin(), e = ops->global_end(); i != e; ++i) {
      GlobalVariable *g = (GlobalVariable *) i;
      
      if (g->isDeclaration()) {
	fprintf(outfile, "extern char %s;\n", g->getName().c_str());
      }
    }

    for (Module::iterator i = ops->begin(), e = ops->end(); i != e; ++i) {
      Function *f = (Function *) i;

      if (f->isDeclaration()) {
	  fprintf(outfile, "extern char %s;\n", f->getName().c_str());
      }
    }
}

void add_resolv(FILE *outfile)
{
    for (Module::global_iterator i = ops->global_begin(), e = ops->global_end(); i != e; ++i) {
      GlobalVariable *g = (GlobalVariable *) i;
      
      if (g->isDeclaration()) {
	  fprintf(outfile, "EE->addGlobalMapping(M->getNamedGlobal(\"%s\"), &%s);\n",
                  g->getName().c_str(), g->getName().c_str());
      }
    }

    for (Module::iterator i = ops->begin(), e = ops->end(); i != e; ++i) {
      Function *f = (Function *) i;

      if (f->isDeclaration()) {
	  fprintf(outfile, "EE->addGlobalMapping(M->getFunction(\"%s\"), &%s);\n",
                  f->getName().c_str(), f->getName().c_str());
      }
    }
}


/* generate op code */
void gen_code(const char *name,
              FILE *outfile, int gen_switch, Function *op)
{
    // TODO calculate number of parameters, else dump_ops()
    // and all gen_* functions which require parameters won't work
    int nb_args, i;
    nb_args = get_arg_count(name, op);

    if (gen_switch == OUT_INDEX_OP) {
      fprintf(outfile, "DEF(%s, %d)\n", name + 3, nb_args);
    } else if (gen_switch == OUT_CODE) {

        /* output C code */
        fprintf(outfile, "case INDEX_%s: {\n", name);

	gen_code_void_op(name, outfile, op);

        //fprintf(outfile, "    extern void %s();\n", name);

// 	for (User::op_iterator i = op->op_begin(), e = op->op_end(); i != e; ++i) {
// 	  printf("blah\n");
// 	  std::cout << i << "\n";
// 	}

//         for(i = 0, rel = relocs;i < nb_relocs; i++, rel++) {
//             host_ulong offset = get_rel_offset(rel);
//             if (offset >= start_offset &&
//                 offset < start_offset + (p_end - p_start)) {
//                 sym_name = get_rel_sym_name(rel);
//                 if(!sym_name)
//                     continue;
//                 if (*sym_name && 
//                     !strstart(sym_name, "__op_param", NULL) &&
//                     !strstart(sym_name, "__op_jmp", NULL) &&
//                     !strstart(sym_name, "__op_gen_label", NULL)) {
//                     fprintf(outfile, "extern char %s;\n", sym_name);
//                 }
//             }
//         }

// 	ValueSymbolTable& symtab2 = op->getValueSymbolTable();

// 	for (ValueSymbolTable::iterator abc = symtab2.begin(), e = symtab2.end(); abc != e; ++abc) {
// 	  Value* v = (*abc).getValue();
// 	  if (isa<GlobalValue>((*abc).getValue()) || true) {
// 	    std::cout << *v->getType() << " ";
// 	    std::cout << v->getName() << "\n";
// 	  }
// 	}
// 	std::cout << "----------------------------\n";

        /* patch relocations */
// #if defined(HOST_I386)
//             {
//                 char name[256];
//                 int type;
//                 int addend;
//                 int reloc_offset;
//                 for(i = 0, rel = relocs;i < nb_relocs; i++, rel++) {
//                 if (rel->r_offset >= start_offset &&
// 		    rel->r_offset < start_offset + copy_size) {
//                     sym_name = get_rel_sym_name(rel);
//                     if (!sym_name)
//                         continue;
//                     reloc_offset = rel->r_offset - start_offset;
//                     if (strstart(sym_name, "__op_jmp", &p)) {
//                         int n;
//                         n = strtol(p, NULL, 10);
//                         /* __op_jmp relocations are done at
//                            runtime to do translated block
//                            chaining: the offset of the instruction
//                            needs to be stored */
//                         fprintf(outfile, "    jmp_offsets[%d] = %d + (gen_code_ptr - gen_code_buf);\n",
//                                 n, reloc_offset);
//                         continue;
//                     }

//                     get_reloc_expr(name, sizeof(name), sym_name);
//                     addend = get32((uint32_t *)(text + rel->r_offset));
// #ifdef CONFIG_FORMAT_ELF
//                     type = ELF32_R_TYPE(rel->r_info);
//                     switch(type) {
//                     case R_386_32:
//                         fprintf(outfile, "    *(uint32_t *)(gen_code_ptr + %d) = %s + %d;\n", 
//                                 reloc_offset, name, addend);
//                         break;
//                     case R_386_PC32:
//                         fprintf(outfile, "    *(uint32_t *)(gen_code_ptr + %d) = %s - (long)(gen_code_ptr + %d) + %d;\n", 
//                                 reloc_offset, name, reloc_offset, addend);
//                         break;
//                     default:
//                         error("unsupported i386 relocation (%d)", type);
//                     }
// #else
// #error unsupport object format
// #endif
//                 }
//                 }
//             }
// #else
// #error unsupported CPU
// #endif
	//        fprintf(outfile, "    gen_code_ptr += %d;\n", copy_size);
        fprintf(outfile, "}\n");
        fprintf(outfile, "break;\n\n");
    } else {
        fprintf(outfile, "static inline void gen_%s(", name);
        if (nb_args == 0) {
            fprintf(outfile, "void");
        } else {
            for(i = 0; i < nb_args; i++) {
                if (i != 0)
                    fprintf(outfile, ", ");
                fprintf(outfile, "long param%d", i + 1);
            }
        }
        fprintf(outfile, ")\n");
        fprintf(outfile, "{\n");
        for(i = 0; i < nb_args; i++) {
            fprintf(outfile, "    *gen_opparam_ptr++ = param%d;\n", i + 1);
        }
        fprintf(outfile, "    *gen_opc_ptr++ = INDEX_%s;\n", name);
        fprintf(outfile, "}\n\n");
    }
}

int gen_file(FILE *outfile, int out_type)
{
    if (out_type == OUT_INDEX_OP) {
        fprintf(outfile, "DEF(end, 0)\n");
        fprintf(outfile, "DEF(nop, 0)\n");
        fprintf(outfile, "DEF(nop1, 1)\n");
        fprintf(outfile, "DEF(nop2, 2)\n");
        fprintf(outfile, "DEF(nop3, 3)\n");

	// iterate over all functions whose names start with OP_PREFIX
	for (Module::iterator i = ops->begin(), e = ops->end(); i != e; ++i) {
	  const char *tmpName = i->getName().c_str();
	  char *name = (char *) malloc(strlen(tmpName) + 1);
	  strcpy(name, tmpName);
	  if (strstart(name, OP_PREFIX, NULL)) {
	    gen_code(name, outfile, OUT_INDEX_OP, i);
	  }
	}
    } else if (out_type == OUT_GEN_OP) {
        /* generate gen_xxx functions */
        fprintf(outfile, "#include \"dyngen-op.h\"\n");

	// iterate over all functions whose names start with OP_PREFIX
	for (Module::iterator i = ops->begin(), e = ops->end(); i != e; ++i) {
	  const char *tmpName = i->getName().c_str();
	  char *name = (char *) malloc(strlen(tmpName) + 1);
	  strcpy(name, tmpName);
	  if (strstart(name, OP_PREFIX, NULL)) {
	    gen_code(name, outfile, OUT_GEN_OP, i);
	  }
	}
        
    } else {
        /* generate big code generation switch */

fprintf(outfile,
"#include \"llvm/Module.h\"\n"
"#include \"llvm/Constants.h\"\n"
"#include \"llvm/DerivedTypes.h\"\n"
"#include \"llvm/Instructions.h\"\n"
"#include \"llvm/ModuleProvider.h\"\n"
"#include \"llvm/ExecutionEngine/JIT.h\"\n"
"#include \"llvm/ExecutionEngine/Interpreter.h\"\n"
"#include \"llvm/ExecutionEngine/GenericValue.h\"\n"
"#include \"llvm/Bitcode/ReaderWriter.h\"\n"
"#include \"llvm/Support/MemoryBuffer.h\"\n"
"#include \"llvm/Transforms/Utils/Cloning.h\"\n"
"#include \"llvm/Transforms/Utils/BasicBlockUtils.h\"\n"
"#include <iostream>\n"
"#define MAX_ARGS 3\n"
"using namespace llvm;\n"
"ExecutionEngine *EE;\n"
"Module *M;\n"
"Function *ops2[100];\n");

add_decls(outfile);

fprintf(outfile,
"void init_jit()\n"
"{\n"
"  MemoryBuffer *buf = MemoryBuffer::getFile(\"op.o\", 4);\n"
"\n"
"  if (buf == NULL) {\n"
"    std::cout << \"micro op bitcode file not found\\n\";\n"
"    //exit(-1);\n"
"  }\n"
"\n"
"  M = ParseBitcodeFile(buf, NULL);\n"
"\n"
"  if (M == NULL) {\n"
"    std::cout << \"micro op bitcode file could not be read\\n\";\n"
"    //exit(-1);\n"
"  }\n"
"ExistingModuleProvider* MP = new ExistingModuleProvider(M);\n"
"EE = ExecutionEngine::create(MP, false);\n"
	);
 add_resolv(outfile);
	fprintf(outfile,
"std::cout << \"JIT initialized\\n\";\n"
"}\n"
	);


fprintf(outfile,
"extern \"C\" int dyngen_code(uint8_t *gen_code_buf,\n"
"                uint16_t *label_offsets, uint16_t *jmp_offsets,\n"
"                const uint16_t *opc_buf, const uint32_t *opparam_buf, const long *gen_labels)\n"
"{\n"
"    uint8_t *gen_code_ptr;\n"
"    const uint16_t *opc_ptr;\n"
"    const uint32_t *opparam_ptr;\n");


fprintf(outfile,
"\n"
"    gen_code_ptr = gen_code_buf;\n"
"    opc_ptr = opc_buf;\n"
"    opparam_ptr = opparam_buf;\n");

// load op.bc, create container module
fprintf(outfile,
"std::cout << \"dyngen_code_llvm!!!\";\n"
"  if (M == 0) init_jit();\n"
"  Function *tb =\n"
"    cast<Function>(M->getOrInsertFunction(\"tb\", Type::VoidTy, (Type *)0));\n"
"  BasicBlock *BB = new BasicBlock(\"EntryBlock\", tb);  \n"
"    BasicBlock *currBB = BB;\n"
"    CallInst *currCall;\n"
"    Value *zero = ConstantInt::get(Type::Int32Ty, 0);\n"
);


	/* Generate prologue, if needed. */ 

fprintf(outfile,
"    for(;;) {\n");


fprintf(outfile,
"        switch(*opc_ptr++) {\n");

	// iterate over all functions whose names start with OP_PREFIX
	for (Module::iterator i = ops->begin(), e = ops->end(); i != e; ++i) {
	  const char *tmpName = i->getName().c_str();
	  char *name = (char *) malloc(strlen(tmpName) + 1);
	  strcpy(name, tmpName);
	  if (strstart(name, OP_PREFIX, NULL)) {
	    gen_code(name, outfile, OUT_CODE, i);
	  }
	}

fprintf(outfile,
"        case INDEX_op_nop:\n"
"            break;\n"
"        case INDEX_op_nop1:\n"
"            opparam_ptr++;\n"
"            break;\n"
"        case INDEX_op_nop2:\n"
"            opparam_ptr += 2;\n"
"            break;\n"
"        case INDEX_op_nop3:\n"
"            opparam_ptr += 3;\n"
"            break;\n"
"        default:\n"
"            goto the_end;\n"
"        }\n");


fprintf(outfile,
"    }\n"
" the_end:\n"
);

/* generate some code patching */ 
 fprintf(outfile, "new ReturnInst(currBB);"); 
    fprintf(outfile, "std::cout << *tb;\n"
"void *code = EE->getPointerToFunction(tb);\n"
"if (code == NULL) {std::cout << \"compilation failed\\n\"; } else {std::cout << \"compilation successful\\n\"; }"
"memcpy(gen_code_buf, code, 10*1024);\n"
);
    /* flush instruction cache */
    fprintf(outfile, "flush_icache_range((unsigned long)gen_code_buf, (unsigned long)gen_code_ptr);\n");

    //fprintf(outfile, "return gen_code_ptr -  gen_code_buf;\n");
    fprintf(outfile, "return 10*1024;\n");
    fprintf(outfile, "}\n\n");

    }

    return 0;
}

void usage(void)
{
    printf("dyngen (c) 2003 Fabrice Bellard\n"
           "usage: dyngen [-o outfile] [-c | -g] objfile\n"
           "Generate a dynamic code generator from an object file\n"
           "-c     output enum of operations\n"
           "-g     output gen_op_xx() functions\n"
           );
    exit(1);
}

int main(int argc, char **argv)
{
    int c, out_type;
    const char *filename, *outfilename;
    FILE *outfile;

    outfilename = "out.c";
    out_type = OUT_CODE;

    for(;;) {
        c = getopt(argc, argv, "ho:cg");
        if (c == -1)
            break;
        switch(c) {
        case 'h':
            usage();
            break;
        case 'o':
            outfilename = optarg;
            break;
        case 'c':
            out_type = OUT_INDEX_OP;
            break;
        case 'g':
            out_type = OUT_GEN_OP;
            break;
        }
    }

    if (optind >= argc)
        usage();

    filename = argv[optind];
    outfile = fopen(outfilename, "w");

    if (!outfile)
        error("could not open '%s'", outfilename);

    load_object_llvm(filename);
    gen_file(outfile, out_type);

    fclose(outfile);

    return 0;
}
