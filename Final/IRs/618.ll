; ModuleID = 'src/618.src'
source_filename = "src/618.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(i32 %a, i32 %b, i32 %c, i32 %d, float* nocapture readonly %e, float* nocapture readonly %f, float* nocapture %g) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %div = sdiv i32 %c, 2
  %div1 = sdiv i32 %d, 2
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv = trunc i64 %call to i32
  %rem = srem i32 %conv, %a
  %div2 = sdiv i32 %conv, %a
  %cmp4 = icmp slt i32 %div2, %b
  br i1 %cmp4, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %cmp796 = icmp sgt i32 %c, 0
  br i1 %cmp796, label %for.body.lr.ph, label %for.end42

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sub = sub nsw i32 %rem, %div
  %cmp1592 = icmp slt i32 %d, 1
  %sub18 = sub nsw i32 %div2, %div1
  %0 = sext i32 %d to i64
  %wide.trip.count108 = zext i32 %c to i64
  %wide.trip.count = zext i32 %d to i64
  br label %for.body

for.body:                                         ; preds = %for.inc40, %for.body.lr.ph
  %indvars.iv104 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next105, %for.inc40 ]
  %m.0100 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %m.4, %for.inc40 ]
  %n.097 = phi i32 [ 0, %for.body.lr.ph ], [ %inc41, %for.inc40 ]
  %add = add nsw i32 %n.097, %sub
  %cmp9 = icmp slt i32 %add, 0
  %cmp11 = icmp sge i32 %add, %a
  %or.cond.not = or i1 %cmp11, %cmp9
  %brmerge = or i1 %or.cond.not, %cmp1592
  br i1 %brmerge, label %for.inc40, label %for.body17.lr.ph

for.body17.lr.ph:                                 ; preds = %for.body
  %1 = mul nsw i64 %indvars.iv104, %0
  br label %for.body17

for.body17:                                       ; preds = %for.inc, %for.body17.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %m.195 = phi float [ %m.0100, %for.body17.lr.ph ], [ %m.3, %for.inc ]
  %o.093 = phi i32 [ 0, %for.body17.lr.ph ], [ %inc, %for.inc ]
  %add19 = add nsw i32 %o.093, %sub18
  %cmp20 = icmp sgt i32 %add19, -1
  %cmp23 = icmp slt i32 %add19, %b
  %or.cond90 = and i1 %cmp20, %cmp23
  br i1 %or.cond90, label %land.lhs.true25, label %for.inc

land.lhs.true25:                                  ; preds = %for.body17
  %2 = add nsw i64 %indvars.iv, %1
  %arrayidx = getelementptr inbounds float, float* %e, i64 %2
  %3 = load float, float* %arrayidx, align 4, !tbaa !7
  %cmp27 = fcmp une float %3, 0.000000e+00
  br i1 %cmp27, label %if.then29, label %for.inc

if.then29:                                        ; preds = %land.lhs.true25
  %mul30 = mul nsw i32 %add19, %a
  %add31 = add nsw i32 %mul30, %add
  %idxprom32 = sext i32 %add31 to i64
  %arrayidx33 = getelementptr inbounds float, float* %f, i64 %idxprom32
  %4 = load float, float* %arrayidx33, align 4, !tbaa !7
  %cmp34 = fcmp ogt float %4, %m.195
  %m.2 = select i1 %cmp34, float %4, float %m.195
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %for.body17, %land.lhs.true25
  %m.3 = phi float [ %m.195, %land.lhs.true25 ], [ %m.195, %for.body17 ], [ %m.2, %if.then29 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %inc = add nuw nsw i32 %o.093, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.inc40, label %for.body17

for.inc40:                                        ; preds = %for.inc, %for.body
  %m.4 = phi float [ %m.0100, %for.body ], [ %m.3, %for.inc ]
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %inc41 = add nuw nsw i32 %n.097, 1
  %exitcond109 = icmp eq i64 %indvars.iv.next105, %wide.trip.count108
  br i1 %exitcond109, label %for.end42, label %for.body

for.end42:                                        ; preds = %for.inc40, %for.cond.preheader
  %m.0.lcssa = phi float [ 0.000000e+00, %for.cond.preheader ], [ %m.4, %for.inc40 ]
  %mul43 = mul nsw i32 %rem, %b
  %add44 = add nsw i32 %mul43, %div2
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds float, float* %g, i64 %idxprom45
  store float %m.0.lcssa, float* %arrayidx46, align 4, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end42
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
!3 = !{i32 0, i32 0, i32 0, i32 0, i32 2, i32 1, i32 1}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"int", !"int", !"int", !"int", !"float*", !"float*", !"float*"}
!6 = !{!"", !"", !"", !"", !"const", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
