; ModuleID = 'src/541.src'
source_filename = "src/541.src"
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
  %cmp = icmp sgt i32 %conv, %k
  %cmp5 = icmp sgt i32 %conv3, %j
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %2 = bitcast double* %a to [13 x [13 x double]]*
  %3 = bitcast double* %c to [13 x [13 x double]]*
  %mul = mul nsw i32 %0, %j
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
  %add31 = add nsw i32 %l, 1
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
  %idxprom65 = sext i32 %conv to i64
  %idxprom67 = sext i32 %conv3 to i64
  %arrayidx68 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 0, i64 %idxprom65, i64 %idxprom67
  %9 = load double, double* %arrayidx68, align 8, !tbaa !7
  %mul69 = fmul double %9, 1.000000e-01
  %arrayidx74 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 0, i64 %idxprom65, i64 %idxprom67
  %10 = load double, double* %arrayidx74, align 8, !tbaa !7
  store double %10, double* %arrayidx, align 8, !tbaa !7
  %11 = tail call double @llvm.fmuladd.f64(double %mul69, double 0x3FF5555555555555, double 1.000000e+00)
  %12 = tail call double @llvm.fmuladd.f64(double %mul69, double 0x3FFF5C28F5C28F5B, double 1.000000e+00)
  %cmp78 = fcmp ogt double %11, %12
  %cond = select i1 %cmp78, double %11, double %12
  %add82 = fadd double %mul69, 1.000000e+00
  %cmp83 = fcmp ogt double %add82, 1.000000e+00
  %cond89 = select i1 %cmp83, double %add82, double 1.000000e+00
  %cmp90 = fcmp ogt double %cond, %cond89
  %cond.cond89 = select i1 %cmp90, double %cond, double %cond89
  store double %cond.cond89, double* %arrayidx11, align 8, !tbaa !7
  %arrayidx119 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 0, i64 %idxprom65, i64 %idxprom67
  %13 = load double, double* %arrayidx119, align 8, !tbaa !7
  %arrayidx120 = getelementptr inbounds double, double* %b, i64 169
  %14 = bitcast double* %arrayidx120 to [13 x [13 x double]]*
  %arrayidx124 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %14, i64 0, i64 %idxprom65, i64 %idxprom67
  %15 = load double, double* %arrayidx124, align 8, !tbaa !7
  %mul125 = fmul double %15, 1.000000e-01
  %arrayidx126 = getelementptr inbounds double, double* %a, i64 169
  %16 = bitcast double* %arrayidx126 to [13 x [13 x double]]*
  %arrayidx130 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %16, i64 0, i64 %idxprom65, i64 %idxprom67
  %17 = load double, double* %arrayidx130, align 8, !tbaa !7
  %arrayidx131 = getelementptr inbounds double, double* %arrayidx, i64 1
  store double %17, double* %arrayidx131, align 8, !tbaa !7
  %18 = tail call double @llvm.fmuladd.f64(double %mul125, double 0x3FF5555555555555, double 1.000000e+00)
  %19 = tail call double @llvm.fmuladd.f64(double %mul125, double 0x3FFF5C28F5C28F5B, double 1.000000e+00)
  %cmp134 = fcmp ogt double %18, %19
  %cond141 = select i1 %cmp134, double %18, double %19
  %add142 = fadd double %mul125, 1.000000e+00
  %cmp143 = fcmp ogt double %add142, 1.000000e+00
  %cond149 = select i1 %cmp143, double %add142, double 1.000000e+00
  %cmp150 = fcmp ogt double %cond141, %cond149
  %cond173 = select i1 %cmp150, double %cond141, double %cond149
  %arrayidx174 = getelementptr inbounds double, double* %arrayidx11, i64 1
  store double %cond173, double* %arrayidx174, align 8, !tbaa !7
  %arrayidx175 = getelementptr inbounds double, double* %c, i64 169
  %20 = bitcast double* %arrayidx175 to [13 x [13 x double]]*
  %arrayidx179 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %20, i64 0, i64 %idxprom65, i64 %idxprom67
  %21 = load double, double* %arrayidx179, align 8, !tbaa !7
  %arrayidx182 = getelementptr inbounds double, double* %b, i64 338
  %22 = bitcast double* %arrayidx182 to [13 x [13 x double]]*
  %arrayidx186 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %22, i64 0, i64 %idxprom65, i64 %idxprom67
  %23 = load double, double* %arrayidx186, align 8, !tbaa !7
  %mul187 = fmul double %23, 1.000000e-01
  %arrayidx190 = getelementptr inbounds double, double* %a, i64 338
  %24 = bitcast double* %arrayidx190 to [13 x [13 x double]]*
  %arrayidx194 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %24, i64 0, i64 %idxprom65, i64 %idxprom67
  %25 = load double, double* %arrayidx194, align 8, !tbaa !7
  %arrayidx197 = getelementptr inbounds double, double* %arrayidx, i64 2
  store double %25, double* %arrayidx197, align 8, !tbaa !7
  %26 = tail call double @llvm.fmuladd.f64(double %mul187, double 0x3FF5555555555555, double 1.000000e+00)
  %27 = tail call double @llvm.fmuladd.f64(double %mul187, double 0x3FFF5C28F5C28F5B, double 1.000000e+00)
  %cmp200 = fcmp ogt double %26, %27
  %cond207 = select i1 %cmp200, double %26, double %27
  %add208 = fadd double %mul187, 1.000000e+00
  %cmp209 = fcmp ogt double %add208, 1.000000e+00
  %cond215 = select i1 %cmp209, double %add208, double 1.000000e+00
  %cmp216 = fcmp ogt double %cond207, %cond215
  %cond207.cond215 = select i1 %cmp216, double %cond207, double %cond215
  %arrayidx242 = getelementptr inbounds double, double* %arrayidx11, i64 2
  store double %cond207.cond215, double* %arrayidx242, align 8, !tbaa !7
  %arrayidx245 = getelementptr inbounds double, double* %c, i64 338
  %28 = bitcast double* %arrayidx245 to [13 x [13 x double]]*
  %arrayidx249 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %28, i64 0, i64 %idxprom65, i64 %idxprom67
  %29 = load double, double* %arrayidx249, align 8, !tbaa !7
  %arrayidx252 = getelementptr inbounds double, double* %arrayidx15, i64 5
  store double 0.000000e+00, double* %arrayidx252, align 8, !tbaa !7
  %neg = fmul double %cond.cond89, -1.815000e+00
  %30 = tail call double @llvm.fmuladd.f64(double %10, double 0xBFB51EB851EB851E, double %neg)
  %arrayidx259 = getelementptr inbounds double, double* %arrayidx252, i64 1
  store double %30, double* %arrayidx259, align 8, !tbaa !7
  %31 = tail call double @llvm.fmuladd.f64(double %cond173, double 3.630000e+00, double 1.000000e+00)
  %add261 = fadd double %31, 1.875000e-02
  %arrayidx265 = getelementptr inbounds double, double* %arrayidx252, i64 2
  store double %add261, double* %arrayidx265, align 8, !tbaa !7
  %neg268 = fmul double %cond207.cond215, -1.815000e+00
  %32 = tail call double @llvm.fmuladd.f64(double %25, double 0x3FB51EB851EB851E, double %neg268)
  %sub269 = fadd double %32, -1.500000e-02
  %arrayidx273 = getelementptr inbounds double, double* %arrayidx252, i64 3
  store double %sub269, double* %arrayidx273, align 8, !tbaa !7
  %arrayidx277 = getelementptr inbounds double, double* %arrayidx252, i64 4
  store double 3.750000e-03, double* %arrayidx277, align 8, !tbaa !7
  %arrayidx280 = getelementptr inbounds double, double* %arrayidx17, i64 5
  store double 0.000000e+00, double* %arrayidx280, align 8, !tbaa !7
  %33 = tail call double @llvm.fmuladd.f64(double %13, double 0xBFB51EB851EB851E, double %30)
  %arrayidx286 = getelementptr inbounds double, double* %arrayidx280, i64 1
  store double %33, double* %arrayidx286, align 8, !tbaa !7
  %arrayidx290 = getelementptr inbounds double, double* %arrayidx280, i64 2
  store double %add261, double* %arrayidx290, align 8, !tbaa !7
  %34 = tail call double @llvm.fmuladd.f64(double %29, double 0x3FB51EB851EB851E, double %sub269)
  %arrayidx295 = getelementptr inbounds double, double* %arrayidx280, i64 3
  store double %34, double* %arrayidx295, align 8, !tbaa !7
  %arrayidx299 = getelementptr inbounds double, double* %arrayidx280, i64 4
  store double 3.750000e-03, double* %arrayidx299, align 8, !tbaa !7
  %arrayidx302 = getelementptr inbounds double, double* %arrayidx19, i64 5
  store double 0.000000e+00, double* %arrayidx302, align 8, !tbaa !7
  %35 = tail call double @llvm.fmuladd.f64(double %13, double 0x3FB51EB851EB851E, double %30)
  %arrayidx308 = getelementptr inbounds double, double* %arrayidx302, i64 1
  store double %35, double* %arrayidx308, align 8, !tbaa !7
  %arrayidx312 = getelementptr inbounds double, double* %arrayidx302, i64 2
  store double %add261, double* %arrayidx312, align 8, !tbaa !7
  %36 = tail call double @llvm.fmuladd.f64(double %29, double 0xBFB51EB851EB851E, double %sub269)
  %arrayidx317 = getelementptr inbounds double, double* %arrayidx302, i64 3
  store double %36, double* %arrayidx317, align 8, !tbaa !7
  %arrayidx321 = getelementptr inbounds double, double* %arrayidx302, i64 4
  store double 3.750000e-03, double* %arrayidx321, align 8, !tbaa !7
  %arrayidx324 = getelementptr inbounds double, double* %b, i64 507
  %37 = bitcast double* %arrayidx324 to [13 x [13 x double]]*
  %arrayidx328 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %37, i64 0, i64 %idxprom65, i64 %idxprom67
  %38 = load double, double* %arrayidx328, align 8, !tbaa !7
  %mul329 = fmul double %38, 1.000000e-01
  %arrayidx332 = getelementptr inbounds double, double* %a, i64 507
  %39 = bitcast double* %arrayidx332 to [13 x [13 x double]]*
  %arrayidx336 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %39, i64 0, i64 %idxprom65, i64 %idxprom67
  %40 = load double, double* %arrayidx336, align 8, !tbaa !7
  %arrayidx339 = getelementptr inbounds double, double* %arrayidx, i64 3
  store double %40, double* %arrayidx339, align 8, !tbaa !7
  %41 = tail call double @llvm.fmuladd.f64(double %mul329, double 0x3FF5555555555555, double 1.000000e+00)
  %42 = tail call double @llvm.fmuladd.f64(double %mul329, double 0x3FFF5C28F5C28F5B, double 1.000000e+00)
  %cmp342 = fcmp ogt double %41, %42
  %cond349 = select i1 %cmp342, double %41, double %42
  %add350 = fadd double %mul329, 1.000000e+00
  %cmp351 = fcmp ogt double %add350, 1.000000e+00
  %cond357 = select i1 %cmp351, double %add350, double 1.000000e+00
  %cmp358 = fcmp ogt double %cond349, %cond357
  %cond381 = select i1 %cmp358, double %cond349, double %cond357
  %arrayidx384 = getelementptr inbounds double, double* %arrayidx11, i64 3
  store double %cond381, double* %arrayidx384, align 8, !tbaa !7
  %arrayidx387 = getelementptr inbounds double, double* %c, i64 507
  %43 = bitcast double* %arrayidx387 to [13 x [13 x double]]*
  %arrayidx391 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %43, i64 0, i64 %idxprom65, i64 %idxprom67
  %44 = load double, double* %arrayidx391, align 8, !tbaa !7
  %arrayidx394 = getelementptr inbounds double, double* %arrayidx15, i64 10
  store double 0.000000e+00, double* %arrayidx394, align 8, !tbaa !7
  %neg398 = fmul double %cond173, -1.815000e+00
  %45 = tail call double @llvm.fmuladd.f64(double %17, double 0xBFB51EB851EB851E, double %neg398)
  %sub399 = fadd double %45, -1.500000e-02
  %arrayidx403 = getelementptr inbounds double, double* %arrayidx394, i64 1
  store double %sub399, double* %arrayidx403, align 8, !tbaa !7
  %46 = tail call double @llvm.fmuladd.f64(double %cond207.cond215, double 3.630000e+00, double 1.000000e+00)
  %add405 = fadd double %46, 2.250000e-02
  %arrayidx409 = getelementptr inbounds double, double* %arrayidx394, i64 2
  store double %add405, double* %arrayidx409, align 8, !tbaa !7
  %neg412 = fmul double %cond381, -1.815000e+00
  %47 = tail call double @llvm.fmuladd.f64(double %40, double 0x3FB51EB851EB851E, double %neg412)
  %sub413 = fadd double %47, -1.500000e-02
  %arrayidx417 = getelementptr inbounds double, double* %arrayidx394, i64 3
  store double %sub413, double* %arrayidx417, align 8, !tbaa !7
  %arrayidx421 = getelementptr inbounds double, double* %arrayidx394, i64 4
  store double 3.750000e-03, double* %arrayidx421, align 8, !tbaa !7
  %arrayidx424 = getelementptr inbounds double, double* %arrayidx17, i64 10
  store double 0.000000e+00, double* %arrayidx424, align 8, !tbaa !7
  %48 = tail call double @llvm.fmuladd.f64(double %21, double 0xBFB51EB851EB851E, double %sub399)
  %arrayidx430 = getelementptr inbounds double, double* %arrayidx424, i64 1
  store double %48, double* %arrayidx430, align 8, !tbaa !7
  %arrayidx434 = getelementptr inbounds double, double* %arrayidx424, i64 2
  store double %add405, double* %arrayidx434, align 8, !tbaa !7
  %49 = tail call double @llvm.fmuladd.f64(double %44, double 0x3FB51EB851EB851E, double %sub413)
  %arrayidx439 = getelementptr inbounds double, double* %arrayidx424, i64 3
  store double %49, double* %arrayidx439, align 8, !tbaa !7
  %arrayidx443 = getelementptr inbounds double, double* %arrayidx424, i64 4
  store double 3.750000e-03, double* %arrayidx443, align 8, !tbaa !7
  %arrayidx446 = getelementptr inbounds double, double* %arrayidx19, i64 10
  store double 0.000000e+00, double* %arrayidx446, align 8, !tbaa !7
  %50 = tail call double @llvm.fmuladd.f64(double %21, double 0x3FB51EB851EB851E, double %sub399)
  %arrayidx452 = getelementptr inbounds double, double* %arrayidx446, i64 1
  store double %50, double* %arrayidx452, align 8, !tbaa !7
  %arrayidx456 = getelementptr inbounds double, double* %arrayidx446, i64 2
  store double %add405, double* %arrayidx456, align 8, !tbaa !7
  %51 = tail call double @llvm.fmuladd.f64(double %44, double 0xBFB51EB851EB851E, double %sub413)
  %arrayidx461 = getelementptr inbounds double, double* %arrayidx446, i64 3
  store double %51, double* %arrayidx461, align 8, !tbaa !7
  %arrayidx465 = getelementptr inbounds double, double* %arrayidx446, i64 4
  store double 3.750000e-03, double* %arrayidx465, align 8, !tbaa !7
  %cmp4683027 = icmp slt i32 %l, 5
  %.pre3097 = add nsw i32 %l, -1
  br i1 %cmp4683027, label %for.end617, label %for.body470.preheader

