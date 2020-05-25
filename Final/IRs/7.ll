; ModuleID = 'src/7.src'
source_filename = "src/7.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture %a, float* nocapture readonly %b, float* nocapture %c, i32 %d, i32 %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z12get_local_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %conv4 = trunc i64 %call3 to i32
  %mul = mul nsw i32 %conv4, %conv2
  %add = add nsw i32 %mul, %conv
  %mul5 = shl nsw i32 %add, 1
  %add6 = or i32 %mul5, 1
  %mul7 = mul i32 %add6, %e
  %sub = add i32 %mul7, -1
  %cmp = icmp ult i32 %sub, %d
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds float, float* %b, i64 %idxprom
  %0 = bitcast float* %arrayidx to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !7
  %mul9 = shl nsw i32 %conv, 1
  %idxprom10 = sext i32 %mul9 to i64
  %arrayidx11 = getelementptr inbounds float, float* %c, i64 %idxprom10
  %2 = bitcast float* %arrayidx11 to i32*
  store i32 %1, i32* %2, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %add12 = add i32 %sub, %e
  %cmp13 = icmp ult i32 %add12, %d
  br i1 %cmp13, label %if.then15, label %if.end23

if.then15:                                        ; preds = %if.end
  %idxprom17 = zext i32 %add12 to i64
  %arrayidx18 = getelementptr inbounds float, float* %b, i64 %idxprom17
  %3 = bitcast float* %arrayidx18 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !7
  %mul19 = shl nsw i32 %conv, 1
  %add20 = or i32 %mul19, 1
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds float, float* %c, i64 %idxprom21
  %5 = bitcast float* %arrayidx22 to i32*
  store i32 %4, i32* %5, align 4, !tbaa !7
  br label %if.end23

if.end23:                                         ; preds = %if.then15, %if.end
  %j.0166 = lshr i32 %d, 1
  %cmp24167 = icmp eq i32 %j.0166, 0
  br i1 %cmp24167, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end23
  %mul29 = shl nsw i32 %conv, 1
  %add30 = or i32 %mul29, 1
  %add34 = add nsw i32 %mul29, 2
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end42, %if.end23
  %i.0.lcssa = phi i32 [ 1, %if.end23 ], [ %shl, %if.end42 ]
  %cmp44 = icmp ugt i32 %d, 2
  br i1 %cmp44, label %if.then46, label %if.end79

for.body:                                         ; preds = %for.body.lr.ph, %if.end42
  %j.0170 = phi i32 [ %j.0166, %for.body.lr.ph ], [ %j.0, %if.end42 ]
  %i.0168 = phi i32 [ 1, %for.body.lr.ph ], [ %shl, %if.end42 ]
  tail call void @_Z7barrierj(i32 1) #4
  %cmp26 = icmp sgt i32 %j.0170, %conv
  br i1 %cmp26, label %if.then28, label %if.end42

if.then28:                                        ; preds = %for.body
  %mul31 = mul nsw i32 %i.0168, %add30
  %sub32 = add nsw i32 %mul31, -1
  %mul35 = mul nsw i32 %i.0168, %add34
  %sub36 = add nsw i32 %mul35, -1
  %idxprom37 = sext i32 %sub32 to i64
  %arrayidx38 = getelementptr inbounds float, float* %c, i64 %idxprom37
  %6 = load float, float* %arrayidx38, align 4, !tbaa !7
  %idxprom39 = sext i32 %sub36 to i64
  %arrayidx40 = getelementptr inbounds float, float* %c, i64 %idxprom39
  %7 = load float, float* %arrayidx40, align 4, !tbaa !7
  %add41 = fadd float %6, %7
  store float %add41, float* %arrayidx40, align 4, !tbaa !7
  br label %if.end42

if.end42:                                         ; preds = %if.then28, %for.body
  %shl = shl i32 %i.0168, 1
  %j.0 = lshr i32 %j.0170, 1
  %cmp24 = icmp eq i32 %j.0, 0
  br i1 %cmp24, label %for.cond.cleanup, label %for.body

