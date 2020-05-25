; ModuleID = 'src/275.src'
source_filename = "src/275.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* readonly %a, double* nocapture %b, double* nocapture %c, i32 %d, i32 %e, i32 %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 1) #3
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %sub = add nsw i32 %e, -1
  %cmp = icmp slt i32 %conv, %sub
  %sub5 = add nsw i32 %d, -1
  %cmp6 = icmp slt i32 %conv3, %sub5
  %or.cond = and i1 %cmp, %cmp6
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %3 = bitcast double* %b to [13 x [13 x [5 x double]]]*
  %mul = mul i64 %call, 12
  %add10 = add i64 %mul, %call1
  %sext = mul i64 %add10, 257698037760
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds double, double* %c, i64 %idxprom
  %4 = bitcast double* %arrayidx to [5 x double]*
  %cmp131343 = icmp sgt i32 %f, 0
  br i1 %cmp131343, label %for.body.lr.ph, label %for.cond148.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %idxprom17 = sext i32 %conv to i64
  %idxprom19 = sext i32 %conv3 to i64
  %wide.trip.count1371 = zext i32 %f to i64
  br label %for.body

for.cond148.preheader:                            ; preds = %for.body, %if.end
  %sub149 = add i32 %f, -1
  %cmp1501340 = icmp sgt i32 %sub149, 1
  br i1 %cmp1501340, label %for.cond153.preheader.lr.ph, label %for.cond191.preheader

for.cond153.preheader.lr.ph:                      ; preds = %for.cond148.preheader
  %idxprom159 = sext i32 %conv to i64
  %idxprom161 = sext i32 %conv3 to i64
  %wide.trip.count1367 = zext i32 %sub149 to i64
  br label %for.cond153.preheader

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv1369 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1370, %for.body ]
  %arrayidx21 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1369, i64 %idxprom17, i64 %idxprom19, i64 3
  %5 = bitcast double* %arrayidx21 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !7
  %arrayidx23 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1369
  %7 = bitcast [5 x double]* %arrayidx23 to i64*
  store i64 %6, i64* %7, align 8, !tbaa !7
  %8 = load double, double* %arrayidx21, align 8, !tbaa !7
  %arrayidx38 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1369, i64 %idxprom17, i64 %idxprom19, i64 0
  %9 = load double, double* %arrayidx38, align 8, !tbaa !7
  %div = fdiv double %8, %9
  %arrayidx45 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1369, i64 %idxprom17, i64 %idxprom19, i64 1
  %10 = load double, double* %arrayidx45, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1369, i64 %idxprom17, i64 %idxprom19, i64 2
  %11 = load double, double* %arrayidx60, align 8, !tbaa !7
  %mul68 = fmul double %11, %11
  %12 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %mul68)
  %13 = tail call double @llvm.fmuladd.f64(double %8, double %8, double %12)
  %mul84 = fmul double %13, 5.000000e-01
  %div92 = fdiv double %mul84, %9
  %mul100 = fmul double %10, %div
  %arrayidx103 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1369, i64 1
  store double %mul100, double* %arrayidx103, align 8, !tbaa !7
  %14 = load double, double* %arrayidx60, align 8, !tbaa !7
  %mul111 = fmul double %div, %14
  %arrayidx114 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1369, i64 2
  store double %mul111, double* %arrayidx114, align 8, !tbaa !7
  %15 = load double, double* %arrayidx21, align 8, !tbaa !7
  %arrayidx129 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1369, i64 %idxprom17, i64 %idxprom19, i64 4
  %16 = load double, double* %arrayidx129, align 8, !tbaa !7
  %sub130 = fsub double %16, %div92
  %mul131 = fmul double %sub130, 4.000000e-01
  %17 = tail call double @llvm.fmuladd.f64(double %15, double %div, double %mul131)
  %arrayidx134 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1369, i64 3
  store double %17, double* %arrayidx134, align 8, !tbaa !7
  %18 = load double, double* %arrayidx129, align 8, !tbaa !7
  %neg = fmul double %div92, -4.000000e-01
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.400000e+00, double %neg)
  %mul144 = fmul double %div, %19
  %arrayidx147 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1369, i64 4
  store double %mul144, double* %arrayidx147, align 8, !tbaa !7
  %indvars.iv.next1370 = add nuw nsw i64 %indvars.iv1369, 1
  %exitcond1372 = icmp eq i64 %indvars.iv.next1370, %wide.trip.count1371
  br i1 %exitcond1372, label %for.cond148.preheader, label %for.body

for.cond153.preheader:                            ; preds = %for.cond153.preheader, %for.cond153.preheader.lr.ph
  %indvars.iv1364 = phi i64 [ 1, %for.cond153.preheader.lr.ph ], [ %indvars.iv.next1365, %for.cond153.preheader ]
  %indvars.iv.next1365 = add nuw nsw i64 %indvars.iv1364, 1
  %20 = add nsw i64 %indvars.iv1364, -1
  %arrayidx164 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv1364, i64 %idxprom159, i64 %idxprom161, i64 0
  %21 = load double, double* %arrayidx164, align 8, !tbaa !7
  %arrayidx169 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1365, i64 0
  %22 = load double, double* %arrayidx169, align 8, !tbaa !7
  %arrayidx174 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %20, i64 0
  %23 = load double, double* %arrayidx174, align 8, !tbaa !7
  %sub175 = fsub double %22, %23
  %24 = tail call double @llvm.fmuladd.f64(double %sub175, double -5.500000e+00, double %21)
  store double %24, double* %arrayidx164, align 8, !tbaa !7
  %arrayidx164.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv1364, i64 %idxprom159, i64 %idxprom161, i64 1
  %25 = load double, double* %arrayidx164.1, align 8, !tbaa !7
  %arrayidx169.1 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1365, i64 1
  %26 = load double, double* %arrayidx169.1, align 8, !tbaa !7
  %arrayidx174.1 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %20, i64 1
  %27 = load double, double* %arrayidx174.1, align 8, !tbaa !7
  %sub175.1 = fsub double %26, %27
  %28 = tail call double @llvm.fmuladd.f64(double %sub175.1, double -5.500000e+00, double %25)
  store double %28, double* %arrayidx164.1, align 8, !tbaa !7
  %arrayidx164.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv1364, i64 %idxprom159, i64 %idxprom161, i64 2
  %29 = load double, double* %arrayidx164.2, align 8, !tbaa !7
  %arrayidx169.2 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1365, i64 2
  %30 = load double, double* %arrayidx169.2, align 8, !tbaa !7
  %arrayidx174.2 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %20, i64 2
  %31 = load double, double* %arrayidx174.2, align 8, !tbaa !7
  %sub175.2 = fsub double %30, %31
  %32 = tail call double @llvm.fmuladd.f64(double %sub175.2, double -5.500000e+00, double %29)
  store double %32, double* %arrayidx164.2, align 8, !tbaa !7
  %arrayidx164.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv1364, i64 %idxprom159, i64 %idxprom161, i64 3
  %33 = load double, double* %arrayidx164.3, align 8, !tbaa !7
  %arrayidx169.3 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1365, i64 3
  %34 = load double, double* %arrayidx169.3, align 8, !tbaa !7
  %arrayidx174.3 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %20, i64 3
  %35 = load double, double* %arrayidx174.3, align 8, !tbaa !7
  %sub175.3 = fsub double %34, %35
  %36 = tail call double @llvm.fmuladd.f64(double %sub175.3, double -5.500000e+00, double %33)
  store double %36, double* %arrayidx164.3, align 8, !tbaa !7
  %arrayidx164.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv1364, i64 %idxprom159, i64 %idxprom161, i64 4
  %37 = load double, double* %arrayidx164.4, align 8, !tbaa !7
  %arrayidx169.4 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1365, i64 4
  %38 = load double, double* %arrayidx169.4, align 8, !tbaa !7
  %arrayidx174.4 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %20, i64 4
  %39 = load double, double* %arrayidx174.4, align 8, !tbaa !7
  %sub175.4 = fsub double %38, %39
  %40 = tail call double @llvm.fmuladd.f64(double %sub175.4, double -5.500000e+00, double %37)
  store double %40, double* %arrayidx164.4, align 8, !tbaa !7
  %exitcond1368 = icmp eq i64 %indvars.iv.next1365, %wide.trip.count1367
  br i1 %exitcond1368, label %for.cond191.preheader, label %for.cond153.preheader

