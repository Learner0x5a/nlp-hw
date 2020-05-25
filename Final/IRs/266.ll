; ModuleID = 'src/266.src'
source_filename = "src/266.src"
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
  %sub = add nsw i32 %f, -1
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
  %cmp131343 = icmp sgt i32 %e, 0
  br i1 %cmp131343, label %for.body.lr.ph, label %for.cond148.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %idxprom15 = sext i32 %conv to i64
  %idxprom19 = sext i32 %conv3 to i64
  %wide.trip.count1371 = zext i32 %e to i64
  br label %for.body

for.cond148.preheader:                            ; preds = %for.body, %if.end
  %sub149 = add i32 %e, -1
  %cmp1501340 = icmp sgt i32 %sub149, 1
  br i1 %cmp1501340, label %for.cond153.preheader.lr.ph, label %for.cond191.preheader

for.cond153.preheader.lr.ph:                      ; preds = %for.cond148.preheader
  %idxprom157 = sext i32 %conv to i64
  %idxprom161 = sext i32 %conv3 to i64
  %wide.trip.count1367 = zext i32 %sub149 to i64
  br label %for.cond153.preheader

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv1369 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next1370, %for.body ]
  %arrayidx21 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom15, i64 %indvars.iv1369, i64 %idxprom19, i64 2
  %5 = bitcast double* %arrayidx21 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !7
  %arrayidx23 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1369
  %7 = bitcast [5 x double]* %arrayidx23 to i64*
  store i64 %6, i64* %7, align 8, !tbaa !7
  %8 = load double, double* %arrayidx21, align 8, !tbaa !7
  %arrayidx38 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom15, i64 %indvars.iv1369, i64 %idxprom19, i64 0
  %9 = load double, double* %arrayidx38, align 8, !tbaa !7
  %div = fdiv double %8, %9
  %arrayidx45 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom15, i64 %indvars.iv1369, i64 %idxprom19, i64 1
  %10 = load double, double* %arrayidx45, align 8, !tbaa !7
  %mul68 = fmul double %8, %8
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %10, double %mul68)
  %arrayidx75 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom15, i64 %indvars.iv1369, i64 %idxprom19, i64 3
  %12 = load double, double* %arrayidx75, align 8, !tbaa !7
  %13 = tail call double @llvm.fmuladd.f64(double %12, double %12, double %11)
  %mul84 = fmul double %13, 5.000000e-01
  %div92 = fdiv double %mul84, %9
  %mul100 = fmul double %10, %div
  %arrayidx103 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1369, i64 1
  store double %mul100, double* %arrayidx103, align 8, !tbaa !7
  %14 = load double, double* %arrayidx21, align 8, !tbaa !7
  %arrayidx118 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom15, i64 %indvars.iv1369, i64 %idxprom19, i64 4
  %15 = load double, double* %arrayidx118, align 8, !tbaa !7
  %sub119 = fsub double %15, %div92
  %mul120 = fmul double %sub119, 4.000000e-01
  %16 = tail call double @llvm.fmuladd.f64(double %14, double %div, double %mul120)
  %arrayidx123 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1369, i64 2
  store double %16, double* %arrayidx123, align 8, !tbaa !7
  %17 = load double, double* %arrayidx75, align 8, !tbaa !7
  %mul131 = fmul double %div, %17
  %arrayidx134 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1369, i64 3
  store double %mul131, double* %arrayidx134, align 8, !tbaa !7
  %18 = load double, double* %arrayidx118, align 8, !tbaa !7
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
  %arrayidx164 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom157, i64 %indvars.iv1364, i64 %idxprom161, i64 0
  %21 = load double, double* %arrayidx164, align 8, !tbaa !7
  %arrayidx169 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1365, i64 0
  %22 = load double, double* %arrayidx169, align 8, !tbaa !7
  %arrayidx174 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %20, i64 0
  %23 = load double, double* %arrayidx174, align 8, !tbaa !7
  %sub175 = fsub double %22, %23
  %24 = tail call double @llvm.fmuladd.f64(double %sub175, double -5.500000e+00, double %21)
  store double %24, double* %arrayidx164, align 8, !tbaa !7
  %arrayidx164.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom157, i64 %indvars.iv1364, i64 %idxprom161, i64 1
  %25 = load double, double* %arrayidx164.1, align 8, !tbaa !7
  %arrayidx169.1 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1365, i64 1
  %26 = load double, double* %arrayidx169.1, align 8, !tbaa !7
  %arrayidx174.1 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %20, i64 1
  %27 = load double, double* %arrayidx174.1, align 8, !tbaa !7
  %sub175.1 = fsub double %26, %27
  %28 = tail call double @llvm.fmuladd.f64(double %sub175.1, double -5.500000e+00, double %25)
  store double %28, double* %arrayidx164.1, align 8, !tbaa !7
  %arrayidx164.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom157, i64 %indvars.iv1364, i64 %idxprom161, i64 2
  %29 = load double, double* %arrayidx164.2, align 8, !tbaa !7
  %arrayidx169.2 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1365, i64 2
  %30 = load double, double* %arrayidx169.2, align 8, !tbaa !7
  %arrayidx174.2 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %20, i64 2
  %31 = load double, double* %arrayidx174.2, align 8, !tbaa !7
  %sub175.2 = fsub double %30, %31
  %32 = tail call double @llvm.fmuladd.f64(double %sub175.2, double -5.500000e+00, double %29)
  store double %32, double* %arrayidx164.2, align 8, !tbaa !7
  %arrayidx164.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom157, i64 %indvars.iv1364, i64 %idxprom161, i64 3
  %33 = load double, double* %arrayidx164.3, align 8, !tbaa !7
  %arrayidx169.3 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1365, i64 3
  %34 = load double, double* %arrayidx169.3, align 8, !tbaa !7
  %arrayidx174.3 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %20, i64 3
  %35 = load double, double* %arrayidx174.3, align 8, !tbaa !7
  %sub175.3 = fsub double %34, %35
  %36 = tail call double @llvm.fmuladd.f64(double %sub175.3, double -5.500000e+00, double %33)
  store double %36, double* %arrayidx164.3, align 8, !tbaa !7
  %arrayidx164.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom157, i64 %indvars.iv1364, i64 %idxprom161, i64 4
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
  %cmp1921337 = icmp sgt i32 %e, 1
  br i1 %cmp1921337, label %for.body194.lr.ph, label %for.cond315.preheader

