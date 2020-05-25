; ModuleID = 'src/112.src'
source_filename = "src/112.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture readonly %b, double* nocapture readonly %c, double* nocapture readonly %d, double* %e, double* %f, i32 %g, i32 %h, i32 %i) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #3
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %sub = add nsw i32 %i, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv5 = trunc i64 %call4 to i32
  %sub7 = add nsw i32 %g, -2
  %cmp8 = icmp sle i32 %conv3, %sub7
  %cmp11 = icmp slt i32 %conv5, %h
  %or.cond = and i1 %cmp8, %cmp11
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = bitcast double* %a to [13 x [13 x double]]*
  %3 = bitcast double* %b to [13 x [13 x double]]*
  %4 = bitcast double* %c to [13 x [13 x double]]*
  %5 = bitcast double* %d to [13 x [13 x [5 x double]]]*
  %mul = mul nsw i32 %sub7, %0
  %add16 = add nsw i32 %mul, %1
  %mul19 = mul i32 %add16, 325
  %idxprom = sext i32 %mul19 to i64
  %arrayidx = getelementptr inbounds double, double* %e, i64 %idxprom
  %6 = bitcast double* %arrayidx to [5 x [5 x double]]*
  %arrayidx21 = getelementptr inbounds double, double* %f, i64 %idxprom
  %7 = bitcast double* %arrayidx21 to [5 x [5 x double]]*
  %idxprom22 = sext i32 %conv to i64
  %sext = shl i64 %call4, 32
  %idxprom24 = ashr exact i64 %sext, 32
  %idxprom26 = sext i32 %conv3 to i64
  %arrayidx27 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26
  %8 = load double, double* %arrayidx27, align 8, !tbaa !7
  %mul28 = fmul double %8, %8
  %mul29 = fmul double %8, %mul28
  %arrayidx44 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 1
  %9 = load double, double* %arrayidx44, align 8, !tbaa !7
  %arrayidx52 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 2
  %10 = load double, double* %arrayidx52, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 3
  %11 = load double, double* %arrayidx60, align 8, !tbaa !7
  %arrayidx68 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26, i64 4
  %12 = load double, double* %arrayidx68, align 8, !tbaa !7
  %arrayidx73 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 0, i64 0
  store double 0.000000e+00, double* %arrayidx73, align 8, !tbaa !7
  %arrayidx77 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 1, i64 0
  store double 0.000000e+00, double* %arrayidx77, align 8, !tbaa !7
  %arrayidx81 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 2, i64 0
  store double 1.000000e+00, double* %arrayidx81, align 8, !tbaa !7
  %arrayidx85 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 3, i64 0
  store double 0.000000e+00, double* %arrayidx85, align 8, !tbaa !7
  %arrayidx89 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx89, align 8, !tbaa !7
  %13 = fneg double %9
  %fneg = fmul double %10, %13
  %mul93 = fmul double %mul28, %fneg
  %arrayidx97 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 0, i64 1
  store double %mul93, double* %arrayidx97, align 8, !tbaa !7
  %mul99 = fmul double %8, %10
  %arrayidx103 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 1, i64 1
  store double %mul99, double* %arrayidx103, align 8, !tbaa !7
  %mul105 = fmul double %8, %9
  %arrayidx109 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 2, i64 1
  store double %mul105, double* %arrayidx109, align 8, !tbaa !7
  %arrayidx113 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 3, i64 1
  store double 0.000000e+00, double* %arrayidx113, align 8, !tbaa !7
  %arrayidx117 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 4, i64 1
  store double 0.000000e+00, double* %arrayidx117, align 8, !tbaa !7
  %mul120 = fmul double %10, %10
  %14 = fneg double %mul120
  %fneg122 = fmul double %mul28, %14
  %arrayidx128 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26
  %15 = load double, double* %arrayidx128, align 8, !tbaa !7
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 4.000000e-01, double %fneg122)
  %arrayidx133 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 0, i64 2
  store double %16, double* %arrayidx133, align 8, !tbaa !7
  %mul135 = fmul double %9, -4.000000e-01
  %mul136 = fmul double %8, %mul135
  %arrayidx140 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 1, i64 2
  store double %mul136, double* %arrayidx140, align 8, !tbaa !7
  %mul142 = fmul double %10, 1.600000e+00
  %mul143 = fmul double %8, %mul142
  %arrayidx147 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 2, i64 2
  store double %mul143, double* %arrayidx147, align 8, !tbaa !7
  %mul149 = fmul double %11, -4.000000e-01
  %mul150 = fmul double %8, %mul149
  %arrayidx154 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 3, i64 2
  store double %mul150, double* %arrayidx154, align 8, !tbaa !7
  %arrayidx158 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 4, i64 2
  store double 4.000000e-01, double* %arrayidx158, align 8, !tbaa !7
  %mul161 = fmul double %10, %11
  %fneg162 = fneg double %mul161
  %mul163 = fmul double %mul28, %fneg162
  %arrayidx167 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 0, i64 3
  store double %mul163, double* %arrayidx167, align 8, !tbaa !7
  %arrayidx171 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 1, i64 3
  store double 0.000000e+00, double* %arrayidx171, align 8, !tbaa !7
  %mul173 = fmul double %8, %11
  %arrayidx177 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 2, i64 3
  store double %mul173, double* %arrayidx177, align 8, !tbaa !7
  %arrayidx183 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 3, i64 3
  store double %mul99, double* %arrayidx183, align 8, !tbaa !7
  %arrayidx187 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 4, i64 3
  store double 0.000000e+00, double* %arrayidx187, align 8, !tbaa !7
  %arrayidx193 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %4, i64 %idxprom22, i64 %idxprom24, i64 %idxprom26
  %17 = load double, double* %arrayidx193, align 8, !tbaa !7
  %mul196 = fmul double %12, 1.400000e+00
  %neg = fsub double -0.000000e+00, %mul196
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 8.000000e-01, double %neg)
  %mul198 = fmul double %10, %18
  %mul199 = fmul double %mul28, %mul198
  %arrayidx203 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 0, i64 4
  store double %mul199, double* %arrayidx203, align 8, !tbaa !7
  %mul207 = fmul double %mul135, %10
  %mul208 = fmul double %mul28, %mul207
  %arrayidx212 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 1, i64 4
  store double %mul208, double* %arrayidx212, align 8, !tbaa !7
  %19 = load double, double* %arrayidx128, align 8, !tbaa !7
  %20 = tail call double @llvm.fmuladd.f64(double %mul120, double %mul28, double %19)
  %neg227 = fmul double %20, -4.000000e-01
  %21 = tail call double @llvm.fmuladd.f64(double %mul196, double %8, double %neg227)
  %arrayidx231 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 2, i64 4
  store double %21, double* %arrayidx231, align 8, !tbaa !7
  %mul235 = fmul double %mul161, -4.000000e-01
  %mul236 = fmul double %mul28, %mul235
  %arrayidx240 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 3, i64 4
  store double %mul236, double* %arrayidx240, align 8, !tbaa !7
  %mul242 = fmul double %10, 1.400000e+00
  %mul243 = fmul double %8, %mul242
  %arrayidx247 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %6, i64 %idxprom24, i64 4, i64 4
  store double %mul243, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx251 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 0, i64 0
  store double 0.000000e+00, double* %arrayidx251, align 8, !tbaa !7
  %arrayidx255 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 1, i64 0
  store double 0.000000e+00, double* %arrayidx255, align 8, !tbaa !7
  %arrayidx259 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 2, i64 0
  store double 0.000000e+00, double* %arrayidx259, align 8, !tbaa !7
  %arrayidx263 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 3, i64 0
  store double 0.000000e+00, double* %arrayidx263, align 8, !tbaa !7
  %arrayidx267 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 4, i64 0
  store double 0.000000e+00, double* %arrayidx267, align 8, !tbaa !7
  %mul268 = fmul double %mul28, -1.000000e-01
  %mul270 = fmul double %9, %mul268
  %arrayidx274 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 0, i64 1
  store double %mul270, double* %arrayidx274, align 8, !tbaa !7
  %mul275 = fmul double %8, 1.000000e-01
  %arrayidx279 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 1, i64 1
  store double %mul275, double* %arrayidx279, align 8, !tbaa !7
  %arrayidx283 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 2, i64 1
  store double 0.000000e+00, double* %arrayidx283, align 8, !tbaa !7
  %arrayidx287 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 3, i64 1
  store double 0.000000e+00, double* %arrayidx287, align 8, !tbaa !7
  %arrayidx291 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 4, i64 1
  store double 0.000000e+00, double* %arrayidx291, align 8, !tbaa !7
  %mul292 = fmul double %mul28, 0xBFC1111111111111
  %mul294 = fmul double %mul292, %10
  %arrayidx298 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 0, i64 2
  store double %mul294, double* %arrayidx298, align 8, !tbaa !7
  %arrayidx302 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 1, i64 2
  store double 0.000000e+00, double* %arrayidx302, align 8, !tbaa !7
  %mul303 = fmul double %8, 0x3FC1111111111111
  %arrayidx307 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 2, i64 2
  store double %mul303, double* %arrayidx307, align 8, !tbaa !7
  %arrayidx311 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 3, i64 2
  store double 0.000000e+00, double* %arrayidx311, align 8, !tbaa !7
  %arrayidx315 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 4, i64 2
  store double 0.000000e+00, double* %arrayidx315, align 8, !tbaa !7
  %mul318 = fmul double %mul268, %11
  %arrayidx322 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 0, i64 3
  store double %mul318, double* %arrayidx322, align 8, !tbaa !7
  %arrayidx326 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 1, i64 3
  store double 0.000000e+00, double* %arrayidx326, align 8, !tbaa !7
  %arrayidx330 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 2, i64 3
  store double 0.000000e+00, double* %arrayidx330, align 8, !tbaa !7
  %arrayidx335 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 3, i64 3
  store double %mul275, double* %arrayidx335, align 8, !tbaa !7
  %arrayidx339 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 4, i64 3
  store double 0.000000e+00, double* %arrayidx339, align 8, !tbaa !7
  %mul340 = fmul double %mul29, 0x3FB89374BC6A7EF8
  %mul343 = fmul double %9, %9
  %22 = fmul double %mul29, 0x3FB00AEC33E1F670
  %neg350 = fmul double %mul120, %22
  %23 = tail call double @llvm.fmuladd.f64(double %mul340, double %mul343, double %neg350)
  %mul354 = fmul double %11, %11
  %24 = tail call double @llvm.fmuladd.f64(double %mul340, double %mul354, double %23)
  %neg360 = fmul double %mul28, 0xBFC916872B020C49
  %25 = tail call double @llvm.fmuladd.f64(double %neg360, double %12, double %24)
  %arrayidx364 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 0, i64 4
  store double %25, double* %arrayidx364, align 8, !tbaa !7
  %mul365 = fmul double %mul28, 0xBFB89374BC6A7EF8
  %mul367 = fmul double %9, %mul365
  %arrayidx371 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 1, i64 4
  store double %mul367, double* %arrayidx371, align 8, !tbaa !7
  %mul372 = fmul double %mul28, 0xBFB00AEC33E1F670
  %mul374 = fmul double %mul372, %10
  %arrayidx378 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 2, i64 4
  store double %mul374, double* %arrayidx378, align 8, !tbaa !7
  %mul381 = fmul double %mul365, %11
  %arrayidx385 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 3, i64 4
  store double %mul381, double* %arrayidx385, align 8, !tbaa !7
  %mul386 = fmul double %8, 0x3FC916872B020C49
  %arrayidx390 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %7, i64 %idxprom24, i64 4, i64 4
  store double %mul386, double* %arrayidx390, align 8, !tbaa !7
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
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
