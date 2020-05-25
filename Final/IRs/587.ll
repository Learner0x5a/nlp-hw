; ModuleID = 'src/587.src'
source_filename = "src/587.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture readonly %b, float* nocapture %c, float %d, i32 %e, i32 %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %cmp = icmp sgt i32 %conv3, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmp6 = icmp sgt i32 %conv3, %f
  %cmp9 = icmp slt i32 %conv, 1
  %or.cond.not = or i1 %cmp9, %cmp6
  %cmp13 = icmp sgt i32 %conv, %e
  %or.cond41 = or i1 %cmp13, %or.cond.not
  br i1 %or.cond41, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add12 = add nsw i32 %e, 1
  %idxprom42 = zext i32 %conv to i64
  %arrayidx = getelementptr inbounds float, float* %a, i64 %idxprom42
  %2 = load float, float* %arrayidx, align 4, !tbaa !7
  %mul = mul nsw i32 %conv3, %add12
  %add16 = add nsw i32 %mul, %conv
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds float, float* %c, i64 %idxprom17
  %3 = load float, float* %arrayidx18, align 4, !tbaa !7
  %sub = fsub float %3, %2
  store float %sub, float* %arrayidx18, align 4, !tbaa !7
  %call19 = tail call float @_Z4sqrtf(float %d) #2
  %arrayidx21 = getelementptr inbounds float, float* %b, i64 %idxprom42
  %4 = load float, float* %arrayidx21, align 4, !tbaa !7
  %mul22 = fmul float %call19, %4
  %div = fdiv float %sub, %mul22, !fpmath !11
  store float %div, float* %arrayidx18, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local float @_Z4sqrtf(float) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"float", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{float 2.500000e+00}
