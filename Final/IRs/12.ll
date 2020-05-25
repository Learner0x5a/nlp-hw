; ModuleID = 'src/12.src'
source_filename = "src/12.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(i32* nocapture readonly %a, float* nocapture readonly %b, i32* nocapture %c, <2 x i32> %d, <2 x i32> %e, i32 %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %0 = extractelement <2 x i32> %d, i64 0
  %rem = urem i32 %conv, %0
  %div = udiv i32 %conv, %0
  %1 = extractelement <2 x i32> %e, i64 0
  %2 = extractelement <2 x i32> %d, i64 1
  %cmp2 = icmp ult i32 %div, %2
  br i1 %cmp2, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %3 = extractelement <2 x i32> %e, i64 1
  %add = add i32 %div, %3
  %cmp471 = icmp ult i32 %div, %add
  br i1 %cmp471, label %for.cond6.preheader.lr.ph, label %for.cond.cleanup

for.cond6.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %add7 = add i32 %rem, %1
  %cmp867 = icmp ult i32 %rem, %add7
  %4 = zext i32 %rem to i64
  %wide.trip.count = zext i32 %1 to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %5 = icmp eq i32 %1, 1
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond.cleanup10, %for.cond6.preheader.lr.ph
  %n.076 = phi float [ 0.000000e+00, %for.cond6.preheader.lr.ph ], [ %n.1.lcssa, %for.cond.cleanup10 ]
  %q.074 = phi i32 [ %div, %for.cond6.preheader.lr.ph ], [ %inc21, %for.cond.cleanup10 ]
  %o.072 = phi i32 [ 0, %for.cond6.preheader.lr.ph ], [ %inc22, %for.cond.cleanup10 ]
  br i1 %cmp867, label %for.body11.lr.ph, label %for.cond.cleanup10

for.body11.lr.ph:                                 ; preds = %for.cond6.preheader
  %mul = mul i32 %o.072, %1
  %mul13 = mul i32 %q.074, %f
  br i1 %5, label %for.cond.cleanup10.loopexit.unr-lcssa, label %for.body11

for.cond.cleanup:                                 ; preds = %for.cond.cleanup10, %for.cond.preheader
  %n.0.lcssa = phi float [ 0.000000e+00, %for.cond.preheader ], [ %n.1.lcssa, %for.cond.cleanup10 ]
  %add24 = fadd float %n.0.lcssa, 5.000000e-01
  %conv25 = fptosi float %add24 to i32
  %idxprom26 = and i64 %call, 4294967295
  %arrayidx27 = getelementptr inbounds i32, i32* %c, i64 %idxprom26
  store i32 %conv25, i32* %arrayidx27, align 4, !tbaa !8
  br label %cleanup

for.cond.cleanup10.loopexit.unr-lcssa:            ; preds = %for.body11, %for.body11.lr.ph
  %.lcssa.ph = phi float [ undef, %for.body11.lr.ph ], [ %22, %for.body11 ]
  %indvars.iv78.unr = phi i64 [ 0, %for.body11.lr.ph ], [ %indvars.iv.next79.1, %for.body11 ]
  %indvars.iv.unr = phi i64 [ %4, %for.body11.lr.ph ], [ %indvars.iv.next.1, %for.body11 ]
  %n.170.unr = phi float [ %n.076, %for.body11.lr.ph ], [ %22, %for.body11 ]
  br i1 %lcmp.mod, label %for.cond.cleanup10, label %for.cond.cleanup10.loopexit.epilog-lcssa

