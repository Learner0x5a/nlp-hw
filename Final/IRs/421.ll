; ModuleID = 'src/421.src'
source_filename = "src/421.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture %b, double* nocapture %c, double* nocapture %d, double* nocapture %e, double* nocapture %f, double* nocapture %g, double* nocapture %h, i32 %i, i32 %j, i32 %k) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %call3 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv4 = trunc i64 %call3 to i32
  %cmp = icmp slt i32 %conv, %k
  %conv2 = trunc i64 %call1 to i32
  %cmp6 = icmp slt i32 %conv2, %j
  %or.cond = and i1 %cmp, %cmp6
  %cmp9 = icmp slt i32 %conv4, %i
  %or.cond194 = and i1 %or.cond, %cmp9
  br i1 %or.cond194, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %1 = bitcast double* %b to [13 x [13 x double]]*
  %2 = bitcast double* %c to [13 x [13 x double]]*
  %3 = bitcast double* %d to [13 x [13 x double]]*
  %4 = bitcast double* %e to [13 x [13 x double]]*
  %5 = bitcast double* %f to [13 x [13 x double]]*
  %6 = bitcast double* %g to [13 x [13 x double]]*
  %7 = bitcast double* %h to [13 x [13 x double]]*
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %sext192 = shl i64 %call1, 32
  %idxprom11 = ashr exact i64 %sext192, 32
  %sext193 = shl i64 %call3, 32
  %idxprom13 = ashr exact i64 %sext193, 32
  %arrayidx15 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom11, i64 %idxprom13, i64 0
  %8 = load double, double* %arrayidx15, align 8, !tbaa !7
  %arrayidx23 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom11, i64 %idxprom13, i64 1
  %9 = load double, double* %arrayidx23, align 8, !tbaa !7
  %arrayidx31 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom11, i64 %idxprom13, i64 2
  %10 = load double, double* %arrayidx31, align 8, !tbaa !7
  %arrayidx39 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom11, i64 %idxprom13, i64 3
  %11 = load double, double* %arrayidx39, align 8, !tbaa !7
  %arrayidx47 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom11, i64 %idxprom13, i64 4
  %12 = load double, double* %arrayidx47, align 8, !tbaa !7
  %div = fdiv double 1.000000e+00, %8
  %arrayidx55 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %5, i64 %idxprom, i64 %idxprom11, i64 %idxprom13
  store double %div, double* %arrayidx55, align 8, !tbaa !7
  %mul = fmul double %9, %div
  %arrayidx62 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %1, i64 %idxprom, i64 %idxprom11, i64 %idxprom13
  store double %mul, double* %arrayidx62, align 8, !tbaa !7
  %mul64 = fmul double %div, %10
  %arrayidx70 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 %idxprom, i64 %idxprom11, i64 %idxprom13
  store double %mul64, double* %arrayidx70, align 8, !tbaa !7
  %mul72 = fmul double %div, %11
  %arrayidx78 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 %idxprom, i64 %idxprom11, i64 %idxprom13
  store double %mul72, double* %arrayidx78, align 8, !tbaa !7
  %mul84 = fmul double %10, %10
  %13 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %mul84)
  %14 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %13)
  %mul88 = fmul double %14, 5.000000e-01
  %mul89 = fmul double %div, %mul88
  %arrayidx95 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom11, i64 %idxprom13
  store double %mul89, double* %arrayidx95, align 8, !tbaa !7
  %mul96 = fmul double %div, %mul89
  %arrayidx102 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %4, i64 %idxprom, i64 %idxprom11, i64 %idxprom13
  store double %mul96, double* %arrayidx102, align 8, !tbaa !7
  %mul103 = fmul double %div, 0x3FE1EB851EB851EB
  %sub = fsub double %12, %mul89
  %mul105 = fmul double %mul103, %sub
  %call106 = tail call double @_Z4sqrtd(double %mul105) #3
  %arrayidx112 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 %idxprom11, i64 %idxprom13
  store double %call106, double* %arrayidx112, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: convergent nounwind readnone
declare dso_local double @_Z4sqrtd(double) local_unnamed_addr #1

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
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!6 = !{!"const", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
