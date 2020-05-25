; ModuleID = 'src/569.src'
source_filename = "src/569.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture %a, float* nocapture readonly %b, i32* nocapture readonly %c, i32* nocapture readonly %d, float* nocapture readonly %e, i32 %f, i32* nocapture readonly %g, i32* nocapture readonly %h) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, %f
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %div = sdiv i32 %conv, 32
  %idxprom = sext i32 %div to i64
  %arrayidx = getelementptr inbounds i32, i32* %h, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %cmp231 = icmp sgt i32 %0, 0
  br i1 %cmp231, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %if.then
  %wide.trip.count = zext i32 %0 to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %1 = icmp eq i32 %0, 1
  br i1 %1, label %for.cond.cleanup.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  br label %for.body

for.cond.cleanup.loopexit.unr-lcssa:              ; preds = %for.body, %for.body.preheader
  %.lcssa.ph = phi float [ undef, %for.body.preheader ], [ %17, %for.body ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.1, %for.body ]
  %j.033.unr = phi float [ 0.000000e+00, %for.body.preheader ], [ %17, %for.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.cond.cleanup, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond.cleanup.loopexit.unr-lcssa
  %arrayidx5.epil = getelementptr inbounds i32, i32* %g, i64 %indvars.iv.unr
  %2 = load i32, i32* %arrayidx5.epil, align 4, !tbaa !7
  %add.epil = add nsw i32 %2, %conv
  %idxprom6.epil = sext i32 %add.epil to i64
  %arrayidx9.epil = getelementptr inbounds float, float* %b, i64 %idxprom6.epil
  %3 = load float, float* %arrayidx9.epil, align 4, !tbaa !11
  %arrayidx7.epil = getelementptr inbounds i32, i32* %c, i64 %idxprom6.epil
  %4 = load i32, i32* %arrayidx7.epil, align 4, !tbaa !7
  %idxprom10.epil = sext i32 %4 to i64
  %arrayidx11.epil = getelementptr inbounds float, float* %e, i64 %idxprom10.epil
  %5 = load float, float* %arrayidx11.epil, align 4, !tbaa !11
  %6 = tail call float @llvm.fmuladd.f32(float %3, float %5, float %j.033.unr)
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.body.epil, %for.cond.cleanup.loopexit.unr-lcssa, %if.then
  %j.0.lcssa = phi float [ 0.000000e+00, %if.then ], [ %.lcssa.ph, %for.cond.cleanup.loopexit.unr-lcssa ], [ %6, %for.body.epil ]
  %sext = shl i64 %call, 32
  %idxprom12 = ashr exact i64 %sext, 32
  %arrayidx13 = getelementptr inbounds i32, i32* %d, i64 %idxprom12
  %7 = load i32, i32* %arrayidx13, align 4, !tbaa !7
  %idxprom14 = sext i32 %7 to i64
  %arrayidx15 = getelementptr inbounds float, float* %a, i64 %idxprom14
  store float %j.0.lcssa, float* %arrayidx15, align 4, !tbaa !11
  br label %if.end

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.1, %for.body ]
  %j.033 = phi float [ 0.000000e+00, %for.body.preheader.new ], [ %17, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.1, %for.body ]
  %arrayidx5 = getelementptr inbounds i32, i32* %g, i64 %indvars.iv
  %8 = load i32, i32* %arrayidx5, align 4, !tbaa !7
  %add = add nsw i32 %8, %conv
  %idxprom6 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %c, i64 %idxprom6
  %9 = load i32, i32* %arrayidx7, align 4, !tbaa !7
  %arrayidx9 = getelementptr inbounds float, float* %b, i64 %idxprom6
  %10 = load float, float* %arrayidx9, align 4, !tbaa !11
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds float, float* %e, i64 %idxprom10
  %11 = load float, float* %arrayidx11, align 4, !tbaa !11
  %12 = tail call float @llvm.fmuladd.f32(float %10, float %11, float %j.033)
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx5.1 = getelementptr inbounds i32, i32* %g, i64 %indvars.iv.next
  %13 = load i32, i32* %arrayidx5.1, align 4, !tbaa !7
  %add.1 = add nsw i32 %13, %conv
  %idxprom6.1 = sext i32 %add.1 to i64
  %arrayidx7.1 = getelementptr inbounds i32, i32* %c, i64 %idxprom6.1
  %14 = load i32, i32* %arrayidx7.1, align 4, !tbaa !7
  %arrayidx9.1 = getelementptr inbounds float, float* %b, i64 %idxprom6.1
  %15 = load float, float* %arrayidx9.1, align 4, !tbaa !11
  %idxprom10.1 = sext i32 %14 to i64
  %arrayidx11.1 = getelementptr inbounds float, float* %e, i64 %idxprom10.1
  %16 = load float, float* %arrayidx11.1, align 4, !tbaa !11
  %17 = tail call float @llvm.fmuladd.f32(float %15, float %16, float %12)
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
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 2, i32 2}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"int*", !"int*", !"float*", !"int", !"int*", !"int*"}
!6 = !{!"", !"", !"", !"", !"", !"", !"const", !"const"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
