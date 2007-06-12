//===-- llvm-qemu prototype --===//
//
// Author: Tilmann Scheller
//
//===----------------------------------------------------------------------===//

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

#include <iostream>

void *env;
uint32_t T0;
uint32_t T1;
uint32_t T2;

using namespace llvm;

int main() {
  uint32_t *regs = (uint32_t *) malloc(16 * sizeof(uint32_t));
  env = malloc(100 * 1024);
  *((uint32_t *) env) = (uint32_t) regs;
  
  // load micro ops
  // compile micro ops
  MemoryBuffer *buf = MemoryBuffer::getFile("op.o", 4);
  
  if (buf == NULL) {
    std::cout << "bitcode file not found\n";
    return -1;
  }
  
  Module *M = ParseBitcodeFile(buf, NULL);

  if (M == NULL) {
    std::cout << "bitcode file could not be read\n";
    return -1;
  }

  std::cout << "bitcode file successfully loaded\n";

  //std::cout << *M;

  Function *op = M->getFunction("op_movl_T0_r0");
  
  if (op == NULL) {
    std::cout << "op_movl_T0_r0 not found\n";
    return -1;
  }

  std::cout << "found op\n";

  GlobalVariable *op_T0 = M->getGlobalVariable("T0", false);
  if (op_T0 == NULL) {
    std::cout << "T0 not found\n";
    return -1;
  }
  std::cout << "found T0\n";

  GlobalVariable *op_env = M->getGlobalVariable("env", false);
  if (op_env == NULL) {
    std::cout << "env not found\n";
    return -1;
  }
  std::cout << "found env\n";

  ExistingModuleProvider* MP = new ExistingModuleProvider(M);
  ExecutionEngine* EE = ExecutionEngine::create(MP, false);

  // bind globals

  EE->addGlobalMapping(op_T0, &T0);
  EE->addGlobalMapping(op_env, env);

  void *code = EE->getPointerToFunction(op);

  if (code == NULL) {
    std::cout << "op_movl_T0_r0 could not be compiled\n";
    return -1;
  }

  std::cout << "compiled op\n";

  regs[0] = 0xDEADBEEF;
  T0 = 0;

  std::vector<GenericValue> noargs;
  GenericValue gv = EE->runFunction(op, noargs);

  std::cout << "op was executed\n";

  if (T0 == 0xDEADBEEF) {
    std::cout << "T0 contains correct value\n";
  }

  // move immediate
  // GlobalVariable *op_param1 = M->getGlobalVariable("__op_param1", false);
//   if (op_param1 == NULL) {
//     std::cout << "__op_param1 not found\n";
//     return -1;
//   }
//   std::cout << "found __op_param1\n";

  Function *op_imm = M->getFunction("op_movl_T0_im");
  
  if (op_imm == NULL) {
    std::cout << "op_movl_T0_im not found\n";
    return -1;
  }

  std::cout << "found op_movl_T0_im\n";

  std::cout << *op_imm;

  // load test micro op
  // add label parameter
  // patch branch to branch to label parameter

  Function *op_test_eq = M->getFunction("op_test_eq");

  if (op_test_eq == NULL) {
    std::cout << "op_test_eq not found\n";
    return -1;
  }

  std::cout << "found op_test_eq\n";
  
  std::cout << *op_test_eq;

//   EE->addGlobalMapping(op_param1, (void *) 12345);

//   void *codeImm = EE->getPointerToFunction(op_imm);

//   if (codeImm == NULL) {
//     std::cout << "op_movl_T0_imm could not be compiled\n";
//     return -1;
//   }

//   std::cout << "compiled op_imm\n";

//   std::vector<GenericValue> noargs2;
//   GenericValue gv2 = EE->runFunction(op_imm, noargs2);

//   std::cout << "op_imm was executed\n";
//   std::cout << T0;

  // create a translation block by creating a new function
  // with function calls to the micro ops
  // inline the micro ops

  Function *tb =
    cast<Function>(M->getOrInsertFunction("tb", Type::VoidTy, (Type *)0));

  BasicBlock *BB = new BasicBlock("EntryBlock", tb);  

  Value * args[3];

  Value *Deadbeef = ConstantInt::get(Type::Int32Ty, 0xDEADBEEF);
  Value *Zero = ConstantInt::get(Type::Int32Ty, 0);

  args[0] = Deadbeef;
  args[1] = Zero;
  args[2] = Zero;

  CallInst *op3CallRes = new CallInst(op_test_eq,  (Value **)&args, 3, "", BB);
  op3CallRes->setTailCall(true);

  CallInst *op1CallRes = new CallInst(op, "", BB);
  op1CallRes->setTailCall(true);

  BasicBlock *nextIns = new BasicBlock("nextInstruction", tb);
  BranchInst *link = new BranchInst(nextIns, BB);

  CallInst *op2CallRes = new CallInst(op_imm,  (Value **)&args, 3, "", nextIns);
  op2CallRes->setTailCall(true);

  // Create the return instruction and add it to the basic block.
  new ReturnInst(nextIns);

  Function *dummy = M->getFunction("nextIns");

 InlineFunction(op3CallRes);


  for (Value::use_iterator i = dummy->use_begin(), e = dummy->use_end(); i != e; ++i)
    if (Instruction *Inst = dyn_cast<Instruction>(*i)) {
      if (Inst->getParent()->getParent() == tb) {
      llvm::cerr << "dummy is used in instruction:\n";
      llvm::cerr << *Inst << "\n";
BasicBlock::iterator ii(Inst);

ReplaceInstWithInst(Inst->getParent()->getInstList(), ii,
                    new BranchInst(nextIns));
      }
    }

  InlineFunction(op1CallRes);
  InlineFunction(op2CallRes);


  std::cout << *tb;


  void *codeTB = EE->getPointerToFunction(tb);

  if (codeTB == NULL) {
    std::cout << "TB could not be compiled\n";
    return -1;
  }
  
//   // Create some module to put our function into it.
//   Module *M = new Module("test");

//   // Create the add1 function entry and insert this entry into module M.  The
//   // function will have a return type of "int" and take an argument of "int".
//   // The '0' terminates the list of argument types.
//   Function *Add1F =
//     cast<Function>(M->getOrInsertFunction("add1", Type::Int32Ty, Type::Int32Ty,
//                                           (Type *)0));

//   // Add a basic block to the function. As before, it automatically inserts
//   // because of the last argument.
//   BasicBlock *BB = new BasicBlock("EntryBlock", Add1F);

//   // Get pointers to the constant `1'.
//   Value *One = ConstantInt::get(Type::Int32Ty, 1);

//   // Get pointers to the integer argument of the add1 function...
//   assert(Add1F->arg_begin() != Add1F->arg_end()); // Make sure there's an arg
//   Argument *ArgX = Add1F->arg_begin();  // Get the arg
//   ArgX->setName("AnArg");            // Give it a nice symbolic name for fun.

//   // Create the add instruction, inserting it into the end of BB.
//   Instruction *Add = BinaryOperator::createAdd(One, ArgX, "addresult", BB);

//   // Create the return instruction and add it to the basic block
//   new ReturnInst(Add, BB);

//   // Now, function add1 is ready.


//   // Now we going to create function `foo', which returns an int and takes no
//   // arguments.
//   Function *FooF =
//     cast<Function>(M->getOrInsertFunction("foo", Type::Int32Ty, (Type *)0));

//   // Add a basic block to the FooF function.
//   BB = new BasicBlock("EntryBlock", FooF);

//   // Get pointers to the constant `10'.
//   Value *Ten = ConstantInt::get(Type::Int32Ty, 10);

//   // Pass Ten to the call call:
//   CallInst *Add1CallRes = new CallInst(Add1F, Ten, "add1", BB);
//   Add1CallRes->setTailCall(true);

//   // Create the return instruction and add it to the basic block.
//   new ReturnInst(Add1CallRes, BB);

//   // Now we create the JIT.
//   ExistingModuleProvider* MP = new ExistingModuleProvider(M);
//   ExecutionEngine* EE = ExecutionEngine::create(MP, false);

//   std::cout << "We just constructed this LLVM module:\n\n" << *M;
//   std::cout << "\n\nRunning foo: " << std::flush;

//   // Call the `foo' function with no arguments:
//   std::vector<GenericValue> noargs;
//   GenericValue gv = EE->runFunction(FooF, noargs);

//   void *code = EE->getPointerToFunction(Add1F);

//   // Import result of execution:
//   std::cout << "Result: " << gv.IntVal.toString(10) << "\n";
  
  return 0;
}
