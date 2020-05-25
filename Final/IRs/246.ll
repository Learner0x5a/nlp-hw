; ModuleID = 'src/246.src'
source_filename = "src/246.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(double* %a, double* nocapture readonly %b, double* nocapture readonly %c, double* nocapture readonly %d, i32 %e, i32 %f, i32 %g, i32 %h, i32 %i, i32 %j) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
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
  %7 = add i32 %6, %i
  %conv2 = add i32 %7, 1
  %call3 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %8 = trunc i64 %call3 to i32
  %9 = add i32 %8, %j
  %conv7 = add i32 %9, 1
  %conv83531 = zext i32 %h to i64
  %sub = sub i64 %conv83531, %call
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
  %or.cond3532 = and i1 %cmp28, %or.cond.not
  br i1 %or.cond3532, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %13 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %14 = bitcast double* %b to [13 x [13 x [5 x double]]]*
  %15 = bitcast double* %c to [13 x [13 x double]]*
  %16 = bitcast double* %d to [13 x [13 x double]]*
  %idxprom = sext i32 %conv2 to i64
  %idxprom30 = sext i32 %conv7 to i64
  %idxprom323536 = zext i32 %conv17 to i64
  %arrayidx33 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %16, i64 %idxprom, i64 %idxprom30, i64 %idxprom323536
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
  %mul49 = fmul double %mul, 0xC0442AAAAAAAAAAB
  %arrayidx56 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom323536, i64 1
  %18 = load double, double* %arrayidx56, align 8, !tbaa !7
  %mul57 = fmul double %mul49, %18
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
  %arrayidx85 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom323536, i64 2
  %20 = load double, double* %arrayidx85, align 8, !tbaa !7
  %mul86 = fmul double %mul49, %20
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
  %arrayidx113 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom323536, i64 3
  %21 = load double, double* %arrayidx113, align 8, !tbaa !7
  %mul114 = fmul double %mul49, %21
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
  %arrayidx207 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom323536, i64 4
  %24 = load double, double* %arrayidx207, align 8, !tbaa !7
  %mul208 = fmul double %mul200, %24
  %25 = tail call double @llvm.fmuladd.f64(double %23, double %mul34, double %mul208)
  %mul209 = fsub double -0.000000e+00, %25
  %arrayidx211 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 0, i64 4
  store double %mul209, double* %arrayidx211, align 16, !tbaa !7
  %mul220 = fmul double %mul, %18
  %mul228 = fmul double %mul220, 0xC03ED08DFEA27981
  %arrayidx230 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 1, i64 4
  store double %mul228, double* %arrayidx230, align 8, !tbaa !7
  %mul239 = fmul double %mul, %20
  %mul247 = fmul double %mul239, 0xC03ED08DFEA27981
  %arrayidx249 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 2, i64 4
  store double %mul247, double* %arrayidx249, align 16, !tbaa !7
  %mul258 = fmul double %mul, %21
  %mul266 = fmul double %mul258, 0xC03ED08DFEA27981
  %arrayidx268 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 3, i64 4
  store double %mul266, double* %arrayidx268, align 8, !tbaa !7
  %26 = tail call double @llvm.fmuladd.f64(double %17, double 7.114800e+01, double 1.000000e+00)
  %add271 = fadd double %26, 3.025000e+02
  %arrayidx273 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %r, i64 0, i64 4, i64 4
  store double %add271, double* %arrayidx273, align 16, !tbaa !7
  %idxprom275 = sext i32 %7 to i64
  %arrayidx280 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %16, i64 %idxprom275, i64 %idxprom30, i64 %idxprom323536
  %27 = load double, double* %arrayidx280, align 8, !tbaa !7
  %mul281 = fmul double %27, %27
  %mul282 = fmul double %27, %mul281
  %arrayidx284 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 0, i64 0
  store double -6.050000e+01, double* %arrayidx284, align 16, !tbaa !7
  %arrayidx286 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %arrayidx286, align 8, !tbaa !7
  %arrayidx288 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %arrayidx288, align 16, !tbaa !7
  %arrayidx290 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 3, i64 0
  store double -2.750000e+00, double* %arrayidx290, align 8, !tbaa !7
  %arrayidx292 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx292, align 16, !tbaa !7
  %arrayidx300 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom275, i64 %idxprom30, i64 %idxprom323536, i64 1
  %28 = load double, double* %arrayidx300, align 8, !tbaa !7
  %arrayidx308 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom275, i64 %idxprom30, i64 %idxprom323536, i64 3
  %29 = load double, double* %arrayidx308, align 8, !tbaa !7
  %30 = fneg double %28
  %fneg = fmul double %29, %30
  %mul310 = fmul double %mul281, %fneg
  %mul313 = fmul double %mul281, -1.000000e-01
  %mul322 = fmul double %mul313, %28
  %neg324 = fmul double %mul322, -6.050000e+01
  %31 = tail call double @llvm.fmuladd.f64(double %mul310, double -2.750000e+00, double %neg324)
  %arrayidx326 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 0, i64 1
  store double %31, double* %arrayidx326, align 8, !tbaa !7
  %mul335 = fmul double %27, %29
  %neg339 = fmul double %27, 0xC018333333333334
  %32 = tail call double @llvm.fmuladd.f64(double %mul335, double -2.750000e+00, double %neg339)
  %sub340 = fadd double %32, -6.050000e+01
  %arrayidx342 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 1, i64 1
  store double %sub340, double* %arrayidx342, align 8, !tbaa !7
  %arrayidx344 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 2, i64 1
  store double 0.000000e+00, double* %arrayidx344, align 8, !tbaa !7
  %mul353 = fmul double %27, %28
  %mul354 = fmul double %mul353, -2.750000e+00
  %arrayidx356 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 3, i64 1
  store double %mul354, double* %arrayidx356, align 8, !tbaa !7
  %arrayidx358 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %arrayidx358, align 8, !tbaa !7
  %arrayidx366 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom275, i64 %idxprom30, i64 %idxprom323536, i64 2
  %33 = load double, double* %arrayidx366, align 8, !tbaa !7
  %34 = fneg double %33
  %fneg376 = fmul double %29, %34
  %mul377 = fmul double %mul281, %fneg376
  %mul389 = fmul double %mul313, %33
  %neg391 = fmul double %mul389, -6.050000e+01
  %35 = tail call double @llvm.fmuladd.f64(double %mul377, double -2.750000e+00, double %neg391)
  %arrayidx393 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 0, i64 2
  store double %35, double* %arrayidx393, align 16, !tbaa !7
  %arrayidx395 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 1, i64 2
  store double 0.000000e+00, double* %arrayidx395, align 8, !tbaa !7
  %mul406 = fmul double %27, 1.000000e-01
  %neg408 = fmul double %mul406, -6.050000e+01
  %36 = tail call double @llvm.fmuladd.f64(double %mul335, double -2.750000e+00, double %neg408)
  %sub409 = fadd double %36, -6.050000e+01
  %arrayidx411 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 2, i64 2
  store double %sub409, double* %arrayidx411, align 16, !tbaa !7
  %mul420 = fmul double %27, %33
  %mul421 = fmul double %mul420, -2.750000e+00
  %arrayidx423 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 3, i64 2
  store double %mul421, double* %arrayidx423, align 8, !tbaa !7
  %arrayidx425 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %arrayidx425, align 16, !tbaa !7
  %fneg435 = fneg double %mul335
  %arrayidx452 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %15, i64 %idxprom275, i64 %idxprom30, i64 %idxprom323536
  %37 = load double, double* %arrayidx452, align 8, !tbaa !7
  %mul453 = fmul double %37, 4.000000e-01
  %mul454 = fmul double %27, %mul453
  %38 = tail call double @llvm.fmuladd.f64(double %fneg435, double %mul335, double %mul454)
  %mul458 = fmul double %mul281, 0xBFC1111111111111
  %mul467 = fmul double %mul458, %29
  %neg469 = fmul double %mul467, -6.050000e+01
  %39 = tail call double @llvm.fmuladd.f64(double %38, double -2.750000e+00, double %neg469)
  %arrayidx471 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 0, i64 3
  store double %39, double* %arrayidx471, align 8, !tbaa !7
  %mul481 = fmul double %mul353, -4.000000e-01
  %mul482 = fmul double %mul481, -2.750000e+00
  %arrayidx484 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 1, i64 3
  store double %mul482, double* %arrayidx484, align 8, !tbaa !7
  %mul494 = fmul double %mul420, -4.000000e-01
  %mul495 = fmul double %mul494, -2.750000e+00
  %arrayidx497 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 2, i64 3
  store double %mul495, double* %arrayidx497, align 8, !tbaa !7
  %mul509 = fmul double %27, 0x3FC1111111111111
  %neg511 = fmul double %mul509, -6.050000e+01
  %40 = tail call double @llvm.fmuladd.f64(double %mul335, double -4.400000e+00, double %neg511)
  %sub512 = fadd double %40, -6.050000e+01
  %arrayidx514 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 3, i64 3
  store double %sub512, double* %arrayidx514, align 8, !tbaa !7
  %arrayidx516 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 4, i64 3
  store double -1.100000e+00, double* %arrayidx516, align 8, !tbaa !7
  %arrayidx532 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom275, i64 %idxprom30, i64 %idxprom323536, i64 4
  %41 = load double, double* %arrayidx532, align 8, !tbaa !7
  %neg534 = fmul double %41, -1.400000e+00
  %42 = tail call double @llvm.fmuladd.f64(double %37, double 8.000000e-01, double %neg534)
  %mul543 = fmul double %29, %42
  %mul544 = fmul double %mul281, %mul543
  %mul548 = fmul double %mul282, 0x3FB89374BC6A7EF8
  %mul565 = fmul double %28, %28
  %mul585 = fmul double %33, %33
  %neg587 = fmul double %mul548, %mul585
  %43 = tail call double @llvm.fmuladd.f64(double %mul548, double %mul565, double %neg587)
  %mul607 = fmul double %29, %29
  %neg609 = fmul double %mul282, 0x3FB00AEC33E1F670
  %44 = tail call double @llvm.fmuladd.f64(double %neg609, double %mul607, double %43)
  %neg620 = fmul double %mul281, 0xBFC916872B020C49
  %45 = tail call double @llvm.fmuladd.f64(double %neg620, double %41, double %44)
  %neg622 = fmul double %45, -6.050000e+01
  %46 = tail call double @llvm.fmuladd.f64(double %mul544, double -2.750000e+00, double %neg622)
  %arrayidx624 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 0, i64 4
  store double %46, double* %arrayidx624, align 16, !tbaa !7
  %mul641 = fmul double %28, %29
  %mul642 = fmul double %mul641, -4.000000e-01
  %mul643 = fmul double %mul281, %mul642
  %47 = fmul double %mul281, 0x40173B645A1CAC06
  %neg657 = fmul double %47, %28
  %48 = tail call double @llvm.fmuladd.f64(double %mul643, double -2.750000e+00, double %neg657)
  %arrayidx659 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 1, i64 4
  store double %48, double* %arrayidx659, align 8, !tbaa !7
  %mul676 = fmul double %29, %33
  %mul677 = fmul double %mul676, -4.000000e-01
  %mul678 = fmul double %mul281, %mul677
  %neg692 = fmul double %47, %33
  %49 = tail call double @llvm.fmuladd.f64(double %mul678, double -2.750000e+00, double %neg692)
  %arrayidx694 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 2, i64 4
  store double %49, double* %arrayidx694, align 16, !tbaa !7
  %mul703 = fmul double %27, %41
  %mul730 = fmul double %mul281, %mul607
  %50 = tail call double @llvm.fmuladd.f64(double %37, double %27, double %mul730)
  %neg732 = fmul double %50, -4.000000e-01
  %51 = tail call double @llvm.fmuladd.f64(double %mul703, double 1.400000e+00, double %neg732)
  %52 = fmul double %mul281, 0x400E54A6921735EC
  %neg747 = fmul double %52, %29
  %53 = tail call double @llvm.fmuladd.f64(double %51, double -2.750000e+00, double %neg747)
  %arrayidx749 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 3, i64 4
  store double %53, double* %arrayidx749, align 8, !tbaa !7
  %mul759 = fmul double %mul335, 1.400000e+00
  %neg763 = fmul double %27, 0xC027B74BC6A7EF9D
  %54 = tail call double @llvm.fmuladd.f64(double %mul759, double -2.750000e+00, double %neg763)
  %sub764 = fadd double %54, -6.050000e+01
  %arrayidx766 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %o, i64 0, i64 4, i64 4
  store double %sub764, double* %arrayidx766, align 16, !tbaa !7
  %idxprom770 = sext i32 %9 to i64
  %arrayidx773 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %16, i64 %idxprom, i64 %idxprom770, i64 %idxprom323536
  %55 = load double, double* %arrayidx773, align 8, !tbaa !7
  %mul774 = fmul double %55, %55
  %mul775 = fmul double %55, %mul774
  %arrayidx777 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 0, i64 0
  store double -4.537500e+01, double* %arrayidx777, align 16, !tbaa !7
  %arrayidx779 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 1, i64 0
  store double 0.000000e+00, double* %arrayidx779, align 8, !tbaa !7
  %arrayidx781 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 2, i64 0
  store double -2.750000e+00, double* %arrayidx781, align 16, !tbaa !7
  %arrayidx783 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %arrayidx783, align 8, !tbaa !7
  %arrayidx785 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx785, align 16, !tbaa !7
  %arrayidx793 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom770, i64 %idxprom323536, i64 1
  %56 = load double, double* %arrayidx793, align 8, !tbaa !7
  %arrayidx801 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom770, i64 %idxprom323536, i64 2
  %57 = load double, double* %arrayidx801, align 8, !tbaa !7
  %58 = fneg double %56
  %fneg803 = fmul double %57, %58
  %mul804 = fmul double %mul774, %fneg803
  %mul807 = fmul double %mul774, -1.000000e-01
  %mul816 = fmul double %mul807, %56
  %neg818 = fmul double %mul816, -6.050000e+01
  %59 = tail call double @llvm.fmuladd.f64(double %mul804, double -2.750000e+00, double %neg818)
  %arrayidx820 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 0, i64 1
  store double %59, double* %arrayidx820, align 8, !tbaa !7
  %mul829 = fmul double %55, %57
  %mul831 = fmul double %55, 1.000000e-01
  %neg833 = fmul double %mul831, -6.050000e+01
  %60 = tail call double @llvm.fmuladd.f64(double %mul829, double -2.750000e+00, double %neg833)
  %sub834 = fadd double %60, -4.537500e+01
  %arrayidx836 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 1, i64 1
  store double %sub834, double* %arrayidx836, align 8, !tbaa !7
  %mul845 = fmul double %55, %56
  %mul846 = fmul double %mul845, -2.750000e+00
  %arrayidx848 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 2, i64 1
  store double %mul846, double* %arrayidx848, align 8, !tbaa !7
  %arrayidx850 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 3, i64 1
  store double 0.000000e+00, double* %arrayidx850, align 8, !tbaa !7
  %arrayidx852 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 4, i64 1
  store double 0.000000e+00, double* %arrayidx852, align 8, !tbaa !7
  %fneg862 = fneg double %mul829
  %arrayidx879 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %15, i64 %idxprom, i64 %idxprom770, i64 %idxprom323536
  %61 = load double, double* %arrayidx879, align 8, !tbaa !7
  %mul880 = fmul double %55, %61
  %mul881 = fmul double %mul880, 4.000000e-01
  %62 = tail call double @llvm.fmuladd.f64(double %fneg862, double %mul829, double %mul881)
  %mul885 = fmul double %mul774, 0xBFC1111111111111
  %mul894 = fmul double %mul885, %57
  %neg896 = fmul double %mul894, -6.050000e+01
  %63 = tail call double @llvm.fmuladd.f64(double %62, double -2.750000e+00, double %neg896)
  %arrayidx898 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 0, i64 2
  store double %63, double* %arrayidx898, align 16, !tbaa !7
  %mul908 = fmul double %mul845, -4.000000e-01
  %mul909 = fmul double %mul908, -2.750000e+00
  %arrayidx911 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 1, i64 2
  store double %mul909, double* %arrayidx911, align 8, !tbaa !7
  %mul921 = fmul double %mul829, 1.600000e+00
  %mul924 = fmul double %55, 0x3FC1111111111111
  %neg926 = fmul double %mul924, -6.050000e+01
  %64 = tail call double @llvm.fmuladd.f64(double %mul921, double -2.750000e+00, double %neg926)
  %sub927 = fadd double %64, -4.537500e+01
  %arrayidx929 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 2, i64 2
  store double %sub927, double* %arrayidx929, align 16, !tbaa !7
  %arrayidx937 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom770, i64 %idxprom323536, i64 3
  %65 = load double, double* %arrayidx937, align 8, !tbaa !7
  %mul938 = fmul double %55, %65
  %mul939 = fmul double %mul938, -4.000000e-01
  %mul940 = fmul double %mul939, -2.750000e+00
  %arrayidx942 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 3, i64 2
  store double %mul940, double* %arrayidx942, align 8, !tbaa !7
  %arrayidx944 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 4, i64 2
  store double -1.100000e+00, double* %arrayidx944, align 16, !tbaa !7
  %66 = fneg double %57
  %fneg962 = fmul double %65, %66
  %mul963 = fmul double %mul774, %fneg962
  %mul975 = fmul double %mul807, %65
  %neg977 = fmul double %mul975, -6.050000e+01
  %67 = tail call double @llvm.fmuladd.f64(double %mul963, double -2.750000e+00, double %neg977)
  %arrayidx979 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 0, i64 3
  store double %67, double* %arrayidx979, align 8, !tbaa !7
  %arrayidx981 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 1, i64 3
  store double 0.000000e+00, double* %arrayidx981, align 8, !tbaa !7
  %mul991 = fmul double %mul938, -2.750000e+00
  %arrayidx993 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 2, i64 3
  store double %mul991, double* %arrayidx993, align 8, !tbaa !7
  %arrayidx1009 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 3, i64 3
  store double %sub834, double* %arrayidx1009, align 8, !tbaa !7
  %arrayidx1011 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %arrayidx1011, align 8, !tbaa !7
  %arrayidx1027 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom770, i64 %idxprom323536, i64 4
  %68 = load double, double* %arrayidx1027, align 8, !tbaa !7
  %neg1029 = fmul double %68, -1.400000e+00
  %69 = tail call double @llvm.fmuladd.f64(double %61, double 8.000000e-01, double %neg1029)
  %mul1038 = fmul double %mul774, %57
  %mul1039 = fmul double %mul1038, %69
  %mul1043 = fmul double %mul775, 0x3FB89374BC6A7EF8
  %mul1060 = fmul double %56, %56
  %mul1081 = fmul double %57, %57
  %70 = fmul double %mul775, 0x3FB00AEC33E1F670
  %neg1083 = fmul double %70, %mul1081
  %71 = tail call double @llvm.fmuladd.f64(double %mul1043, double %mul1060, double %neg1083)
  %mul1102 = fmul double %65, %65
  %72 = tail call double @llvm.fmuladd.f64(double %mul1043, double %mul1102, double %71)
  %neg1115 = fmul double %mul774, 0xBFC916872B020C49
  %73 = tail call double @llvm.fmuladd.f64(double %neg1115, double %68, double %72)
  %neg1117 = fmul double %73, -6.050000e+01
  %74 = tail call double @llvm.fmuladd.f64(double %mul1039, double -2.750000e+00, double %neg1117)
  %arrayidx1119 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 0, i64 4
  store double %74, double* %arrayidx1119, align 16, !tbaa !7
  %mul1136 = fmul double %56, %57
  %mul1137 = fmul double %mul1136, -4.000000e-01
  %mul1138 = fmul double %mul774, %mul1137
  %75 = fmul double %mul774, 0x40173B645A1CAC06
  %neg1152 = fmul double %75, %56
  %76 = tail call double @llvm.fmuladd.f64(double %mul1138, double -2.750000e+00, double %neg1152)
  %arrayidx1154 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 1, i64 4
  store double %76, double* %arrayidx1154, align 8, !tbaa !7
  %mul1163 = fmul double %55, %68
  %mul1190 = fmul double %mul774, %mul1081
  %77 = tail call double @llvm.fmuladd.f64(double %61, double %55, double %mul1190)
  %neg1192 = fmul double %77, -4.000000e-01
  %78 = tail call double @llvm.fmuladd.f64(double %mul1163, double 1.400000e+00, double %neg1192)
  %79 = fmul double %mul774, 0x400E54A6921735EC
  %neg1207 = fmul double %79, %57
  %80 = tail call double @llvm.fmuladd.f64(double %78, double -2.750000e+00, double %neg1207)
  %arrayidx1209 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 2, i64 4
  store double %80, double* %arrayidx1209, align 16, !tbaa !7
  %mul1226 = fmul double %57, %65
  %mul1227 = fmul double %mul1226, -4.000000e-01
  %mul1228 = fmul double %mul774, %mul1227
  %neg1242 = fmul double %75, %65
  %81 = tail call double @llvm.fmuladd.f64(double %mul1228, double -2.750000e+00, double %neg1242)
  %arrayidx1244 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 3, i64 4
  store double %81, double* %arrayidx1244, align 8, !tbaa !7
  %mul1254 = fmul double %mul829, 1.400000e+00
  %neg1258 = fmul double %55, 0xC027B74BC6A7EF9D
  %82 = tail call double @llvm.fmuladd.f64(double %mul1254, double -2.750000e+00, double %neg1258)
  %sub1259 = fadd double %82, -4.537500e+01
  %arrayidx1261 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %p, i64 0, i64 4, i64 4
  store double %sub1259, double* %arrayidx1261, align 16, !tbaa !7
  %idxprom12673537 = zext i32 %12 to i64
  %arrayidx1268 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %16, i64 %idxprom, i64 %idxprom30, i64 %idxprom12673537
  %83 = load double, double* %arrayidx1268, align 8, !tbaa !7
  %mul1269 = fmul double %83, %83
  %mul1270 = fmul double %83, %mul1269
  %arrayidx1272 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 0, i64 0
  store double -4.537500e+01, double* %arrayidx1272, align 16, !tbaa !7
  %arrayidx1274 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 1, i64 0
  store double -2.750000e+00, double* %arrayidx1274, align 8, !tbaa !7
  %arrayidx1276 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 2, i64 0
  store double 0.000000e+00, double* %arrayidx1276, align 16, !tbaa !7
  %arrayidx1278 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 3, i64 0
  store double 0.000000e+00, double* %arrayidx1278, align 8, !tbaa !7
  %arrayidx1280 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx1280, align 16, !tbaa !7
  %arrayidx1288 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom12673537, i64 1
  %84 = load double, double* %arrayidx1288, align 8, !tbaa !7
  %mul1289 = fmul double %83, %84
  %fneg1290 = fneg double %mul1289
  %arrayidx1307 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %15, i64 %idxprom, i64 %idxprom30, i64 %idxprom12673537
  %85 = load double, double* %arrayidx1307, align 8, !tbaa !7
  %mul1308 = fmul double %85, 4.000000e-01
  %mul1309 = fmul double %83, %mul1308
  %86 = tail call double @llvm.fmuladd.f64(double %fneg1290, double %mul1289, double %mul1309)
  %mul1313 = fmul double %mul1269, 0xBFC1111111111111
  %mul1322 = fmul double %mul1313, %84
  %neg1324 = fmul double %mul1322, -6.050000e+01
  %87 = tail call double @llvm.fmuladd.f64(double %86, double -2.750000e+00, double %neg1324)
  %arrayidx1326 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 0, i64 1
  store double %87, double* %arrayidx1326, align 8, !tbaa !7
  %mul1336 = fmul double %mul1289, 1.600000e+00
  %mul1339 = fmul double %83, 0x3FC1111111111111
  %neg1341 = fmul double %mul1339, -6.050000e+01
  %88 = tail call double @llvm.fmuladd.f64(double %mul1336, double -2.750000e+00, double %neg1341)
  %sub1342 = fadd double %88, -4.537500e+01
  %arrayidx1344 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 1, i64 1
  store double %sub1342, double* %arrayidx1344, align 8, !tbaa !7
  %arrayidx1352 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom12673537, i64 2
  %89 = load double, double* %arrayidx1352, align 8, !tbaa !7
  %mul1353 = fmul double %83, %89
  %mul1354 = fmul double %mul1353, -4.000000e-01
  %mul1355 = fmul double %mul1354, -2.750000e+00
  %arrayidx1357 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 2, i64 1
  store double %mul1355, double* %arrayidx1357, align 8, !tbaa !7
  %arrayidx1365 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom12673537, i64 3
  %90 = load double, double* %arrayidx1365, align 8, !tbaa !7
  %mul1366 = fmul double %83, %90
  %mul1367 = fmul double %mul1366, -4.000000e-01
  %mul1368 = fmul double %mul1367, -2.750000e+00
  %arrayidx1370 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 3, i64 1
  store double %mul1368, double* %arrayidx1370, align 8, !tbaa !7
  %arrayidx1372 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 4, i64 1
  store double -1.100000e+00, double* %arrayidx1372, align 8, !tbaa !7
  %91 = fneg double %84
  %fneg1390 = fmul double %89, %91
  %mul1391 = fmul double %mul1269, %fneg1390
  %mul1394 = fmul double %mul1269, -1.000000e-01
  %mul1403 = fmul double %mul1394, %89
  %neg1405 = fmul double %mul1403, -6.050000e+01
  %92 = tail call double @llvm.fmuladd.f64(double %mul1391, double -2.750000e+00, double %neg1405)
  %arrayidx1407 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 0, i64 2
  store double %92, double* %arrayidx1407, align 16, !tbaa !7
  %mul1417 = fmul double %mul1353, -2.750000e+00
  %arrayidx1419 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 1, i64 2
  store double %mul1417, double* %arrayidx1419, align 8, !tbaa !7
  %mul1430 = fmul double %83, 1.000000e-01
  %neg1432 = fmul double %mul1430, -6.050000e+01
  %93 = tail call double @llvm.fmuladd.f64(double %mul1289, double -2.750000e+00, double %neg1432)
  %sub1433 = fadd double %93, -4.537500e+01
  %arrayidx1435 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 2, i64 2
  store double %sub1433, double* %arrayidx1435, align 16, !tbaa !7
  %arrayidx1437 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 3, i64 2
  store double 0.000000e+00, double* %arrayidx1437, align 8, !tbaa !7
  %arrayidx1439 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 4, i64 2
  store double 0.000000e+00, double* %arrayidx1439, align 16, !tbaa !7
  %fneg1457 = fmul double %90, %91
  %mul1458 = fmul double %mul1269, %fneg1457
  %mul1470 = fmul double %mul1394, %90
  %neg1472 = fmul double %mul1470, -6.050000e+01
  %94 = tail call double @llvm.fmuladd.f64(double %mul1458, double -2.750000e+00, double %neg1472)
  %arrayidx1474 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 0, i64 3
  store double %94, double* %arrayidx1474, align 8, !tbaa !7
  %mul1484 = fmul double %mul1366, -2.750000e+00
  %arrayidx1486 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 1, i64 3
  store double %mul1484, double* %arrayidx1486, align 8, !tbaa !7
  %arrayidx1488 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 2, i64 3
  store double 0.000000e+00, double* %arrayidx1488, align 8, !tbaa !7
  %arrayidx1504 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 3, i64 3
  store double %sub1433, double* %arrayidx1504, align 8, !tbaa !7
  %arrayidx1506 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 4, i64 3
  store double 0.000000e+00, double* %arrayidx1506, align 8, !tbaa !7
  %arrayidx1522 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom30, i64 %idxprom12673537, i64 4
  %95 = load double, double* %arrayidx1522, align 8, !tbaa !7
  %neg1524 = fmul double %95, -1.400000e+00
  %96 = tail call double @llvm.fmuladd.f64(double %85, double 8.000000e-01, double %neg1524)
  %mul1533 = fmul double %84, %96
  %mul1534 = fmul double %mul1269, %mul1533
  %mul1539 = fmul double %mul1270, 0x3FB00AEC33E1F670
  %mul1556 = fmul double %84, %84
  %mul1559 = fmul double %mul1270, 0xBFB89374BC6A7EF8
  %mul1576 = fmul double %89, %89
  %97 = fneg double %mul1559
  %neg1578 = fmul double %mul1576, %97
  %98 = tail call double @llvm.fmuladd.f64(double %mul1539, double %mul1556, double %neg1578)
  %mul1597 = fmul double %90, %90
  %neg1599 = fsub double -0.000000e+00, %mul1559
  %99 = tail call double @llvm.fmuladd.f64(double %neg1599, double %mul1597, double %98)
  %neg1610 = fmul double %mul1269, 0xBFC916872B020C49
  %100 = tail call double @llvm.fmuladd.f64(double %neg1610, double %95, double %99)
  %neg1612 = fmul double %100, -6.050000e+01
  %101 = tail call double @llvm.fmuladd.f64(double %mul1534, double -2.750000e+00, double %neg1612)
  %arrayidx1614 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 0, i64 4
  store double %101, double* %arrayidx1614, align 16, !tbaa !7
  %mul1623 = fmul double %83, %95
  %mul1650 = fmul double %83, %85
  %102 = tail call double @llvm.fmuladd.f64(double %mul1556, double %mul1269, double %mul1650)
  %neg1652 = fmul double %102, -4.000000e-01
  %103 = tail call double @llvm.fmuladd.f64(double %mul1623, double 1.400000e+00, double %neg1652)
  %104 = fmul double %mul1269, 0x400E54A6921735EC
  %neg1667 = fmul double %104, %84
  %105 = tail call double @llvm.fmuladd.f64(double %103, double -2.750000e+00, double %neg1667)
  %arrayidx1669 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 1, i64 4
  store double %105, double* %arrayidx1669, align 8, !tbaa !7
  %mul1686 = fmul double %84, %89
  %mul1687 = fmul double %mul1686, -4.000000e-01
  %mul1688 = fmul double %mul1269, %mul1687
  %106 = fmul double %mul1269, 0x40173B645A1CAC06
  %neg1702 = fmul double %106, %89
  %107 = tail call double @llvm.fmuladd.f64(double %mul1688, double -2.750000e+00, double %neg1702)
  %arrayidx1704 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 2, i64 4
  store double %107, double* %arrayidx1704, align 16, !tbaa !7
  %mul1721 = fmul double %84, %90
  %mul1722 = fmul double %mul1721, -4.000000e-01
  %mul1723 = fmul double %mul1269, %mul1722
  %neg1737 = fmul double %106, %90
  %108 = tail call double @llvm.fmuladd.f64(double %mul1723, double -2.750000e+00, double %neg1737)
  %arrayidx1739 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 3, i64 4
  store double %108, double* %arrayidx1739, align 8, !tbaa !7
  %mul1749 = fmul double %mul1289, 1.400000e+00
  %neg1753 = fmul double %83, 0xC027B74BC6A7EF9D
  %109 = tail call double @llvm.fmuladd.f64(double %mul1749, double -2.750000e+00, double %neg1753)
  %sub1754 = fadd double %109, -4.537500e+01
  %arrayidx1756 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %q, i64 0, i64 4, i64 4
  store double %sub1754, double* %arrayidx1756, align 16, !tbaa !7
  %arrayidx1777 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom275, i64 %idxprom30, i64 %idxprom323536, i64 0
  %110 = load double, double* %arrayidx1777, align 8, !tbaa !7
  %arrayidx1789 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom275, i64 %idxprom30, i64 %idxprom323536, i64 1
  %111 = load double, double* %arrayidx1789, align 8, !tbaa !7
  %arrayidx1801 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom275, i64 %idxprom30, i64 %idxprom323536, i64 2
  %112 = load double, double* %arrayidx1801, align 8, !tbaa !7
  %arrayidx1813 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom275, i64 %idxprom30, i64 %idxprom323536, i64 3
  %113 = load double, double* %arrayidx1813, align 8, !tbaa !7
  %arrayidx1825 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom275, i64 %idxprom30, i64 %idxprom323536, i64 4
  %114 = load double, double* %arrayidx1825, align 8, !tbaa !7
  %arrayidx1766 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom323536, i64 0
  %115 = load double, double* %arrayidx1766, align 8, !tbaa !7
  %116 = load double, double* %arrayidx284, align 16, !tbaa !7
  %117 = load double, double* %arrayidx286, align 8, !tbaa !7
  %mul1790 = fmul double %117, %111
  %118 = tail call double @llvm.fmuladd.f64(double %116, double %110, double %mul1790)
  %119 = load double, double* %arrayidx288, align 16, !tbaa !7
  %120 = tail call double @llvm.fmuladd.f64(double %119, double %112, double %118)
  %121 = load double, double* %arrayidx290, align 8, !tbaa !7
  %122 = tail call double @llvm.fmuladd.f64(double %121, double %113, double %120)
  %123 = load double, double* %arrayidx292, align 16, !tbaa !7
  %124 = tail call double @llvm.fmuladd.f64(double %123, double %114, double %122)
  %125 = tail call double @llvm.fmuladd.f64(double %124, double -1.200000e+00, double %115)
  %arrayidx1829 = getelementptr inbounds [5 x double], [5 x double]* %aa, i64 0, i64 0
  store double %125, double* %arrayidx1829, align 16, !tbaa !7
  %arrayidx1766.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom323536, i64 1
  %126 = load double, double* %arrayidx1766.1, align 8, !tbaa !7
  %127 = load double, double* %arrayidx326, align 8, !tbaa !7
  %128 = load double, double* %arrayidx342, align 8, !tbaa !7
  %mul1790.1 = fmul double %128, %111
  %129 = tail call double @llvm.fmuladd.f64(double %127, double %110, double %mul1790.1)
  %130 = load double, double* %arrayidx344, align 8, !tbaa !7
  %131 = tail call double @llvm.fmuladd.f64(double %130, double %112, double %129)
  %132 = load double, double* %arrayidx356, align 8, !tbaa !7
  %133 = tail call double @llvm.fmuladd.f64(double %132, double %113, double %131)
  %134 = load double, double* %arrayidx358, align 8, !tbaa !7
  %135 = tail call double @llvm.fmuladd.f64(double %134, double %114, double %133)
  %136 = tail call double @llvm.fmuladd.f64(double %135, double -1.200000e+00, double %126)
  %arrayidx1829.1 = getelementptr inbounds [5 x double], [5 x double]* %aa, i64 0, i64 1
  store double %136, double* %arrayidx1829.1, align 8, !tbaa !7
  %arrayidx1766.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom323536, i64 2
  %137 = load double, double* %arrayidx1766.2, align 8, !tbaa !7
  %138 = load double, double* %arrayidx393, align 16, !tbaa !7
  %139 = load double, double* %arrayidx395, align 8, !tbaa !7
  %mul1790.2 = fmul double %139, %111
  %140 = tail call double @llvm.fmuladd.f64(double %138, double %110, double %mul1790.2)
  %141 = load double, double* %arrayidx411, align 16, !tbaa !7
  %142 = tail call double @llvm.fmuladd.f64(double %141, double %112, double %140)
  %143 = load double, double* %arrayidx423, align 8, !tbaa !7
  %144 = tail call double @llvm.fmuladd.f64(double %143, double %113, double %142)
  %145 = load double, double* %arrayidx425, align 16, !tbaa !7
  %146 = tail call double @llvm.fmuladd.f64(double %145, double %114, double %144)
  %147 = tail call double @llvm.fmuladd.f64(double %146, double -1.200000e+00, double %137)
  %arrayidx1829.2 = getelementptr inbounds [5 x double], [5 x double]* %aa, i64 0, i64 2
  store double %147, double* %arrayidx1829.2, align 16, !tbaa !7
  %arrayidx1766.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom323536, i64 3
  %148 = load double, double* %arrayidx1766.3, align 8, !tbaa !7
  %149 = load double, double* %arrayidx471, align 8, !tbaa !7
  %150 = load double, double* %arrayidx484, align 8, !tbaa !7
  %mul1790.3 = fmul double %150, %111
  %151 = tail call double @llvm.fmuladd.f64(double %149, double %110, double %mul1790.3)
  %152 = load double, double* %arrayidx497, align 8, !tbaa !7
  %153 = tail call double @llvm.fmuladd.f64(double %152, double %112, double %151)
  %154 = load double, double* %arrayidx514, align 8, !tbaa !7
  %155 = tail call double @llvm.fmuladd.f64(double %154, double %113, double %153)
  %156 = load double, double* %arrayidx516, align 8, !tbaa !7
  %157 = tail call double @llvm.fmuladd.f64(double %156, double %114, double %155)
  %158 = tail call double @llvm.fmuladd.f64(double %157, double -1.200000e+00, double %148)
  %arrayidx1829.3 = getelementptr inbounds [5 x double], [5 x double]* %aa, i64 0, i64 3
  store double %158, double* %arrayidx1829.3, align 8, !tbaa !7
  %arrayidx1766.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom323536, i64 4
  %159 = load double, double* %arrayidx1766.4, align 8, !tbaa !7
  %160 = load double, double* %arrayidx624, align 16, !tbaa !7
  %161 = load double, double* %arrayidx659, align 8, !tbaa !7
  %mul1790.4 = fmul double %161, %111
  %162 = tail call double @llvm.fmuladd.f64(double %160, double %110, double %mul1790.4)
  %163 = load double, double* %arrayidx694, align 16, !tbaa !7
  %164 = tail call double @llvm.fmuladd.f64(double %163, double %112, double %162)
  %165 = load double, double* %arrayidx749, align 8, !tbaa !7
  %166 = tail call double @llvm.fmuladd.f64(double %165, double %113, double %164)
  %167 = load double, double* %arrayidx766, align 16, !tbaa !7
  %168 = tail call double @llvm.fmuladd.f64(double %167, double %114, double %166)
  %169 = tail call double @llvm.fmuladd.f64(double %168, double -1.200000e+00, double %159)
  %arrayidx1829.4 = getelementptr inbounds [5 x double], [5 x double]* %aa, i64 0, i64 4
  store double %169, double* %arrayidx1829.4, align 16, !tbaa !7
  %arrayidx1846 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom770, i64 %idxprom323536, i64 0
  %170 = load double, double* %arrayidx1846, align 8, !tbaa !7
  %arrayidx1858 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom12673537, i64 0
  %171 = load double, double* %arrayidx1858, align 8, !tbaa !7
  %arrayidx1870 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom770, i64 %idxprom323536, i64 1
  %172 = load double, double* %arrayidx1870, align 8, !tbaa !7
  %arrayidx1882 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom12673537, i64 1
  %173 = load double, double* %arrayidx1882, align 8, !tbaa !7
  %arrayidx1894 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom770, i64 %idxprom323536, i64 2
  %174 = load double, double* %arrayidx1894, align 8, !tbaa !7
  %arrayidx1906 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom12673537, i64 2
  %175 = load double, double* %arrayidx1906, align 8, !tbaa !7
  %arrayidx1918 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom770, i64 %idxprom323536, i64 3
  %176 = load double, double* %arrayidx1918, align 8, !tbaa !7
  %arrayidx1930 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom12673537, i64 3
  %177 = load double, double* %arrayidx1930, align 8, !tbaa !7
  %arrayidx1942 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom770, i64 %idxprom323536, i64 4
  %178 = load double, double* %arrayidx1942, align 8, !tbaa !7
  %arrayidx1954 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom30, i64 %idxprom12673537, i64 4
  %179 = load double, double* %arrayidx1954, align 8, !tbaa !7
  %180 = load double, double* %arrayidx777, align 16, !tbaa !7
  %181 = load double, double* %arrayidx1272, align 16, !tbaa !7
  %mul1859 = fmul double %181, %171
  %182 = tail call double @llvm.fmuladd.f64(double %180, double %170, double %mul1859)
  %183 = load double, double* %arrayidx779, align 8, !tbaa !7
  %184 = tail call double @llvm.fmuladd.f64(double %183, double %172, double %182)
  %185 = load double, double* %arrayidx1274, align 8, !tbaa !7
  %186 = tail call double @llvm.fmuladd.f64(double %185, double %173, double %184)
  %187 = load double, double* %arrayidx781, align 16, !tbaa !7
  %188 = tail call double @llvm.fmuladd.f64(double %187, double %174, double %186)
  %189 = load double, double* %arrayidx1276, align 16, !tbaa !7
  %190 = tail call double @llvm.fmuladd.f64(double %189, double %175, double %188)
  %191 = load double, double* %arrayidx783, align 8, !tbaa !7
  %192 = tail call double @llvm.fmuladd.f64(double %191, double %176, double %190)
  %193 = load double, double* %arrayidx1278, align 8, !tbaa !7
  %194 = tail call double @llvm.fmuladd.f64(double %193, double %177, double %192)
  %195 = load double, double* %arrayidx785, align 16, !tbaa !7
  %196 = tail call double @llvm.fmuladd.f64(double %195, double %178, double %194)
  %197 = load double, double* %arrayidx1280, align 16, !tbaa !7
  %198 = tail call double @llvm.fmuladd.f64(double %197, double %179, double %196)
  %199 = tail call double @llvm.fmuladd.f64(double %198, double -1.200000e+00, double %125)
  store double %199, double* %arrayidx1829, align 16, !tbaa !7
  %200 = load double, double* %arrayidx820, align 8, !tbaa !7
  %201 = load double, double* %arrayidx1326, align 8, !tbaa !7
  %mul1859.1 = fmul double %201, %171
  %202 = tail call double @llvm.fmuladd.f64(double %200, double %170, double %mul1859.1)
  %203 = load double, double* %arrayidx836, align 8, !tbaa !7
  %204 = tail call double @llvm.fmuladd.f64(double %203, double %172, double %202)
  %205 = load double, double* %arrayidx1344, align 8, !tbaa !7
  %206 = tail call double @llvm.fmuladd.f64(double %205, double %173, double %204)
  %207 = load double, double* %arrayidx848, align 8, !tbaa !7
  %208 = tail call double @llvm.fmuladd.f64(double %207, double %174, double %206)
  %209 = load double, double* %arrayidx1357, align 8, !tbaa !7
  %210 = tail call double @llvm.fmuladd.f64(double %209, double %175, double %208)
  %211 = load double, double* %arrayidx850, align 8, !tbaa !7
  %212 = tail call double @llvm.fmuladd.f64(double %211, double %176, double %210)
  %213 = load double, double* %arrayidx1370, align 8, !tbaa !7
  %214 = tail call double @llvm.fmuladd.f64(double %213, double %177, double %212)
  %215 = load double, double* %arrayidx852, align 8, !tbaa !7
  %216 = tail call double @llvm.fmuladd.f64(double %215, double %178, double %214)
  %217 = load double, double* %arrayidx1372, align 8, !tbaa !7
  %218 = tail call double @llvm.fmuladd.f64(double %217, double %179, double %216)
  %219 = tail call double @llvm.fmuladd.f64(double %218, double -1.200000e+00, double %136)
  store double %219, double* %arrayidx1829.1, align 8, !tbaa !7
  %220 = load double, double* %arrayidx898, align 16, !tbaa !7
  %221 = load double, double* %arrayidx1407, align 16, !tbaa !7
  %mul1859.2 = fmul double %221, %171
  %222 = tail call double @llvm.fmuladd.f64(double %220, double %170, double %mul1859.2)
  %223 = load double, double* %arrayidx911, align 8, !tbaa !7
  %224 = tail call double @llvm.fmuladd.f64(double %223, double %172, double %222)
  %225 = load double, double* %arrayidx1419, align 8, !tbaa !7
  %226 = tail call double @llvm.fmuladd.f64(double %225, double %173, double %224)
  %227 = load double, double* %arrayidx929, align 16, !tbaa !7
  %228 = tail call double @llvm.fmuladd.f64(double %227, double %174, double %226)
  %229 = load double, double* %arrayidx1435, align 16, !tbaa !7
  %230 = tail call double @llvm.fmuladd.f64(double %229, double %175, double %228)
  %231 = load double, double* %arrayidx942, align 8, !tbaa !7
  %232 = tail call double @llvm.fmuladd.f64(double %231, double %176, double %230)
  %233 = load double, double* %arrayidx1437, align 8, !tbaa !7
  %234 = tail call double @llvm.fmuladd.f64(double %233, double %177, double %232)
  %235 = load double, double* %arrayidx944, align 16, !tbaa !7
  %236 = tail call double @llvm.fmuladd.f64(double %235, double %178, double %234)
  %237 = load double, double* %arrayidx1439, align 16, !tbaa !7
  %238 = tail call double @llvm.fmuladd.f64(double %237, double %179, double %236)
  %239 = tail call double @llvm.fmuladd.f64(double %238, double -1.200000e+00, double %147)
  store double %239, double* %arrayidx1829.2, align 16, !tbaa !7
  %240 = load double, double* %arrayidx1829.3, align 8, !tbaa !7
  %241 = load double, double* %arrayidx979, align 8, !tbaa !7
  %242 = load double, double* %arrayidx1474, align 8, !tbaa !7
  %mul1859.3 = fmul double %242, %171
  %243 = tail call double @llvm.fmuladd.f64(double %241, double %170, double %mul1859.3)
  %244 = load double, double* %arrayidx981, align 8, !tbaa !7
  %245 = tail call double @llvm.fmuladd.f64(double %244, double %172, double %243)
  %246 = load double, double* %arrayidx1486, align 8, !tbaa !7
  %247 = tail call double @llvm.fmuladd.f64(double %246, double %173, double %245)
  %248 = load double, double* %arrayidx993, align 8, !tbaa !7
  %249 = tail call double @llvm.fmuladd.f64(double %248, double %174, double %247)
  %250 = load double, double* %arrayidx1488, align 8, !tbaa !7
  %251 = tail call double @llvm.fmuladd.f64(double %250, double %175, double %249)
  %252 = load double, double* %arrayidx1009, align 8, !tbaa !7
  %253 = tail call double @llvm.fmuladd.f64(double %252, double %176, double %251)
  %254 = load double, double* %arrayidx1504, align 8, !tbaa !7
  %255 = tail call double @llvm.fmuladd.f64(double %254, double %177, double %253)
  %256 = load double, double* %arrayidx1011, align 8, !tbaa !7
  %257 = tail call double @llvm.fmuladd.f64(double %256, double %178, double %255)
  %258 = load double, double* %arrayidx1506, align 8, !tbaa !7
  %259 = tail call double @llvm.fmuladd.f64(double %258, double %179, double %257)
  %260 = tail call double @llvm.fmuladd.f64(double %259, double -1.200000e+00, double %240)
  store double %260, double* %arrayidx1829.3, align 8, !tbaa !7
  %261 = load double, double* %arrayidx1829.4, align 16, !tbaa !7
  %262 = load double, double* %arrayidx1119, align 16, !tbaa !7
  %263 = load double, double* %arrayidx1614, align 16, !tbaa !7
  %mul1859.4 = fmul double %263, %171
  %264 = tail call double @llvm.fmuladd.f64(double %262, double %170, double %mul1859.4)
  %265 = load double, double* %arrayidx1154, align 8, !tbaa !7
  %266 = tail call double @llvm.fmuladd.f64(double %265, double %172, double %264)
  %267 = load double, double* %arrayidx1669, align 8, !tbaa !7
  %268 = tail call double @llvm.fmuladd.f64(double %267, double %173, double %266)
  %269 = load double, double* %arrayidx1209, align 16, !tbaa !7
  %270 = tail call double @llvm.fmuladd.f64(double %269, double %174, double %268)
  %271 = load double, double* %arrayidx1704, align 16, !tbaa !7
  %272 = tail call double @llvm.fmuladd.f64(double %271, double %175, double %270)
  %273 = load double, double* %arrayidx1244, align 8, !tbaa !7
  %274 = tail call double @llvm.fmuladd.f64(double %273, double %176, double %272)
  %275 = load double, double* %arrayidx1739, align 8, !tbaa !7
  %276 = tail call double @llvm.fmuladd.f64(double %275, double %177, double %274)
  %277 = load double, double* %arrayidx1261, align 16, !tbaa !7
  %278 = tail call double @llvm.fmuladd.f64(double %277, double %178, double %276)
  %279 = load double, double* %arrayidx1756, align 16, !tbaa !7
  %280 = tail call double @llvm.fmuladd.f64(double %279, double %179, double %278)
  %281 = tail call double @llvm.fmuladd.f64(double %280, double -1.200000e+00, double %261)
  store double %281, double* %arrayidx1829.4, align 16, !tbaa !7
  %282 = bitcast [5 x [5 x double]]* %r to i64*
  %283 = load i64, i64* %282, align 16, !tbaa !7
  %284 = bitcast [5 x [5 x double]]* %z to i64*
  store i64 %283, i64* %284, align 16, !tbaa !7
  %285 = bitcast double* %arrayidx38 to i64*
  %286 = load i64, i64* %285, align 8, !tbaa !7
  %arrayidx1977 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 0, i64 1
  %287 = bitcast double* %arrayidx1977 to i64*
  store i64 %286, i64* %287, align 8, !tbaa !7
  %288 = bitcast double* %arrayidx40 to i64*
  %289 = load i64, i64* %288, align 16, !tbaa !7
  %arrayidx1983 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 0, i64 2
  %290 = bitcast double* %arrayidx1983 to i64*
  store i64 %289, i64* %290, align 16, !tbaa !7
  %291 = bitcast double* %arrayidx42 to i64*
  %292 = load i64, i64* %291, align 8, !tbaa !7
  %arrayidx1989 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 0, i64 3
  %293 = bitcast double* %arrayidx1989 to i64*
  store i64 %292, i64* %293, align 8, !tbaa !7
  %294 = bitcast double* %arrayidx44 to i64*
  %295 = load i64, i64* %294, align 16, !tbaa !7
  %arrayidx1995 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 0, i64 4
  %296 = bitcast double* %arrayidx1995 to i64*
  store i64 %295, i64* %296, align 16, !tbaa !7
  %297 = bitcast double* %arrayidx59 to i64*
  %298 = load i64, i64* %297, align 8, !tbaa !7
  %arrayidx1970.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 1
  %299 = bitcast [5 x double]* %arrayidx1970.1 to i64*
  store i64 %298, i64* %299, align 8, !tbaa !7
  %300 = bitcast double* %arrayidx67 to i64*
  %301 = load i64, i64* %300, align 8, !tbaa !7
  %arrayidx1977.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 1, i64 1
  %302 = bitcast double* %arrayidx1977.1 to i64*
  store i64 %301, i64* %302, align 8, !tbaa !7
  %303 = bitcast double* %arrayidx69 to i64*
  %304 = load i64, i64* %303, align 8, !tbaa !7
  %arrayidx1983.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 1, i64 2
  %305 = bitcast double* %arrayidx1983.1 to i64*
  store i64 %304, i64* %305, align 8, !tbaa !7
  %306 = load double, double* %arrayidx71, align 8, !tbaa !7
  %arrayidx1989.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 1, i64 3
  %307 = load double, double* %arrayidx73, align 8, !tbaa !7
  %arrayidx1995.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 1, i64 4
  %308 = bitcast double* %arrayidx88 to i64*
  %309 = load i64, i64* %308, align 16, !tbaa !7
  %arrayidx1970.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 2
  %310 = bitcast [5 x double]* %arrayidx1970.2 to i64*
  store i64 %309, i64* %310, align 16, !tbaa !7
  %311 = bitcast double* %arrayidx90 to i64*
  %312 = load i64, i64* %311, align 8, !tbaa !7
  %arrayidx1977.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 2, i64 1
  %313 = bitcast double* %arrayidx1977.2 to i64*
  store i64 %312, i64* %313, align 8, !tbaa !7
  %314 = load double, double* %arrayidx98, align 16, !tbaa !7
  %arrayidx1983.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 2, i64 2
  %315 = load double, double* %arrayidx100, align 8, !tbaa !7
  %arrayidx1989.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 2, i64 3
  %316 = load double, double* %arrayidx102, align 16, !tbaa !7
  %arrayidx1995.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 2, i64 4
  %317 = bitcast double* %arrayidx116 to i64*
  %318 = load i64, i64* %317, align 8, !tbaa !7
  %arrayidx1970.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 3
  %319 = bitcast [5 x double]* %arrayidx1970.3 to i64*
  store i64 %318, i64* %319, align 8, !tbaa !7
  %320 = load double, double* %arrayidx118, align 8, !tbaa !7
  %arrayidx1977.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 3, i64 1
  %321 = load double, double* %arrayidx120, align 8, !tbaa !7
  %arrayidx1983.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 3, i64 2
  %322 = load double, double* %arrayidx127, align 8, !tbaa !7
  %arrayidx1989.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 3, i64 3
  %323 = load double, double* %arrayidx129, align 8, !tbaa !7
  %arrayidx1995.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 3, i64 4
  %324 = bitcast double* %arrayidx211 to i64*
  %325 = load i64, i64* %324, align 16, !tbaa !7
  %arrayidx1970.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 4
  %326 = bitcast [5 x double]* %arrayidx1970.4 to i64*
  store i64 %325, i64* %326, align 16, !tbaa !7
  %327 = load double, double* %arrayidx230, align 8, !tbaa !7
  %arrayidx1977.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 4, i64 1
  %328 = load double, double* %arrayidx249, align 16, !tbaa !7
  %arrayidx1983.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 4, i64 2
  %329 = load double, double* %arrayidx268, align 8, !tbaa !7
  %arrayidx1989.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 4, i64 3
  %330 = load double, double* %arrayidx273, align 16, !tbaa !7
  %arrayidx1995.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 4, i64 4
  %arrayidx2000 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 0, i64 0
  %331 = load double, double* %arrayidx2000, align 16, !tbaa !7
  %div = fdiv double 1.000000e+00, %331
  %arrayidx2002 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 1, i64 0
  %332 = load double, double* %arrayidx2002, align 8, !tbaa !7
  %mul2003 = fmul double %div, %332
  %333 = bitcast i64 %301 to double
  %334 = load double, double* %arrayidx1977, align 8, !tbaa !7
  %neg2009 = fsub double -0.000000e+00, %mul2003
  %335 = tail call double @llvm.fmuladd.f64(double %neg2009, double %334, double %333)
  store double %335, double* %arrayidx1977.1, align 8, !tbaa !7
  %336 = bitcast i64 %304 to double
  %337 = load double, double* %arrayidx1983, align 16, !tbaa !7
  %338 = tail call double @llvm.fmuladd.f64(double %neg2009, double %337, double %336)
  store double %338, double* %arrayidx1983.1, align 8, !tbaa !7
  %339 = load double, double* %arrayidx1989, align 8, !tbaa !7
  %340 = tail call double @llvm.fmuladd.f64(double %neg2009, double %339, double %306)
  store double %340, double* %arrayidx1989.1, align 8, !tbaa !7
  %341 = load double, double* %arrayidx1995, align 16, !tbaa !7
  %342 = tail call double @llvm.fmuladd.f64(double %neg2009, double %341, double %307)
  store double %342, double* %arrayidx1995.1, align 8, !tbaa !7
  %343 = load double, double* %arrayidx1829.1, align 8, !tbaa !7
  %344 = load double, double* %arrayidx1829, align 16, !tbaa !7
  %neg2039 = fsub double -0.000000e+00, %344
  %345 = tail call double @llvm.fmuladd.f64(double %neg2039, double %mul2003, double %343)
  store double %345, double* %arrayidx1829.1, align 8, !tbaa !7
  %arrayidx2042 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %z, i64 0, i64 2, i64 0
  %346 = load double, double* %arrayidx2042, align 16, !tbaa !7
  %mul2043 = fmul double %div, %346
  %347 = bitcast i64 %312 to double
  %neg2049 = fsub double -0.000000e+00, %mul2043
  %348 = tail call double @llvm.fmuladd.f64(double %neg2049, double %334, double %347)
  store double %348, double* %arrayidx1977.2, align 8, !tbaa !7
  %349 = tail call double @llvm.fmuladd.f64(double %neg2049, double %337, double %314)
  %350 = tail call double @llvm.fmuladd.f64(double %neg2049, double %339, double %315)
  %351 = tail call double @llvm.fmuladd.f64(double %neg2049, double %341, double %316)
  %352 = load double, double* %arrayidx1829.2, align 16, !tbaa !7
  %353 = tail call double @llvm.fmuladd.f64(double %neg2039, double %mul2043, double %352)
  %354 = bitcast i64 %318 to double
  %mul2083 = fmul double %div, %354
  %neg2089 = fsub double -0.000000e+00, %mul2083
  %355 = tail call double @llvm.fmuladd.f64(double %neg2089, double %334, double %320)
  store double %355, double* %arrayidx1977.3, align 8, !tbaa !7
  %356 = tail call double @llvm.fmuladd.f64(double %neg2089, double %337, double %321)
  %357 = tail call double @llvm.fmuladd.f64(double %neg2089, double %339, double %322)
  %358 = tail call double @llvm.fmuladd.f64(double %neg2089, double %341, double %323)
  %359 = load double, double* %arrayidx1829.3, align 8, !tbaa !7
  %360 = tail call double @llvm.fmuladd.f64(double %neg2039, double %mul2083, double %359)
  %361 = bitcast i64 %325 to double
  %mul2123 = fmul double %div, %361
  %neg2129 = fsub double -0.000000e+00, %mul2123
  %362 = tail call double @llvm.fmuladd.f64(double %neg2129, double %334, double %327)
  store double %362, double* %arrayidx1977.4, align 8, !tbaa !7
  %363 = tail call double @llvm.fmuladd.f64(double %neg2129, double %337, double %328)
  %364 = tail call double @llvm.fmuladd.f64(double %neg2129, double %339, double %329)
  %365 = tail call double @llvm.fmuladd.f64(double %neg2129, double %341, double %330)
  %366 = load double, double* %arrayidx1829.4, align 16, !tbaa !7
  %367 = tail call double @llvm.fmuladd.f64(double %neg2039, double %mul2123, double %366)
  %div2163 = fdiv double 1.000000e+00, %335
  %mul2166 = fmul double %div2163, %348
  %neg2172 = fsub double -0.000000e+00, %mul2166
  %368 = tail call double @llvm.fmuladd.f64(double %neg2172, double %338, double %349)
  store double %368, double* %arrayidx1983.2, align 16, !tbaa !7
  %369 = tail call double @llvm.fmuladd.f64(double %neg2172, double %340, double %350)
  store double %369, double* %arrayidx1989.2, align 8, !tbaa !7
  %370 = tail call double @llvm.fmuladd.f64(double %neg2172, double %342, double %351)
  store double %370, double* %arrayidx1995.2, align 16, !tbaa !7
  %neg2194 = fsub double -0.000000e+00, %345
  %371 = tail call double @llvm.fmuladd.f64(double %neg2194, double %mul2166, double %353)
  %mul2198 = fmul double %div2163, %355
  %neg2204 = fsub double -0.000000e+00, %mul2198
  %372 = tail call double @llvm.fmuladd.f64(double %neg2204, double %338, double %356)
  store double %372, double* %arrayidx1983.3, align 8, !tbaa !7
  %373 = tail call double @llvm.fmuladd.f64(double %neg2204, double %340, double %357)
  %374 = tail call double @llvm.fmuladd.f64(double %neg2204, double %342, double %358)
  %375 = tail call double @llvm.fmuladd.f64(double %neg2194, double %mul2198, double %360)
  %mul2230 = fmul double %div2163, %362
  %neg2236 = fsub double -0.000000e+00, %mul2230
  %376 = tail call double @llvm.fmuladd.f64(double %neg2236, double %338, double %363)
  store double %376, double* %arrayidx1983.4, align 16, !tbaa !7
  %377 = tail call double @llvm.fmuladd.f64(double %neg2236, double %340, double %364)
  %378 = tail call double @llvm.fmuladd.f64(double %neg2236, double %342, double %365)
  %379 = tail call double @llvm.fmuladd.f64(double %neg2194, double %mul2230, double %367)
  %div2262 = fdiv double 1.000000e+00, %368
  %mul2265 = fmul double %div2262, %372
  %neg2271 = fsub double -0.000000e+00, %mul2265
  %380 = tail call double @llvm.fmuladd.f64(double %neg2271, double %369, double %373)
  store double %380, double* %arrayidx1989.3, align 8, !tbaa !7
  %381 = tail call double @llvm.fmuladd.f64(double %neg2271, double %370, double %374)
  store double %381, double* %arrayidx1995.3, align 8, !tbaa !7
  %neg2285 = fsub double -0.000000e+00, %371
  %382 = tail call double @llvm.fmuladd.f64(double %neg2285, double %mul2265, double %375)
  %mul2289 = fmul double %div2262, %376
  %neg2295 = fsub double -0.000000e+00, %mul2289
  %383 = tail call double @llvm.fmuladd.f64(double %neg2295, double %369, double %377)
  store double %383, double* %arrayidx1989.4, align 8, !tbaa !7
  %384 = tail call double @llvm.fmuladd.f64(double %neg2295, double %370, double %378)
  %385 = tail call double @llvm.fmuladd.f64(double %neg2285, double %mul2289, double %379)
  %div2313 = fdiv double 1.000000e+00, %380
  %mul2316 = fmul double %div2313, %383
  %neg2322 = fsub double -0.000000e+00, %mul2316
  %386 = tail call double @llvm.fmuladd.f64(double %neg2322, double %381, double %384)
  store double %386, double* %arrayidx1995.4, align 16, !tbaa !7
  %neg2328 = fsub double -0.000000e+00, %382
  %387 = tail call double @llvm.fmuladd.f64(double %neg2328, double %mul2316, double %385)
  store double %387, double* %arrayidx1829.4, align 16, !tbaa !7
  %div2333 = fdiv double %387, %386
  store double %div2333, double* %arrayidx1766.4, align 8, !tbaa !7
  %neg2352 = fsub double -0.000000e+00, %381
  %388 = tail call double @llvm.fmuladd.f64(double %neg2352, double %div2333, double %382)
  store double %388, double* %arrayidx1829.3, align 8, !tbaa !7
  %div2357 = fdiv double %388, %380
  store double %div2357, double* %arrayidx1766.3, align 8, !tbaa !7
  %neg2376 = fsub double -0.000000e+00, %369
  %389 = tail call double @llvm.fmuladd.f64(double %neg2376, double %div2357, double %371)
  %neg2387 = fsub double -0.000000e+00, %370
  %390 = tail call double @llvm.fmuladd.f64(double %neg2387, double %div2333, double %389)
  store double %390, double* %arrayidx1829.2, align 16, !tbaa !7
  %div2392 = fdiv double %390, %368
  store double %div2392, double* %arrayidx1766.2, align 8, !tbaa !7
  %neg2411 = fsub double -0.000000e+00, %338
  %391 = tail call double @llvm.fmuladd.f64(double %neg2411, double %div2392, double %345)
  %neg2422 = fsub double -0.000000e+00, %340
  %392 = tail call double @llvm.fmuladd.f64(double %neg2422, double %div2357, double %391)
  %neg2433 = fsub double -0.000000e+00, %342
  %393 = tail call double @llvm.fmuladd.f64(double %neg2433, double %div2333, double %392)
  store double %393, double* %arrayidx1829.1, align 8, !tbaa !7
  %div2438 = fdiv double %393, %335
  store double %div2438, double* %arrayidx1766.1, align 8, !tbaa !7
  %neg2457 = fsub double -0.000000e+00, %334
  %394 = tail call double @llvm.fmuladd.f64(double %neg2457, double %div2438, double %344)
  %neg2468 = fsub double -0.000000e+00, %337
  %395 = tail call double @llvm.fmuladd.f64(double %neg2468, double %div2392, double %394)
  %neg2479 = fsub double -0.000000e+00, %339
  %396 = tail call double @llvm.fmuladd.f64(double %neg2479, double %div2357, double %395)
  %neg2490 = fsub double -0.000000e+00, %341
  %397 = tail call double @llvm.fmuladd.f64(double %neg2490, double %div2333, double %396)
  store double %397, double* %arrayidx1829, align 16, !tbaa !7
  %div2495 = fdiv double %397, %331
  store double %div2495, double* %arrayidx1766, align 8, !tbaa !7
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
