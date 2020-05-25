; ModuleID = 'src/181.src'
source_filename = "src/181.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(i32* nocapture %a, i32* nocapture readonly %b, i32* nocapture readonly %c, i32* nocapture readonly %d) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z15get_global_sizej(i32 0) #2
  %conv2 = trunc i64 %call1 to i32
  %cmp = icmp slt i32 %conv, %conv2
  %cmp455 = icmp sgt i32 %conv, 0
  %or.cond = and i1 %cmp, %cmp455
  br i1 %or.cond, label %for.body.preheader, label %if.end30

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = and i64 %call, 4294967295
  %0 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %call, 7
  %1 = icmp ult i64 %0, 7
  br i1 %1, label %if.end.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %indvars.iv58 = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next59.7, %for.body ]
  %g.057 = phi i32 [ 0, %for.body.preheader.new ], [ %add.7, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.7, %for.body ]
  %arrayidx = getelementptr inbounds i32, i32* %b, i64 %indvars.iv58
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %add = add nsw i32 %2, %g.057
  %indvars.iv.next59 = or i64 %indvars.iv58, 1
  %arrayidx.1 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next59
  %3 = load i32, i32* %arrayidx.1, align 4, !tbaa !7
  %add.1 = add nsw i32 %3, %add
  %indvars.iv.next59.1 = or i64 %indvars.iv58, 2
  %arrayidx.2 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next59.1
  %4 = load i32, i32* %arrayidx.2, align 4, !tbaa !7
  %add.2 = add nsw i32 %4, %add.1
  %indvars.iv.next59.2 = or i64 %indvars.iv58, 3
  %arrayidx.3 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next59.2
  %5 = load i32, i32* %arrayidx.3, align 4, !tbaa !7
  %add.3 = add nsw i32 %5, %add.2
  %indvars.iv.next59.3 = or i64 %indvars.iv58, 4
  %arrayidx.4 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next59.3
  %6 = load i32, i32* %arrayidx.4, align 4, !tbaa !7
  %add.4 = add nsw i32 %6, %add.3
  %indvars.iv.next59.4 = or i64 %indvars.iv58, 5
  %arrayidx.5 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next59.4
  %7 = load i32, i32* %arrayidx.5, align 4, !tbaa !7
  %add.5 = add nsw i32 %7, %add.4
  %indvars.iv.next59.5 = or i64 %indvars.iv58, 6
  %arrayidx.6 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next59.5
  %8 = load i32, i32* %arrayidx.6, align 4, !tbaa !7
  %add.6 = add nsw i32 %8, %add.5
  %indvars.iv.next59.6 = or i64 %indvars.iv58, 7
  %arrayidx.7 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv.next59.6
  %9 = load i32, i32* %arrayidx.7, align 4, !tbaa !7
  %add.7 = add nsw i32 %9, %add.6
  %indvars.iv.next59.7 = add nuw nsw i64 %indvars.iv58, 8
  %niter.nsub.7 = add i64 %niter, -8
  %niter.ncmp.7 = icmp eq i64 %niter.nsub.7, 0
  br i1 %niter.ncmp.7, label %if.end.unr-lcssa, label %for.body

if.end.unr-lcssa:                                 ; preds = %for.body, %for.body.preheader
  %add.lcssa.ph = phi i32 [ undef, %for.body.preheader ], [ %add.7, %for.body ]
  %indvars.iv58.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next59.7, %for.body ]
  %g.057.unr = phi i32 [ 0, %for.body.preheader ], [ %add.7, %for.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %if.end, label %for.body.epil

for.body.epil:                                    ; preds = %if.end.unr-lcssa, %for.body.epil
  %indvars.iv58.epil = phi i64 [ %indvars.iv.next59.epil, %for.body.epil ], [ %indvars.iv58.unr, %if.end.unr-lcssa ]
  %g.057.epil = phi i32 [ %add.epil, %for.body.epil ], [ %g.057.unr, %if.end.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body.epil ], [ %xtraiter, %if.end.unr-lcssa ]
  %arrayidx.epil = getelementptr inbounds i32, i32* %b, i64 %indvars.iv58.epil
  %10 = load i32, i32* %arrayidx.epil, align 4, !tbaa !7
  %add.epil = add nsw i32 %10, %g.057.epil
  %indvars.iv.next59.epil = add nuw nsw i64 %indvars.iv58.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %if.end, label %for.body.epil, !llvm.loop !11

if.end:                                           ; preds = %for.body.epil, %if.end.unr-lcssa
  %add.lcssa = phi i32 [ %add.lcssa.ph, %if.end.unr-lcssa ], [ %add.epil, %for.body.epil ]
  %cmp6 = icmp sgt i32 %add.lcssa, 0
  br i1 %cmp6, label %if.then8, label %if.end30

if.then8:                                         ; preds = %if.end
  %cmp9 = icmp eq i32 %conv, 0
  %.pre = shl i64 %call, 32
  %.pre60 = ashr exact i64 %.pre, 32
  br i1 %cmp9, label %cond.end, label %cond.false

cond.false:                                       ; preds = %if.then8
  %arrayidx12 = getelementptr inbounds i32, i32* %c, i64 %.pre60
  %11 = load i32, i32* %arrayidx12, align 4, !tbaa !7
  %add13 = add nsw i32 %11, 1
  br label %cond.end

cond.end:                                         ; preds = %if.then8, %cond.false
  %cond = phi i32 [ %add13, %cond.false ], [ 0, %if.then8 ]
  %arrayidx15 = getelementptr inbounds i32, i32* %d, i64 %.pre60
  %12 = load i32, i32* %arrayidx15, align 4, !tbaa !7
  %cmp1853 = icmp sgt i32 %cond, %12
  br i1 %cmp1853, label %if.end30, label %for.body21.preheader

for.body21.preheader:                             ; preds = %cond.end
  %13 = sext i32 %cond to i64
  %14 = sext i32 %12 to i64
  br label %for.body21

for.body21:                                       ; preds = %for.body21.preheader, %for.body21
  %indvars.iv = phi i64 [ %13, %for.body21.preheader ], [ %indvars.iv.next, %for.body21 ]
  %arrayidx23 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %15 = load i32, i32* %arrayidx23, align 4, !tbaa !7
  %add24 = add nsw i32 %15, %add.lcssa
  store i32 %add24, i32* %arrayidx23, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp18 = icmp slt i64 %indvars.iv, %14
  br i1 %cmp18, label %for.body21, label %if.end30

if.end30:                                         ; preds = %for.body21, %cond.end, %entry, %if.end
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
!3 = !{i32 1, i32 1, i32 1, i32 1}
!4 = !{!"none", !"none", !"none", !"none"}
!5 = !{!"int*", !"int*", !"int*", !"int*"}
!6 = !{!"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
