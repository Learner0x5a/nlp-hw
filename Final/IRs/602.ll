; ModuleID = 'src/602.src'
source_filename = "src/602.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture readnone %b, float* nocapture %c, float* nocapture %d, float* nocapture %e, float* nocapture %f, i32 %g, i32 %h) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z12get_group_idj(i32 1) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @_Z12get_local_idj(i32 1) #3
  %conv4 = trunc i64 %call3 to i32
  %add = add nsw i32 %h, 1
  %mul5 = shl i32 %conv, 4
  %reass.add = add i32 %mul5, %conv4
  %reass.mul = mul i32 %reass.add, %add
  %add9 = add i32 %h, 2
  %add10 = add i32 %add9, %conv2
  %add12 = add i32 %add10, %reass.mul
  %cmp = icmp eq i32 %conv2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  %.pre = shl i64 %call3, 32
  %.pre129 = ashr exact i64 %.pre, 32
  br label %if.end55

if.then:                                          ; preds = %entry
  %add14 = or i32 %mul5, 1
  %add15 = add i32 %add14, %conv4
  %idxprom = sext i32 %add15 to i64
  %arrayidx = getelementptr inbounds float, float* %a, i64 %idxprom
  %0 = bitcast float* %arrayidx to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !7
  %sext124 = shl i64 %call3, 32
  %idxprom17 = ashr exact i64 %sext124, 32
  %arrayidx18 = getelementptr inbounds float, float* %e, i64 %idxprom17
  %2 = bitcast float* %arrayidx18 to i32*
  store i32 %1, i32* %2, align 4, !tbaa !7
  br label %if.end55

if.end55:                                         ; preds = %entry.if.end_crit_edge, %if.then
  %idxprom29.pre-phi = phi i64 [ %.pre129, %entry.if.end_crit_edge ], [ %idxprom17, %if.then ]
  tail call void @_Z7barrierj(i32 1) #4
  %idxprom19 = sext i32 %add12 to i64
  %arrayidx20 = getelementptr inbounds float, float* %c, i64 %idxprom19
  %3 = bitcast float* %arrayidx20 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !7
  %mul21 = shl i32 %conv4, 4
  %add22 = add nsw i32 %mul21, %conv2
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds float, float* %f, i64 %idxprom23
  %5 = bitcast float* %arrayidx24 to i32*
  store i32 %4, i32* %5, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #4
  %6 = load float, float* %arrayidx24, align 4, !tbaa !7
  %arrayidx30 = getelementptr inbounds float, float* %e, i64 %idxprom29.pre-phi
  %7 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul31 = fmul float %6, %7
  store float %mul31, float* %arrayidx24, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #4
  %8 = load float, float* %arrayidx24, align 4, !tbaa !7
  %add50 = fadd float %8, %8
  store float %add50, float* %arrayidx24, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #4
  %9 = and i32 %conv4, 1
  %cmp38.1 = icmp eq i32 %9, 0
  br i1 %cmp38.1, label %if.then40.1, label %if.end55.1

if.then65:                                        ; preds = %if.end55.4
  %arrayidx69 = getelementptr inbounds float, float* %f, i64 %idxprom29.pre-phi
  %10 = bitcast float* %arrayidx69 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !7
  %mul70 = mul nsw i32 %conv, %h
  %add71 = add nsw i32 %mul70, %conv4
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds float, float* %d, i64 %idxprom72
  %12 = bitcast float* %arrayidx73 to i32*
  store i32 %11, i32* %12, align 4, !tbaa !7
  br label %if.end74

if.end74:                                         ; preds = %if.then65, %if.end55.4
  ret void

