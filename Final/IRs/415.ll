; ModuleID = 'src/415.src'
source_filename = "src/415.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture %a, double* nocapture readonly %b, i32 %c, i32 %d, i32 %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #2
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %2 = trunc i64 %call4 to i32
  %conv6 = add i32 %2, 1
  %cmp = icmp sgt i32 %conv, %e
  %cmp8 = icmp sgt i32 %conv3, %d
  %or.cond = or i1 %cmp, %cmp8
  %cmp11 = icmp sgt i32 %conv6, %c
  %or.cond61 = or i1 %or.cond, %cmp11
  br i1 %or.cond61, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %4 = bitcast double* %b to [13 x [13 x [5 x double]]]*
  %idxprom = sext i32 %conv to i64
  %idxprom15 = sext i32 %conv3 to i64
  %idxprom17 = sext i32 %conv6 to i64
  %arrayidx20 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom15, i64 %idxprom17, i64 0
  %5 = load double, double* %arrayidx20, align 8, !tbaa !7
  %arrayidx28 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom15, i64 %idxprom17, i64 0
  %6 = load double, double* %arrayidx28, align 8, !tbaa !7
  %add29 = fadd double %5, %6
  store double %add29, double* %arrayidx20, align 8, !tbaa !7
  %arrayidx20.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom15, i64 %idxprom17, i64 1
  %7 = load double, double* %arrayidx20.1, align 8, !tbaa !7
  %arrayidx28.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom15, i64 %idxprom17, i64 1
  %8 = load double, double* %arrayidx28.1, align 8, !tbaa !7
  %add29.1 = fadd double %7, %8
  store double %add29.1, double* %arrayidx20.1, align 8, !tbaa !7
  %arrayidx20.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom15, i64 %idxprom17, i64 2
  %9 = load double, double* %arrayidx20.2, align 8, !tbaa !7
  %arrayidx28.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom15, i64 %idxprom17, i64 2
  %10 = load double, double* %arrayidx28.2, align 8, !tbaa !7
  %add29.2 = fadd double %9, %10
  store double %add29.2, double* %arrayidx20.2, align 8, !tbaa !7
  %arrayidx20.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom15, i64 %idxprom17, i64 3
  %11 = load double, double* %arrayidx20.3, align 8, !tbaa !7
  %arrayidx28.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom15, i64 %idxprom17, i64 3
  %12 = load double, double* %arrayidx28.3, align 8, !tbaa !7
  %add29.3 = fadd double %11, %12
  store double %add29.3, double* %arrayidx20.3, align 8, !tbaa !7
  %arrayidx20.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom15, i64 %idxprom17, i64 4
  %13 = load double, double* %arrayidx20.4, align 8, !tbaa !7
  %arrayidx28.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %4, i64 %idxprom, i64 %idxprom15, i64 %idxprom17, i64 4
  %14 = load double, double* %arrayidx28.4, align 8, !tbaa !7
  %add29.4 = fadd double %13, %14
  store double %add29.4, double* %arrayidx20.4, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
