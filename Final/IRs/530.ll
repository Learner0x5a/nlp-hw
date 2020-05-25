; ModuleID = 'src/530.src'
source_filename = "src/530.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture readonly %b, double* nocapture readonly %c, double* %d, double* nocapture %e, double* nocapture %f, double* %g, double* %h, double* %i, i32 %j, i32 %k, i32 %l, i32 %m) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 1) #3
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %cmp = icmp sgt i32 %conv, %l
  %cmp5 = icmp sgt i32 %conv3, %k
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast double* %a to [13 x [13 x double]]*
  %3 = bitcast double* %c to [13 x [13 x double]]*
  %mul = mul nsw i32 %0, %k
  %add8 = add nsw i32 %mul, %1
  %mul9 = mul nsw i32 %add8, 12
  %idxprom = sext i32 %mul9 to i64
  %arrayidx = getelementptr inbounds double, double* %e, i64 %idxprom
  %mul13 = mul i32 %add8, 65
  %idxprom14 = sext i32 %mul13 to i64
  %arrayidx15 = getelementptr inbounds double, double* %g, i64 %idxprom14
  %4 = bitcast double* %arrayidx15 to [5 x double]*
  %arrayidx17 = getelementptr inbounds double, double* %h, i64 %idxprom14
  %5 = bitcast double* %arrayidx17 to [5 x double]*
  %arrayidx19 = getelementptr inbounds double, double* %i, i64 %idxprom14
  %6 = bitcast double* %arrayidx19 to [5 x double]*
  %add31 = add nsw i32 %j, 1
  %idxprom32 = sext i32 %add31 to i64
  store double 0.000000e+00, double* %arrayidx15, align 8, !tbaa !7
  store double 0.000000e+00, double* %arrayidx17, align 8, !tbaa !7
  store double 0.000000e+00, double* %arrayidx19, align 8, !tbaa !7
  %arrayidx35 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom32, i64 0
  store double 0.000000e+00, double* %arrayidx35, align 8, !tbaa !7
  %arrayidx40 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom32, i64 0
  store double 0.000000e+00, double* %arrayidx40, align 8, !tbaa !7
  %arrayidx45 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom32, i64 0
  store double 0.000000e+00, double* %arrayidx45, align 8, !tbaa !7
  %arrayidx24.1 = getelementptr inbounds double, double* %arrayidx15, i64 1
  store double 0.000000e+00, double* %arrayidx24.1, align 8, !tbaa !7
  %arrayidx27.1 = getelementptr inbounds double, double* %arrayidx17, i64 1
  store double 0.000000e+00, double* %arrayidx27.1, align 8, !tbaa !7
  %arrayidx30.1 = getelementptr inbounds double, double* %arrayidx19, i64 1
  store double 0.000000e+00, double* %arrayidx30.1, align 8, !tbaa !7
  %arrayidx35.1 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom32, i64 1
  store double 0.000000e+00, double* %arrayidx35.1, align 8, !tbaa !7
  %arrayidx40.1 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom32, i64 1
  store double 0.000000e+00, double* %arrayidx40.1, align 8, !tbaa !7
  %arrayidx45.1 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom32, i64 1
  store double 0.000000e+00, double* %arrayidx45.1, align 8, !tbaa !7
  %arrayidx24.2 = getelementptr inbounds double, double* %arrayidx15, i64 2
  %arrayidx27.2 = getelementptr inbounds double, double* %arrayidx17, i64 2
  %arrayidx30.2 = getelementptr inbounds double, double* %arrayidx19, i64 2
  %arrayidx35.2 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom32, i64 2
  %arrayidx40.2 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom32, i64 2
  %arrayidx45.2 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom32, i64 2
  %arrayidx24.3 = getelementptr inbounds double, double* %arrayidx15, i64 3
  store double 0.000000e+00, double* %arrayidx24.3, align 8, !tbaa !7
  %arrayidx27.3 = getelementptr inbounds double, double* %arrayidx17, i64 3
  store double 0.000000e+00, double* %arrayidx27.3, align 8, !tbaa !7
  %arrayidx30.3 = getelementptr inbounds double, double* %arrayidx19, i64 3
  store double 0.000000e+00, double* %arrayidx30.3, align 8, !tbaa !7
  %arrayidx35.3 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom32, i64 3
  store double 0.000000e+00, double* %arrayidx35.3, align 8, !tbaa !7
  %arrayidx40.3 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom32, i64 3
  store double 0.000000e+00, double* %arrayidx40.3, align 8, !tbaa !7
  %arrayidx45.3 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom32, i64 3
  store double 0.000000e+00, double* %arrayidx45.3, align 8, !tbaa !7
  %arrayidx24.4 = getelementptr inbounds double, double* %arrayidx15, i64 4
  store double 0.000000e+00, double* %arrayidx24.4, align 8, !tbaa !7
  %arrayidx27.4 = getelementptr inbounds double, double* %arrayidx17, i64 4
  store double 0.000000e+00, double* %arrayidx27.4, align 8, !tbaa !7
  %arrayidx30.4 = getelementptr inbounds double, double* %arrayidx19, i64 4
  store double 0.000000e+00, double* %arrayidx30.4, align 8, !tbaa !7
  %arrayidx35.4 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom32, i64 4
  store double 0.000000e+00, double* %arrayidx35.4, align 8, !tbaa !7
  %arrayidx40.4 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom32, i64 4
  store double 0.000000e+00, double* %arrayidx40.4, align 8, !tbaa !7
  %arrayidx45.4 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom32, i64 4
  store double 0.000000e+00, double* %arrayidx45.4, align 8, !tbaa !7
  %7 = bitcast double* %b to [13 x [13 x double]]*
  %8 = bitcast double* %d to [13 x [13 x [5 x double]]]*
  %arrayidx11 = getelementptr inbounds double, double* %f, i64 %idxprom
  store double 1.000000e+00, double* %arrayidx24.2, align 8, !tbaa !7
  store double 1.000000e+00, double* %arrayidx27.2, align 8, !tbaa !7
  store double 1.000000e+00, double* %arrayidx30.2, align 8, !tbaa !7
  store double 1.000000e+00, double* %arrayidx35.2, align 8, !tbaa !7
  store double 1.000000e+00, double* %arrayidx40.2, align 8, !tbaa !7
  store double 1.000000e+00, double* %arrayidx45.2, align 8, !tbaa !7
  %idxprom64 = sext i32 %conv to i64
  %idxprom66 = sext i32 %conv3 to i64
  %arrayidx68 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom64, i64 %idxprom66, i64 0
  %9 = load double, double* %arrayidx68, align 8, !tbaa !7
  %mul69 = fmul double %9, 1.000000e-01
  %arrayidx74 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 %idxprom64, i64 %idxprom66, i64 0
  %10 = load double, double* %arrayidx74, align 8, !tbaa !7
  store double %10, double* %arrayidx, align 8, !tbaa !7
  %11 = tail call double @llvm.fmuladd.f64(double %mul69, double 0x3FF5555555555555, double 7.500000e-01)
  %12 = tail call double @llvm.fmuladd.f64(double %mul69, double 0x3FFF5C28F5C28F5B, double 7.500000e-01)
  %cmp78 = fcmp ogt double %11, %12
  %cond = select i1 %cmp78, double %11, double %12
  %add82 = fadd double %mul69, 7.500000e-01
  %cmp83 = fcmp ogt double %add82, 7.500000e-01
  %cond89 = select i1 %cmp83, double %add82, double 7.500000e-01
  %cmp90 = fcmp ogt double %cond, %cond89
  %cond.cond89 = select i1 %cmp90, double %cond, double %cond89
  store double %cond.cond89, double* %arrayidx11, align 8, !tbaa !7
  %arrayidx119 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 %idxprom64, i64 %idxprom66, i64 0
  %13 = load double, double* %arrayidx119, align 8, !tbaa !7
  %arrayidx124 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom64, i64 %idxprom66, i64 1
  %14 = load double, double* %arrayidx124, align 8, !tbaa !7
  %mul125 = fmul double %14, 1.000000e-01
  %arrayidx130 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 %idxprom64, i64 %idxprom66, i64 1
  %15 = load double, double* %arrayidx130, align 8, !tbaa !7
  %arrayidx131 = getelementptr inbounds double, double* %arrayidx, i64 1
  store double %15, double* %arrayidx131, align 8, !tbaa !7
  %16 = tail call double @llvm.fmuladd.f64(double %mul125, double 0x3FF5555555555555, double 7.500000e-01)
  %17 = tail call double @llvm.fmuladd.f64(double %mul125, double 0x3FFF5C28F5C28F5B, double 7.500000e-01)
  %cmp134 = fcmp ogt double %16, %17
  %cond141 = select i1 %cmp134, double %16, double %17
  %add142 = fadd double %mul125, 7.500000e-01
  %cmp143 = fcmp ogt double %add142, 7.500000e-01
  %cond149 = select i1 %cmp143, double %add142, double 7.500000e-01
  %cmp150 = fcmp ogt double %cond141, %cond149
  %cond173 = select i1 %cmp150, double %cond141, double %cond149
  %arrayidx174 = getelementptr inbounds double, double* %arrayidx11, i64 1
  store double %cond173, double* %arrayidx174, align 8, !tbaa !7
  %arrayidx179 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 %idxprom64, i64 %idxprom66, i64 1
  %18 = load double, double* %arrayidx179, align 8, !tbaa !7
  %arrayidx186 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom64, i64 %idxprom66, i64 2
  %19 = load double, double* %arrayidx186, align 8, !tbaa !7
  %mul187 = fmul double %19, 1.000000e-01
  %arrayidx194 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 %idxprom64, i64 %idxprom66, i64 2
  %20 = load double, double* %arrayidx194, align 8, !tbaa !7
  %arrayidx197 = getelementptr inbounds double, double* %arrayidx, i64 2
  store double %20, double* %arrayidx197, align 8, !tbaa !7
  %21 = tail call double @llvm.fmuladd.f64(double %mul187, double 0x3FF5555555555555, double 7.500000e-01)
  %22 = tail call double @llvm.fmuladd.f64(double %mul187, double 0x3FFF5C28F5C28F5B, double 7.500000e-01)
  %cmp200 = fcmp ogt double %21, %22
  %cond207 = select i1 %cmp200, double %21, double %22
  %add208 = fadd double %mul187, 7.500000e-01
  %cmp209 = fcmp ogt double %add208, 7.500000e-01
  %cond215 = select i1 %cmp209, double %add208, double 7.500000e-01
  %cmp216 = fcmp ogt double %cond207, %cond215
  %cond207.cond215 = select i1 %cmp216, double %cond207, double %cond215
  %arrayidx242 = getelementptr inbounds double, double* %arrayidx11, i64 2
  store double %cond207.cond215, double* %arrayidx242, align 8, !tbaa !7
  %arrayidx249 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 %idxprom64, i64 %idxprom66, i64 2
  %23 = load double, double* %arrayidx249, align 8, !tbaa !7
  %arrayidx252 = getelementptr inbounds double, double* %arrayidx15, i64 5
  store double 0.000000e+00, double* %arrayidx252, align 8, !tbaa !7
  %neg = fmul double %cond.cond89, -1.815000e+00
  %24 = tail call double @llvm.fmuladd.f64(double %10, double 0xBFB51EB851EB851E, double %neg)
  %arrayidx259 = getelementptr inbounds double, double* %arrayidx252, i64 1
  store double %24, double* %arrayidx259, align 8, !tbaa !7
  %25 = tail call double @llvm.fmuladd.f64(double %cond173, double 3.630000e+00, double 1.000000e+00)
  %add261 = fadd double %25, 1.875000e-02
  %arrayidx265 = getelementptr inbounds double, double* %arrayidx252, i64 2
  store double %add261, double* %arrayidx265, align 8, !tbaa !7
  %neg268 = fmul double %cond207.cond215, -1.815000e+00
  %26 = tail call double @llvm.fmuladd.f64(double %20, double 0x3FB51EB851EB851E, double %neg268)
  %sub269 = fadd double %26, -1.500000e-02
  %arrayidx273 = getelementptr inbounds double, double* %arrayidx252, i64 3
  store double %sub269, double* %arrayidx273, align 8, !tbaa !7
  %arrayidx277 = getelementptr inbounds double, double* %arrayidx252, i64 4
  store double 3.750000e-03, double* %arrayidx277, align 8, !tbaa !7
  %arrayidx280 = getelementptr inbounds double, double* %arrayidx17, i64 5
  store double 0.000000e+00, double* %arrayidx280, align 8, !tbaa !7
  %27 = tail call double @llvm.fmuladd.f64(double %13, double 0xBFB51EB851EB851E, double %24)
  %arrayidx286 = getelementptr inbounds double, double* %arrayidx280, i64 1
  store double %27, double* %arrayidx286, align 8, !tbaa !7
  %arrayidx290 = getelementptr inbounds double, double* %arrayidx280, i64 2
  store double %add261, double* %arrayidx290, align 8, !tbaa !7
  %28 = tail call double @llvm.fmuladd.f64(double %23, double 0x3FB51EB851EB851E, double %sub269)
  %arrayidx295 = getelementptr inbounds double, double* %arrayidx280, i64 3
  store double %28, double* %arrayidx295, align 8, !tbaa !7
  %arrayidx299 = getelementptr inbounds double, double* %arrayidx280, i64 4
  store double 3.750000e-03, double* %arrayidx299, align 8, !tbaa !7
  %arrayidx302 = getelementptr inbounds double, double* %arrayidx19, i64 5
  store double 0.000000e+00, double* %arrayidx302, align 8, !tbaa !7
  %29 = tail call double @llvm.fmuladd.f64(double %13, double 0x3FB51EB851EB851E, double %24)
  %arrayidx308 = getelementptr inbounds double, double* %arrayidx302, i64 1
  store double %29, double* %arrayidx308, align 8, !tbaa !7
  %arrayidx312 = getelementptr inbounds double, double* %arrayidx302, i64 2
  store double %add261, double* %arrayidx312, align 8, !tbaa !7
  %30 = tail call double @llvm.fmuladd.f64(double %23, double 0xBFB51EB851EB851E, double %sub269)
  %arrayidx317 = getelementptr inbounds double, double* %arrayidx302, i64 3
  store double %30, double* %arrayidx317, align 8, !tbaa !7
  %arrayidx321 = getelementptr inbounds double, double* %arrayidx302, i64 4
  store double 3.750000e-03, double* %arrayidx321, align 8, !tbaa !7
  %arrayidx328 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom64, i64 %idxprom66, i64 3
  %31 = load double, double* %arrayidx328, align 8, !tbaa !7
  %mul329 = fmul double %31, 1.000000e-01
  %arrayidx336 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 %idxprom64, i64 %idxprom66, i64 3
  %32 = load double, double* %arrayidx336, align 8, !tbaa !7
  %arrayidx339 = getelementptr inbounds double, double* %arrayidx, i64 3
  store double %32, double* %arrayidx339, align 8, !tbaa !7
  %33 = tail call double @llvm.fmuladd.f64(double %mul329, double 0x3FF5555555555555, double 7.500000e-01)
  %34 = tail call double @llvm.fmuladd.f64(double %mul329, double 0x3FFF5C28F5C28F5B, double 7.500000e-01)
  %cmp342 = fcmp ogt double %33, %34
  %cond349 = select i1 %cmp342, double %33, double %34
  %add350 = fadd double %mul329, 7.500000e-01
  %cmp351 = fcmp ogt double %add350, 7.500000e-01
  %cond357 = select i1 %cmp351, double %add350, double 7.500000e-01
  %cmp358 = fcmp ogt double %cond349, %cond357
  %cond381 = select i1 %cmp358, double %cond349, double %cond357
  %arrayidx384 = getelementptr inbounds double, double* %arrayidx11, i64 3
  store double %cond381, double* %arrayidx384, align 8, !tbaa !7
  %arrayidx391 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 %idxprom64, i64 %idxprom66, i64 3
  %35 = load double, double* %arrayidx391, align 8, !tbaa !7
  %arrayidx394 = getelementptr inbounds double, double* %arrayidx15, i64 10
  store double 0.000000e+00, double* %arrayidx394, align 8, !tbaa !7
  %neg398 = fmul double %cond173, -1.815000e+00
  %36 = tail call double @llvm.fmuladd.f64(double %15, double 0xBFB51EB851EB851E, double %neg398)
  %sub399 = fadd double %36, -1.500000e-02
  %arrayidx403 = getelementptr inbounds double, double* %arrayidx394, i64 1
  store double %sub399, double* %arrayidx403, align 8, !tbaa !7
  %37 = tail call double @llvm.fmuladd.f64(double %cond207.cond215, double 3.630000e+00, double 1.000000e+00)
  %add405 = fadd double %37, 2.250000e-02
  %arrayidx409 = getelementptr inbounds double, double* %arrayidx394, i64 2
  store double %add405, double* %arrayidx409, align 8, !tbaa !7
  %neg412 = fmul double %cond381, -1.815000e+00
  %38 = tail call double @llvm.fmuladd.f64(double %32, double 0x3FB51EB851EB851E, double %neg412)
  %sub413 = fadd double %38, -1.500000e-02
  %arrayidx417 = getelementptr inbounds double, double* %arrayidx394, i64 3
  store double %sub413, double* %arrayidx417, align 8, !tbaa !7
  %arrayidx421 = getelementptr inbounds double, double* %arrayidx394, i64 4
  store double 3.750000e-03, double* %arrayidx421, align 8, !tbaa !7
  %arrayidx424 = getelementptr inbounds double, double* %arrayidx17, i64 10
  store double 0.000000e+00, double* %arrayidx424, align 8, !tbaa !7
  %39 = tail call double @llvm.fmuladd.f64(double %18, double 0xBFB51EB851EB851E, double %sub399)
  %arrayidx430 = getelementptr inbounds double, double* %arrayidx424, i64 1
  store double %39, double* %arrayidx430, align 8, !tbaa !7
  %arrayidx434 = getelementptr inbounds double, double* %arrayidx424, i64 2
  store double %add405, double* %arrayidx434, align 8, !tbaa !7
  %40 = tail call double @llvm.fmuladd.f64(double %35, double 0x3FB51EB851EB851E, double %sub413)
  %arrayidx439 = getelementptr inbounds double, double* %arrayidx424, i64 3
  store double %40, double* %arrayidx439, align 8, !tbaa !7
  %arrayidx443 = getelementptr inbounds double, double* %arrayidx424, i64 4
  store double 3.750000e-03, double* %arrayidx443, align 8, !tbaa !7
  %arrayidx446 = getelementptr inbounds double, double* %arrayidx19, i64 10
  store double 0.000000e+00, double* %arrayidx446, align 8, !tbaa !7
  %41 = tail call double @llvm.fmuladd.f64(double %18, double 0x3FB51EB851EB851E, double %sub399)
  %arrayidx452 = getelementptr inbounds double, double* %arrayidx446, i64 1
  store double %41, double* %arrayidx452, align 8, !tbaa !7
  %arrayidx456 = getelementptr inbounds double, double* %arrayidx446, i64 2
  store double %add405, double* %arrayidx456, align 8, !tbaa !7
  %42 = tail call double @llvm.fmuladd.f64(double %35, double 0xBFB51EB851EB851E, double %sub413)
  %arrayidx461 = getelementptr inbounds double, double* %arrayidx446, i64 3
  store double %42, double* %arrayidx461, align 8, !tbaa !7
  %arrayidx465 = getelementptr inbounds double, double* %arrayidx446, i64 4
  store double 3.750000e-03, double* %arrayidx465, align 8, !tbaa !7
  %cmp4683029 = icmp slt i32 %m, 7
  %.pre3100 = add i32 %m, -3
  br i1 %cmp4683029, label %for.end617, label %for.body470.preheader

