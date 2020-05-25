; ModuleID = 'src/352.src'
source_filename = "src/352.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture %a, double* nocapture readonly %b, double %c, i32 %d, i32 %e, i32 %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #3
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %2 = trunc i64 %call4 to i32
  %conv6 = add i32 %2, 1
  %sub = add nsw i32 %f, -1
  %cmp = icmp slt i32 %conv, %sub
  %sub8 = add nsw i32 %e, -1
  %cmp9 = icmp slt i32 %conv3, %sub8
  %or.cond = and i1 %cmp, %cmp9
  %sub12 = add nsw i32 %d, -1
  %cmp13 = icmp slt i32 %conv6, %sub12
  %or.cond64 = and i1 %or.cond, %cmp13
  br i1 %or.cond64, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %3 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %4 = bitcast double* %b to [13 x [13 x [5 x double]]]*
  %idxprom = sext i32 %conv to i64
  %idxprom17 = sext i32 %conv3 to i64
  %idxprom19 = sext i32 %conv6 to i64
  %arrayidx22 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 0
  %5 = load double, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx30 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 0
  %6 = load double, double* %arrayidx30, align 8, !tbaa !7
  %7 = tail call double @llvm.fmuladd.f64(double %c, double %6, double %5)
  store double %7, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx22.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 1
  %8 = load double, double* %arrayidx22.1, align 8, !tbaa !7
  %arrayidx30.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 1
  %9 = load double, double* %arrayidx30.1, align 8, !tbaa !7
  %10 = tail call double @llvm.fmuladd.f64(double %c, double %9, double %8)
  store double %10, double* %arrayidx22.1, align 8, !tbaa !7
  %arrayidx22.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 2
  %11 = load double, double* %arrayidx22.2, align 8, !tbaa !7
  %arrayidx30.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 2
  %12 = load double, double* %arrayidx30.2, align 8, !tbaa !7
  %13 = tail call double @llvm.fmuladd.f64(double %c, double %12, double %11)
  store double %13, double* %arrayidx22.2, align 8, !tbaa !7
  %arrayidx22.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 3
  %14 = load double, double* %arrayidx22.3, align 8, !tbaa !7
  %arrayidx30.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 3
  %15 = load double, double* %arrayidx30.3, align 8, !tbaa !7
  %16 = tail call double @llvm.fmuladd.f64(double %c, double %15, double %14)
  store double %16, double* %arrayidx22.3, align 8, !tbaa !7
  %arrayidx22.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 4
  %17 = load double, double* %arrayidx22.4, align 8, !tbaa !7
  %arrayidx30.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom17, i64 %idxprom19, i64 4
  %18 = load double, double* %arrayidx30.4, align 8, !tbaa !7
  %19 = tail call double @llvm.fmuladd.f64(double %c, double %18, double %17)
  store double %19, double* %arrayidx22.4, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
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
!3 = !{i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
