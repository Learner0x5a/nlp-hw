; ModuleID = 'src/614.src'
source_filename = "src/614.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture %b, i32 %c, i32 %d) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv = trunc i64 %call to i32
  %cmp = icmp ult i32 %conv, %c
  %cmp217 = icmp sgt i32 %d, 0
  %or.cond = and i1 %cmp, %cmp217
  br i1 %or.cond, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %entry
  %mul = mul i32 %conv, %d
  %wide.trip.count = zext i32 %d to i64
  %0 = add nsw i64 %wide.trip.count, -1
  %xtraiter = and i64 %wide.trip.count, 3
  %1 = icmp ult i64 %0, 3
  br i1 %1, label %if.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.3, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.lr.ph.new ], [ %niter.nsub.3, %for.body ]
  %2 = trunc i64 %indvars.iv to i32
  %add = add i32 %mul, %2
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds float, float* %a, i64 %idxprom
  %3 = bitcast float* %arrayidx to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !7
  %mul4 = mul nsw i32 %2, %c
  %add5 = add i32 %mul4, %conv
  %idxprom6 = zext i32 %add5 to i64
  %arrayidx7 = getelementptr inbounds float, float* %b, i64 %idxprom6
  %5 = bitcast float* %arrayidx7 to i32*
  store i32 %4, i32* %5, align 4, !tbaa !7
  %6 = trunc i64 %indvars.iv to i32
  %7 = or i32 %6, 1
  %add.1 = add i32 %mul, %7
  %idxprom.1 = zext i32 %add.1 to i64
  %arrayidx.1 = getelementptr inbounds float, float* %a, i64 %idxprom.1
  %8 = bitcast float* %arrayidx.1 to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !7
  %mul4.1 = mul nsw i32 %7, %c
  %add5.1 = add i32 %mul4.1, %conv
  %idxprom6.1 = zext i32 %add5.1 to i64
  %arrayidx7.1 = getelementptr inbounds float, float* %b, i64 %idxprom6.1
  %10 = bitcast float* %arrayidx7.1 to i32*
  store i32 %9, i32* %10, align 4, !tbaa !7
  %11 = trunc i64 %indvars.iv to i32
  %12 = or i32 %11, 2
  %add.2 = add i32 %mul, %12
  %idxprom.2 = zext i32 %add.2 to i64
  %arrayidx.2 = getelementptr inbounds float, float* %a, i64 %idxprom.2
  %13 = bitcast float* %arrayidx.2 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !7
  %mul4.2 = mul nsw i32 %12, %c
  %add5.2 = add i32 %mul4.2, %conv
  %idxprom6.2 = zext i32 %add5.2 to i64
  %arrayidx7.2 = getelementptr inbounds float, float* %b, i64 %idxprom6.2
  %15 = bitcast float* %arrayidx7.2 to i32*
  store i32 %14, i32* %15, align 4, !tbaa !7
  %16 = trunc i64 %indvars.iv to i32
  %17 = or i32 %16, 3
  %add.3 = add i32 %mul, %17
  %idxprom.3 = zext i32 %add.3 to i64
  %arrayidx.3 = getelementptr inbounds float, float* %a, i64 %idxprom.3
  %18 = bitcast float* %arrayidx.3 to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !7
  %mul4.3 = mul nsw i32 %17, %c
  %add5.3 = add i32 %mul4.3, %conv
  %idxprom6.3 = zext i32 %add5.3 to i64
  %arrayidx7.3 = getelementptr inbounds float, float* %b, i64 %idxprom6.3
  %20 = bitcast float* %arrayidx7.3 to i32*
  store i32 %19, i32* %20, align 4, !tbaa !7
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %niter.nsub.3 = add i64 %niter, -4
  %niter.ncmp.3 = icmp eq i64 %niter.nsub.3, 0
  br i1 %niter.ncmp.3, label %if.end.loopexit.unr-lcssa, label %for.body

if.end.loopexit.unr-lcssa:                        ; preds = %for.body, %for.body.lr.ph
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.3, %for.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %if.end, label %for.body.epil

for.body.epil:                                    ; preds = %if.end.loopexit.unr-lcssa, %for.body.epil
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %for.body.epil ], [ %indvars.iv.unr, %if.end.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body.epil ], [ %xtraiter, %if.end.loopexit.unr-lcssa ]
  %21 = trunc i64 %indvars.iv.epil to i32
  %add.epil = add i32 %mul, %21
  %idxprom.epil = zext i32 %add.epil to i64
  %arrayidx.epil = getelementptr inbounds float, float* %a, i64 %idxprom.epil
  %22 = bitcast float* %arrayidx.epil to i32*
  %23 = load i32, i32* %22, align 4, !tbaa !7
  %mul4.epil = mul nsw i32 %21, %c
  %add5.epil = add i32 %mul4.epil, %conv
  %idxprom6.epil = zext i32 %add5.epil to i64
  %arrayidx7.epil = getelementptr inbounds float, float* %b, i64 %idxprom6.epil
  %24 = bitcast float* %arrayidx7.epil to i32*
  store i32 %23, i32* %24, align 4, !tbaa !7
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %if.end, label %for.body.epil, !llvm.loop !11

if.end:                                           ; preds = %if.end.loopexit.unr-lcssa, %for.body.epil, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

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
!5 = !{!"float*", !"float*", !"int", !"int"}
!6 = !{!"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
