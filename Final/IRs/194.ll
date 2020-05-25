; ModuleID = 'src/194.src'
source_filename = "src/194.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(i32* nocapture %a, i32* nocapture %b, i32* nocapture readonly %c, i32* nocapture readonly %d, i32 %e, i32 %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z15get_global_sizej(i32 0) #2
  %conv2 = trunc i64 %call1 to i32
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i32, i32* %c, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %cmp = icmp slt i32 %0, %e
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx5 = getelementptr inbounds i32, i32* %d, i64 %idxprom
  %1 = load i32, i32* %arrayidx5, align 4, !tbaa !7
  %idxprom6 = sext i32 %f to i64
  %arrayidx7 = getelementptr inbounds i32, i32* %a, i64 %idxprom6
  %l.047 = add nsw i32 %0, 1
  %cmp848 = icmp slt i32 %l.047, %1
  br i1 %cmp848, label %for.body.lver.check, label %for.cond.cleanup

for.body.lver.check:                              ; preds = %if.end
  %2 = sext i32 %0 to i64
  %3 = add nsw i64 %2, 1
  %4 = add i32 %1, -2
  %5 = icmp sgt i32 %0, %4
  br i1 %5, label %for.body.lver.orig.preheader, label %for.body.ph

for.body.lver.orig.preheader:                     ; preds = %for.body.lver.check
  %6 = xor i32 %0, 1
  %7 = add i32 %1, %6
  %8 = add i32 %1, -2
  %xtraiter = and i32 %7, 1
  %lcmp.mod = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.lver.orig.prol.loopexit, label %for.body.lver.orig.prol

for.body.lver.orig.prol:                          ; preds = %for.body.lver.orig.preheader
  %arrayidx11.lver.orig.prol = getelementptr inbounds i32, i32* %arrayidx7, i64 %3
  %9 = load i32, i32* %arrayidx11.lver.orig.prol, align 4, !tbaa !7
  %idxprom12.lver.orig.prol = sext i32 %0 to i64
  %arrayidx13.lver.orig.prol = getelementptr inbounds i32, i32* %arrayidx7, i64 %idxprom12.lver.orig.prol
  %10 = load i32, i32* %arrayidx13.lver.orig.prol, align 4, !tbaa !7
  %add14.lver.orig.prol = add nsw i32 %10, %9
  store i32 %add14.lver.orig.prol, i32* %arrayidx11.lver.orig.prol, align 4, !tbaa !7
  %indvars.iv.next.lver.orig.prol = add nsw i64 %2, 2
  %11 = trunc i64 %3 to i32
  br label %for.body.lver.orig.prol.loopexit

for.body.lver.orig.prol.loopexit:                 ; preds = %for.body.lver.orig.preheader, %for.body.lver.orig.prol
  %indvars.iv.lver.orig.unr = phi i64 [ %3, %for.body.lver.orig.preheader ], [ %indvars.iv.next.lver.orig.prol, %for.body.lver.orig.prol ]
  %l.0.in49.lver.orig.unr = phi i32 [ %0, %for.body.lver.orig.preheader ], [ %11, %for.body.lver.orig.prol ]
  %12 = icmp eq i32 %8, %0
  br i1 %12, label %for.cond.cleanup, label %for.body.lver.orig

for.body.lver.orig:                               ; preds = %for.body.lver.orig.prol.loopexit, %for.body.lver.orig
  %indvars.iv.lver.orig = phi i64 [ %indvars.iv.next.lver.orig.1, %for.body.lver.orig ], [ %indvars.iv.lver.orig.unr, %for.body.lver.orig.prol.loopexit ]
  %l.0.in49.lver.orig = phi i32 [ %17, %for.body.lver.orig ], [ %l.0.in49.lver.orig.unr, %for.body.lver.orig.prol.loopexit ]
  %arrayidx11.lver.orig = getelementptr inbounds i32, i32* %arrayidx7, i64 %indvars.iv.lver.orig
  %13 = load i32, i32* %arrayidx11.lver.orig, align 4, !tbaa !7
  %idxprom12.lver.orig = sext i32 %l.0.in49.lver.orig to i64
  %arrayidx13.lver.orig = getelementptr inbounds i32, i32* %arrayidx7, i64 %idxprom12.lver.orig
  %14 = load i32, i32* %arrayidx13.lver.orig, align 4, !tbaa !7
  %add14.lver.orig = add nsw i32 %14, %13
  store i32 %add14.lver.orig, i32* %arrayidx11.lver.orig, align 4, !tbaa !7
  %indvars.iv.next.lver.orig = add i64 %indvars.iv.lver.orig, 1
  %arrayidx11.lver.orig.1 = getelementptr inbounds i32, i32* %arrayidx7, i64 %indvars.iv.next.lver.orig
  %15 = load i32, i32* %arrayidx11.lver.orig.1, align 4, !tbaa !7
  %sext54 = shl i64 %indvars.iv.lver.orig, 32
  %idxprom12.lver.orig.1 = ashr exact i64 %sext54, 32
  %arrayidx13.lver.orig.1 = getelementptr inbounds i32, i32* %arrayidx7, i64 %idxprom12.lver.orig.1
  %16 = load i32, i32* %arrayidx13.lver.orig.1, align 4, !tbaa !7
  %add14.lver.orig.1 = add nsw i32 %16, %15
  store i32 %add14.lver.orig.1, i32* %arrayidx11.lver.orig.1, align 4, !tbaa !7
  %indvars.iv.next.lver.orig.1 = add i64 %indvars.iv.lver.orig, 2
  %17 = trunc i64 %indvars.iv.next.lver.orig to i32
  %lftr.wideiv.lver.orig.1 = trunc i64 %indvars.iv.next.lver.orig.1 to i32
  %exitcond.lver.orig.1 = icmp eq i32 %1, %lftr.wideiv.lver.orig.1
  br i1 %exitcond.lver.orig.1, label %for.cond.cleanup, label %for.body.lver.orig