for.body194.lr.ph:                                ; preds = %for.cond191.preheader
  %idxprom195 = sext i32 %conv to i64
  %idxprom199 = sext i32 %conv3 to i64
  %wide.trip.count1359 = zext i32 %e to i64
  br label %for.body194

for.cond315.preheader:                            ; preds = %for.body194, %for.cond191.preheader
  %idxprom320 = sext i32 %conv to i64
  %idxprom324 = sext i32 %conv3 to i64
  br i1 %cmp1501340, label %for.body319.lr.ph, label %for.cond559.preheader

for.body319.lr.ph:                                ; preds = %for.cond315.preheader
  %wide.trip.count1354 = zext i32 %sub149 to i64
  br label %for.body319

for.body194:                                      ; preds = %for.body194, %for.body194.lr.ph
  %indvars.iv1356 = phi i64 [ 1, %for.body194.lr.ph ], [ %indvars.iv.next1357, %for.body194 ]
  %arrayidx201 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom195, i64 %indvars.iv1356, i64 %idxprom199, i64 0
  %41 = load double, double* %arrayidx201, align 8, !tbaa !7
  %div202 = fdiv double 1.000000e+00, %41
  %arrayidx209 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom195, i64 %indvars.iv1356, i64 %idxprom199, i64 1
  %42 = load double, double* %arrayidx209, align 8, !tbaa !7
  %mul210 = fmul double %div202, %42
  %arrayidx217 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom195, i64 %indvars.iv1356, i64 %idxprom199, i64 2
  %43 = load double, double* %arrayidx217, align 8, !tbaa !7
  %mul218 = fmul double %div202, %43
  %arrayidx225 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom195, i64 %indvars.iv1356, i64 %idxprom199, i64 3
  %44 = load double, double* %arrayidx225, align 8, !tbaa !7
  %mul226 = fmul double %div202, %44
  %arrayidx233 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom195, i64 %indvars.iv1356, i64 %idxprom199, i64 4
  %45 = load double, double* %arrayidx233, align 8, !tbaa !7
  %mul234 = fmul double %div202, %45
  %46 = add nsw i64 %indvars.iv1356, -1
  %arrayidx242 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom195, i64 %46, i64 %idxprom199, i64 0
  %47 = load double, double* %arrayidx242, align 8, !tbaa !7
  %div243 = fdiv double 1.000000e+00, %47
  %arrayidx251 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom195, i64 %46, i64 %idxprom199, i64 1
  %48 = load double, double* %arrayidx251, align 8, !tbaa !7
  %mul252 = fmul double %div243, %48
  %arrayidx260 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom195, i64 %46, i64 %idxprom199, i64 2
  %49 = load double, double* %arrayidx260, align 8, !tbaa !7
  %mul261 = fmul double %div243, %49
  %arrayidx269 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom195, i64 %46, i64 %idxprom199, i64 3
  %50 = load double, double* %arrayidx269, align 8, !tbaa !7
  %mul270 = fmul double %div243, %50
  %arrayidx278 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom195, i64 %46, i64 %idxprom199, i64 4
  %51 = load double, double* %arrayidx278, align 8, !tbaa !7
  %mul279 = fmul double %div243, %51
  %sub280 = fsub double %mul210, %mul252
  %mul281 = fmul double %sub280, 1.100000e+01
  %arrayidx284 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1356, i64 1
  store double %mul281, double* %arrayidx284, align 8, !tbaa !7
  %sub285 = fsub double %mul218, %mul261
  %mul286 = fmul double %sub285, 0x402D555555555555
  %arrayidx289 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1356, i64 2
  store double %mul286, double* %arrayidx289, align 8, !tbaa !7
  %sub290 = fsub double %mul226, %mul270
  %mul291 = fmul double %sub290, 1.100000e+01
  %arrayidx294 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1356, i64 3
  store double %mul291, double* %arrayidx294, align 8, !tbaa !7
  %mul296 = fmul double %mul218, %mul218
  %52 = tail call double @llvm.fmuladd.f64(double %mul210, double %mul210, double %mul296)
  %53 = tail call double @llvm.fmuladd.f64(double %mul226, double %mul226, double %52)
  %mul299 = fmul double %mul261, %mul261
  %54 = tail call double @llvm.fmuladd.f64(double %mul252, double %mul252, double %mul299)
  %55 = tail call double @llvm.fmuladd.f64(double %mul270, double %mul270, double %54)
  %sub301 = fsub double %53, %55
  %neg305 = fsub double -0.000000e+00, %mul299
  %56 = tail call double @llvm.fmuladd.f64(double %mul218, double %mul218, double %neg305)
  %mul306 = fmul double %56, 0x3FFD555555555555
  %57 = tail call double @llvm.fmuladd.f64(double %sub301, double 0xC0151EB851EB851D, double %mul306)
  %sub307 = fsub double %mul234, %mul279
  %58 = tail call double @llvm.fmuladd.f64(double %sub307, double 2.156000e+01, double %57)
  %arrayidx311 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1356, i64 4
  store double %58, double* %arrayidx311, align 8, !tbaa !7
  %indvars.iv.next1357 = add nuw nsw i64 %indvars.iv1356, 1
  %exitcond1360 = icmp eq i64 %indvars.iv.next1357, %wide.trip.count1359
  br i1 %exitcond1360, label %for.cond315.preheader, label %for.body194

