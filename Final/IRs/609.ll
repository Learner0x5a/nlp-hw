; ModuleID = 'src/609.src'
source_filename = "src/609.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(i32 %a, i32 %b, float* nocapture readonly %c, float* nocapture %d, float* nocapture readonly %e, float* nocapture readonly %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, %b
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds float, float* %e, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %sub = sub nsw i32 4, %a
  %conv2 = sitofp i32 %sub to float
  %div = fdiv float %0, %conv2, !fpmath !11
  %arrayidx4 = getelementptr inbounds float, float* %c, i64 %idxprom
  %1 = load float, float* %arrayidx4, align 4, !tbaa !7
  %arrayidx8 = getelementptr inbounds float, float* %f, i64 %idxprom
  %2 = load float, float* %arrayidx8, align 4, !tbaa !7
  %3 = tail call float @llvm.fmuladd.f32(float %div, float %2, float %1)
  %arrayidx13 = getelementptr inbounds float, float* %d, i64 %idxprom
  store float %3, float* %arrayidx13, align 4, !tbaa !7
  %mul14 = shl i32 %b, 2
  %add15 = add nsw i32 %mul14, %conv
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds float, float* %c, i64 %idxprom16
  %4 = load float, float* %arrayidx17, align 4, !tbaa !7
  %arrayidx21 = getelementptr inbounds float, float* %f, i64 %idxprom16
  %5 = load float, float* %arrayidx21, align 4, !tbaa !7
  %6 = tail call float @llvm.fmuladd.f32(float %div, float %5, float %4)
  %arrayidx26 = getelementptr inbounds float, float* %d, i64 %idxprom16
  store float %6, float* %arrayidx26, align 4, !tbaa !7
  %add28 = add nsw i32 %conv, %b
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds float, float* %c, i64 %idxprom29
  %7 = load float, float* %arrayidx30, align 4, !tbaa !7
  %arrayidx34 = getelementptr inbounds float, float* %f, i64 %idxprom29
  %8 = load float, float* %arrayidx34, align 4, !tbaa !7
  %9 = tail call float @llvm.fmuladd.f32(float %div, float %8, float %7)
  %arrayidx39 = getelementptr inbounds float, float* %d, i64 %idxprom29
  store float %9, float* %arrayidx39, align 4, !tbaa !7
  %mul40 = shl i32 %b, 1
  %add41 = add nsw i32 %mul40, %conv
  %idxprom42 = sext i32 %add41 to i64
  %arrayidx43 = getelementptr inbounds float, float* %c, i64 %idxprom42
  %10 = load float, float* %arrayidx43, align 4, !tbaa !7
  %arrayidx47 = getelementptr inbounds float, float* %f, i64 %idxprom42
  %11 = load float, float* %arrayidx47, align 4, !tbaa !7
  %12 = tail call float @llvm.fmuladd.f32(float %div, float %11, float %10)
  %arrayidx52 = getelementptr inbounds float, float* %d, i64 %idxprom42
  store float %12, float* %arrayidx52, align 4, !tbaa !7
  %mul53 = mul nsw i32 %b, 3
  %add54 = add nsw i32 %mul53, %conv
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds float, float* %c, i64 %idxprom55
  %13 = load float, float* %arrayidx56, align 4, !tbaa !7
  %arrayidx60 = getelementptr inbounds float, float* %f, i64 %idxprom55
  %14 = load float, float* %arrayidx60, align 4, !tbaa !7
  %15 = tail call float @llvm.fmuladd.f32(float %div, float %14, float %13)
  %arrayidx65 = getelementptr inbounds float, float* %d, i64 %idxprom55
  store float %15, float* %arrayidx65, align 4, !tbaa !7
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
!3 = !{i32 0, i32 0, i32 1, i32 1, i32 1, i32 1}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"int", !"int", !"float*", !"float*", !"float*", !"float*"}
!6 = !{!"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{float 2.500000e+00}
