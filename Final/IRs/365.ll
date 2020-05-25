; ModuleID = 'src/365.src'
source_filename = "src/365.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture %a, i32 %b, i32 %c, i32 %d, i32 %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 1) #2
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv2 = trunc i64 %call1 to i32
  %cmp = icmp slt i32 %conv2, %b
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %mul = mul i32 %c, %b
  %mul4 = mul i32 %mul, %conv
  %sub = add nsw i32 %c, -2
  %mul5 = mul nsw i32 %sub, %b
  %add6 = add i32 %conv2, %e
  %add7 = add i32 %add6, %mul5
  %add8 = add i32 %add7, %mul4
  %idxprom = sext i32 %add8 to i64
  %arrayidx = getelementptr inbounds double, double* %a, i64 %idxprom
  %1 = bitcast double* %arrayidx to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %add14 = add i32 %add6, %mul4
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds double, double* %a, i64 %idxprom15
  %3 = bitcast double* %arrayidx16 to i64*
  store i64 %2, i64* %3, align 8, !tbaa !7
  %add21 = add i32 %add6, %b
  %add22 = add i32 %add21, %mul4
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds double, double* %a, i64 %idxprom23
  %4 = bitcast double* %arrayidx24 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !7
  %sub27 = add nsw i32 %c, -1
  %mul28 = mul nsw i32 %sub27, %b
  %add30 = add i32 %add6, %mul28
  %add31 = add i32 %add30, %mul4
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds double, double* %a, i64 %idxprom32
  %6 = bitcast double* %arrayidx33 to i64*
  store i64 %5, i64* %6, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
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
!3 = !{i32 1, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"int", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