for.body.ph:                                      ; preds = %for.body.lver.check
  %18 = add nsw i64 %2, %idxprom6
  %scevgep = getelementptr i32, i32* %a, i64 %18
  %load_initial = load i32, i32* %scevgep, align 4
  %19 = xor i32 %0, 3
  %20 = add i32 %1, %19
  %21 = add i32 %1, -2
  %22 = sub i32 %21, %0
  %xtraiter52 = and i32 %20, 3
  %lcmp.mod53 = icmp eq i32 %xtraiter52, 0
  br i1 %lcmp.mod53, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.ph, %for.body.prol
  %store_forwarded.prol = phi i32 [ %add14.prol, %for.body.prol ], [ %load_initial, %for.body.ph ]
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body.prol ], [ %3, %for.body.ph ]
  %prol.iter = phi i32 [ %prol.iter.sub, %for.body.prol ], [ %xtraiter52, %for.body.ph ]
  %arrayidx11.prol = getelementptr inbounds i32, i32* %arrayidx7, i64 %indvars.iv.prol
  %23 = load i32, i32* %arrayidx11.prol, align 4, !tbaa !7
  %add14.prol = add nsw i32 %store_forwarded.prol, %23
  store i32 %add14.prol, i32* %arrayidx11.prol, align 4, !tbaa !7
  %indvars.iv.next.prol = add i64 %indvars.iv.prol, 1
  %prol.iter.sub = add i32 %prol.iter, -1
  %prol.iter.cmp = icmp eq i32 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body.prol.loopexit, label %for.body.prol, !llvm.loop !11

for.body.prol.loopexit:                           ; preds = %for.body.prol, %for.body.ph
  %store_forwarded.unr = phi i32 [ %load_initial, %for.body.ph ], [ %add14.prol, %for.body.prol ]
  %indvars.iv.unr = phi i64 [ %3, %for.body.ph ], [ %indvars.iv.next.prol, %for.body.prol ]
  %24 = icmp ult i32 %22, 3
  br i1 %24, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body.prol.loopexit, %for.body, %for.body.lver.orig.prol.loopexit, %for.body.lver.orig, %if.end
  %cmp17 = icmp slt i32 %conv, %conv2
  br i1 %cmp17, label %if.then19, label %cleanup

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %store_forwarded = phi i32 [ %add14.3, %for.body ], [ %store_forwarded.unr, %for.body.prol.loopexit ]
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx11 = getelementptr inbounds i32, i32* %arrayidx7, i64 %indvars.iv
  %25 = load i32, i32* %arrayidx11, align 4, !tbaa !7
  %add14 = add nsw i32 %store_forwarded, %25
  store i32 %add14, i32* %arrayidx11, align 4, !tbaa !7
  %indvars.iv.next = add i64 %indvars.iv, 1
  %arrayidx11.1 = getelementptr inbounds i32, i32* %arrayidx7, i64 %indvars.iv.next
  %26 = load i32, i32* %arrayidx11.1, align 4, !tbaa !7
  %add14.1 = add nsw i32 %add14, %26
  store i32 %add14.1, i32* %arrayidx11.1, align 4, !tbaa !7
  %indvars.iv.next.1 = add i64 %indvars.iv, 2
  %arrayidx11.2 = getelementptr inbounds i32, i32* %arrayidx7, i64 %indvars.iv.next.1
  %27 = load i32, i32* %arrayidx11.2, align 4, !tbaa !7
  %add14.2 = add nsw i32 %add14.1, %27
  store i32 %add14.2, i32* %arrayidx11.2, align 4, !tbaa !7
  %indvars.iv.next.2 = add i64 %indvars.iv, 3
  %arrayidx11.3 = getelementptr inbounds i32, i32* %arrayidx7, i64 %indvars.iv.next.2
  %28 = load i32, i32* %arrayidx11.3, align 4, !tbaa !7
  %add14.3 = add nsw i32 %add14.2, %28
  store i32 %add14.3, i32* %arrayidx11.3, align 4, !tbaa !7
  %indvars.iv.next.3 = add i64 %indvars.iv, 4
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.3 = icmp eq i32 %1, %lftr.wideiv.3
  br i1 %exitcond.3, label %for.cond.cleanup, label %for.body

if.then19:                                        ; preds = %for.cond.cleanup
  %sub20 = add nsw i32 %1, -1
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds i32, i32* %arrayidx7, i64 %idxprom21
  %29 = load i32, i32* %arrayidx22, align 4, !tbaa !7
  %arrayidx24 = getelementptr inbounds i32, i32* %b, i64 %idxprom
  store i32 %29, i32* %arrayidx24, align 4, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %for.cond.cleanup, %if.then19, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z15get_global_sizej(i32) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"int*", !"int*", !"int*", !"int*", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