for.body470.preheader:                            ; preds = %if.end
  %wide.trip.count3088 = zext i32 %.pre3100 to i64
  br label %for.body470

for.body470:                                      ; preds = %for.body470, %for.body470.preheader
  %indvars.iv3086 = phi i64 [ 3, %for.body470.preheader ], [ %indvars.iv.next3087, %for.body470 ]
  %ap.03035 = phi double [ %35, %for.body470.preheader ], [ %47, %for.body470 ]
  %ao.03034 = phi double [ %23, %for.body470.preheader ], [ %ap.03035, %for.body470 ]
  %am.03033 = phi double [ %cond381, %for.body470.preheader ], [ %cond498.cond506, %for.body470 ]
  %al.03032 = phi double [ %cond207.cond215, %for.body470.preheader ], [ %am.03033, %for.body470 ]
  %aj.03031 = phi double [ %32, %for.body470.preheader ], [ %44, %for.body470 ]
  %ai.03030 = phi double [ %20, %for.body470.preheader ], [ %aj.03031, %for.body470 ]
  %indvars.iv.next3087 = add nuw nsw i64 %indvars.iv3086, 1
  %arrayidx477 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom64, i64 %idxprom66, i64 %indvars.iv.next3087
  %43 = load double, double* %arrayidx477, align 8, !tbaa !7
  %mul478 = fmul double %43, 1.000000e-01
  %arrayidx485 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 %idxprom64, i64 %idxprom66, i64 %indvars.iv.next3087
  %44 = load double, double* %arrayidx485, align 8, !tbaa !7
  %arrayidx488 = getelementptr inbounds double, double* %arrayidx, i64 %indvars.iv.next3087
  store double %44, double* %arrayidx488, align 8, !tbaa !7
  %45 = tail call double @llvm.fmuladd.f64(double %mul478, double 0x3FF5555555555555, double 7.500000e-01)
  %46 = tail call double @llvm.fmuladd.f64(double %mul478, double 0x3FFF5C28F5C28F5B, double 7.500000e-01)
  %cmp491 = fcmp ogt double %45, %46
  %cond498 = select i1 %cmp491, double %45, double %46
  %add499 = fadd double %mul478, 7.500000e-01
  %cmp500 = fcmp ogt double %add499, 7.500000e-01
  %cond506 = select i1 %cmp500, double %add499, double 7.500000e-01
  %cmp507 = fcmp ogt double %cond498, %cond506
  %cond498.cond506 = select i1 %cmp507, double %cond498, double %cond506
  %arrayidx533 = getelementptr inbounds double, double* %arrayidx11, i64 %indvars.iv.next3087
  store double %cond498.cond506, double* %arrayidx533, align 8, !tbaa !7
  %arrayidx540 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 %idxprom64, i64 %idxprom66, i64 %indvars.iv.next3087
  %47 = load double, double* %arrayidx540, align 8, !tbaa !7
  %arrayidx544 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv3086, i64 0
  store double 3.750000e-03, double* %arrayidx544, align 8, !tbaa !7
  %neg547 = fmul double %al.03032, -1.815000e+00
  %48 = tail call double @llvm.fmuladd.f64(double %ai.03030, double 0xBFB51EB851EB851E, double %neg547)
  %sub548 = fadd double %48, -1.500000e-02
  %arrayidx552 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv3086, i64 1
  store double %sub548, double* %arrayidx552, align 8, !tbaa !7
  %49 = tail call double @llvm.fmuladd.f64(double %am.03033, double 3.630000e+00, double 1.000000e+00)
  %add554 = fadd double %49, 2.250000e-02
  %arrayidx558 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv3086, i64 2
  store double %add554, double* %arrayidx558, align 8, !tbaa !7
  %neg561 = fmul double %cond498.cond506, -1.815000e+00
  %50 = tail call double @llvm.fmuladd.f64(double %44, double 0x3FB51EB851EB851E, double %neg561)
  %sub562 = fadd double %50, -1.500000e-02
  %arrayidx566 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv3086, i64 3
  store double %sub562, double* %arrayidx566, align 8, !tbaa !7
  %arrayidx570 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv3086, i64 4
  store double 3.750000e-03, double* %arrayidx570, align 8, !tbaa !7
  %arrayidx574 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv3086, i64 0
  store double 3.750000e-03, double* %arrayidx574, align 8, !tbaa !7
  %51 = tail call double @llvm.fmuladd.f64(double %ao.03034, double 0xBFB51EB851EB851E, double %sub548)
  %arrayidx579 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv3086, i64 1
  store double %51, double* %arrayidx579, align 8, !tbaa !7
  %arrayidx583 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv3086, i64 2
  store double %add554, double* %arrayidx583, align 8, !tbaa !7
  %52 = tail call double @llvm.fmuladd.f64(double %47, double 0x3FB51EB851EB851E, double %sub562)
  %arrayidx588 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv3086, i64 3
  store double %52, double* %arrayidx588, align 8, !tbaa !7
  %arrayidx592 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv3086, i64 4
  store double 3.750000e-03, double* %arrayidx592, align 8, !tbaa !7
  %arrayidx596 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv3086, i64 0
  store double 3.750000e-03, double* %arrayidx596, align 8, !tbaa !7
  %53 = tail call double @llvm.fmuladd.f64(double %ao.03034, double 0x3FB51EB851EB851E, double %sub548)
  %arrayidx601 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv3086, i64 1
  store double %53, double* %arrayidx601, align 8, !tbaa !7
  %arrayidx605 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv3086, i64 2
  store double %add554, double* %arrayidx605, align 8, !tbaa !7
  %54 = tail call double @llvm.fmuladd.f64(double %47, double 0xBFB51EB851EB851E, double %sub562)
  %arrayidx610 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv3086, i64 3
  store double %54, double* %arrayidx610, align 8, !tbaa !7
  %arrayidx614 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv3086, i64 4
  store double 3.750000e-03, double* %arrayidx614, align 8, !tbaa !7
  %exitcond3089 = icmp eq i64 %indvars.iv.next3087, %wide.trip.count3088
  br i1 %exitcond3089, label %for.end617.loopexit, label %for.body470

