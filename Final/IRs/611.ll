; ModuleID = 'src/611.src'
source_filename = "src/611.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture %b, float* nocapture %c, i32 %d, i32 %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv2 = trunc i64 %call to i32
  %call3 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %conv4 = trunc i64 %call3 to i32
  %0 = xor i32 %e, -1
  %sub5 = add i32 %0, %d
  %cmp = icmp sgt i32 %sub5, %conv2
  %sub7 = sub nsw i32 %d, %e
  %cmp8 = icmp sgt i32 %sub7, %conv4
  %or.cond = and i1 %cmp, %cmp8
  br i1 %or.cond, label %if.then, label %if.end43

if.then:                                          ; preds = %entry
  %add = add i32 %e, 1
  %add10 = add i32 %add, %conv2
  %mul = mul nsw i32 %add10, %d
  %add11 = add nsw i32 %mul, %e
  %idxprom = sext i32 %add11 to i64
  %arrayidx = getelementptr inbounds float, float* %a, i64 %idxprom
  %1 = load float, float* %arrayidx, align 4, !tbaa !7
  %mul12 = mul nsw i32 %e, %d
  %add13 = add nsw i32 %conv4, %e
  %add14 = add nsw i32 %add13, %mul12
  %idxprom15 = sext i32 %add14 to i64
  %arrayidx16 = getelementptr inbounds float, float* %b, i64 %idxprom15
  %2 = load float, float* %arrayidx16, align 4, !tbaa !7
  %add22 = add nsw i32 %mul, %add13
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds float, float* %b, i64 %idxprom23
  %3 = load float, float* %arrayidx24, align 4, !tbaa !7
  %neg = fsub float -0.000000e+00, %1
  %4 = tail call float @llvm.fmuladd.f32(float %neg, float %2, float %3)
  store float %4, float* %arrayidx24, align 4, !tbaa !7
  %cmp25 = icmp eq i32 %conv4, 0
  br i1 %cmp25, label %if.then27, label %if.end43

if.then27:                                        ; preds = %if.then
  %arrayidx34 = getelementptr inbounds float, float* %a, i64 %idxprom23
  %5 = load float, float* %arrayidx34, align 4, !tbaa !7
  %idxprom35 = sext i32 %e to i64
  %arrayidx36 = getelementptr inbounds float, float* %c, i64 %idxprom35
  %6 = load float, float* %arrayidx36, align 4, !tbaa !7
  %idxprom40 = sext i32 %add10 to i64
  %arrayidx41 = getelementptr inbounds float, float* %c, i64 %idxprom40
  %7 = load float, float* %arrayidx41, align 4, !tbaa !7
  %neg42 = fsub float -0.000000e+00, %5
  %8 = tail call float @llvm.fmuladd.f32(float %neg42, float %6, float %7)
  store float %8, float* %arrayidx41, align 4, !tbaa !7
  br label %if.end43

if.end43:                                         ; preds = %if.then, %if.then27, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

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
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
