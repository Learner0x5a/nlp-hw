; ModuleID = 'src/620.src'
source_filename = "src/620.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture %a, float* nocapture %b, float* nocapture %c, i32 %d, i32 %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z12get_group_idj(i32 0) #4
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z12get_group_idj(i32 1) #4
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %conv4 = trunc i64 %call3 to i32
  %call5 = tail call i64 @_Z12get_local_idj(i32 1) #4
  %conv6 = trunc i64 %call5 to i32
  %add = shl i32 %conv2, 6
  %add8 = shl i32 %conv, 6
  %mul9 = add i32 %e, 64
  %add10 = add i32 %mul9, %add8
  %add11 = add nsw i32 %conv6, %e
  %mul12 = mul nsw i32 %add11, %d
  %add13 = add i32 %add10, %conv4
  %add14 = add i32 %add13, %mul12
  %idxprom = sext i32 %add14 to i64
  %arrayidx = getelementptr inbounds float, float* %a, i64 %idxprom
  %0 = bitcast float* %arrayidx to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !7
  %mul15 = shl nsw i32 %conv6, 6
  %add16 = add nsw i32 %mul15, %conv4
  %idxprom17 = sext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds float, float* %b, i64 %idxprom17
  %2 = bitcast float* %arrayidx18 to i32*
  store i32 %1, i32* %2, align 4, !tbaa !7
  %add7 = add i32 %mul9, %add
  %add19 = add i32 %add7, %conv6
  %mul20 = mul nsw i32 %add19, %d
  %add21 = add i32 %mul20, %conv4
  %add22 = add i32 %add21, %e
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds float, float* %a, i64 %idxprom23
  %3 = bitcast float* %arrayidx24 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !7
  %arrayidx28 = getelementptr inbounds float, float* %c, i64 %idxprom17
  %5 = bitcast float* %arrayidx28 to i32*
  store i32 %4, i32* %5, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #5
  %6 = sext i32 %mul15 to i64
  %sext = shl i64 %call3, 32
  %7 = ashr exact i64 %sext, 32
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next.1, %for.body ]
  %k.078 = phi float [ 0.000000e+00, %entry ], [ %19, %for.body ]
  %8 = add nuw nsw i64 %indvars.iv, %6
  %arrayidx33 = getelementptr inbounds float, float* %c, i64 %8
  %9 = load float, float* %arrayidx33, align 4, !tbaa !7
  %10 = shl nuw nsw i64 %indvars.iv, 6
  %11 = add nsw i64 %10, %7
  %arrayidx37 = getelementptr inbounds float, float* %b, i64 %11
  %12 = load float, float* %arrayidx37, align 4, !tbaa !7
  %13 = tail call float @llvm.fmuladd.f32(float %9, float %12, float %k.078)
  %indvars.iv.next = or i64 %indvars.iv, 1
  %14 = add nuw nsw i64 %indvars.iv.next, %6
  %arrayidx33.1 = getelementptr inbounds float, float* %c, i64 %14
  %15 = load float, float* %arrayidx33.1, align 4, !tbaa !7
  %16 = shl nuw nsw i64 %indvars.iv.next, 6
  %17 = add nsw i64 %16, %7
  %arrayidx37.1 = getelementptr inbounds float, float* %b, i64 %17
  %18 = load float, float* %arrayidx37.1, align 4, !tbaa !7
  %19 = tail call float @llvm.fmuladd.f32(float %15, float %18, float %13)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.1 = icmp eq i64 %indvars.iv.next.1, 64
  br i1 %exitcond.1, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %add42 = add i32 %add13, %mul20
  %idxprom43 = sext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds float, float* %a, i64 %idxprom43
  %20 = load float, float* %arrayidx44, align 4, !tbaa !7
  %sub = fsub float %20, %19
  store float %sub, float* %arrayidx44, align 4, !tbaa !7
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
!3 = !{i32 1, i32 3, i32 3, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
