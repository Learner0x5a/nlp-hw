; ModuleID = 'src/631.src'
source_filename = "src/631.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, i64* nocapture readonly %b, float* nocapture readonly %c, float* nocapture readonly %d, float* nocapture %e, i32* nocapture readonly %f, i8* nocapture %g, float* nocapture %h, i32 %i, i32 %j, i64 %k, i32 %l) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #4
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %cmp = icmp slt i32 %conv, %i
  br i1 %cmp, label %if.then, label %if.end61

if.then:                                          ; preds = %entry
  %conv2 = trunc i64 %call1 to i32
  %cmp4 = icmp eq i32 %conv2, 0
  %cmp7108 = icmp sgt i32 %j, 0
  %or.cond = and i1 %cmp4, %cmp7108
  br i1 %or.cond, label %for.body.preheader, label %if.end

for.body.preheader:                               ; preds = %if.then
  %0 = sext i32 %i to i64
  %wide.trip.count115 = zext i32 %j to i64
  %1 = add nsw i64 %wide.trip.count115, -1
  %xtraiter118 = and i64 %wide.trip.count115, 3
  %2 = icmp ult i64 %1, 3
  br i1 %2, label %if.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter120 = sub nsw i64 %wide.trip.count115, %xtraiter118
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv112 = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next113.3, %for.body ]
  %niter121 = phi i64 [ %unroll_iter120, %for.body.preheader.new ], [ %niter121.nsub.3, %for.body ]
  %3 = mul nsw i64 %indvars.iv112, %0
  %add = add nsw i64 %3, %k
  %arrayidx = getelementptr inbounds float, float* %d, i64 %add
  %4 = bitcast float* %arrayidx to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !7
  %arrayidx10 = getelementptr inbounds float, float* %h, i64 %indvars.iv112
  %6 = bitcast float* %arrayidx10 to i32*
  store i32 %5, i32* %6, align 4, !tbaa !7
  %indvars.iv.next113 = or i64 %indvars.iv112, 1
  %7 = mul nsw i64 %indvars.iv.next113, %0
  %add.1 = add nsw i64 %7, %k
  %arrayidx.1 = getelementptr inbounds float, float* %d, i64 %add.1
  %8 = bitcast float* %arrayidx.1 to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !7
  %arrayidx10.1 = getelementptr inbounds float, float* %h, i64 %indvars.iv.next113
  %10 = bitcast float* %arrayidx10.1 to i32*
  store i32 %9, i32* %10, align 4, !tbaa !7
  %indvars.iv.next113.1 = or i64 %indvars.iv112, 2
  %11 = mul nsw i64 %indvars.iv.next113.1, %0
  %add.2 = add nsw i64 %11, %k
  %arrayidx.2 = getelementptr inbounds float, float* %d, i64 %add.2
  %12 = bitcast float* %arrayidx.2 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !7
  %arrayidx10.2 = getelementptr inbounds float, float* %h, i64 %indvars.iv.next113.1
  %14 = bitcast float* %arrayidx10.2 to i32*
  store i32 %13, i32* %14, align 4, !tbaa !7
  %indvars.iv.next113.2 = or i64 %indvars.iv112, 3
  %15 = mul nsw i64 %indvars.iv.next113.2, %0
  %add.3 = add nsw i64 %15, %k
  %arrayidx.3 = getelementptr inbounds float, float* %d, i64 %add.3
  %16 = bitcast float* %arrayidx.3 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !7
  %arrayidx10.3 = getelementptr inbounds float, float* %h, i64 %indvars.iv.next113.2
  %18 = bitcast float* %arrayidx10.3 to i32*
  store i32 %17, i32* %18, align 4, !tbaa !7
  %indvars.iv.next113.3 = add nuw nsw i64 %indvars.iv112, 4
  %niter121.nsub.3 = add i64 %niter121, -4
  %niter121.ncmp.3 = icmp eq i64 %niter121.nsub.3, 0
  br i1 %niter121.ncmp.3, label %if.end.loopexit.unr-lcssa, label %for.body

