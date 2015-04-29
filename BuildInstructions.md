llvm-qemu currently only supports x86 hosts (getting it to work on x86-64 shouldn't be difficult, but no one has done it yet)

First built LLVM 2.1 and
llvm-gcc 4.0 with gcc 4.1.1. You can get the files at
http://llvm.org/releases/2.1/llvm-2.1.tar.gz and
http://llvm.org/releases/2.1/llvm-gcc4.0-2.1.source.tar.gz (other versions of gcc might or might not work, however Debian gcc 4.1.1 works fine).

Once you have built them make sure that the binaries are in your PATH
environment variable since they are used by the llvm-qemu build
system.

In order to build llvm-qemu you also need a 3.x series gcc, since the qemu parts of
llvm-qemu need to be built with it. The build script will use
gcc 3.x automatically if it's installed. Building with Debian gcc 3.4.6 works fine.

To build llvm-qemu you have to do the following steps:
> cd llvm-qemu/code/qemu-0.9.0

> ./configure --disable-kqemu --target-list=arm-linux-user

> make

this will result in a compilation error (because the Makefile is
broken, it's not critical), after that do:

> make QEMUAliasAnalysis.o

> make

After a successful build there should be a new binary called qemu-arm.