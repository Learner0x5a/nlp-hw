; ModuleID = 'src/158.src'
source_filename = "src/158.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(i32* nocapture %a, i32* nocapture readonly %b, i32 %c, i32 %d) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %div = lshr i64 %call, 6
  %call1 = tail call i64 @_Z12get_local_idj(i32 0) #2
  %conv2 = trunc i64 %call1 to i32
  %sext = shl i64 %div, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i32, i32* %b, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %sext23 = add i64 %sext, 4294967296
  %idxprom3 = ashr exact i64 %sext23, 32
  %arrayidx4 = getelementptr inbounds i32, i32* %b, i64 %idxprom3
  %1 = load i32, i32* %arrayidx4, align 4, !tbaa !7
  %add5 = add i32 %0, %conv2
  %cmp24 = icmp slt i32 %add5, %1
  br i1 %cmp24, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %entry
  %2 = sext i32 %add5 to i64
  %3 = sext i32 %1 to i64
  %4 = xor i64 %2, -1
  %5 = add nsw i64 %4, %3
  %6 = lshr i64 %5, 6
  %7 = add nuw nsw i64 %6, 1
  %xtraiter = and i64 %7, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %2, %for.body.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body.prol ], [ %xtraiter, %for.body.preheader ]
  %arrayidx8.prol = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.prol
  %8 = load i32, i32* %arrayidx8.prol, align 4, !tbaa !7
  %sub.prol = sub nsw i32 %8, %c
  store i32 %sub.prol, i32* %arrayidx8.prol, align 4, !tbaa !7
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 64
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !11

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.preheader
  %indvars.iv.unr = phi i64 [ %2, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %9 = icmp ult i64 %5, 192
  br i1 %9, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body.prol.loopexit, %for.body, %entry
  ret void

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx8 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %10 = load i32, i32* %arrayidx8, align 4, !tbaa !7
  %sub = sub nsw i32 %10, %c
  store i32 %sub, i32* %arrayidx8, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, 64
  %arrayidx8.1 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next
  %11 = load i32, i32* %arrayidx8.1, align 4, !tbaa !7
  %sub.1 = sub nsw i32 %11, %c
  store i32 %sub.1, i32* %arrayidx8.1, align 4, !tbaa !7
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 128
  %arrayidx8.2 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.1
  %12 = load i32, i32* %arrayidx8.2, align 4, !tbaa !7
  %sub.2 = sub nsw i32 %12, %c
  store i32 %sub.2, i32* %arrayidx8.2, align 4, !tbaa !7
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 192
  %arrayidx8.3 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.2
  %13 = load i32, i32* %arrayidx8.3, align 4, !tbaa !7
  %sub.3 = sub nsw i32 %13, %c
  store i32 %sub.3, i32* %arrayidx8.3, align 4, !tbaa !7
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 256
  %cmp.3 = icmp slt i64 %indvars.iv.next.3, %3
  br i1 %cmp.3, label %for.body, label %for.cond.cleanup
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none"}
!5 = !{!"int*", !"int*", !"int", !"int"}
!6 = !{!"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
