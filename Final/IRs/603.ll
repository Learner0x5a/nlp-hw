; ModuleID = 'src/603.src'
source_filename = "src/603.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(i32* nocapture readonly %a, i32* nocapture readonly %b, i32* nocapture readonly %c, i8* nocapture %d, i8* nocapture %e, i8* nocapture readonly %f, i32* nocapture %g, i32 %h) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, %h
  br i1 %cmp, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %entry
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8, i8* %d, i64 %idxprom
  %0 = load i8, i8* %arrayidx, align 1, !tbaa !7
  %tobool = icmp eq i8 %0, 0
  br i1 %tobool, label %if.end26, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i8 0, i8* %arrayidx, align 1, !tbaa !7
  %arrayidx6 = getelementptr inbounds i32, i32* %a, i64 %idxprom
  %arrayidx8 = getelementptr inbounds i32, i32* %b, i64 %idxprom
  %1 = load i32, i32* %arrayidx8, align 4, !tbaa !10
  %cmp1144 = icmp sgt i32 %1, 0
  br i1 %cmp1144, label %for.body.lr.ph, label %if.end26

for.body.lr.ph:                                   ; preds = %if.then
  %2 = load i32, i32* %arrayidx6, align 4, !tbaa !10
  %arrayidx20 = getelementptr inbounds i32, i32* %g, i64 %idxprom
  %3 = sext i32 %2 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %4 = phi i32 [ %2, %for.body.lr.ph ], [ %9, %if.end ]
  %5 = phi i32 [ %1, %for.body.lr.ph ], [ %10, %if.end ]
  %indvars.iv = phi i64 [ %3, %for.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %arrayidx14 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv
  %6 = load i32, i32* %arrayidx14, align 4, !tbaa !10
  %idxprom15 = sext i32 %6 to i64
  %arrayidx16 = getelementptr inbounds i8, i8* %f, i64 %idxprom15
  %7 = load i8, i8* %arrayidx16, align 1, !tbaa !7
  %tobool17 = icmp eq i8 %7, 0
  br i1 %tobool17, label %if.then18, label %if.end

if.then18:                                        ; preds = %for.body
  %8 = load i32, i32* %arrayidx20, align 4, !tbaa !10
  %add21 = add nsw i32 %8, 1
  %arrayidx23 = getelementptr inbounds i32, i32* %g, i64 %idxprom15
  store i32 %add21, i32* %arrayidx23, align 4, !tbaa !10
  %arrayidx25 = getelementptr inbounds i8, i8* %e, i64 %idxprom15
  store i8 1, i8* %arrayidx25, align 1, !tbaa !7
  %.pre = load i32, i32* %arrayidx8, align 4, !tbaa !10
  %.pre46 = load i32, i32* %arrayidx6, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then18
  %9 = phi i32 [ %4, %for.body ], [ %.pre46, %if.then18 ]
  %10 = phi i32 [ %5, %for.body ], [ %.pre, %if.then18 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %add = add nsw i32 %9, %10
  %11 = sext i32 %add to i64
  %cmp11 = icmp slt i64 %indvars.iv.next, %11
  br i1 %cmp11, label %for.body, label %if.end26

if.end26:                                         ; preds = %if.end, %if.then, %land.lhs.true, %entry
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
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"int*", !"int*", !"int*", !"char*", !"char*", !"char*", !"int*", !"int"}
!6 = !{!"const", !"const", !"const", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