for.cond191.preheader:                            ; preds = %for.cond153.preheader, %for.cond148.preheader
  %cmp1921337 = icmp sgt i32 %f, 1
  br i1 %cmp1921337, label %for.body194.lr.ph, label %for.cond315.preheader

for.body194.lr.ph:                                ; preds = %for.cond191.preheader
  %idxprom197 = sext i32 %conv to i64
  %idxprom199 = sext i32 %conv3 to i64
  %wide.trip.count1359 = zext i32 %f to i64
  br label %for.body194

for.cond315.preheader:                            ; preds = %for.body194, %for.cond191.preheader
  %idxprom322 = sext i32 %conv to i64
  %idxprom324 = sext i32 %conv3 to i64
  br i1 %cmp1501340, label %for.body319.lr.ph, label %for.cond559.preheader

for.body319.lr.ph:                                ; preds = %for.cond315.preheader
  %wide.trip.count1354 = zext i32 %sub149 to i64
  br label %for.body319

for.body194:                                      ; preds = %for.body194, %for.body194.lr.ph
  %indvars.iv1356 = phi i64 [ 1, %for.body194.lr.ph ], [ %indvars.iv.next1357, %for.body194 ]
  %arrayidx201 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1356, i64 %idxprom197, i64 %idxprom199, i64 0
  %41 = load double, double* %arrayidx201, align 8, !tbaa !7
  %div202 = fdiv double 1.000000e+00, %41
  %arrayidx209 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1356, i64 %idxprom197, i64 %idxprom199, i64 1
  %42 = load double, double* %arrayidx209, align 8, !tbaa !7
  %mul210 = fmul double %div202, %42
  %arrayidx217 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1356, i64 %idxprom197, i64 %idxprom199, i64 2
  %43 = load double, double* %arrayidx217, align 8, !tbaa !7
  %mul218 = fmul double %div202, %43
  %arrayidx225 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1356, i64 %idxprom197, i64 %idxprom199, i64 3
  %44 = load double, double* %arrayidx225, align 8, !tbaa !7
  %mul226 = fmul double %div202, %44
  %arrayidx233 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1356, i64 %idxprom197, i64 %idxprom199, i64 4
  %45 = load double, double* %arrayidx233, align 8, !tbaa !7
  %mul234 = fmul double %div202, %45
  %46 = add nsw i64 %indvars.iv1356, -1
  %arrayidx242 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %46, i64 %idxprom197, i64 %idxprom199, i64 0
  %47 = load double, double* %arrayidx242, align 8, !tbaa !7
  %div243 = fdiv double 1.000000e+00, %47
  %arrayidx251 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %46, i64 %idxprom197, i64 %idxprom199, i64 1
  %48 = load double, double* %arrayidx251, align 8, !tbaa !7
  %mul252 = fmul double %div243, %48
  %arrayidx260 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %46, i64 %idxprom197, i64 %idxprom199, i64 2
  %49 = load double, double* %arrayidx260, align 8, !tbaa !7
  %mul261 = fmul double %div243, %49
  %arrayidx269 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %46, i64 %idxprom197, i64 %idxprom199, i64 3
  %50 = load double, double* %arrayidx269, align 8, !tbaa !7
  %mul270 = fmul double %div243, %50
  %arrayidx278 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %46, i64 %idxprom197, i64 %idxprom199, i64 4
  %51 = load double, double* %arrayidx278, align 8, !tbaa !7
  %mul279 = fmul double %div243, %51
  %sub280 = fsub double %mul210, %mul252
  %mul281 = fmul double %sub280, 1.100000e+01
  %arrayidx284 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1356, i64 1
  store double %mul281, double* %arrayidx284, align 8, !tbaa !7
  %sub285 = fsub double %mul218, %mul261
  %mul286 = fmul double %sub285, 1.100000e+01
  %arrayidx289 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1356, i64 2
  store double %mul286, double* %arrayidx289, align 8, !tbaa !7
  %sub290 = fsub double %mul226, %mul270
  %mul291 = fmul double %sub290, 0x402D555555555555
  %arrayidx294 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1356, i64 3
  store double %mul291, double* %arrayidx294, align 8, !tbaa !7
  %mul296 = fmul double %mul218, %mul218
  %52 = tail call double @llvm.fmuladd.f64(double %mul210, double %mul210, double %mul296)
  %53 = tail call double @llvm.fmuladd.f64(double %mul226, double %mul226, double %52)
  %mul299 = fmul double %mul261, %mul261
  %54 = tail call double @llvm.fmuladd.f64(double %mul252, double %mul252, double %mul299)
  %55 = tail call double @llvm.fmuladd.f64(double %mul270, double %mul270, double %54)
  %sub301 = fsub double %53, %55
  %56 = fneg double %mul270
  %neg305 = fmul double %mul270, %56
  %57 = tail call double @llvm.fmuladd.f64(double %mul226, double %mul226, double %neg305)
  %mul306 = fmul double %57, 0x3FFD555555555555
  %58 = tail call double @llvm.fmuladd.f64(double %sub301, double 0xC0151EB851EB851D, double %mul306)
  %sub307 = fsub double %mul234, %mul279
  %59 = tail call double @llvm.fmuladd.f64(double %sub307, double 2.156000e+01, double %58)
  %arrayidx311 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1356, i64 4
  store double %59, double* %arrayidx311, align 8, !tbaa !7
  %indvars.iv.next1357 = add nuw nsw i64 %indvars.iv1356, 1
  %exitcond1360 = icmp eq i64 %indvars.iv.next1357, %wide.trip.count1359
  br i1 %exitcond1360, label %for.cond315.preheader, label %for.body194

