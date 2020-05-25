; ModuleID = 'src/551.src'
source_filename = "src/551.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture %a, float* nocapture readonly %b, float* nocapture readonly %c, float* nocapture %d, float* nocapture %e, i32 %f, i32 %g, i32 %h) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z12get_group_idj(i32 0) #4
  %call1 = tail call i64 @_Z12get_group_idj(i32 1) #4
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %conv4 = trunc i64 %call3 to i32
  %call5 = tail call i64 @_Z12get_local_idj(i32 1) #4
  %conv6 = trunc i64 %call5 to i32
  %cmp91 = icmp sgt i32 %f, 0
  br i1 %cmp91, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %mul9 = shl i32 %g, 6
  %mul = shl nsw i32 %f, 6
  %mul7 = mul nsw i32 %mul, %conv2
  %add = add nsw i32 %mul7, %f
  %conv = trunc i64 %call to i32
  %mul11 = mul nsw i32 %conv6, %f
  %add12 = add i32 %mul11, %conv4
  %mul14 = shl nsw i32 %conv6, 6
  %add15 = add nsw i32 %mul14, %conv4
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds float, float* %d, i64 %idxprom16
  %0 = bitcast float* %arrayidx17 to i32*
  %mul18 = mul nsw i32 %conv6, %g
  %add19 = add i32 %mul18, %conv4
  %arrayidx26 = getelementptr inbounds float, float* %e, i64 %idxprom16
  %1 = bitcast float* %arrayidx26 to i32*
  %2 = sext i32 %mul14 to i64
  %sext = shl i64 %call3, 32
  %3 = ashr exact i64 %sext, 32
  %4 = shl i32 %conv, 6
  %5 = sext i32 %4 to i64
  %6 = sext i32 %mul9 to i64
  %7 = mul i32 %conv2, %f
  %8 = shl i32 %7, 6
  %9 = sext i32 %8 to i64
  %10 = sext i32 %add to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup30, %entry
  %r.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %28, %for.cond.cleanup30 ]
  %call45 = tail call i64 @_Z13get_global_idj(i32 1) #4
  %conv46 = sext i32 %h to i64
  %cmp47 = icmp ult i64 %call45, %conv46
  br i1 %cmp47, label %if.then, label %if.end

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.cleanup30
  %indvars.iv100 = phi i64 [ %9, %for.body.lr.ph ], [ %indvars.iv.next101, %for.cond.cleanup30 ]
  %indvars.iv98 = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next99, %for.cond.cleanup30 ]
  %r.092 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %28, %for.cond.cleanup30 ]
  %11 = trunc i64 %indvars.iv100 to i32
  %add13 = add i32 %add12, %11
  %idxprom = sext i32 %add13 to i64
  %arrayidx = getelementptr inbounds float, float* %b, i64 %idxprom
  %12 = bitcast float* %arrayidx to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !7
  store i32 %13, i32* %0, align 4, !tbaa !7
  %14 = trunc i64 %indvars.iv98 to i32
  %add20 = add i32 %add19, %14
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds float, float* %c, i64 %idxprom21
  %15 = bitcast float* %arrayidx22 to i32*
  %16 = load i32, i32* %15, align 4, !tbaa !7
  store i32 %16, i32* %1, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #5
  br label %for.body31

for.cond.cleanup30:                               ; preds = %for.body31
  tail call void @_Z7barrierj(i32 1) #5
  %indvars.iv.next101 = add i64 %indvars.iv100, 64
  %indvars.iv.next99 = add i64 %indvars.iv98, %6
  %cmp = icmp slt i64 %indvars.iv.next101, %10
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.body31:                                       ; preds = %for.body31, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next.1, %for.body31 ]
  %r.189 = phi float [ %r.092, %for.body ], [ %28, %for.body31 ]
  %17 = add nuw nsw i64 %indvars.iv, %2
  %arrayidx35 = getelementptr inbounds float, float* %d, i64 %17
  %18 = load float, float* %arrayidx35, align 4, !tbaa !7
  %19 = shl nuw nsw i64 %indvars.iv, 6
  %20 = add nsw i64 %19, %3
  %arrayidx39 = getelementptr inbounds float, float* %e, i64 %20
  %21 = load float, float* %arrayidx39, align 4, !tbaa !7
  %22 = tail call float @llvm.fmuladd.f32(float %18, float %21, float %r.189)
  %indvars.iv.next = or i64 %indvars.iv, 1
  %23 = add nuw nsw i64 %indvars.iv.next, %2
  %arrayidx35.1 = getelementptr inbounds float, float* %d, i64 %23
  %24 = load float, float* %arrayidx35.1, align 4, !tbaa !7
  %25 = shl nuw nsw i64 %indvars.iv.next, 6
  %26 = add nsw i64 %25, %3
  %arrayidx39.1 = getelementptr inbounds float, float* %e, i64 %26
  %27 = load float, float* %arrayidx39.1, align 4, !tbaa !7
  %28 = tail call float @llvm.fmuladd.f32(float %24, float %27, float %22)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.1, label %for.cond.cleanup30, label %for.body31

if.then:                                          ; preds = %for.cond.cleanup
  %call50 = tail call i64 @_Z15get_global_sizej(i32 0) #4
  %mul51 = mul i64 %call50, %call45
  %call52 = tail call i64 @_Z13get_global_idj(i32 0) #4
  %add53 = add i64 %mul51, %call52
  %arrayidx54 = getelementptr inbounds float, float* %a, i64 %add53
  store float %r.0.lcssa, float* %arrayidx54, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond.cleanup
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z15get_global_sizej(i32) local_unnamed_addr #1

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { convergent nounwind readnone }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 3, i32 3, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"float*", !"float*", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
