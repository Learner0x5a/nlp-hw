; ModuleID = 'src/585.src'
source_filename = "src/585.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture %a, float* nocapture readonly %b, i32 %c, i32 %d) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %cmp = icmp sgt i32 %conv, 0
  %cmp2 = icmp slt i32 %conv, %c
  %or.cond = and i1 %cmp, %cmp2
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %add4 = add i32 %c, 1
  %mul = mul nsw i32 %conv, %add4
  %add5 = add nsw i32 %mul, %conv
  %idxprom = sext i32 %add5 to i64
  %arrayidx = getelementptr inbounds float, float* %a, i64 %idxprom
  store float 1.000000e+00, float* %arrayidx, align 4, !tbaa !7
  %add6 = add nuw nsw i32 %0, 2
  %cmp876 = icmp sgt i32 %add6, %c
  br i1 %cmp876, label %if.end, label %for.cond10.preheader.lr.ph

for.cond10.preheader.lr.ph:                       ; preds = %if.then
  %cmp1274 = icmp slt i32 %d, 1
  %1 = sext i32 %add4 to i64
  %2 = zext i32 %conv to i64
  %3 = add i32 %d, 1
  %4 = zext i32 %add6 to i64
  %5 = sext i32 %mul to i64
  %wide.trip.count = zext i32 %3 to i64
  %6 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %6, 1
  %7 = icmp eq i32 %3, 2
  %unroll_iter = sub nsw i64 %6, %xtraiter
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.end, %for.cond10.preheader.lr.ph
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.end ], [ %4, %for.cond10.preheader.lr.ph ]
  %.pre88 = add nsw i64 %indvars.iv81, %5
  br i1 %cmp1274, label %for.end, label %for.body14.lr.ph

for.body14.lr.ph:                                 ; preds = %for.cond10.preheader
  %arrayidx30 = getelementptr inbounds float, float* %a, i64 %.pre88
  %.pre = load float, float* %arrayidx30, align 4, !tbaa !7
  br i1 %7, label %for.end.loopexit.unr-lcssa, label %for.body14

for.body14:                                       ; preds = %for.body14.lr.ph, %for.body14
  %8 = phi float [ %20, %for.body14 ], [ %.pre, %for.body14.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body14 ], [ 1, %for.body14.lr.ph ]
  %niter = phi i64 [ %niter.nsub.1, %for.body14 ], [ %unroll_iter, %for.body14.lr.ph ]
  %9 = mul nsw i64 %indvars.iv, %1
  %10 = add nsw i64 %9, %2
  %arrayidx19 = getelementptr inbounds float, float* %b, i64 %10
  %11 = load float, float* %arrayidx19, align 4, !tbaa !7
  %12 = add nsw i64 %9, %indvars.iv81
  %arrayidx24 = getelementptr inbounds float, float* %b, i64 %12
  %13 = load float, float* %arrayidx24, align 4, !tbaa !7
  %14 = tail call float @llvm.fmuladd.f32(float %11, float %13, float %8)
  store float %14, float* %arrayidx30, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %15 = mul nsw i64 %indvars.iv.next, %1
  %16 = add nsw i64 %15, %2
  %arrayidx19.1 = getelementptr inbounds float, float* %b, i64 %16
  %17 = load float, float* %arrayidx19.1, align 4, !tbaa !7
  %18 = add nsw i64 %15, %indvars.iv81
  %arrayidx24.1 = getelementptr inbounds float, float* %b, i64 %18
  %19 = load float, float* %arrayidx24.1, align 4, !tbaa !7
  %20 = tail call float @llvm.fmuladd.f32(float %17, float %19, float %14)
  store float %20, float* %arrayidx30, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body14

for.end.loopexit.unr-lcssa:                       ; preds = %for.body14, %for.body14.lr.ph
  %.unr = phi float [ %.pre, %for.body14.lr.ph ], [ %20, %for.body14 ]
  %indvars.iv.unr = phi i64 [ 1, %for.body14.lr.ph ], [ %indvars.iv.next.1, %for.body14 ]
  br i1 %lcmp.mod, label %for.end, label %for.body14.epil

for.body14.epil:                                  ; preds = %for.end.loopexit.unr-lcssa
  %21 = mul nsw i64 %indvars.iv.unr, %1
  %22 = add nsw i64 %21, %2
  %arrayidx19.epil = getelementptr inbounds float, float* %b, i64 %22
  %23 = load float, float* %arrayidx19.epil, align 4, !tbaa !7
  %24 = add nsw i64 %21, %indvars.iv81
  %arrayidx24.epil = getelementptr inbounds float, float* %b, i64 %24
  %25 = load float, float* %arrayidx24.epil, align 4, !tbaa !7
  %26 = tail call float @llvm.fmuladd.f32(float %23, float %25, float %.unr)
  store float %26, float* %arrayidx30, align 4, !tbaa !7
  br label %for.end

for.end:                                          ; preds = %for.body14.epil, %for.end.loopexit.unr-lcssa, %for.cond10.preheader
  %arrayidx35 = getelementptr inbounds float, float* %a, i64 %.pre88
  %27 = bitcast float* %arrayidx35 to i32*
  %28 = load i32, i32* %27, align 4, !tbaa !7
  %29 = mul nsw i64 %indvars.iv81, %1
  %30 = add nsw i64 %29, %2
  %arrayidx40 = getelementptr inbounds float, float* %a, i64 %30
  %31 = bitcast float* %arrayidx40 to i32*
  store i32 %28, i32* %31, align 4, !tbaa !7
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next82 to i32
  %exitcond87 = icmp eq i32 %add4, %lftr.wideiv
  br i1 %exitcond87, label %if.end, label %for.cond10.preheader

if.end:                                           ; preds = %for.end, %if.then, %entry
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
!3 = !{i32 1, i32 1, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"int", !"int"}
!6 = !{!"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