if.then46:                                        ; preds = %for.cond.cleanup
  %cmp47 = icmp ult i32 %i.0.lcssa, %d
  %shl50 = zext i1 %cmp47 to i32
  %spec.select = shl i32 %i.0.lcssa, %shl50
  %shr52 = ashr i32 %spec.select, 1
  %cmp54163 = icmp sgt i32 %spec.select, 1
  br i1 %cmp54163, label %for.body57.lr.ph, label %if.end79

for.body57.lr.ph:                                 ; preds = %if.then46
  %add64 = add nsw i32 %conv, 1
  br label %for.body57

for.body57:                                       ; preds = %for.body57.lr.ph, %for.inc76
  %i.2165 = phi i32 [ %spec.select, %for.body57.lr.ph ], [ %shr59, %for.inc76 ]
  %n.0164 = phi i32 [ 0, %for.body57.lr.ph ], [ %shl77, %for.inc76 ]
  %add58 = or i32 %n.0164, 1
  %shr59 = ashr i32 %i.2165, 1
  tail call void @_Z7barrierj(i32 1) #4
  %cmp60 = icmp sgt i32 %add58, %conv
  br i1 %cmp60, label %if.then62, label %for.inc76

if.then62:                                        ; preds = %for.body57
  %mul65 = mul nsw i32 %shr59, %add64
  %sub66 = add nsw i32 %mul65, -1
  %shr68 = ashr i32 %i.2165, 2
  %add69 = add nsw i32 %sub66, %shr68
  %idxprom70 = sext i32 %sub66 to i64
  %arrayidx71 = getelementptr inbounds float, float* %c, i64 %idxprom70
  %8 = load float, float* %arrayidx71, align 4, !tbaa !7
  %idxprom72 = sext i32 %add69 to i64
  %arrayidx73 = getelementptr inbounds float, float* %c, i64 %idxprom72
  %9 = load float, float* %arrayidx73, align 4, !tbaa !7
  %add74 = fadd float %8, %9
  store float %add74, float* %arrayidx73, align 4, !tbaa !7
  br label %for.inc76

for.inc76:                                        ; preds = %for.body57, %if.then62
  %shl77 = shl i32 %add58, 1
  %cmp54 = icmp slt i32 %shl77, %shr52
  br i1 %cmp54, label %for.body57, label %if.end79

if.end79:                                         ; preds = %for.inc76, %if.then46, %for.cond.cleanup
  tail call void @_Z7barrierj(i32 1) #4
  br i1 %cmp, label %if.then82, label %if.end88

if.then82:                                        ; preds = %if.end79
  %mul83 = shl nsw i32 %conv, 1
  %idxprom84 = sext i32 %mul83 to i64
  %arrayidx85 = getelementptr inbounds float, float* %c, i64 %idxprom84
  %10 = bitcast float* %arrayidx85 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !7
  %idxprom86 = sext i32 %sub to i64
  %arrayidx87 = getelementptr inbounds float, float* %a, i64 %idxprom86
  %12 = bitcast float* %arrayidx87 to i32*
  store i32 %11, i32* %12, align 4, !tbaa !7
  br label %if.end88

if.end88:                                         ; preds = %if.then82, %if.end79
  br i1 %cmp13, label %if.then92, label %if.end100

if.then92:                                        ; preds = %if.end88
  %mul93 = shl nsw i32 %conv, 1
  %add94 = or i32 %mul93, 1
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds float, float* %c, i64 %idxprom95
  %13 = bitcast float* %arrayidx96 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !7
  %idxprom98 = zext i32 %add12 to i64
  %arrayidx99 = getelementptr inbounds float, float* %a, i64 %idxprom98
  %15 = bitcast float* %arrayidx99 to i32*
  store i32 %14, i32* %15, align 4, !tbaa !7
  br label %if.end100

if.end100:                                        ; preds = %if.then92, %if.end88
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

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
!3 = !{i32 1, i32 1, i32 3, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"uint", !"uint"}
!6 = !{!"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
