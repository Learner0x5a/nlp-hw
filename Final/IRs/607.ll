; ModuleID = 'src/607.src'
source_filename = "src/607.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture %a, float* nocapture readonly %b, i32 %c) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, %c
  br i1 %cmp, label %for.body.preheader, label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = sext i32 %c to i64
  %sext = shl i64 %call, 32
  %1 = ashr exact i64 %sext, 32
  %2 = bitcast float* %b to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %arrayidx5 = getelementptr inbounds float, float* %a, i64 %1
  %4 = bitcast float* %arrayidx5 to i32*
  store i32 %3, i32* %4, align 4, !tbaa !7
  %arrayidx.1 = getelementptr inbounds float, float* %b, i64 1
  %5 = bitcast float* %arrayidx.1 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !7
  %7 = add nsw i64 %1, %0
  %arrayidx5.1 = getelementptr inbounds float, float* %a, i64 %7
  %8 = bitcast float* %arrayidx5.1 to i32*
  store i32 %6, i32* %8, align 4, !tbaa !7
  %arrayidx.2 = getelementptr inbounds float, float* %b, i64 2
  %9 = bitcast float* %arrayidx.2 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !7
  %11 = shl nsw i64 %0, 1
  %12 = add nsw i64 %11, %1
  %arrayidx5.2 = getelementptr inbounds float, float* %a, i64 %12
  %13 = bitcast float* %arrayidx5.2 to i32*
  store i32 %10, i32* %13, align 4, !tbaa !7
  %arrayidx.3 = getelementptr inbounds float, float* %b, i64 3
  %14 = bitcast float* %arrayidx.3 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !7
  %16 = mul nsw i64 %0, 3
  %17 = add nsw i64 %16, %1
  %arrayidx5.3 = getelementptr inbounds float, float* %a, i64 %17
  %18 = bitcast float* %arrayidx5.3 to i32*
  store i32 %15, i32* %18, align 4, !tbaa !7
  %arrayidx.4 = getelementptr inbounds float, float* %b, i64 4
  %19 = bitcast float* %arrayidx.4 to i32*
  %20 = load i32, i32* %19, align 4, !tbaa !7
  %21 = shl nsw i64 %0, 2
  %22 = add nsw i64 %21, %1
  %arrayidx5.4 = getelementptr inbounds float, float* %a, i64 %22
  %23 = bitcast float* %arrayidx5.4 to i32*
  store i32 %20, i32* %23, align 4, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %for.body.preheader, %entry
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
!3 = !{i32 1, i32 2, i32 0}
!4 = !{!"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"int"}
!6 = !{!"", !"const", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
