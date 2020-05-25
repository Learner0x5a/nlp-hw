; ModuleID = 'src/629.src'
source_filename = "src/629.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(i32 %a, i32* nocapture readonly %b, i32* nocapture readonly %c, i32* nocapture %d, i32 %e, i32 %f, i32 %g, i32 %h, i32 %i, i32* nocapture %j, i32* nocapture %k, i32* nocapture %l) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %conv4 = trunc i64 %call3 to i32
  %mul = shl i32 %a, 1
  %mul5 = mul i32 %mul, %i
  %sub = sub nsw i32 %conv, %mul5
  %mul6 = mul nsw i32 %sub, %conv2
  %sub7 = sub nsw i32 %mul6, %h
  %add = add nsw i32 %sub7, %conv
  %add9 = add nsw i32 %sub7, %conv4
  %cmp = icmp slt i32 %sub7, 0
  %sub11 = sub nsw i32 0, %sub7
  %cond = select i1 %cmp, i32 %sub11, i32 0
  %cmp13 = icmp sgt i32 %add, %e
  %sub16 = add nsw i32 %conv, -1
  %add18197 = sub i32 %e, %add
  %sub19 = select i1 %cmp13, i32 %add18197, i32 0
  %cond23 = add i32 %sub16, %sub19
  %sub24 = add nsw i32 %conv4, -1
  %add25 = add nsw i32 %conv4, 1
  %cmp26 = icmp slt i32 %cond, %conv4
  %cond31 = select i1 %cmp26, i32 %sub24, i32 %cond
  %cmp32 = icmp sgt i32 %cond23, %conv4
  %cond37 = select i1 %cmp32, i32 %add25, i32 %cond23
  %cmp38 = icmp sgt i32 %cond, %conv4
  %cmp40 = icmp slt i32 %cond23, %conv4
  %cmp42 = icmp sgt i32 %add9, -1
  %cmp45 = icmp slt i32 %add9, %e
  %or.cond198 = and i1 %cmp42, %cmp45
  br i1 %or.cond198, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %idxprom199 = zext i32 %add9 to i64
  %arrayidx = getelementptr inbounds i32, i32* %c, i64 %idxprom199
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %sext196 = shl i64 %call3, 32
  %idxprom47 = ashr exact i64 %sext196, 32
  %arrayidx48 = getelementptr inbounds i32, i32* %j, i64 %idxprom47
  store i32 %0, i32* %arrayidx48, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @_Z7barrierj(i32 1) #4
  %cmp49200 = icmp sgt i32 %a, 0
  br i1 %cmp49200, label %for.body.lr.ph, label %if.then113

for.body.lr.ph:                                   ; preds = %if.end
  %sub55 = add i32 %conv, -2
  %.not = or i1 %cmp38, %cmp40
  %idxprom62 = sext i32 %cond31 to i64
  %arrayidx63 = getelementptr inbounds i32, i32* %j, i64 %idxprom62
  %sext195 = shl i64 %call3, 32
  %idxprom64 = ashr exact i64 %sext195, 32
  %arrayidx65 = getelementptr inbounds i32, i32* %j, i64 %idxprom64
  %idxprom66 = sext i32 %cond37 to i64
  %arrayidx67 = getelementptr inbounds i32, i32* %j, i64 %idxprom66
  %arrayidx87 = getelementptr inbounds i32, i32* %k, i64 %idxprom64
  %cmp88 = icmp eq i32 %conv4, 11
  %idxprom94 = sext i32 %add9 to i64
  %arrayidx95 = getelementptr inbounds i32, i32* %c, i64 %idxprom94
  %sub100 = add nsw i32 %a, -1
  %1 = sext i32 %g to i64
  %2 = sext i32 %e to i64
  %sext207 = shl i64 %call3, 32
  %3 = ashr exact i64 %sext207, 32
  %4 = zext i32 %sub100 to i64
  br label %for.body

