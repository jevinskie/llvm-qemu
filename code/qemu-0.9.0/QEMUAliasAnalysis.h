#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/Instructions.h"
#include "llvm/Pass.h"
#include "llvm/Support/Compiler.h"

namespace llvm {
ModulePass *createQemuAAPass();
}
