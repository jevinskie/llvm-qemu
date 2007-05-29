; ModuleID = 'op.o'
target datalayout = "e-p:32:32:32-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:32:64-f32:32:32-f64:32:64-v64:64:64-v128:128:128-a0:0:64"
target triple = "i686-pc-linux-gnu"
	%struct..0anon = type { i32 }
	%struct..1anon = type { i64 }
	%struct..2anon = type { i32 }
	%struct..3anon = type { i32 }
	%struct.CPUARMState = type { [16 x i32], i32, i32, [6 x i32], [6 x i32], [6 x i32], [5 x i32], [5 x i32], i32, i32, i32, i32, i32, %struct.anon, i32, [1 x %struct.__jmp_buf_tag], i32, i32, i32, i32, { [16 x i64], [16 x i32], i32, i32, i32, i32, i64, i64, %struct.float_status }, i32, %struct.TranslationBlock*, i32, i32, [2 x [256 x %struct.CPUTLBEntry]], [4096 x %struct.TranslationBlock*], [32 x i32], i32, i32, i8*, i32, i8* }
	%struct.CPUTLBEntry = type { i32, i32, i32, i32 }
	%struct.CPU_DoubleU = type { i64 }
	%struct.TranslationBlock = type { i32, i32, i32, i16, i16, i8*, %struct.TranslationBlock*, [2 x %struct.TranslationBlock*], [2 x i32], [2 x i16], [4 x i16], [2 x %struct.TranslationBlock*], %struct.TranslationBlock* }
	%struct.__jmp_buf_tag = type { [6 x i32], i32, %struct.__sigset_t }
	%struct.__sigset_t = type { [32 x i32] }
	%struct.anon = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
	%struct.float_status = type { i8, i8, i8, i8 }