for.end617.loopexit:                              ; preds = %for.body470
  %.pre = fmul double %am.03033, -1.815000e+00
  br label %for.end617

for.end617:                                       ; preds = %if.end, %for.end617.loopexit
  %neg840.pre-phi = phi double [ %neg561, %for.end617.loopexit ], [ %neg412, %if.end ]
  %neg695.pre-phi = phi double [ %.pre, %for.end617.loopexit ], [ %neg268, %if.end ]
  %ai.0.lcssa = phi double [ %aj.03031, %for.end617.loopexit ], [ %20, %if.end ]
  %aj.0.lcssa = phi double [ %44, %for.end617.loopexit ], [ %32, %if.end ]
  %am.0.lcssa = phi double [ %cond498.cond506, %for.end617.loopexit ], [ %cond381, %if.end ]
  %ao.0.lcssa = phi double [ %ap.03035, %for.end617.loopexit ], [ %23, %if.end ]
  %ap.0.lcssa = phi double [ %47, %for.end617.loopexit ], [ %35, %if.end ]
  %add623 = add i32 %m, -2
  %idxprom624 = sext i32 %add623 to i64
  %arrayidx625 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom64, i64 %idxprom66, i64 %idxprom624
  %55 = load double, double* %arrayidx625, align 8, !tbaa !7
  %mul626 = fmul double %55, 1.000000e-01
  %arrayidx633 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 %idxprom64, i64 %idxprom66, i64 %idxprom624
  %56 = load double, double* %arrayidx633, align 8, !tbaa !7
  %arrayidx636 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom624
  store double %56, double* %arrayidx636, align 8, !tbaa !7
  %57 = tail call double @llvm.fmuladd.f64(double %mul626, double 0x3FF5555555555555, double 7.500000e-01)
  %58 = tail call double @llvm.fmuladd.f64(double %mul626, double 0x3FFF5C28F5C28F5B, double 7.500000e-01)
  %cmp639 = fcmp ogt double %57, %58
  %cond646 = select i1 %cmp639, double %57, double %58
  %add647 = fadd double %mul626, 7.500000e-01
  %cmp648 = fcmp ogt double %add647, 7.500000e-01
  %cond654 = select i1 %cmp648, double %add647, double 7.500000e-01
  %cmp655 = fcmp ogt double %cond646, %cond654
  %cond646.cond654 = select i1 %cmp655, double %cond646, double %cond654
  %arrayidx681 = getelementptr inbounds double, double* %arrayidx11, i64 %idxprom624
  store double %cond646.cond654, double* %arrayidx681, align 8, !tbaa !7
  %arrayidx688 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 %idxprom64, i64 %idxprom66, i64 %idxprom624
  %59 = load double, double* %arrayidx688, align 8, !tbaa !7
  %idxprom690 = sext i32 %.pre3100 to i64
  %arrayidx692 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom690, i64 0
  store double 3.750000e-03, double* %arrayidx692, align 8, !tbaa !7
  %60 = tail call double @llvm.fmuladd.f64(double %ai.0.lcssa, double 0xBFB51EB851EB851E, double %neg695.pre-phi)
  %sub696 = fadd double %60, -1.500000e-02
  %arrayidx700 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom690, i64 1
  store double %sub696, double* %arrayidx700, align 8, !tbaa !7
  %61 = tail call double @llvm.fmuladd.f64(double %am.0.lcssa, double 3.630000e+00, double 1.000000e+00)
  %add702 = fadd double %61, 2.250000e-02
  %arrayidx706 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom690, i64 2
  store double %add702, double* %arrayidx706, align 8, !tbaa !7
  %neg709 = fmul double %cond646.cond654, -1.815000e+00
  %62 = tail call double @llvm.fmuladd.f64(double %56, double 0x3FB51EB851EB851E, double %neg709)
  %sub710 = fadd double %62, -1.500000e-02
  %arrayidx714 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom690, i64 3
  store double %sub710, double* %arrayidx714, align 8, !tbaa !7
  %arrayidx718 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom690, i64 4
  store double 0.000000e+00, double* %arrayidx718, align 8, !tbaa !7
  %arrayidx722 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom690, i64 0
  store double 3.750000e-03, double* %arrayidx722, align 8, !tbaa !7
  %63 = tail call double @llvm.fmuladd.f64(double %ao.0.lcssa, double 0xBFB51EB851EB851E, double %sub696)
  %arrayidx727 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom690, i64 1
  store double %63, double* %arrayidx727, align 8, !tbaa !7
  %arrayidx731 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom690, i64 2
  store double %add702, double* %arrayidx731, align 8, !tbaa !7
  %64 = tail call double @llvm.fmuladd.f64(double %59, double 0x3FB51EB851EB851E, double %sub710)
  %arrayidx736 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom690, i64 3
  store double %64, double* %arrayidx736, align 8, !tbaa !7
  %arrayidx740 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom690, i64 4
  store double 0.000000e+00, double* %arrayidx740, align 8, !tbaa !7
  %arrayidx744 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom690, i64 0
  store double 3.750000e-03, double* %arrayidx744, align 8, !tbaa !7
  %65 = tail call double @llvm.fmuladd.f64(double %ao.0.lcssa, double 0x3FB51EB851EB851E, double %sub696)
  %arrayidx749 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom690, i64 1
  store double %65, double* %arrayidx749, align 8, !tbaa !7
  %arrayidx753 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom690, i64 2
  store double %add702, double* %arrayidx753, align 8, !tbaa !7
  %66 = tail call double @llvm.fmuladd.f64(double %59, double 0xBFB51EB851EB851E, double %sub710)
  %arrayidx758 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom690, i64 3
  store double %66, double* %arrayidx758, align 8, !tbaa !7
  %arrayidx762 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom690, i64 4
  store double 0.000000e+00, double* %arrayidx762, align 8, !tbaa !7
  %add768 = add nsw i32 %m, -1
  %idxprom769 = sext i32 %add768 to i64
  %arrayidx770 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom64, i64 %idxprom66, i64 %idxprom769
  %67 = load double, double* %arrayidx770, align 8, !tbaa !7
  %mul771 = fmul double %67, 1.000000e-01
  %arrayidx778 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 %idxprom64, i64 %idxprom66, i64 %idxprom769
  %68 = load double, double* %arrayidx778, align 8, !tbaa !7
  %arrayidx781 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom769
  store double %68, double* %arrayidx781, align 8, !tbaa !7
  %69 = tail call double @llvm.fmuladd.f64(double %mul771, double 0x3FF5555555555555, double 7.500000e-01)
  %70 = tail call double @llvm.fmuladd.f64(double %mul771, double 0x3FFF5C28F5C28F5B, double 7.500000e-01)
  %cmp784 = fcmp ogt double %69, %70
  %cond791 = select i1 %cmp784, double %69, double %70
  %add792 = fadd double %mul771, 7.500000e-01
  %cmp793 = fcmp ogt double %add792, 7.500000e-01
  %cond799 = select i1 %cmp793, double %add792, double 7.500000e-01
  %cmp800 = fcmp ogt double %cond791, %cond799
  %cond823 = select i1 %cmp800, double %cond791, double %cond799
  %arrayidx826 = getelementptr inbounds double, double* %arrayidx11, i64 %idxprom769
  store double %cond823, double* %arrayidx826, align 8, !tbaa !7
  %arrayidx833 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 %idxprom64, i64 %idxprom66, i64 %idxprom769
  %71 = load double, double* %arrayidx833, align 8, !tbaa !7
  %arrayidx837 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom624, i64 0
  store double 3.750000e-03, double* %arrayidx837, align 8, !tbaa !7
  %72 = tail call double @llvm.fmuladd.f64(double %aj.0.lcssa, double 0xBFB51EB851EB851E, double %neg840.pre-phi)
  %sub841 = fadd double %72, -1.500000e-02
  %arrayidx845 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom624, i64 1
  store double %sub841, double* %arrayidx845, align 8, !tbaa !7
  %73 = tail call double @llvm.fmuladd.f64(double %cond646.cond654, double 3.630000e+00, double 1.000000e+00)
  %add847 = fadd double %73, 1.875000e-02
  %arrayidx851 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom624, i64 2
  store double %add847, double* %arrayidx851, align 8, !tbaa !7
  %neg854 = fmul double %cond823, -1.815000e+00
  %74 = tail call double @llvm.fmuladd.f64(double %68, double 0x3FB51EB851EB851E, double %neg854)
  %arrayidx858 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom624, i64 3
  store double %74, double* %arrayidx858, align 8, !tbaa !7
  %arrayidx862 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom624, i64 4
  store double 0.000000e+00, double* %arrayidx862, align 8, !tbaa !7
  %arrayidx866 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom624, i64 0
  store double 3.750000e-03, double* %arrayidx866, align 8, !tbaa !7
  %75 = tail call double @llvm.fmuladd.f64(double %ap.0.lcssa, double 0xBFB51EB851EB851E, double %sub841)
  %arrayidx871 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom624, i64 1
  store double %75, double* %arrayidx871, align 8, !tbaa !7
  %arrayidx875 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom624, i64 2
  store double %add847, double* %arrayidx875, align 8, !tbaa !7
  %76 = tail call double @llvm.fmuladd.f64(double %71, double 0x3FB51EB851EB851E, double %74)
  %arrayidx880 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom624, i64 3
  store double %76, double* %arrayidx880, align 8, !tbaa !7
  %arrayidx884 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom624, i64 4
  store double 0.000000e+00, double* %arrayidx884, align 8, !tbaa !7
  %arrayidx888 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom624, i64 0
  store double 3.750000e-03, double* %arrayidx888, align 8, !tbaa !7
  %77 = tail call double @llvm.fmuladd.f64(double %ap.0.lcssa, double 0x3FB51EB851EB851E, double %sub841)
  %arrayidx893 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom624, i64 1
  store double %77, double* %arrayidx893, align 8, !tbaa !7
  %arrayidx897 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom624, i64 2
  store double %add847, double* %arrayidx897, align 8, !tbaa !7
  %78 = tail call double @llvm.fmuladd.f64(double %71, double 0xBFB51EB851EB851E, double %74)
  %arrayidx902 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom624, i64 3
  store double %78, double* %arrayidx902, align 8, !tbaa !7
  %arrayidx906 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom624, i64 4
  store double 0.000000e+00, double* %arrayidx906, align 8, !tbaa !7
  %79 = load double, double* %arrayidx24.2, align 8, !tbaa !7
  %80 = load double, double* %arrayidx24.3, align 8, !tbaa !7
  %81 = load double, double* %arrayidx259, align 8, !tbaa !7
  %82 = load double, double* %arrayidx265, align 8, !tbaa !7
  %arrayidx922 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66
  %83 = bitcast [13 x [5 x double]]* %arrayidx922 to i64*
  %84 = load i64, i64* %83, align 8, !tbaa !7
  %arrayidx931 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 0, i64 1
  %85 = bitcast double* %arrayidx931 to i64*
  %86 = load i64, i64* %85, align 8, !tbaa !7
  %arrayidx938 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 0, i64 2
  %87 = bitcast double* %arrayidx938 to i64*
  %88 = load i64, i64* %87, align 8, !tbaa !7
  %arrayidx944 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 1
  %89 = bitcast [5 x double]* %arrayidx944 to i64*
  %90 = load i64, i64* %89, align 8, !tbaa !7
  %arrayidx952 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 1, i64 1
  %91 = bitcast double* %arrayidx952 to i64*
  %92 = load i64, i64* %91, align 8, !tbaa !7
  %arrayidx959 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 1, i64 2
  %93 = bitcast double* %arrayidx959 to i64*
  %94 = load i64, i64* %93, align 8, !tbaa !7
  %cmp9633019 = icmp slt i32 %.pre3100, 0
  br i1 %cmp9633019, label %for.end1129, label %for.body965.lr.ph

