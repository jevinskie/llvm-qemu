//===- QEMUAliasAnalysis.cpp - QEMUl Alias Analysis Impl ------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file was developed by Anton Korobeynikov and is distributed under
// the University of Illinois Open Source License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements several aliasing hints specific to llvm-qemu project
//
//===----------------------------------------------------------------------===//

#include "QEMUAliasAnalysis.h"

using namespace llvm;

namespace llvm {
  struct VISIBILITY_HIDDEN QemuAA : public ModulePass, public AliasAnalysis {
    static char ID; // Class identification, replacement for typeinfo
    QemuAA() : ModulePass((intptr_t)&ID) {}

    virtual void getAnalysisUsage(AnalysisUsage &AU) const {
      AU.setPreservesAll();
      AliasAnalysis::getAnalysisUsage(AU);
    }

    bool runOnModule(Module &M) {
      InitializeAliasAnalysis(this);
      return false;
    }

    static bool isQEMUEnv(const std::string& S) {
      return (S.compare("env") == 0);
    }

    static bool isQEMURegister(const std::string& S) {
      return (S.compare("T0") == 0 ||
              S.compare("T1") == 0 || S.compare("T2") == 0);
    }

    virtual AliasResult alias(const Value *V1, unsigned V1Size,
                              const Value *V2, unsigned V2Size) {
      if (V1 == V2 && V1Size == V2Size)
        return MustAlias;
            
      std::string V1N = V1->getName();
      std::string V2N = V2->getName();

      bool V1e = isQEMUEnv(V1N); bool V1r = isQEMURegister(V1N);
      bool V2e = isQEMUEnv(V2N); bool V2r = isQEMURegister(V2N);
      bool V1b = V1e || V1r;     bool V2b = V2e || V2r;

      if (V1b && V2b) {
        // If both are QEMU internals, they alias iff they have the same name
        // and type
        if ((V1N.compare(V2N) == 0) && (V1->getType() == V2->getType()))
          return MustAlias;
        else
          return NoAlias;
      } else if (V1r || V2r) {
        // QEMU registers don't alias with anything
        // (Reg + Reg was handled already)
        return NoAlias;
      } else {
        const GetElementPtrInst *GEP1=dyn_cast<GetElementPtrInst>(V1);
        const GetElementPtrInst *GEP2=dyn_cast<GetElementPtrInst>(V2);

        if (GEP1 || GEP2) {
          // If we have GEP here - drop to default AA implementation
          return AliasAnalysis::alias(V1, V1Size, V2, V2Size);
        } else if (V1e || V2e) {
          // Nobody can alias with 'env' now
          return NoAlias;
        }
      }

      return AliasAnalysis::alias(V1, V1Size, V2, V2Size);
    }

    virtual bool pointsToConstantMemory(const Value *P) {
      return isQEMUEnv(P->getName());
    }

  };
  
  // Register this pass...
  char QemuAA::ID = 0;
  RegisterPass<QemuAA> U("qemu-aa", "QEMU Alias Analysis");

  // Declare that we implement the AliasAnalysis interface
  RegisterAnalysisGroup<AliasAnalysis> V(U);

  ModulePass *llvm::createQemuAAPass() { return new QemuAA(); }
}
