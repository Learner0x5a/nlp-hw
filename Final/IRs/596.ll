; ModuleID = 'src/596.src'
source_filename = "src/596.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture %a, float* nocapture %b, float* nocapture readonly %c, i32 %d, i32 %e, i32 %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %cmp = icmp sgt i32 %conv, %d
  %cmp2 = icmp slt i32 %conv, %f
  %or.cond = and i1 %cmp, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul = mul nsw i32 %f, %d
  %add = add nsw i32 %mul, %conv
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds float, float* %b, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !7
  %cmp473 = icmp sgt i32 %e, 0
  br i1 %cmp473, label %for.body.preheader, label %if.end

for.body.preheader:                               ; preds = %if.then
  %0 = sext i32 %f to i64
  %1 = sext i32 %d to i64
  %sext85 = shl i64 %call, 32
  %2 = ashr exact i64 %sext85, 32
  %wide.trip.count83 = zext i32 %e to i64
  %xtraiter91 = and i64 %wide.trip.count83, 1
  %3 = icmp eq i32 %e, 1
  br i1 %3, label %for.cond19.preheader.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter93 = sub nsw i64 %wide.trip.count83, %xtraiter91
  br label %for.body

for.cond19.preheader.unr-lcssa:                   ; preds = %for.body, %for.body.preheader
  %.lcssa.ph = phi float [ undef, %for.body.preheader ], [ %30, %for.body ]
  %.unr = phi float [ 0.000000e+00, %for.body.preheader ], [ %30, %for.body ]
  %indvars.iv78.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next79.1, %for.body ]
  %lcmp.mod92 = icmp eq i64 %xtraiter91, 0
  br i1 %lcmp.mod92, label %for.cond19.preheader, label %for.body.epil

for.body.epil:                                    ; preds = %for.cond19.preheader.unr-lcssa
  %4 = mul nsw i64 %indvars.iv78.unr, %0
  %5 = add nsw i64 %4, %1
  %arrayidx9.epil = getelementptr inbounds float, float* %c, i64 %5
  %6 = load float, float* %arrayidx9.epil, align 4, !tbaa !7
  %7 = add nsw i64 %4, %2
  %arrayidx13.epil = getelementptr inbounds float, float* %a, i64 %7
  %8 = load float, float* %arrayidx13.epil, align 4, !tbaa !7
  %9 = tail call float @llvm.fmuladd.f32(float %6, float %8, float %.unr)
  store float %9, float* %arrayidx, align 4, !tbaa !7
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond19.preheader.unr-lcssa, %for.body.epil
  %.lcssa = phi float [ %.lcssa.ph, %for.cond19.preheader.unr-lcssa ], [ %9, %for.body.epil ]
  br i1 %cmp473, label %for.body22.preheader, label %if.end

for.body22.preheader:                             ; preds = %for.cond19.preheader
  %10 = sext i32 %f to i64
  %11 = sext i32 %d to i64
  %sext = shl i64 %call, 32
  %12 = ashr exact i64 %sext, 32
  %arrayidx2686 = getelementptr inbounds float, float* %c, i64 %11
  %13 = load float, float* %arrayidx2686, align 4, !tbaa !7
  %arrayidx3587 = getelementptr inbounds float, float* %a, i64 %12
  %14 = load float, float* %arrayidx3587, align 4, !tbaa !7
  %neg88 = fsub float -0.000000e+00, %13
  %15 = tail call float @llvm.fmuladd.f32(float %neg88, float %.lcssa, float %14)
  store float %15, float* %arrayidx3587, align 4, !tbaa !7
  %exitcond89 = icmp eq i32 %e, 1
  br i1 %exitcond89, label %if.end, label %for.body22.for.body22_crit_edge.preheader

for.body22.for.body22_crit_edge.preheader:        ; preds = %for.body22.preheader
  %wide.trip.count = zext i32 %e to i64
  %16 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %16, 1
  %17 = icmp eq i32 %e, 2
  br i1 %17, label %if.end.loopexit.unr-lcssa, label %for.body22.for.body22_crit_edge.preheader.new