for.body470.preheader:                            ; preds = %if.end
  %wide.trip.count3086 = zext i32 %.pre3097 to i64
  br label %for.body470

for.body470:                                      ; preds = %for.body470, %for.body470.preheader
  %indvars.iv3084 = phi i64 [ 3, %for.body470.preheader ], [ %indvars.iv.next3085, %for.body470 ]
  %ap.03033 = phi double [ %44, %for.body470.preheader ], [ %56, %for.body470 ]
  %ao.03032 = phi double [ %29, %for.body470.preheader ], [ %ap.03033, %for.body470 ]
  %am.03031 = phi double [ %cond381, %for.body470.preheader ], [ %cond498.cond506, %for.body470 ]
  %al.03030 = phi double [ %cond207.cond215, %for.body470.preheader ], [ %am.03031, %for.body470 ]
  %aj.03029 = phi double [ %40, %for.body470.preheader ], [ %53, %for.body470 ]
  %ai.03028 = phi double [ %25, %for.body470.preheader ], [ %aj.03029, %for.body470 ]
  %indvars.iv.next3085 = add nuw nsw i64 %indvars.iv3084, 1
  %arrayidx477 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %indvars.iv.next3085, i64 %idxprom65, i64 %idxprom67
  %52 = load double, double* %arrayidx477, align 8, !tbaa !7
  %mul478 = fmul double %52, 1.000000e-01
  %arrayidx485 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 %indvars.iv.next3085, i64 %idxprom65, i64 %idxprom67
  %53 = load double, double* %arrayidx485, align 8, !tbaa !7
  %arrayidx488 = getelementptr inbounds double, double* %arrayidx, i64 %indvars.iv.next3085
  store double %53, double* %arrayidx488, align 8, !tbaa !7
  %54 = tail call double @llvm.fmuladd.f64(double %mul478, double 0x3FF5555555555555, double 1.000000e+00)
  %55 = tail call double @llvm.fmuladd.f64(double %mul478, double 0x3FFF5C28F5C28F5B, double 1.000000e+00)
  %cmp491 = fcmp ogt double %54, %55
  %cond498 = select i1 %cmp491, double %54, double %55
  %add499 = fadd double %mul478, 1.000000e+00
  %cmp500 = fcmp ogt double %add499, 1.000000e+00
  %cond506 = select i1 %cmp500, double %add499, double 1.000000e+00
  %cmp507 = fcmp ogt double %cond498, %cond506
  %cond498.cond506 = select i1 %cmp507, double %cond498, double %cond506
  %arrayidx533 = getelementptr inbounds double, double* %arrayidx11, i64 %indvars.iv.next3085
  store double %cond498.cond506, double* %arrayidx533, align 8, !tbaa !7
  %arrayidx540 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 %indvars.iv.next3085, i64 %idxprom65, i64 %idxprom67
  %56 = load double, double* %arrayidx540, align 8, !tbaa !7
  %arrayidx544 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv3084, i64 0
  store double 3.750000e-03, double* %arrayidx544, align 8, !tbaa !7
  %neg547 = fmul double %al.03030, -1.815000e+00
  %57 = tail call double @llvm.fmuladd.f64(double %ai.03028, double 0xBFB51EB851EB851E, double %neg547)
  %sub548 = fadd double %57, -1.500000e-02
  %arrayidx552 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv3084, i64 1
  store double %sub548, double* %arrayidx552, align 8, !tbaa !7
  %58 = tail call double @llvm.fmuladd.f64(double %am.03031, double 3.630000e+00, double 1.000000e+00)
  %add554 = fadd double %58, 2.250000e-02
  %arrayidx558 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv3084, i64 2
  store double %add554, double* %arrayidx558, align 8, !tbaa !7
  %neg561 = fmul double %cond498.cond506, -1.815000e+00
  %59 = tail call double @llvm.fmuladd.f64(double %53, double 0x3FB51EB851EB851E, double %neg561)
  %sub562 = fadd double %59, -1.500000e-02
  %arrayidx566 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv3084, i64 3
  store double %sub562, double* %arrayidx566, align 8, !tbaa !7
  %arrayidx570 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv3084, i64 4
  store double 3.750000e-03, double* %arrayidx570, align 8, !tbaa !7
  %arrayidx574 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv3084, i64 0
  store double 3.750000e-03, double* %arrayidx574, align 8, !tbaa !7
  %60 = tail call double @llvm.fmuladd.f64(double %ao.03032, double 0xBFB51EB851EB851E, double %sub548)
  %arrayidx579 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv3084, i64 1
  store double %60, double* %arrayidx579, align 8, !tbaa !7
  %arrayidx583 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv3084, i64 2
  store double %add554, double* %arrayidx583, align 8, !tbaa !7
  %61 = tail call double @llvm.fmuladd.f64(double %56, double 0x3FB51EB851EB851E, double %sub562)
  %arrayidx588 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv3084, i64 3
  store double %61, double* %arrayidx588, align 8, !tbaa !7
  %arrayidx592 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv3084, i64 4
  store double 3.750000e-03, double* %arrayidx592, align 8, !tbaa !7
  %arrayidx596 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv3084, i64 0
  store double 3.750000e-03, double* %arrayidx596, align 8, !tbaa !7
  %62 = tail call double @llvm.fmuladd.f64(double %ao.03032, double 0x3FB51EB851EB851E, double %sub548)
  %arrayidx601 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv3084, i64 1
  store double %62, double* %arrayidx601, align 8, !tbaa !7
  %arrayidx605 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv3084, i64 2
  store double %add554, double* %arrayidx605, align 8, !tbaa !7
  %63 = tail call double @llvm.fmuladd.f64(double %56, double 0xBFB51EB851EB851E, double %sub562)
  %arrayidx610 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv3084, i64 3
  store double %63, double* %arrayidx610, align 8, !tbaa !7
  %arrayidx614 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv3084, i64 4
  store double 3.750000e-03, double* %arrayidx614, align 8, !tbaa !7
  %exitcond3087 = icmp eq i64 %indvars.iv.next3085, %wide.trip.count3086
  br i1 %exitcond3087, label %for.end617.loopexit, label %for.body470

