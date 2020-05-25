; ModuleID = 'src/573.src'
source_filename = "src/573.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float %a, float %b, float* nocapture readonly %c, float* nocapture %d, i32 %e, i32 %f, i32 %g) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %call4 = tail call i64 @_Z13get_global_idj(i32 2) #3
  %2 = trunc i64 %call4 to i32
  %sub = add nsw i32 %e, -1
  %cmp = icmp slt i32 %conv, %sub
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv6 = add i32 %2, 1
  %add8 = add i32 %2, 2
  %mul = mul nsw i32 %add8, %f
  %add9 = add nsw i32 %mul, %conv3
  %mul10 = mul nsw i32 %add9, %e
  %add11 = add nsw i32 %mul10, %conv
  %idxprom = sext i32 %add11 to i64
  %arrayidx = getelementptr inbounds float, float* %c, i64 %idxprom
  %3 = load float, float* %arrayidx, align 4, !tbaa !7
  %mul13 = mul nsw i32 %2, %f
  %add14 = add nsw i32 %mul13, %conv3
  %mul15 = mul nsw i32 %add14, %e
  %add16 = add nsw i32 %mul15, %conv
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds float, float* %c, i64 %idxprom17
  %4 = load float, float* %arrayidx18, align 4, !tbaa !7
  %add19 = fadd float %3, %4
  %mul21 = mul nsw i32 %conv6, %f
  %add20 = add i32 %mul21, %1
  %add22 = add i32 %add20, 2
  %mul23 = mul nsw i32 %add22, %e
  %add24 = add nsw i32 %mul23, %conv
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds float, float* %c, i64 %idxprom25
  %5 = load float, float* %arrayidx26, align 4, !tbaa !7
  %add27 = fadd float %add19, %5
  %mul31 = mul nsw i32 %add20, %e
  %add32 = add nsw i32 %mul31, %conv
  %idxprom33 = sext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds float, float* %c, i64 %idxprom33
  %6 = load float, float* %arrayidx34, align 4, !tbaa !7
  %add35 = fadd float %add27, %6
  %add38 = add nsw i32 %mul21, %conv3
  %mul39 = mul nsw i32 %add38, %e
  %add36 = add i32 %mul39, %0
  %add40 = add i32 %add36, 2
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds float, float* %c, i64 %idxprom41
  %7 = load float, float* %arrayidx42, align 4, !tbaa !7
  %add43 = fadd float %add35, %7
  %idxprom49 = sext i32 %add36 to i64
  %arrayidx50 = getelementptr inbounds float, float* %c, i64 %idxprom49
  %8 = load float, float* %arrayidx50, align 4, !tbaa !7
  %add51 = fadd float %add43, %8
  %add56 = add nsw i32 %mul39, %conv
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds float, float* %c, i64 %idxprom57
  %9 = load float, float* %arrayidx58, align 4, !tbaa !7
  %10 = fneg float %9
  %neg = fmul float %10, %a
  %11 = tail call float @llvm.fmuladd.f32(float %b, float %add51, float %neg)
  %arrayidx65 = getelementptr inbounds float, float* %d, i64 %idxprom57
  store float %11, float* %arrayidx65, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
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
!3 = !{i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float", !"float", !"float*", !"float*", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
