; ModuleID = 'src/298.src'
source_filename = "src/298.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture %b, double* nocapture %c, i32 %d, i32 %e, i32 %f, i32 %g, i32 %h, i32 %i) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 1) #3
  %0 = trunc i64 %call to i32
  %conv1 = add i32 %0, %h
  %call2 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %1 = trunc i64 %call2 to i32
  %conv5 = add i32 %1, %f
  %cmp = icmp slt i32 %conv1, %i
  %cmp7 = icmp slt i32 %conv5, %g
  %or.cond = and i1 %cmp, %cmp7
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %3 = bitcast double* %b to [14 x double]*
  %4 = bitcast double* %c to [14 x double]*
  %idxprom = sext i32 %conv1 to i64
  %idxprom9 = sext i32 %conv5 to i64
  %idxprom11 = sext i32 %d to i64
  %arrayidx13 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom, i64 %idxprom9, i64 %idxprom11, i64 4
  %5 = load double, double* %arrayidx13, align 8, !tbaa !7
  %arrayidx20 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom, i64 %idxprom9, i64 %idxprom11, i64 1
  %6 = load double, double* %arrayidx20, align 8, !tbaa !7
  %arrayidx34 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom, i64 %idxprom9, i64 %idxprom11, i64 2
  %7 = load double, double* %arrayidx34, align 8, !tbaa !7
  %mul42 = fmul double %7, %7
  %8 = tail call double @llvm.fmuladd.f64(double %6, double %6, double %mul42)
  %arrayidx49 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom, i64 %idxprom9, i64 %idxprom11, i64 3
  %9 = load double, double* %arrayidx49, align 8, !tbaa !7
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %8)
  %mul = fmul double %10, 5.000000e-01
  %arrayidx63 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom, i64 %idxprom9, i64 %idxprom11, i64 0
  %11 = load double, double* %arrayidx63, align 8, !tbaa !7
  %div = fdiv double %mul, %11
  %sub = fsub double %5, %div
  %mul64 = fmul double %sub, 4.000000e-01
  %arrayidx68 = getelementptr inbounds [14 x double], [14 x double]* %3, i64 %idxprom, i64 %idxprom9
  store double %mul64, double* %arrayidx68, align 8, !tbaa !7
  %sub73 = add nsw i32 %e, -1
  %idxprom74 = sext i32 %sub73 to i64
  %arrayidx76 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom, i64 %idxprom9, i64 %idxprom74, i64 4
  %12 = load double, double* %arrayidx76, align 8, !tbaa !7
  %arrayidx84 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom, i64 %idxprom9, i64 %idxprom74, i64 1
  %13 = load double, double* %arrayidx84, align 8, !tbaa !7
  %arrayidx101 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom, i64 %idxprom9, i64 %idxprom74, i64 2
  %14 = load double, double* %arrayidx101, align 8, !tbaa !7
  %mul110 = fmul double %14, %14
  %15 = tail call double @llvm.fmuladd.f64(double %13, double %13, double %mul110)
  %arrayidx118 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom, i64 %idxprom9, i64 %idxprom74, i64 3
  %16 = load double, double* %arrayidx118, align 8, !tbaa !7
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %15)
  %mul128 = fmul double %17, 5.000000e-01
  %arrayidx136 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %2, i64 %idxprom, i64 %idxprom9, i64 %idxprom74, i64 0
  %18 = load double, double* %arrayidx136, align 8, !tbaa !7
  %div137 = fdiv double %mul128, %18
  %sub138 = fsub double %12, %div137
  %mul139 = fmul double %sub138, 4.000000e-01
  %arrayidx143 = getelementptr inbounds [14 x double], [14 x double]* %4, i64 %idxprom, i64 %idxprom9
  store double %mul139, double* %arrayidx143, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
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
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"int", !"int", !"int", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
