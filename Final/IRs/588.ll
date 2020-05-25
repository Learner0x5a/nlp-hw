; ModuleID = 'src/588.src'
source_filename = "src/588.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture %b, float* nocapture readonly %c, float %d, float %e, i32 %f, i32 %g) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end39

land.lhs.true:                                    ; preds = %entry
  %add2 = add nsw i32 %f, 1
  %cmp3 = icmp sgt i32 %conv, %f
  br i1 %cmp3, label %if.end39, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %idxprom67 = zext i32 %conv to i64
  %arrayidx = getelementptr inbounds float, float* %b, i64 %idxprom67
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !7
  %cmp668 = icmp slt i32 %g, 1
  br i1 %cmp668, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then
  %arrayidx13 = getelementptr inbounds float, float* %a, i64 %idxprom67
  %1 = sext i32 %add2 to i64
  %2 = zext i32 %conv to i64
  %3 = zext i32 %g to i64
  %xtraiter = and i64 %3, 1
  %4 = icmp eq i32 %g, 1
  br i1 %4, label %for.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = sub nsw i64 %3, %xtraiter
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %5 = phi float [ 0.000000e+00, %for.body.lr.ph.new ], [ %15, %for.body ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph.new ], [ %indvars.iv.next.1, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.lr.ph.new ], [ %niter.nsub.1, %for.body ]
  %6 = mul nsw i64 %indvars.iv, %1
  %7 = add nsw i64 %6, %2
  %arrayidx11 = getelementptr inbounds float, float* %c, i64 %7
  %8 = load float, float* %arrayidx11, align 4, !tbaa !7
  %9 = load float, float* %arrayidx13, align 4, !tbaa !7
  %sub = fsub float %8, %9
  %10 = tail call float @llvm.fmuladd.f32(float %sub, float %sub, float %5)
  store float %10, float* %arrayidx, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = mul nsw i64 %indvars.iv.next, %1
  %12 = add nsw i64 %11, %2
  %arrayidx11.1 = getelementptr inbounds float, float* %c, i64 %12
  %13 = load float, float* %arrayidx11.1, align 4, !tbaa !7
  %14 = load float, float* %arrayidx13, align 4, !tbaa !7
  %sub.1 = fsub float %13, %14
  %15 = tail call float @llvm.fmuladd.f32(float %sub.1, float %sub.1, float %10)
  store float %15, float* %arrayidx, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.lr.ph
  %.lcssa.ph = phi float [ undef, %for.body.lr.ph ], [ %15, %for.body ]
  %.unr = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %15, %for.body ]
  %indvars.iv.unr = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next.1, %for.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa
  %16 = mul nsw i64 %indvars.iv.unr, %1
  %17 = add nsw i64 %16, %2
  %arrayidx11.epil = getelementptr inbounds float, float* %c, i64 %17
  %18 = load float, float* %arrayidx11.epil, align 4, !tbaa !7
  %19 = load float, float* %arrayidx13, align 4, !tbaa !7
  %sub.epil = fsub float %18, %19
  %20 = tail call float @llvm.fmuladd.f32(float %sub.epil, float %sub.epil, float %.unr)
  store float %20, float* %arrayidx, align 4, !tbaa !7
  br label %for.end

for.end:                                          ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa, %if.then
  %21 = phi float [ 0.000000e+00, %if.then ], [ %.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %20, %for.body.epil ]
  %div = fdiv float %21, %d, !fpmath !11
  %call29 = tail call float @_Z4sqrtf(float %div) #3
  %cmp34 = fcmp ugt float %call29, %e
  %storemerge = select i1 %cmp34, float %call29, float 1.000000e+00
  store float %storemerge, float* %arrayidx, align 4, !tbaa !7
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true, %for.end, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: convergent nounwind readnone
declare dso_local float @_Z4sqrtf(float) local_unnamed_addr #1

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
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"float", !"float", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{float 2.500000e+00}
