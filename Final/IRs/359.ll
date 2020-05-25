; ModuleID = 'src/359.src'
source_filename = "src/359.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture %a, i32 %b, i32 %c, i32 %d, i32 %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 1) #2
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %0 = trunc i64 %call1 to i32
  %conv3 = add i32 %0, 1
  %sub = add nsw i32 %c, -1
  %cmp = icmp slt i32 %conv3, %sub
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = trunc i64 %call to i32
  %conv = add i32 %1, 1
  %mul = mul nsw i32 %conv, %c
  %mul565 = add i32 %mul, %conv3
  %add7 = mul i32 %mul565, %b
  %add8 = add nsw i32 %add7, %b
  %sub9 = add i32 %add8, %e
  %add10 = add i32 %sub9, -2
  %idxprom = sext i32 %add10 to i64
  %arrayidx = getelementptr inbounds double, double* %a, i64 %idxprom
  %2 = bitcast double* %arrayidx to i64*
  %3 = load i64, i64* %2, align 8, !tbaa !7
  %add16 = add i32 %add7, %e
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds double, double* %a, i64 %idxprom17
  %4 = bitcast double* %arrayidx18 to i64*
  store i64 %3, i64* %4, align 8, !tbaa !7
  %add24 = add i32 %add16, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds double, double* %a, i64 %idxprom25
  %5 = bitcast double* %arrayidx26 to i64*
  %6 = load i64, i64* %5, align 8, !tbaa !7
  %add33 = add i32 %sub9, -1
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds double, double* %a, i64 %idxprom34
  %7 = bitcast double* %arrayidx35 to i64*
  store i64 %6, i64* %7, align 8, !tbaa !7
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