for.cond559.preheader:                            ; preds = %for.body319, %for.cond315.preheader
  %call570 = tail call double @_Z3maxdd(double 7.500000e-01, double 7.500000e-01) #3
  %call571 = tail call double @_Z3maxdd(double %call570, double 1.000000e+00) #3
  %neg599 = fmul double %call571, -2.500000e-01
  %arrayidx569 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 1, i64 %idxprom324, i64 0
  %59 = load double, double* %arrayidx569, align 8, !tbaa !7
  %arrayidx579 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 1, i64 %idxprom324, i64 0
  %60 = load double, double* %arrayidx579, align 8, !tbaa !7
  %arrayidx587 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 2, i64 %idxprom324, i64 0
  %61 = load double, double* %arrayidx587, align 8, !tbaa !7
  %neg589 = fmul double %61, -4.000000e+00
  %62 = tail call double @llvm.fmuladd.f64(double %60, double 5.000000e+00, double %neg589)
  %arrayidx596 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 3, i64 %idxprom324, i64 0
  %63 = load double, double* %arrayidx596, align 8, !tbaa !7
  %add597 = fadd double %63, %62
  %64 = tail call double @llvm.fmuladd.f64(double %neg599, double %add597, double %59)
  store double %64, double* %arrayidx569, align 8, !tbaa !7
  %arrayidx613 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 2, i64 %idxprom324, i64 0
  %65 = load double, double* %arrayidx613, align 8, !tbaa !7
  %66 = load double, double* %arrayidx579, align 8, !tbaa !7
  %67 = load double, double* %arrayidx587, align 8, !tbaa !7
  %mul632 = fmul double %67, 6.000000e+00
  %68 = tail call double @llvm.fmuladd.f64(double %66, double -4.000000e+00, double %mul632)
  %69 = load double, double* %arrayidx596, align 8, !tbaa !7
  %70 = tail call double @llvm.fmuladd.f64(double %69, double -4.000000e+00, double %68)
  %arrayidx647 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 4, i64 %idxprom324, i64 0
  %71 = load double, double* %arrayidx647, align 8, !tbaa !7
  %add648 = fadd double %71, %70
  %72 = tail call double @llvm.fmuladd.f64(double %neg599, double %add648, double %65)
  store double %72, double* %arrayidx613, align 8, !tbaa !7
  %arrayidx569.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 1, i64 %idxprom324, i64 1
  %73 = load double, double* %arrayidx569.1, align 8, !tbaa !7
  %arrayidx579.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 1, i64 %idxprom324, i64 1
  %74 = load double, double* %arrayidx579.1, align 8, !tbaa !7
  %arrayidx587.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 2, i64 %idxprom324, i64 1
  %75 = load double, double* %arrayidx587.1, align 8, !tbaa !7
  %neg589.1 = fmul double %75, -4.000000e+00
  %76 = tail call double @llvm.fmuladd.f64(double %74, double 5.000000e+00, double %neg589.1)
  %arrayidx596.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 3, i64 %idxprom324, i64 1
  %77 = load double, double* %arrayidx596.1, align 8, !tbaa !7
  %add597.1 = fadd double %77, %76
  %78 = tail call double @llvm.fmuladd.f64(double %neg599, double %add597.1, double %73)
  store double %78, double* %arrayidx569.1, align 8, !tbaa !7
  %arrayidx613.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 2, i64 %idxprom324, i64 1
  %79 = load double, double* %arrayidx613.1, align 8, !tbaa !7
  %80 = load double, double* %arrayidx579.1, align 8, !tbaa !7
  %81 = load double, double* %arrayidx587.1, align 8, !tbaa !7
  %mul632.1 = fmul double %81, 6.000000e+00
  %82 = tail call double @llvm.fmuladd.f64(double %80, double -4.000000e+00, double %mul632.1)
  %83 = load double, double* %arrayidx596.1, align 8, !tbaa !7
  %84 = tail call double @llvm.fmuladd.f64(double %83, double -4.000000e+00, double %82)
  %arrayidx647.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 4, i64 %idxprom324, i64 1
  %85 = load double, double* %arrayidx647.1, align 8, !tbaa !7
  %add648.1 = fadd double %85, %84
  %86 = tail call double @llvm.fmuladd.f64(double %neg599, double %add648.1, double %79)
  store double %86, double* %arrayidx613.1, align 8, !tbaa !7
  %arrayidx569.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 1, i64 %idxprom324, i64 2
  %87 = load double, double* %arrayidx569.2, align 8, !tbaa !7
  %arrayidx579.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 1, i64 %idxprom324, i64 2
  %88 = load double, double* %arrayidx579.2, align 8, !tbaa !7
  %arrayidx587.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 2, i64 %idxprom324, i64 2
  %89 = load double, double* %arrayidx587.2, align 8, !tbaa !7
  %neg589.2 = fmul double %89, -4.000000e+00
  %90 = tail call double @llvm.fmuladd.f64(double %88, double 5.000000e+00, double %neg589.2)
  %arrayidx596.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 3, i64 %idxprom324, i64 2
  %91 = load double, double* %arrayidx596.2, align 8, !tbaa !7
  %add597.2 = fadd double %91, %90
  %92 = tail call double @llvm.fmuladd.f64(double %neg599, double %add597.2, double %87)
  store double %92, double* %arrayidx569.2, align 8, !tbaa !7
  %arrayidx613.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 2, i64 %idxprom324, i64 2
  %93 = load double, double* %arrayidx613.2, align 8, !tbaa !7
  %94 = load double, double* %arrayidx579.2, align 8, !tbaa !7
  %95 = load double, double* %arrayidx587.2, align 8, !tbaa !7
  %mul632.2 = fmul double %95, 6.000000e+00
  %96 = tail call double @llvm.fmuladd.f64(double %94, double -4.000000e+00, double %mul632.2)
  %97 = load double, double* %arrayidx596.2, align 8, !tbaa !7
  %98 = tail call double @llvm.fmuladd.f64(double %97, double -4.000000e+00, double %96)
  %arrayidx647.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 4, i64 %idxprom324, i64 2
  %99 = load double, double* %arrayidx647.2, align 8, !tbaa !7
  %add648.2 = fadd double %99, %98
  %100 = tail call double @llvm.fmuladd.f64(double %neg599, double %add648.2, double %93)
  store double %100, double* %arrayidx613.2, align 8, !tbaa !7
  %arrayidx569.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 1, i64 %idxprom324, i64 3
  %101 = load double, double* %arrayidx569.3, align 8, !tbaa !7
  %arrayidx579.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 1, i64 %idxprom324, i64 3
  %102 = load double, double* %arrayidx579.3, align 8, !tbaa !7
  %arrayidx587.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 2, i64 %idxprom324, i64 3
  %103 = load double, double* %arrayidx587.3, align 8, !tbaa !7
  %neg589.3 = fmul double %103, -4.000000e+00
  %104 = tail call double @llvm.fmuladd.f64(double %102, double 5.000000e+00, double %neg589.3)
  %arrayidx596.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 3, i64 %idxprom324, i64 3
  %105 = load double, double* %arrayidx596.3, align 8, !tbaa !7
  %add597.3 = fadd double %105, %104
  %106 = tail call double @llvm.fmuladd.f64(double %neg599, double %add597.3, double %101)
  store double %106, double* %arrayidx569.3, align 8, !tbaa !7
  %arrayidx613.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 2, i64 %idxprom324, i64 3
  %107 = load double, double* %arrayidx613.3, align 8, !tbaa !7
  %108 = load double, double* %arrayidx579.3, align 8, !tbaa !7
  %109 = load double, double* %arrayidx587.3, align 8, !tbaa !7
  %mul632.3 = fmul double %109, 6.000000e+00
  %110 = tail call double @llvm.fmuladd.f64(double %108, double -4.000000e+00, double %mul632.3)
  %111 = load double, double* %arrayidx596.3, align 8, !tbaa !7
  %112 = tail call double @llvm.fmuladd.f64(double %111, double -4.000000e+00, double %110)
  %arrayidx647.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 4, i64 %idxprom324, i64 3
  %113 = load double, double* %arrayidx647.3, align 8, !tbaa !7
  %add648.3 = fadd double %113, %112
  %114 = tail call double @llvm.fmuladd.f64(double %neg599, double %add648.3, double %107)
  store double %114, double* %arrayidx613.3, align 8, !tbaa !7
  %arrayidx569.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 1, i64 %idxprom324, i64 4
  %115 = load double, double* %arrayidx569.4, align 8, !tbaa !7
  %arrayidx579.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 1, i64 %idxprom324, i64 4
  %116 = load double, double* %arrayidx579.4, align 8, !tbaa !7
  %arrayidx587.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 2, i64 %idxprom324, i64 4
  %117 = load double, double* %arrayidx587.4, align 8, !tbaa !7
  %neg589.4 = fmul double %117, -4.000000e+00
  %118 = tail call double @llvm.fmuladd.f64(double %116, double 5.000000e+00, double %neg589.4)
  %arrayidx596.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 3, i64 %idxprom324, i64 4
  %119 = load double, double* %arrayidx596.4, align 8, !tbaa !7
  %add597.4 = fadd double %119, %118
  %120 = tail call double @llvm.fmuladd.f64(double %neg599, double %add597.4, double %115)
  store double %120, double* %arrayidx569.4, align 8, !tbaa !7
  %arrayidx613.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 2, i64 %idxprom324, i64 4
  %121 = load double, double* %arrayidx613.4, align 8, !tbaa !7
  %122 = load double, double* %arrayidx579.4, align 8, !tbaa !7
  %123 = load double, double* %arrayidx587.4, align 8, !tbaa !7
  %mul632.4 = fmul double %123, 6.000000e+00
  %124 = tail call double @llvm.fmuladd.f64(double %122, double -4.000000e+00, double %mul632.4)
  %125 = load double, double* %arrayidx596.4, align 8, !tbaa !7
  %126 = tail call double @llvm.fmuladd.f64(double %125, double -4.000000e+00, double %124)
  %arrayidx647.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 4, i64 %idxprom324, i64 4
  %127 = load double, double* %arrayidx647.4, align 8, !tbaa !7
  %add648.4 = fadd double %127, %126
  %128 = tail call double @llvm.fmuladd.f64(double %neg599, double %add648.4, double %121)
  store double %128, double* %arrayidx613.4, align 8, !tbaa !7
  %sub662 = add i32 %e, -3
  %cmp6631332 = icmp sgt i32 %sub662, 3
  br i1 %cmp6631332, label %for.cond666.preheader.lr.ph, label %for.cond745.preheader

