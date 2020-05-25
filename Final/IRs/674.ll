; ModuleID = 'src/674.src'
source_filename = "src/674.src"
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
  %sext28 = add i64 %sext, 4294967296
  %idxprom2 = ashr exact i64 %sext28, 32
  %arrayidx3 = getelementptr inbounds i32, i32* %d, i64 %idxprom2
  %1 = load i32, i32* %arrayidx3, align 4, !tbaa !7
  %cmp429 = icmp slt i32 %0, %1
  br i1 %cmp429, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %if.then
  %2 = sext i32 %0 to i64
  %wide.trip.count = sext i32 %1 to i64
  %3 = sub nsw i64 %wide.trip.count, %2
  %4 = xor i64 %2, -1
  %5 = add nsw i64 %4, %wide.trip.count
  %xtraiter = and i64 %3, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %2, %for.body.preheader ]
  %h.031.prol = phi float [ %9, %for.body.prol ], [ 0.000000e+00, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body.prol ], [ %xtraiter, %for.body.preheader ]
  %arrayidx7.prol = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.prol
  %6 = load i32, i32* %arrayidx7.prol, align 4, !tbaa !7
  %arrayidx9.prol = getelementptr inbounds float, float* %a, i64 %indvars.iv.prol
  %7 = load float, float* %arrayidx9.prol, align 4, !tbaa !11
  %idxprom10.prol = sext i32 %6 to i64
  %arrayidx11.prol = getelementptr inbounds float, float* %b, i64 %idxprom10.prol
  %8 = load float, float* %arrayidx11.prol, align 4, !tbaa !11
  %9 = tail call float @llvm.fmuladd.f32(float %7, float %8, float %h.031.prol)
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !13

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %.lcssa.unr = phi float [ undef, %for.body.preheader ], [ %9, %for.body.prol ]
  %indvars.iv.unr = phi i64 [ %2, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %h.031.unr = phi float [ 0.000000e+00, %for.body.preheader ], [ %9, %for.body.prol ]
  %10 = icmp ult i64 %5, 3
  br i1 %10, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body.prol.loopexit, %for.body, %if.then
  %h.0.lcssa = phi float [ 0.000000e+00, %if.then ], [ %.lcssa.unr, %for.body.prol.loopexit ], [ %26, %for.body ]
  %arrayidx13 = getelementptr inbounds float, float* %f, i64 %idxprom
  store float %h.0.lcssa, float* %arrayidx13, align 4, !tbaa !11
  br label %if.end

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %h.031 = phi float [ %26, %for.body ], [ %h.031.unr, %for.body.prol.loopexit ]
  %arrayidx7 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv
  %11 = load i32, i32* %arrayidx7, align 4, !tbaa !7
  %arrayidx9 = getelementptr inbounds float, float* %a, i64 %indvars.iv
  %12 = load float, float* %arrayidx9, align 4, !tbaa !11
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds float, float* %b, i64 %idxprom10
  %13 = load float, float* %arrayidx11, align 4, !tbaa !11
  %14 = tail call float @llvm.fmuladd.f32(float %12, float %13, float %h.031)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %arrayidx7.1 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next
  %15 = load i32, i32* %arrayidx7.1, align 4, !tbaa !7
  %arrayidx9.1 = getelementptr inbounds float, float* %a, i64 %indvars.iv.next
  %16 = load float, float* %arrayidx9.1, align 4, !tbaa !11
  %idxprom10.1 = sext i32 %15 to i64
  %arrayidx11.1 = getelementptr inbounds float, float* %b, i64 %idxprom10.1
  %17 = load float, float* %arrayidx11.1, align 4, !tbaa !11
  %18 = tail call float @llvm.fmuladd.f32(float %16, float %17, float %14)
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %arrayidx7.2 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.1
  %19 = load i32, i32* %arrayidx7.2, align 4, !tbaa !7
  %arrayidx9.2 = getelementptr inbounds float, float* %a, i64 %indvars.iv.next.1
  %20 = load float, float* %arrayidx9.2, align 4, !tbaa !11
  %idxprom10.2 = sext i32 %19 to i64
  %arrayidx11.2 = getelementptr inbounds float, float* %b, i64 %idxprom10.2
  %21 = load float, float* %arrayidx11.2, align 4, !tbaa !11
  %22 = tail call float @llvm.fmuladd.f32(float %20, float %21, float %18)
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %arrayidx7.3 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv.next.2
  %23 = load i32, i32* %arrayidx7.3, align 4, !tbaa !7
  %arrayidx9.3 = getelementptr inbounds float, float* %a, i64 %indvars.iv.next.2
  %24 = load float, float* %arrayidx9.3, align 4, !tbaa !11
  %idxprom10.3 = sext i32 %23 to i64
  %arrayidx11.3 = getelementptr inbounds float, float* %b, i64 %idxprom10.3
  %25 = load float, float* %arrayidx11.3, align 4, !tbaa !11
  %26 = tail call float @llvm.fmuladd.f32(float %24, float %25, float %22)
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %exitcond.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.3, label %for.cond.cleanup, label %for.body

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
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.unroll.disable"}