for.cond559.preheader:                            ; preds = %for.body319, %for.cond315.preheader
  %arrayidx563 = getelementptr inbounds double, double* %b, i64 845
  %60 = bitcast double* %arrayidx563 to [13 x [13 x [5 x double]]]*
  %call570 = tail call double @_Z3maxdd(double 7.500000e-01, double 7.500000e-01) #3
  %call571 = tail call double @_Z3maxdd(double %call570, double 1.000000e+00) #3
  %arrayidx573 = getelementptr inbounds double, double* %a, i64 845
  %61 = bitcast double* %arrayidx573 to [13 x [13 x [5 x double]]]*
  %arrayidx581 = getelementptr inbounds double, double* %a, i64 1690
  %62 = bitcast double* %arrayidx581 to [13 x [13 x [5 x double]]]*
  %arrayidx590 = getelementptr inbounds double, double* %a, i64 2535
  %63 = bitcast double* %arrayidx590 to [13 x [13 x [5 x double]]]*
  %neg599 = fmul double %call571, -2.500000e-01
  %arrayidx607 = getelementptr inbounds double, double* %b, i64 1690
  %64 = bitcast double* %arrayidx607 to [13 x [13 x [5 x double]]]*
  %arrayidx641 = getelementptr inbounds double, double* %a, i64 3380
  %65 = bitcast double* %arrayidx641 to [13 x [13 x [5 x double]]]*
  %arrayidx569 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %60, i64 0, i64 %idxprom322, i64 %idxprom324, i64 0
  %66 = load double, double* %arrayidx569, align 8, !tbaa !7
  %arrayidx579 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %61, i64 0, i64 %idxprom322, i64 %idxprom324, i64 0
  %67 = load double, double* %arrayidx579, align 8, !tbaa !7
  %arrayidx587 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %62, i64 0, i64 %idxprom322, i64 %idxprom324, i64 0
  %68 = load double, double* %arrayidx587, align 8, !tbaa !7
  %neg589 = fmul double %68, -4.000000e+00
  %69 = tail call double @llvm.fmuladd.f64(double %67, double 5.000000e+00, double %neg589)
  %arrayidx596 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %63, i64 0, i64 %idxprom322, i64 %idxprom324, i64 0
  %70 = load double, double* %arrayidx596, align 8, !tbaa !7
  %add597 = fadd double %70, %69
  %71 = tail call double @llvm.fmuladd.f64(double %neg599, double %add597, double %66)
  store double %71, double* %arrayidx569, align 8, !tbaa !7
  %arrayidx613 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %64, i64 0, i64 %idxprom322, i64 %idxprom324, i64 0
  %72 = load double, double* %arrayidx613, align 8, !tbaa !7
  %73 = load double, double* %arrayidx579, align 8, !tbaa !7
  %74 = load double, double* %arrayidx587, align 8, !tbaa !7
  %mul632 = fmul double %74, 6.000000e+00
  %75 = tail call double @llvm.fmuladd.f64(double %73, double -4.000000e+00, double %mul632)
  %76 = load double, double* %arrayidx596, align 8, !tbaa !7
  %77 = tail call double @llvm.fmuladd.f64(double %76, double -4.000000e+00, double %75)
  %arrayidx647 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %65, i64 0, i64 %idxprom322, i64 %idxprom324, i64 0
  %78 = load double, double* %arrayidx647, align 8, !tbaa !7
  %add648 = fadd double %78, %77
  %79 = tail call double @llvm.fmuladd.f64(double %neg599, double %add648, double %72)
  store double %79, double* %arrayidx613, align 8, !tbaa !7
  %arrayidx569.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %60, i64 0, i64 %idxprom322, i64 %idxprom324, i64 1
  %80 = load double, double* %arrayidx569.1, align 8, !tbaa !7
  %arrayidx579.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %61, i64 0, i64 %idxprom322, i64 %idxprom324, i64 1
  %81 = load double, double* %arrayidx579.1, align 8, !tbaa !7
  %arrayidx587.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %62, i64 0, i64 %idxprom322, i64 %idxprom324, i64 1
  %82 = load double, double* %arrayidx587.1, align 8, !tbaa !7
  %neg589.1 = fmul double %82, -4.000000e+00
  %83 = tail call double @llvm.fmuladd.f64(double %81, double 5.000000e+00, double %neg589.1)
  %arrayidx596.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %63, i64 0, i64 %idxprom322, i64 %idxprom324, i64 1
  %84 = load double, double* %arrayidx596.1, align 8, !tbaa !7
  %add597.1 = fadd double %84, %83
  %85 = tail call double @llvm.fmuladd.f64(double %neg599, double %add597.1, double %80)
  store double %85, double* %arrayidx569.1, align 8, !tbaa !7
  %arrayidx613.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %64, i64 0, i64 %idxprom322, i64 %idxprom324, i64 1
  %86 = load double, double* %arrayidx613.1, align 8, !tbaa !7
  %87 = load double, double* %arrayidx579.1, align 8, !tbaa !7
  %88 = load double, double* %arrayidx587.1, align 8, !tbaa !7
  %mul632.1 = fmul double %88, 6.000000e+00
  %89 = tail call double @llvm.fmuladd.f64(double %87, double -4.000000e+00, double %mul632.1)
  %90 = load double, double* %arrayidx596.1, align 8, !tbaa !7
  %91 = tail call double @llvm.fmuladd.f64(double %90, double -4.000000e+00, double %89)
  %arrayidx647.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %65, i64 0, i64 %idxprom322, i64 %idxprom324, i64 1
  %92 = load double, double* %arrayidx647.1, align 8, !tbaa !7
  %add648.1 = fadd double %92, %91
  %93 = tail call double @llvm.fmuladd.f64(double %neg599, double %add648.1, double %86)
  store double %93, double* %arrayidx613.1, align 8, !tbaa !7
  %arrayidx569.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %60, i64 0, i64 %idxprom322, i64 %idxprom324, i64 2
  %94 = load double, double* %arrayidx569.2, align 8, !tbaa !7
  %arrayidx579.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %61, i64 0, i64 %idxprom322, i64 %idxprom324, i64 2
  %95 = load double, double* %arrayidx579.2, align 8, !tbaa !7
  %arrayidx587.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %62, i64 0, i64 %idxprom322, i64 %idxprom324, i64 2
  %96 = load double, double* %arrayidx587.2, align 8, !tbaa !7
  %neg589.2 = fmul double %96, -4.000000e+00
  %97 = tail call double @llvm.fmuladd.f64(double %95, double 5.000000e+00, double %neg589.2)
  %arrayidx596.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %63, i64 0, i64 %idxprom322, i64 %idxprom324, i64 2
  %98 = load double, double* %arrayidx596.2, align 8, !tbaa !7
  %add597.2 = fadd double %98, %97
  %99 = tail call double @llvm.fmuladd.f64(double %neg599, double %add597.2, double %94)
  store double %99, double* %arrayidx569.2, align 8, !tbaa !7
  %arrayidx613.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %64, i64 0, i64 %idxprom322, i64 %idxprom324, i64 2
  %100 = load double, double* %arrayidx613.2, align 8, !tbaa !7
  %101 = load double, double* %arrayidx579.2, align 8, !tbaa !7
  %102 = load double, double* %arrayidx587.2, align 8, !tbaa !7
  %mul632.2 = fmul double %102, 6.000000e+00
  %103 = tail call double @llvm.fmuladd.f64(double %101, double -4.000000e+00, double %mul632.2)
  %104 = load double, double* %arrayidx596.2, align 8, !tbaa !7
  %105 = tail call double @llvm.fmuladd.f64(double %104, double -4.000000e+00, double %103)
  %arrayidx647.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %65, i64 0, i64 %idxprom322, i64 %idxprom324, i64 2
  %106 = load double, double* %arrayidx647.2, align 8, !tbaa !7
  %add648.2 = fadd double %106, %105
  %107 = tail call double @llvm.fmuladd.f64(double %neg599, double %add648.2, double %100)
  store double %107, double* %arrayidx613.2, align 8, !tbaa !7
  %arrayidx569.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %60, i64 0, i64 %idxprom322, i64 %idxprom324, i64 3
  %108 = load double, double* %arrayidx569.3, align 8, !tbaa !7
  %arrayidx579.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %61, i64 0, i64 %idxprom322, i64 %idxprom324, i64 3
  %109 = load double, double* %arrayidx579.3, align 8, !tbaa !7
  %arrayidx587.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %62, i64 0, i64 %idxprom322, i64 %idxprom324, i64 3
  %110 = load double, double* %arrayidx587.3, align 8, !tbaa !7
  %neg589.3 = fmul double %110, -4.000000e+00
  %111 = tail call double @llvm.fmuladd.f64(double %109, double 5.000000e+00, double %neg589.3)
  %arrayidx596.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %63, i64 0, i64 %idxprom322, i64 %idxprom324, i64 3
  %112 = load double, double* %arrayidx596.3, align 8, !tbaa !7
  %add597.3 = fadd double %112, %111
  %113 = tail call double @llvm.fmuladd.f64(double %neg599, double %add597.3, double %108)
  store double %113, double* %arrayidx569.3, align 8, !tbaa !7
  %arrayidx613.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %64, i64 0, i64 %idxprom322, i64 %idxprom324, i64 3
  %114 = load double, double* %arrayidx613.3, align 8, !tbaa !7
  %115 = load double, double* %arrayidx579.3, align 8, !tbaa !7
  %116 = load double, double* %arrayidx587.3, align 8, !tbaa !7
  %mul632.3 = fmul double %116, 6.000000e+00
  %117 = tail call double @llvm.fmuladd.f64(double %115, double -4.000000e+00, double %mul632.3)
  %118 = load double, double* %arrayidx596.3, align 8, !tbaa !7
  %119 = tail call double @llvm.fmuladd.f64(double %118, double -4.000000e+00, double %117)
  %arrayidx647.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %65, i64 0, i64 %idxprom322, i64 %idxprom324, i64 3
  %120 = load double, double* %arrayidx647.3, align 8, !tbaa !7
  %add648.3 = fadd double %120, %119
  %121 = tail call double @llvm.fmuladd.f64(double %neg599, double %add648.3, double %114)
  store double %121, double* %arrayidx613.3, align 8, !tbaa !7
  %arrayidx569.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %60, i64 0, i64 %idxprom322, i64 %idxprom324, i64 4
  %122 = load double, double* %arrayidx569.4, align 8, !tbaa !7
  %arrayidx579.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %61, i64 0, i64 %idxprom322, i64 %idxprom324, i64 4
  %123 = load double, double* %arrayidx579.4, align 8, !tbaa !7
  %arrayidx587.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %62, i64 0, i64 %idxprom322, i64 %idxprom324, i64 4
  %124 = load double, double* %arrayidx587.4, align 8, !tbaa !7
  %neg589.4 = fmul double %124, -4.000000e+00
  %125 = tail call double @llvm.fmuladd.f64(double %123, double 5.000000e+00, double %neg589.4)
  %arrayidx596.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %63, i64 0, i64 %idxprom322, i64 %idxprom324, i64 4
  %126 = load double, double* %arrayidx596.4, align 8, !tbaa !7
  %add597.4 = fadd double %126, %125
  %127 = tail call double @llvm.fmuladd.f64(double %neg599, double %add597.4, double %122)
  store double %127, double* %arrayidx569.4, align 8, !tbaa !7
  %arrayidx613.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %64, i64 0, i64 %idxprom322, i64 %idxprom324, i64 4
  %128 = load double, double* %arrayidx613.4, align 8, !tbaa !7
  %129 = load double, double* %arrayidx579.4, align 8, !tbaa !7
  %130 = load double, double* %arrayidx587.4, align 8, !tbaa !7
  %mul632.4 = fmul double %130, 6.000000e+00
  %131 = tail call double @llvm.fmuladd.f64(double %129, double -4.000000e+00, double %mul632.4)
  %132 = load double, double* %arrayidx596.4, align 8, !tbaa !7
  %133 = tail call double @llvm.fmuladd.f64(double %132, double -4.000000e+00, double %131)
  %arrayidx647.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %65, i64 0, i64 %idxprom322, i64 %idxprom324, i64 4
  %134 = load double, double* %arrayidx647.4, align 8, !tbaa !7
  %add648.4 = fadd double %134, %133
  %135 = tail call double @llvm.fmuladd.f64(double %neg599, double %add648.4, double %128)
  store double %135, double* %arrayidx613.4, align 8, !tbaa !7
  %sub662 = add i32 %f, -3
  %cmp6631332 = icmp sgt i32 %sub662, 3
  br i1 %cmp6631332, label %for.cond666.preheader.lr.ph, label %for.cond745.preheader

