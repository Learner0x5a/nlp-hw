; ModuleID = 'src/200.src'
source_filename = "src/200.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture %a, double* nocapture readonly %b, i32* nocapture readonly %c, i32* nocapture %d, i32* nocapture readonly %e, i32 %f, i32 %g) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, %g
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %idxprom = sext i32 %f to i64
  %arrayidx = getelementptr inbounds i32, i32* %e, i64 %idxprom
  %cmp2 = icmp sgt i32 %conv, 0
  %sext54 = shl i64 %call, 32
  %idxprom5 = ashr exact i64 %sext54, 32
  br i1 %cmp2, label %if.then4, label %if.end10

if.then4:                                         ; preds = %if.end
  %arrayidx6 = getelementptr inbounds i32, i32* %c, i64 %idxprom5
  %0 = load i32, i32* %arrayidx6, align 4, !tbaa !7
  %sext55 = add i64 %sext54, -4294967296
  %idxprom7 = ashr exact i64 %sext55, 32
  %arrayidx8 = getelementptr inbounds i32, i32* %arrayidx, i64 %idxprom7
  %1 = load i32, i32* %arrayidx8, align 4, !tbaa !7
  %sub9 = sub nsw i32 %0, %1
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then4
  %h.0 = phi i32 [ %sub9, %if.then4 ], [ 0, %if.end ]
  %sext = add i64 %sext54, 4294967296
  %idxprom11 = ashr exact i64 %sext, 32
  %arrayidx12 = getelementptr inbounds i32, i32* %c, i64 %idxprom11
  %2 = load i32, i32* %arrayidx12, align 4, !tbaa !7
  %arrayidx14 = getelementptr inbounds i32, i32* %arrayidx, i64 %idxprom5
  %3 = load i32, i32* %arrayidx14, align 4, !tbaa !7
  %sub15 = sub i32 %2, %3
  %cmp1856 = icmp slt i32 %h.0, %sub15
  br i1 %cmp1856, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %if.end10
  %arrayidx17 = getelementptr inbounds i32, i32* %c, i64 %idxprom5
  %4 = load i32, i32* %arrayidx17, align 4, !tbaa !7
  %5 = sext i32 %h.0 to i64
  %6 = sext i32 %4 to i64
  %wide.trip.count = sext i32 %sub15 to i64
  %7 = sub nsw i64 %wide.trip.count, %5
  %8 = xor i64 %5, -1
  %xtraiter = and i64 %7, 1
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body.prol.loopexit, label %for.body.prol

for.body.prol:                                    ; preds = %for.body.preheader
  %arrayidx21.prol = getelementptr inbounds double, double* %b, i64 %6
  %9 = bitcast double* %arrayidx21.prol to i64*
  %10 = load i64, i64* %9, align 8, !tbaa !11
  %arrayidx23.prol = getelementptr inbounds double, double* %a, i64 %5
  %11 = bitcast double* %arrayidx23.prol to i64*
  store i64 %10, i64* %11, align 8, !tbaa !11
  %arrayidx25.prol = getelementptr inbounds i32, i32* %e, i64 %6
  %12 = load i32, i32* %arrayidx25.prol, align 4, !tbaa !7
  %arrayidx27.prol = getelementptr inbounds i32, i32* %d, i64 %5
  store i32 %12, i32* %arrayidx27.prol, align 4, !tbaa !7
  %indvars.iv.next60.prol = add nsw i64 %6, 1
  %indvars.iv.next.prol = add nsw i64 %5, 1
  br label %for.body.prol.loopexit

for.body.prol.loopexit:                           ; preds = %for.body.preheader, %for.body.prol
  %indvars.iv59.unr = phi i64 [ %6, %for.body.preheader ], [ %indvars.iv.next60.prol, %for.body.prol ]
  %indvars.iv.unr = phi i64 [ %5, %for.body.preheader ], [ %indvars.iv.next.prol, %for.body.prol ]
  %13 = sub nsw i64 0, %wide.trip.count
  %14 = icmp eq i64 %8, %13
  br i1 %14, label %cleanup, label %for.body

for.body:                                         ; preds = %for.body.prol.loopexit, %for.body
  %indvars.iv59 = phi i64 [ %indvars.iv.next60.1, %for.body ], [ %indvars.iv59.unr, %for.body.prol.loopexit ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %for.body ], [ %indvars.iv.unr, %for.body.prol.loopexit ]
  %arrayidx21 = getelementptr inbounds double, double* %b, i64 %indvars.iv59
  %15 = bitcast double* %arrayidx21 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !11
  %arrayidx23 = getelementptr inbounds double, double* %a, i64 %indvars.iv
  %17 = bitcast double* %arrayidx23 to i64*
  store i64 %16, i64* %17, align 8, !tbaa !11
  %arrayidx25 = getelementptr inbounds i32, i32* %e, i64 %indvars.iv59
  %18 = load i32, i32* %arrayidx25, align 4, !tbaa !7
  %arrayidx27 = getelementptr inbounds i32, i32* %d, i64 %indvars.iv
  store i32 %18, i32* %arrayidx27, align 4, !tbaa !7
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %arrayidx21.1 = getelementptr inbounds double, double* %b, i64 %indvars.iv.next60
  %19 = bitcast double* %arrayidx21.1 to i64*
  %20 = load i64, i64* %19, align 8, !tbaa !11
  %arrayidx23.1 = getelementptr inbounds double, double* %a, i64 %indvars.iv.next
  %21 = bitcast double* %arrayidx23.1 to i64*
  store i64 %20, i64* %21, align 8, !tbaa !11
  %arrayidx25.1 = getelementptr inbounds i32, i32* %e, i64 %indvars.iv.next60
  %22 = load i32, i32* %arrayidx25.1, align 4, !tbaa !7
  %arrayidx27.1 = getelementptr inbounds i32, i32* %d, i64 %indvars.iv.next
  store i32 %22, i32* %arrayidx27.1, align 4, !tbaa !7
  %indvars.iv.next60.1 = add nsw i64 %indvars.iv59, 2
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.1, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body.prol.loopexit, %for.body, %if.end10, %entry
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
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"int*", !"int*", !"int*", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !9, i64 0}
