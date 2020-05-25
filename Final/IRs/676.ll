; ModuleID = 'src/676.src'
source_filename = "src/676.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* noalias nocapture readonly %a, float* noalias nocapture readonly %b, i32* noalias nocapture readonly %c, i32* noalias nocapture readonly %d, i32 %e, float* noalias nocapture %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, %e
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i32, i32* %d, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %cmp226 = icmp sgt i32 %0, 0
  br i1 %cmp226, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %if.then
  %1 = sext i32 %e to i64
  %sext31 = shl i64 %call, 32
  %2 = ashr exact i64 %sext31, 32
  %wide.trip.count = zext i32 %0 to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %3 = icmp eq i32 %0, 1
  br i1 %3, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.body, %for.body.preheader
  %.lcssa.ph = phi float [ undef, %for.body.preheader ], [ %21, %for.body ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.1, %for.body ]
  %h.028.unr = phi float [ 0.000000e+00, %for.body.preheader ], [ %21, %for.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa
  %4 = mul nsw i64 %indvars.iv.unr, %1
  %5 = add nsw i64 %4, %2
  %arrayidx5.epil = getelementptr inbounds float, float* %a, i64 %5
  %6 = load float, float* %arrayidx5.epil, align 4, !tbaa !11
  %arrayidx7.epil = getelementptr inbounds i32, i32* %c, i64 %5
  %7 = load i32, i32* %arrayidx7.epil, align 4, !tbaa !7
  %idxprom8.epil = sext i32 %7 to i64
  %arrayidx9.epil = getelementptr inbounds float, float* %b, i64 %idxprom8.epil
  %8 = load float, float* %arrayidx9.epil, align 4, !tbaa !11
  %9 = tail call float @llvm.fmuladd.f32(float %6, float %8, float %h.028.unr)
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body.epil, %for.cond.cleanup.loopexit.unr-lcssa, %if.then
  %h.0.lcssa = phi float [ 0.000000e+00, %if.then ], [ %.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %9, %for.body.epil ]
  %arrayidx12 = getelementptr inbounds float, float* %f, i64 %idxprom
  store float %h.0.lcssa, float* %arrayidx12, align 4, !tbaa !11
  br label %if.end

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.1, %for.body ]
  %h.028 = phi float [ 0.000000e+00, %for.body.preheader.new ], [ %21, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.1, %for.body ]
  %10 = mul nsw i64 %indvars.iv, %1
  %11 = add nsw i64 %10, %2
  %arrayidx5 = getelementptr inbounds float, float* %a, i64 %11
  %12 = load float, float* %arrayidx5, align 4, !tbaa !11
  %arrayidx7 = getelementptr inbounds i32, i32* %c, i64 %11
  %13 = load i32, i32* %arrayidx7, align 4, !tbaa !7
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds float, float* %b, i64 %idxprom8
  %14 = load float, float* %arrayidx9, align 4, !tbaa !11
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %h.028)
  %indvars.iv.next = or i64 %indvars.iv, 1
  %16 = mul nsw i64 %indvars.iv.next, %1
  %17 = add nsw i64 %16, %2
  %arrayidx5.1 = getelementptr inbounds float, float* %a, i64 %17
  %18 = load float, float* %arrayidx5.1, align 4, !tbaa !11
  %arrayidx7.1 = getelementptr inbounds i32, i32* %c, i64 %17
  %19 = load i32, i32* %arrayidx7.1, align 4, !tbaa !7
  %idxprom8.1 = sext i32 %19 to i64
  %arrayidx9.1 = getelementptr inbounds float, float* %b, i64 %idxprom8.1
  %20 = load float, float* %arrayidx9.1, align 4, !tbaa !11
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %20, float %15)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body

if.end:                                           ; preds = %for.cond.cleanup, %entry
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
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 1}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"int*", !"int*", !"int", !"float*"}
!6 = !{!"restrict const", !"restrict const", !"restrict const", !"restrict const", !"", !"restrict"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
