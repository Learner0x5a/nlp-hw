; ModuleID = 'src/589.src'
source_filename = "src/589.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture %a, float* nocapture readonly %b, i32 %c, i32 %d) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %add2 = add nsw i32 %c, 1
  %cmp3 = icmp sgt i32 %conv, %c
  br i1 %cmp3, label %if.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %land.lhs.true
  %mul = mul nsw i32 %conv, %add2
  %cmp1274 = icmp slt i32 %d, 1
  %1 = sext i32 %add2 to i64
  %2 = zext i32 %conv to i64
  %3 = add i32 %d, 1
  %4 = sext i32 %mul to i64
  %5 = sext i32 %c to i64
  %wide.trip.count = zext i32 %3 to i64
  %6 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %6, 1
  %7 = icmp eq i32 %3, 2
  %unroll_iter = sub nsw i64 %6, %xtraiter
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br label %for.body

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.end ], [ %2, %for.body.lr.ph ]
  %8 = add nsw i64 %indvars.iv81, %4
  %arrayidx = getelementptr inbounds float, float* %a, i64 %8
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !7
  br i1 %cmp1274, label %for.end, label %for.body14.preheader

for.body14.preheader:                             ; preds = %for.body
  br i1 %7, label %for.end.loopexit.unr-lcssa, label %for.body14

for.body14:                                       ; preds = %for.body14.preheader, %for.body14
  %9 = phi float [ %21, %for.body14 ], [ 0.000000e+00, %for.body14.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body14 ], [ 1, %for.body14.preheader ]
  %niter = phi i64 [ %niter.nsub.1, %for.body14 ], [ %unroll_iter, %for.body14.preheader ]
  %10 = mul nsw i64 %indvars.iv, %1
  %11 = add nsw i64 %10, %2
  %arrayidx19 = getelementptr inbounds float, float* %b, i64 %11
  %12 = load float, float* %arrayidx19, align 4, !tbaa !7
  %13 = add nsw i64 %10, %indvars.iv81
  %arrayidx24 = getelementptr inbounds float, float* %b, i64 %13
  %14 = load float, float* %arrayidx24, align 4, !tbaa !7
  %15 = tail call float @llvm.fmuladd.f32(float %12, float %14, float %9)
  store float %15, float* %arrayidx, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %16 = mul nsw i64 %indvars.iv.next, %1
  %17 = add nsw i64 %16, %2
  %arrayidx19.1 = getelementptr inbounds float, float* %b, i64 %17
  %18 = load float, float* %arrayidx19.1, align 4, !tbaa !7
  %19 = add nsw i64 %16, %indvars.iv81
  %arrayidx24.1 = getelementptr inbounds float, float* %b, i64 %19
  %20 = load float, float* %arrayidx24.1, align 4, !tbaa !7
  %21 = tail call float @llvm.fmuladd.f32(float %18, float %20, float %15)
  store float %21, float* %arrayidx, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body14

for.end.loopexit.unr-lcssa:                       ; preds = %for.body14, %for.body14.preheader
  %.lcssa.ph = phi float [ undef, %for.body14.preheader ], [ %21, %for.body14 ]
  %.unr = phi float [ 0.000000e+00, %for.body14.preheader ], [ %21, %for.body14 ]
  %indvars.iv.unr = phi i64 [ 1, %for.body14.preheader ], [ %indvars.iv.next.1, %for.body14 ]
  br i1 %lcmp.mod, label %for.end.loopexit, label %for.body14.epil

for.body14.epil:                                  ; preds = %for.end.loopexit.unr-lcssa
  %22 = mul nsw i64 %indvars.iv.unr, %1
  %23 = add nsw i64 %22, %2
  %arrayidx19.epil = getelementptr inbounds float, float* %b, i64 %23
  %24 = load float, float* %arrayidx19.epil, align 4, !tbaa !7
  %25 = add nsw i64 %22, %indvars.iv81
  %arrayidx24.epil = getelementptr inbounds float, float* %b, i64 %25
  %26 = load float, float* %arrayidx24.epil, align 4, !tbaa !7
  %27 = tail call float @llvm.fmuladd.f32(float %24, float %26, float %.unr)
  store float %27, float* %arrayidx, align 4, !tbaa !7
  br label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.end.loopexit.unr-lcssa, %for.body14.epil
  %.lcssa = phi float [ %.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %27, %for.body14.epil ]
  %28 = bitcast float %.lcssa to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body
  %29 = phi i32 [ %28, %for.end.loopexit ], [ 0, %for.body ]
  %30 = mul nsw i64 %indvars.iv81, %1
  %31 = add nsw i64 %30, %2
  %arrayidx40 = getelementptr inbounds float, float* %a, i64 %31
  %32 = bitcast float* %arrayidx40 to i32*
  store i32 %29, i32* %32, align 4, !tbaa !7
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %cmp6 = icmp slt i64 %indvars.iv81, %5
  br i1 %cmp6, label %for.body, label %if.end

if.end:                                           ; preds = %for.end, %land.lhs.true, %entry
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
