; ModuleID = 'src/593.src'
source_filename = "src/593.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture readonly %b, float* nocapture readonly %c, float* nocapture %d, float* nocapture %e, float %f, float %g, i32 %h) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, %h
  br i1 %cmp, label %for.cond.preheader, label %if.end

for.cond.preheader:                               ; preds = %entry
  %cmp248 = icmp sgt i32 %h, 0
  br i1 %cmp248, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  %.pre = shl i64 %call, 32
  %.pre51 = ashr exact i64 %.pre, 32
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mul = mul nsw i32 %conv, %h
  %sext47 = shl i64 %call, 32
  %idxprom7 = ashr exact i64 %sext47, 32
  %arrayidx8 = getelementptr inbounds float, float* %e, i64 %idxprom7
  %arrayidx17 = getelementptr inbounds float, float* %d, i64 %idxprom7
  %0 = sext i32 %mul to i64
  %wide.trip.count = zext i32 %h to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = add nsw i64 %indvars.iv, %0
  %arrayidx = getelementptr inbounds float, float* %a, i64 %1
  %2 = load float, float* %arrayidx, align 4, !tbaa !7
  %arrayidx5 = getelementptr inbounds float, float* %c, i64 %indvars.iv
  %3 = load float, float* %arrayidx5, align 4, !tbaa !7
  %4 = load float, float* %arrayidx8, align 4, !tbaa !7
  %5 = tail call float @llvm.fmuladd.f32(float %2, float %3, float %4)
  store float %5, float* %arrayidx8, align 4, !tbaa !7
  %arrayidx12 = getelementptr inbounds float, float* %b, i64 %1
  %6 = load float, float* %arrayidx12, align 4, !tbaa !7
  %7 = load float, float* %arrayidx5, align 4, !tbaa !7
  %8 = load float, float* %arrayidx17, align 4, !tbaa !7
  %9 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %8)
  store float %9, float* %arrayidx17, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %for.cond.preheader.for.end_crit_edge
  %idxprom18.pre-phi = phi i64 [ %.pre51, %for.cond.preheader.for.end_crit_edge ], [ %idxprom7, %for.body ]
  %arrayidx19 = getelementptr inbounds float, float* %e, i64 %idxprom18.pre-phi
  %10 = load float, float* %arrayidx19, align 4, !tbaa !7
  %arrayidx22 = getelementptr inbounds float, float* %d, i64 %idxprom18.pre-phi
  %11 = load float, float* %arrayidx22, align 4, !tbaa !7
  %mul23 = fmul float %11, %g
  %12 = tail call float @llvm.fmuladd.f32(float %f, float %10, float %mul23)
  store float %12, float* %arrayidx22, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
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
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"float*", !"float*", !"float", !"float", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