for.body319:                                      ; preds = %for.body319, %for.body319.lr.ph
  %indvars.iv1351 = phi i64 [ 1, %for.body319.lr.ph ], [ %indvars.iv.next1352, %for.body319 ]
  %arrayidx326 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %indvars.iv1351, i64 %idxprom324, i64 0
  %129 = load double, double* %arrayidx326, align 8, !tbaa !7
  %130 = add nsw i64 %indvars.iv1351, -1
  %arrayidx334 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %130, i64 %idxprom324, i64 0
  %131 = load double, double* %arrayidx334, align 8, !tbaa !7
  %arrayidx341 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv1351, i64 %idxprom324, i64 0
  %132 = load double, double* %arrayidx341, align 8, !tbaa !7
  %133 = tail call double @llvm.fmuladd.f64(double %132, double -2.000000e+00, double %131)
  %indvars.iv.next1352 = add nuw nsw i64 %indvars.iv1351, 1
  %arrayidx350 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv.next1352, i64 %idxprom324, i64 0
  %134 = load double, double* %arrayidx350, align 8, !tbaa !7
  %add351 = fadd double %133, %134
  %135 = tail call double @llvm.fmuladd.f64(double %add351, double 9.075000e+01, double %129)
  store double %135, double* %arrayidx326, align 8, !tbaa !7
  %arrayidx366 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %indvars.iv1351, i64 %idxprom324, i64 1
  %136 = load double, double* %arrayidx366, align 8, !tbaa !7
  %arrayidx370 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1352, i64 1
  %137 = load double, double* %arrayidx370, align 8, !tbaa !7
  %arrayidx373 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1351, i64 1
  %138 = load double, double* %arrayidx373, align 8, !tbaa !7
  %sub374 = fsub double %137, %138
  %139 = tail call double @llvm.fmuladd.f64(double %sub374, double 1.100000e+00, double %136)
  %arrayidx383 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %130, i64 %idxprom324, i64 1
  %140 = load double, double* %arrayidx383, align 8, !tbaa !7
  %arrayidx390 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv1351, i64 %idxprom324, i64 1
  %141 = load double, double* %arrayidx390, align 8, !tbaa !7
  %142 = tail call double @llvm.fmuladd.f64(double %141, double -2.000000e+00, double %140)
  %arrayidx399 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv.next1352, i64 %idxprom324, i64 1
  %143 = load double, double* %arrayidx399, align 8, !tbaa !7
  %add400 = fadd double %142, %143
  %144 = tail call double @llvm.fmuladd.f64(double %add400, double 9.075000e+01, double %139)
  store double %144, double* %arrayidx366, align 8, !tbaa !7
  %arrayidx415 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %indvars.iv1351, i64 %idxprom324, i64 2
  %145 = load double, double* %arrayidx415, align 8, !tbaa !7
  %arrayidx419 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1352, i64 2
  %146 = load double, double* %arrayidx419, align 8, !tbaa !7
  %arrayidx422 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1351, i64 2
  %147 = load double, double* %arrayidx422, align 8, !tbaa !7
  %sub423 = fsub double %146, %147
  %148 = tail call double @llvm.fmuladd.f64(double %sub423, double 1.100000e+00, double %145)
  %arrayidx432 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %130, i64 %idxprom324, i64 2
  %149 = load double, double* %arrayidx432, align 8, !tbaa !7
  %arrayidx439 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv1351, i64 %idxprom324, i64 2
  %150 = load double, double* %arrayidx439, align 8, !tbaa !7
  %151 = tail call double @llvm.fmuladd.f64(double %150, double -2.000000e+00, double %149)
  %arrayidx448 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv.next1352, i64 %idxprom324, i64 2
  %152 = load double, double* %arrayidx448, align 8, !tbaa !7
  %add449 = fadd double %151, %152
  %153 = tail call double @llvm.fmuladd.f64(double %add449, double 9.075000e+01, double %148)
  store double %153, double* %arrayidx415, align 8, !tbaa !7
  %arrayidx464 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %indvars.iv1351, i64 %idxprom324, i64 3
  %154 = load double, double* %arrayidx464, align 8, !tbaa !7
  %arrayidx468 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1352, i64 3
  %155 = load double, double* %arrayidx468, align 8, !tbaa !7
  %arrayidx471 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1351, i64 3
  %156 = load double, double* %arrayidx471, align 8, !tbaa !7
  %sub472 = fsub double %155, %156
  %157 = tail call double @llvm.fmuladd.f64(double %sub472, double 1.100000e+00, double %154)
  %arrayidx481 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %130, i64 %idxprom324, i64 3
  %158 = load double, double* %arrayidx481, align 8, !tbaa !7
  %arrayidx488 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv1351, i64 %idxprom324, i64 3
  %159 = load double, double* %arrayidx488, align 8, !tbaa !7
  %160 = tail call double @llvm.fmuladd.f64(double %159, double -2.000000e+00, double %158)
  %arrayidx497 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv.next1352, i64 %idxprom324, i64 3
  %161 = load double, double* %arrayidx497, align 8, !tbaa !7
  %add498 = fadd double %160, %161
  %162 = tail call double @llvm.fmuladd.f64(double %add498, double 9.075000e+01, double %157)
  store double %162, double* %arrayidx464, align 8, !tbaa !7
  %arrayidx513 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %indvars.iv1351, i64 %idxprom324, i64 4
  %163 = load double, double* %arrayidx513, align 8, !tbaa !7
  %arrayidx517 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next1352, i64 4
  %164 = load double, double* %arrayidx517, align 8, !tbaa !7
  %arrayidx520 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv1351, i64 4
  %165 = load double, double* %arrayidx520, align 8, !tbaa !7
  %sub521 = fsub double %164, %165
  %166 = tail call double @llvm.fmuladd.f64(double %sub521, double 1.100000e+00, double %163)
  %arrayidx530 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %130, i64 %idxprom324, i64 4
  %167 = load double, double* %arrayidx530, align 8, !tbaa !7
  %arrayidx537 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv1351, i64 %idxprom324, i64 4
  %168 = load double, double* %arrayidx537, align 8, !tbaa !7
  %169 = tail call double @llvm.fmuladd.f64(double %168, double -2.000000e+00, double %167)
  %arrayidx546 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv.next1352, i64 %idxprom324, i64 4
  %170 = load double, double* %arrayidx546, align 8, !tbaa !7
  %add547 = fadd double %169, %170
  %171 = tail call double @llvm.fmuladd.f64(double %add547, double 9.075000e+01, double %166)
  store double %171, double* %arrayidx513, align 8, !tbaa !7
  %exitcond1355 = icmp eq i64 %indvars.iv.next1352, %wide.trip.count1354
  br i1 %exitcond1355, label %for.cond559.preheader, label %for.body319