for.body22.for.body22_crit_edge.preheader.new:    ; preds = %for.body22.for.body22_crit_edge.preheader
  %unroll_iter = sub nsw i64 %16, %xtraiter
  br label %for.body22.for.body22_crit_edge

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %18 = phi float [ 0.000000e+00, %for.body.preheader.new ], [ %30, %for.body ]
  %indvars.iv78 = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next79.1, %for.body ]
  %niter94 = phi i64 [ %unroll_iter93, %for.body.preheader.new ], [ %niter94.nsub.1, %for.body ]
  %19 = mul nsw i64 %indvars.iv78, %0
  %20 = add nsw i64 %19, %1
  %arrayidx9 = getelementptr inbounds float, float* %c, i64 %20
  %21 = load float, float* %arrayidx9, align 4, !tbaa !7
  %22 = add nsw i64 %19, %2
  %arrayidx13 = getelementptr inbounds float, float* %a, i64 %22
  %23 = load float, float* %arrayidx13, align 4, !tbaa !7
  %24 = tail call float @llvm.fmuladd.f32(float %21, float %23, float %18)
  store float %24, float* %arrayidx, align 4, !tbaa !7
  %indvars.iv.next79 = or i64 %indvars.iv78, 1
  %25 = mul nsw i64 %indvars.iv.next79, %0
  %26 = add nsw i64 %25, %1
  %arrayidx9.1 = getelementptr inbounds float, float* %c, i64 %26
  %27 = load float, float* %arrayidx9.1, align 4, !tbaa !7
  %28 = add nsw i64 %25, %2
  %arrayidx13.1 = getelementptr inbounds float, float* %a, i64 %28
  %29 = load float, float* %arrayidx13.1, align 4, !tbaa !7
  %30 = tail call float @llvm.fmuladd.f32(float %27, float %29, float %24)
  store float %30, float* %arrayidx, align 4, !tbaa !7
  %indvars.iv.next79.1 = add nuw nsw i64 %indvars.iv78, 2
  %niter94.nsub.1 = add i64 %niter94, -2
  %niter94.ncmp.1 = icmp eq i64 %niter94.nsub.1, 0
  br i1 %niter94.ncmp.1, label %for.cond19.preheader.unr-lcssa, label %for.body

for.body22.for.body22_crit_edge:                  ; preds = %for.body22.for.body22_crit_edge, %for.body22.for.body22_crit_edge.preheader.new
  %indvars.iv.next90 = phi i64 [ 1, %for.body22.for.body22_crit_edge.preheader.new ], [ %indvars.iv.next.1, %for.body22.for.body22_crit_edge ]
  %niter = phi i64 [ %unroll_iter, %for.body22.for.body22_crit_edge.preheader.new ], [ %niter.nsub.1, %for.body22.for.body22_crit_edge ]
  %.pre = load float, float* %arrayidx, align 4, !tbaa !7
  %31 = mul nsw i64 %indvars.iv.next90, %10
  %32 = add nsw i64 %31, %11
  %arrayidx26 = getelementptr inbounds float, float* %c, i64 %32
  %33 = load float, float* %arrayidx26, align 4, !tbaa !7
  %34 = add nsw i64 %31, %12
  %arrayidx35 = getelementptr inbounds float, float* %a, i64 %34
  %35 = load float, float* %arrayidx35, align 4, !tbaa !7
  %neg = fsub float -0.000000e+00, %33
  %36 = tail call float @llvm.fmuladd.f32(float %neg, float %.pre, float %35)
  store float %36, float* %arrayidx35, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next90, 1
  %.pre.1 = load float, float* %arrayidx, align 4, !tbaa !7
  %37 = mul nsw i64 %indvars.iv.next, %10
  %38 = add nsw i64 %37, %11
  %arrayidx26.1 = getelementptr inbounds float, float* %c, i64 %38
  %39 = load float, float* %arrayidx26.1, align 4, !tbaa !7
  %40 = add nsw i64 %37, %12
  %arrayidx35.1 = getelementptr inbounds float, float* %a, i64 %40
  %41 = load float, float* %arrayidx35.1, align 4, !tbaa !7
  %neg.1 = fsub float -0.000000e+00, %39
  %42 = tail call float @llvm.fmuladd.f32(float %neg.1, float %.pre.1, float %41)
  store float %42, float* %arrayidx35.1, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.next90, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %if.end.loopexit.unr-lcssa, label %for.body22.for.body22_crit_edge

if.end.loopexit.unr-lcssa:                        ; preds = %for.body22.for.body22_crit_edge, %for.body22.for.body22_crit_edge.preheader
  %indvars.iv.next90.unr = phi i64 [ 1, %for.body22.for.body22_crit_edge.preheader ], [ %indvars.iv.next.1, %for.body22.for.body22_crit_edge ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %if.end, label %for.body22.for.body22_crit_edge.epil

for.body22.for.body22_crit_edge.epil:             ; preds = %if.end.loopexit.unr-lcssa
  %.pre.epil = load float, float* %arrayidx, align 4, !tbaa !7
  %43 = mul nsw i64 %indvars.iv.next90.unr, %10
  %44 = add nsw i64 %43, %11
  %arrayidx26.epil = getelementptr inbounds float, float* %c, i64 %44
  %45 = load float, float* %arrayidx26.epil, align 4, !tbaa !7
  %46 = add nsw i64 %43, %12
  %arrayidx35.epil = getelementptr inbounds float, float* %a, i64 %46
  %47 = load float, float* %arrayidx35.epil, align 4, !tbaa !7
  %neg.epil = fsub float -0.000000e+00, %45
  %48 = tail call float @llvm.fmuladd.f32(float %neg.epil, float %.pre.epil, float %47)
  store float %48, float* %arrayidx35.epil, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %for.body22.for.body22_crit_edge.epil, %if.end.loopexit.unr-lcssa, %for.body22.preheader, %if.then, %for.cond19.preheader, %entry
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
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