for.body965.lr.ph:                                ; preds = %for.end617
  %wide.trip.count3084 = zext i32 %add623 to i64
  br label %for.body965

for.body965:                                      ; preds = %for.body965, %for.body965.lr.ph
  %95 = phi i64 [ %132, %for.body965 ], [ %94, %for.body965.lr.ph ]
  %96 = phi i64 [ %131, %for.body965 ], [ %92, %for.body965.lr.ph ]
  %97 = phi i64 [ %130, %for.body965 ], [ %90, %for.body965.lr.ph ]
  %98 = phi i64 [ %129, %for.body965 ], [ %88, %for.body965.lr.ph ]
  %99 = phi i64 [ %128, %for.body965 ], [ %86, %for.body965.lr.ph ]
  %100 = phi i64 [ %127, %for.body965 ], [ %84, %for.body965.lr.ph ]
  %indvars.iv3081 = phi i64 [ %indvars.iv.next3082, %for.body965 ], [ 0, %for.body965.lr.ph ]
  %x.sroa.20.03023 = phi double [ %125, %for.body965 ], [ %80, %for.body965.lr.ph ]
  %x.sroa.10.03022 = phi double [ %106, %for.body965 ], [ %79, %for.body965.lr.ph ]
  %y.sroa.12.03021 = phi double [ %126, %for.body965 ], [ %82, %for.body965.lr.ph ]
  %y.sroa.6.03020 = phi double [ %121, %for.body965 ], [ %81, %for.body965.lr.ph ]
  %indvars.iv.next3082 = add nuw nsw i64 %indvars.iv3081, 1
  %arrayidx974 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv3081, i64 4
  %101 = load double, double* %arrayidx974, align 8, !tbaa !7
  %div = fdiv double 1.000000e+00, %x.sroa.10.03022
  %mul984 = fmul double %div, %x.sroa.20.03023
  %arrayidx988 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv3081, i64 3
  store double %mul984, double* %arrayidx988, align 8, !tbaa !7
  %mul990 = fmul double %div, %101
  store double %mul990, double* %arrayidx974, align 8, !tbaa !7
  %102 = bitcast i64 %100 to double
  %mul1001 = fmul double %div, %102
  %arrayidx1011 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %indvars.iv3081, i64 0
  store double %mul1001, double* %arrayidx1011, align 8, !tbaa !7
  %103 = bitcast i64 %99 to double
  %mul1001.1 = fmul double %div, %103
  %arrayidx1011.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %indvars.iv3081, i64 1
  store double %mul1001.1, double* %arrayidx1011.1, align 8, !tbaa !7
  %104 = bitcast i64 %98 to double
  %mul1001.2 = fmul double %div, %104
  %arrayidx1011.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %indvars.iv3081, i64 2
  store double %mul1001.2, double* %arrayidx1011.2, align 8, !tbaa !7
  %arrayidx1021 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next3082, i64 3
  %105 = load double, double* %arrayidx1021, align 8, !tbaa !7
  %neg1033 = fsub double -0.000000e+00, %y.sroa.6.03020
  %106 = tail call double @llvm.fmuladd.f64(double %neg1033, double %mul984, double %y.sroa.12.03021)
  %arrayidx1037 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next3082, i64 2
  store double %106, double* %arrayidx1037, align 8, !tbaa !7
  %107 = bitcast i64 %97 to double
  %108 = tail call double @llvm.fmuladd.f64(double %neg1033, double %mul1001, double %107)
  %109 = bitcast i64 %96 to double
  %110 = tail call double @llvm.fmuladd.f64(double %neg1033, double %mul1001.1, double %109)
  %111 = bitcast i64 %95 to double
  %112 = tail call double @llvm.fmuladd.f64(double %neg1033, double %mul1001.2, double %111)
  %113 = add nuw nsw i64 %indvars.iv3081, 2
  %arrayidx1062 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %113, i64 0
  %114 = load double, double* %arrayidx1062, align 8, !tbaa !7
  %arrayidx1066 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %113, i64 1
  %115 = load double, double* %arrayidx1066, align 8, !tbaa !7
  %arrayidx1070 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %113, i64 2
  %116 = load double, double* %arrayidx1070, align 8, !tbaa !7
  %117 = getelementptr [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %113, i64 0
  %118 = load double, double* %117, align 8, !tbaa !7
  %arrayidx1086 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %113, i64 1
  %119 = load double, double* %arrayidx1086, align 8, !tbaa !7
  %arrayidx1094 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %113, i64 2
  %120 = load double, double* %arrayidx1094, align 8, !tbaa !7
  %neg1100 = fsub double -0.000000e+00, %114
  %121 = tail call double @llvm.fmuladd.f64(double %neg1100, double %mul984, double %115)
  store double %121, double* %arrayidx1066, align 8, !tbaa !7
  %122 = tail call double @llvm.fmuladd.f64(double %neg1100, double %mul1001, double %118)
  %123 = tail call double @llvm.fmuladd.f64(double %neg1100, double %mul1001.1, double %119)
  %124 = tail call double @llvm.fmuladd.f64(double %neg1100, double %mul1001.2, double %120)
  %125 = tail call double @llvm.fmuladd.f64(double %neg1033, double %mul990, double %105)
  %126 = tail call double @llvm.fmuladd.f64(double %neg1100, double %mul990, double %116)
  %exitcond3085 = icmp eq i64 %indvars.iv.next3082, %wide.trip.count3084
  %127 = bitcast double %108 to i64
  %128 = bitcast double %110 to i64
  %129 = bitcast double %112 to i64
  %130 = bitcast double %122 to i64
  %131 = bitcast double %123 to i64
  %132 = bitcast double %124 to i64
  br i1 %exitcond3085, label %for.end1129, label %for.body965

for.end1129:                                      ; preds = %for.body965, %for.end617
  %133 = phi i64 [ %94, %for.end617 ], [ %132, %for.body965 ]
  %134 = phi i64 [ %92, %for.end617 ], [ %131, %for.body965 ]
  %135 = phi i64 [ %90, %for.end617 ], [ %130, %for.body965 ]
  %136 = phi i64 [ %88, %for.end617 ], [ %129, %for.body965 ]
  %137 = phi i64 [ %86, %for.end617 ], [ %128, %for.body965 ]
  %138 = phi i64 [ %84, %for.end617 ], [ %127, %for.body965 ]
  %y.sroa.6.0.lcssa = phi double [ %81, %for.end617 ], [ %121, %for.body965 ]
  %y.sroa.12.0.lcssa = phi double [ %82, %for.end617 ], [ %126, %for.body965 ]
  %x.sroa.10.0.lcssa = phi double [ %79, %for.end617 ], [ %106, %for.body965 ]
  %x.sroa.20.0.lcssa = phi double [ %80, %for.end617 ], [ %125, %for.body965 ]
  %139 = load double, double* %arrayidx862, align 8, !tbaa !7
  %div1147 = fdiv double 1.000000e+00, %x.sroa.10.0.lcssa
  %mul1149 = fmul double %div1147, %x.sroa.20.0.lcssa
  store double %mul1149, double* %arrayidx858, align 8, !tbaa !7
  %mul1155 = fmul double %div1147, %139
  store double %mul1155, double* %arrayidx862, align 8, !tbaa !7
  %140 = bitcast i64 %138 to double
  %mul1166 = fmul double %div1147, %140
  %arrayidx1176 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %idxprom624, i64 0
  store double %mul1166, double* %arrayidx1176, align 8, !tbaa !7
  %141 = bitcast i64 %137 to double
  %mul1166.1 = fmul double %div1147, %141
  %arrayidx1176.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %idxprom624, i64 1
  store double %mul1166.1, double* %arrayidx1176.1, align 8, !tbaa !7
  %142 = bitcast i64 %136 to double
  %mul1166.2 = fmul double %div1147, %142
  %arrayidx1176.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %idxprom624, i64 2
  store double %mul1166.2, double* %arrayidx1176.2, align 8, !tbaa !7
  %arrayidx1186 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom769, i64 3
  %143 = load double, double* %arrayidx1186, align 8, !tbaa !7
  %neg1198 = fsub double -0.000000e+00, %y.sroa.6.0.lcssa
  %144 = tail call double @llvm.fmuladd.f64(double %neg1198, double %mul1149, double %y.sroa.12.0.lcssa)
  %arrayidx1202 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom769, i64 2
  store double %144, double* %arrayidx1202, align 8, !tbaa !7
  %145 = tail call double @llvm.fmuladd.f64(double %neg1198, double %mul1155, double %143)
  store double %145, double* %arrayidx1186, align 8, !tbaa !7
  %146 = bitcast i64 %135 to double
  %147 = tail call double @llvm.fmuladd.f64(double %neg1198, double %mul1166, double %146)
  %148 = bitcast i64 %134 to double
  %149 = tail call double @llvm.fmuladd.f64(double %neg1198, double %mul1166.1, double %148)
  %150 = bitcast i64 %133 to double
  %151 = tail call double @llvm.fmuladd.f64(double %neg1198, double %mul1166.2, double %150)
  %div1228 = fdiv double 1.000000e+00, %144
  %mul1235 = fmul double %div1228, %147
  %arrayidx1243 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %idxprom769, i64 0
  store double %mul1235, double* %arrayidx1243, align 8, !tbaa !7
  %mul1235.1 = fmul double %div1228, %149
  %arrayidx1243.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %idxprom769, i64 1
  store double %mul1235.1, double* %arrayidx1243.1, align 8, !tbaa !7
  %mul1235.2 = fmul double %div1228, %151
  %arrayidx1243.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %idxprom769, i64 2
  store double %mul1235.2, double* %arrayidx1243.2, align 8, !tbaa !7
  %152 = load double, double* %arrayidx27.2, align 8, !tbaa !7
  %153 = load double, double* %arrayidx27.3, align 8, !tbaa !7
  %154 = load double, double* %arrayidx286, align 8, !tbaa !7
  %155 = load double, double* %arrayidx290, align 8, !tbaa !7
  %156 = load double, double* %arrayidx30.2, align 8, !tbaa !7
  %157 = load double, double* %arrayidx30.3, align 8, !tbaa !7
  %158 = load double, double* %arrayidx308, align 8, !tbaa !7
  %159 = load double, double* %arrayidx312, align 8, !tbaa !7
  %arrayidx1276 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 0, i64 3
  %160 = bitcast double* %arrayidx1276 to i64*
  %161 = load i64, i64* %160, align 8, !tbaa !7
  %arrayidx1283 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 0, i64 4
  %162 = bitcast double* %arrayidx1283 to i64*
  %163 = load i64, i64* %162, align 8, !tbaa !7
  %arrayidx1290 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 1, i64 3
  %164 = bitcast double* %arrayidx1290 to i64*
  %165 = load i64, i64* %164, align 8, !tbaa !7
  %arrayidx1297 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 1, i64 4
  %166 = bitcast double* %arrayidx1297 to i64*
  %167 = load i64, i64* %166, align 8, !tbaa !7
  br i1 %cmp9633019, label %for.end1550, label %for.body1303.lr.ph

for.body1303.lr.ph:                               ; preds = %for.end1129
  %wide.trip.count = zext i32 %add623 to i64
  br label %for.body1303

for.body1303:                                     ; preds = %for.body1303, %for.body1303.lr.ph
  %168 = phi i64 [ %202, %for.body1303 ], [ %167, %for.body1303.lr.ph ]
  %169 = phi i64 [ %201, %for.body1303 ], [ %163, %for.body1303.lr.ph ]
  %170 = phi i64 [ %200, %for.body1303 ], [ %165, %for.body1303.lr.ph ]
  %171 = phi i64 [ %199, %for.body1303 ], [ %161, %for.body1303.lr.ph ]
  %indvars.iv3060 = phi i64 [ %indvars.iv.next3061, %for.body1303 ], [ 0, %for.body1303.lr.ph ]
  %ae.sroa.6.03004 = phi double [ %196, %for.body1303 ], [ %158, %for.body1303.lr.ph ]
  %ae.sroa.12.03003 = phi double [ %197, %for.body1303 ], [ %159, %for.body1303.lr.ph ]
  %ad.sroa.10.03002 = phi double [ %189, %for.body1303 ], [ %156, %for.body1303.lr.ph ]
  %ad.sroa.20.03001 = phi double [ %190, %for.body1303 ], [ %157, %for.body1303.lr.ph ]
  %ab.sroa.6.03000 = phi double [ %183, %for.body1303 ], [ %154, %for.body1303.lr.ph ]
  %ab.sroa.12.02999 = phi double [ %184, %for.body1303 ], [ %155, %for.body1303.lr.ph ]
  %aa.sroa.10.02998 = phi double [ %176, %for.body1303 ], [ %152, %for.body1303.lr.ph ]
  %aa.sroa.20.02997 = phi double [ %177, %for.body1303 ], [ %153, %for.body1303.lr.ph ]
  %indvars.iv.next3061 = add nuw nsw i64 %indvars.iv3060, 1
  %172 = add nuw nsw i64 %indvars.iv3060, 2
  %arrayidx1312 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv3060, i64 4
  %173 = load double, double* %arrayidx1312, align 8, !tbaa !7
  %div1319 = fdiv double 1.000000e+00, %aa.sroa.10.02998
  %mul1321 = fmul double %aa.sroa.20.02997, %div1319
  %arrayidx1325 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv3060, i64 3
  store double %mul1321, double* %arrayidx1325, align 8, !tbaa !7
  %mul1327 = fmul double %div1319, %173
  store double %mul1327, double* %arrayidx1312, align 8, !tbaa !7
  %174 = bitcast i64 %171 to double
  %mul1334 = fmul double %div1319, %174
  %arrayidx1344 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %indvars.iv3060, i64 3
  store double %mul1334, double* %arrayidx1344, align 8, !tbaa !7
  %arrayidx1351 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv.next3061, i64 3
  %175 = load double, double* %arrayidx1351, align 8, !tbaa !7
  %neg1361 = fsub double -0.000000e+00, %ab.sroa.6.03000
  %176 = tail call double @llvm.fmuladd.f64(double %neg1361, double %mul1321, double %ab.sroa.12.02999)
  %arrayidx1365 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv.next3061, i64 2
  store double %176, double* %arrayidx1365, align 8, !tbaa !7
  %177 = tail call double @llvm.fmuladd.f64(double %neg1361, double %mul1327, double %175)
  %.cast2987 = bitcast i64 %170 to double
  %178 = tail call double @llvm.fmuladd.f64(double %neg1361, double %mul1334, double %.cast2987)
  %arrayidx1383 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %172, i64 0
  %179 = load double, double* %arrayidx1383, align 8, !tbaa !7
  %arrayidx1387 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %172, i64 1
  %180 = load double, double* %arrayidx1387, align 8, !tbaa !7
  %arrayidx1391 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %172, i64 2
  %181 = load double, double* %arrayidx1391, align 8, !tbaa !7
  %arrayidx1400 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %172, i64 3
  %182 = load double, double* %arrayidx1400, align 8, !tbaa !7
  %neg1407 = fsub double -0.000000e+00, %179
  %183 = tail call double @llvm.fmuladd.f64(double %neg1407, double %mul1321, double %180)
  store double %183, double* %arrayidx1387, align 8, !tbaa !7
  %184 = tail call double @llvm.fmuladd.f64(double %neg1407, double %mul1327, double %181)
  %185 = tail call double @llvm.fmuladd.f64(double %neg1407, double %mul1334, double %182)
  %arrayidx1433 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv3060, i64 4
  %186 = load double, double* %arrayidx1433, align 8, !tbaa !7
  %div1440 = fdiv double 1.000000e+00, %ad.sroa.10.03002
  %mul1442 = fmul double %ad.sroa.20.03001, %div1440
  %arrayidx1446 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv3060, i64 3
  store double %mul1442, double* %arrayidx1446, align 8, !tbaa !7
  %mul1448 = fmul double %div1440, %186
  store double %mul1448, double* %arrayidx1433, align 8, !tbaa !7
  %187 = bitcast i64 %169 to double
  %mul1455 = fmul double %div1440, %187
  %arrayidx1465 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %indvars.iv3060, i64 4
  store double %mul1455, double* %arrayidx1465, align 8, !tbaa !7
  %arrayidx1472 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv.next3061, i64 3
  %188 = load double, double* %arrayidx1472, align 8, !tbaa !7
  %neg1482 = fsub double -0.000000e+00, %ae.sroa.6.03004
  %189 = tail call double @llvm.fmuladd.f64(double %neg1482, double %mul1442, double %ae.sroa.12.03003)
  %arrayidx1486 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv.next3061, i64 2
  store double %189, double* %arrayidx1486, align 8, !tbaa !7
  %190 = tail call double @llvm.fmuladd.f64(double %neg1482, double %mul1448, double %188)
  %.cast2989 = bitcast i64 %168 to double
  %191 = tail call double @llvm.fmuladd.f64(double %neg1482, double %mul1455, double %.cast2989)
  %arrayidx1504 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %172, i64 0
  %192 = load double, double* %arrayidx1504, align 8, !tbaa !7
  %arrayidx1508 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %172, i64 1
  %193 = load double, double* %arrayidx1508, align 8, !tbaa !7
  %arrayidx1512 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %172, i64 2
  %194 = load double, double* %arrayidx1512, align 8, !tbaa !7
  %arrayidx1521 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %172, i64 4
  %195 = load double, double* %arrayidx1521, align 8, !tbaa !7
  %neg1528 = fsub double -0.000000e+00, %192
  %196 = tail call double @llvm.fmuladd.f64(double %neg1528, double %mul1442, double %193)
  store double %196, double* %arrayidx1508, align 8, !tbaa !7
  %197 = tail call double @llvm.fmuladd.f64(double %neg1528, double %mul1448, double %194)
  %198 = tail call double @llvm.fmuladd.f64(double %neg1528, double %mul1455, double %195)
  %exitcond = icmp eq i64 %indvars.iv.next3061, %wide.trip.count
  %199 = bitcast double %178 to i64
  %200 = bitcast double %185 to i64
  %201 = bitcast double %191 to i64
  %202 = bitcast double %198 to i64
  br i1 %exitcond, label %for.end1550, label %for.body1303

for.end1550:                                      ; preds = %for.body1303, %for.end1129
  %203 = phi i64 [ %167, %for.end1129 ], [ %202, %for.body1303 ]
  %204 = phi i64 [ %163, %for.end1129 ], [ %201, %for.body1303 ]
  %205 = phi i64 [ %165, %for.end1129 ], [ %200, %for.body1303 ]
  %206 = phi i64 [ %161, %for.end1129 ], [ %199, %for.body1303 ]
  %aa.sroa.20.0.lcssa = phi double [ %153, %for.end1129 ], [ %177, %for.body1303 ]
  %aa.sroa.10.0.lcssa = phi double [ %152, %for.end1129 ], [ %176, %for.body1303 ]
  %ab.sroa.12.0.lcssa = phi double [ %155, %for.end1129 ], [ %184, %for.body1303 ]
  %ab.sroa.6.0.lcssa = phi double [ %154, %for.end1129 ], [ %183, %for.body1303 ]
  %ad.sroa.20.0.lcssa = phi double [ %157, %for.end1129 ], [ %190, %for.body1303 ]
  %ad.sroa.10.0.lcssa = phi double [ %156, %for.end1129 ], [ %189, %for.body1303 ]
  %ae.sroa.12.0.lcssa = phi double [ %159, %for.end1129 ], [ %197, %for.body1303 ]
  %ae.sroa.6.0.lcssa = phi double [ %158, %for.end1129 ], [ %196, %for.body1303 ]
  %207 = load double, double* %arrayidx884, align 8, !tbaa !7
  %div1566 = fdiv double 1.000000e+00, %aa.sroa.10.0.lcssa
  %mul1568 = fmul double %aa.sroa.20.0.lcssa, %div1566
  store double %mul1568, double* %arrayidx880, align 8, !tbaa !7
  %mul1574 = fmul double %div1566, %207
  store double %mul1574, double* %arrayidx884, align 8, !tbaa !7
  %.cast = bitcast i64 %206 to double
  %mul1581 = fmul double %div1566, %.cast
  %arrayidx1591 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %idxprom624, i64 3
  store double %mul1581, double* %arrayidx1591, align 8, !tbaa !7
  %arrayidx1598 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom769, i64 3
  %208 = load double, double* %arrayidx1598, align 8, !tbaa !7
  %neg1608 = fsub double -0.000000e+00, %ab.sroa.6.0.lcssa
  %209 = tail call double @llvm.fmuladd.f64(double %neg1608, double %mul1568, double %ab.sroa.12.0.lcssa)
  %arrayidx1612 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom769, i64 2
  store double %209, double* %arrayidx1612, align 8, !tbaa !7
  %210 = tail call double @llvm.fmuladd.f64(double %neg1608, double %mul1574, double %208)
  store double %210, double* %arrayidx1598, align 8, !tbaa !7
  %211 = bitcast i64 %205 to double
  %212 = tail call double @llvm.fmuladd.f64(double %neg1608, double %mul1581, double %211)
  %213 = load double, double* %arrayidx906, align 8, !tbaa !7
  %div1644 = fdiv double 1.000000e+00, %ad.sroa.10.0.lcssa
  %mul1646 = fmul double %ad.sroa.20.0.lcssa, %div1644
  store double %mul1646, double* %arrayidx902, align 8, !tbaa !7
  %mul1652 = fmul double %div1644, %213
  store double %mul1652, double* %arrayidx906, align 8, !tbaa !7
  %.cast2986 = bitcast i64 %204 to double
  %mul1659 = fmul double %div1644, %.cast2986
  %arrayidx1669 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %idxprom624, i64 4
  store double %mul1659, double* %arrayidx1669, align 8, !tbaa !7
  %arrayidx1676 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom769, i64 3
  %214 = load double, double* %arrayidx1676, align 8, !tbaa !7
  %neg1686 = fsub double -0.000000e+00, %ae.sroa.6.0.lcssa
  %215 = tail call double @llvm.fmuladd.f64(double %neg1686, double %mul1646, double %ae.sroa.12.0.lcssa)
  %arrayidx1690 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom769, i64 2
  store double %215, double* %arrayidx1690, align 8, !tbaa !7
  %216 = tail call double @llvm.fmuladd.f64(double %neg1686, double %mul1652, double %214)
  store double %216, double* %arrayidx1676, align 8, !tbaa !7
  %217 = bitcast i64 %203 to double
  %218 = tail call double @llvm.fmuladd.f64(double %neg1686, double %mul1659, double %217)
  %div1711 = fdiv double %212, %209
  %arrayidx1718 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %idxprom769, i64 3
  store double %div1711, double* %arrayidx1718, align 8, !tbaa !7
  %div1721 = fdiv double %218, %215
  %arrayidx1728 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %idxprom769, i64 4
  store double %div1721, double* %arrayidx1728, align 8, !tbaa !7
  %219 = load double, double* %arrayidx858, align 8, !tbaa !7
  %neg1761 = fsub double -0.000000e+00, %219
  %220 = load double, double* %arrayidx1243, align 8, !tbaa !7
  %221 = load double, double* %arrayidx1176, align 8, !tbaa !7
  %222 = tail call double @llvm.fmuladd.f64(double %neg1761, double %220, double %221)
  store double %222, double* %arrayidx1176, align 8, !tbaa !7
  %223 = load double, double* %arrayidx1243.1, align 8, !tbaa !7
  %224 = load double, double* %arrayidx1176.1, align 8, !tbaa !7
  %225 = tail call double @llvm.fmuladd.f64(double %neg1761, double %223, double %224)
  store double %225, double* %arrayidx1176.1, align 8, !tbaa !7
  %226 = load double, double* %arrayidx1243.2, align 8, !tbaa !7
  %227 = load double, double* %arrayidx1176.2, align 8, !tbaa !7
  %228 = tail call double @llvm.fmuladd.f64(double %neg1761, double %226, double %227)
  store double %228, double* %arrayidx1176.2, align 8, !tbaa !7
  %229 = load double, double* %arrayidx1591, align 8, !tbaa !7
  %230 = load double, double* %arrayidx880, align 8, !tbaa !7
  %neg1795 = fsub double -0.000000e+00, %230
  %231 = tail call double @llvm.fmuladd.f64(double %neg1795, double %div1711, double %229)
  store double %231, double* %arrayidx1591, align 8, !tbaa !7
  %232 = load double, double* %arrayidx1669, align 8, !tbaa !7
  %233 = load double, double* %arrayidx902, align 8, !tbaa !7
  %neg1824 = fsub double -0.000000e+00, %233
  %234 = tail call double @llvm.fmuladd.f64(double %neg1824, double %div1721, double %232)
  store double %234, double* %arrayidx1669, align 8, !tbaa !7
  %cmp18352993 = icmp sgt i32 %.pre3100, -1
  br i1 %cmp18352993, label %for.body1837.preheader, label %cleanup

for.body1837.preheader:                           ; preds = %for.end1550
  %235 = zext i32 %.pre3100 to i64
  br label %for.body1837

for.body1837:                                     ; preds = %for.body1837.preheader, %for.body1837
  %236 = phi double [ %234, %for.body1837.preheader ], [ %261, %for.body1837 ]
  %.in = phi double [ %div1721, %for.body1837.preheader ], [ %236, %for.body1837 ]
  %237 = phi double [ %231, %for.body1837.preheader ], [ %256, %for.body1837 ]
  %.in3102 = phi double [ %div1711, %for.body1837.preheader ], [ %237, %for.body1837 ]
  %238 = phi double [ %228, %for.body1837.preheader ], [ %251, %for.body1837 ]
  %.in3103 = phi double [ %226, %for.body1837.preheader ], [ %238, %for.body1837 ]
  %239 = phi double [ %225, %for.body1837.preheader ], [ %248, %for.body1837 ]
  %.in3104 = phi double [ %223, %for.body1837.preheader ], [ %239, %for.body1837 ]
  %240 = phi double [ %222, %for.body1837.preheader ], [ %245, %for.body1837 ]
  %.in3105 = phi double [ %220, %for.body1837.preheader ], [ %240, %for.body1837 ]
  %indvars.iv = phi i64 [ %235, %for.body1837.preheader ], [ %indvars.iv.next, %for.body1837 ]
  %arrayidx1842 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv, i64 3
  %241 = load double, double* %arrayidx1842, align 8, !tbaa !7
  %arrayidx1846 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv, i64 4
  %242 = load double, double* %arrayidx1846, align 8, !tbaa !7
  %neg1872 = fsub double -0.000000e+00, %241
  %neg1877 = fsub double -0.000000e+00, %242
  %arrayidx1867 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %indvars.iv, i64 0
  %243 = load double, double* %arrayidx1867, align 8, !tbaa !7
  %244 = tail call double @llvm.fmuladd.f64(double %neg1872, double %240, double %243)
  %245 = tail call double @llvm.fmuladd.f64(double %neg1877, double %.in3105, double %244)
  store double %245, double* %arrayidx1867, align 8, !tbaa !7
  %arrayidx1867.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %indvars.iv, i64 1
  %246 = load double, double* %arrayidx1867.1, align 8, !tbaa !7
  %247 = tail call double @llvm.fmuladd.f64(double %neg1872, double %239, double %246)
  %248 = tail call double @llvm.fmuladd.f64(double %neg1877, double %.in3104, double %247)
  store double %248, double* %arrayidx1867.1, align 8, !tbaa !7
  %arrayidx1867.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %indvars.iv, i64 2
  %249 = load double, double* %arrayidx1867.2, align 8, !tbaa !7
  %250 = tail call double @llvm.fmuladd.f64(double %neg1872, double %238, double %249)
  %251 = tail call double @llvm.fmuladd.f64(double %neg1877, double %.in3103, double %250)
  store double %251, double* %arrayidx1867.2, align 8, !tbaa !7
  %arrayidx1901 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %indvars.iv, i64 3
  %252 = load double, double* %arrayidx1901, align 8, !tbaa !7
  %arrayidx1904 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv, i64 3
  %253 = load double, double* %arrayidx1904, align 8, !tbaa !7
  %neg1907 = fsub double -0.000000e+00, %253
  %254 = tail call double @llvm.fmuladd.f64(double %neg1907, double %237, double %252)
  %arrayidx1910 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv, i64 4
  %255 = load double, double* %arrayidx1910, align 8, !tbaa !7
  %neg1913 = fsub double -0.000000e+00, %255
  %256 = tail call double @llvm.fmuladd.f64(double %neg1913, double %.in3102, double %254)
  store double %256, double* %arrayidx1901, align 8, !tbaa !7
  %arrayidx1932 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom64, i64 %idxprom66, i64 %indvars.iv, i64 4
  %257 = load double, double* %arrayidx1932, align 8, !tbaa !7
  %arrayidx1935 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv, i64 3
  %258 = load double, double* %arrayidx1935, align 8, !tbaa !7
  %neg1938 = fsub double -0.000000e+00, %258
  %259 = tail call double @llvm.fmuladd.f64(double %neg1938, double %236, double %257)
  %arrayidx1941 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv, i64 4
  %260 = load double, double* %arrayidx1941, align 8, !tbaa !7
  %neg1944 = fsub double -0.000000e+00, %260
  %261 = tail call double @llvm.fmuladd.f64(double %neg1944, double %.in, double %259)
  store double %261, double* %arrayidx1932, align 8, !tbaa !7
  %cmp1835 = icmp sgt i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %cmp1835, label %for.body1837, label %cleanup

cleanup:                                          ; preds = %for.body1837, %for.end1550, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
