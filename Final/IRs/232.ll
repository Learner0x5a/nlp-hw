; ModuleID = 'src/232.src'
source_filename = "src/232.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable writeonly
define dso_local spir_kernel void @A(double* nocapture %a, i32 %b, i32 %c, i32 %d, double %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #2
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv4 = trunc i64 %call3 to i32
  %cmp = icmp slt i32 %conv, %d
  %cmp6 = icmp slt i32 %conv2, %c
  %or.cond = and i1 %cmp, %cmp6
  %cmp9 = icmp slt i32 %conv4, %b
  %or.cond59 = and i1 %or.cond, %cmp9
  br i1 %or.cond59, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %add = add nsw i32 %conv, 32
  %rem = srem i32 %add, 64
  %sub = add nsw i32 %rem, -32
  %mul = mul nsw i32 %sub, %sub
  %add11 = add nsw i32 %conv2, 32
  %rem12 = srem i32 %add11, 64
  %sub13 = add nsw i32 %rem12, -32
  %mul14 = mul nsw i32 %sub13, %sub13
  %add15 = add nuw nsw i32 %mul14, %mul
  %add16 = add nsw i32 %conv4, 32
  %rem17 = srem i32 %add16, 64
  %sub18 = add nsw i32 %rem17, -32
  %mul19 = mul nsw i32 %sub18, %sub18
  %add20 = add nuw nsw i32 %add15, %mul19
  %conv21 = sitofp i32 %add20 to double
  %mul22 = fmul double %conv21, %e
  %call23 = tail call double @_Z3expd(double %mul22) #2
  %mul24 = mul nsw i32 %conv, %c
  %add25 = add nsw i32 %b, 1
  %mul2658 = add i32 %mul24, %conv2
  %add29 = mul i32 %mul2658, %add25
  %add30 = add nsw i32 %add29, %conv4
  %idxprom = sext i32 %add30 to i64
  %arrayidx = getelementptr inbounds double, double* %a, i64 %idxprom
  store double %call23, double* %arrayidx, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local double @_Z3expd(double) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!5 = !{!"double*", !"int", !"int", !"int", !"double"}
!6 = !{!"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
