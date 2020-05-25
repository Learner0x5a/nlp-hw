; ModuleID = 'src/367.src'
source_filename = "src/367.src"
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
  %conv = trunc i64 %call to i32
  %sub = add nsw i32 %d, -2
  %mul = mul i32 %c, %b
  %mul4 = mul i32 %mul, %sub
  %mul5 = mul nsw i32 %conv, %b
  %add = add i32 %mul5, %conv2
  %add6 = add i32 %add, %e
  %add7 = add i32 %add6, %mul4
  %idxprom = sext i32 %add7 to i64
  %arrayidx = getelementptr inbounds double, double* %a, i64 %idxprom
  %0 = bitcast double* %arrayidx to i64*
  %1 = load i64, i64* %0, align 8, !tbaa !7
  %idxprom14 = sext i32 %add6 to i64
  %arrayidx15 = getelementptr inbounds double, double* %a, i64 %idxprom14
  %2 = bitcast double* %arrayidx15 to i64*
  store i64 %1, i64* %2, align 8, !tbaa !7
  %add20 = add i32 %add, %mul
  %add21 = add i32 %add20, %e
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds double, double* %a, i64 %idxprom22
  %3 = bitcast double* %arrayidx23 to i64*
  %4 = load i64, i64* %3, align 8, !tbaa !7
  %sub24 = add nsw i32 %d, -1
  %mul26 = mul i32 %mul, %sub24
  %add30 = add i32 %add6, %mul26
  %idxprom31 = sext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds double, double* %a, i64 %idxprom31
  %5 = bitcast double* %arrayidx32 to i64*
  store i64 %4, i64* %5, align 8, !tbaa !7
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
