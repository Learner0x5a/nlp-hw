; ModuleID = 'src/129.src'
source_filename = "src/129.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture readonly %b, double* nocapture readonly %c, double* %d, double* %e, i32 %f, i32 %g, i32 %h) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #3
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %sub = add nsw i32 %g, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv5 = trunc i64 %call4 to i32
  %sub7 = add nsw i32 %f, -2
  %cmp8 = icmp sle i32 %conv3, %sub7
  %cmp11 = icmp slt i32 %conv5, %h
  %or.cond = and i1 %cmp8, %cmp11
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = bitcast double* %a to [13 x [13 x double]]*
  %3 = bitcast double* %b to [13 x [13 x double]]*
  %4 = bitcast double* %c to [13 x [13 x [5 x double]]]*
  %mul = mul nsw i32 %sub7, %0
  %add16 = add nsw i32 %mul, %1
  %mul19 = mul i32 %add16, 325
  %idxprom = sext i32 %mul19 to i64
  %arrayidx = getelementptr inbounds double, double* %d, i64 %idxprom
  %5 = bitcast double* %arrayidx to [5 x [5 x double]]*
  %arrayidx21 = getelementptr inbounds double, double* %e, i64 %idxprom
  %6 = bitcast double* %arrayidx21 to [5 x [5 x double]]*
  %sext = shl i64 %call4, 32
  %idxprom22 = ashr exact i64 %sext, 32
  %idxprom24 = sext i32 %conv to i64
  %idxprom26 = sext i32 %conv3 to i64
  %arrayidx28 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 0
  %7 = load double, double* %arrayidx28, align 8, !tbaa !7
  %div = fdiv double 1.000000e+00, %7
  %mul29 = fmul double %div, %div
  %mul30 = fmul double %div, %mul29
  %arrayidx45 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 1
  %8 = load double, double* %arrayidx45, align 8, !tbaa !7
  %arrayidx53 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 2
  %9 = load double, double* %arrayidx53, align 8, !tbaa !7
  %arrayidx61 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 3
  %10 = load double, double* %arrayidx61, align 8, !tbaa !7
  %arrayidx69 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 4
  %11 = load double, double* %arrayidx69, align 8, !tbaa !7
  %arrayidx74 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 0, i64 0
  store double 0.000000e+00, double* %arrayidx74, align 8, !tbaa !7
  %arrayidx78 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 1, i64 0
  store double 0.000000e+00, double* %arrayidx78, align 8, !tbaa !7
  %arrayidx82 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 2, i64 0
  store double 0.000000e+00, double* %arrayidx82, align 8, !tbaa !7
  %arrayidx86 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 3, i64 0
  store double 1.000000e+00, double* %arrayidx86, align 8, !tbaa !7
  %arrayidx90 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx90, align 8, !tbaa !7
  %mul93 = fmul double %8, %10
  %fneg = fneg double %mul93
  %mul94 = fmul double %mul29, %fneg
  %arrayidx98 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 0, i64 1
  store double %mul94, double* %arrayidx98, align 8, !tbaa !7
  %mul100 = fmul double %div, %10
  %arrayidx104 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 1, i64 1
  store double %mul100, double* %arrayidx104, align 8, !tbaa !7
  %arrayidx108 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 2, i64 1
  store double 0.000000e+00, double* %arrayidx108, align 8, !tbaa !7
  %mul110 = fmul double %8, %div
  %arrayidx114 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 3, i64 1
  store double %mul110, double* %arrayidx114, align 8, !tbaa !7
  %arrayidx118 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 4, i64 1
  store double 0.000000e+00, double* %arrayidx118, align 8, !tbaa !7
  %mul121 = fmul double %9, %10
  %fneg122 = fneg double %mul121
  %mul123 = fmul double %mul29, %fneg122
  %arrayidx127 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 0, i64 2
  store double %mul123, double* %arrayidx127, align 8, !tbaa !7
  %arrayidx131 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 1, i64 2
  store double 0.000000e+00, double* %arrayidx131, align 8, !tbaa !7
  %arrayidx137 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 2, i64 2
  store double %mul100, double* %arrayidx137, align 8, !tbaa !7
  %mul139 = fmul double %div, %9
  %arrayidx143 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 3, i64 2
  store double %mul139, double* %arrayidx143, align 8, !tbaa !7
  %arrayidx147 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 4, i64 2
  store double 0.000000e+00, double* %arrayidx147, align 8, !tbaa !7
  %mul150 = fmul double %10, %10
  %12 = fneg double %mul150
  %fneg152 = fmul double %mul29, %12
  %arrayidx158 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26
  %13 = load double, double* %arrayidx158, align 8, !tbaa !7
  %14 = tail call double @llvm.fmuladd.f64(double %13, double 4.000000e-01, double %fneg152)
  %arrayidx163 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 0, i64 3
  store double %14, double* %arrayidx163, align 8, !tbaa !7
  %mul165 = fmul double %8, -4.000000e-01
  %mul166 = fmul double %div, %mul165
  %arrayidx170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 1, i64 3
  store double %mul166, double* %arrayidx170, align 8, !tbaa !7
  %mul172 = fmul double %9, -4.000000e-01
  %mul173 = fmul double %div, %mul172
  %arrayidx177 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 2, i64 3
  store double %mul173, double* %arrayidx177, align 8, !tbaa !7
  %mul179 = fmul double %10, 1.600000e+00
  %mul180 = fmul double %div, %mul179
  %arrayidx184 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 3, i64 3
  store double %mul180, double* %arrayidx184, align 8, !tbaa !7
  %arrayidx188 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 4, i64 3
  store double 4.000000e-01, double* %arrayidx188, align 8, !tbaa !7
  %arrayidx194 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26
  %15 = load double, double* %arrayidx194, align 8, !tbaa !7
  %neg = fmul double %11, -1.400000e+00
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 8.000000e-01, double %neg)
  %mul199 = fmul double %10, %16
  %mul200 = fmul double %mul29, %mul199
  %arrayidx204 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 0, i64 4
  store double %mul200, double* %arrayidx204, align 8, !tbaa !7
  %mul208 = fmul double %mul93, -4.000000e-01
  %mul209 = fmul double %mul29, %mul208
  %arrayidx213 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 1, i64 4
  store double %mul209, double* %arrayidx213, align 8, !tbaa !7
  %mul217 = fmul double %mul121, -4.000000e-01
  %mul218 = fmul double %mul29, %mul217
  %arrayidx222 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 2, i64 4
  store double %mul218, double* %arrayidx222, align 8, !tbaa !7
  %mul224 = fmul double %div, %11
  %17 = load double, double* %arrayidx158, align 8, !tbaa !7
  %18 = tail call double @llvm.fmuladd.f64(double %mul150, double %mul29, double %17)
  %neg237 = fmul double %18, -4.000000e-01
  %19 = tail call double @llvm.fmuladd.f64(double %mul224, double 1.400000e+00, double %neg237)
  %arrayidx241 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 3, i64 4
  store double %19, double* %arrayidx241, align 8, !tbaa !7
  %mul243 = fmul double %10, 1.400000e+00
  %mul244 = fmul double %div, %mul243
  %arrayidx248 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %5, i64 %idxprom22, i64 4, i64 4
  store double %mul244, double* %arrayidx248, align 8, !tbaa !7
  %arrayidx252 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 0, i64 0
  store double 0.000000e+00, double* %arrayidx252, align 8, !tbaa !7
  %arrayidx256 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 1, i64 0
  store double 0.000000e+00, double* %arrayidx256, align 8, !tbaa !7
  %arrayidx260 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 2, i64 0
  store double 0.000000e+00, double* %arrayidx260, align 8, !tbaa !7
  %arrayidx264 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 3, i64 0
  store double 0.000000e+00, double* %arrayidx264, align 8, !tbaa !7
  %arrayidx268 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx268, align 8, !tbaa !7
  %mul269 = fmul double %mul29, -1.000000e-01
  %mul271 = fmul double %8, %mul269
  %arrayidx275 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 0, i64 1
  store double %mul271, double* %arrayidx275, align 8, !tbaa !7
  %mul276 = fmul double %div, 1.000000e-01
  %arrayidx280 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 1, i64 1
  store double %mul276, double* %arrayidx280, align 8, !tbaa !7
  %arrayidx284 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 2, i64 1
  store double 0.000000e+00, double* %arrayidx284, align 8, !tbaa !7
  %arrayidx288 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 3, i64 1
  store double 0.000000e+00, double* %arrayidx288, align 8, !tbaa !7
  %arrayidx292 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 4, i64 1
  store double 0.000000e+00, double* %arrayidx292, align 8, !tbaa !7
  %mul295 = fmul double %9, %mul269
  %arrayidx299 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 0, i64 2
  store double %mul295, double* %arrayidx299, align 8, !tbaa !7
  %arrayidx303 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 1, i64 2
  store double 0.000000e+00, double* %arrayidx303, align 8, !tbaa !7
  %arrayidx308 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 2, i64 2
  store double %mul276, double* %arrayidx308, align 8, !tbaa !7
  %arrayidx312 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 3, i64 2
  store double 0.000000e+00, double* %arrayidx312, align 8, !tbaa !7
  %arrayidx316 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 4, i64 2
  store double 0.000000e+00, double* %arrayidx316, align 8, !tbaa !7
  %mul317 = fmul double %mul29, 0xBFC1111111111111
  %mul319 = fmul double %mul317, %10
  %arrayidx323 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 0, i64 3
  store double %mul319, double* %arrayidx323, align 8, !tbaa !7
  %arrayidx327 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 1, i64 3
  store double 0.000000e+00, double* %arrayidx327, align 8, !tbaa !7
  %arrayidx331 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 2, i64 3
  store double 0.000000e+00, double* %arrayidx331, align 8, !tbaa !7
  %mul332 = fmul double %div, 0x3FC1111111111111
  %arrayidx336 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 3, i64 3
  store double %mul332, double* %arrayidx336, align 8, !tbaa !7
  %arrayidx340 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 4, i64 3
  store double 0.000000e+00, double* %arrayidx340, align 8, !tbaa !7
  %mul341 = fmul double %mul30, 0x3FB89374BC6A7EF8
  %mul344 = fmul double %8, %8
  %mul349 = fmul double %9, %9
  %neg351 = fmul double %mul349, %mul341
  %20 = tail call double @llvm.fmuladd.f64(double %mul341, double %mul344, double %neg351)
  %neg357 = fmul double %mul30, 0x3FB00AEC33E1F670
  %21 = tail call double @llvm.fmuladd.f64(double %neg357, double %mul150, double %20)
  %neg361 = fmul double %mul29, 0xBFC916872B020C49
  %22 = tail call double @llvm.fmuladd.f64(double %neg361, double %11, double %21)
  %arrayidx365 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 0, i64 4
  store double %22, double* %arrayidx365, align 8, !tbaa !7
  %mul366 = fmul double %mul29, 0xBFB89374BC6A7EF8
  %mul368 = fmul double %8, %mul366
  %arrayidx372 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 1, i64 4
  store double %mul368, double* %arrayidx372, align 8, !tbaa !7
  %mul375 = fmul double %9, %mul366
  %arrayidx379 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 2, i64 4
  store double %mul375, double* %arrayidx379, align 8, !tbaa !7
  %mul380 = fmul double %mul29, 0xBFB00AEC33E1F670
  %mul382 = fmul double %mul380, %10
  %arrayidx386 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 3, i64 4
  store double %mul382, double* %arrayidx386, align 8, !tbaa !7
  %mul387 = fmul double %div, 0x3FC916872B020C49
  %arrayidx391 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom22, i64 4, i64 4
  store double %mul387, double* %arrayidx391, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

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
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