if.end.loopexit.unr-lcssa:                        ; preds = %for.body, %for.body.preheader
  %indvars.iv112.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next113.3, %for.body ]
  %lcmp.mod119 = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119, label %if.end, label %for.body.epil

for.body.epil:                                    ; preds = %if.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv112.epil = phi i64 [ %indvars.iv.next113.epil, %for.body.epil ], [ %indvars.iv112.unr, %if.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body.epil ], [ %xtraiter118, %if.end.loopexit.unr-lcssa ]
  %19 = mul nsw i64 %indvars.iv112.epil, %0
  %add.epil = add nsw i64 %19, %k
  %arrayidx.epil = getelementptr inbounds float, float* %d, i64 %add.epil
  %20 = bitcast float* %arrayidx.epil to i32*
  %21 = load i32, i32* %20, align 4, !tbaa !7
  %arrayidx10.epil = getelementptr inbounds float, float* %h, i64 %indvars.iv112.epil
  %22 = bitcast float* %arrayidx10.epil to i32*
  store i32 %21, i32* %22, align 4, !tbaa !7
  %indvars.iv.next113.epil = add nuw nsw i64 %indvars.iv112.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %if.end, label %for.body.epil, !llvm.loop !11

if.end:                                           ; preds = %if.end.loopexit.unr-lcssa, %for.body.epil, %if.then
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %cmp7108, label %for.body16.preheader, label %for.cond.cleanup15

for.body16.preheader:                             ; preds = %if.end
  %23 = sext i32 %i to i64
  %sext117 = shl i64 %call, 32
  %24 = ashr exact i64 %sext117, 32
  %wide.trip.count = zext i32 %j to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %25 = icmp eq i32 %j, 1
  br i1 %25, label %for.cond.cleanup15.loopexit.unr-lcssa, label %for.body16.preheader.new

for.body16.preheader.new:                         ; preds = %for.body16.preheader
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  br label %for.body16

