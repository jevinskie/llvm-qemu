# Benefits: #
QEMU will largely benefit from this project through an expected increase in speed, while remaining portable.
Through this project LLVM will effectively get front ends for all target architectures supported by QEMU (at the moment these are x86, AR
M, SPARC, PowerPC and MIPS). This lays the ground for the application of LLVM on binary code which could be e.g. the optimization of binaries where no source code is available, the instrumentation of binary code (e.g. for performance analysis), program analysis of binary code to assist in reverse engineering or static recompilation (depending on the instruction set this requires additional runtime code).
This project is a first step to enhance LLVM to be suitable for static or dynamic binary translation and thereby attracting new users for LLVM which are interested in this subject.
It will show the applicability of LLVM in an emulation environment, especially in regard to dynamic binary translation. It can also be us
ed as a basis to try out concepts like profile-guided optimization or static optimization in the context of an emulator.
Also since the LLVM JIT will be used for the final code generation QEMU can be hosted on any architecture targeted by the LLVM JIT (at th
e moment this are x86, x86-64, PowerPC and PowerPC 64), at least concerning code generation. Further adjustments to QEMU might be necessary though to get QEMU to run on a certain architecture which is supported by the LLVM JIT but not by QEMU.

# Deliverables: #
  * a version of QEMU with an optimizing dynamic binary translator utilizing LLVM components
  * a set of test suites which are created during the development (with at least 80% statement coverage)
  * all necessary documentation to understand and be able to maintain the software


# Plan: #
The development of the software will be done within the three month timeframe of GSoC. Weekly status reports will be given.

Week 1:
  * get familiar with LLVM and QEMU
  * write small test programs for certain LLVM components, or even a simple prototype
  * get to know LLVM example programs
Week 2, 3, 4:
  * modify QEMU's dynamic binary translator to emit LLVM IR
  * create tests to verify the translation
Week 5, 6:
  * integrate LLVM JIT into QEMU's dynamic binary translator
  * perform first speed measurements
Week 7, 8:
  * integrate LLVM optimizations into QEMU
  * perform more speed measurements, select useful optimizations
Week 9, 10:
  * test the system extensively
  * write final documentation
Week 11, 12:
  * time buffer to deal with unexpected events



