# Week 1, 2 #
  * read lots of qemu src and LLVM API docs
  * compiled op.c to LLVM IR
  * wrote simple prototype which:
    * loads op.bc
    * resolves declarations in op.bc
    * creates a TB function
    * adds calls to micro ops
    * fills in parameters
    * inlines function calls
    * compiles the TB function to machine code with the JIT
  * started work on llvm-dyngen which at the moment:
    * handles micro ops with parameters

# Week 3 #
  * integrated llvm-dyngen into qemu:
    * changes to the qemu Makefiles
    * set up proper linking between C++ (llvm-dyngen, llvm libs) and C (qemu) parts
    * changes to functions which rely on the compiled micro op size (this is no longer possible with LLVM IR micro ops)
  * improved llvm-dyngen:
    * added support for the GOTO\_LABEL\_PARAM macro (this is used for jumps between individual micro ops of a translation block, e.g. it is used to implement the conditional execution emulation for the ARM architecture), this required changes to all micro ops which use GOTO\_LABEL\_PARAM
    * fixed missing parameters of memory access micro ops
    * added code generation through LLVM JIT
    * added code which properly registers global symbols with the JIT
    * added inlining of micro ops (doubles execution speed)
  * results:
    * llvm-qemu is capable of running ARM linux binaries in user mode emulation

# Week 4 #
  * did a lot of benchmarking and profiling with llvm-qemu (some of the logs are available in the profiling directory of the repository)
    * nbench (synthetic benchmark):
      * regular qemu:                                                   2.32 integer index
      * regular qemu without TB chaining:                               0.92 integer index
      * llvm-qemu with full optimizations (no TB chaining implemented): 0.75 integer index
      * llvm-qemu without optimizations   (no TB chaining implemented): 0.55 integer index
    * linux boot
      * regular qemu: 0:15 min
      * llvm-qemu:    1:15 min
  * got full system simulation working with llvm-qemu
  * implemented profiling facilities to see the number of executions of blocks and their size
  * implemented very simple hotspot-like mechanism which only applies optimizations to blocks which are executed a certain number of times, the other blocks are JITed directly without doing any further optimizations

# Week 5 #
  * implemented interpreter for qemu micro ops (to use as a "fast" pass for blocks with few executions, e.g. blocks which aren't hot spots)
    * created the interpreter version of dyngen:
      * inserts direct calls to micro ops instead of a memcpy of the micro op
      * parameters are kept in global variables and are fetched from the parameter array
      * micro ops which change control flow return a value which indicates the destination of the jump, the appropriate code which performs the jump is added
  * integrated interpreter into llvm-qemu, using it for blocks whose execution count is below a certain threshold
  * added code which prints a table of the execution count distribution of the executed blocks
  * results:
    * linux boot with llvm-qemu: 0:25 min

# Week 6 #
  * implemented translation block chaining for llvm-qemu
    * now translation blocks return a function pointer to the chained TB or 0
    * depending on the return value of the TB the chained TB is called
    * of course this is a lot less efficient than qemu's TB chaining implementation (whish uses jmps)
    * once there is a possibility to lower LLVM IR calls to jmps instead of calls, the implementation can be as efficient as qemu's, actually the chance is quite likely since it seems other people are also interested in tail call optimizations
    * llvm-qemu with full optimizations and TB chaining (nbench): 1.038 integer index

# Week 7, 8 #
  * a large part of this time was a break due to high workload at university
  * played around with some JIT options, no real speed increase though

# Week 9 #
  * changed llvm-qemu to use the current SVN tree of LLVM instead of the 2.0 release
  * tried out some new optimizations passes optimizes for speed, notably redundant load elimination and dead store elimination
    * llvm-qemu with rle and dse (nbench):
      * 1.152 integer index
      * 1.020 memory  index
  * added a feature to disassemble the generated code
  * made lots of nbench runs with different optimizations and compared the traces
  * one interesting result was that the code quality even with full optimizations was worse than regular qemu's

# Week 10 #
  * after spending quite some time trying to figure out why the code quality is so bad, it turned out that the custom Alias Analysis Pass which gives hints about the global variables (e.g. T0, T1, T2 - the qemu IR registers) was not working, since it was running as a FunctionPass while it needs to run as a ModulePass else it can't hint about the globals
  * this required some changes in the parts of llvm-qemu which control the JITing, now there's a separate module which is solely used to optimize newly generated TB functions, the TB function is created in the main module, moved to the optimization module, optimized there and moved back to the main module (running the passes as ModulePasses on the main module would be too expensive)
  * after these changes, the code quality drastically increased
    * llvm-qemu with rle, dse (nbench):
      * 1.112 integer index
      * 1.014 memory  index
    * llvm-qemu with full optimizations (nbench):
      * 1.099 integer index
      * 1.279 memory  index

# Week 11 #
  * some changes in the LLVM API required adjustment in llvm-qemu (mainly CallInst())
  * finally tried out different options of the JIT (e.g. different register allocators)
  * the difference in execution speed of nbench with the various options is rather low though, e.g. the simple register allocator speeds up a exection a bit, but it's only barely noticeable in the benchmark results
  * modified nbench to execute only fixed number of iterations of the tests (normally the tests run 5 times and continue to run up to another 25 times until the deviation of the results is below a certain threshold), in this case the benchmark numbers do not matter, only the time required for a full nbench run
  * the results are kind of interesting, in that way that they don't resemble the numbers obtained with the time adapative nbench runs (see table below)
  * in case someone has any idea what could cause this, feel free to email me :)
  * added feature to dump the generated IR to a file
  * an nbench run equals 9.3M of IR (on disk) :)
  * experimented with various optimizations on the dumped IR, dse and rle seem to be quite effective and don't take much time at all, as previous results of nbench runs already indicated
| regular qemu | llvm-qemu rle,dse,simple regalloc | llvm-qemu full opts |
|:-------------|:----------------------------------|:--------------------|
| 4m35.349s    | 5m39.697s                         | 13m50.697s          |

# Week 12 #
  * partially implemented hot path detection feature, to create "super" blocks out of a set of basic blocks belonging to a hot path
  * basically the detection of hot paths works, the merging of the basic blocks into a super block is missing, including the interfacing from super block to other basic blocks
  * the goal is to implement something like this: http://www.itee.uq.edu.au/~cristina/wbt00.ps

