@env = weak global %struct.CPUARMState* null		; <%struct.CPUARMState**> [#uses=207]
@T0 = weak global i32 0		; <i32*> [#uses=166]
@T1 = weak global i32 0		; <i32*> [#uses=184]
@T2 = weak global i32 0		; <i32*> [#uses=34]
@__op_param1 = external global i32		; <i32*> [#uses=1]
@__op_param2 = external global i32		; <i32*> [#uses=1]

define void @op_movl_T0_r0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 0		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 0		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 0		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r0_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 0		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r0_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 0		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 1		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 1		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 1		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r1_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 1		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r1_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 1		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r2() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 2		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r2() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 2		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r2() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 2		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r2_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 2		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r2_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 2		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r3() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 3		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r3() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 3		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r3() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 3		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r3_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 3		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r3_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 3		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r4() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 4		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r4() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 4		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r4() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 4		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r4_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 4		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r4_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 4		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r5() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 5		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r5() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 5		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r5() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 5		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r5_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 5		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r5_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 5		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r6() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 6		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r6() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 6		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r6() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 6		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r6_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 6		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r6_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 6		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r7() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 7		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r7() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 7		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r7() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 7		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r7_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 7		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r7_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 7		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r8() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 8		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r8() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 8		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r8() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 8		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r8_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r8_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r9() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 9		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r9() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 9		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r9() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 9		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r9_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 9		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r9_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 9		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r10() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 10		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r10() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 10		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r10() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 10		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r10_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r10_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r11() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 11		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r11() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 11		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r11() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 11		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r11_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 11		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r11_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 11		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r12() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 12		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r12() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 12		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r12() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 12		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r12_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 12		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r12_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 12		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r13() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 13		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r13() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 13		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r13() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 13		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r13_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 13		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r13_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 13		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r14() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 14		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r14() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 14		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r14() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 14		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r14_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 14		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_r14_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 14		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp3
	ret void
}

define void @op_movl_T0_r15() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 15		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T0
	ret void
}

define void @op_movl_T1_r15() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 15		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T1
	ret void
}

define void @op_movl_T2_r15() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 15		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	store i32 %tmp3, i32* @T2
	ret void
}

define void @op_movl_r15_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp2 = and i32 %tmp1, -2		; <i32> [#uses=1]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 15		; <i32*> [#uses=1]
	store i32 %tmp2, i32* %tmp4
	ret void
}

define void @op_movl_r15_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp2 = and i32 %tmp1, -2		; <i32> [#uses=1]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 15		; <i32*> [#uses=1]
	store i32 %tmp2, i32* %tmp4
	ret void
}

define void @op_bx_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp2 = and i32 %tmp1, -2		; <i32> [#uses=1]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 0, i32 15		; <i32*> [#uses=1]
	store i32 %tmp2, i32* %tmp4
	%tmp5 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp6 = load i32* @T0		; <i32> [#uses=1]
	%tmp7 = and i32 %tmp6, 1		; <i32> [#uses=1]
	%tmp8 = getelementptr %struct.CPUARMState* %tmp5, i32 0, i32 12		; <i32*> [#uses=1]
	store i32 %tmp7, i32* %tmp8
	ret void
}

define void @op_movl_T0_0() {
entry:
	store i32 0, i32* @T0
	ret void
}

define void @op_movl_T0_im() {
entry:
	store i32 ptrtoint (i32* @__op_param1 to i32), i32* @T0
	ret void
}

define void @op_movl_T0_T1() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	store i32 %tmp, i32* @T0
	ret void
}

define void @op_movl_T1_im() {
entry:
	store i32 ptrtoint (i32* @__op_param1 to i32), i32* @T1
	ret void
}

define void @op_mov_CF_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp2 = lshr i32 %tmp1, 31		; <i32> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp2, i32* %tmp3
	ret void
}

define void @op_movl_T2_im() {
entry:
	store i32 ptrtoint (i32* @__op_param1 to i32), i32* @T2
	ret void
}

define void @op_addl_T1_im() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp1 = add i32 %tmp, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	store i32 %tmp1, i32* @T1
	ret void
}

define void @op_addl_T1_T2() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp1 = load i32* @T2		; <i32> [#uses=1]
	%tmp2 = add i32 %tmp1, %tmp		; <i32> [#uses=1]
	store i32 %tmp2, i32* @T1
	ret void
}

define void @op_subl_T1_T2() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp1 = load i32* @T2		; <i32> [#uses=1]
	%tmp2 = sub i32 %tmp, %tmp1		; <i32> [#uses=1]
	store i32 %tmp2, i32* @T1
	ret void
}

define void @op_addl_T0_T1() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp2 = add i32 %tmp1, %tmp		; <i32> [#uses=1]
	store i32 %tmp2, i32* @T0
	ret void
}

define void @op_addl_T0_T1_cc() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=4]
	%tmp2 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = add i32 %tmp2, %tmp		; <i32> [#uses=2]
	store i32 %tmp3, i32* @T0
	%tmp4 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp4, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp3, i32* %tmp6
	%tmp7 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp8 = load i32* @T0		; <i32> [#uses=1]
	%tmp10 = icmp ult i32 %tmp8, %tmp		; <i1> [#uses=1]
	%tmp1011 = zext i1 %tmp10 to i32		; <i32> [#uses=1]
	%tmp12 = getelementptr %struct.CPUARMState* %tmp7, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp1011, i32* %tmp12
	%tmp13 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp14 = load i32* @T1		; <i32> [#uses=1]
	%tmp16 = xor i32 %tmp, -1		; <i32> [#uses=1]
	%tmp16not = xor i32 %tmp14, %tmp16		; <i32> [#uses=1]
	%tmp17 = load i32* @T0		; <i32> [#uses=1]
	%tmp19 = xor i32 %tmp17, %tmp		; <i32> [#uses=1]
	%tmp20 = and i32 %tmp19, %tmp16not		; <i32> [#uses=1]
	%tmp21 = getelementptr %struct.CPUARMState* %tmp13, i32 0, i32 9		; <i32*> [#uses=1]
	store i32 %tmp20, i32* %tmp21
	ret void
}

define void @op_adcl_T0_T1() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 8		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=1]
	%tmp3 = load i32* @T1		; <i32> [#uses=1]
	%tmp5 = load i32* @T0		; <i32> [#uses=1]
	%tmp4 = add i32 %tmp3, %tmp2		; <i32> [#uses=1]
	%tmp6 = add i32 %tmp4, %tmp5		; <i32> [#uses=1]
	store i32 %tmp6, i32* @T0
	ret void
}

define void @op_adcl_T0_T1_cc() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=6]
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 8		; <i32*> [#uses=2]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	%tmp4 = icmp eq i32 %tmp3, 0		; <i1> [#uses=1]
	%tmp7 = load i32* @T1		; <i32> [#uses=2]
	br i1 %tmp4, label %cond_true, label %cond_false

cond_true:		; preds = %entry
	%tmp8 = add i32 %tmp7, %tmp		; <i32> [#uses=2]
	store i32 %tmp8, i32* @T0
	%tmp12 = icmp ult i32 %tmp8, %tmp		; <i1> [#uses=1]
	br label %cond_next

cond_false:		; preds = %entry
	%tmp17 = add i32 %tmp7, 1		; <i32> [#uses=1]
	%tmp18 = add i32 %tmp17, %tmp		; <i32> [#uses=2]
	store i32 %tmp18, i32* @T0
	%tmp22 = icmp ule i32 %tmp18, %tmp		; <i1> [#uses=1]
	br label %cond_next

cond_next:		; preds = %cond_false, %cond_true
	%storemerge.in = phi i1 [ %tmp12, %cond_true ], [ %tmp22, %cond_false ]		; <i1> [#uses=1]
	%storemerge = zext i1 %storemerge.in to i32		; <i32> [#uses=1]
	store i32 %storemerge, i32* %tmp2
	%tmp25 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp26 = load i32* @T1		; <i32> [#uses=1]
	%tmp28 = xor i32 %tmp, -1		; <i32> [#uses=1]
	%tmp28not = xor i32 %tmp26, %tmp28		; <i32> [#uses=1]
	%tmp29 = load i32* @T0		; <i32> [#uses=1]
	%tmp31 = xor i32 %tmp29, %tmp		; <i32> [#uses=1]
	%tmp32 = and i32 %tmp31, %tmp28not		; <i32> [#uses=1]
	%tmp33 = getelementptr %struct.CPUARMState* %tmp25, i32 0, i32 9		; <i32*> [#uses=1]
	store i32 %tmp32, i32* %tmp33
	%tmp34 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp35 = load i32* @T0		; <i32> [#uses=1]
	%tmp36 = getelementptr %struct.CPUARMState* %tmp34, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp35, i32* %tmp36
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_subl_T0_T1() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp2 = sub i32 %tmp, %tmp1		; <i32> [#uses=1]
	store i32 %tmp2, i32* @T0
	ret void
}

define void @op_subl_T0_T1_cc() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=4]
	%tmp2 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = sub i32 %tmp, %tmp2		; <i32> [#uses=2]
	store i32 %tmp3, i32* @T0
	%tmp4 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp4, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp3, i32* %tmp6
	%tmp7 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp8 = load i32* @T1		; <i32> [#uses=1]
	%tmp10 = icmp uge i32 %tmp, %tmp8		; <i1> [#uses=1]
	%tmp1011 = zext i1 %tmp10 to i32		; <i32> [#uses=1]
	%tmp12 = getelementptr %struct.CPUARMState* %tmp7, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp1011, i32* %tmp12
	%tmp13 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp14 = load i32* @T1		; <i32> [#uses=1]
	%tmp16 = xor i32 %tmp14, %tmp		; <i32> [#uses=1]
	%tmp17 = load i32* @T0		; <i32> [#uses=1]
	%tmp19 = xor i32 %tmp17, %tmp		; <i32> [#uses=1]
	%tmp20 = and i32 %tmp19, %tmp16		; <i32> [#uses=1]
	%tmp21 = getelementptr %struct.CPUARMState* %tmp13, i32 0, i32 9		; <i32*> [#uses=1]
	store i32 %tmp20, i32* %tmp21
	ret void
}

define void @op_sbcl_T0_T1() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp3, i32 0, i32 8		; <i32*> [#uses=1]
	%tmp5 = load i32* %tmp4		; <i32> [#uses=1]
	%tmp2 = add i32 %tmp, -1		; <i32> [#uses=1]
	%tmp6 = sub i32 %tmp2, %tmp1		; <i32> [#uses=1]
	%tmp7 = add i32 %tmp6, %tmp5		; <i32> [#uses=1]
	store i32 %tmp7, i32* @T0
	ret void
}

define void @op_sbcl_T0_T1_cc() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=5]
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 8		; <i32*> [#uses=2]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	%tmp4 = icmp eq i32 %tmp3, 0		; <i1> [#uses=1]
	%tmp7 = load i32* @T1		; <i32> [#uses=3]
	%tmp8 = sub i32 %tmp, %tmp7		; <i32> [#uses=2]
	br i1 %tmp4, label %cond_true, label %cond_false

cond_true:		; preds = %entry
	%tmp9 = add i32 %tmp8, -1		; <i32> [#uses=1]
	store i32 %tmp9, i32* @T0
	%tmp13 = icmp ugt i32 %tmp, %tmp7		; <i1> [#uses=1]
	br label %cond_next

cond_false:		; preds = %entry
	store i32 %tmp8, i32* @T0
	%tmp22 = icmp uge i32 %tmp, %tmp7		; <i1> [#uses=1]
	br label %cond_next

cond_next:		; preds = %cond_false, %cond_true
	%storemerge.in = phi i1 [ %tmp13, %cond_true ], [ %tmp22, %cond_false ]		; <i1> [#uses=1]
	%storemerge = zext i1 %storemerge.in to i32		; <i32> [#uses=1]
	store i32 %storemerge, i32* %tmp2
	%tmp25 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp26 = load i32* @T1		; <i32> [#uses=1]
	%tmp28 = xor i32 %tmp26, %tmp		; <i32> [#uses=1]
	%tmp29 = load i32* @T0		; <i32> [#uses=1]
	%tmp31 = xor i32 %tmp29, %tmp		; <i32> [#uses=1]
	%tmp32 = and i32 %tmp31, %tmp28		; <i32> [#uses=1]
	%tmp33 = getelementptr %struct.CPUARMState* %tmp25, i32 0, i32 9		; <i32*> [#uses=1]
	store i32 %tmp32, i32* %tmp33
	%tmp34 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp35 = load i32* @T0		; <i32> [#uses=1]
	%tmp36 = getelementptr %struct.CPUARMState* %tmp34, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp35, i32* %tmp36
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_rsbl_T0_T1() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp2 = sub i32 %tmp, %tmp1		; <i32> [#uses=1]
	store i32 %tmp2, i32* @T0
	ret void
}

define void @op_rsbl_T0_T1_cc() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=4]
	%tmp2 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = sub i32 %tmp, %tmp2		; <i32> [#uses=2]
	store i32 %tmp3, i32* @T1
	%tmp4 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp4, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp3, i32* %tmp6
	%tmp7 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp8 = load i32* @T0		; <i32> [#uses=1]
	%tmp10 = icmp uge i32 %tmp, %tmp8		; <i1> [#uses=1]
	%tmp1011 = zext i1 %tmp10 to i32		; <i32> [#uses=1]
	%tmp12 = getelementptr %struct.CPUARMState* %tmp7, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp1011, i32* %tmp12
	%tmp13 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp14 = load i32* @T0		; <i32> [#uses=1]
	%tmp16 = xor i32 %tmp14, %tmp		; <i32> [#uses=1]
	%tmp17 = load i32* @T1		; <i32> [#uses=1]
	%tmp19 = xor i32 %tmp17, %tmp		; <i32> [#uses=1]
	%tmp20 = and i32 %tmp19, %tmp16		; <i32> [#uses=1]
	%tmp21 = getelementptr %struct.CPUARMState* %tmp13, i32 0, i32 9		; <i32*> [#uses=1]
	store i32 %tmp20, i32* %tmp21
	%tmp22 = load i32* @T1		; <i32> [#uses=1]
	store i32 %tmp22, i32* @T0
	ret void
}

define void @op_rscl_T0_T1() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp3 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp3, i32 0, i32 8		; <i32*> [#uses=1]
	%tmp5 = load i32* %tmp4		; <i32> [#uses=1]
	%tmp2 = add i32 %tmp, -1		; <i32> [#uses=1]
	%tmp6 = sub i32 %tmp2, %tmp1		; <i32> [#uses=1]
	%tmp7 = add i32 %tmp6, %tmp5		; <i32> [#uses=1]
	store i32 %tmp7, i32* @T0
	ret void
}

define void @op_rscl_T0_T1_cc() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=5]
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 8		; <i32*> [#uses=2]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	%tmp4 = icmp eq i32 %tmp3, 0		; <i1> [#uses=1]
	%tmp7 = load i32* @T0		; <i32> [#uses=3]
	%tmp8 = sub i32 %tmp, %tmp7		; <i32> [#uses=2]
	br i1 %tmp4, label %cond_true, label %cond_false

cond_true:		; preds = %entry
	%tmp9 = add i32 %tmp8, -1		; <i32> [#uses=1]
	store i32 %tmp9, i32* @T1
	%tmp13 = icmp ugt i32 %tmp, %tmp7		; <i1> [#uses=1]
	br label %cond_next

cond_false:		; preds = %entry
	store i32 %tmp8, i32* @T1
	%tmp22 = icmp uge i32 %tmp, %tmp7		; <i1> [#uses=1]
	br label %cond_next

cond_next:		; preds = %cond_false, %cond_true
	%storemerge.in = phi i1 [ %tmp13, %cond_true ], [ %tmp22, %cond_false ]		; <i1> [#uses=1]
	%storemerge = zext i1 %storemerge.in to i32		; <i32> [#uses=1]
	store i32 %storemerge, i32* %tmp2
	%tmp25 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp26 = load i32* @T0		; <i32> [#uses=1]
	%tmp28 = xor i32 %tmp26, %tmp		; <i32> [#uses=1]
	%tmp29 = load i32* @T1		; <i32> [#uses=1]
	%tmp31 = xor i32 %tmp29, %tmp		; <i32> [#uses=1]
	%tmp32 = and i32 %tmp31, %tmp28		; <i32> [#uses=1]
	%tmp33 = getelementptr %struct.CPUARMState* %tmp25, i32 0, i32 9		; <i32*> [#uses=1]
	store i32 %tmp32, i32* %tmp33
	%tmp34 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp35 = load i32* @T1		; <i32> [#uses=1]
	%tmp36 = getelementptr %struct.CPUARMState* %tmp34, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp35, i32* %tmp36
	%tmp37 = load i32* @T1		; <i32> [#uses=1]
	store i32 %tmp37, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_andl_T0_T1() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp2 = and i32 %tmp1, %tmp		; <i32> [#uses=1]
	store i32 %tmp2, i32* @T0
	ret void
}

define void @op_xorl_T0_T1() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp2 = xor i32 %tmp1, %tmp		; <i32> [#uses=1]
	store i32 %tmp2, i32* @T0
	ret void
}

define void @op_orl_T0_T1() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp2 = or i32 %tmp1, %tmp		; <i32> [#uses=1]
	store i32 %tmp2, i32* @T0
	ret void
}

define void @op_bicl_T0_T1() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmpnot = xor i32 %tmp, -1		; <i32> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp2 = and i32 %tmp1, %tmpnot		; <i32> [#uses=1]
	store i32 %tmp2, i32* @T0
	ret void
}

define void @op_notl_T1() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmpnot = xor i32 %tmp, -1		; <i32> [#uses=1]
	store i32 %tmpnot, i32* @T1
	ret void
}

define void @op_logic_T0_cc() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp2
	ret void
}

define void @op_logic_T1_cc() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp2
	ret void
}

define void @op_test_eq() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 10		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=1]
	%tmp3 = icmp eq i32 %tmp2, 0		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_true, label %cond_next

cond_true:		; preds = %entry
	tail call void asm sideeffect "jmp __op_gen_label1", "~{dirflag},~{fpsr},~{flags}"( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next:		; preds = %entry
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_test_ne() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 10		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=1]
	%tmp3 = icmp eq i32 %tmp2, 0		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_next, label %cond_true

cond_true:		; preds = %entry
	tail call void asm sideeffect "jmp __op_gen_label1", "~{dirflag},~{fpsr},~{flags}"( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next:		; preds = %entry
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_test_cs() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 8		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=1]
	%tmp3 = icmp eq i32 %tmp2, 0		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_next, label %cond_true

cond_true:		; preds = %entry
	tail call void asm sideeffect "jmp __op_gen_label1", "~{dirflag},~{fpsr},~{flags}"( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next:		; preds = %entry
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_test_cc() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 8		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=1]
	%tmp3 = icmp eq i32 %tmp2, 0		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_true, label %cond_next

cond_true:		; preds = %entry
	tail call void asm sideeffect "jmp __op_gen_label1", "~{dirflag},~{fpsr},~{flags}"( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next:		; preds = %entry
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_test_mi() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 10		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=1]
	%tmp3 = icmp slt i32 %tmp2, 0		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_true, label %cond_next

cond_true:		; preds = %entry
	tail call void asm sideeffect "jmp __op_gen_label1", "~{dirflag},~{fpsr},~{flags}"( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next:		; preds = %entry
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_test_pl() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 10		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=1]
	%tmp3 = icmp sgt i32 %tmp2, -1		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_true, label %cond_next

cond_true:		; preds = %entry
	tail call void asm sideeffect "jmp __op_gen_label1", "~{dirflag},~{fpsr},~{flags}"( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next:		; preds = %entry
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_test_vs() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 9		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=1]
	%tmp3 = icmp slt i32 %tmp2, 0		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_true, label %cond_next

cond_true:		; preds = %entry
	tail call void asm sideeffect "jmp __op_gen_label1", "~{dirflag},~{fpsr},~{flags}"( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next:		; preds = %entry
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_test_vc() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 9		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=1]
	%tmp3 = icmp sgt i32 %tmp2, -1		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_true, label %cond_next

cond_true:		; preds = %entry
	tail call void asm sideeffect "jmp __op_gen_label1", "~{dirflag},~{fpsr},~{flags}"( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next:		; preds = %entry
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_test_hi() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 8		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=1]
	%tmp3 = icmp eq i32 %tmp2, 0		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_next12, label %cond_true

cond_true:		; preds = %entry
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 10		; <i32*> [#uses=1]
	%tmp7 = load i32* %tmp6		; <i32> [#uses=1]
	%tmp8 = icmp eq i32 %tmp7, 0		; <i1> [#uses=1]
	br i1 %tmp8, label %cond_next12, label %cond_true11

cond_true11:		; preds = %cond_true
	tail call void asm sideeffect "jmp __op_gen_label1", "~{dirflag},~{fpsr},~{flags}"( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next12:		; preds = %cond_true, %entry
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_test_ls() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 8		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=1]
	%tmp3 = icmp eq i32 %tmp2, 0		; <i1> [#uses=1]
	br i1 %tmp3, label %bb, label %cond_next

cond_next:		; preds = %entry
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 10		; <i32*> [#uses=1]
	%tmp7 = load i32* %tmp6		; <i32> [#uses=1]
	%tmp8 = icmp eq i32 %tmp7, 0		; <i1> [#uses=1]
	br i1 %tmp8, label %bb, label %bb11

bb:		; preds = %cond_next, %entry
	tail call void asm sideeffect "jmp __op_gen_label1", "~{dirflag},~{fpsr},~{flags}"( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

bb11:		; preds = %cond_next
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_test_ge() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 9		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=1]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 10		; <i32*> [#uses=1]
	%tmp5 = load i32* %tmp4		; <i32> [#uses=1]
	%tmp6 = xor i32 %tmp5, %tmp2		; <i32> [#uses=1]
	%tmp7 = icmp sgt i32 %tmp6, -1		; <i1> [#uses=1]
	br i1 %tmp7, label %cond_true, label %cond_next

cond_true:		; preds = %entry
	tail call void asm sideeffect "jmp __op_gen_label1", "~{dirflag},~{fpsr},~{flags}"( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next:		; preds = %entry
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_test_lt() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 9		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=1]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 10		; <i32*> [#uses=1]
	%tmp5 = load i32* %tmp4		; <i32> [#uses=1]
	%tmp6 = xor i32 %tmp5, %tmp2		; <i32> [#uses=1]
	%tmp7 = icmp slt i32 %tmp6, 0		; <i1> [#uses=1]
	br i1 %tmp7, label %cond_true, label %cond_next

cond_true:		; preds = %entry
	tail call void asm sideeffect "jmp __op_gen_label1", "~{dirflag},~{fpsr},~{flags}"( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next:		; preds = %entry
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_test_gt() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 10		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=2]
	%tmp3 = icmp eq i32 %tmp2, 0		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_next16, label %cond_true

cond_true:		; preds = %entry
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 9		; <i32*> [#uses=1]
	%tmp7 = load i32* %tmp6		; <i32> [#uses=1]
	%tmp11 = xor i32 %tmp2, %tmp7		; <i32> [#uses=1]
	%tmp12 = icmp sgt i32 %tmp11, -1		; <i1> [#uses=1]
	br i1 %tmp12, label %cond_true15, label %cond_next16

cond_true15:		; preds = %cond_true
	tail call void asm sideeffect "jmp __op_gen_label1", "~{dirflag},~{fpsr},~{flags}"( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next16:		; preds = %cond_true, %entry
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_test_le() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 10		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=2]
	%tmp3 = icmp eq i32 %tmp2, 0		; <i1> [#uses=1]
	br i1 %tmp3, label %bb, label %cond_next

cond_next:		; preds = %entry
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 9		; <i32*> [#uses=1]
	%tmp7 = load i32* %tmp6		; <i32> [#uses=1]
	%tmp11 = xor i32 %tmp2, %tmp7		; <i32> [#uses=1]
	%tmp12 = icmp slt i32 %tmp11, 0		; <i1> [#uses=1]
	br i1 %tmp12, label %bb, label %bb15

bb:		; preds = %cond_next, %entry
	tail call void asm sideeffect "jmp __op_gen_label1", "~{dirflag},~{fpsr},~{flags}"( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

bb15:		; preds = %cond_next
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_goto_tb0() {
entry:
	tail call void asm sideeffect ".section .data\0A__op_label0.op_goto_tb0:\0A.long 1f\0A.previous\0Ajmp __op_jmp0\0A1:\0A", "~{dirflag},~{fpsr},~{flags}"( )
	ret void
}

define void @op_goto_tb1() {
entry:
	tail call void asm sideeffect ".section .data\0A__op_label1.op_goto_tb1:\0A.long 1f\0A.previous\0Ajmp __op_jmp1\0A1:\0A", "~{dirflag},~{fpsr},~{flags}"( )
	ret void
}

define void @op_exit_tb() {
entry:
	tail call void asm sideeffect "ret", "~{dirflag},~{fpsr},~{flags}"( )
	ret void
}

define void @op_movl_T0_cpsr() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=6]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 10		; <i32*> [#uses=1]
	%tmp5 = load i32* %tmp4		; <i32> [#uses=2]
	%tmp6 = icmp eq i32 %tmp5, 0		; <i1> [#uses=1]
	%tmp67 = zext i1 %tmp6 to i32		; <i32> [#uses=1]
	%tmp9 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 1		; <i32*> [#uses=1]
	%tmp10 = load i32* %tmp9		; <i32> [#uses=1]
	%tmp14 = and i32 %tmp5, -2147483648		; <i32> [#uses=1]
	%tmp17 = shl i32 %tmp67, 30		; <i32> [#uses=1]
	%tmp20 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 8		; <i32*> [#uses=1]
	%tmp21 = load i32* %tmp20		; <i32> [#uses=1]
	%tmp22 = shl i32 %tmp21, 29		; <i32> [#uses=1]
	%tmp25 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 9		; <i32*> [#uses=1]
	%tmp26 = load i32* %tmp25		; <i32> [#uses=1]
	%tmp27 = lshr i32 %tmp26, 3		; <i32> [#uses=1]
	%tmp28 = and i32 %tmp27, 268435456		; <i32> [#uses=1]
	%tmp31 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 11		; <i32*> [#uses=1]
	%tmp32 = load i32* %tmp31		; <i32> [#uses=1]
	%tmp33 = shl i32 %tmp32, 27		; <i32> [#uses=1]
	%tmp36 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 12		; <i32*> [#uses=1]
	%tmp37 = load i32* %tmp36		; <i32> [#uses=1]
	%tmp38 = shl i32 %tmp37, 5		; <i32> [#uses=1]
	%tmp15 = or i32 %tmp17, %tmp10		; <i32> [#uses=1]
	%tmp18 = or i32 %tmp15, %tmp14		; <i32> [#uses=1]
	%tmp23 = or i32 %tmp18, %tmp22		; <i32> [#uses=1]
	%tmp29 = or i32 %tmp23, %tmp33		; <i32> [#uses=1]
	%tmp34 = or i32 %tmp29, %tmp28		; <i32> [#uses=1]
	%tmp39 = or i32 %tmp34, %tmp38		; <i32> [#uses=1]
	store i32 %tmp39, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_movl_T0_spsr() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 2		; <i32*> [#uses=1]
	%tmp2 = load i32* %tmp1		; <i32> [#uses=1]
	store i32 %tmp2, i32* @T0
	ret void
}

define void @op_movl_spsr_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 2		; <i32*> [#uses=2]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=2]
	%tmp6 = load i32* @T0		; <i32> [#uses=1]
	%tmp11 = xor i32 %tmp6, %tmp3		; <i32> [#uses=1]
	%tmp12 = and i32 %tmp11, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	%tmp9 = xor i32 %tmp12, %tmp3		; <i32> [#uses=1]
	store i32 %tmp9, i32* %tmp2
	ret void
}

define void @op_movl_cpsr_T0() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=8]
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=7]
	br i1 icmp ne (i8 zext (i1 icmp ne (i32 and (i32 ptrtoint (i32* @__op_param1 to i32), i32 -268435456), i32 0) to i8), i8 0), label %cond_true, label %cond_next

cond_true:		; preds = %entry
	%tmp7 = and i32 %tmp, -1073741824		; <i32> [#uses=1]
	%tmp8 = xor i32 %tmp7, 1073741824		; <i32> [#uses=1]
	%tmp10 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp8, i32* %tmp10
	%tmp12 = lshr i32 %tmp, 29		; <i32> [#uses=1]
	%tmp13 = and i32 %tmp12, 1		; <i32> [#uses=1]
	%tmp15 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp13, i32* %tmp15
	%tmp17 = shl i32 %tmp, 3		; <i32> [#uses=1]
	%tmp18 = and i32 %tmp17, -2147483648		; <i32> [#uses=1]
	%tmp20 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 9		; <i32*> [#uses=1]
	store i32 %tmp18, i32* %tmp20
	br label %cond_next

cond_next:		; preds = %cond_true, %entry
	br i1 icmp ne (i8 trunc (i32 and (i32 lshr (i32 ptrtoint (i32* @__op_param1 to i32), i32 27), i32 1) to i8), i8 0), label %cond_true26, label %cond_next32

cond_true26:		; preds = %cond_next
	%tmp28 = lshr i32 %tmp, 27		; <i32> [#uses=1]
	%tmp29 = and i32 %tmp28, 1		; <i32> [#uses=1]
	%tmp31 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 11		; <i32*> [#uses=1]
	store i32 %tmp29, i32* %tmp31
	br label %cond_next32

cond_next32:		; preds = %cond_true26, %cond_next
	br i1 icmp ne (i8 trunc (i32 and (i32 lshr (i32 ptrtoint (i32* @__op_param1 to i32), i32 5), i32 1) to i8), i8 0), label %cond_true38, label %cond_next44

cond_true38:		; preds = %cond_next32
	%tmp40 = lshr i32 %tmp, 5		; <i32> [#uses=1]
	%tmp41 = and i32 %tmp40, 1		; <i32> [#uses=1]
	%tmp43 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 12		; <i32*> [#uses=1]
	store i32 %tmp41, i32* %tmp43
	br label %cond_next44

cond_next44:		; preds = %cond_true38, %cond_next32
	%tmp47 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 1		; <i32*> [#uses=3]
	%tmp48 = load i32* %tmp47		; <i32> [#uses=1]
	%tmp50 = xor i32 %tmp48, %tmp		; <i32> [#uses=1]
	%tmp53 = and i32 %tmp50, and (i32 31, i32 ptrtoint (i32* @__op_param1 to i32))		; <i32> [#uses=1]
	%tmp54 = icmp eq i32 %tmp53, 0		; <i1> [#uses=1]
	br i1 %tmp54, label %cond_next61, label %cond_true57

cond_true57:		; preds = %cond_next44
	%tmp59 = and i32 %tmp, 31		; <i32> [#uses=1]
	tail call void @switch_mode( %struct.CPUARMState* %tmp1, i32 %tmp59 )
	br label %cond_next61

cond_next61:		; preds = %cond_true57, %cond_next44
	%tmp66 = load i32* %tmp47		; <i32> [#uses=2]
	%tmp75 = xor i32 %tmp66, %tmp		; <i32> [#uses=1]
	%tmp76 = and i32 %tmp75, and (i32 ptrtoint (i32* @__op_param1 to i32), i32 134217695)		; <i32> [#uses=1]
	%tmp72 = xor i32 %tmp76, %tmp66		; <i32> [#uses=1]
	store i32 %tmp72, i32* %tmp47
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

declare void @switch_mode(%struct.CPUARMState*, i32)

define void @op_mul_T0_T1() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp2 = mul i32 %tmp1, %tmp		; <i32> [#uses=1]
	store i32 %tmp2, i32* @T0
	ret void
}

define void @op_mull_T0_T1() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = zext i32 %tmp to i64		; <i64> [#uses=1]
	%tmp2 = load i32* @T1		; <i32> [#uses=1]
	%tmp23 = zext i32 %tmp2 to i64		; <i64> [#uses=1]
	%tmp4 = mul i64 %tmp23, %tmp1		; <i64> [#uses=2]
	%tmp6 = lshr i64 %tmp4, 32		; <i64> [#uses=1]
	%tmp67 = trunc i64 %tmp6 to i32		; <i32> [#uses=1]
	store i32 %tmp67, i32* @T1
	%tmp89 = trunc i64 %tmp4 to i32		; <i32> [#uses=1]
	store i32 %tmp89, i32* @T0
	ret void
}

define void @op_imull_T0_T1() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = sext i32 %tmp to i64		; <i64> [#uses=1]
	%tmp2 = load i32* @T1		; <i32> [#uses=1]
	%tmp23 = sext i32 %tmp2 to i64		; <i64> [#uses=1]
	%tmp4 = mul i64 %tmp23, %tmp1		; <i64> [#uses=2]
	%tmp6 = lshr i64 %tmp4, 32		; <i64> [#uses=1]
	%tmp67 = trunc i64 %tmp6 to i32		; <i32> [#uses=1]
	store i32 %tmp67, i32* @T1
	%tmp89 = trunc i64 %tmp4 to i32		; <i32> [#uses=1]
	store i32 %tmp89, i32* @T0
	ret void
}

define void @op_imulw_T0_T1() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = sext i32 %tmp to i64		; <i64> [#uses=1]
	%tmp2 = load i32* @T1		; <i32> [#uses=1]
	%tmp23 = sext i32 %tmp2 to i64		; <i64> [#uses=1]
	%tmp4 = mul i64 %tmp23, %tmp1		; <i64> [#uses=1]
	%tmp6 = lshr i64 %tmp4, 16		; <i64> [#uses=1]
	%tmp67 = trunc i64 %tmp6 to i32		; <i32> [#uses=1]
	store i32 %tmp67, i32* @T0
	ret void
}

define void @op_addq_T0_T1() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp1 = zext i32 %tmp to i64		; <i64> [#uses=1]
	%tmp2 = shl i64 %tmp1, 32		; <i64> [#uses=1]
	%tmp3 = load i32* @T0		; <i32> [#uses=1]
	%tmp34 = zext i32 %tmp3 to i64		; <i64> [#uses=1]
	%tmp5 = or i64 %tmp2, %tmp34		; <i64> [#uses=1]
	%tmp6 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp8 = getelementptr %struct.CPUARMState* %tmp6, i32 0, i32 0, i32 ptrtoint (i32* @__op_param2 to i32)		; <i32*> [#uses=1]
	%tmp9 = load i32* %tmp8		; <i32> [#uses=1]
	%tmp910 = zext i32 %tmp9 to i64		; <i64> [#uses=1]
	%tmp12 = shl i64 %tmp910, 32		; <i64> [#uses=1]
	%tmp15 = getelementptr %struct.CPUARMState* %tmp6, i32 0, i32 0, i32 ptrtoint (i32* @__op_param1 to i32)		; <i32*> [#uses=1]
	%tmp16 = load i32* %tmp15		; <i32> [#uses=1]
	%tmp1617 = zext i32 %tmp16 to i64		; <i64> [#uses=1]
	%tmp18 = or i64 %tmp1617, %tmp12		; <i64> [#uses=1]
	%tmp20 = add i64 %tmp18, %tmp5		; <i64> [#uses=2]
	%tmp23 = lshr i64 %tmp20, 32		; <i64> [#uses=1]
	%tmp2324 = trunc i64 %tmp23 to i32		; <i32> [#uses=1]
	store i32 %tmp2324, i32* @T1
	%tmp2526 = trunc i64 %tmp20 to i32		; <i32> [#uses=1]
	store i32 %tmp2526, i32* @T0
	ret void
}

define void @op_addq_lo_T0_T1() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp1 = zext i32 %tmp to i64		; <i64> [#uses=1]
	%tmp2 = shl i64 %tmp1, 32		; <i64> [#uses=1]
	%tmp3 = load i32* @T0		; <i32> [#uses=1]
	%tmp34 = zext i32 %tmp3 to i64		; <i64> [#uses=1]
	%tmp5 = or i64 %tmp2, %tmp34		; <i64> [#uses=1]
	%tmp6 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp8 = getelementptr %struct.CPUARMState* %tmp6, i32 0, i32 0, i32 ptrtoint (i32* @__op_param1 to i32)		; <i32*> [#uses=1]
	%tmp9 = load i32* %tmp8		; <i32> [#uses=1]
	%tmp910 = zext i32 %tmp9 to i64		; <i64> [#uses=1]
	%tmp12 = add i64 %tmp910, %tmp5		; <i64> [#uses=2]
	%tmp15 = lshr i64 %tmp12, 32		; <i64> [#uses=1]
	%tmp1516 = trunc i64 %tmp15 to i32		; <i32> [#uses=1]
	store i32 %tmp1516, i32* @T1
	%tmp1718 = trunc i64 %tmp12 to i32		; <i32> [#uses=1]
	store i32 %tmp1718, i32* @T0
	ret void
}

define void @op_logicq_cc() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=2]
	%tmp2 = and i32 %tmp1, -2147483648		; <i32> [#uses=1]
	%tmp3 = load i32* @T0		; <i32> [#uses=1]
	%tmp5 = or i32 %tmp1, %tmp3		; <i32> [#uses=1]
	%tmp6 = icmp ne i32 %tmp5, 0		; <i1> [#uses=1]
	%tmp67 = zext i1 %tmp6 to i32		; <i32> [#uses=1]
	%tmp8 = or i32 %tmp67, %tmp2		; <i32> [#uses=1]
	%tmp9 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp8, i32* %tmp9
	ret void
}

define void @op_ldsb_raw() {
entry:
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp12 = inttoptr i32 %tmp1 to i8*		; <i8*> [#uses=1]
	%tmp5 = load i8* %tmp12		; <i8> [#uses=1]
	%tmp56 = sext i8 %tmp5 to i32		; <i32> [#uses=1]
	store i32 %tmp56, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_lduw_raw() {
entry:
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp45 = inttoptr i32 %tmp1 to i16*		; <i16*> [#uses=1]
	%tmp6 = load i16* %tmp45		; <i16> [#uses=1]
	%tmp67 = zext i16 %tmp6 to i32		; <i32> [#uses=1]
	store i32 %tmp67, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_ldsw_raw() {
entry:
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp45 = inttoptr i32 %tmp1 to i16*		; <i16*> [#uses=1]
	%tmp6 = load i16* %tmp45		; <i16> [#uses=1]
	%tmp67 = sext i16 %tmp6 to i32		; <i32> [#uses=1]
	store i32 %tmp67, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_stw_raw() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp34 = trunc i32 %tmp to i16		; <i16> [#uses=1]
	%tmp56 = inttoptr i32 %tmp1 to i16*		; <i16*> [#uses=1]
	store i16 %tmp34, i16* %tmp56
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_swpb_raw() {
entry:
	tail call void @cpu_lock( )
	%tmp2 = load i32* @T1		; <i32> [#uses=1]
	%tmp23 = inttoptr i32 %tmp2 to i8*		; <i8*> [#uses=2]
	%tmp6 = load i8* %tmp23		; <i8> [#uses=1]
	%tmp67 = zext i8 %tmp6 to i32		; <i32> [#uses=1]
	%tmp10 = load i32* @T0		; <i32> [#uses=1]
	%tmp1415 = trunc i32 %tmp10 to i8		; <i8> [#uses=1]
	store i8 %tmp1415, i8* %tmp23
	store i32 %tmp67, i32* @T0
	tail call void @cpu_unlock( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

declare void @cpu_lock()

declare void @cpu_unlock()

define void @op_swpl_raw() {
entry:
	tail call void @cpu_lock( )
	%tmp2 = load i32* @T1		; <i32> [#uses=1]
	%tmp56 = inttoptr i32 %tmp2 to i32*		; <i32*> [#uses=2]
	%tmp7 = load i32* %tmp56		; <i32> [#uses=1]
	%tmp10 = load i32* @T0		; <i32> [#uses=1]
	store i32 %tmp10, i32* %tmp56
	store i32 %tmp7, i32* @T0
	tail call void @cpu_unlock( )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_vfp_lds_raw() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = load i32* @T1		; <i32> [#uses=1]
	%tmp56 = inttoptr i32 %tmp2 to i32*		; <i32*> [#uses=1]
	%tmp7 = load i32* %tmp56		; <i32> [#uses=1]
	%tmp10 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=1]
	store i32 %tmp7, i32* %tmp10
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_vfp_sts_raw() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 4		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	%tmp4 = load i32* @T1		; <i32> [#uses=1]
	%tmp67 = inttoptr i32 %tmp4 to i32*		; <i32*> [#uses=1]
	store i32 %tmp3, i32* %tmp67
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_vfp_ldd_raw() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = load i32* @T1		; <i32> [#uses=1]
	%tmp56 = inttoptr i32 %tmp2 to i64*		; <i64*> [#uses=1]
	%tmp7 = load i64* %tmp56		; <i64> [#uses=1]
	%tmp10 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 6		; <i64*> [#uses=1]
	store i64 %tmp7, i64* %tmp10
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_vfp_std_raw() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 6		; <i64*> [#uses=1]
	%tmp3 = load i64* %tmp2		; <i64> [#uses=1]
	%tmp4 = load i32* @T1		; <i32> [#uses=1]
	%tmp67 = inttoptr i32 %tmp4 to i64*		; <i64*> [#uses=1]
	store i64 %tmp3, i64* %tmp67
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_shll_T1_im() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp1 = shl i32 %tmp, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	store i32 %tmp1, i32* @T1
	ret void
}

define void @op_shrl_T1_im() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp1 = lshr i32 %tmp, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	store i32 %tmp1, i32* @T1
	ret void
}

define void @op_shrl_T1_0() {
entry:
	store i32 0, i32* @T1
	ret void
}

define void @op_sarl_T1_im() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp1 = ashr i32 %tmp, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	store i32 %tmp1, i32* @T1
	ret void
}

define void @op_sarl_T1_0() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp1 = ashr i32 %tmp, 31		; <i32> [#uses=1]
	store i32 %tmp1, i32* @T1
	ret void
}

define void @op_rorl_T1_im() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=2]
	%tmp2 = lshr i32 %tmp, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	%tmp4 = shl i32 %tmp, sub (i32 32, i32 ptrtoint (i32* @__op_param1 to i32))		; <i32> [#uses=1]
	%tmp5 = or i32 %tmp2, %tmp4		; <i32> [#uses=1]
	store i32 %tmp5, i32* @T1
	ret void
}

define void @op_rrxl_T1() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp1 = lshr i32 %tmp, 1		; <i32> [#uses=1]
	%tmp2 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp2, i32 0, i32 8		; <i32*> [#uses=1]
	%tmp4 = load i32* %tmp3		; <i32> [#uses=1]
	%tmp5 = shl i32 %tmp4, 31		; <i32> [#uses=1]
	%tmp6 = or i32 %tmp5, %tmp1		; <i32> [#uses=1]
	store i32 %tmp6, i32* @T1
	ret void
}

define void @op_shll_T1_im_cc() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = lshr i32 %tmp1, sub (i32 32, i32 ptrtoint (i32* @__op_param1 to i32))		; <i32> [#uses=1]
	%tmp4 = and i32 %tmp3, 1		; <i32> [#uses=1]
	%tmp5 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp4, i32* %tmp5
	%tmp6 = load i32* @T1		; <i32> [#uses=1]
	%tmp7 = shl i32 %tmp6, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	store i32 %tmp7, i32* @T1
	ret void
}

define void @op_shrl_T1_im_cc() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = lshr i32 %tmp1, sub (i32 ptrtoint (i32* @__op_param1 to i32), i32 1)		; <i32> [#uses=1]
	%tmp4 = and i32 %tmp3, 1		; <i32> [#uses=1]
	%tmp5 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp4, i32* %tmp5
	%tmp6 = load i32* @T1		; <i32> [#uses=1]
	%tmp7 = lshr i32 %tmp6, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	store i32 %tmp7, i32* @T1
	ret void
}

define void @op_shrl_T1_0_cc() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp2 = lshr i32 %tmp1, 31		; <i32> [#uses=1]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp2, i32* %tmp4
	store i32 0, i32* @T1
	ret void
}

define void @op_sarl_T1_im_cc() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp3 = lshr i32 %tmp1, sub (i32 ptrtoint (i32* @__op_param1 to i32), i32 1)		; <i32> [#uses=1]
	%tmp4 = and i32 %tmp3, 1		; <i32> [#uses=1]
	%tmp5 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp4, i32* %tmp5
	%tmp6 = load i32* @T1		; <i32> [#uses=1]
	%tmp7 = ashr i32 %tmp6, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	store i32 %tmp7, i32* @T1
	ret void
}

define void @op_sarl_T1_0_cc() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp2 = lshr i32 %tmp1, 31		; <i32> [#uses=1]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp2, i32* %tmp4
	%tmp5 = load i32* @T1		; <i32> [#uses=1]
	%tmp6 = ashr i32 %tmp5, 31		; <i32> [#uses=1]
	store i32 %tmp6, i32* @T1
	ret void
}

define void @op_rorl_T1_im_cc() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp4 = lshr i32 %tmp1, sub (i32 ptrtoint (i32* @__op_param1 to i32), i32 1)		; <i32> [#uses=1]
	%tmp5 = and i32 %tmp4, 1		; <i32> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp5, i32* %tmp6
	%tmp7 = load i32* @T1		; <i32> [#uses=2]
	%tmp9 = lshr i32 %tmp7, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	%tmp11 = shl i32 %tmp7, sub (i32 32, i32 ptrtoint (i32* @__op_param1 to i32))		; <i32> [#uses=1]
	%tmp12 = or i32 %tmp9, %tmp11		; <i32> [#uses=1]
	store i32 %tmp12, i32* @T1
	ret void
}

define void @op_rrxl_T1_cc() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=2]
	%tmp1 = and i32 %tmp, 1		; <i32> [#uses=1]
	%tmp3 = lshr i32 %tmp, 1		; <i32> [#uses=1]
	%tmp4 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp5 = getelementptr %struct.CPUARMState* %tmp4, i32 0, i32 8		; <i32*> [#uses=2]
	%tmp6 = load i32* %tmp5		; <i32> [#uses=1]
	%tmp7 = shl i32 %tmp6, 31		; <i32> [#uses=1]
	%tmp8 = or i32 %tmp7, %tmp3		; <i32> [#uses=1]
	store i32 %tmp8, i32* @T1
	store i32 %tmp1, i32* %tmp5
	ret void
}

define void @op_shll_T2_im() {
entry:
	%tmp = load i32* @T2		; <i32> [#uses=1]
	%tmp1 = shl i32 %tmp, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	store i32 %tmp1, i32* @T2
	ret void
}

define void @op_shrl_T2_im() {
entry:
	%tmp = load i32* @T2		; <i32> [#uses=1]
	%tmp1 = lshr i32 %tmp, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	store i32 %tmp1, i32* @T2
	ret void
}

define void @op_shrl_T2_0() {
entry:
	store i32 0, i32* @T2
	ret void
}

define void @op_sarl_T2_im() {
entry:
	%tmp = load i32* @T2		; <i32> [#uses=1]
	%tmp1 = ashr i32 %tmp, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	store i32 %tmp1, i32* @T2
	ret void
}

define void @op_sarl_T2_0() {
entry:
	%tmp = load i32* @T2		; <i32> [#uses=1]
	%tmp1 = ashr i32 %tmp, 31		; <i32> [#uses=1]
	store i32 %tmp1, i32* @T2
	ret void
}

define void @op_rorl_T2_im() {
entry:
	%tmp = load i32* @T2		; <i32> [#uses=2]
	%tmp2 = lshr i32 %tmp, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	%tmp4 = shl i32 %tmp, sub (i32 32, i32 ptrtoint (i32* @__op_param1 to i32))		; <i32> [#uses=1]
	%tmp5 = or i32 %tmp2, %tmp4		; <i32> [#uses=1]
	store i32 %tmp5, i32* @T2
	ret void
}

define void @op_rrxl_T2() {
entry:
	%tmp = load i32* @T2		; <i32> [#uses=1]
	%tmp1 = lshr i32 %tmp, 1		; <i32> [#uses=1]
	%tmp2 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp2, i32 0, i32 8		; <i32*> [#uses=1]
	%tmp4 = load i32* %tmp3		; <i32> [#uses=1]
	%tmp5 = shl i32 %tmp4, 31		; <i32> [#uses=1]
	%tmp6 = or i32 %tmp5, %tmp1		; <i32> [#uses=1]
	store i32 %tmp6, i32* @T2
	ret void
}

define void @op_shll_T1_T0() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = and i32 %tmp, 255		; <i32> [#uses=2]
	%tmp3 = icmp sgt i32 %tmp1, 31		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_next, label %cond_false

cond_false:		; preds = %entry
	%tmp5 = load i32* @T1		; <i32> [#uses=1]
	%tmp7 = shl i32 %tmp5, %tmp1		; <i32> [#uses=1]
	store i32 %tmp7, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next:		; preds = %entry
	store i32 0, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_shrl_T1_T0() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = and i32 %tmp, 255		; <i32> [#uses=2]
	%tmp3 = icmp sgt i32 %tmp1, 31		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_next, label %cond_false

cond_false:		; preds = %entry
	%tmp5 = load i32* @T1		; <i32> [#uses=1]
	%tmp7 = lshr i32 %tmp5, %tmp1		; <i32> [#uses=1]
	store i32 %tmp7, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next:		; preds = %entry
	store i32 0, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_sarl_T1_T0() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = and i32 %tmp, 255		; <i32> [#uses=2]
	%tmp3 = icmp sgt i32 %tmp1, 31		; <i1> [#uses=1]
	%shift.0 = select i1 %tmp3, i32 31, i32 %tmp1		; <i32> [#uses=1]
	%tmp5 = load i32* @T1		; <i32> [#uses=1]
	%tmp7 = ashr i32 %tmp5, %shift.0		; <i32> [#uses=1]
	store i32 %tmp7, i32* @T1
	ret void
}

define void @op_rorl_T1_T0() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = and i32 %tmp, 31		; <i32> [#uses=3]
	%tmp3 = icmp eq i32 %tmp1, 0		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_next, label %cond_true

cond_true:		; preds = %entry
	%tmp5 = load i32* @T1		; <i32> [#uses=2]
	%tmp7 = lshr i32 %tmp5, %tmp1		; <i32> [#uses=1]
	%tmp8 = sub i32 32, %tmp1		; <i32> [#uses=1]
	%tmp9 = shl i32 %tmp5, %tmp8		; <i32> [#uses=1]
	%tmp10 = or i32 %tmp7, %tmp9		; <i32> [#uses=1]
	store i32 %tmp10, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next:		; preds = %entry
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_shll_T1_T0_cc() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = and i32 %tmp, 255		; <i32> [#uses=5]
	%tmp3 = icmp sgt i32 %tmp1, 31		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_true, label %cond_false16

cond_true:		; preds = %entry
	%tmp6 = icmp eq i32 %tmp1, 32		; <i1> [#uses=1]
	%tmp10 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	br i1 %tmp6, label %cond_true9, label %cond_false

cond_true9:		; preds = %cond_true
	%tmp11 = load i32* @T1		; <i32> [#uses=1]
	%tmp12 = and i32 %tmp11, 1		; <i32> [#uses=1]
	%tmp13 = getelementptr %struct.CPUARMState* %tmp10, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp12, i32* %tmp13
	store i32 0, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false:		; preds = %cond_true
	%tmp15 = getelementptr %struct.CPUARMState* %tmp10, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 0, i32* %tmp15
	store i32 0, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false16:		; preds = %entry
	%tmp18 = icmp eq i32 %tmp1, 0		; <i1> [#uses=1]
	br i1 %tmp18, label %cond_next33, label %cond_true21

cond_true21:		; preds = %cond_false16
	%tmp22 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp23 = load i32* @T1		; <i32> [#uses=1]
	%tmp25 = sub i32 32, %tmp1		; <i32> [#uses=1]
	%tmp26 = lshr i32 %tmp23, %tmp25		; <i32> [#uses=1]
	%tmp27 = and i32 %tmp26, 1		; <i32> [#uses=1]
	%tmp28 = getelementptr %struct.CPUARMState* %tmp22, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp27, i32* %tmp28
	%tmp29 = load i32* @T1		; <i32> [#uses=1]
	%tmp31 = shl i32 %tmp29, %tmp1		; <i32> [#uses=1]
	store i32 %tmp31, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next33:		; preds = %cond_false16
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_shrl_T1_T0_cc() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = and i32 %tmp, 255		; <i32> [#uses=5]
	%tmp3 = icmp sgt i32 %tmp1, 31		; <i1> [#uses=1]
	br i1 %tmp3, label %cond_true, label %cond_false17

cond_true:		; preds = %entry
	%tmp6 = icmp eq i32 %tmp1, 32		; <i1> [#uses=1]
	%tmp10 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	br i1 %tmp6, label %cond_true9, label %cond_false

cond_true9:		; preds = %cond_true
	%tmp11 = load i32* @T1		; <i32> [#uses=1]
	%tmp12 = lshr i32 %tmp11, 31		; <i32> [#uses=1]
	%tmp14 = getelementptr %struct.CPUARMState* %tmp10, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp12, i32* %tmp14
	store i32 0, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false:		; preds = %cond_true
	%tmp16 = getelementptr %struct.CPUARMState* %tmp10, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 0, i32* %tmp16
	store i32 0, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false17:		; preds = %entry
	%tmp19 = icmp eq i32 %tmp1, 0		; <i1> [#uses=1]
	br i1 %tmp19, label %cond_next34, label %cond_true22

cond_true22:		; preds = %cond_false17
	%tmp23 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp24 = load i32* @T1		; <i32> [#uses=1]
	%tmp26 = add i32 %tmp1, -1		; <i32> [#uses=1]
	%tmp27 = lshr i32 %tmp24, %tmp26		; <i32> [#uses=1]
	%tmp28 = and i32 %tmp27, 1		; <i32> [#uses=1]
	%tmp29 = getelementptr %struct.CPUARMState* %tmp23, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp28, i32* %tmp29
	%tmp30 = load i32* @T1		; <i32> [#uses=1]
	%tmp32 = lshr i32 %tmp30, %tmp1		; <i32> [#uses=1]
	store i32 %tmp32, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next34:		; preds = %cond_false17
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_sarl_T1_T0_cc() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = and i32 %tmp, 255		; <i32> [#uses=3]
	%tmp3 = icmp sgt i32 %tmp1, 31		; <i1> [#uses=1]
	%tmp5 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp6 = load i32* @T1		; <i32> [#uses=2]
	br i1 %tmp3, label %cond_true, label %cond_false

cond_true:		; preds = %entry
	%tmp7 = lshr i32 %tmp6, 31		; <i32> [#uses=1]
	%tmp9 = getelementptr %struct.CPUARMState* %tmp5, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp7, i32* %tmp9
	%tmp10 = load i32* @T1		; <i32> [#uses=1]
	%tmp11 = ashr i32 %tmp10, 31		; <i32> [#uses=1]
	store i32 %tmp11, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false:		; preds = %entry
	%tmp15 = add i32 %tmp1, -1		; <i32> [#uses=1]
	%tmp16 = lshr i32 %tmp6, %tmp15		; <i32> [#uses=1]
	%tmp17 = and i32 %tmp16, 1		; <i32> [#uses=1]
	%tmp18 = getelementptr %struct.CPUARMState* %tmp5, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp17, i32* %tmp18
	%tmp19 = load i32* @T1		; <i32> [#uses=1]
	%tmp21 = ashr i32 %tmp19, %tmp1		; <i32> [#uses=1]
	store i32 %tmp21, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_rorl_T1_T0_cc() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=2]
	%tmp3 = and i32 %tmp, 31		; <i32> [#uses=4]
	%tmp5 = icmp eq i32 %tmp3, 0		; <i1> [#uses=1]
	br i1 %tmp5, label %cond_true, label %cond_false

cond_true:		; preds = %entry
	%tmp1 = and i32 %tmp, 255		; <i32> [#uses=1]
	%tmp8 = icmp eq i32 %tmp1, 0		; <i1> [#uses=1]
	br i1 %tmp8, label %cond_next30, label %cond_true11

cond_true11:		; preds = %cond_true
	%tmp12 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp13 = load i32* @T1		; <i32> [#uses=1]
	%tmp14 = lshr i32 %tmp13, 31		; <i32> [#uses=1]
	%tmp16 = getelementptr %struct.CPUARMState* %tmp12, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp14, i32* %tmp16
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false:		; preds = %entry
	%tmp17 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp18 = load i32* @T1		; <i32> [#uses=1]
	%tmp20 = add i32 %tmp3, -1		; <i32> [#uses=1]
	%tmp21 = lshr i32 %tmp18, %tmp20		; <i32> [#uses=1]
	%tmp22 = and i32 %tmp21, 1		; <i32> [#uses=1]
	%tmp23 = getelementptr %struct.CPUARMState* %tmp17, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp22, i32* %tmp23
	%tmp24 = load i32* @T1		; <i32> [#uses=2]
	%tmp26 = lshr i32 %tmp24, %tmp3		; <i32> [#uses=1]
	%tmp27 = sub i32 32, %tmp3		; <i32> [#uses=1]
	%tmp28 = shl i32 %tmp24, %tmp27		; <i32> [#uses=1]
	%tmp29 = or i32 %tmp26, %tmp28		; <i32> [#uses=1]
	store i32 %tmp29, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next30:		; preds = %cond_true
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_clz_T0() {
entry:
	%tmp512 = load i32* @T0		; <i32> [#uses=2]
	%tmp613 = icmp eq i32 %tmp512, 0		; <i1> [#uses=1]
	br i1 %tmp613, label %bb8, label %bb

bb:		; preds = %bb, %entry
	%indvar = phi i32 [ 0, %entry ], [ %indvar.next, %bb ]		; <i32> [#uses=2]
	%T0.tmp.1 = phi i32 [ %tmp512, %entry ], [ %tmp1, %bb ]		; <i32> [#uses=2]
	%tmp1 = lshr i32 %T0.tmp.1, 1		; <i32> [#uses=2]
	%tmp3 = sub i32 31, %indvar		; <i32> [#uses=1]
	%tmp6 = icmp ult i32 %T0.tmp.1, 2		; <i1> [#uses=1]
	%indvar.next = add i32 %indvar, 1		; <i32> [#uses=1]
	br i1 %tmp6, label %bb8.loopexit, label %bb

bb8.loopexit:		; preds = %bb
	store i32 %tmp1, i32* @T0
	br label %bb8

bb8:		; preds = %bb8.loopexit, %entry
	%count.010.1 = phi i32 [ %tmp3, %bb8.loopexit ], [ 32, %entry ]		; <i32> [#uses=1]
	store i32 %count.010.1, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_sarl_T0_im() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = ashr i32 %tmp, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=1]
	store i32 %tmp1, i32* @T0
	ret void
}

define void @op_sxth_T0() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = trunc i32 %tmp to i16		; <i16> [#uses=1]
	%tmp12 = sext i16 %tmp1 to i32		; <i32> [#uses=1]
	store i32 %tmp12, i32* @T0
	ret void
}

define void @op_sxth_T1() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp1 = trunc i32 %tmp to i16		; <i16> [#uses=1]
	%tmp12 = sext i16 %tmp1 to i32		; <i32> [#uses=1]
	store i32 %tmp12, i32* @T1
	ret void
}

define void @op_sxtb_T1() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp1 = trunc i32 %tmp to i8		; <i8> [#uses=1]
	%tmp12 = sext i8 %tmp1 to i32		; <i32> [#uses=1]
	store i32 %tmp12, i32* @T1
	ret void
}

define void @op_uxtb_T1() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp12 = and i32 %tmp, 255		; <i32> [#uses=1]
	store i32 %tmp12, i32* @T1
	ret void
}

define void @op_uxth_T1() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp12 = and i32 %tmp, 65535		; <i32> [#uses=1]
	store i32 %tmp12, i32* @T1
	ret void
}

define void @op_sxtb16_T1() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=2]
	%tmp1 = trunc i32 %tmp to i8		; <i8> [#uses=1]
	%tmp12 = sext i8 %tmp1 to i16		; <i16> [#uses=1]
	%tmp123 = zext i16 %tmp12 to i32		; <i32> [#uses=1]
	%tmp5 = lshr i32 %tmp, 16		; <i32> [#uses=1]
	%tmp56 = trunc i32 %tmp5 to i8		; <i8> [#uses=1]
	%tmp567 = sext i8 %tmp56 to i32		; <i32> [#uses=1]
	%tmp8 = shl i32 %tmp567, 16		; <i32> [#uses=1]
	%tmp10 = or i32 %tmp8, %tmp123		; <i32> [#uses=1]
	store i32 %tmp10, i32* @T1
	ret void
}

define void @op_uxtb16_T1() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=1]
	%tmp9 = and i32 %tmp, 16711935		; <i32> [#uses=1]
	store i32 %tmp9, i32* @T1
	ret void
}

define void @op_addl_T0_T1_setq() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=3]
	%tmp1 = load i32* @T1		; <i32> [#uses=2]
	%tmp2 = add i32 %tmp1, %tmp		; <i32> [#uses=3]
	%tmp5 = xor i32 %tmp2, %tmp		; <i32> [#uses=1]
	%tmp6 = icmp slt i32 %tmp5, 0		; <i1> [#uses=1]
	br i1 %tmp6, label %cond_true, label %cond_next17

cond_true:		; preds = %entry
	%tmp10 = xor i32 %tmp1, %tmp		; <i32> [#uses=1]
	%tmp11 = icmp sgt i32 %tmp10, -1		; <i1> [#uses=1]
	br i1 %tmp11, label %cond_true14, label %cond_next17

cond_true14:		; preds = %cond_true
	%tmp15 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp16 = getelementptr %struct.CPUARMState* %tmp15, i32 0, i32 11		; <i32*> [#uses=1]
	store i32 1, i32* %tmp16
	store i32 %tmp2, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_next17:		; preds = %cond_true, %entry
	store i32 %tmp2, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_addl_T0_T1_saturate() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=3]
	%tmp1 = load i32* @T1		; <i32> [#uses=2]
	%tmp2 = add i32 %tmp1, %tmp		; <i32> [#uses=2]
	%tmp5 = xor i32 %tmp2, %tmp		; <i32> [#uses=1]
	%tmp6 = icmp sgt i32 %tmp5, -1		; <i1> [#uses=1]
	br i1 %tmp6, label %bb, label %cond_next

cond_next:		; preds = %entry
	%tmp10 = xor i32 %tmp1, %tmp		; <i32> [#uses=1]
	%tmp11 = icmp slt i32 %tmp10, 0		; <i1> [#uses=1]
	br i1 %tmp11, label %bb, label %cond_next15

cond_next15:		; preds = %cond_next
	%tmp16 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp17 = getelementptr %struct.CPUARMState* %tmp16, i32 0, i32 11		; <i32*> [#uses=1]
	store i32 1, i32* %tmp17
	%tmp18 = load i32* @T0		; <i32> [#uses=1]
	%tmp19 = icmp slt i32 %tmp18, 0		; <i1> [#uses=1]
	br i1 %tmp19, label %cond_true22, label %cond_false

cond_true22:		; preds = %cond_next15
	store i32 -2147483648, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false:		; preds = %cond_next15
	store i32 2147483647, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

bb:		; preds = %cond_next, %entry
	store i32 %tmp2, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_subl_T0_T1_saturate() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=3]
	%tmp1 = load i32* @T1		; <i32> [#uses=2]
	%tmp2 = sub i32 %tmp, %tmp1		; <i32> [#uses=2]
	%tmp5 = xor i32 %tmp2, %tmp		; <i32> [#uses=1]
	%tmp6 = icmp sgt i32 %tmp5, -1		; <i1> [#uses=1]
	br i1 %tmp6, label %bb, label %cond_next

cond_next:		; preds = %entry
	%tmp10 = xor i32 %tmp1, %tmp		; <i32> [#uses=1]
	%tmp11 = icmp sgt i32 %tmp10, -1		; <i1> [#uses=1]
	br i1 %tmp11, label %bb, label %cond_next15

cond_next15:		; preds = %cond_next
	%tmp16 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp17 = getelementptr %struct.CPUARMState* %tmp16, i32 0, i32 11		; <i32*> [#uses=1]
	store i32 1, i32* %tmp17
	%tmp18 = load i32* @T0		; <i32> [#uses=1]
	%tmp19 = icmp slt i32 %tmp18, 0		; <i1> [#uses=1]
	br i1 %tmp19, label %cond_true22, label %cond_false

cond_true22:		; preds = %cond_next15
	store i32 -2147483648, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false:		; preds = %cond_next15
	store i32 2147483647, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

bb:		; preds = %cond_next, %entry
	store i32 %tmp2, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_double_T1_saturate() {
entry:
	%tmp = load i32* @T1		; <i32> [#uses=3]
	%tmp2 = icmp sgt i32 %tmp, 1073741823		; <i1> [#uses=1]
	br i1 %tmp2, label %cond_true, label %cond_false

cond_true:		; preds = %entry
	store i32 2147483647, i32* @T1
	%tmp4 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp5 = getelementptr %struct.CPUARMState* %tmp4, i32 0, i32 11		; <i32*> [#uses=1]
	store i32 1, i32* %tmp5
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false:		; preds = %entry
	%tmp7 = icmp slt i32 %tmp, -1073741823		; <i1> [#uses=1]
	br i1 %tmp7, label %cond_true10, label %cond_false13

cond_true10:		; preds = %cond_false
	store i32 -2147483648, i32* @T1
	%tmp11 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp12 = getelementptr %struct.CPUARMState* %tmp11, i32 0, i32 11		; <i32*> [#uses=1]
	store i32 1, i32* %tmp12
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false13:		; preds = %cond_false
	%tmp15 = shl i32 %tmp, 1		; <i32> [#uses=1]
	store i32 %tmp15, i32* @T1
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_shll_T0_im_thumb() {
entry:
	%tmp3 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp4 = load i32* @T1		; <i32> [#uses=1]
	%tmp7 = lshr i32 %tmp4, sub (i32 32, i32 ptrtoint (i32* @__op_param1 to i32))		; <i32> [#uses=1]
	%tmp8 = and i32 %tmp7, 1		; <i32> [#uses=1]
	%tmp9 = getelementptr %struct.CPUARMState* %tmp3, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp8, i32* %tmp9
	%tmp10 = load i32* @T0		; <i32> [#uses=1]
	%tmp13 = shl i32 %tmp10, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=2]
	store i32 %tmp13, i32* @T0
	%tmp14 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp16 = getelementptr %struct.CPUARMState* %tmp14, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp13, i32* %tmp16
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_shrl_T0_im_thumb() {
entry:
	%tmp3 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp8 = load i32* @T0		; <i32> [#uses=1]
	%tmp11 = lshr i32 %tmp8, sub (i32 ptrtoint (i32* @__op_param1 to i32), i32 1)		; <i32> [#uses=1]
	%tmp13 = and i32 %tmp11, 1		; <i32> [#uses=1]
	%tmp14 = getelementptr %struct.CPUARMState* %tmp3, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp13, i32* %tmp14
	%tmp15 = load i32* @T0		; <i32> [#uses=1]
	%tmp17 = lshr i32 %tmp15, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=2]
	store i32 %tmp17, i32* @T0
	%tmp18 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp20 = getelementptr %struct.CPUARMState* %tmp18, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp17, i32* %tmp20
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_sarl_T0_im_thumb() {
entry:
	%tmp9 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp10 = load i32* @T0		; <i32> [#uses=1]
	%tmp14 = lshr i32 %tmp10, sub (i32 ptrtoint (i32* @__op_param1 to i32), i32 1)		; <i32> [#uses=1]
	%tmp15 = and i32 %tmp14, 1		; <i32> [#uses=1]
	%tmp16 = getelementptr %struct.CPUARMState* %tmp9, i32 0, i32 8		; <i32*> [#uses=1]
	store i32 %tmp15, i32* %tmp16
	%tmp17 = load i32* @T0		; <i32> [#uses=1]
	%tmp19 = ashr i32 %tmp17, ptrtoint (i32* @__op_param1 to i32)		; <i32> [#uses=2]
	store i32 %tmp19, i32* @T0
	%tmp20 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp22 = getelementptr %struct.CPUARMState* %tmp20, i32 0, i32 10		; <i32*> [#uses=1]
	store i32 %tmp19, i32* %tmp22
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_swi() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 16		; <i32*> [#uses=1]
	store i32 2, i32* %tmp1
	tail call void @cpu_loop_exit( )
	ret void
}

declare void @cpu_loop_exit()

define void @op_undef_insn() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 16		; <i32*> [#uses=1]
	store i32 1, i32* %tmp1
	tail call void @cpu_loop_exit( )
	ret void
}

define void @op_debug() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 16		; <i32*> [#uses=1]
	store i32 65538, i32* %tmp1
	tail call void @cpu_loop_exit( )
	ret void
}

define void @op_wfi() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 16		; <i32*> [#uses=1]
	store i32 65537, i32* %tmp1
	%tmp2 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp2, i32 0, i32 19		; <i32*> [#uses=1]
	store i32 1, i32* %tmp3
	tail call void @cpu_loop_exit( )
	ret void
}

define void @op_bkpt() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 16		; <i32*> [#uses=1]
	store i32 7, i32* %tmp1
	tail call void @cpu_loop_exit( )
	ret void
}

define void @op_vfp_adds() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 5		; <i32*> [#uses=1]
	%tmp7 = load i32* %tmp6		; <i32> [#uses=1]
	%tmp10 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 4		; <i32*> [#uses=2]
	%tmp11 = load i32* %tmp10		; <i32> [#uses=1]
	%tmp12 = tail call i32 @float32_add( i32 %tmp11, i32 %tmp7, %struct.float_status* %tmp3 )		; <i32> [#uses=1]
	store i32 %tmp12, i32* %tmp10
	ret void
}

declare i32 @float32_add(i32, i32, %struct.float_status*)

define void @op_vfp_addd() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 7		; <i64*> [#uses=1]
	%tmp7 = load i64* %tmp6		; <i64> [#uses=1]
	%tmp10 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 6		; <i64*> [#uses=2]
	%tmp11 = load i64* %tmp10		; <i64> [#uses=1]
	%tmp12 = tail call i64 @float64_add( i64 %tmp11, i64 %tmp7, %struct.float_status* %tmp3 )		; <i64> [#uses=1]
	store i64 %tmp12, i64* %tmp10
	ret void
}

declare i64 @float64_add(i64, i64, %struct.float_status*)

define void @op_vfp_subs() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 5		; <i32*> [#uses=1]
	%tmp7 = load i32* %tmp6		; <i32> [#uses=1]
	%tmp10 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 4		; <i32*> [#uses=2]
	%tmp11 = load i32* %tmp10		; <i32> [#uses=1]
	%tmp12 = tail call i32 @float32_sub( i32 %tmp11, i32 %tmp7, %struct.float_status* %tmp3 )		; <i32> [#uses=1]
	store i32 %tmp12, i32* %tmp10
	ret void
}

declare i32 @float32_sub(i32, i32, %struct.float_status*)

define void @op_vfp_subd() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 7		; <i64*> [#uses=1]
	%tmp7 = load i64* %tmp6		; <i64> [#uses=1]
	%tmp10 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 6		; <i64*> [#uses=2]
	%tmp11 = load i64* %tmp10		; <i64> [#uses=1]
	%tmp12 = tail call i64 @float64_sub( i64 %tmp11, i64 %tmp7, %struct.float_status* %tmp3 )		; <i64> [#uses=1]
	store i64 %tmp12, i64* %tmp10
	ret void
}

declare i64 @float64_sub(i64, i64, %struct.float_status*)

define void @op_vfp_muls() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 5		; <i32*> [#uses=1]
	%tmp7 = load i32* %tmp6		; <i32> [#uses=1]
	%tmp10 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 4		; <i32*> [#uses=2]
	%tmp11 = load i32* %tmp10		; <i32> [#uses=1]
	%tmp12 = tail call i32 @float32_mul( i32 %tmp11, i32 %tmp7, %struct.float_status* %tmp3 )		; <i32> [#uses=1]
	store i32 %tmp12, i32* %tmp10
	ret void
}

declare i32 @float32_mul(i32, i32, %struct.float_status*)

define void @op_vfp_muld() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 7		; <i64*> [#uses=1]
	%tmp7 = load i64* %tmp6		; <i64> [#uses=1]
	%tmp10 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 6		; <i64*> [#uses=2]
	%tmp11 = load i64* %tmp10		; <i64> [#uses=1]
	%tmp12 = tail call i64 @float64_mul( i64 %tmp11, i64 %tmp7, %struct.float_status* %tmp3 )		; <i64> [#uses=1]
	store i64 %tmp12, i64* %tmp10
	ret void
}

declare i64 @float64_mul(i64, i64, %struct.float_status*)

define void @op_vfp_divs() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 5		; <i32*> [#uses=1]
	%tmp7 = load i32* %tmp6		; <i32> [#uses=1]
	%tmp10 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 4		; <i32*> [#uses=2]
	%tmp11 = load i32* %tmp10		; <i32> [#uses=1]
	%tmp12 = tail call i32 @float32_div( i32 %tmp11, i32 %tmp7, %struct.float_status* %tmp3 )		; <i32> [#uses=1]
	store i32 %tmp12, i32* %tmp10
	ret void
}

declare i32 @float32_div(i32, i32, %struct.float_status*)

define void @op_vfp_divd() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 7		; <i64*> [#uses=1]
	%tmp7 = load i64* %tmp6		; <i64> [#uses=1]
	%tmp10 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 6		; <i64*> [#uses=2]
	%tmp11 = load i64* %tmp10		; <i64> [#uses=1]
	%tmp12 = tail call i64 @float64_div( i64 %tmp11, i64 %tmp7, %struct.float_status* %tmp3 )		; <i64> [#uses=1]
	store i64 %tmp12, i64* %tmp10
	ret void
}

declare i64 @float64_div(i64, i64, %struct.float_status*)

define void @op_vfp_abss() {
entry:
	tail call void @do_vfp_abss( )
	ret void
}

declare void @do_vfp_abss()

define void @op_vfp_absd() {
entry:
	tail call void @do_vfp_absd( )
	ret void
}

declare void @do_vfp_absd()

define void @op_vfp_sqrts() {
entry:
	tail call void @do_vfp_sqrts( )
	ret void
}

declare void @do_vfp_sqrts()

define void @op_vfp_sqrtd() {
entry:
	tail call void @do_vfp_sqrtd( )
	ret void
}

declare void @do_vfp_sqrtd()

define void @op_vfp_cmps() {
entry:
	tail call void @do_vfp_cmps( )
	ret void
}

declare void @do_vfp_cmps()

define void @op_vfp_cmpd() {
entry:
	tail call void @do_vfp_cmpd( )
	ret void
}

declare void @do_vfp_cmpd()

define void @op_vfp_cmpes() {
entry:
	tail call void @do_vfp_cmpes( )
	ret void
}

declare void @do_vfp_cmpes()

define void @op_vfp_cmped() {
entry:
	tail call void @do_vfp_cmped( )
	ret void
}

declare void @do_vfp_cmped()

define void @op_vfp_negs() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=2]
	%tmp5 = load i32* %tmp4		; <i32> [#uses=1]
	%tmp8 = xor i32 %tmp5, -2147483648		; <i32> [#uses=1]
	store i32 %tmp8, i32* %tmp4
	ret void
}

define void @op_vfp_negd() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 6		; <i64*> [#uses=2]
	%tmp5 = load i64* %tmp4		; <i64> [#uses=1]
	%tmp8 = xor i64 %tmp5, -9223372036854775808		; <i64> [#uses=1]
	store i64 %tmp8, i64* %tmp4
	ret void
}

define void @op_vfp_F1_ld0s() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp5 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 5		; <i32*> [#uses=1]
	store i32 0, i32* %tmp5
	ret void
}

define void @op_vfp_F1_ld0d() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp5 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 7		; <i64*> [#uses=1]
	store i64 0, i64* %tmp5
	ret void
}

define void @op_vfp_fcvtds() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 4		; <i32*> [#uses=1]
	%tmp7 = load i32* %tmp6		; <i32> [#uses=1]
	%tmp8 = tail call i64 @float32_to_float64( i32 %tmp7, %struct.float_status* %tmp3 )		; <i64> [#uses=1]
	%tmp10 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 6		; <i64*> [#uses=1]
	store i64 %tmp8, i64* %tmp10
	ret void
}

declare i64 @float32_to_float64(i32, %struct.float_status*)

define void @op_vfp_fcvtsd() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 6		; <i64*> [#uses=1]
	%tmp7 = load i64* %tmp6		; <i64> [#uses=1]
	%tmp8 = tail call i32 @float64_to_float32( i64 %tmp7, %struct.float_status* %tmp3 )		; <i32> [#uses=1]
	%tmp10 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 4		; <i32*> [#uses=1]
	store i32 %tmp8, i32* %tmp10
	ret void
}

declare i32 @float64_to_float32(i64, %struct.float_status*)

define void @op_vfp_getreg_F0d() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp12 = bitcast %struct.CPUARMState* %tmp to i8*		; <i8*> [#uses=1]
	%tmp3 = getelementptr i8* %tmp12, i32 ptrtoint (i32* @__op_param1 to i32)		; <i8*> [#uses=1]
	%tmp34 = bitcast i8* %tmp3 to i64*		; <i64*> [#uses=1]
	%tmp5 = load i64* %tmp34		; <i64> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 6		; <i64*> [#uses=1]
	store i64 %tmp5, i64* %tmp7
	ret void
}

define void @op_vfp_getreg_F0s() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp12 = bitcast %struct.CPUARMState* %tmp to i8*		; <i8*> [#uses=1]
	%tmp3 = getelementptr i8* %tmp12, i32 ptrtoint (i32* @__op_param1 to i32)		; <i8*> [#uses=1]
	%tmp34 = bitcast i8* %tmp3 to i32*		; <i32*> [#uses=1]
	%tmp5 = load i32* %tmp34		; <i32> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 4		; <i32*> [#uses=1]
	store i32 %tmp5, i32* %tmp7
	ret void
}

define void @op_vfp_getreg_F1d() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp12 = bitcast %struct.CPUARMState* %tmp to i8*		; <i8*> [#uses=1]
	%tmp3 = getelementptr i8* %tmp12, i32 ptrtoint (i32* @__op_param1 to i32)		; <i8*> [#uses=1]
	%tmp34 = bitcast i8* %tmp3 to i64*		; <i64*> [#uses=1]
	%tmp5 = load i64* %tmp34		; <i64> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 7		; <i64*> [#uses=1]
	store i64 %tmp5, i64* %tmp7
	ret void
}

define void @op_vfp_getreg_F1s() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp12 = bitcast %struct.CPUARMState* %tmp to i8*		; <i8*> [#uses=1]
	%tmp3 = getelementptr i8* %tmp12, i32 ptrtoint (i32* @__op_param1 to i32)		; <i8*> [#uses=1]
	%tmp34 = bitcast i8* %tmp3 to i32*		; <i32*> [#uses=1]
	%tmp5 = load i32* %tmp34		; <i32> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 5		; <i32*> [#uses=1]
	store i32 %tmp5, i32* %tmp7
	ret void
}

define void @op_vfp_setreg_F0d() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 6		; <i64*> [#uses=1]
	%tmp3 = load i64* %tmp2		; <i64> [#uses=1]
	%tmp45 = bitcast %struct.CPUARMState* %tmp to i8*		; <i8*> [#uses=1]
	%tmp6 = getelementptr i8* %tmp45, i32 ptrtoint (i32* @__op_param1 to i32)		; <i8*> [#uses=1]
	%tmp67 = bitcast i8* %tmp6 to i64*		; <i64*> [#uses=1]
	store i64 %tmp3, i64* %tmp67
	ret void
}

define void @op_vfp_setreg_F0s() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 4		; <i32*> [#uses=1]
	%tmp3 = load i32* %tmp2		; <i32> [#uses=1]
	%tmp45 = bitcast %struct.CPUARMState* %tmp to i8*		; <i8*> [#uses=1]
	%tmp6 = getelementptr i8* %tmp45, i32 ptrtoint (i32* @__op_param1 to i32)		; <i8*> [#uses=1]
	%tmp67 = bitcast i8* %tmp6 to i32*		; <i32*> [#uses=1]
	store i32 %tmp3, i32* %tmp67
	ret void
}

define void @op_vfp_movl_T0_fpscr() {
entry:
	tail call void @do_vfp_get_fpscr( )
	ret void
}

declare void @do_vfp_get_fpscr()

define void @op_vfp_movl_T0_fpscr_flags() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 1, i32 1		; <i32*> [#uses=1]
	%tmp4 = load i32* %tmp3		; <i32> [#uses=1]
	%tmp5 = and i32 %tmp4, -268435456		; <i32> [#uses=1]
	store i32 %tmp5, i32* @T0
	ret void
}

define void @op_vfp_movl_fpscr_T0() {
entry:
	tail call void @do_vfp_set_fpscr( )
	ret void
}

declare void @do_vfp_set_fpscr()

define void @op_vfp_movl_T0_xreg() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 1, i32 ptrtoint (i32* @__op_param1 to i32)		; <i32*> [#uses=1]
	%tmp4 = load i32* %tmp3		; <i32> [#uses=1]
	store i32 %tmp4, i32* @T0
	ret void
}

define void @op_vfp_movl_xreg_T0() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = load i32* @T0		; <i32> [#uses=1]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 1, i32 ptrtoint (i32* @__op_param1 to i32)		; <i32*> [#uses=1]
	store i32 %tmp1, i32* %tmp4
	ret void
}

define void @op_vfp_mrs() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp3 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=1]
	%tmp4 = load i32* %tmp3		; <i32> [#uses=1]
	store i32 %tmp4, i32* @T0
	ret void
}

define void @op_vfp_msr() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = load i32* @T0		; <i32> [#uses=1]
	%tmp10 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=1]
	store i32 %tmp2, i32* %tmp10
	ret void
}

define void @op_vfp_mrrd() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp2 = getelementptr %struct.CPUARMState* %tmp, i32 0, i32 20, i32 6		; <i64*> [#uses=1]
	%tmp3 = load i64* %tmp2		; <i64> [#uses=2]
	%tmp817 = trunc i64 %tmp3 to i32		; <i32> [#uses=1]
	store i32 %tmp817, i32* @T0
	%tmp1214 = lshr i64 %tmp3, 32		; <i64> [#uses=1]
	%tmp1215 = trunc i64 %tmp1214 to i32		; <i32> [#uses=1]
	store i32 %tmp1215, i32* @T1
	ret void
}

define void @op_vfp_mdrr() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp18 = zext i32 %tmp to i64		; <i64> [#uses=1]
	%tmp4 = load i32* @T1		; <i32> [#uses=1]
	%tmp415 = zext i32 %tmp4 to i64		; <i64> [#uses=1]
	%tmp41516 = shl i64 %tmp415, 32		; <i64> [#uses=1]
	%tmp41516.ins = or i64 %tmp41516, %tmp18		; <i64> [#uses=1]
	%tmp8 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp13 = getelementptr %struct.CPUARMState* %tmp8, i32 0, i32 20, i32 6		; <i64*> [#uses=1]
	store i64 %tmp41516.ins, i64* %tmp13
	ret void
}

define void @op_signbit_T1_T0() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = ashr i32 %tmp, 31		; <i32> [#uses=1]
	store i32 %tmp1, i32* @T1
	ret void
}

define void @op_movl_cp15_T0() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	tail call void @helper_set_cp15( %struct.CPUARMState* %tmp1, i32 ptrtoint (i32* @__op_param1 to i32), i32 %tmp )
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

declare void @helper_set_cp15(%struct.CPUARMState*, i32, i32)

define void @op_movl_T0_cp15() {
entry:
	%tmp = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=1]
	%tmp1 = tail call i32 @helper_get_cp15( %struct.CPUARMState* %tmp, i32 ptrtoint (i32* @__op_param1 to i32) )		; <i32> [#uses=1]
	store i32 %tmp1, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

declare i32 @helper_get_cp15(%struct.CPUARMState*, i32)

define void @op_movl_T0_user() {
entry:
	%tmp3 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=5]
	br i1 icmp ne (i8 zext (i1 icmp eq (i32 ptrtoint (i32* @__op_param1 to i32), i32 13) to i8), i8 0), label %cond_true, label %cond_false

cond_true:		; preds = %entry
	%tmp5 = getelementptr %struct.CPUARMState* %tmp3, i32 0, i32 4, i32 0		; <i32*> [#uses=1]
	%tmp6 = load i32* %tmp5		; <i32> [#uses=1]
	store i32 %tmp6, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false:		; preds = %entry
	br i1 icmp ne (i8 zext (i1 icmp eq (i32 ptrtoint (i32* @__op_param1 to i32), i32 14) to i8), i8 0), label %cond_true11, label %cond_false17

cond_true11:		; preds = %cond_false
	%tmp15 = getelementptr %struct.CPUARMState* %tmp3, i32 0, i32 5, i32 0		; <i32*> [#uses=1]
	%tmp16 = load i32* %tmp15		; <i32> [#uses=1]
	store i32 %tmp16, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false17:		; preds = %cond_false
	%tmp19 = getelementptr %struct.CPUARMState* %tmp3, i32 0, i32 1		; <i32*> [#uses=1]
	%tmp20 = load i32* %tmp19		; <i32> [#uses=1]
	%tmp21 = and i32 %tmp20, 31		; <i32> [#uses=1]
	%tmp22 = icmp eq i32 %tmp21, 17		; <i1> [#uses=1]
	br i1 %tmp22, label %cond_true25, label %cond_false32

cond_true25:		; preds = %cond_false17
	%tmp30 = getelementptr %struct.CPUARMState* %tmp3, i32 0, i32 6, i32 sub (i32 ptrtoint (i32* @__op_param1 to i32), i32 8)		; <i32*> [#uses=1]
	%tmp31 = load i32* %tmp30		; <i32> [#uses=1]
	store i32 %tmp31, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false32:		; preds = %cond_false17
	%tmp36 = getelementptr %struct.CPUARMState* %tmp3, i32 0, i32 0, i32 ptrtoint (i32* @__op_param1 to i32)		; <i32*> [#uses=1]
	%tmp37 = load i32* %tmp36		; <i32> [#uses=1]
	store i32 %tmp37, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_movl_user_T0() {
entry:
	%tmp3 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=5]
	br i1 icmp ne (i8 zext (i1 icmp eq (i32 ptrtoint (i32* @__op_param1 to i32), i32 13) to i8), i8 0), label %cond_true, label %cond_false

cond_true:		; preds = %entry
	%tmp4 = load i32* @T0		; <i32> [#uses=1]
	%tmp6 = getelementptr %struct.CPUARMState* %tmp3, i32 0, i32 4, i32 0		; <i32*> [#uses=1]
	store i32 %tmp4, i32* %tmp6
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false:		; preds = %entry
	br i1 icmp ne (i8 zext (i1 icmp eq (i32 ptrtoint (i32* @__op_param1 to i32), i32 14) to i8), i8 0), label %cond_true11, label %cond_false17

cond_true11:		; preds = %cond_false
	%tmp14 = load i32* @T0		; <i32> [#uses=1]
	%tmp16 = getelementptr %struct.CPUARMState* %tmp3, i32 0, i32 5, i32 0		; <i32*> [#uses=1]
	store i32 %tmp14, i32* %tmp16
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false17:		; preds = %cond_false
	%tmp19 = getelementptr %struct.CPUARMState* %tmp3, i32 0, i32 1		; <i32*> [#uses=1]
	%tmp20 = load i32* %tmp19		; <i32> [#uses=1]
	%tmp21 = and i32 %tmp20, 31		; <i32> [#uses=1]
	%tmp22 = icmp eq i32 %tmp21, 17		; <i1> [#uses=1]
	%tmp29 = load i32* @T0		; <i32> [#uses=2]
	br i1 %tmp22, label %cond_true25, label %cond_false32

cond_true25:		; preds = %cond_false17
	%tmp31 = getelementptr %struct.CPUARMState* %tmp3, i32 0, i32 6, i32 sub (i32 ptrtoint (i32* @__op_param1 to i32), i32 8)		; <i32*> [#uses=1]
	store i32 %tmp29, i32* %tmp31
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void

cond_false32:		; preds = %cond_false17
	%tmp37 = getelementptr %struct.CPUARMState* %tmp3, i32 0, i32 0, i32 ptrtoint (i32* @__op_param1 to i32)		; <i32*> [#uses=1]
	store i32 %tmp29, i32* %tmp37
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_movl_T2_T0() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	store i32 %tmp, i32* @T2
	ret void
}

define void @op_movl_T0_T2() {
entry:
	%tmp = load i32* @T2		; <i32> [#uses=1]
	store i32 %tmp, i32* @T0
	ret void
}

define void @op_vfp_touis() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=2]
	%tmp8 = load i32* %tmp7		; <i32> [#uses=1]
	%tmp9 = tail call i32 @float32_to_uint32( i32 %tmp8, %struct.float_status* %tmp4 )		; <i32> [#uses=1]
	store i32 %tmp9, i32* %tmp7
	ret void
}

declare i32 @float32_to_uint32(i32, %struct.float_status*)

define void @op_vfp_touid() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 6		; <i64*> [#uses=1]
	%tmp8 = load i64* %tmp7		; <i64> [#uses=1]
	%tmp9 = tail call i32 @float64_to_uint32( i64 %tmp8, %struct.float_status* %tmp4 )		; <i32> [#uses=1]
	%tmp17 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=1]
	store i32 %tmp9, i32* %tmp17
	ret void
}

declare i32 @float64_to_uint32(i64, %struct.float_status*)

define void @op_vfp_tosis() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=2]
	%tmp8 = load i32* %tmp7		; <i32> [#uses=1]
	%tmp9 = tail call i32 @float32_to_int32( i32 %tmp8, %struct.float_status* %tmp4 )		; <i32> [#uses=1]
	store i32 %tmp9, i32* %tmp7
	ret void
}

declare i32 @float32_to_int32(i32, %struct.float_status*)

define void @op_vfp_tosid() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 6		; <i64*> [#uses=1]
	%tmp8 = load i64* %tmp7		; <i64> [#uses=1]
	%tmp9 = tail call i32 @float64_to_int32( i64 %tmp8, %struct.float_status* %tmp4 )		; <i32> [#uses=1]
	%tmp17 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=1]
	store i32 %tmp9, i32* %tmp17
	ret void
}

declare i32 @float64_to_int32(i64, %struct.float_status*)

define void @op_vfp_touizs() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=2]
	%tmp8 = load i32* %tmp7		; <i32> [#uses=1]
	%tmp9 = tail call i32 @float32_to_uint32_round_to_zero( i32 %tmp8, %struct.float_status* %tmp4 )		; <i32> [#uses=1]
	store i32 %tmp9, i32* %tmp7
	ret void
}

declare i32 @float32_to_uint32_round_to_zero(i32, %struct.float_status*)

define void @op_vfp_touizd() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 6		; <i64*> [#uses=1]
	%tmp8 = load i64* %tmp7		; <i64> [#uses=1]
	%tmp9 = tail call i32 @float64_to_uint32_round_to_zero( i64 %tmp8, %struct.float_status* %tmp4 )		; <i32> [#uses=1]
	%tmp17 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=1]
	store i32 %tmp9, i32* %tmp17
	ret void
}

declare i32 @float64_to_uint32_round_to_zero(i64, %struct.float_status*)

define void @op_vfp_tosizs() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=2]
	%tmp8 = load i32* %tmp7		; <i32> [#uses=1]
	%tmp9 = tail call i32 @float32_to_int32_round_to_zero( i32 %tmp8, %struct.float_status* %tmp4 )		; <i32> [#uses=1]
	store i32 %tmp9, i32* %tmp7
	ret void
}

declare i32 @float32_to_int32_round_to_zero(i32, %struct.float_status*)

define void @op_vfp_tosizd() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 6		; <i64*> [#uses=1]
	%tmp8 = load i64* %tmp7		; <i64> [#uses=1]
	%tmp9 = tail call i32 @float64_to_int32_round_to_zero( i64 %tmp8, %struct.float_status* %tmp4 )		; <i32> [#uses=1]
	%tmp17 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=1]
	store i32 %tmp9, i32* %tmp17
	ret void
}

declare i32 @float64_to_int32_round_to_zero(i64, %struct.float_status*)

define void @op_vfp_uitos() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=2]
	%tmp8 = load i32* %tmp7		; <i32> [#uses=1]
	%tmp16 = tail call i32 @uint32_to_float32( i32 %tmp8, %struct.float_status* %tmp4 )		; <i32> [#uses=1]
	store i32 %tmp16, i32* %tmp7
	ret void
}

declare i32 @uint32_to_float32(i32, %struct.float_status*)

define void @op_vfp_uitod() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=1]
	%tmp8 = load i32* %tmp7		; <i32> [#uses=1]
	%tmp16 = tail call i64 @uint32_to_float64( i32 %tmp8, %struct.float_status* %tmp4 )		; <i64> [#uses=1]
	%tmp18 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 6		; <i64*> [#uses=1]
	store i64 %tmp16, i64* %tmp18
	ret void
}

declare i64 @uint32_to_float64(i32, %struct.float_status*)

define void @op_vfp_sitos() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=2]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=2]
	%tmp8 = load i32* %tmp7		; <i32> [#uses=1]
	%tmp16 = tail call i32 @int32_to_float32( i32 %tmp8, %struct.float_status* %tmp4 )		; <i32> [#uses=1]
	store i32 %tmp16, i32* %tmp7
	ret void
}

declare i32 @int32_to_float32(i32, %struct.float_status*)

define void @op_vfp_sitod() {
entry:
	%tmp1 = load %struct.CPUARMState** @env		; <%struct.CPUARMState*> [#uses=3]
	%tmp4 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 8		; <%struct.float_status*> [#uses=1]
	%tmp7 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 4		; <i32*> [#uses=1]
	%tmp8 = load i32* %tmp7		; <i32> [#uses=1]
	%tmp16 = tail call i64 @int32_to_float64( i32 %tmp8, %struct.float_status* %tmp4 )		; <i64> [#uses=1]
	%tmp18 = getelementptr %struct.CPUARMState* %tmp1, i32 0, i32 20, i32 6		; <i64*> [#uses=1]
	store i64 %tmp16, i64* %tmp18
	ret void
}

declare i64 @int32_to_float64(i32, %struct.float_status*)

define void @op_stl_raw() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp45 = inttoptr i32 %tmp1 to i32*		; <i32*> [#uses=1]
	store i32 %tmp, i32* %tmp45
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_ldl_raw() {
entry:
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp45 = inttoptr i32 %tmp1 to i32*		; <i32*> [#uses=1]
	%tmp6 = load i32* %tmp45		; <i32> [#uses=1]
	store i32 %tmp6, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_ldub_raw() {
entry:
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp12 = inttoptr i32 %tmp1 to i8*		; <i8*> [#uses=1]
	%tmp5 = load i8* %tmp12		; <i8> [#uses=1]
	%tmp56 = zext i8 %tmp5 to i32		; <i32> [#uses=1]
	store i32 %tmp56, i32* @T0
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}

define void @op_stb_raw() {
entry:
	%tmp = load i32* @T0		; <i32> [#uses=1]
	%tmp1 = load i32* @T1		; <i32> [#uses=1]
	%tmp12 = inttoptr i32 %tmp1 to i8*		; <i8*> [#uses=1]
	%tmp34 = trunc i32 %tmp to i8		; <i8> [#uses=1]
	store i8 %tmp34, i8* %tmp12
	tail call void asm sideeffect "", "~{dirflag},~{fpsr},~{flags},~{memory}"( )
	ret void
}
