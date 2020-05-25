; ModuleID = 'src/543.src'
source_filename = "src/543.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture readonly %b, float* nocapture %c, i32 %d) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, %d
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %shl = shl i32 %conv, 2
  %idxprom = sext i32 %shl to i64
  %arrayidx = getelementptr inbounds float, float* %a, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %arrayidx3 = getelementptr inbounds float, float* %b, i64 %idxprom
  %1 = load float, float* %arrayidx3, align 4, !tbaa !7
  %add = or i32 %shl, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds float, float* %a, i64 %idxprom4
  %2 = load float, float* %arrayidx5, align 4, !tbaa !7
  %arrayidx8 = getelementptr inbounds float, float* %b, i64 %idxprom4
  %3 = load float, float* %arrayidx8, align 4, !tbaa !7
  %mul9 = fmul float %2, %3
  %4 = tail call float @llvm.fmuladd.f32(float %0, float %1, float %mul9)
  %add10 = or i32 %shl, 2
  %idxprom11 = sext i32 %add10 to i64
  %arrayidx12 = getelementptr inbounds float, float* %a, i64 %idxprom11
  %5 = load float, float* %arrayidx12, align 4, !tbaa !7
  %arrayidx15 = getelementptr inbounds float, float* %b, i64 %idxprom11
  %6 = load float, float* %arrayidx15, align 4, !tbaa !7
  %7 = tail call float @llvm.fmuladd.f32(float %5, float %6, float %4)
  %add16 = or i32 %shl, 3
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds float, float* %a, i64 %idxprom17
  %8 = load float, float* %arrayidx18, align 4, !tbaa !7
  %arrayidx21 = getelementptr inbounds float, float* %b, i64 %idxprom17
  %9 = load float, float* %arrayidx21, align 4, !tbaa !7
  %10 = tail call float @llvm.fmuladd.f32(float %8, float %9, float %7)
  %sext = shl i64 %call, 32
  %idxprom22 = ashr exact i64 %sext, 32
  %arrayidx23 = getelementptr inbounds float, float* %c, i64 %idxprom22
  store float %10, float* %arrayidx23, align 4, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
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
!3 = !{i32 1, i32 1, i32 1, i32 0}
!4 = !{!"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"int"}
!6 = !{!"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
