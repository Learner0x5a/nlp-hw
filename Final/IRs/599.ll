; ModuleID = 'src/599.src'
source_filename = "src/599.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture readonly %b, float* nocapture %c, float %d, float %e, i32 %f, i32 %g) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %conv2 = trunc i64 %call1 to i32
  %cmp = icmp slt i32 %conv2, %g
  %cmp4 = icmp slt i32 %conv, %g
  %or.cond = and i1 %cmp4, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul = mul nsw i32 %conv2, %g
  %add = add nsw i32 %mul, %conv
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds float, float* %c, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %mul6 = fmul float %0, %e
  store float %mul6, float* %arrayidx, align 4, !tbaa !7
  %cmp761 = icmp sgt i32 %f, 0
  br i1 %cmp761, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %mul9 = mul nsw i32 %conv2, %f
  %mul14 = mul nsw i32 %conv, %f
  %1 = sext i32 %mul14 to i64
  %2 = sext i32 %mul9 to i64
  %wide.trip.count = zext i32 %f to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %3 = phi float [ %mul6, %for.body.lr.ph ], [ %add33, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %4 = add nsw i64 %indvars.iv, %2
  %arrayidx12 = getelementptr inbounds float, float* %a, i64 %4
  %5 = load float, float* %arrayidx12, align 4, !tbaa !7
  %mul13 = fmul float %5, %d
  %6 = add nsw i64 %indvars.iv, %1
  %arrayidx17 = getelementptr inbounds float, float* %b, i64 %6
  %7 = load float, float* %arrayidx17, align 4, !tbaa !7
  %arrayidx22 = getelementptr inbounds float, float* %b, i64 %4
  %8 = load float, float* %arrayidx22, align 4, !tbaa !7
  %mul23 = fmul float %8, %d
  %arrayidx27 = getelementptr inbounds float, float* %a, i64 %6
  %9 = load float, float* %arrayidx27, align 4, !tbaa !7
  %mul28 = fmul float %mul23, %9
  %10 = tail call float @llvm.fmuladd.f32(float %mul13, float %7, float %mul28)
  %add33 = fadd float %3, %10
  store float %add33, float* %arrayidx, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %if.end, label %for.body

if.end:                                           ; preds = %for.body, %if.then, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"float", !"float", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