for.body319:                                      ; preds = %for.body319, %for.body319.lr.ph
  %indvars.iv1351 = phi i64 [ 1, %for.body319.lr.ph ], [ %indvars.iv.next1352, %for.body319 ]
  %arrayidx326 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv1351, i64 %idxprom322, i64 %idxprom324, i64 0
  %136 = load double, double* %arrayidx326, align 8, !tbaa !7
  %indvars.iv.next1352 = add nuw nsw i64 %indvars.iv1351, 1
  %arrayidx334 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv.next1352, i64 %idxprom322, i64 %idxprom324, i64 0
  %137 = load double, double* %arrayidx334, align 8, !tbaa !7
  %arrayidx341 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1351, i64 %idxprom322, i64 %idxprom324, i64 0
  %138 = load double, double* %arrayidx341, align 8, !tbaa !7
  %139 = tail call double @llvm.fmuladd.f64(double %138, double -2.000000e+00, double %137)
  %140 = add nsw i64 %indvars.iv1351, -1
  %arrayidx350 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %140, i64 %idxprom322, i64 %idxprom324, i64 0
  %141 = load double, double* %arrayidx350, align 8, !tbaa !7
  %add351 = fadd double %139, %141
  %142 = tail call double @llvm.fmuladd.f64(double %add351, double 1.210000e+02, double %136)
  store double %142, double* %arrayidx326, align 8, !tbaa !7
  %arrayidx366 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv1351, i64 %idxprom322, i64 %idxprom324, i64 1
  %143 = load double, double* %arrayidx366, align 8, !tbaa !7
  %arrayidx370 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1352, i64 1
  %144 = load double, double* %arrayidx370, align 8, !tbaa !7
  %arrayidx373 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1351, i64 1
  %145 = load double, double* %arrayidx373, align 8, !tbaa !7
  %sub374 = fsub double %144, %145
  %146 = tail call double @llvm.fmuladd.f64(double %sub374, double 1.100000e+00, double %143)
  %arrayidx383 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv.next1352, i64 %idxprom322, i64 %idxprom324, i64 1
  %147 = load double, double* %arrayidx383, align 8, !tbaa !7
  %arrayidx390 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1351, i64 %idxprom322, i64 %idxprom324, i64 1
  %148 = load double, double* %arrayidx390, align 8, !tbaa !7
  %149 = tail call double @llvm.fmuladd.f64(double %148, double -2.000000e+00, double %147)
  %arrayidx399 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %140, i64 %idxprom322, i64 %idxprom324, i64 1
  %150 = load double, double* %arrayidx399, align 8, !tbaa !7
  %add400 = fadd double %149, %150
  %151 = tail call double @llvm.fmuladd.f64(double %add400, double 1.210000e+02, double %146)
  store double %151, double* %arrayidx366, align 8, !tbaa !7
  %arrayidx415 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv1351, i64 %idxprom322, i64 %idxprom324, i64 2
  %152 = load double, double* %arrayidx415, align 8, !tbaa !7
  %arrayidx419 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1352, i64 2
  %153 = load double, double* %arrayidx419, align 8, !tbaa !7
  %arrayidx422 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1351, i64 2
  %154 = load double, double* %arrayidx422, align 8, !tbaa !7
  %sub423 = fsub double %153, %154
  %155 = tail call double @llvm.fmuladd.f64(double %sub423, double 1.100000e+00, double %152)
  %arrayidx432 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv.next1352, i64 %idxprom322, i64 %idxprom324, i64 2
  %156 = load double, double* %arrayidx432, align 8, !tbaa !7
  %arrayidx439 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1351, i64 %idxprom322, i64 %idxprom324, i64 2
  %157 = load double, double* %arrayidx439, align 8, !tbaa !7
  %158 = tail call double @llvm.fmuladd.f64(double %157, double -2.000000e+00, double %156)
  %arrayidx448 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %140, i64 %idxprom322, i64 %idxprom324, i64 2
  %159 = load double, double* %arrayidx448, align 8, !tbaa !7
  %add449 = fadd double %158, %159
  %160 = tail call double @llvm.fmuladd.f64(double %add449, double 1.210000e+02, double %155)
  store double %160, double* %arrayidx415, align 8, !tbaa !7
  %arrayidx464 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv1351, i64 %idxprom322, i64 %idxprom324, i64 3
  %161 = load double, double* %arrayidx464, align 8, !tbaa !7
  %arrayidx468 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1352, i64 3
  %162 = load double, double* %arrayidx468, align 8, !tbaa !7
  %arrayidx471 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1351, i64 3
  %163 = load double, double* %arrayidx471, align 8, !tbaa !7
  %sub472 = fsub double %162, %163
  %164 = tail call double @llvm.fmuladd.f64(double %sub472, double 1.100000e+00, double %161)
  %arrayidx481 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv.next1352, i64 %idxprom322, i64 %idxprom324, i64 3
  %165 = load double, double* %arrayidx481, align 8, !tbaa !7
  %arrayidx488 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1351, i64 %idxprom322, i64 %idxprom324, i64 3
  %166 = load double, double* %arrayidx488, align 8, !tbaa !7
  %167 = tail call double @llvm.fmuladd.f64(double %166, double -2.000000e+00, double %165)
  %arrayidx497 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %140, i64 %idxprom322, i64 %idxprom324, i64 3
  %168 = load double, double* %arrayidx497, align 8, !tbaa !7
  %add498 = fadd double %167, %168
  %169 = tail call double @llvm.fmuladd.f64(double %add498, double 1.210000e+02, double %164)
  store double %169, double* %arrayidx464, align 8, !tbaa !7
  %arrayidx513 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv1351, i64 %idxprom322, i64 %idxprom324, i64 4
  %170 = load double, double* %arrayidx513, align 8, !tbaa !7
  %arrayidx517 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1352, i64 4
  %171 = load double, double* %arrayidx517, align 8, !tbaa !7
  %arrayidx520 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1351, i64 4
  %172 = load double, double* %arrayidx520, align 8, !tbaa !7
  %sub521 = fsub double %171, %172
  %173 = tail call double @llvm.fmuladd.f64(double %sub521, double 1.100000e+00, double %170)
  %arrayidx530 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv.next1352, i64 %idxprom322, i64 %idxprom324, i64 4
  %174 = load double, double* %arrayidx530, align 8, !tbaa !7
  %arrayidx537 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv1351, i64 %idxprom322, i64 %idxprom324, i64 4
  %175 = load double, double* %arrayidx537, align 8, !tbaa !7
  %176 = tail call double @llvm.fmuladd.f64(double %175, double -2.000000e+00, double %174)
  %arrayidx546 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %140, i64 %idxprom322, i64 %idxprom324, i64 4
  %177 = load double, double* %arrayidx546, align 8, !tbaa !7
  %add547 = fadd double %176, %177
  %178 = tail call double @llvm.fmuladd.f64(double %add547, double 1.210000e+02, double %173)
  store double %178, double* %arrayidx513, align 8, !tbaa !7
  %exitcond1355 = icmp eq i64 %indvars.iv.next1352, %wide.trip.count1354
  br i1 %exitcond1355, label %for.cond559.preheader, label %for.body319

