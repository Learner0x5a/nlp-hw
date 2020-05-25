; ModuleID = 'src/24.src'
source_filename = "src/24.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture %b, i32 %c, i32 %d, i32 %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #2
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %call3 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv4 = trunc i64 %call3 to i32
  %cmp = icmp slt i32 %conv, %e
  %conv2 = trunc i64 %call1 to i32
  %cmp6 = icmp slt i32 %conv2, %d
  %or.cond = and i1 %cmp, %cmp6
  %cmp9 = icmp slt i32 %conv4, %c
  %or.cond47 = and i1 %or.cond, %cmp9
  br i1 %or.cond47, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %1 = bitcast double* %b to [13 x [13 x [5 x double]]]*
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %sext45 = shl i64 %call1, 32
  %idxprom13 = ashr exact i64 %sext45, 32
  %sext46 = shl i64 %call3, 32
  %idxprom15 = ashr exact i64 %sext46, 32
  %arrayidx18 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 0
  %2 = bitcast double* %arrayidx18 to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %arrayidx26 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 0
  %4 = bitcast double* %arrayidx26 to i64*
  store i64 %3, i64* %4, align 8, !tbaa !7
  %arrayidx18.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 1
  %5 = bitcast double* %arrayidx18.1 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !7
  %arrayidx26.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 1
  %7 = bitcast double* %arrayidx26.1 to i64*
  store i64 %6, i64* %7, align 8, !tbaa !7
  %arrayidx18.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 2
  %8 = bitcast double* %arrayidx18.2 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !7
  %arrayidx26.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 2
  %10 = bitcast double* %arrayidx26.2 to i64*
  store i64 %9, i64* %10, align 8, !tbaa !7
  %arrayidx18.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 3
  %11 = bitcast double* %arrayidx18.3 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !7
  %arrayidx26.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 3
  %13 = bitcast double* %arrayidx26.3 to i64*
  store i64 %12, i64* %13, align 8, !tbaa !7
  %arrayidx18.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 4
  %14 = bitcast double* %arrayidx18.4 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !7
  %arrayidx26.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 4
  %16 = bitcast double* %arrayidx26.4 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !7
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
!6 = !{!"const", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
