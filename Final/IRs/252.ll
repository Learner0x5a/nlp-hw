; ModuleID = 'src/252.src'
source_filename = "src/252.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture %a, double* nocapture readonly %b, double* nocapture readonly %c, double* nocapture readonly %d, i32 %e, i32 %f, i32 %g, i32 %h, i32 %i, i32 %j) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %o = alloca [5 x [5 x double]], align 16
  %p = alloca [5 x [5 x double]], align 16
  %q = alloca [5 x [5 x double]], align 16
  %r = alloca [5 x [5 x double]], align 16
  %z = alloca [5 x [5 x double]], align 16
  %aa = alloca [5 x double], align 16
  %0 = bitcast [5 x [5 x double]]* %o to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %0) #4
  %1 = bitcast [5 x [5 x double]]* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %1) #4
  %2 = bitcast [5 x [5 x double]]* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %2) #4
  %3 = bitcast [5 x [5 x double]]* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %3) #4
  %4 = bitcast [5 x [5 x double]]* %z to i8*
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %4) #4
  %5 = bitcast [5 x double]* %aa to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %5) #4
  %call = tail call i64 @_Z13get_global_idj(i32 1) #5
  %6 = trunc i64 %call to i32
  %7 = add i32 %i, 1
  %conv2 = add i32 %7, %6
  %call3 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %8 = trunc i64 %call3 to i32
  %9 = add i32 %j, 1
  %conv7 = add i32 %9, %8
  %conv83488 = zext i32 %h to i64
  %sub = sub i64 %conv83488, %call
  %sub11 = sub i64 %sub, %call3
  %10 = trunc i64 %sub11 to i32
  %11 = sub i32 %10, %i
  %12 = sub i32 %11, %j
  %conv17 = add i32 %12, 1
  %sub18 = add nsw i32 %e, -1
  %cmp = icmp slt i32 %conv2, %sub18
  br i1 %cmp, label %lor.lhs.false, label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sub20 = add nsw i32 %f, -1
  %cmp21 = icmp slt i32 %conv7, %sub20
  %cmp24 = icmp sgt i32 %conv17, 0
  %or.cond.not = and i1 %cmp21, %cmp24
  %sub27 = add nsw i32 %g, -1
  %cmp28 = icmp slt i32 %conv17, %sub27
  %or.cond3489 = and i1 %cmp28, %or.cond.not
  br i1 %or.cond3489, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %13 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %14 = bitcast double* %b to [13 x [13 x [5 x double]]]*
  %15 = bitcast double* %c to [13 x [13 x double]]*
  %16 = bitcast double* %d to [13 x [13 x double]]*
  %idxprom = sext i32 %conv2 to i64
  %idxprom30 = sext i32 %conv7 to i64
  %idxprom323493 = zext i32 %conv17 to i64
  %arrayidx33 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %16, i64 %idxprom, i64 %idxprom30, i64 %idxprom323493
  %17 = load double, double* %arrayidx33, align 8, !tbaa !7
  %mul = fmul double %17, %17
  %mul34 = fmul double %17, %mul
  %arrayidx36 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 0, i64 0
  store double 3.035000e+02, double* %arrayidx36, align 16, !tbaa !7
  %arrayidx38 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %arrayidx38, align 8, !tbaa !7
  %arrayidx40 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %arrayidx40, align 16, !tbaa !7
  %arrayidx42 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %arrayidx42, align 8, !tbaa !7
  %arrayidx44 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx44, align 16, !tbaa !7
  %mul48 = fmul double %mul, 1.000000e-01
  %arrayidx55 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom323493, i64 1
  %18 = load double, double* %arrayidx55, align 8, !tbaa !7
  %mul56 = fmul double %mul48, %18
  %mul57 = fmul double %mul56, 0xC079355555555555
  %arrayidx59 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 0, i64 1
  store double %mul57, double* %arrayidx59, align 8, !tbaa !7
  %mul61 = fmul double %17, 1.000000e-01
  %19 = tail call double @llvm.fmuladd.f64(double %mul61, double 0x4079355555555555, double 1.000000e+00)
  %add65 = fadd double %19, 3.025000e+02
  %arrayidx67 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 1, i64 1
  store double %add65, double* %arrayidx67, align 8, !tbaa !7
  %arrayidx69 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 2, i64 1
  store double 0.000000e+00, double* %arrayidx69, align 8, !tbaa !7
  %arrayidx71 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 3, i64 1
  store double 0.000000e+00, double* %arrayidx71, align 8, !tbaa !7
  %arrayidx73 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %arrayidx73, align 8, !tbaa !7
  %arrayidx84 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom323493, i64 2
  %20 = load double, double* %arrayidx84, align 8, !tbaa !7
  %mul85 = fmul double %mul48, %20
  %mul86 = fmul double %mul85, 0xC079355555555555
  %arrayidx88 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 0, i64 2
  store double %mul86, double* %arrayidx88, align 16, !tbaa !7
  %arrayidx90 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 1, i64 2
  store double 0.000000e+00, double* %arrayidx90, align 8, !tbaa !7
  %arrayidx98 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 2, i64 2
  store double %add65, double* %arrayidx98, align 16, !tbaa !7
  %arrayidx100 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 3, i64 2
  store double 0.000000e+00, double* %arrayidx100, align 8, !tbaa !7
  %arrayidx102 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %arrayidx102, align 16, !tbaa !7
  %arrayidx112 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom323493, i64 3
  %21 = load double, double* %arrayidx112, align 8, !tbaa !7
  %mul113 = fmul double %mul48, %21
  %mul114 = fmul double %mul113, 0xC079355555555555
  %arrayidx116 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 0, i64 3
  store double %mul114, double* %arrayidx116, align 8, !tbaa !7
  %arrayidx118 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 1, i64 3
  store double 0.000000e+00, double* %arrayidx118, align 8, !tbaa !7
  %arrayidx120 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 2, i64 3
  store double 0.000000e+00, double* %arrayidx120, align 8, !tbaa !7
  %arrayidx127 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 3, i64 3
  store double %add65, double* %arrayidx127, align 8, !tbaa !7
  %arrayidx129 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %arrayidx129, align 8, !tbaa !7
  %mul150 = fmul double %18, %18
  %mul173 = fmul double %20, %20
  %mul174 = fmul double %mul173, 0xC03ED08DFEA27981
  %22 = tail call double @llvm.fmuladd.f64(double %mul150, double 0xC03ED08DFEA27981, double %mul174)
  %mul196 = fmul double %21, %21
  %23 = tail call double @llvm.fmuladd.f64(double %mul196, double 0xC03ED08DFEA27981, double %22)
  %mul200 = fmul double %mul, 7.114800e+01
  %arrayidx207 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom323493, i64 4
  %24 = load double, double* %arrayidx207, align 8, !tbaa !7
  %mul208 = fmul double %mul200, %24
  %25 = tail call double @llvm.fmuladd.f64(double %23, double %mul34, double %mul208)
  %mul209 = fsub double -0.000000e+00, %25
  %arrayidx211 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 0, i64 4
  store double %mul209, double* %arrayidx211, align 16, !tbaa !7
  %mul220 = fmul double %mul, 0xC03ED08DFEA27981
  %mul228 = fmul double %mul220, %18
  %arrayidx230 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 1, i64 4
  store double %mul228, double* %arrayidx230, align 8, !tbaa !7
  %mul247 = fmul double %mul220, %20
  %arrayidx249 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 2, i64 4
  store double %mul247, double* %arrayidx249, align 16, !tbaa !7
  %mul266 = fmul double %mul220, %21
  %arrayidx268 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 3, i64 4
  store double %mul266, double* %arrayidx268, align 8, !tbaa !7
  %26 = tail call double @llvm.fmuladd.f64(double %17, double 7.114800e+01, double 1.000000e+00)
  %add271 = fadd double %26, 3.025000e+02
  %arrayidx273 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 4, i64 4
  store double %add271, double* %arrayidx273, align 16, !tbaa !7
  %add278 = add nuw nsw i32 %12, 2
  %idxprom279 = sext i32 %add278 to i64
  %arrayidx280 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %16, i64 %idxprom, i64 %idxprom30, i64 %idxprom279
  %27 = load double, double* %arrayidx280, align 8, !tbaa !7
  %mul281 = fmul double %27, %27
  %mul282 = fmul double %27, %mul281
  %arrayidx284 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 0, i64 0
  store double -4.537500e+01, double* %arrayidx284, align 16, !tbaa !7
  %arrayidx286 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 1, i64 0
  store double 2.750000e+00, double* %arrayidx286, align 8, !tbaa !7
  %arrayidx288 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %arrayidx288, align 16, !tbaa !7
  %arrayidx290 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %arrayidx290, align 8, !tbaa !7
  %arrayidx292 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx292, align 16, !tbaa !7
  %arrayidx300 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom279, i64 1
  %28 = load double, double* %arrayidx300, align 8, !tbaa !7
  %mul301 = fmul double %27, %28
  %fneg = fneg double %mul301
  %arrayidx318 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %15, i64 %idxprom, i64 %idxprom30, i64 %idxprom279
  %29 = load double, double* %arrayidx318, align 8, !tbaa !7
  %mul319 = fmul double %29, 4.000000e-01
  %mul320 = fmul double %27, %mul319
  %30 = tail call double @llvm.fmuladd.f64(double %fneg, double %mul301, double %mul320)
  %mul324 = fmul double %mul281, 0xBFC1111111111111
  %mul333 = fmul double %mul324, %28
  %neg335 = fmul double %mul333, -6.050000e+01
  %31 = tail call double @llvm.fmuladd.f64(double %30, double 2.750000e+00, double %neg335)
  %arrayidx337 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 0, i64 1
  store double %31, double* %arrayidx337, align 8, !tbaa !7
  %mul347 = fmul double %mul301, 1.600000e+00
  %mul350 = fmul double %27, 0x3FC1111111111111
  %neg352 = fmul double %mul350, -6.050000e+01
  %32 = tail call double @llvm.fmuladd.f64(double %mul347, double 2.750000e+00, double %neg352)
  %sub353 = fadd double %32, -4.537500e+01
  %arrayidx355 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 1, i64 1
  store double %sub353, double* %arrayidx355, align 8, !tbaa !7
  %arrayidx363 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom279, i64 2
  %33 = load double, double* %arrayidx363, align 8, !tbaa !7
  %mul364 = fmul double %27, %33
  %mul365 = fmul double %mul364, -4.000000e-01
  %mul366 = fmul double %mul365, 2.750000e+00
  %arrayidx368 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 2, i64 1
  store double %mul366, double* %arrayidx368, align 8, !tbaa !7
  %arrayidx376 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom279, i64 3
  %34 = load double, double* %arrayidx376, align 8, !tbaa !7
  %mul377 = fmul double %27, %34
  %mul378 = fmul double %mul377, -4.000000e-01
  %mul379 = fmul double %mul378, 2.750000e+00
  %arrayidx381 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 3, i64 1
  store double %mul379, double* %arrayidx381, align 8, !tbaa !7
  %arrayidx383 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 4, i64 1
  store double 1.100000e+00, double* %arrayidx383, align 8, !tbaa !7
  %35 = fneg double %28
  %fneg401 = fmul double %33, %35
  %mul402 = fmul double %mul281, %fneg401
  %mul405 = fmul double %mul281, -1.000000e-01
  %mul414 = fmul double %mul405, %33
  %neg416 = fmul double %mul414, -6.050000e+01
  %36 = tail call double @llvm.fmuladd.f64(double %mul402, double 2.750000e+00, double %neg416)
  %arrayidx418 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 0, i64 2
  store double %36, double* %arrayidx418, align 16, !tbaa !7
  %mul428 = fmul double %mul364, 2.750000e+00
  %arrayidx430 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 1, i64 2
  store double %mul428, double* %arrayidx430, align 8, !tbaa !7
  %mul441 = fmul double %27, 1.000000e-01
  %neg443 = fmul double %mul441, -6.050000e+01
  %37 = tail call double @llvm.fmuladd.f64(double %mul301, double 2.750000e+00, double %neg443)
  %sub444 = fadd double %37, -4.537500e+01
  %arrayidx446 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 2, i64 2
  store double %sub444, double* %arrayidx446, align 16, !tbaa !7
  %arrayidx448 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 3, i64 2
  store double 0.000000e+00, double* %arrayidx448, align 8, !tbaa !7
  %arrayidx450 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %arrayidx450, align 16, !tbaa !7
  %fneg468 = fmul double %34, %35
  %mul469 = fmul double %mul281, %fneg468
  %mul481 = fmul double %mul405, %34
  %neg483 = fmul double %mul481, -6.050000e+01
  %38 = tail call double @llvm.fmuladd.f64(double %mul469, double 2.750000e+00, double %neg483)
  %arrayidx485 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 0, i64 3
  store double %38, double* %arrayidx485, align 8, !tbaa !7
  %mul495 = fmul double %mul377, 2.750000e+00
  %arrayidx497 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 1, i64 3
  store double %mul495, double* %arrayidx497, align 8, !tbaa !7
  %arrayidx499 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 2, i64 3
  store double 0.000000e+00, double* %arrayidx499, align 8, !tbaa !7
  %arrayidx515 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 3, i64 3
  store double %sub444, double* %arrayidx515, align 8, !tbaa !7
  %arrayidx517 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %arrayidx517, align 8, !tbaa !7
  %arrayidx533 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom279, i64 4
  %39 = load double, double* %arrayidx533, align 8, !tbaa !7
  %neg535 = fmul double %39, -1.400000e+00
  %40 = tail call double @llvm.fmuladd.f64(double %29, double 8.000000e-01, double %neg535)
  %mul544 = fmul double %mul281, %28
  %mul545 = fmul double %mul544, %40
  %mul550 = fmul double %mul282, 0x3FB00AEC33E1F670
  %mul567 = fmul double %28, %28
  %mul570 = fmul double %mul282, 0xBFB89374BC6A7EF8
  %mul587 = fmul double %33, %33
  %41 = fneg double %mul570
  %neg589 = fmul double %mul587, %41
  %42 = tail call double @llvm.fmuladd.f64(double %mul550, double %mul567, double %neg589)
  %mul608 = fmul double %34, %34
  %neg610 = fsub double -0.000000e+00, %mul570
  %43 = tail call double @llvm.fmuladd.f64(double %neg610, double %mul608, double %42)
  %neg621 = fmul double %mul281, 0xBFC916872B020C49
  %44 = tail call double @llvm.fmuladd.f64(double %neg621, double %39, double %43)
  %neg623 = fmul double %44, -6.050000e+01
  %45 = tail call double @llvm.fmuladd.f64(double %mul545, double 2.750000e+00, double %neg623)
  %arrayidx625 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 0, i64 4
  store double %45, double* %arrayidx625, align 16, !tbaa !7
  %mul634 = fmul double %27, %39
  %mul661 = fmul double %27, %29
  %46 = tail call double @llvm.fmuladd.f64(double %mul567, double %mul281, double %mul661)
  %neg663 = fmul double %46, -4.000000e-01
  %47 = tail call double @llvm.fmuladd.f64(double %mul634, double 1.400000e+00, double %neg663)
  %48 = fmul double %mul281, 0x400E54A6921735EC
  %neg678 = fmul double %48, %28
  %49 = tail call double @llvm.fmuladd.f64(double %47, double 2.750000e+00, double %neg678)
  %arrayidx680 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 1, i64 4
  store double %49, double* %arrayidx680, align 8, !tbaa !7
  %mul697 = fmul double %28, %33
  %mul698 = fmul double %mul697, -4.000000e-01
  %mul699 = fmul double %mul281, %mul698
  %50 = fmul double %mul281, 0x40173B645A1CAC06
  %neg713 = fmul double %50, %33
  %51 = tail call double @llvm.fmuladd.f64(double %mul699, double 2.750000e+00, double %neg713)
  %arrayidx715 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 2, i64 4
  store double %51, double* %arrayidx715, align 16, !tbaa !7
  %mul732 = fmul double %28, %34
  %mul733 = fmul double %mul732, -4.000000e-01
  %mul734 = fmul double %mul281, %mul733
  %neg748 = fmul double %50, %34
  %52 = tail call double @llvm.fmuladd.f64(double %mul734, double 2.750000e+00, double %neg748)
  %arrayidx750 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 3, i64 4
  store double %52, double* %arrayidx750, align 8, !tbaa !7
  %mul760 = fmul double %mul301, 1.400000e+00
  %neg764 = fmul double %27, 0xC027B74BC6A7EF9D
  %53 = tail call double @llvm.fmuladd.f64(double %mul760, double 2.750000e+00, double %neg764)
  %sub765 = fadd double %53, -4.537500e+01
  %arrayidx767 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 4, i64 4
  store double %sub765, double* %arrayidx767, align 16, !tbaa !7
  %add770 = add nsw i32 %conv7, 1
  %idxprom771 = sext i32 %add770 to i64
  %arrayidx774 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %16, i64 %idxprom, i64 %idxprom771, i64 %idxprom323493
  %54 = load double, double* %arrayidx774, align 8, !tbaa !7
  %mul775 = fmul double %54, %54
  %mul776 = fmul double %54, %mul775
  %arrayidx778 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 0, i64 0
  store double -4.537500e+01, double* %arrayidx778, align 16, !tbaa !7
  %arrayidx780 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %arrayidx780, align 8, !tbaa !7
  %arrayidx782 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 2, i64 0
  store double 2.750000e+00, double* %arrayidx782, align 16, !tbaa !7
  %arrayidx784 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %arrayidx784, align 8, !tbaa !7
  %arrayidx786 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx786, align 16, !tbaa !7
  %arrayidx794 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom771, i64 %idxprom323493, i64 1
  %55 = load double, double* %arrayidx794, align 8, !tbaa !7
  %arrayidx802 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom771, i64 %idxprom323493, i64 2
  %56 = load double, double* %arrayidx802, align 8, !tbaa !7
  %57 = fneg double %55
  %fneg804 = fmul double %56, %57
  %mul805 = fmul double %mul775, %fneg804
  %mul808 = fmul double %mul775, -1.000000e-01
  %mul817 = fmul double %mul808, %55
  %neg819 = fmul double %mul817, -6.050000e+01
  %58 = tail call double @llvm.fmuladd.f64(double %mul805, double 2.750000e+00, double %neg819)
  %arrayidx821 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 0, i64 1
  store double %58, double* %arrayidx821, align 8, !tbaa !7
  %mul830 = fmul double %54, %56
  %mul832 = fmul double %54, 1.000000e-01
  %neg834 = fmul double %mul832, -6.050000e+01
  %59 = tail call double @llvm.fmuladd.f64(double %mul830, double 2.750000e+00, double %neg834)
  %sub835 = fadd double %59, -4.537500e+01
  %arrayidx837 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 1, i64 1
  store double %sub835, double* %arrayidx837, align 8, !tbaa !7
  %mul846 = fmul double %54, %55
  %mul847 = fmul double %mul846, 2.750000e+00
  %arrayidx849 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 2, i64 1
  store double %mul847, double* %arrayidx849, align 8, !tbaa !7
  %arrayidx851 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 3, i64 1
  store double 0.000000e+00, double* %arrayidx851, align 8, !tbaa !7
  %arrayidx853 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %arrayidx853, align 8, !tbaa !7
  %fneg863 = fneg double %mul830
  %arrayidx880 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %15, i64 %idxprom, i64 %idxprom771, i64 %idxprom323493
  %60 = load double, double* %arrayidx880, align 8, !tbaa !7
  %mul881 = fmul double %54, %60
  %mul882 = fmul double %mul881, 4.000000e-01
  %61 = tail call double @llvm.fmuladd.f64(double %fneg863, double %mul830, double %mul882)
  %mul886 = fmul double %mul775, 0xBFC1111111111111
  %mul895 = fmul double %mul886, %56
  %neg897 = fmul double %mul895, -6.050000e+01
  %62 = tail call double @llvm.fmuladd.f64(double %61, double 2.750000e+00, double %neg897)
  %arrayidx899 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 0, i64 2
  store double %62, double* %arrayidx899, align 16, !tbaa !7
  %mul909 = fmul double %mul846, -4.000000e-01
  %mul910 = fmul double %mul909, 2.750000e+00
  %arrayidx912 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 1, i64 2
  store double %mul910, double* %arrayidx912, align 8, !tbaa !7
  %mul922 = fmul double %mul830, 1.600000e+00
  %mul925 = fmul double %54, 0x3FC1111111111111
  %neg927 = fmul double %mul925, -6.050000e+01
  %63 = tail call double @llvm.fmuladd.f64(double %mul922, double 2.750000e+00, double %neg927)
  %sub928 = fadd double %63, -4.537500e+01
  %arrayidx930 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 2, i64 2
  store double %sub928, double* %arrayidx930, align 16, !tbaa !7
  %arrayidx938 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom771, i64 %idxprom323493, i64 3
  %64 = load double, double* %arrayidx938, align 8, !tbaa !7
  %mul939 = fmul double %54, %64
  %mul940 = fmul double %mul939, -4.000000e-01
  %mul941 = fmul double %mul940, 2.750000e+00
  %arrayidx943 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 3, i64 2
  store double %mul941, double* %arrayidx943, align 8, !tbaa !7
  %arrayidx945 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 4, i64 2
  store double 1.100000e+00, double* %arrayidx945, align 16, !tbaa !7
  %65 = fneg double %56
  %fneg963 = fmul double %64, %65
  %mul964 = fmul double %mul775, %fneg963
  %mul976 = fmul double %mul808, %64
  %neg978 = fmul double %mul976, -6.050000e+01
  %66 = tail call double @llvm.fmuladd.f64(double %mul964, double 2.750000e+00, double %neg978)
  %arrayidx980 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 0, i64 3
  store double %66, double* %arrayidx980, align 8, !tbaa !7
  %arrayidx982 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 1, i64 3
  store double 0.000000e+00, double* %arrayidx982, align 8, !tbaa !7
  %mul992 = fmul double %mul939, 2.750000e+00
  %arrayidx994 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 2, i64 3
  store double %mul992, double* %arrayidx994, align 8, !tbaa !7
  %arrayidx1010 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 3, i64 3
  store double %sub835, double* %arrayidx1010, align 8, !tbaa !7
  %arrayidx1012 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %arrayidx1012, align 8, !tbaa !7
  %arrayidx1028 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom771, i64 %idxprom323493, i64 4
  %67 = load double, double* %arrayidx1028, align 8, !tbaa !7
  %neg1030 = fmul double %67, -1.400000e+00
  %68 = tail call double @llvm.fmuladd.f64(double %60, double 8.000000e-01, double %neg1030)
  %mul1039 = fmul double %mul775, %56
  %mul1040 = fmul double %mul1039, %68
  %mul1044 = fmul double %mul776, 0x3FB89374BC6A7EF8
  %mul1061 = fmul double %55, %55
  %mul1082 = fmul double %56, %56
  %69 = fmul double %mul776, 0x3FB00AEC33E1F670
  %neg1084 = fmul double %69, %mul1082
  %70 = tail call double @llvm.fmuladd.f64(double %mul1044, double %mul1061, double %neg1084)
  %mul1103 = fmul double %64, %64
  %71 = tail call double @llvm.fmuladd.f64(double %mul1044, double %mul1103, double %70)
  %neg1116 = fmul double %mul775, 0xBFC916872B020C49
  %72 = tail call double @llvm.fmuladd.f64(double %neg1116, double %67, double %71)
  %neg1118 = fmul double %72, -6.050000e+01
  %73 = tail call double @llvm.fmuladd.f64(double %mul1040, double 2.750000e+00, double %neg1118)
  %arrayidx1120 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 0, i64 4
  store double %73, double* %arrayidx1120, align 16, !tbaa !7
  %mul1137 = fmul double %55, %56
  %mul1138 = fmul double %mul1137, -4.000000e-01
  %mul1139 = fmul double %mul775, %mul1138
  %74 = fmul double %mul775, 0x40173B645A1CAC06
  %neg1153 = fmul double %74, %55
  %75 = tail call double @llvm.fmuladd.f64(double %mul1139, double 2.750000e+00, double %neg1153)
  %arrayidx1155 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 1, i64 4
  store double %75, double* %arrayidx1155, align 8, !tbaa !7
  %mul1164 = fmul double %54, %67
  %mul1191 = fmul double %mul775, %mul1082
  %76 = tail call double @llvm.fmuladd.f64(double %60, double %54, double %mul1191)
  %neg1193 = fmul double %76, -4.000000e-01
  %77 = tail call double @llvm.fmuladd.f64(double %mul1164, double 1.400000e+00, double %neg1193)
  %78 = fmul double %mul775, 0x400E54A6921735EC
  %neg1208 = fmul double %78, %56
  %79 = tail call double @llvm.fmuladd.f64(double %77, double 2.750000e+00, double %neg1208)
  %arrayidx1210 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 2, i64 4
  store double %79, double* %arrayidx1210, align 16, !tbaa !7
  %mul1227 = fmul double %56, %64
  %mul1228 = fmul double %mul1227, -4.000000e-01
  %mul1229 = fmul double %mul775, %mul1228
  %neg1243 = fmul double %74, %64
  %80 = tail call double @llvm.fmuladd.f64(double %mul1229, double 2.750000e+00, double %neg1243)
  %arrayidx1245 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 3, i64 4
  store double %80, double* %arrayidx1245, align 8, !tbaa !7
  %mul1255 = fmul double %mul830, 1.400000e+00
  %neg1259 = fmul double %54, 0xC027B74BC6A7EF9D
  %81 = tail call double @llvm.fmuladd.f64(double %mul1255, double 2.750000e+00, double %neg1259)
  %sub1260 = fadd double %81, -4.537500e+01
  %arrayidx1262 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 4, i64 4
  store double %sub1260, double* %arrayidx1262, align 16, !tbaa !7
  %add1263 = add nsw i32 %conv2, 1
  %idxprom1264 = sext i32 %add1263 to i64
  %arrayidx1269 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %16, i64 %idxprom1264, i64 %idxprom30, i64 %idxprom323493
  %82 = load double, double* %arrayidx1269, align 8, !tbaa !7
  %mul1270 = fmul double %82, %82
  %mul1271 = fmul double %82, %mul1270
  %arrayidx1273 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 0, i64 0
  store double -6.050000e+01, double* %arrayidx1273, align 16, !tbaa !7
  %arrayidx1275 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %arrayidx1275, align 8, !tbaa !7
  %arrayidx1277 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %arrayidx1277, align 16, !tbaa !7
  %arrayidx1279 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 3, i64 0
  store double 2.750000e+00, double* %arrayidx1279, align 8, !tbaa !7
  %arrayidx1281 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx1281, align 16, !tbaa !7
  %arrayidx1289 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom1264, i64 %idxprom30, i64 %idxprom323493, i64 1
  %83 = load double, double* %arrayidx1289, align 8, !tbaa !7
  %arrayidx1297 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom1264, i64 %idxprom30, i64 %idxprom323493, i64 3
  %84 = load double, double* %arrayidx1297, align 8, !tbaa !7
  %85 = fneg double %83
  %fneg1299 = fmul double %84, %85
  %mul1300 = fmul double %mul1270, %fneg1299
  %mul1303 = fmul double %mul1270, -1.000000e-01
  %mul1312 = fmul double %mul1303, %83
  %neg1314 = fmul double %mul1312, -6.050000e+01
  %86 = tail call double @llvm.fmuladd.f64(double %mul1300, double 2.750000e+00, double %neg1314)
  %arrayidx1316 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 0, i64 1
  store double %86, double* %arrayidx1316, align 8, !tbaa !7
  %mul1325 = fmul double %82, %84
  %neg1329 = fmul double %82, 0xC018333333333334
  %87 = tail call double @llvm.fmuladd.f64(double %mul1325, double 2.750000e+00, double %neg1329)
  %sub1330 = fadd double %87, -6.050000e+01
  %arrayidx1332 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 1, i64 1
  store double %sub1330, double* %arrayidx1332, align 8, !tbaa !7
  %arrayidx1334 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 2, i64 1
  store double 0.000000e+00, double* %arrayidx1334, align 8, !tbaa !7
  %mul1343 = fmul double %82, %83
  %mul1344 = fmul double %mul1343, 2.750000e+00
  %arrayidx1346 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 3, i64 1
  store double %mul1344, double* %arrayidx1346, align 8, !tbaa !7
  %arrayidx1348 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %arrayidx1348, align 8, !tbaa !7
  %arrayidx1356 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom1264, i64 %idxprom30, i64 %idxprom323493, i64 2
  %88 = load double, double* %arrayidx1356, align 8, !tbaa !7
  %89 = fneg double %88
  %fneg1366 = fmul double %84, %89
  %mul1367 = fmul double %mul1270, %fneg1366
  %mul1379 = fmul double %mul1303, %88
  %neg1381 = fmul double %mul1379, -6.050000e+01
  %90 = tail call double @llvm.fmuladd.f64(double %mul1367, double 2.750000e+00, double %neg1381)
  %arrayidx1383 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 0, i64 2
  store double %90, double* %arrayidx1383, align 16, !tbaa !7
  %arrayidx1385 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 1, i64 2
  store double 0.000000e+00, double* %arrayidx1385, align 8, !tbaa !7
  %mul1396 = fmul double %82, 1.000000e-01
  %neg1398 = fmul double %mul1396, -6.050000e+01
  %91 = tail call double @llvm.fmuladd.f64(double %mul1325, double 2.750000e+00, double %neg1398)
  %sub1399 = fadd double %91, -6.050000e+01
  %arrayidx1401 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 2, i64 2
  store double %sub1399, double* %arrayidx1401, align 16, !tbaa !7
  %mul1410 = fmul double %82, %88
  %mul1411 = fmul double %mul1410, 2.750000e+00
  %arrayidx1413 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 3, i64 2
  store double %mul1411, double* %arrayidx1413, align 8, !tbaa !7
  %arrayidx1415 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %arrayidx1415, align 16, !tbaa !7
  %fneg1425 = fneg double %mul1325
  %arrayidx1442 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %15, i64 %idxprom1264, i64 %idxprom30, i64 %idxprom323493
  %92 = load double, double* %arrayidx1442, align 8, !tbaa !7
  %mul1443 = fmul double %82, %92
  %mul1444 = fmul double %mul1443, 4.000000e-01
  %93 = tail call double @llvm.fmuladd.f64(double %fneg1425, double %mul1325, double %mul1444)
  %mul1448 = fmul double %mul1270, 0xBFC1111111111111
  %mul1457 = fmul double %mul1448, %84
  %neg1459 = fmul double %mul1457, -6.050000e+01
  %94 = tail call double @llvm.fmuladd.f64(double %93, double 2.750000e+00, double %neg1459)
  %arrayidx1461 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 0, i64 3
  store double %94, double* %arrayidx1461, align 8, !tbaa !7
  %mul1471 = fmul double %mul1343, -4.000000e-01
  %mul1472 = fmul double %mul1471, 2.750000e+00
  %arrayidx1474 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 1, i64 3
  store double %mul1472, double* %arrayidx1474, align 8, !tbaa !7
  %mul1484 = fmul double %mul1410, -4.000000e-01
  %mul1485 = fmul double %mul1484, 2.750000e+00
  %arrayidx1487 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 2, i64 3
  store double %mul1485, double* %arrayidx1487, align 8, !tbaa !7
  %mul1499 = fmul double %82, 0x3FC1111111111111
  %neg1501 = fmul double %mul1499, -6.050000e+01
  %95 = tail call double @llvm.fmuladd.f64(double %mul1325, double 4.400000e+00, double %neg1501)
  %sub1502 = fadd double %95, -6.050000e+01
  %arrayidx1504 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 3, i64 3
  store double %sub1502, double* %arrayidx1504, align 8, !tbaa !7
  %arrayidx1506 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 4, i64 3
  store double 1.100000e+00, double* %arrayidx1506, align 8, !tbaa !7
  %arrayidx1522 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom1264, i64 %idxprom30, i64 %idxprom323493, i64 4
  %96 = load double, double* %arrayidx1522, align 8, !tbaa !7
  %neg1524 = fmul double %96, -1.400000e+00
  %97 = tail call double @llvm.fmuladd.f64(double %92, double 8.000000e-01, double %neg1524)
  %mul1533 = fmul double %mul1270, %84
  %mul1534 = fmul double %mul1533, %97
  %mul1538 = fmul double %mul1271, 0x3FB89374BC6A7EF8
  %mul1555 = fmul double %83, %83
  %mul1575 = fmul double %88, %88
  %neg1577 = fmul double %mul1538, %mul1575
  %98 = tail call double @llvm.fmuladd.f64(double %mul1538, double %mul1555, double %neg1577)
  %mul1597 = fmul double %84, %84
  %neg1599 = fmul double %mul1271, 0x3FB00AEC33E1F670
  %99 = tail call double @llvm.fmuladd.f64(double %neg1599, double %mul1597, double %98)
  %neg1610 = fmul double %mul1270, 0xBFC916872B020C49
  %100 = tail call double @llvm.fmuladd.f64(double %neg1610, double %96, double %99)
  %neg1612 = fmul double %100, -6.050000e+01
  %101 = tail call double @llvm.fmuladd.f64(double %mul1534, double 2.750000e+00, double %neg1612)
  %arrayidx1614 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 0, i64 4
  store double %101, double* %arrayidx1614, align 16, !tbaa !7
  %mul1631 = fmul double %83, %84
  %mul1632 = fmul double %mul1631, -4.000000e-01
  %mul1633 = fmul double %mul1270, %mul1632
  %102 = fmul double %mul1270, 0x40173B645A1CAC06
  %neg1647 = fmul double %102, %83
  %103 = tail call double @llvm.fmuladd.f64(double %mul1633, double 2.750000e+00, double %neg1647)
  %arrayidx1649 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 1, i64 4
  store double %103, double* %arrayidx1649, align 8, !tbaa !7
  %mul1666 = fmul double %84, %88
  %mul1667 = fmul double %mul1666, -4.000000e-01
  %mul1668 = fmul double %mul1270, %mul1667
  %neg1682 = fmul double %102, %88
  %104 = tail call double @llvm.fmuladd.f64(double %mul1668, double 2.750000e+00, double %neg1682)
  %arrayidx1684 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 2, i64 4
  store double %104, double* %arrayidx1684, align 16, !tbaa !7
  %mul1693 = fmul double %82, %96
  %mul1720 = fmul double %mul1270, %mul1597
  %105 = tail call double @llvm.fmuladd.f64(double %92, double %82, double %mul1720)
  %neg1722 = fmul double %105, -4.000000e-01
  %106 = tail call double @llvm.fmuladd.f64(double %mul1693, double 1.400000e+00, double %neg1722)
  %107 = fmul double %mul1270, 0x400E54A6921735EC
  %neg1737 = fmul double %107, %84
  %108 = tail call double @llvm.fmuladd.f64(double %106, double 2.750000e+00, double %neg1737)
  %arrayidx1739 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 3, i64 4
  store double %108, double* %arrayidx1739, align 8, !tbaa !7
  %mul1749 = fmul double %mul1325, 1.400000e+00
  %neg1753 = fmul double %82, 0xC027B74BC6A7EF9D
  %109 = tail call double @llvm.fmuladd.f64(double %mul1749, double 2.750000e+00, double %neg1753)
  %sub1754 = fadd double %109, -6.050000e+01
  %arrayidx1756 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 4, i64 4
  store double %sub1754, double* %arrayidx1756, align 16, !tbaa !7
  %arrayidx1769 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom1264, i64 %idxprom30, i64 %idxprom323493, i64 0
  %110 = load double, double* %arrayidx1769, align 8, !tbaa !7
  %arrayidx1781 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom1264, i64 %idxprom30, i64 %idxprom323493, i64 1
  %111 = load double, double* %arrayidx1781, align 8, !tbaa !7
  %arrayidx1793 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom1264, i64 %idxprom30, i64 %idxprom323493, i64 2
  %112 = load double, double* %arrayidx1793, align 8, !tbaa !7
  %arrayidx1805 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom1264, i64 %idxprom30, i64 %idxprom323493, i64 3
  %113 = load double, double* %arrayidx1805, align 8, !tbaa !7
  %arrayidx1817 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom1264, i64 %idxprom30, i64 %idxprom323493, i64 4
  %114 = load double, double* %arrayidx1817, align 8, !tbaa !7
  %115 = load double, double* %arrayidx1273, align 16, !tbaa !7
  %116 = load double, double* %arrayidx1275, align 8, !tbaa !7
  %mul1782 = fmul double %116, %111
  %117 = tail call double @llvm.fmuladd.f64(double %115, double %110, double %mul1782)
  %118 = load double, double* %arrayidx1277, align 16, !tbaa !7
  %119 = tail call double @llvm.fmuladd.f64(double %118, double %112, double %117)
  %120 = load double, double* %arrayidx1279, align 8, !tbaa !7
  %121 = tail call double @llvm.fmuladd.f64(double %120, double %113, double %119)
  %122 = load double, double* %arrayidx1281, align 16, !tbaa !7
  %123 = tail call double @llvm.fmuladd.f64(double %122, double %114, double %121)
  %mul1819 = fmul double %123, 1.200000e+00
  %arrayidx1821 = getelementptr inbounds [5 x double], [5 x double]* %aa, i64 0, i64 0
  %124 = load double, double* %arrayidx1316, align 8, !tbaa !7
  %125 = load double, double* %arrayidx1332, align 8, !tbaa !7
  %mul1782.1 = fmul double %125, %111
  %126 = tail call double @llvm.fmuladd.f64(double %124, double %110, double %mul1782.1)
  %127 = load double, double* %arrayidx1334, align 8, !tbaa !7
  %128 = tail call double @llvm.fmuladd.f64(double %127, double %112, double %126)
  %129 = load double, double* %arrayidx1346, align 8, !tbaa !7
  %130 = tail call double @llvm.fmuladd.f64(double %129, double %113, double %128)
  %131 = load double, double* %arrayidx1348, align 8, !tbaa !7
  %132 = tail call double @llvm.fmuladd.f64(double %131, double %114, double %130)
  %mul1819.1 = fmul double %132, 1.200000e+00
  %arrayidx1821.1 = getelementptr inbounds [5 x double], [5 x double]* %aa, i64 0, i64 1
  %133 = load double, double* %arrayidx1383, align 16, !tbaa !7
  %134 = load double, double* %arrayidx1385, align 8, !tbaa !7
  %mul1782.2 = fmul double %134, %111
  %135 = tail call double @llvm.fmuladd.f64(double %133, double %110, double %mul1782.2)
  %136 = load double, double* %arrayidx1401, align 16, !tbaa !7
  %137 = tail call double @llvm.fmuladd.f64(double %136, double %112, double %135)
  %138 = load double, double* %arrayidx1413, align 8, !tbaa !7
  %139 = tail call double @llvm.fmuladd.f64(double %138, double %113, double %137)
  %140 = load double, double* %arrayidx1415, align 16, !tbaa !7
  %141 = tail call double @llvm.fmuladd.f64(double %140, double %114, double %139)
  %mul1819.2 = fmul double %141, 1.200000e+00
  %arrayidx1821.2 = getelementptr inbounds [5 x double], [5 x double]* %aa, i64 0, i64 2
  store double %mul1819.2, double* %arrayidx1821.2, align 16, !tbaa !7
  %142 = load double, double* %arrayidx1461, align 8, !tbaa !7
  %143 = load double, double* %arrayidx1474, align 8, !tbaa !7
  %mul1782.3 = fmul double %143, %111
  %144 = tail call double @llvm.fmuladd.f64(double %142, double %110, double %mul1782.3)
  %145 = load double, double* %arrayidx1487, align 8, !tbaa !7
  %146 = tail call double @llvm.fmuladd.f64(double %145, double %112, double %144)
  %147 = load double, double* %arrayidx1504, align 8, !tbaa !7
  %148 = tail call double @llvm.fmuladd.f64(double %147, double %113, double %146)
  %149 = load double, double* %arrayidx1506, align 8, !tbaa !7
  %150 = tail call double @llvm.fmuladd.f64(double %149, double %114, double %148)
  %mul1819.3 = fmul double %150, 1.200000e+00
  %arrayidx1821.3 = getelementptr inbounds [5 x double], [5 x double]* %aa, i64 0, i64 3
  store double %mul1819.3, double* %arrayidx1821.3, align 8, !tbaa !7
  %mul1782.4 = fmul double %103, %111
  %151 = tail call double @llvm.fmuladd.f64(double %101, double %110, double %mul1782.4)
  %152 = tail call double @llvm.fmuladd.f64(double %104, double %112, double %151)
  %153 = tail call double @llvm.fmuladd.f64(double %108, double %113, double %152)
  %154 = tail call double @llvm.fmuladd.f64(double %sub1754, double %114, double %153)
  %mul1819.4 = fmul double %154, 1.200000e+00
  %arrayidx1821.4 = getelementptr inbounds [5 x double], [5 x double]* %aa, i64 0, i64 4
  store double %mul1819.4, double* %arrayidx1821.4, align 16, !tbaa !7
  %arrayidx1838 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom771, i64 %idxprom323493, i64 0
  %155 = load double, double* %arrayidx1838, align 8, !tbaa !7
  %arrayidx1850 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom279, i64 0
  %156 = load double, double* %arrayidx1850, align 8, !tbaa !7
  %arrayidx1862 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom771, i64 %idxprom323493, i64 1
  %157 = load double, double* %arrayidx1862, align 8, !tbaa !7
  %arrayidx1874 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom279, i64 1
  %158 = load double, double* %arrayidx1874, align 8, !tbaa !7
  %arrayidx1886 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom771, i64 %idxprom323493, i64 2
  %159 = load double, double* %arrayidx1886, align 8, !tbaa !7
  %arrayidx1898 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom279, i64 2
  %160 = load double, double* %arrayidx1898, align 8, !tbaa !7
  %arrayidx1910 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom771, i64 %idxprom323493, i64 3
  %161 = load double, double* %arrayidx1910, align 8, !tbaa !7
  %arrayidx1922 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom279, i64 3
  %162 = load double, double* %arrayidx1922, align 8, !tbaa !7
  %arrayidx1934 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom771, i64 %idxprom323493, i64 4
  %163 = load double, double* %arrayidx1934, align 8, !tbaa !7
  %arrayidx1946 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom279, i64 4
  %164 = load double, double* %arrayidx1946, align 8, !tbaa !7
  %165 = load double, double* %arrayidx778, align 16, !tbaa !7
  %166 = load double, double* %arrayidx284, align 16, !tbaa !7
  %mul1851 = fmul double %166, %156
  %167 = tail call double @llvm.fmuladd.f64(double %165, double %155, double %mul1851)
  %168 = load double, double* %arrayidx780, align 8, !tbaa !7
  %169 = tail call double @llvm.fmuladd.f64(double %168, double %157, double %167)
  %170 = load double, double* %arrayidx286, align 8, !tbaa !7
  %171 = tail call double @llvm.fmuladd.f64(double %170, double %158, double %169)
  %172 = load double, double* %arrayidx782, align 16, !tbaa !7
  %173 = tail call double @llvm.fmuladd.f64(double %172, double %159, double %171)
  %174 = load double, double* %arrayidx288, align 16, !tbaa !7
  %175 = tail call double @llvm.fmuladd.f64(double %174, double %160, double %173)
  %176 = load double, double* %arrayidx784, align 8, !tbaa !7
  %177 = tail call double @llvm.fmuladd.f64(double %176, double %161, double %175)
  %178 = load double, double* %arrayidx290, align 8, !tbaa !7
  %179 = tail call double @llvm.fmuladd.f64(double %178, double %162, double %177)
  %180 = load double, double* %arrayidx786, align 16, !tbaa !7
  %181 = tail call double @llvm.fmuladd.f64(double %180, double %163, double %179)
  %182 = load double, double* %arrayidx292, align 16, !tbaa !7
  %183 = tail call double @llvm.fmuladd.f64(double %182, double %164, double %181)
  %184 = tail call double @llvm.fmuladd.f64(double %183, double 1.200000e+00, double %mul1819)
  store double %184, double* %arrayidx1821, align 16, !tbaa !7
  %185 = load double, double* %arrayidx821, align 8, !tbaa !7
  %186 = load double, double* %arrayidx337, align 8, !tbaa !7
  %mul1851.1 = fmul double %186, %156
  %187 = tail call double @llvm.fmuladd.f64(double %185, double %155, double %mul1851.1)
  %188 = load double, double* %arrayidx837, align 8, !tbaa !7
  %189 = tail call double @llvm.fmuladd.f64(double %188, double %157, double %187)
  %190 = load double, double* %arrayidx355, align 8, !tbaa !7
  %191 = tail call double @llvm.fmuladd.f64(double %190, double %158, double %189)
  %192 = load double, double* %arrayidx849, align 8, !tbaa !7
  %193 = tail call double @llvm.fmuladd.f64(double %192, double %159, double %191)
  %194 = load double, double* %arrayidx368, align 8, !tbaa !7
  %195 = tail call double @llvm.fmuladd.f64(double %194, double %160, double %193)
  %196 = load double, double* %arrayidx851, align 8, !tbaa !7
  %197 = tail call double @llvm.fmuladd.f64(double %196, double %161, double %195)
  %198 = load double, double* %arrayidx381, align 8, !tbaa !7
  %199 = tail call double @llvm.fmuladd.f64(double %198, double %162, double %197)
  %200 = load double, double* %arrayidx853, align 8, !tbaa !7
  %201 = tail call double @llvm.fmuladd.f64(double %200, double %163, double %199)
  %202 = load double, double* %arrayidx383, align 8, !tbaa !7
  %203 = tail call double @llvm.fmuladd.f64(double %202, double %164, double %201)
  %204 = tail call double @llvm.fmuladd.f64(double %203, double 1.200000e+00, double %mul1819.1)
  store double %204, double* %arrayidx1821.1, align 8, !tbaa !7
  %205 = load double, double* %arrayidx899, align 16, !tbaa !7
  %206 = load double, double* %arrayidx418, align 16, !tbaa !7
  %mul1851.2 = fmul double %206, %156
  %207 = tail call double @llvm.fmuladd.f64(double %205, double %155, double %mul1851.2)
  %208 = load double, double* %arrayidx912, align 8, !tbaa !7
  %209 = tail call double @llvm.fmuladd.f64(double %208, double %157, double %207)
  %210 = load double, double* %arrayidx430, align 8, !tbaa !7
  %211 = tail call double @llvm.fmuladd.f64(double %210, double %158, double %209)
  %212 = load double, double* %arrayidx930, align 16, !tbaa !7
  %213 = tail call double @llvm.fmuladd.f64(double %212, double %159, double %211)
  %214 = load double, double* %arrayidx446, align 16, !tbaa !7
  %215 = tail call double @llvm.fmuladd.f64(double %214, double %160, double %213)
  %216 = load double, double* %arrayidx943, align 8, !tbaa !7
  %217 = tail call double @llvm.fmuladd.f64(double %216, double %161, double %215)
  %218 = load double, double* %arrayidx448, align 8, !tbaa !7
  %219 = tail call double @llvm.fmuladd.f64(double %218, double %162, double %217)
  %220 = load double, double* %arrayidx945, align 16, !tbaa !7
  %221 = tail call double @llvm.fmuladd.f64(double %220, double %163, double %219)
  %222 = load double, double* %arrayidx450, align 16, !tbaa !7
  %223 = tail call double @llvm.fmuladd.f64(double %222, double %164, double %221)
  %224 = tail call double @llvm.fmuladd.f64(double %223, double 1.200000e+00, double %mul1819.2)
  store double %224, double* %arrayidx1821.2, align 16, !tbaa !7
  %225 = load double, double* %arrayidx980, align 8, !tbaa !7
  %226 = load double, double* %arrayidx485, align 8, !tbaa !7
  %mul1851.3 = fmul double %226, %156
  %227 = tail call double @llvm.fmuladd.f64(double %225, double %155, double %mul1851.3)
  %228 = load double, double* %arrayidx982, align 8, !tbaa !7
  %229 = tail call double @llvm.fmuladd.f64(double %228, double %157, double %227)
  %230 = load double, double* %arrayidx497, align 8, !tbaa !7
  %231 = tail call double @llvm.fmuladd.f64(double %230, double %158, double %229)
  %232 = load double, double* %arrayidx994, align 8, !tbaa !7
  %233 = tail call double @llvm.fmuladd.f64(double %232, double %159, double %231)
  %234 = load double, double* %arrayidx499, align 8, !tbaa !7
  %235 = tail call double @llvm.fmuladd.f64(double %234, double %160, double %233)
  %236 = load double, double* %arrayidx1010, align 8, !tbaa !7
  %237 = tail call double @llvm.fmuladd.f64(double %236, double %161, double %235)
  %238 = load double, double* %arrayidx515, align 8, !tbaa !7
  %239 = tail call double @llvm.fmuladd.f64(double %238, double %162, double %237)
  %240 = load double, double* %arrayidx1012, align 8, !tbaa !7
  %241 = tail call double @llvm.fmuladd.f64(double %240, double %163, double %239)
  %242 = load double, double* %arrayidx517, align 8, !tbaa !7
  %243 = tail call double @llvm.fmuladd.f64(double %242, double %164, double %241)
  %244 = tail call double @llvm.fmuladd.f64(double %243, double 1.200000e+00, double %mul1819.3)
  store double %244, double* %arrayidx1821.3, align 8, !tbaa !7
  %245 = load double, double* %arrayidx1821.4, align 16, !tbaa !7
  %246 = load double, double* %arrayidx1120, align 16, !tbaa !7
  %247 = load double, double* %arrayidx625, align 16, !tbaa !7
  %mul1851.4 = fmul double %247, %156
  %248 = tail call double @llvm.fmuladd.f64(double %246, double %155, double %mul1851.4)
  %249 = load double, double* %arrayidx1155, align 8, !tbaa !7
  %250 = tail call double @llvm.fmuladd.f64(double %249, double %157, double %248)
  %251 = load double, double* %arrayidx680, align 8, !tbaa !7
  %252 = tail call double @llvm.fmuladd.f64(double %251, double %158, double %250)
  %253 = load double, double* %arrayidx1210, align 16, !tbaa !7
  %254 = tail call double @llvm.fmuladd.f64(double %253, double %159, double %252)
  %255 = load double, double* %arrayidx715, align 16, !tbaa !7
  %256 = tail call double @llvm.fmuladd.f64(double %255, double %160, double %254)
  %257 = load double, double* %arrayidx1245, align 8, !tbaa !7
  %258 = tail call double @llvm.fmuladd.f64(double %257, double %161, double %256)
  %259 = load double, double* %arrayidx750, align 8, !tbaa !7
  %260 = tail call double @llvm.fmuladd.f64(double %259, double %162, double %258)
  %261 = load double, double* %arrayidx1262, align 16, !tbaa !7
  %262 = tail call double @llvm.fmuladd.f64(double %261, double %163, double %260)
  %263 = load double, double* %arrayidx767, align 16, !tbaa !7
  %264 = tail call double @llvm.fmuladd.f64(double %263, double %164, double %262)
  %265 = tail call double @llvm.fmuladd.f64(double %264, double 1.200000e+00, double %245)
  store double %265, double* %arrayidx1821.4, align 16, !tbaa !7
  %266 = bitcast [5 x [5 x double]]* %r to i64*
  %267 = load i64, i64* %266, align 16, !tbaa !7
  %268 = bitcast [5 x [5 x double]]* %z to i64*
  store i64 %267, i64* %268, align 16, !tbaa !7
  %269 = bitcast double* %arrayidx38 to i64*
  %270 = load i64, i64* %269, align 8, !tbaa !7
  %arrayidx1969 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 0, i64 1
  %271 = bitcast double* %arrayidx1969 to i64*
  store i64 %270, i64* %271, align 8, !tbaa !7
  %272 = bitcast double* %arrayidx40 to i64*
  %273 = load i64, i64* %272, align 16, !tbaa !7
  %arrayidx1975 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 0, i64 2
  %274 = bitcast double* %arrayidx1975 to i64*
  store i64 %273, i64* %274, align 16, !tbaa !7
  %275 = bitcast double* %arrayidx42 to i64*
  %276 = load i64, i64* %275, align 8, !tbaa !7
  %arrayidx1981 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 0, i64 3
  %277 = bitcast double* %arrayidx1981 to i64*
  store i64 %276, i64* %277, align 8, !tbaa !7
  %278 = bitcast double* %arrayidx44 to i64*
  %279 = load i64, i64* %278, align 16, !tbaa !7
  %arrayidx1987 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 0, i64 4
  %280 = bitcast double* %arrayidx1987 to i64*
  store i64 %279, i64* %280, align 16, !tbaa !7
  %281 = bitcast double* %arrayidx59 to i64*
  %282 = load i64, i64* %281, align 8, !tbaa !7
  %arrayidx1962.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 1
  %283 = bitcast [5 x double]* %arrayidx1962.1 to i64*
  store i64 %282, i64* %283, align 8, !tbaa !7
  %284 = bitcast double* %arrayidx67 to i64*
  %285 = load i64, i64* %284, align 8, !tbaa !7
  %arrayidx1969.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 1, i64 1
  %286 = bitcast double* %arrayidx1969.1 to i64*
  store i64 %285, i64* %286, align 8, !tbaa !7
  %287 = bitcast double* %arrayidx69 to i64*
  %288 = load i64, i64* %287, align 8, !tbaa !7
  %arrayidx1975.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 1, i64 2
  %289 = bitcast double* %arrayidx1975.1 to i64*
  store i64 %288, i64* %289, align 8, !tbaa !7
  %290 = load double, double* %arrayidx71, align 8, !tbaa !7
  %arrayidx1981.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 1, i64 3
  %291 = load double, double* %arrayidx73, align 8, !tbaa !7
  %arrayidx1987.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 1, i64 4
  %292 = bitcast double* %arrayidx88 to i64*
  %293 = load i64, i64* %292, align 16, !tbaa !7
  %arrayidx1962.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 2
  %294 = bitcast [5 x double]* %arrayidx1962.2 to i64*
  store i64 %293, i64* %294, align 16, !tbaa !7
  %295 = bitcast double* %arrayidx90 to i64*
  %296 = load i64, i64* %295, align 8, !tbaa !7
  %arrayidx1969.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 2, i64 1
  %297 = bitcast double* %arrayidx1969.2 to i64*
  store i64 %296, i64* %297, align 8, !tbaa !7
  %298 = load double, double* %arrayidx98, align 16, !tbaa !7
  %arrayidx1975.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 2, i64 2
  %299 = load double, double* %arrayidx100, align 8, !tbaa !7
  %arrayidx1981.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 2, i64 3
  %300 = load double, double* %arrayidx102, align 16, !tbaa !7
  %arrayidx1987.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 2, i64 4
  %301 = bitcast double* %arrayidx116 to i64*
  %302 = load i64, i64* %301, align 8, !tbaa !7
  %arrayidx1962.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 3
  %303 = bitcast [5 x double]* %arrayidx1962.3 to i64*
  store i64 %302, i64* %303, align 8, !tbaa !7
  %304 = load double, double* %arrayidx118, align 8, !tbaa !7
  %arrayidx1969.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 3, i64 1
  %305 = load double, double* %arrayidx120, align 8, !tbaa !7
  %arrayidx1975.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 3, i64 2
  %306 = load double, double* %arrayidx127, align 8, !tbaa !7
  %arrayidx1981.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 3, i64 3
  %307 = load double, double* %arrayidx129, align 8, !tbaa !7
  %arrayidx1987.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 3, i64 4
  %308 = bitcast double* %arrayidx211 to i64*
  %309 = load i64, i64* %308, align 16, !tbaa !7
  %arrayidx1962.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 4
  %310 = bitcast [5 x double]* %arrayidx1962.4 to i64*
  store i64 %309, i64* %310, align 16, !tbaa !7
  %311 = load double, double* %arrayidx230, align 8, !tbaa !7
  %arrayidx1969.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 4, i64 1
  %312 = load double, double* %arrayidx249, align 16, !tbaa !7
  %arrayidx1975.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 4, i64 2
  %313 = load double, double* %arrayidx268, align 8, !tbaa !7
  %arrayidx1981.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 4, i64 3
  %314 = load double, double* %arrayidx273, align 16, !tbaa !7
  %arrayidx1987.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 4, i64 4
  %arrayidx1992 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 0, i64 0
  %315 = load double, double* %arrayidx1992, align 16, !tbaa !7
  %div = fdiv double 1.000000e+00, %315
  %arrayidx1994 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 1, i64 0
  %316 = load double, double* %arrayidx1994, align 8, !tbaa !7
  %mul1995 = fmul double %div, %316
  %317 = bitcast i64 %285 to double
  %318 = load double, double* %arrayidx1969, align 8, !tbaa !7
  %neg2001 = fsub double -0.000000e+00, %mul1995
  %319 = tail call double @llvm.fmuladd.f64(double %neg2001, double %318, double %317)
  store double %319, double* %arrayidx1969.1, align 8, !tbaa !7
  %320 = bitcast i64 %288 to double
  %321 = load double, double* %arrayidx1975, align 16, !tbaa !7
  %322 = tail call double @llvm.fmuladd.f64(double %neg2001, double %321, double %320)
  store double %322, double* %arrayidx1975.1, align 8, !tbaa !7
  %323 = load double, double* %arrayidx1981, align 8, !tbaa !7
  %324 = tail call double @llvm.fmuladd.f64(double %neg2001, double %323, double %290)
  store double %324, double* %arrayidx1981.1, align 8, !tbaa !7
  %325 = load double, double* %arrayidx1987, align 16, !tbaa !7
  %326 = tail call double @llvm.fmuladd.f64(double %neg2001, double %325, double %291)
  store double %326, double* %arrayidx1987.1, align 8, !tbaa !7
  %327 = load double, double* %arrayidx1821.1, align 8, !tbaa !7
  %328 = load double, double* %arrayidx1821, align 16, !tbaa !7
  %neg2031 = fsub double -0.000000e+00, %328
  %329 = tail call double @llvm.fmuladd.f64(double %neg2031, double %mul1995, double %327)
  store double %329, double* %arrayidx1821.1, align 8, !tbaa !7
  %arrayidx2034 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 2, i64 0
  %330 = load double, double* %arrayidx2034, align 16, !tbaa !7
  %mul2035 = fmul double %div, %330
  %331 = bitcast i64 %296 to double
  %neg2041 = fsub double -0.000000e+00, %mul2035
  %332 = tail call double @llvm.fmuladd.f64(double %neg2041, double %318, double %331)
  store double %332, double* %arrayidx1969.2, align 8, !tbaa !7
  %333 = tail call double @llvm.fmuladd.f64(double %neg2041, double %321, double %298)
  %334 = tail call double @llvm.fmuladd.f64(double %neg2041, double %323, double %299)
  %335 = tail call double @llvm.fmuladd.f64(double %neg2041, double %325, double %300)
  %336 = load double, double* %arrayidx1821.2, align 16, !tbaa !7
  %337 = tail call double @llvm.fmuladd.f64(double %neg2031, double %mul2035, double %336)
  %338 = bitcast i64 %302 to double
  %mul2075 = fmul double %div, %338
  %neg2081 = fsub double -0.000000e+00, %mul2075
  %339 = tail call double @llvm.fmuladd.f64(double %neg2081, double %318, double %304)
  store double %339, double* %arrayidx1969.3, align 8, !tbaa !7
  %340 = tail call double @llvm.fmuladd.f64(double %neg2081, double %321, double %305)
  %341 = tail call double @llvm.fmuladd.f64(double %neg2081, double %323, double %306)
  %342 = tail call double @llvm.fmuladd.f64(double %neg2081, double %325, double %307)
  %343 = load double, double* %arrayidx1821.3, align 8, !tbaa !7
  %344 = tail call double @llvm.fmuladd.f64(double %neg2031, double %mul2075, double %343)
  %345 = bitcast i64 %309 to double
  %mul2115 = fmul double %div, %345
  %neg2121 = fsub double -0.000000e+00, %mul2115
  %346 = tail call double @llvm.fmuladd.f64(double %neg2121, double %318, double %311)
  store double %346, double* %arrayidx1969.4, align 8, !tbaa !7
  %347 = tail call double @llvm.fmuladd.f64(double %neg2121, double %321, double %312)
  %348 = tail call double @llvm.fmuladd.f64(double %neg2121, double %323, double %313)
  %349 = tail call double @llvm.fmuladd.f64(double %neg2121, double %325, double %314)
  %350 = load double, double* %arrayidx1821.4, align 16, !tbaa !7
  %351 = tail call double @llvm.fmuladd.f64(double %neg2031, double %mul2115, double %350)
  %div2155 = fdiv double 1.000000e+00, %319
  %mul2158 = fmul double %div2155, %332
  %neg2164 = fsub double -0.000000e+00, %mul2158
  %352 = tail call double @llvm.fmuladd.f64(double %neg2164, double %322, double %333)
  store double %352, double* %arrayidx1975.2, align 16, !tbaa !7
  %353 = tail call double @llvm.fmuladd.f64(double %neg2164, double %324, double %334)
  store double %353, double* %arrayidx1981.2, align 8, !tbaa !7
  %354 = tail call double @llvm.fmuladd.f64(double %neg2164, double %326, double %335)
  store double %354, double* %arrayidx1987.2, align 16, !tbaa !7
  %neg2186 = fsub double -0.000000e+00, %329
  %355 = tail call double @llvm.fmuladd.f64(double %neg2186, double %mul2158, double %337)
  %mul2190 = fmul double %div2155, %339
  %neg2196 = fsub double -0.000000e+00, %mul2190
  %356 = tail call double @llvm.fmuladd.f64(double %neg2196, double %322, double %340)
  store double %356, double* %arrayidx1975.3, align 8, !tbaa !7
  %357 = tail call double @llvm.fmuladd.f64(double %neg2196, double %324, double %341)
  %358 = tail call double @llvm.fmuladd.f64(double %neg2196, double %326, double %342)
  %359 = tail call double @llvm.fmuladd.f64(double %neg2186, double %mul2190, double %344)
  %mul2222 = fmul double %div2155, %346
  %neg2228 = fsub double -0.000000e+00, %mul2222
  %360 = tail call double @llvm.fmuladd.f64(double %neg2228, double %322, double %347)
  store double %360, double* %arrayidx1975.4, align 16, !tbaa !7
  %361 = tail call double @llvm.fmuladd.f64(double %neg2228, double %324, double %348)
  %362 = tail call double @llvm.fmuladd.f64(double %neg2228, double %326, double %349)
  %363 = tail call double @llvm.fmuladd.f64(double %neg2186, double %mul2222, double %351)
  %div2254 = fdiv double 1.000000e+00, %352
  %mul2257 = fmul double %div2254, %356
  %neg2263 = fsub double -0.000000e+00, %mul2257
  %364 = tail call double @llvm.fmuladd.f64(double %neg2263, double %353, double %357)
  store double %364, double* %arrayidx1981.3, align 8, !tbaa !7
  %365 = tail call double @llvm.fmuladd.f64(double %neg2263, double %354, double %358)
  store double %365, double* %arrayidx1987.3, align 8, !tbaa !7
  %neg2277 = fsub double -0.000000e+00, %355
  %366 = tail call double @llvm.fmuladd.f64(double %neg2277, double %mul2257, double %359)
  %mul2281 = fmul double %div2254, %360
  %neg2287 = fsub double -0.000000e+00, %mul2281
  %367 = tail call double @llvm.fmuladd.f64(double %neg2287, double %353, double %361)
  store double %367, double* %arrayidx1981.4, align 8, !tbaa !7
  %368 = tail call double @llvm.fmuladd.f64(double %neg2287, double %354, double %362)
  %369 = tail call double @llvm.fmuladd.f64(double %neg2277, double %mul2281, double %363)
  %div2305 = fdiv double 1.000000e+00, %364
  %mul2308 = fmul double %div2305, %367
  %neg2314 = fsub double -0.000000e+00, %mul2308
  %370 = tail call double @llvm.fmuladd.f64(double %neg2314, double %365, double %368)
  store double %370, double* %arrayidx1987.4, align 16, !tbaa !7
  %neg2320 = fsub double -0.000000e+00, %366
  %371 = tail call double @llvm.fmuladd.f64(double %neg2320, double %mul2308, double %369)
  %div2325 = fdiv double %371, %370
  store double %div2325, double* %arrayidx1821.4, align 16, !tbaa !7
  %neg2332 = fsub double -0.000000e+00, %365
  %372 = tail call double @llvm.fmuladd.f64(double %neg2332, double %div2325, double %366)
  %div2337 = fdiv double %372, %364
  store double %div2337, double* %arrayidx1821.3, align 8, !tbaa !7
  %neg2344 = fsub double -0.000000e+00, %353
  %373 = tail call double @llvm.fmuladd.f64(double %neg2344, double %div2337, double %355)
  %neg2349 = fsub double -0.000000e+00, %354
  %374 = tail call double @llvm.fmuladd.f64(double %neg2349, double %div2325, double %373)
  %div2354 = fdiv double %374, %352
  store double %div2354, double* %arrayidx1821.2, align 16, !tbaa !7
  %neg2361 = fsub double -0.000000e+00, %322
  %375 = tail call double @llvm.fmuladd.f64(double %neg2361, double %div2354, double %329)
  %neg2366 = fsub double -0.000000e+00, %324
  %376 = tail call double @llvm.fmuladd.f64(double %neg2366, double %div2337, double %375)
  %neg2371 = fsub double -0.000000e+00, %326
  %377 = tail call double @llvm.fmuladd.f64(double %neg2371, double %div2325, double %376)
  %div2376 = fdiv double %377, %319
  store double %div2376, double* %arrayidx1821.1, align 8, !tbaa !7
  %neg2383 = fsub double -0.000000e+00, %318
  %378 = tail call double @llvm.fmuladd.f64(double %neg2383, double %div2376, double %328)
  %neg2388 = fsub double -0.000000e+00, %321
  %379 = tail call double @llvm.fmuladd.f64(double %neg2388, double %div2354, double %378)
  %neg2393 = fsub double -0.000000e+00, %323
  %380 = tail call double @llvm.fmuladd.f64(double %neg2393, double %div2337, double %379)
  %neg2398 = fsub double -0.000000e+00, %325
  %381 = tail call double @llvm.fmuladd.f64(double %neg2398, double %div2325, double %380)
  %div2403 = fdiv double %381, %315
  store double %div2403, double* %arrayidx1821, align 16, !tbaa !7
  %arrayidx2411 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom323493, i64 0
  %382 = load double, double* %arrayidx2411, align 8, !tbaa !7
  %sub2413 = fsub double %382, %div2403
  store double %sub2413, double* %arrayidx2411, align 8, !tbaa !7
  %arrayidx2427 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom323493, i64 1
  %383 = load double, double* %arrayidx2427, align 8, !tbaa !7
  %sub2429 = fsub double %383, %div2376
  store double %sub2429, double* %arrayidx2427, align 8, !tbaa !7
  %arrayidx2443 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom323493, i64 2
  %384 = load double, double* %arrayidx2443, align 8, !tbaa !7
  %sub2445 = fsub double %384, %div2354
  store double %sub2445, double* %arrayidx2443, align 8, !tbaa !7
  %arrayidx2459 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom323493, i64 3
  %385 = load double, double* %arrayidx2459, align 8, !tbaa !7
  %sub2461 = fsub double %385, %div2337
  store double %sub2461, double* %arrayidx2459, align 8, !tbaa !7
  %arrayidx2475 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom323493, i64 4
  %386 = load double, double* %arrayidx2475, align 8, !tbaa !7
  %sub2477 = fsub double %386, %div2325
  store double %sub2477, double* %arrayidx2475, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %5) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %0) #4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