for.cond666.preheader.lr.ph:                      ; preds = %for.cond559.preheader
  %wide.trip.count = zext i32 %sub662 to i64
  br label %for.cond666.preheader

for.cond666.preheader:                            ; preds = %for.cond666.preheader, %for.cond666.preheader.lr.ph
  %indvars.iv = phi i64 [ 3, %for.cond666.preheader.lr.ph ], [ %indvars.iv.next, %for.cond666.preheader ]
  %172 = add nsw i64 %indvars.iv, -2
  %173 = add nsw i64 %indvars.iv, -1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %174 = add nuw i64 %indvars.iv, 2
  %idxprom722 = and i64 %174, 4294967295
  %arrayidx677 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %indvars.iv, i64 %idxprom324, i64 0
  %175 = load double, double* %arrayidx677, align 8, !tbaa !7
  %arrayidx689 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %172, i64 %idxprom324, i64 0
  %176 = load double, double* %arrayidx689, align 8, !tbaa !7
  %arrayidx698 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %173, i64 %idxprom324, i64 0
  %177 = load double, double* %arrayidx698, align 8, !tbaa !7
  %178 = tail call double @llvm.fmuladd.f64(double %177, double -4.000000e+00, double %176)
  %arrayidx707 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv, i64 %idxprom324, i64 0
  %179 = load double, double* %arrayidx707, align 8, !tbaa !7
  %180 = tail call double @llvm.fmuladd.f64(double %179, double 6.000000e+00, double %178)
  %arrayidx717 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv.next, i64 %idxprom324, i64 0
  %181 = load double, double* %arrayidx717, align 8, !tbaa !7
  %182 = tail call double @llvm.fmuladd.f64(double %181, double -4.000000e+00, double %180)
  %arrayidx727 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom722, i64 %idxprom324, i64 0
  %183 = load double, double* %arrayidx727, align 8, !tbaa !7
  %add728 = fadd double %182, %183
  %184 = tail call double @llvm.fmuladd.f64(double %neg599, double %add728, double %175)
  store double %184, double* %arrayidx677, align 8, !tbaa !7
  %arrayidx677.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %indvars.iv, i64 %idxprom324, i64 1
  %185 = load double, double* %arrayidx677.1, align 8, !tbaa !7
  %arrayidx689.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %172, i64 %idxprom324, i64 1
  %186 = load double, double* %arrayidx689.1, align 8, !tbaa !7
  %arrayidx698.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %173, i64 %idxprom324, i64 1
  %187 = load double, double* %arrayidx698.1, align 8, !tbaa !7
  %188 = tail call double @llvm.fmuladd.f64(double %187, double -4.000000e+00, double %186)
  %arrayidx707.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv, i64 %idxprom324, i64 1
  %189 = load double, double* %arrayidx707.1, align 8, !tbaa !7
  %190 = tail call double @llvm.fmuladd.f64(double %189, double 6.000000e+00, double %188)
  %arrayidx717.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv.next, i64 %idxprom324, i64 1
  %191 = load double, double* %arrayidx717.1, align 8, !tbaa !7
  %192 = tail call double @llvm.fmuladd.f64(double %191, double -4.000000e+00, double %190)
  %arrayidx727.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom722, i64 %idxprom324, i64 1
  %193 = load double, double* %arrayidx727.1, align 8, !tbaa !7
  %add728.1 = fadd double %192, %193
  %194 = tail call double @llvm.fmuladd.f64(double %neg599, double %add728.1, double %185)
  store double %194, double* %arrayidx677.1, align 8, !tbaa !7
  %arrayidx677.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %indvars.iv, i64 %idxprom324, i64 2
  %195 = load double, double* %arrayidx677.2, align 8, !tbaa !7
  %arrayidx689.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %172, i64 %idxprom324, i64 2
  %196 = load double, double* %arrayidx689.2, align 8, !tbaa !7
  %arrayidx698.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %173, i64 %idxprom324, i64 2
  %197 = load double, double* %arrayidx698.2, align 8, !tbaa !7
  %198 = tail call double @llvm.fmuladd.f64(double %197, double -4.000000e+00, double %196)
  %arrayidx707.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv, i64 %idxprom324, i64 2
  %199 = load double, double* %arrayidx707.2, align 8, !tbaa !7
  %200 = tail call double @llvm.fmuladd.f64(double %199, double 6.000000e+00, double %198)
  %arrayidx717.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv.next, i64 %idxprom324, i64 2
  %201 = load double, double* %arrayidx717.2, align 8, !tbaa !7
  %202 = tail call double @llvm.fmuladd.f64(double %201, double -4.000000e+00, double %200)
  %arrayidx727.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom722, i64 %idxprom324, i64 2
  %203 = load double, double* %arrayidx727.2, align 8, !tbaa !7
  %add728.2 = fadd double %202, %203
  %204 = tail call double @llvm.fmuladd.f64(double %neg599, double %add728.2, double %195)
  store double %204, double* %arrayidx677.2, align 8, !tbaa !7
  %arrayidx677.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %indvars.iv, i64 %idxprom324, i64 3
  %205 = load double, double* %arrayidx677.3, align 8, !tbaa !7
  %arrayidx689.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %172, i64 %idxprom324, i64 3
  %206 = load double, double* %arrayidx689.3, align 8, !tbaa !7
  %arrayidx698.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %173, i64 %idxprom324, i64 3
  %207 = load double, double* %arrayidx698.3, align 8, !tbaa !7
  %208 = tail call double @llvm.fmuladd.f64(double %207, double -4.000000e+00, double %206)
  %arrayidx707.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv, i64 %idxprom324, i64 3
  %209 = load double, double* %arrayidx707.3, align 8, !tbaa !7
  %210 = tail call double @llvm.fmuladd.f64(double %209, double 6.000000e+00, double %208)
  %arrayidx717.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv.next, i64 %idxprom324, i64 3
  %211 = load double, double* %arrayidx717.3, align 8, !tbaa !7
  %212 = tail call double @llvm.fmuladd.f64(double %211, double -4.000000e+00, double %210)
  %arrayidx727.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom722, i64 %idxprom324, i64 3
  %213 = load double, double* %arrayidx727.3, align 8, !tbaa !7
  %add728.3 = fadd double %212, %213
  %214 = tail call double @llvm.fmuladd.f64(double %neg599, double %add728.3, double %205)
  store double %214, double* %arrayidx677.3, align 8, !tbaa !7
  %arrayidx677.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %indvars.iv, i64 %idxprom324, i64 4
  %215 = load double, double* %arrayidx677.4, align 8, !tbaa !7
  %arrayidx689.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %172, i64 %idxprom324, i64 4
  %216 = load double, double* %arrayidx689.4, align 8, !tbaa !7
  %arrayidx698.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %173, i64 %idxprom324, i64 4
  %217 = load double, double* %arrayidx698.4, align 8, !tbaa !7
  %218 = tail call double @llvm.fmuladd.f64(double %217, double -4.000000e+00, double %216)
  %arrayidx707.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv, i64 %idxprom324, i64 4
  %219 = load double, double* %arrayidx707.4, align 8, !tbaa !7
  %220 = tail call double @llvm.fmuladd.f64(double %219, double 6.000000e+00, double %218)
  %arrayidx717.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %indvars.iv.next, i64 %idxprom324, i64 4
  %221 = load double, double* %arrayidx717.4, align 8, !tbaa !7
  %222 = tail call double @llvm.fmuladd.f64(double %221, double -4.000000e+00, double %220)
  %arrayidx727.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom722, i64 %idxprom324, i64 4
  %223 = load double, double* %arrayidx727.4, align 8, !tbaa !7
  %add728.4 = fadd double %222, %223
  %224 = tail call double @llvm.fmuladd.f64(double %neg599, double %add728.4, double %215)
  store double %224, double* %arrayidx677.4, align 8, !tbaa !7
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.cond745.preheader, label %for.cond666.preheader