if.then40.1:                                      ; preds = %if.end55
  %13 = load float, float* %arrayidx24, align 4, !tbaa !7
  %add45.1 = shl i32 %conv4, 4
  %mul46.1 = add i32 %add45.1, 16
  %add47.1 = add nsw i32 %mul46.1, %conv2
  %idxprom48.1 = sext i32 %add47.1 to i64
  %arrayidx49.1 = getelementptr inbounds float, float* %f, i64 %idxprom48.1
  %14 = load float, float* %arrayidx49.1, align 4, !tbaa !7
  %add50.1 = fadd float %13, %14
  store float %add50.1, float* %arrayidx24, align 4, !tbaa !7
  br label %if.end55.1

if.end55.1:                                       ; preds = %if.then40.1, %if.end55
  tail call void @_Z7barrierj(i32 1) #4
  %15 = and i32 %conv4, 3
  %cmp38.2 = icmp eq i32 %15, 0
  br i1 %cmp38.2, label %if.then40.2, label %if.end55.2

if.then40.2:                                      ; preds = %if.end55.1
  %16 = load float, float* %arrayidx24, align 4, !tbaa !7
  %add45.2 = shl i32 %conv4, 4
  %mul46.2 = add i32 %add45.2, 32
  %add47.2 = add nsw i32 %mul46.2, %conv2
  %idxprom48.2 = sext i32 %add47.2 to i64
  %arrayidx49.2 = getelementptr inbounds float, float* %f, i64 %idxprom48.2
  %17 = load float, float* %arrayidx49.2, align 4, !tbaa !7
  %add50.2 = fadd float %16, %17
  store float %add50.2, float* %arrayidx24, align 4, !tbaa !7
  br label %if.end55.2

if.end55.2:                                       ; preds = %if.then40.2, %if.end55.1
  tail call void @_Z7barrierj(i32 1) #4
  %18 = and i32 %conv4, 7
  %cmp38.3 = icmp eq i32 %18, 0
  br i1 %cmp38.3, label %if.then40.3, label %if.end55.3

if.then40.3:                                      ; preds = %if.end55.2
  %19 = load float, float* %arrayidx24, align 4, !tbaa !7
  %add45.3 = shl i32 %conv4, 4
  %mul46.3 = add i32 %add45.3, 64
  %add47.3 = add nsw i32 %mul46.3, %conv2
  %idxprom48.3 = sext i32 %add47.3 to i64
  %arrayidx49.3 = getelementptr inbounds float, float* %f, i64 %idxprom48.3
  %20 = load float, float* %arrayidx49.3, align 4, !tbaa !7
  %add50.3 = fadd float %19, %20
  store float %add50.3, float* %arrayidx24, align 4, !tbaa !7
  br label %if.end55.3

if.end55.3:                                       ; preds = %if.then40.3, %if.end55.2
  tail call void @_Z7barrierj(i32 1) #4
  %21 = and i32 %conv4, 15
  %cmp38.4 = icmp eq i32 %21, 0
  br i1 %cmp38.4, label %if.then40.4, label %if.end55.4

if.then40.4:                                      ; preds = %if.end55.3
  %22 = load float, float* %arrayidx24, align 4, !tbaa !7
  %add45.4 = shl i32 %conv4, 4
  %mul46.4 = add i32 %add45.4, 128
  %add47.4 = add nsw i32 %mul46.4, %conv2
  %idxprom48.4 = sext i32 %add47.4 to i64
  %arrayidx49.4 = getelementptr inbounds float, float* %f, i64 %idxprom48.4
  %23 = load float, float* %arrayidx49.4, align 4, !tbaa !7
  %add50.4 = fadd float %22, %23
  store float %add50.4, float* %arrayidx24, align 4, !tbaa !7
  br label %if.end55.4

if.end55.4:                                       ; preds = %if.then40.4, %if.end55.3
  tail call void @_Z7barrierj(i32 1) #4
  %24 = load i32, i32* %5, align 4, !tbaa !7
  store i32 %24, i32* %3, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #4
  br i1 %cmp, label %if.then65, label %if.end74
}

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
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"float*", !"float*", !"float*", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