for.end617.loopexit:                              ; preds = %for.body470
  %.pre = fmul double %am.03031, -1.815000e+00
  br label %for.end617

for.end617:                                       ; preds = %if.end, %for.end617.loopexit
  %neg839.pre-phi = phi double [ %neg561, %for.end617.loopexit ], [ %neg412, %if.end ]
  %neg695.pre-phi = phi double [ %.pre, %for.end617.loopexit ], [ %neg268, %if.end ]
  %ai.0.lcssa = phi double [ %aj.03029, %for.end617.loopexit ], [ %25, %if.end ]
  %aj.0.lcssa = phi double [ %53, %for.end617.loopexit ], [ %40, %if.end ]
  %am.0.lcssa = phi double [ %cond498.cond506, %for.end617.loopexit ], [ %cond381, %if.end ]
  %ao.0.lcssa = phi double [ %ap.03033, %for.end617.loopexit ], [ %29, %if.end ]
  %ap.0.lcssa = phi double [ %56, %for.end617.loopexit ], [ %44, %if.end ]
  %idxprom620 = sext i32 %l to i64
  %arrayidx625 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom620, i64 %idxprom65, i64 %idxprom67
  %64 = load double, double* %arrayidx625, align 8, !tbaa !7
  %mul626 = fmul double %64, 1.000000e-01
  %arrayidx633 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 %idxprom620, i64 %idxprom65, i64 %idxprom67
  %65 = load double, double* %arrayidx633, align 8, !tbaa !7
  %arrayidx636 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom620
  store double %65, double* %arrayidx636, align 8, !tbaa !7
  %66 = tail call double @llvm.fmuladd.f64(double %mul626, double 0x3FF5555555555555, double 1.000000e+00)
  %67 = tail call double @llvm.fmuladd.f64(double %mul626, double 0x3FFF5C28F5C28F5B, double 1.000000e+00)
  %cmp639 = fcmp ogt double %66, %67
  %cond646 = select i1 %cmp639, double %66, double %67
  %add647 = fadd double %mul626, 1.000000e+00
  %cmp648 = fcmp ogt double %add647, 1.000000e+00
  %cond654 = select i1 %cmp648, double %add647, double 1.000000e+00
  %cmp655 = fcmp ogt double %cond646, %cond654
  %cond646.cond654 = select i1 %cmp655, double %cond646, double %cond654
  %arrayidx681 = getelementptr inbounds double, double* %arrayidx11, i64 %idxprom620
  store double %cond646.cond654, double* %arrayidx681, align 8, !tbaa !7
  %arrayidx688 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 %idxprom620, i64 %idxprom65, i64 %idxprom67
  %68 = load double, double* %arrayidx688, align 8, !tbaa !7
  %idxprom690 = sext i32 %.pre3097 to i64
  %arrayidx692 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom690, i64 0
  store double 3.750000e-03, double* %arrayidx692, align 8, !tbaa !7
  %69 = tail call double @llvm.fmuladd.f64(double %ai.0.lcssa, double 0xBFB51EB851EB851E, double %neg695.pre-phi)
  %sub696 = fadd double %69, -1.500000e-02
  %arrayidx700 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom690, i64 1
  store double %sub696, double* %arrayidx700, align 8, !tbaa !7
  %70 = tail call double @llvm.fmuladd.f64(double %am.0.lcssa, double 3.630000e+00, double 1.000000e+00)
  %add702 = fadd double %70, 2.250000e-02
  %arrayidx706 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom690, i64 2
  store double %add702, double* %arrayidx706, align 8, !tbaa !7
  %neg709 = fmul double %cond646.cond654, -1.815000e+00
  %71 = tail call double @llvm.fmuladd.f64(double %65, double 0x3FB51EB851EB851E, double %neg709)
  %sub710 = fadd double %71, -1.500000e-02
  %arrayidx714 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom690, i64 3
  store double %sub710, double* %arrayidx714, align 8, !tbaa !7
  %arrayidx718 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom690, i64 4
  store double 0.000000e+00, double* %arrayidx718, align 8, !tbaa !7
  %arrayidx722 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom690, i64 0
  store double 3.750000e-03, double* %arrayidx722, align 8, !tbaa !7
  %72 = tail call double @llvm.fmuladd.f64(double %ao.0.lcssa, double 0xBFB51EB851EB851E, double %sub696)
  %arrayidx727 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom690, i64 1
  store double %72, double* %arrayidx727, align 8, !tbaa !7
  %arrayidx731 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom690, i64 2
  store double %add702, double* %arrayidx731, align 8, !tbaa !7
  %73 = tail call double @llvm.fmuladd.f64(double %68, double 0x3FB51EB851EB851E, double %sub710)
  %arrayidx736 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom690, i64 3
  store double %73, double* %arrayidx736, align 8, !tbaa !7
  %arrayidx740 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom690, i64 4
  store double 0.000000e+00, double* %arrayidx740, align 8, !tbaa !7
  %arrayidx744 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom690, i64 0
  store double 3.750000e-03, double* %arrayidx744, align 8, !tbaa !7
  %74 = tail call double @llvm.fmuladd.f64(double %ao.0.lcssa, double 0x3FB51EB851EB851E, double %sub696)
  %arrayidx749 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom690, i64 1
  store double %74, double* %arrayidx749, align 8, !tbaa !7
  %arrayidx753 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom690, i64 2
  store double %add702, double* %arrayidx753, align 8, !tbaa !7
  %75 = tail call double @llvm.fmuladd.f64(double %68, double 0xBFB51EB851EB851E, double %sub710)
  %arrayidx758 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom690, i64 3
  store double %75, double* %arrayidx758, align 8, !tbaa !7
  %arrayidx762 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom690, i64 4
  store double 0.000000e+00, double* %arrayidx762, align 8, !tbaa !7
  %arrayidx769 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom32, i64 %idxprom65, i64 %idxprom67
  %76 = load double, double* %arrayidx769, align 8, !tbaa !7
  %mul770 = fmul double %76, 1.000000e-01
  %arrayidx777 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 %idxprom32, i64 %idxprom65, i64 %idxprom67
  %77 = load double, double* %arrayidx777, align 8, !tbaa !7
  %arrayidx780 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom32
  store double %77, double* %arrayidx780, align 8, !tbaa !7
  %78 = tail call double @llvm.fmuladd.f64(double %mul770, double 0x3FF5555555555555, double 1.000000e+00)
  %79 = tail call double @llvm.fmuladd.f64(double %mul770, double 0x3FFF5C28F5C28F5B, double 1.000000e+00)
  %cmp783 = fcmp ogt double %78, %79
  %cond790 = select i1 %cmp783, double %78, double %79
  %add791 = fadd double %mul770, 1.000000e+00
  %cmp792 = fcmp ogt double %add791, 1.000000e+00
  %cond798 = select i1 %cmp792, double %add791, double 1.000000e+00
  %cmp799 = fcmp ogt double %cond790, %cond798
  %cond822 = select i1 %cmp799, double %cond790, double %cond798
  %arrayidx825 = getelementptr inbounds double, double* %arrayidx11, i64 %idxprom32
  store double %cond822, double* %arrayidx825, align 8, !tbaa !7
  %arrayidx832 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 %idxprom32, i64 %idxprom65, i64 %idxprom67
  %80 = load double, double* %arrayidx832, align 8, !tbaa !7
  %arrayidx836 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom620, i64 0
  store double 3.750000e-03, double* %arrayidx836, align 8, !tbaa !7
  %81 = tail call double @llvm.fmuladd.f64(double %aj.0.lcssa, double 0xBFB51EB851EB851E, double %neg839.pre-phi)
  %sub840 = fadd double %81, -1.500000e-02
  %arrayidx844 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom620, i64 1
  store double %sub840, double* %arrayidx844, align 8, !tbaa !7
  %82 = tail call double @llvm.fmuladd.f64(double %cond646.cond654, double 3.630000e+00, double 1.000000e+00)
  %add846 = fadd double %82, 1.875000e-02
  %arrayidx850 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom620, i64 2
  store double %add846, double* %arrayidx850, align 8, !tbaa !7
  %neg853 = fmul double %cond822, -1.815000e+00
  %83 = tail call double @llvm.fmuladd.f64(double %77, double 0x3FB51EB851EB851E, double %neg853)
  %arrayidx857 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom620, i64 3
  store double %83, double* %arrayidx857, align 8, !tbaa !7
  %arrayidx861 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom620, i64 4
  store double 0.000000e+00, double* %arrayidx861, align 8, !tbaa !7
  %arrayidx865 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom620, i64 0
  store double 3.750000e-03, double* %arrayidx865, align 8, !tbaa !7
  %84 = tail call double @llvm.fmuladd.f64(double %ap.0.lcssa, double 0xBFB51EB851EB851E, double %sub840)
  %arrayidx870 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom620, i64 1
  store double %84, double* %arrayidx870, align 8, !tbaa !7
  %arrayidx874 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom620, i64 2
  store double %add846, double* %arrayidx874, align 8, !tbaa !7
  %85 = tail call double @llvm.fmuladd.f64(double %80, double 0x3FB51EB851EB851E, double %83)
  %arrayidx879 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom620, i64 3
  store double %85, double* %arrayidx879, align 8, !tbaa !7
  %arrayidx883 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom620, i64 4
  store double 0.000000e+00, double* %arrayidx883, align 8, !tbaa !7
  %arrayidx887 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom620, i64 0
  store double 3.750000e-03, double* %arrayidx887, align 8, !tbaa !7
  %86 = tail call double @llvm.fmuladd.f64(double %ap.0.lcssa, double 0x3FB51EB851EB851E, double %sub840)
  %arrayidx892 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom620, i64 1
  store double %86, double* %arrayidx892, align 8, !tbaa !7
  %arrayidx896 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom620, i64 2
  store double %add846, double* %arrayidx896, align 8, !tbaa !7
  %87 = tail call double @llvm.fmuladd.f64(double %80, double 0xBFB51EB851EB851E, double %83)
  %arrayidx901 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom620, i64 3
  store double %87, double* %arrayidx901, align 8, !tbaa !7
  %arrayidx905 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom620, i64 4
  store double 0.000000e+00, double* %arrayidx905, align 8, !tbaa !7
  %88 = load double, double* %arrayidx24.2, align 8, !tbaa !7
  %89 = load double, double* %arrayidx24.3, align 8, !tbaa !7
  %90 = load double, double* %arrayidx259, align 8, !tbaa !7
  %91 = load double, double* %arrayidx265, align 8, !tbaa !7
  %arrayidx922 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 0, i64 %idxprom65, i64 %idxprom67
  %92 = bitcast [5 x double]* %arrayidx922 to i64*
  %93 = load i64, i64* %92, align 8, !tbaa !7
  %arrayidx930 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 0, i64 %idxprom65, i64 %idxprom67, i64 1
  %94 = bitcast double* %arrayidx930 to i64*
  %95 = load i64, i64* %94, align 8, !tbaa !7
  %arrayidx937 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 0, i64 %idxprom65, i64 %idxprom67, i64 2
  %96 = bitcast double* %arrayidx937 to i64*
  %97 = load i64, i64* %96, align 8, !tbaa !7
  %arrayidx939 = getelementptr inbounds double, double* %d, i64 845
  %98 = bitcast double* %arrayidx939 to [13 x [13 x [5 x double]]]*
  %arrayidx943 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %98, i64 0, i64 %idxprom65, i64 %idxprom67
  %99 = bitcast [5 x double]* %arrayidx943 to i64*
  %100 = load i64, i64* %99, align 8, !tbaa !7
  %arrayidx951 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %98, i64 0, i64 %idxprom65, i64 %idxprom67, i64 1
  %101 = bitcast double* %arrayidx951 to i64*
  %102 = load i64, i64* %101, align 8, !tbaa !7
  %arrayidx958 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %98, i64 0, i64 %idxprom65, i64 %idxprom67, i64 2
  %103 = bitcast double* %arrayidx958 to i64*
  %104 = load i64, i64* %103, align 8, !tbaa !7
  %sub961 = add i32 %m, -3
  %cmp9623016 = icmp slt i32 %sub961, 0
  %.pre3098 = add i32 %m, -2
  br i1 %cmp9623016, label %for.end1128, label %for.body964.lr.ph