for.cond.cleanup15.loopexit.unr-lcssa:            ; preds = %for.body16, %for.body16.preheader
  %.lcssa.ph = phi float [ undef, %for.body16.preheader ], [ %42, %for.body16 ]
  %indvars.iv.unr = phi i64 [ 0, %for.body16.preheader ], [ %indvars.iv.next.1, %for.body16 ]
  %p.0107.unr = phi float [ 0.000000e+00, %for.body16.preheader ], [ %42, %for.body16 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.cond.cleanup15, label %for.body16.epil

for.body16.epil:                                  ; preds = %for.cond.cleanup15.loopexit.unr-lcssa
  %26 = mul nsw i64 %indvars.iv.unr, %23
  %27 = add nsw i64 %26, %24
  %arrayidx20.epil = getelementptr inbounds float, float* %d, i64 %27
  %28 = load float, float* %arrayidx20.epil, align 4, !tbaa !7
  %arrayidx22.epil = getelementptr inbounds float, float* %h, i64 %indvars.iv.unr
  %29 = load float, float* %arrayidx22.epil, align 4, !tbaa !7
  %sub.epil = fsub float %28, %29
  %30 = tail call float @llvm.fmuladd.f32(float %sub.epil, float %sub.epil, float %p.0107.unr)
  br label %for.cond.cleanup15

for.cond.cleanup15:                               ; preds = %for.body16.epil, %for.cond.cleanup15.loopexit.unr-lcssa, %if.end
  %p.0.lcssa = phi float [ 0.000000e+00, %if.end ], [ %.lcssa.ph, %for.cond.cleanup15.loopexit.unr-lcssa ], [ %30, %for.body16.epil ]
  %sext = shl i64 %call, 32
  %idxprom34 = ashr exact i64 %sext, 32
  %arrayidx35 = getelementptr inbounds float, float* %a, i64 %idxprom34
  %31 = load float, float* %arrayidx35, align 4, !tbaa !7
  %mul36 = fmul float %p.0.lcssa, %31
  %arrayidx38 = getelementptr inbounds float, float* %c, i64 %idxprom34
  %32 = load float, float* %arrayidx38, align 4, !tbaa !7
  %add39 = add nsw i32 %l, 1
  %mul40 = mul nsw i32 %add39, %conv
  %cmp41 = fcmp olt float %mul36, %32
  br i1 %cmp41, label %if.then43, label %if.else

for.body16:                                       ; preds = %for.body16, %for.body16.preheader.new
  %indvars.iv = phi i64 [ 0, %for.body16.preheader.new ], [ %indvars.iv.next.1, %for.body16 ]
  %p.0107 = phi float [ 0.000000e+00, %for.body16.preheader.new ], [ %42, %for.body16 ]
  %niter = phi i64 [ %unroll_iter, %for.body16.preheader.new ], [ %niter.nsub.1, %for.body16 ]
  %33 = mul nsw i64 %indvars.iv, %23
  %34 = add nsw i64 %33, %24
  %arrayidx20 = getelementptr inbounds float, float* %d, i64 %34
  %35 = load float, float* %arrayidx20, align 4, !tbaa !7
  %arrayidx22 = getelementptr inbounds float, float* %h, i64 %indvars.iv
  %36 = load float, float* %arrayidx22, align 4, !tbaa !7
  %sub = fsub float %35, %36
  %37 = tail call float @llvm.fmuladd.f32(float %sub, float %sub, float %p.0107)
  %indvars.iv.next = or i64 %indvars.iv, 1
  %38 = mul nsw i64 %indvars.iv.next, %23
  %39 = add nsw i64 %38, %24
  %arrayidx20.1 = getelementptr inbounds float, float* %d, i64 %39
  %40 = load float, float* %arrayidx20.1, align 4, !tbaa !7
  %arrayidx22.1 = getelementptr inbounds float, float* %h, i64 %indvars.iv.next
  %41 = load float, float* %arrayidx22.1, align 4, !tbaa !7
  %sub.1 = fsub float %40, %41
  %42 = tail call float @llvm.fmuladd.f32(float %sub.1, float %sub.1, float %37)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.cond.cleanup15.loopexit.unr-lcssa, label %for.body16

if.then43:                                        ; preds = %for.cond.cleanup15
  %arrayidx45 = getelementptr inbounds i8, i8* %g, i64 %idxprom34
  store i8 49, i8* %arrayidx45, align 1, !tbaa !13
  %add46 = add nsw i32 %mul40, %l
  %sub47 = fsub float %mul36, %32
  %idxprom48 = sext i32 %add46 to i64
  %arrayidx49 = getelementptr inbounds float, float* %e, i64 %idxprom48
  store float %sub47, float* %arrayidx49, align 4, !tbaa !7
  br label %if.end61

if.else:                                          ; preds = %for.cond.cleanup15
  %arrayidx51 = getelementptr inbounds i64, i64* %b, i64 %idxprom34
  %43 = load i64, i64* %arrayidx51, align 8, !tbaa !14
  %sext104 = shl i64 %43, 32
  %idxprom53 = ashr exact i64 %sext104, 32
  %arrayidx54 = getelementptr inbounds i32, i32* %f, i64 %idxprom53
  %44 = load i32, i32* %arrayidx54, align 4, !tbaa !16
  %add55 = add nsw i32 %44, %mul40
  %sub56 = fsub float %32, %mul36
  %idxprom57 = sext i32 %add55 to i64
  %arrayidx58 = getelementptr inbounds float, float* %e, i64 %idxprom57
  %45 = load float, float* %arrayidx58, align 4, !tbaa !7
  %add59 = fadd float %sub56, %45
  store float %add59, float* %arrayidx58, align 4, !tbaa !7
  br label %if.end61

if.end61:                                         ; preds = %if.then43, %if.else, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { convergent nounwind readnone }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"long*", !"float*", !"float*", !"float*", !"int*", !"char*", !"float*", !"int", !"int", !"long", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !9, i64 0}