for.cond745.preheader:                            ; preds = %for.cond666.preheader, %for.cond559.preheader
  %idxprom752 = sext i32 %sub662 to i64
  %sub763 = add nsw i32 %e, -5
  %idxprom764 = sext i32 %sub763 to i64
  %sub772 = add nsw i32 %e, -4
  %idxprom773 = sext i32 %sub772 to i64
  %sub792 = add nsw i32 %e, -2
  %idxprom793 = sext i32 %sub792 to i64
  %arrayidx757 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %idxprom752, i64 %idxprom324, i64 0
  %225 = load double, double* %arrayidx757, align 8, !tbaa !7
  %arrayidx769 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom764, i64 %idxprom324, i64 0
  %226 = load double, double* %arrayidx769, align 8, !tbaa !7
  %arrayidx778 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom773, i64 %idxprom324, i64 0
  %227 = load double, double* %arrayidx778, align 8, !tbaa !7
  %228 = tail call double @llvm.fmuladd.f64(double %227, double -4.000000e+00, double %226)
  %arrayidx788 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom752, i64 %idxprom324, i64 0
  %229 = load double, double* %arrayidx788, align 8, !tbaa !7
  %230 = tail call double @llvm.fmuladd.f64(double %229, double 6.000000e+00, double %228)
  %arrayidx798 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom793, i64 %idxprom324, i64 0
  %231 = load double, double* %arrayidx798, align 8, !tbaa !7
  %232 = tail call double @llvm.fmuladd.f64(double %231, double -4.000000e+00, double %230)
  %233 = tail call double @llvm.fmuladd.f64(double %neg599, double %232, double %225)
  store double %233, double* %arrayidx757, align 8, !tbaa !7
  %arrayidx819 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %idxprom793, i64 %idxprom324, i64 0
  %234 = load double, double* %arrayidx819, align 8, !tbaa !7
  %235 = load double, double* %arrayidx778, align 8, !tbaa !7
  %236 = load double, double* %arrayidx788, align 8, !tbaa !7
  %237 = tail call double @llvm.fmuladd.f64(double %236, double -4.000000e+00, double %235)
  %238 = load double, double* %arrayidx798, align 8, !tbaa !7
  %239 = tail call double @llvm.fmuladd.f64(double %238, double 5.000000e+00, double %237)
  %240 = tail call double @llvm.fmuladd.f64(double %neg599, double %239, double %234)
  store double %240, double* %arrayidx819, align 8, !tbaa !7
  %arrayidx757.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %idxprom752, i64 %idxprom324, i64 1
  %241 = load double, double* %arrayidx757.1, align 8, !tbaa !7
  %arrayidx769.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom764, i64 %idxprom324, i64 1
  %242 = load double, double* %arrayidx769.1, align 8, !tbaa !7
  %arrayidx778.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom773, i64 %idxprom324, i64 1
  %243 = load double, double* %arrayidx778.1, align 8, !tbaa !7
  %244 = tail call double @llvm.fmuladd.f64(double %243, double -4.000000e+00, double %242)
  %arrayidx788.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom752, i64 %idxprom324, i64 1
  %245 = load double, double* %arrayidx788.1, align 8, !tbaa !7
  %246 = tail call double @llvm.fmuladd.f64(double %245, double 6.000000e+00, double %244)
  %arrayidx798.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom793, i64 %idxprom324, i64 1
  %247 = load double, double* %arrayidx798.1, align 8, !tbaa !7
  %248 = tail call double @llvm.fmuladd.f64(double %247, double -4.000000e+00, double %246)
  %249 = tail call double @llvm.fmuladd.f64(double %neg599, double %248, double %241)
  store double %249, double* %arrayidx757.1, align 8, !tbaa !7
  %arrayidx819.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %idxprom793, i64 %idxprom324, i64 1
  %250 = load double, double* %arrayidx819.1, align 8, !tbaa !7
  %251 = load double, double* %arrayidx778.1, align 8, !tbaa !7
  %252 = load double, double* %arrayidx788.1, align 8, !tbaa !7
  %253 = tail call double @llvm.fmuladd.f64(double %252, double -4.000000e+00, double %251)
  %254 = load double, double* %arrayidx798.1, align 8, !tbaa !7
  %255 = tail call double @llvm.fmuladd.f64(double %254, double 5.000000e+00, double %253)
  %256 = tail call double @llvm.fmuladd.f64(double %neg599, double %255, double %250)
  store double %256, double* %arrayidx819.1, align 8, !tbaa !7
  %arrayidx757.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %idxprom752, i64 %idxprom324, i64 2
  %257 = load double, double* %arrayidx757.2, align 8, !tbaa !7
  %arrayidx769.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom764, i64 %idxprom324, i64 2
  %258 = load double, double* %arrayidx769.2, align 8, !tbaa !7
  %arrayidx778.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom773, i64 %idxprom324, i64 2
  %259 = load double, double* %arrayidx778.2, align 8, !tbaa !7
  %260 = tail call double @llvm.fmuladd.f64(double %259, double -4.000000e+00, double %258)
  %arrayidx788.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom752, i64 %idxprom324, i64 2
  %261 = load double, double* %arrayidx788.2, align 8, !tbaa !7
  %262 = tail call double @llvm.fmuladd.f64(double %261, double 6.000000e+00, double %260)
  %arrayidx798.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom793, i64 %idxprom324, i64 2
  %263 = load double, double* %arrayidx798.2, align 8, !tbaa !7
  %264 = tail call double @llvm.fmuladd.f64(double %263, double -4.000000e+00, double %262)
  %265 = tail call double @llvm.fmuladd.f64(double %neg599, double %264, double %257)
  store double %265, double* %arrayidx757.2, align 8, !tbaa !7
  %arrayidx819.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %idxprom793, i64 %idxprom324, i64 2
  %266 = load double, double* %arrayidx819.2, align 8, !tbaa !7
  %267 = load double, double* %arrayidx778.2, align 8, !tbaa !7
  %268 = load double, double* %arrayidx788.2, align 8, !tbaa !7
  %269 = tail call double @llvm.fmuladd.f64(double %268, double -4.000000e+00, double %267)
  %270 = load double, double* %arrayidx798.2, align 8, !tbaa !7
  %271 = tail call double @llvm.fmuladd.f64(double %270, double 5.000000e+00, double %269)
  %272 = tail call double @llvm.fmuladd.f64(double %neg599, double %271, double %266)
  store double %272, double* %arrayidx819.2, align 8, !tbaa !7
  %arrayidx757.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %idxprom752, i64 %idxprom324, i64 3
  %273 = load double, double* %arrayidx757.3, align 8, !tbaa !7
  %arrayidx769.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom764, i64 %idxprom324, i64 3
  %274 = load double, double* %arrayidx769.3, align 8, !tbaa !7
  %arrayidx778.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom773, i64 %idxprom324, i64 3
  %275 = load double, double* %arrayidx778.3, align 8, !tbaa !7
  %276 = tail call double @llvm.fmuladd.f64(double %275, double -4.000000e+00, double %274)
  %arrayidx788.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom752, i64 %idxprom324, i64 3
  %277 = load double, double* %arrayidx788.3, align 8, !tbaa !7
  %278 = tail call double @llvm.fmuladd.f64(double %277, double 6.000000e+00, double %276)
  %arrayidx798.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom793, i64 %idxprom324, i64 3
  %279 = load double, double* %arrayidx798.3, align 8, !tbaa !7
  %280 = tail call double @llvm.fmuladd.f64(double %279, double -4.000000e+00, double %278)
  %281 = tail call double @llvm.fmuladd.f64(double %neg599, double %280, double %273)
  store double %281, double* %arrayidx757.3, align 8, !tbaa !7
  %arrayidx819.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %idxprom793, i64 %idxprom324, i64 3
  %282 = load double, double* %arrayidx819.3, align 8, !tbaa !7
  %283 = load double, double* %arrayidx778.3, align 8, !tbaa !7
  %284 = load double, double* %arrayidx788.3, align 8, !tbaa !7
  %285 = tail call double @llvm.fmuladd.f64(double %284, double -4.000000e+00, double %283)
  %286 = load double, double* %arrayidx798.3, align 8, !tbaa !7
  %287 = tail call double @llvm.fmuladd.f64(double %286, double 5.000000e+00, double %285)
  %288 = tail call double @llvm.fmuladd.f64(double %neg599, double %287, double %282)
  store double %288, double* %arrayidx819.3, align 8, !tbaa !7
  %arrayidx757.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %idxprom752, i64 %idxprom324, i64 4
  %289 = load double, double* %arrayidx757.4, align 8, !tbaa !7
  %arrayidx769.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom764, i64 %idxprom324, i64 4
  %290 = load double, double* %arrayidx769.4, align 8, !tbaa !7
  %arrayidx778.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom773, i64 %idxprom324, i64 4
  %291 = load double, double* %arrayidx778.4, align 8, !tbaa !7
  %292 = tail call double @llvm.fmuladd.f64(double %291, double -4.000000e+00, double %290)
  %arrayidx788.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom752, i64 %idxprom324, i64 4
  %293 = load double, double* %arrayidx788.4, align 8, !tbaa !7
  %294 = tail call double @llvm.fmuladd.f64(double %293, double 6.000000e+00, double %292)
  %arrayidx798.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom320, i64 %idxprom793, i64 %idxprom324, i64 4
  %295 = load double, double* %arrayidx798.4, align 8, !tbaa !7
  %296 = tail call double @llvm.fmuladd.f64(double %295, double -4.000000e+00, double %294)
  %297 = tail call double @llvm.fmuladd.f64(double %neg599, double %296, double %289)
  store double %297, double* %arrayidx757.4, align 8, !tbaa !7
  %arrayidx819.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom320, i64 %idxprom793, i64 %idxprom324, i64 4
  %298 = load double, double* %arrayidx819.4, align 8, !tbaa !7
  %299 = load double, double* %arrayidx778.4, align 8, !tbaa !7
  %300 = load double, double* %arrayidx788.4, align 8, !tbaa !7
  %301 = tail call double @llvm.fmuladd.f64(double %300, double -4.000000e+00, double %299)
  %302 = load double, double* %arrayidx798.4, align 8, !tbaa !7
  %303 = tail call double @llvm.fmuladd.f64(double %302, double 5.000000e+00, double %301)
  %304 = tail call double @llvm.fmuladd.f64(double %neg599, double %303, double %298)
  store double %304, double* %arrayidx819.4, align 8, !tbaa !7
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