for.body964.lr.ph:                                ; preds = %for.end617
  %wide.trip.count3082 = zext i32 %.pre3098 to i64
  br label %for.body964

for.body964:                                      ; preds = %for.body964, %for.body964.lr.ph
  %105 = phi i64 [ %142, %for.body964 ], [ %104, %for.body964.lr.ph ]
  %106 = phi i64 [ %141, %for.body964 ], [ %102, %for.body964.lr.ph ]
  %107 = phi i64 [ %140, %for.body964 ], [ %100, %for.body964.lr.ph ]
  %108 = phi i64 [ %139, %for.body964 ], [ %97, %for.body964.lr.ph ]
  %109 = phi i64 [ %138, %for.body964 ], [ %95, %for.body964.lr.ph ]
  %110 = phi i64 [ %137, %for.body964 ], [ %93, %for.body964.lr.ph ]
  %indvars.iv3079 = phi i64 [ %indvars.iv.next3080, %for.body964 ], [ 0, %for.body964.lr.ph ]
  %x.sroa.20.03020 = phi double [ %135, %for.body964 ], [ %89, %for.body964.lr.ph ]
  %x.sroa.10.03019 = phi double [ %116, %for.body964 ], [ %88, %for.body964.lr.ph ]
  %y.sroa.12.03018 = phi double [ %136, %for.body964 ], [ %91, %for.body964.lr.ph ]
  %y.sroa.6.03017 = phi double [ %131, %for.body964 ], [ %90, %for.body964.lr.ph ]
  %indvars.iv.next3080 = add nuw nsw i64 %indvars.iv3079, 1
  %arrayidx973 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv3079, i64 4
  %111 = load double, double* %arrayidx973, align 8, !tbaa !7
  %div = fdiv double 1.000000e+00, %x.sroa.10.03019
  %mul983 = fmul double %div, %x.sroa.20.03020
  %arrayidx987 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv3079, i64 3
  store double %mul983, double* %arrayidx987, align 8, !tbaa !7
  %mul989 = fmul double %div, %111
  store double %mul989, double* %arrayidx973, align 8, !tbaa !7
  %112 = bitcast i64 %110 to double
  %mul1000 = fmul double %div, %112
  %arrayidx1010 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %indvars.iv3079, i64 %idxprom65, i64 %idxprom67, i64 0
  store double %mul1000, double* %arrayidx1010, align 8, !tbaa !7
  %113 = bitcast i64 %109 to double
  %mul1000.1 = fmul double %div, %113
  %arrayidx1010.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %indvars.iv3079, i64 %idxprom65, i64 %idxprom67, i64 1
  store double %mul1000.1, double* %arrayidx1010.1, align 8, !tbaa !7
  %114 = bitcast i64 %108 to double
  %mul1000.2 = fmul double %div, %114
  %arrayidx1010.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %indvars.iv3079, i64 %idxprom65, i64 %idxprom67, i64 2
  store double %mul1000.2, double* %arrayidx1010.2, align 8, !tbaa !7
  %arrayidx1020 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next3080, i64 3
  %115 = load double, double* %arrayidx1020, align 8, !tbaa !7
  %neg1032 = fsub double -0.000000e+00, %y.sroa.6.03017
  %116 = tail call double @llvm.fmuladd.f64(double %neg1032, double %mul983, double %y.sroa.12.03018)
  %arrayidx1036 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv.next3080, i64 2
  store double %116, double* %arrayidx1036, align 8, !tbaa !7
  %117 = bitcast i64 %107 to double
  %118 = tail call double @llvm.fmuladd.f64(double %neg1032, double %mul1000, double %117)
  %119 = bitcast i64 %106 to double
  %120 = tail call double @llvm.fmuladd.f64(double %neg1032, double %mul1000.1, double %119)
  %121 = bitcast i64 %105 to double
  %122 = tail call double @llvm.fmuladd.f64(double %neg1032, double %mul1000.2, double %121)
  %123 = add nuw nsw i64 %indvars.iv3079, 2
  %arrayidx1061 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %123, i64 0
  %124 = load double, double* %arrayidx1061, align 8, !tbaa !7
  %arrayidx1065 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %123, i64 1
  %125 = load double, double* %arrayidx1065, align 8, !tbaa !7
  %arrayidx1069 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %123, i64 2
  %126 = load double, double* %arrayidx1069, align 8, !tbaa !7
  %127 = getelementptr [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %123, i64 %idxprom65, i64 %idxprom67, i64 0
  %128 = load double, double* %127, align 8, !tbaa !7
  %arrayidx1085 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %123, i64 %idxprom65, i64 %idxprom67, i64 1
  %129 = load double, double* %arrayidx1085, align 8, !tbaa !7
  %arrayidx1093 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %123, i64 %idxprom65, i64 %idxprom67, i64 2
  %130 = load double, double* %arrayidx1093, align 8, !tbaa !7
  %neg1099 = fsub double -0.000000e+00, %124
  %131 = tail call double @llvm.fmuladd.f64(double %neg1099, double %mul983, double %125)
  store double %131, double* %arrayidx1065, align 8, !tbaa !7
  %132 = tail call double @llvm.fmuladd.f64(double %neg1099, double %mul1000, double %128)
  %133 = tail call double @llvm.fmuladd.f64(double %neg1099, double %mul1000.1, double %129)
  %134 = tail call double @llvm.fmuladd.f64(double %neg1099, double %mul1000.2, double %130)
  %135 = tail call double @llvm.fmuladd.f64(double %neg1032, double %mul989, double %115)
  %136 = tail call double @llvm.fmuladd.f64(double %neg1099, double %mul989, double %126)
  %exitcond3083 = icmp eq i64 %indvars.iv.next3080, %wide.trip.count3082
  %137 = bitcast double %118 to i64
  %138 = bitcast double %120 to i64
  %139 = bitcast double %122 to i64
  %140 = bitcast double %132 to i64
  %141 = bitcast double %133 to i64
  %142 = bitcast double %134 to i64
  br i1 %exitcond3083, label %for.end1128, label %for.body964

for.end1128:                                      ; preds = %for.body964, %for.end617
  %143 = phi i64 [ %104, %for.end617 ], [ %142, %for.body964 ]
  %144 = phi i64 [ %102, %for.end617 ], [ %141, %for.body964 ]
  %145 = phi i64 [ %100, %for.end617 ], [ %140, %for.body964 ]
  %146 = phi i64 [ %97, %for.end617 ], [ %139, %for.body964 ]
  %147 = phi i64 [ %95, %for.end617 ], [ %138, %for.body964 ]
  %148 = phi i64 [ %93, %for.end617 ], [ %137, %for.body964 ]
  %y.sroa.6.0.lcssa = phi double [ %90, %for.end617 ], [ %131, %for.body964 ]
  %y.sroa.12.0.lcssa = phi double [ %91, %for.end617 ], [ %136, %for.body964 ]
  %x.sroa.10.0.lcssa = phi double [ %88, %for.end617 ], [ %116, %for.body964 ]
  %x.sroa.20.0.lcssa = phi double [ %89, %for.end617 ], [ %135, %for.body964 ]
  %idxprom1135 = sext i32 %.pre3098 to i64
  %arrayidx1137 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom1135, i64 4
  %149 = load double, double* %arrayidx1137, align 8, !tbaa !7
  %div1146 = fdiv double 1.000000e+00, %x.sroa.10.0.lcssa
  %mul1148 = fmul double %div1146, %x.sroa.20.0.lcssa
  %arrayidx1152 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom1135, i64 3
  store double %mul1148, double* %arrayidx1152, align 8, !tbaa !7
  %mul1154 = fmul double %div1146, %149
  store double %mul1154, double* %arrayidx1137, align 8, !tbaa !7
  %150 = bitcast i64 %148 to double
  %mul1165 = fmul double %div1146, %150
  %arrayidx1175 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom1135, i64 %idxprom65, i64 %idxprom67, i64 0
  store double %mul1165, double* %arrayidx1175, align 8, !tbaa !7
  %151 = bitcast i64 %147 to double
  %mul1165.1 = fmul double %div1146, %151
  %arrayidx1175.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom1135, i64 %idxprom65, i64 %idxprom67, i64 1
  store double %mul1165.1, double* %arrayidx1175.1, align 8, !tbaa !7
  %152 = bitcast i64 %146 to double
  %mul1165.2 = fmul double %div1146, %152
  %arrayidx1175.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom1135, i64 %idxprom65, i64 %idxprom67, i64 2
  store double %mul1165.2, double* %arrayidx1175.2, align 8, !tbaa !7
  %sub1130 = add nsw i32 %m, -1
  %idxprom1183 = sext i32 %sub1130 to i64
  %arrayidx1185 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom1183, i64 3
  %153 = load double, double* %arrayidx1185, align 8, !tbaa !7
  %neg1197 = fsub double -0.000000e+00, %y.sroa.6.0.lcssa
  %154 = tail call double @llvm.fmuladd.f64(double %neg1197, double %mul1148, double %y.sroa.12.0.lcssa)
  %arrayidx1201 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %idxprom1183, i64 2
  store double %154, double* %arrayidx1201, align 8, !tbaa !7
  %155 = tail call double @llvm.fmuladd.f64(double %neg1197, double %mul1154, double %153)
  store double %155, double* %arrayidx1185, align 8, !tbaa !7
  %156 = bitcast i64 %145 to double
  %157 = tail call double @llvm.fmuladd.f64(double %neg1197, double %mul1165, double %156)
  %158 = bitcast i64 %144 to double
  %159 = tail call double @llvm.fmuladd.f64(double %neg1197, double %mul1165.1, double %158)
  %160 = bitcast i64 %143 to double
  %161 = tail call double @llvm.fmuladd.f64(double %neg1197, double %mul1165.2, double %160)
  %div1227 = fdiv double 1.000000e+00, %154
  %mul1234 = fmul double %div1227, %157
  %arrayidx1242 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom1183, i64 %idxprom65, i64 %idxprom67, i64 0
  store double %mul1234, double* %arrayidx1242, align 8, !tbaa !7
  %mul1234.1 = fmul double %div1227, %159
  %arrayidx1242.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom1183, i64 %idxprom65, i64 %idxprom67, i64 1
  store double %mul1234.1, double* %arrayidx1242.1, align 8, !tbaa !7
  %mul1234.2 = fmul double %div1227, %161
  %arrayidx1242.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom1183, i64 %idxprom65, i64 %idxprom67, i64 2
  store double %mul1234.2, double* %arrayidx1242.2, align 8, !tbaa !7
  %162 = load double, double* %arrayidx27.2, align 8, !tbaa !7
  %163 = load double, double* %arrayidx27.3, align 8, !tbaa !7
  %164 = load double, double* %arrayidx286, align 8, !tbaa !7
  %165 = load double, double* %arrayidx290, align 8, !tbaa !7
  %166 = load double, double* %arrayidx30.2, align 8, !tbaa !7
  %167 = load double, double* %arrayidx30.3, align 8, !tbaa !7
  %168 = load double, double* %arrayidx308, align 8, !tbaa !7
  %169 = load double, double* %arrayidx312, align 8, !tbaa !7
  %arrayidx1275 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 0, i64 %idxprom65, i64 %idxprom67, i64 3
  %170 = bitcast double* %arrayidx1275 to i64*
  %171 = load i64, i64* %170, align 8, !tbaa !7
  %arrayidx1282 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 0, i64 %idxprom65, i64 %idxprom67, i64 4
  %172 = bitcast double* %arrayidx1282 to i64*
  %173 = load i64, i64* %172, align 8, !tbaa !7
  %arrayidx1289 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %98, i64 0, i64 %idxprom65, i64 %idxprom67, i64 3
  %174 = bitcast double* %arrayidx1289 to i64*
  %175 = load i64, i64* %174, align 8, !tbaa !7
  %arrayidx1296 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %98, i64 0, i64 %idxprom65, i64 %idxprom67, i64 4
  %176 = bitcast double* %arrayidx1296 to i64*
  %177 = load i64, i64* %176, align 8, !tbaa !7
  br i1 %cmp9623016, label %for.end1549, label %for.body1302.lr.ph

for.body1302.lr.ph:                               ; preds = %for.end1128
  %wide.trip.count = zext i32 %.pre3098 to i64
  br label %for.body1302

for.body1302:                                     ; preds = %for.body1302, %for.body1302.lr.ph
  %178 = phi i64 [ %212, %for.body1302 ], [ %177, %for.body1302.lr.ph ]
  %179 = phi i64 [ %211, %for.body1302 ], [ %173, %for.body1302.lr.ph ]
  %180 = phi i64 [ %210, %for.body1302 ], [ %175, %for.body1302.lr.ph ]
  %181 = phi i64 [ %209, %for.body1302 ], [ %171, %for.body1302.lr.ph ]
  %indvars.iv3058 = phi i64 [ %indvars.iv.next3059, %for.body1302 ], [ 0, %for.body1302.lr.ph ]
  %ae.sroa.6.03001 = phi double [ %206, %for.body1302 ], [ %168, %for.body1302.lr.ph ]
  %ae.sroa.12.03000 = phi double [ %207, %for.body1302 ], [ %169, %for.body1302.lr.ph ]
  %ad.sroa.10.02999 = phi double [ %199, %for.body1302 ], [ %166, %for.body1302.lr.ph ]
  %ad.sroa.20.02998 = phi double [ %200, %for.body1302 ], [ %167, %for.body1302.lr.ph ]
  %ab.sroa.6.02997 = phi double [ %193, %for.body1302 ], [ %164, %for.body1302.lr.ph ]
  %ab.sroa.12.02996 = phi double [ %194, %for.body1302 ], [ %165, %for.body1302.lr.ph ]
  %aa.sroa.10.02995 = phi double [ %186, %for.body1302 ], [ %162, %for.body1302.lr.ph ]
  %aa.sroa.20.02994 = phi double [ %187, %for.body1302 ], [ %163, %for.body1302.lr.ph ]
  %indvars.iv.next3059 = add nuw nsw i64 %indvars.iv3058, 1
  %182 = add nuw nsw i64 %indvars.iv3058, 2
  %arrayidx1311 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv3058, i64 4
  %183 = load double, double* %arrayidx1311, align 8, !tbaa !7
  %div1318 = fdiv double 1.000000e+00, %aa.sroa.10.02995
  %mul1320 = fmul double %aa.sroa.20.02994, %div1318
  %arrayidx1324 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv3058, i64 3
  store double %mul1320, double* %arrayidx1324, align 8, !tbaa !7
  %mul1326 = fmul double %div1318, %183
  store double %mul1326, double* %arrayidx1311, align 8, !tbaa !7
  %184 = bitcast i64 %181 to double
  %mul1333 = fmul double %div1318, %184
  %arrayidx1343 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %indvars.iv3058, i64 %idxprom65, i64 %idxprom67, i64 3
  store double %mul1333, double* %arrayidx1343, align 8, !tbaa !7
  %arrayidx1350 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv.next3059, i64 3
  %185 = load double, double* %arrayidx1350, align 8, !tbaa !7
  %neg1360 = fsub double -0.000000e+00, %ab.sroa.6.02997
  %186 = tail call double @llvm.fmuladd.f64(double %neg1360, double %mul1320, double %ab.sroa.12.02996)
  %arrayidx1364 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv.next3059, i64 2
  store double %186, double* %arrayidx1364, align 8, !tbaa !7
  %187 = tail call double @llvm.fmuladd.f64(double %neg1360, double %mul1326, double %185)
  %.cast = bitcast i64 %180 to double
  %188 = tail call double @llvm.fmuladd.f64(double %neg1360, double %mul1333, double %.cast)
  %arrayidx1382 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %182, i64 0
  %189 = load double, double* %arrayidx1382, align 8, !tbaa !7
  %arrayidx1386 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %182, i64 1
  %190 = load double, double* %arrayidx1386, align 8, !tbaa !7
  %arrayidx1390 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %182, i64 2
  %191 = load double, double* %arrayidx1390, align 8, !tbaa !7
  %arrayidx1399 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %182, i64 %idxprom65, i64 %idxprom67, i64 3
  %192 = load double, double* %arrayidx1399, align 8, !tbaa !7
  %neg1406 = fsub double -0.000000e+00, %189
  %193 = tail call double @llvm.fmuladd.f64(double %neg1406, double %mul1320, double %190)
  store double %193, double* %arrayidx1386, align 8, !tbaa !7
  %194 = tail call double @llvm.fmuladd.f64(double %neg1406, double %mul1326, double %191)
  %195 = tail call double @llvm.fmuladd.f64(double %neg1406, double %mul1333, double %192)
  %arrayidx1432 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv3058, i64 4
  %196 = load double, double* %arrayidx1432, align 8, !tbaa !7
  %div1439 = fdiv double 1.000000e+00, %ad.sroa.10.02999
  %mul1441 = fmul double %ad.sroa.20.02998, %div1439
  %arrayidx1445 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv3058, i64 3
  store double %mul1441, double* %arrayidx1445, align 8, !tbaa !7
  %mul1447 = fmul double %div1439, %196
  store double %mul1447, double* %arrayidx1432, align 8, !tbaa !7
  %197 = bitcast i64 %179 to double
  %mul1454 = fmul double %div1439, %197
  %arrayidx1464 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %indvars.iv3058, i64 %idxprom65, i64 %idxprom67, i64 4
  store double %mul1454, double* %arrayidx1464, align 8, !tbaa !7
  %arrayidx1471 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv.next3059, i64 3
  %198 = load double, double* %arrayidx1471, align 8, !tbaa !7
  %neg1481 = fsub double -0.000000e+00, %ae.sroa.6.03001
  %199 = tail call double @llvm.fmuladd.f64(double %neg1481, double %mul1441, double %ae.sroa.12.03000)
  %arrayidx1485 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv.next3059, i64 2
  store double %199, double* %arrayidx1485, align 8, !tbaa !7
  %200 = tail call double @llvm.fmuladd.f64(double %neg1481, double %mul1447, double %198)
  %.cast2986 = bitcast i64 %178 to double
  %201 = tail call double @llvm.fmuladd.f64(double %neg1481, double %mul1454, double %.cast2986)
  %arrayidx1503 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %182, i64 0
  %202 = load double, double* %arrayidx1503, align 8, !tbaa !7
  %arrayidx1507 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %182, i64 1
  %203 = load double, double* %arrayidx1507, align 8, !tbaa !7
  %arrayidx1511 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %182, i64 2
  %204 = load double, double* %arrayidx1511, align 8, !tbaa !7
  %arrayidx1520 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %182, i64 %idxprom65, i64 %idxprom67, i64 4
  %205 = load double, double* %arrayidx1520, align 8, !tbaa !7
  %neg1527 = fsub double -0.000000e+00, %202
  %206 = tail call double @llvm.fmuladd.f64(double %neg1527, double %mul1441, double %203)
  store double %206, double* %arrayidx1507, align 8, !tbaa !7
  %207 = tail call double @llvm.fmuladd.f64(double %neg1527, double %mul1447, double %204)
  %208 = tail call double @llvm.fmuladd.f64(double %neg1527, double %mul1454, double %205)
  %exitcond = icmp eq i64 %indvars.iv.next3059, %wide.trip.count
  %209 = bitcast double %188 to i64
  %210 = bitcast double %195 to i64
  %211 = bitcast double %201 to i64
  %212 = bitcast double %208 to i64
  br i1 %exitcond, label %for.end1549, label %for.body1302

for.end1549:                                      ; preds = %for.body1302, %for.end1128
  %213 = phi i64 [ %177, %for.end1128 ], [ %212, %for.body1302 ]
  %214 = phi i64 [ %173, %for.end1128 ], [ %211, %for.body1302 ]
  %215 = phi i64 [ %175, %for.end1128 ], [ %210, %for.body1302 ]
  %216 = phi i64 [ %171, %for.end1128 ], [ %209, %for.body1302 ]
  %aa.sroa.20.0.lcssa = phi double [ %163, %for.end1128 ], [ %187, %for.body1302 ]
  %aa.sroa.10.0.lcssa = phi double [ %162, %for.end1128 ], [ %186, %for.body1302 ]
  %ab.sroa.12.0.lcssa = phi double [ %165, %for.end1128 ], [ %194, %for.body1302 ]
  %ab.sroa.6.0.lcssa = phi double [ %164, %for.end1128 ], [ %193, %for.body1302 ]
  %ad.sroa.20.0.lcssa = phi double [ %167, %for.end1128 ], [ %200, %for.body1302 ]
  %ad.sroa.10.0.lcssa = phi double [ %166, %for.end1128 ], [ %199, %for.body1302 ]
  %ae.sroa.12.0.lcssa = phi double [ %169, %for.end1128 ], [ %207, %for.body1302 ]
  %ae.sroa.6.0.lcssa = phi double [ %168, %for.end1128 ], [ %206, %for.body1302 ]
  %arrayidx1558 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom1135, i64 4
  %217 = load double, double* %arrayidx1558, align 8, !tbaa !7
  %div1565 = fdiv double 1.000000e+00, %aa.sroa.10.0.lcssa
  %mul1567 = fmul double %aa.sroa.20.0.lcssa, %div1565
  %arrayidx1571 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom1135, i64 3
  store double %mul1567, double* %arrayidx1571, align 8, !tbaa !7
  %mul1573 = fmul double %div1565, %217
  store double %mul1573, double* %arrayidx1558, align 8, !tbaa !7
  %218 = bitcast i64 %216 to double
  %mul1580 = fmul double %div1565, %218
  %arrayidx1590 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom1135, i64 %idxprom65, i64 %idxprom67, i64 3
  store double %mul1580, double* %arrayidx1590, align 8, !tbaa !7
  %arrayidx1597 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom1183, i64 3
  %219 = load double, double* %arrayidx1597, align 8, !tbaa !7
  %neg1607 = fsub double -0.000000e+00, %ab.sroa.6.0.lcssa
  %220 = tail call double @llvm.fmuladd.f64(double %neg1607, double %mul1567, double %ab.sroa.12.0.lcssa)
  %arrayidx1611 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %idxprom1183, i64 2
  store double %220, double* %arrayidx1611, align 8, !tbaa !7
  %221 = tail call double @llvm.fmuladd.f64(double %neg1607, double %mul1573, double %219)
  store double %221, double* %arrayidx1597, align 8, !tbaa !7
  %222 = bitcast i64 %215 to double
  %223 = tail call double @llvm.fmuladd.f64(double %neg1607, double %mul1580, double %222)
  %arrayidx1636 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom1135, i64 4
  %224 = load double, double* %arrayidx1636, align 8, !tbaa !7
  %div1643 = fdiv double 1.000000e+00, %ad.sroa.10.0.lcssa
  %mul1645 = fmul double %ad.sroa.20.0.lcssa, %div1643
  %arrayidx1649 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom1135, i64 3
  store double %mul1645, double* %arrayidx1649, align 8, !tbaa !7
  %mul1651 = fmul double %div1643, %224
  store double %mul1651, double* %arrayidx1636, align 8, !tbaa !7
  %225 = bitcast i64 %214 to double
  %mul1658 = fmul double %div1643, %225
  %arrayidx1668 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom1135, i64 %idxprom65, i64 %idxprom67, i64 4
  store double %mul1658, double* %arrayidx1668, align 8, !tbaa !7
  %arrayidx1675 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom1183, i64 3
  %226 = load double, double* %arrayidx1675, align 8, !tbaa !7
  %neg1685 = fsub double -0.000000e+00, %ae.sroa.6.0.lcssa
  %227 = tail call double @llvm.fmuladd.f64(double %neg1685, double %mul1645, double %ae.sroa.12.0.lcssa)
  %arrayidx1689 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %idxprom1183, i64 2
  store double %227, double* %arrayidx1689, align 8, !tbaa !7
  %228 = tail call double @llvm.fmuladd.f64(double %neg1685, double %mul1651, double %226)
  store double %228, double* %arrayidx1675, align 8, !tbaa !7
  %229 = bitcast i64 %213 to double
  %230 = tail call double @llvm.fmuladd.f64(double %neg1685, double %mul1658, double %229)
  %div1710 = fdiv double %223, %220
  %arrayidx1717 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom1183, i64 %idxprom65, i64 %idxprom67, i64 3
  store double %div1710, double* %arrayidx1717, align 8, !tbaa !7
  %div1720 = fdiv double %230, %227
  %arrayidx1727 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom1183, i64 %idxprom65, i64 %idxprom67, i64 4
  store double %div1720, double* %arrayidx1727, align 8, !tbaa !7
  %231 = load double, double* %arrayidx1152, align 8, !tbaa !7
  %neg1760 = fsub double -0.000000e+00, %231
  %232 = load double, double* %arrayidx1242, align 8, !tbaa !7
  %233 = load double, double* %arrayidx1175, align 8, !tbaa !7
  %234 = tail call double @llvm.fmuladd.f64(double %neg1760, double %232, double %233)
  store double %234, double* %arrayidx1175, align 8, !tbaa !7
  %235 = load double, double* %arrayidx1242.1, align 8, !tbaa !7
  %236 = load double, double* %arrayidx1175.1, align 8, !tbaa !7
  %237 = tail call double @llvm.fmuladd.f64(double %neg1760, double %235, double %236)
  store double %237, double* %arrayidx1175.1, align 8, !tbaa !7
  %238 = load double, double* %arrayidx1242.2, align 8, !tbaa !7
  %239 = load double, double* %arrayidx1175.2, align 8, !tbaa !7
  %240 = tail call double @llvm.fmuladd.f64(double %neg1760, double %238, double %239)
  store double %240, double* %arrayidx1175.2, align 8, !tbaa !7
  %241 = load double, double* %arrayidx1590, align 8, !tbaa !7
  %242 = load double, double* %arrayidx1571, align 8, !tbaa !7
  %neg1794 = fsub double -0.000000e+00, %242
  %243 = tail call double @llvm.fmuladd.f64(double %neg1794, double %div1710, double %241)
  store double %243, double* %arrayidx1590, align 8, !tbaa !7
  %244 = load double, double* %arrayidx1668, align 8, !tbaa !7
  %245 = load double, double* %arrayidx1649, align 8, !tbaa !7
  %neg1823 = fsub double -0.000000e+00, %245
  %246 = tail call double @llvm.fmuladd.f64(double %neg1823, double %div1720, double %244)
  store double %246, double* %arrayidx1668, align 8, !tbaa !7
  %cmp18342990 = icmp sgt i32 %sub961, -1
  br i1 %cmp18342990, label %for.body1836.preheader, label %cleanup

for.body1836.preheader:                           ; preds = %for.end1549
  %247 = zext i32 %sub961 to i64
  br label %for.body1836

for.body1836:                                     ; preds = %for.body1836.preheader, %for.body1836
  %248 = phi double [ %246, %for.body1836.preheader ], [ %273, %for.body1836 ]
  %.in = phi double [ %div1720, %for.body1836.preheader ], [ %248, %for.body1836 ]
  %249 = phi double [ %243, %for.body1836.preheader ], [ %268, %for.body1836 ]
  %.in3100 = phi double [ %div1710, %for.body1836.preheader ], [ %249, %for.body1836 ]
  %250 = phi double [ %240, %for.body1836.preheader ], [ %263, %for.body1836 ]
  %.in3101 = phi double [ %238, %for.body1836.preheader ], [ %250, %for.body1836 ]
  %251 = phi double [ %237, %for.body1836.preheader ], [ %260, %for.body1836 ]
  %.in3102 = phi double [ %235, %for.body1836.preheader ], [ %251, %for.body1836 ]
  %252 = phi double [ %234, %for.body1836.preheader ], [ %257, %for.body1836 ]
  %.in3103 = phi double [ %232, %for.body1836.preheader ], [ %252, %for.body1836 ]
  %indvars.iv = phi i64 [ %247, %for.body1836.preheader ], [ %indvars.iv.next, %for.body1836 ]
  %arrayidx1841 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv, i64 3
  %253 = load double, double* %arrayidx1841, align 8, !tbaa !7
  %arrayidx1845 = getelementptr inbounds [5 x double], [5 x double]* %4, i64 %indvars.iv, i64 4
  %254 = load double, double* %arrayidx1845, align 8, !tbaa !7
  %neg1871 = fsub double -0.000000e+00, %253
  %neg1876 = fsub double -0.000000e+00, %254
  %arrayidx1866 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %indvars.iv, i64 %idxprom65, i64 %idxprom67, i64 0
  %255 = load double, double* %arrayidx1866, align 8, !tbaa !7
  %256 = tail call double @llvm.fmuladd.f64(double %neg1871, double %252, double %255)
  %257 = tail call double @llvm.fmuladd.f64(double %neg1876, double %.in3103, double %256)
  store double %257, double* %arrayidx1866, align 8, !tbaa !7
  %arrayidx1866.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %indvars.iv, i64 %idxprom65, i64 %idxprom67, i64 1
  %258 = load double, double* %arrayidx1866.1, align 8, !tbaa !7
  %259 = tail call double @llvm.fmuladd.f64(double %neg1871, double %251, double %258)
  %260 = tail call double @llvm.fmuladd.f64(double %neg1876, double %.in3102, double %259)
  store double %260, double* %arrayidx1866.1, align 8, !tbaa !7
  %arrayidx1866.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %indvars.iv, i64 %idxprom65, i64 %idxprom67, i64 2
  %261 = load double, double* %arrayidx1866.2, align 8, !tbaa !7
  %262 = tail call double @llvm.fmuladd.f64(double %neg1871, double %250, double %261)
  %263 = tail call double @llvm.fmuladd.f64(double %neg1876, double %.in3101, double %262)
  store double %263, double* %arrayidx1866.2, align 8, !tbaa !7
  %arrayidx1900 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %indvars.iv, i64 %idxprom65, i64 %idxprom67, i64 3
  %264 = load double, double* %arrayidx1900, align 8, !tbaa !7
  %arrayidx1903 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv, i64 3
  %265 = load double, double* %arrayidx1903, align 8, !tbaa !7
  %neg1906 = fsub double -0.000000e+00, %265
  %266 = tail call double @llvm.fmuladd.f64(double %neg1906, double %249, double %264)
  %arrayidx1909 = getelementptr inbounds [5 x double], [5 x double]* %5, i64 %indvars.iv, i64 4
  %267 = load double, double* %arrayidx1909, align 8, !tbaa !7
  %neg1912 = fsub double -0.000000e+00, %267
  %268 = tail call double @llvm.fmuladd.f64(double %neg1912, double %.in3100, double %266)
  store double %268, double* %arrayidx1900, align 8, !tbaa !7
  %arrayidx1931 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %indvars.iv, i64 %idxprom65, i64 %idxprom67, i64 4
  %269 = load double, double* %arrayidx1931, align 8, !tbaa !7
  %arrayidx1934 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv, i64 3
  %270 = load double, double* %arrayidx1934, align 8, !tbaa !7
  %neg1937 = fsub double -0.000000e+00, %270
  %271 = tail call double @llvm.fmuladd.f64(double %neg1937, double %248, double %269)
  %arrayidx1940 = getelementptr inbounds [5 x double], [5 x double]* %6, i64 %indvars.iv, i64 4
  %272 = load double, double* %arrayidx1940, align 8, !tbaa !7
  %neg1943 = fsub double -0.000000e+00, %272
  %273 = tail call double @llvm.fmuladd.f64(double %neg1943, double %.in, double %271)
  store double %273, double* %arrayidx1931, align 8, !tbaa !7
  %cmp1834 = icmp sgt i64 %indvars.iv, 0
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  br i1 %cmp1834, label %for.body1836, label %cleanup

cleanup:                                          ; preds = %for.body1836, %for.end1549, %entry
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
