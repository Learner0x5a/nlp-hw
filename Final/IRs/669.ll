; ModuleID = 'src/669.src'
source_filename = "src/669.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture %b, i32 %c, float* nocapture %d) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %div = sdiv i32 %c, 4
  %conv = sext i32 %div to i64
  %call = tail call i64 @_Z14get_num_groupsj(i32 0) #3
  %div1 = udiv i64 %conv, %call
  %div1.tr = trunc i64 %div1 to i32
  %conv2 = shl i32 %div1.tr, 2
  %call3 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %0 = trunc i64 %call3 to i32
  %conv6 = mul i32 %conv2, %0
  %sub = add i64 %call, -1
  %cmp = icmp eq i64 %call3, %sub
  %add = add nsw i32 %conv6, %conv2
  %cond = select i1 %cmp, i32 %c, i32 %add
  %call10 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %conv11 = trunc i64 %call10 to i32
  %add12 = add nsw i32 %conv6, %conv11
  %cmp1369 = icmp slt i32 %add12, %cond
  br i1 %cmp1369, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %call16 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %1 = trunc i64 %call16 to i32
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %j.071 = phi float [ 0.000000e+00, %while.body.lr.ph ], [ %add15, %while.body ]
  %i.070 = phi i32 [ %add12, %while.body.lr.ph ], [ %conv19, %while.body ]
  %idxprom = sext i32 %i.070 to i64
  %arrayidx = getelementptr inbounds float, float* %a, i64 %idxprom
  %2 = load float, float* %arrayidx, align 4, !tbaa !7
  %add15 = fadd float %j.071, %2
  %conv19 = add i32 %i.070, %1
  %cmp13 = icmp slt i32 %conv19, %cond
  br i1 %cmp13, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  %j.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add15, %while.body ]
  %sext = shl i64 %call10, 32
  %idxprom20 = ashr exact i64 %sext, 32
  %arrayidx21 = getelementptr inbounds float, float* %d, i64 %idxprom20
  store float %j.0.lcssa, float* %arrayidx21, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #4
  %call22 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %div23 = lshr i64 %call22, 1
  %conv24 = trunc i64 %div23 to i32
  %cmp2566 = icmp eq i32 %conv24, 0
  br i1 %cmp2566, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %while.end
  tail call void @_Z7barrierj(i32 1) #4
  %cmp35 = icmp eq i32 %conv11, 0
  br i1 %cmp35, label %if.then37, label %if.end41

for.body:                                         ; preds = %while.end, %if.end
  %k.067 = phi i32 [ %shr, %if.end ], [ %conv24, %while.end ]
  %cmp27 = icmp ugt i32 %k.067, %conv11
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %add29 = add i32 %k.067, %conv11
  %idxprom30 = zext i32 %add29 to i64
  %arrayidx31 = getelementptr inbounds float, float* %d, i64 %idxprom30
  %3 = load float, float* %arrayidx31, align 4, !tbaa !7
  %4 = load float, float* %arrayidx21, align 4, !tbaa !7
  %add34 = fadd float %3, %4
  store float %add34, float* %arrayidx21, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  tail call void @_Z7barrierj(i32 1) #4
  %shr = lshr i32 %k.067, 1
  %cmp25 = icmp eq i32 %shr, 0
  br i1 %cmp25, label %for.cond.cleanup, label %for.body

if.then37:                                        ; preds = %for.cond.cleanup
  %5 = bitcast float* %d to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !7
  %arrayidx40 = getelementptr inbounds float, float* %b, i64 %call3
  %7 = bitcast float* %arrayidx40 to i32*
  store i32 %6, i32* %7, align 4, !tbaa !7
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %for.cond.cleanup
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_num_groupsj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #2

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent nounwind readnone }
attributes #4 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 0, i32 3}
!4 = !{!"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"int", !"float*"}
!6 = !{!"const", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