for.cond666.preheader.lr.ph:                      ; preds = %for.cond559.preheader
  %wide.trip.count = zext i32 %sub662 to i64
  br label %for.cond666.preheader

for.cond666.preheader:                            ; preds = %for.cond666.preheader, %for.cond666.preheader.lr.ph
  %indvars.iv = phi i64 [ 3, %for.cond666.preheader.lr.ph ], [ %indvars.iv.next, %for.cond666.preheader ]
  %179 = add nsw i64 %indvars.iv, -2
  %180 = add nsw i64 %indvars.iv, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %181 = add nuw i64 %indvars.iv, 2
  %idxprom720 = and i64 %181, 4294967295
  %arrayidx677 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv, i64 %idxprom322, i64 %idxprom324, i64 0
  %182 = load double, double* %arrayidx677, align 8, !tbaa !7
  %arrayidx689 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %179, i64 %idxprom322, i64 %idxprom324, i64 0
  %183 = load double, double* %arrayidx689, align 8, !tbaa !7
  %arrayidx698 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %180, i64 %idxprom322, i64 %idxprom324, i64 0
  %184 = load double, double* %arrayidx698, align 8, !tbaa !7
  %185 = tail call double @llvm.fmuladd.f64(double %184, double -4.000000e+00, double %183)
  %arrayidx707 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv, i64 %idxprom322, i64 %idxprom324, i64 0
  %186 = load double, double* %arrayidx707, align 8, !tbaa !7
  %187 = tail call double @llvm.fmuladd.f64(double %186, double 6.000000e+00, double %185)
  %arrayidx717 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv.next, i64 %idxprom322, i64 %idxprom324, i64 0
  %188 = load double, double* %arrayidx717, align 8, !tbaa !7
  %189 = tail call double @llvm.fmuladd.f64(double %188, double -4.000000e+00, double %187)
  %arrayidx727 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom720, i64 %idxprom322, i64 %idxprom324, i64 0
  %190 = load double, double* %arrayidx727, align 8, !tbaa !7
  %add728 = fadd double %189, %190
  %191 = tail call double @llvm.fmuladd.f64(double %neg599, double %add728, double %182)
  store double %191, double* %arrayidx677, align 8, !tbaa !7
  %arrayidx677.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv, i64 %idxprom322, i64 %idxprom324, i64 1
  %192 = load double, double* %arrayidx677.1, align 8, !tbaa !7
  %arrayidx689.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %179, i64 %idxprom322, i64 %idxprom324, i64 1
  %193 = load double, double* %arrayidx689.1, align 8, !tbaa !7
  %arrayidx698.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %180, i64 %idxprom322, i64 %idxprom324, i64 1
  %194 = load double, double* %arrayidx698.1, align 8, !tbaa !7
  %195 = tail call double @llvm.fmuladd.f64(double %194, double -4.000000e+00, double %193)
  %arrayidx707.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv, i64 %idxprom322, i64 %idxprom324, i64 1
  %196 = load double, double* %arrayidx707.1, align 8, !tbaa !7
  %197 = tail call double @llvm.fmuladd.f64(double %196, double 6.000000e+00, double %195)
  %arrayidx717.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv.next, i64 %idxprom322, i64 %idxprom324, i64 1
  %198 = load double, double* %arrayidx717.1, align 8, !tbaa !7
  %199 = tail call double @llvm.fmuladd.f64(double %198, double -4.000000e+00, double %197)
  %arrayidx727.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom720, i64 %idxprom322, i64 %idxprom324, i64 1
  %200 = load double, double* %arrayidx727.1, align 8, !tbaa !7
  %add728.1 = fadd double %199, %200
  %201 = tail call double @llvm.fmuladd.f64(double %neg599, double %add728.1, double %192)
  store double %201, double* %arrayidx677.1, align 8, !tbaa !7
  %arrayidx677.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv, i64 %idxprom322, i64 %idxprom324, i64 2
  %202 = load double, double* %arrayidx677.2, align 8, !tbaa !7
  %arrayidx689.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %179, i64 %idxprom322, i64 %idxprom324, i64 2
  %203 = load double, double* %arrayidx689.2, align 8, !tbaa !7
  %arrayidx698.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %180, i64 %idxprom322, i64 %idxprom324, i64 2
  %204 = load double, double* %arrayidx698.2, align 8, !tbaa !7
  %205 = tail call double @llvm.fmuladd.f64(double %204, double -4.000000e+00, double %203)
  %arrayidx707.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv, i64 %idxprom322, i64 %idxprom324, i64 2
  %206 = load double, double* %arrayidx707.2, align 8, !tbaa !7
  %207 = tail call double @llvm.fmuladd.f64(double %206, double 6.000000e+00, double %205)
  %arrayidx717.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv.next, i64 %idxprom322, i64 %idxprom324, i64 2
  %208 = load double, double* %arrayidx717.2, align 8, !tbaa !7
  %209 = tail call double @llvm.fmuladd.f64(double %208, double -4.000000e+00, double %207)
  %arrayidx727.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom720, i64 %idxprom322, i64 %idxprom324, i64 2
  %210 = load double, double* %arrayidx727.2, align 8, !tbaa !7
  %add728.2 = fadd double %209, %210
  %211 = tail call double @llvm.fmuladd.f64(double %neg599, double %add728.2, double %202)
  store double %211, double* %arrayidx677.2, align 8, !tbaa !7
  %arrayidx677.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv, i64 %idxprom322, i64 %idxprom324, i64 3
  %212 = load double, double* %arrayidx677.3, align 8, !tbaa !7
  %arrayidx689.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %179, i64 %idxprom322, i64 %idxprom324, i64 3
  %213 = load double, double* %arrayidx689.3, align 8, !tbaa !7
  %arrayidx698.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %180, i64 %idxprom322, i64 %idxprom324, i64 3
  %214 = load double, double* %arrayidx698.3, align 8, !tbaa !7
  %215 = tail call double @llvm.fmuladd.f64(double %214, double -4.000000e+00, double %213)
  %arrayidx707.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv, i64 %idxprom322, i64 %idxprom324, i64 3
  %216 = load double, double* %arrayidx707.3, align 8, !tbaa !7
  %217 = tail call double @llvm.fmuladd.f64(double %216, double 6.000000e+00, double %215)
  %arrayidx717.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv.next, i64 %idxprom322, i64 %idxprom324, i64 3
  %218 = load double, double* %arrayidx717.3, align 8, !tbaa !7
  %219 = tail call double @llvm.fmuladd.f64(double %218, double -4.000000e+00, double %217)
  %arrayidx727.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom720, i64 %idxprom322, i64 %idxprom324, i64 3
  %220 = load double, double* %arrayidx727.3, align 8, !tbaa !7
  %add728.3 = fadd double %219, %220
  %221 = tail call double @llvm.fmuladd.f64(double %neg599, double %add728.3, double %212)
  store double %221, double* %arrayidx677.3, align 8, !tbaa !7
  %arrayidx677.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %indvars.iv, i64 %idxprom322, i64 %idxprom324, i64 4
  %222 = load double, double* %arrayidx677.4, align 8, !tbaa !7
  %arrayidx689.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %179, i64 %idxprom322, i64 %idxprom324, i64 4
  %223 = load double, double* %arrayidx689.4, align 8, !tbaa !7
  %arrayidx698.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %180, i64 %idxprom322, i64 %idxprom324, i64 4
  %224 = load double, double* %arrayidx698.4, align 8, !tbaa !7
  %225 = tail call double @llvm.fmuladd.f64(double %224, double -4.000000e+00, double %223)
  %arrayidx707.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv, i64 %idxprom322, i64 %idxprom324, i64 4
  %226 = load double, double* %arrayidx707.4, align 8, !tbaa !7
  %227 = tail call double @llvm.fmuladd.f64(double %226, double 6.000000e+00, double %225)
  %arrayidx717.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %indvars.iv.next, i64 %idxprom322, i64 %idxprom324, i64 4
  %228 = load double, double* %arrayidx717.4, align 8, !tbaa !7
  %229 = tail call double @llvm.fmuladd.f64(double %228, double -4.000000e+00, double %227)
  %arrayidx727.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom720, i64 %idxprom322, i64 %idxprom324, i64 4
  %230 = load double, double* %arrayidx727.4, align 8, !tbaa !7
  %add728.4 = fadd double %229, %230
  %231 = tail call double @llvm.fmuladd.f64(double %neg599, double %add728.4, double %222)
  store double %231, double* %arrayidx677.4, align 8, !tbaa !7
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.cond745.preheader, label %for.cond666.preheader

