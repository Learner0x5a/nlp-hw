; ModuleID = 'src/632.src'
source_filename = "src/632.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(i32* nocapture %a, i32* nocapture readonly %b, i32* nocapture readonly %c, i32 %d, i32 %e, i32 %f, i32 %g, i32* nocapture %h) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv = trunc i64 %call to i32
  %rem = srem i32 %conv, %d
  %div = sdiv i32 %conv, %d
  %mul = mul i32 %div, %e
  %add = add nsw i32 %e, 1
  %add1 = add nsw i32 %mul, %e
  %cmp = icmp ult i32 %add1, %f
  %sub = sub i32 %f, %mul
  %add3 = add i32 %sub, 1
  %0 = icmp sgt i32 %add3, 0
  %spec.store.select = select i1 %0, i32 %add3, i32 0
  %m.0 = select i1 %cmp, i32 %add, i32 %spec.store.select
  %sub8 = add i32 %mul, -1
  %add9 = add i32 %sub8, %m.0
  %cmp1080 = icmp slt i32 %mul, %add9
  br i1 %cmp1080, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %add37 = add nsw i32 %g, 1
  %1 = sext i32 %mul to i64
  %wide.trip.count = sext i32 %add9 to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc43, %entry
  ret void

for.body:                                         ; preds = %for.inc43, %for.body.lr.ph
  %indvars.iv = phi i64 [ %1, %for.body.lr.ph ], [ %3, %for.inc43 ]
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %indvars.iv
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %cmp12 = icmp eq i32 %2, %g
  %3 = add nsw i64 %indvars.iv, 1
  br i1 %cmp12, label %if.then14, label %for.inc43

if.then14:                                        ; preds = %for.body
  %arrayidx17 = getelementptr inbounds i32, i32* %b, i64 %3
  %4 = load i32, i32* %arrayidx17, align 4, !tbaa !7
  %arrayidx19 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv
  %5 = load i32, i32* %arrayidx19, align 4, !tbaa !7
  %sub20 = sub i32 %4, %5
  %cmp2478 = icmp ult i32 %rem, %sub20
  br i1 %cmp2478, label %for.body27, label %for.inc43

for.body27:                                       ; preds = %if.then14, %if.end40
  %q.079 = phi i32 [ %add41, %if.end40 ], [ %rem, %if.then14 ]
  %add29 = add i32 %q.079, %5
  %idxprom30 = zext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds i32, i32* %c, i64 %idxprom30
  %6 = load i32, i32* %arrayidx31, align 4, !tbaa !7
  %idxprom32 = sext i32 %6 to i64
  %arrayidx33 = getelementptr inbounds i32, i32* %a, i64 %idxprom32
  %7 = load i32, i32* %arrayidx33, align 4, !tbaa !7
  %cmp34 = icmp eq i32 %7, -1
  br i1 %cmp34, label %if.then36, label %if.end40

if.then36:                                        ; preds = %for.body27
  store i32 %add37, i32* %arrayidx33, align 4, !tbaa !7
  store i32 1, i32* %h, align 4, !tbaa !7
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %for.body27
  %add41 = add nsw i32 %q.079, %d
  %cmp24 = icmp ult i32 %add41, %sub20
  br i1 %cmp24, label %for.body27, label %for.inc43

for.inc43:                                        ; preds = %if.end40, %for.body, %if.then14
  %exitcond = icmp eq i64 %3, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
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
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"uint*", !"uint*", !"uint*", !"int", !"int", !"uint", !"int", !"int*"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
