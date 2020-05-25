; ModuleID = 'src/613.src'
source_filename = "src/613.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture readonly %b, i32* nocapture %c, i32 %d, i32 %e, i32 %f, i32 %g, i32 %h) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %cmp = icmp ult i32 %conv, %d
  br i1 %cmp, label %for.cond.preheader, label %if.end31

for.cond.preheader:                               ; preds = %entry
  %cmp262 = icmp sgt i32 %e, 0
  br i1 %cmp262, label %for.cond4.preheader.lr.ph, label %for.cond.cleanup

for.cond4.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %cmp559 = icmp sgt i32 %f, 0
  %0 = sext i32 %f to i64
  %wide.trip.count73 = zext i32 %e to i64
  %wide.trip.count = zext i32 %f to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %1 = icmp eq i32 %f, 1
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond.cleanup7, %for.cond4.preheader.lr.ph
  %indvars.iv70 = phi i64 [ 0, %for.cond4.preheader.lr.ph ], [ %indvars.iv.next71, %for.cond.cleanup7 ]
  %k.064 = phi float [ 0x47EFFFFFE0000000, %for.cond4.preheader.lr.ph ], [ %k.1, %for.cond.cleanup7 ]
  %j.063 = phi i32 [ 0, %for.cond4.preheader.lr.ph ], [ %j.1, %for.cond.cleanup7 ]
  br i1 %cmp559, label %for.body8.lr.ph, label %for.cond.cleanup7

for.body8.lr.ph:                                  ; preds = %for.cond4.preheader
  %2 = mul nsw i64 %indvars.iv70, %0
  br i1 %1, label %for.cond.cleanup7.loopexit.unr-lcssa, label %for.body8

for.cond.cleanup:                                 ; preds = %for.cond.cleanup7, %for.cond.preheader
  %j.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %j.1, %for.cond.cleanup7 ]
  %idxprom29 = and i64 %call, 4294967295
  %arrayidx30 = getelementptr inbounds i32, i32* %c, i64 %idxprom29
  store i32 %j.0.lcssa, i32* %arrayidx30, align 4, !tbaa !7
  br label %if.end31

for.cond.cleanup7.loopexit.unr-lcssa:             ; preds = %for.body8, %for.body8.lr.ph
  %.lcssa.ph = phi float [ undef, %for.body8.lr.ph ], [ %21, %for.body8 ]
  %indvars.iv.unr = phi i64 [ 0, %for.body8.lr.ph ], [ %indvars.iv.next.1, %for.body8 ]
  %n.060.unr = phi float [ 0.000000e+00, %for.body8.lr.ph ], [ %21, %for.body8 ]
  br i1 %lcmp.mod, label %for.cond.cleanup7, label %for.body8.epil

for.body8.epil:                                   ; preds = %for.cond.cleanup7.loopexit.unr-lcssa
  %3 = trunc i64 %indvars.iv.unr to i32
  %4 = mul i32 %3, %d
  %add.epil = add i32 %4, %conv
  %idxprom.epil = zext i32 %add.epil to i64
  %arrayidx.epil = getelementptr inbounds float, float* %a, i64 %idxprom.epil
  %5 = load float, float* %arrayidx.epil, align 4, !tbaa !11
  %6 = add nsw i64 %indvars.iv.unr, %2
  %arrayidx12.epil = getelementptr inbounds float, float* %b, i64 %6
  %7 = load float, float* %arrayidx12.epil, align 4, !tbaa !11
  %sub.epil = fsub float %5, %7
  %8 = tail call float @llvm.fmuladd.f32(float %sub.epil, float %sub.epil, float %n.060.unr)
  br label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.body8.epil, %for.cond.cleanup7.loopexit.unr-lcssa, %for.cond4.preheader
  %n.0.lcssa = phi float [ 0.000000e+00, %for.cond4.preheader ], [ %.lcssa.ph, %for.cond.cleanup7.loopexit.unr-lcssa ], [ %8, %for.body8.epil ]
  %cmp23 = fcmp olt float %n.0.lcssa, %k.064
  %9 = trunc i64 %indvars.iv70 to i32
  %j.1 = select i1 %cmp23, i32 %9, i32 %j.063
  %k.1 = select i1 %cmp23, float %n.0.lcssa, float %k.064
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond74 = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74, label %for.cond.cleanup, label %for.cond4.preheader

for.body8:                                        ; preds = %for.body8.lr.ph, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body8 ], [ 0, %for.body8.lr.ph ]
  %n.060 = phi float [ %21, %for.body8 ], [ 0.000000e+00, %for.body8.lr.ph ]
  %niter = phi i64 [ %niter.nsub.1, %for.body8 ], [ %unroll_iter, %for.body8.lr.ph ]
  %10 = trunc i64 %indvars.iv to i32
  %11 = mul i32 %10, %d
  %add = add i32 %11, %conv
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds float, float* %a, i64 %idxprom
  %12 = load float, float* %arrayidx, align 4, !tbaa !11
  %13 = add nsw i64 %indvars.iv, %2
  %arrayidx12 = getelementptr inbounds float, float* %b, i64 %13
  %14 = load float, float* %arrayidx12, align 4, !tbaa !11
  %sub = fsub float %12, %14
  %15 = tail call float @llvm.fmuladd.f32(float %sub, float %sub, float %n.060)
  %indvars.iv.next = or i64 %indvars.iv, 1
  %16 = trunc i64 %indvars.iv.next to i32
  %17 = mul i32 %16, %d
  %add.1 = add i32 %17, %conv
  %idxprom.1 = zext i32 %add.1 to i64
  %arrayidx.1 = getelementptr inbounds float, float* %a, i64 %idxprom.1
  %18 = load float, float* %arrayidx.1, align 4, !tbaa !11
  %19 = add nsw i64 %indvars.iv.next, %2
  %arrayidx12.1 = getelementptr inbounds float, float* %b, i64 %19
  %20 = load float, float* %arrayidx12.1, align 4, !tbaa !11
  %sub.1 = fsub float %18, %20
  %21 = tail call float @llvm.fmuladd.f32(float %sub.1, float %sub.1, float %15)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.cond.cleanup7.loopexit.unr-lcssa, label %for.body8

if.end31:                                         ; preds = %for.cond.cleanup, %entry
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
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"int*", !"int", !"int", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