for.cond.cleanup10.loopexit.epilog-lcssa:         ; preds = %for.cond.cleanup10.loopexit.unr-lcssa
  %6 = trunc i64 %indvars.iv.unr to i32
  %add14.epil = add i32 %mul13, %6
  %idxprom.epil = zext i32 %add14.epil to i64
  %arrayidx.epil = getelementptr inbounds i32, i32* %a, i64 %idxprom.epil
  %7 = load i32, i32* %arrayidx.epil, align 4, !tbaa !8
  %conv15.epil = uitofp i32 %7 to float
  %8 = trunc i64 %indvars.iv78.unr to i32
  %add12.epil = add i32 %mul, %8
  %idxprom16.epil = zext i32 %add12.epil to i64
  %arrayidx17.epil = getelementptr inbounds float, float* %b, i64 %idxprom16.epil
  %9 = load float, float* %arrayidx17.epil, align 4, !tbaa !12
  %10 = tail call float @llvm.fmuladd.f32(float %conv15.epil, float %9, float %n.170.unr)
  br label %for.cond.cleanup10

for.cond.cleanup10:                               ; preds = %for.cond.cleanup10.loopexit.epilog-lcssa, %for.cond.cleanup10.loopexit.unr-lcssa, %for.cond6.preheader
  %n.1.lcssa = phi float [ %n.076, %for.cond6.preheader ], [ %.lcssa.ph, %for.cond.cleanup10.loopexit.unr-lcssa ], [ %10, %for.cond.cleanup10.loopexit.epilog-lcssa ]
  %inc21 = add nuw i32 %q.074, 1
  %inc22 = add nuw i32 %o.072, 1
  %exitcond80 = icmp eq i32 %inc22, %3
  br i1 %exitcond80, label %for.cond.cleanup, label %for.cond6.preheader

for.body11:                                       ; preds = %for.body11.lr.ph, %for.body11
  %indvars.iv78 = phi i64 [ %indvars.iv.next79.1, %for.body11 ], [ 0, %for.body11.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body11 ], [ %4, %for.body11.lr.ph ]
  %n.170 = phi float [ %22, %for.body11 ], [ %n.076, %for.body11.lr.ph ]
  %niter = phi i64 [ %niter.nsub.1, %for.body11 ], [ %unroll_iter, %for.body11.lr.ph ]
  %11 = trunc i64 %indvars.iv78 to i32
  %add12 = add i32 %mul, %11
  %12 = trunc i64 %indvars.iv to i32
  %add14 = add i32 %mul13, %12
  %idxprom = zext i32 %add14 to i64
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %idxprom
  %13 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %conv15 = uitofp i32 %13 to float
  %idxprom16 = zext i32 %add12 to i64
  %arrayidx17 = getelementptr inbounds float, float* %b, i64 %idxprom16
  %14 = load float, float* %arrayidx17, align 4, !tbaa !12
  %15 = tail call float @llvm.fmuladd.f32(float %conv15, float %14, float %n.170)
  %16 = trunc i64 %indvars.iv78 to i32
  %17 = or i32 %16, 1
  %add12.1 = add i32 %mul, %17
  %18 = trunc i64 %indvars.iv to i32
  %19 = add i32 %18, 1
  %add14.1 = add i32 %mul13, %19
  %idxprom.1 = zext i32 %add14.1 to i64
  %arrayidx.1 = getelementptr inbounds i32, i32* %a, i64 %idxprom.1
  %20 = load i32, i32* %arrayidx.1, align 4, !tbaa !8
  %conv15.1 = uitofp i32 %20 to float
  %idxprom16.1 = zext i32 %add12.1 to i64
  %arrayidx17.1 = getelementptr inbounds float, float* %b, i64 %idxprom16.1
  %21 = load float, float* %arrayidx17.1, align 4, !tbaa !12
  %22 = tail call float @llvm.fmuladd.f32(float %conv15.1, float %21, float %15)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.cond.cleanup10.loopexit.unr-lcssa, label %for.body11

cleanup:                                          ; preds = %entry, %for.cond.cleanup
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="64" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"uint*", !"float*", !"int*", !"uint2", !"uint2", !"uint"}
!6 = !{!"uint*", !"float*", !"int*", !"uint __attribute__((ext_vector_type(2)))", !"uint __attribute__((ext_vector_type(2)))", !"uint"}
!7 = !{!"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !10, i64 0}