for.body:                                         ; preds = %if.end111, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end111 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp52 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp52, label %land.lhs.true54, label %if.end99

land.lhs.true54:                                  ; preds = %for.body
  %5 = trunc i64 %indvars.iv to i32
  %sub56 = sub i32 %sub55, %5
  %cmp57 = icmp slt i32 %sub56, %conv4
  %brmerge = or i1 %.not, %cmp57
  br i1 %brmerge, label %if.end99, label %if.then61

if.then61:                                        ; preds = %land.lhs.true54
  %6 = load i32, i32* %arrayidx63, align 4, !tbaa !7
  %7 = load i32, i32* %arrayidx65, align 4, !tbaa !7
  %8 = load i32, i32* %arrayidx67, align 4, !tbaa !7
  %cmp68 = icmp sgt i32 %6, %7
  %cond73 = select i1 %cmp68, i32 %7, i32 %6
  %cmp74 = icmp sgt i32 %cond73, %8
  %cond79 = select i1 %cmp74, i32 %8, i32 %cond73
  %9 = add nsw i64 %indvars.iv, %1
  %10 = mul nsw i64 %9, %2
  %11 = add nsw i64 %10, %idxprom94
  %arrayidx84 = getelementptr inbounds i32, i32* %b, i64 %11
  %12 = load i32, i32* %arrayidx84, align 4, !tbaa !7
  %add85 = add nsw i32 %cond79, %12
  store i32 %add85, i32* %arrayidx87, align 4, !tbaa !7
  %cmp91 = icmp eq i64 %indvars.iv, 0
  %or.cond = and i1 %cmp88, %cmp91
  br i1 %or.cond, label %if.then93, label %if.end99

if.then93:                                        ; preds = %if.then61
  %13 = load i32, i32* %arrayidx95, align 4, !tbaa !7
  %idxprom96 = sext i32 %13 to i64
  %arrayidx97 = getelementptr inbounds i32, i32* %l, i64 %idxprom96
  store i32 1, i32* %arrayidx97, align 4, !tbaa !7
  br label %if.end99

if.end99:                                         ; preds = %if.then61, %if.then93, %land.lhs.true54, %for.body
  %y.1 = phi i1 [ true, %land.lhs.true54 ], [ true, %for.body ], [ false, %if.then93 ], [ false, %if.then61 ]
  tail call void @_Z7barrierj(i32 1) #4
  %cmp101 = icmp eq i64 %indvars.iv, %4
  br i1 %cmp101, label %cleanup, label %if.end104

if.end104:                                        ; preds = %if.end99
  br i1 %y.1, label %if.end111, label %if.then106

if.then106:                                       ; preds = %if.end104
  %14 = load i32, i32* %arrayidx87, align 4, !tbaa !7
  store i32 %14, i32* %arrayidx65, align 4, !tbaa !7
  br label %if.end111

if.end111:                                        ; preds = %if.end104, %if.then106
  tail call void @_Z7barrierj(i32 1) #4
  br label %for.body

cleanup:                                          ; preds = %if.end99
  br i1 %y.1, label %if.end118, label %if.then113

if.then113:                                       ; preds = %if.end, %cleanup
  %sext = shl i64 %call3, 32
  %idxprom114 = ashr exact i64 %sext, 32
  %arrayidx115 = getelementptr inbounds i32, i32* %k, i64 %idxprom114
  %15 = load i32, i32* %arrayidx115, align 4, !tbaa !7
  %idxprom116 = sext i32 %add9 to i64
  %arrayidx117 = getelementptr inbounds i32, i32* %d, i64 %idxprom116
  store i32 %15, i32* %arrayidx117, align 4, !tbaa !7
  br label %if.end118

if.end118:                                        ; preds = %cleanup, %if.then113
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

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
!3 = !{i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, i32 3, i32 1}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"int", !"int*", !"int*", !"int*", !"int", !"int", !"int", !"int", !"int", !"int*", !"int*", !"int*"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