for.cond745.preheader:                            ; preds = %for.cond666.preheader, %for.cond559.preheader
  %idxprom750 = sext i32 %sub662 to i64
  %sub761 = add nsw i32 %f, -5
  %idxprom762 = sext i32 %sub761 to i64
  %sub770 = add nsw i32 %f, -4
  %idxprom771 = sext i32 %sub770 to i64
  %sub790 = add nsw i32 %f, -2
  %idxprom791 = sext i32 %sub790 to i64
  %arrayidx757 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom750, i64 %idxprom322, i64 %idxprom324, i64 0
  %232 = load double, double* %arrayidx757, align 8, !tbaa !7
  %arrayidx769 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom762, i64 %idxprom322, i64 %idxprom324, i64 0
  %233 = load double, double* %arrayidx769, align 8, !tbaa !7
  %arrayidx778 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom771, i64 %idxprom322, i64 %idxprom324, i64 0
  %234 = load double, double* %arrayidx778, align 8, !tbaa !7
  %235 = tail call double @llvm.fmuladd.f64(double %234, double -4.000000e+00, double %233)
  %arrayidx788 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom750, i64 %idxprom322, i64 %idxprom324, i64 0
  %236 = load double, double* %arrayidx788, align 8, !tbaa !7
  %237 = tail call double @llvm.fmuladd.f64(double %236, double 6.000000e+00, double %235)
  %arrayidx798 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom791, i64 %idxprom322, i64 %idxprom324, i64 0
  %238 = load double, double* %arrayidx798, align 8, !tbaa !7
  %239 = tail call double @llvm.fmuladd.f64(double %238, double -4.000000e+00, double %237)
  %240 = tail call double @llvm.fmuladd.f64(double %neg599, double %239, double %232)
  store double %240, double* %arrayidx757, align 8, !tbaa !7
  %arrayidx819 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom791, i64 %idxprom322, i64 %idxprom324, i64 0
  %241 = load double, double* %arrayidx819, align 8, !tbaa !7
  %242 = load double, double* %arrayidx778, align 8, !tbaa !7
  %243 = load double, double* %arrayidx788, align 8, !tbaa !7
  %244 = tail call double @llvm.fmuladd.f64(double %243, double -4.000000e+00, double %242)
  %245 = load double, double* %arrayidx798, align 8, !tbaa !7
  %246 = tail call double @llvm.fmuladd.f64(double %245, double 5.000000e+00, double %244)
  %247 = tail call double @llvm.fmuladd.f64(double %neg599, double %246, double %241)
  store double %247, double* %arrayidx819, align 8, !tbaa !7
  %arrayidx757.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom750, i64 %idxprom322, i64 %idxprom324, i64 1
  %248 = load double, double* %arrayidx757.1, align 8, !tbaa !7
  %arrayidx769.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom762, i64 %idxprom322, i64 %idxprom324, i64 1
  %249 = load double, double* %arrayidx769.1, align 8, !tbaa !7
  %arrayidx778.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom771, i64 %idxprom322, i64 %idxprom324, i64 1
  %250 = load double, double* %arrayidx778.1, align 8, !tbaa !7
  %251 = tail call double @llvm.fmuladd.f64(double %250, double -4.000000e+00, double %249)
  %arrayidx788.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom750, i64 %idxprom322, i64 %idxprom324, i64 1
  %252 = load double, double* %arrayidx788.1, align 8, !tbaa !7
  %253 = tail call double @llvm.fmuladd.f64(double %252, double 6.000000e+00, double %251)
  %arrayidx798.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom791, i64 %idxprom322, i64 %idxprom324, i64 1
  %254 = load double, double* %arrayidx798.1, align 8, !tbaa !7
  %255 = tail call double @llvm.fmuladd.f64(double %254, double -4.000000e+00, double %253)
  %256 = tail call double @llvm.fmuladd.f64(double %neg599, double %255, double %248)
  store double %256, double* %arrayidx757.1, align 8, !tbaa !7
  %arrayidx819.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom791, i64 %idxprom322, i64 %idxprom324, i64 1
  %257 = load double, double* %arrayidx819.1, align 8, !tbaa !7
  %258 = load double, double* %arrayidx778.1, align 8, !tbaa !7
  %259 = load double, double* %arrayidx788.1, align 8, !tbaa !7
  %260 = tail call double @llvm.fmuladd.f64(double %259, double -4.000000e+00, double %258)
  %261 = load double, double* %arrayidx798.1, align 8, !tbaa !7
  %262 = tail call double @llvm.fmuladd.f64(double %261, double 5.000000e+00, double %260)
  %263 = tail call double @llvm.fmuladd.f64(double %neg599, double %262, double %257)
  store double %263, double* %arrayidx819.1, align 8, !tbaa !7
  %arrayidx757.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom750, i64 %idxprom322, i64 %idxprom324, i64 2
  %264 = load double, double* %arrayidx757.2, align 8, !tbaa !7
  %arrayidx769.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom762, i64 %idxprom322, i64 %idxprom324, i64 2
  %265 = load double, double* %arrayidx769.2, align 8, !tbaa !7
  %arrayidx778.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom771, i64 %idxprom322, i64 %idxprom324, i64 2
  %266 = load double, double* %arrayidx778.2, align 8, !tbaa !7
  %267 = tail call double @llvm.fmuladd.f64(double %266, double -4.000000e+00, double %265)
  %arrayidx788.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom750, i64 %idxprom322, i64 %idxprom324, i64 2
  %268 = load double, double* %arrayidx788.2, align 8, !tbaa !7
  %269 = tail call double @llvm.fmuladd.f64(double %268, double 6.000000e+00, double %267)
  %arrayidx798.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom791, i64 %idxprom322, i64 %idxprom324, i64 2
  %270 = load double, double* %arrayidx798.2, align 8, !tbaa !7
  %271 = tail call double @llvm.fmuladd.f64(double %270, double -4.000000e+00, double %269)
  %272 = tail call double @llvm.fmuladd.f64(double %neg599, double %271, double %264)
  store double %272, double* %arrayidx757.2, align 8, !tbaa !7
  %arrayidx819.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom791, i64 %idxprom322, i64 %idxprom324, i64 2
  %273 = load double, double* %arrayidx819.2, align 8, !tbaa !7
  %274 = load double, double* %arrayidx778.2, align 8, !tbaa !7
  %275 = load double, double* %arrayidx788.2, align 8, !tbaa !7
  %276 = tail call double @llvm.fmuladd.f64(double %275, double -4.000000e+00, double %274)
  %277 = load double, double* %arrayidx798.2, align 8, !tbaa !7
  %278 = tail call double @llvm.fmuladd.f64(double %277, double 5.000000e+00, double %276)
  %279 = tail call double @llvm.fmuladd.f64(double %neg599, double %278, double %273)
  store double %279, double* %arrayidx819.2, align 8, !tbaa !7
  %arrayidx757.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom750, i64 %idxprom322, i64 %idxprom324, i64 3
  %280 = load double, double* %arrayidx757.3, align 8, !tbaa !7
  %arrayidx769.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom762, i64 %idxprom322, i64 %idxprom324, i64 3
  %281 = load double, double* %arrayidx769.3, align 8, !tbaa !7
  %arrayidx778.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom771, i64 %idxprom322, i64 %idxprom324, i64 3
  %282 = load double, double* %arrayidx778.3, align 8, !tbaa !7
  %283 = tail call double @llvm.fmuladd.f64(double %282, double -4.000000e+00, double %281)
  %arrayidx788.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom750, i64 %idxprom322, i64 %idxprom324, i64 3
  %284 = load double, double* %arrayidx788.3, align 8, !tbaa !7
  %285 = tail call double @llvm.fmuladd.f64(double %284, double 6.000000e+00, double %283)
  %arrayidx798.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom791, i64 %idxprom322, i64 %idxprom324, i64 3
  %286 = load double, double* %arrayidx798.3, align 8, !tbaa !7
  %287 = tail call double @llvm.fmuladd.f64(double %286, double -4.000000e+00, double %285)
  %288 = tail call double @llvm.fmuladd.f64(double %neg599, double %287, double %280)
  store double %288, double* %arrayidx757.3, align 8, !tbaa !7
  %arrayidx819.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom791, i64 %idxprom322, i64 %idxprom324, i64 3
  %289 = load double, double* %arrayidx819.3, align 8, !tbaa !7
  %290 = load double, double* %arrayidx778.3, align 8, !tbaa !7
  %291 = load double, double* %arrayidx788.3, align 8, !tbaa !7
  %292 = tail call double @llvm.fmuladd.f64(double %291, double -4.000000e+00, double %290)
  %293 = load double, double* %arrayidx798.3, align 8, !tbaa !7
  %294 = tail call double @llvm.fmuladd.f64(double %293, double 5.000000e+00, double %292)
  %295 = tail call double @llvm.fmuladd.f64(double %neg599, double %294, double %289)
  store double %295, double* %arrayidx819.3, align 8, !tbaa !7
  %arrayidx757.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom750, i64 %idxprom322, i64 %idxprom324, i64 4
  %296 = load double, double* %arrayidx757.4, align 8, !tbaa !7
  %arrayidx769.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom762, i64 %idxprom322, i64 %idxprom324, i64 4
  %297 = load double, double* %arrayidx769.4, align 8, !tbaa !7
  %arrayidx778.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom771, i64 %idxprom322, i64 %idxprom324, i64 4
  %298 = load double, double* %arrayidx778.4, align 8, !tbaa !7
  %299 = tail call double @llvm.fmuladd.f64(double %298, double -4.000000e+00, double %297)
  %arrayidx788.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom750, i64 %idxprom322, i64 %idxprom324, i64 4
  %300 = load double, double* %arrayidx788.4, align 8, !tbaa !7
  %301 = tail call double @llvm.fmuladd.f64(double %300, double 6.000000e+00, double %299)
  %arrayidx798.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom791, i64 %idxprom322, i64 %idxprom324, i64 4
  %302 = load double, double* %arrayidx798.4, align 8, !tbaa !7
  %303 = tail call double @llvm.fmuladd.f64(double %302, double -4.000000e+00, double %301)
  %304 = tail call double @llvm.fmuladd.f64(double %neg599, double %303, double %296)
  store double %304, double* %arrayidx757.4, align 8, !tbaa !7
  %arrayidx819.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom791, i64 %idxprom322, i64 %idxprom324, i64 4
  %305 = load double, double* %arrayidx819.4, align 8, !tbaa !7
  %306 = load double, double* %arrayidx778.4, align 8, !tbaa !7
  %307 = load double, double* %arrayidx788.4, align 8, !tbaa !7
  %308 = tail call double @llvm.fmuladd.f64(double %307, double -4.000000e+00, double %306)
  %309 = load double, double* %arrayidx798.4, align 8, !tbaa !7
  %310 = tail call double @llvm.fmuladd.f64(double %309, double 5.000000e+00, double %308)
  %311 = tail call double @llvm.fmuladd.f64(double %neg599, double %310, double %305)
  store double %311, double* %arrayidx819.4, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %for.cond745.preheader, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: convergent nounwind readnone
declare dso_local double @_Z3maxdd(double, double) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
