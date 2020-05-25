; ModuleID = 'src/577.src'
source_filename = "src/577.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture %b, i32 %c, i32 %d, i32 %e, i32 %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %conv2 = trunc i64 %call1 to i32
  %sub = add nsw i32 %c, -1
  %cmp = icmp sgt i32 %sub, %f
  %sub4 = add nsw i32 %d, -1
  %cmp5 = icmp sgt i32 %sub4, %conv2
  %or.cond334 = and i1 %cmp, %cmp5
  br i1 %or.cond334, label %land.lhs.true7, label %if.else

land.lhs.true7:                                   ; preds = %entry
  %sub8 = add nsw i32 %e, -1
  %cmp9 = icmp sgt i32 %sub8, %conv
  %cmp12 = icmp sgt i32 %f, 0
  %or.cond = and i1 %cmp12, %cmp9
  %cmp15 = icmp sgt i32 %conv2, 0
  %or.cond195 = and i1 %or.cond, %cmp15
  %cmp18 = icmp sgt i32 %conv, 0
  %or.cond196 = and i1 %cmp18, %or.cond195
  br i1 %or.cond196, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true7
  %sub20 = add nsw i32 %f, -1
  %mul = mul nsw i32 %e, %d
  %mul21 = mul nsw i32 %sub20, %mul
  %sub22 = add nsw i32 %conv2, -1
  %mul23 = mul nsw i32 %sub22, %e
  %add = add nsw i32 %mul23, %mul21
  %sub24 = add nsw i32 %conv, -1
  %add25 = add nsw i32 %add, %sub24
  %idxprom = sext i32 %add25 to i64
  %arrayidx = getelementptr inbounds float, float* %a, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %add27 = add nuw nsw i32 %f, 1
  %mul29 = mul nsw i32 %add27, %mul
  %add32 = add nsw i32 %mul23, %mul29
  %add34 = add nsw i32 %add32, %sub24
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds float, float* %a, i64 %idxprom35
  %1 = load float, float* %arrayidx36, align 4, !tbaa !7
  %mul37 = fmul float %1, 4.000000e+00
  %2 = tail call float @llvm.fmuladd.f32(float %0, float 2.000000e+00, float %mul37)
  %3 = tail call float @llvm.fmuladd.f32(float %0, float 5.000000e+00, float %2)
  %4 = tail call float @llvm.fmuladd.f32(float %1, float 7.000000e+00, float %3)
  %5 = tail call float @llvm.fmuladd.f32(float %0, float -8.000000e+00, float %4)
  %6 = tail call float @llvm.fmuladd.f32(float %1, float 1.000000e+01, float %5)
  %mul84 = mul nsw i32 %mul, %f
  %add87 = add i32 %mul84, %conv
  %add89 = add i32 %add87, %mul23
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds float, float* %a, i64 %idxprom90
  %7 = load float, float* %arrayidx91, align 4, !tbaa !7
  %8 = tail call float @llvm.fmuladd.f32(float %7, float -3.000000e+00, float %6)
  %mul97 = mul nsw i32 %conv2, %e
  %add100 = add i32 %add87, %mul97
  %idxprom101 = sext i32 %add100 to i64
  %arrayidx102 = getelementptr inbounds float, float* %a, i64 %idxprom101
  %9 = load float, float* %arrayidx102, align 4, !tbaa !7
  %10 = tail call float @llvm.fmuladd.f32(float %9, float 6.000000e+00, float %8)
  %add107 = add nuw nsw i32 %conv2, 1
  %mul108 = mul nsw i32 %add107, %e
  %add111 = add i32 %add87, %mul108
  %idxprom112 = sext i32 %add111 to i64
  %arrayidx113 = getelementptr inbounds float, float* %a, i64 %idxprom112
  %11 = load float, float* %arrayidx113, align 4, !tbaa !7
  %12 = tail call float @llvm.fmuladd.f32(float %11, float -9.000000e+00, float %10)
  %add121 = add nuw nsw i32 %conv, 1
  %add122 = add nsw i32 %add, %add121
  %idxprom123 = sext i32 %add122 to i64
  %arrayidx124 = getelementptr inbounds float, float* %a, i64 %idxprom123
  %13 = load float, float* %arrayidx124, align 4, !tbaa !7
  %14 = tail call float @llvm.fmuladd.f32(float %13, float 2.000000e+00, float %12)
  %add133 = add nsw i32 %add32, %add121
  %idxprom134 = sext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds float, float* %a, i64 %idxprom134
  %15 = load float, float* %arrayidx135, align 4, !tbaa !7
  %16 = tail call float @llvm.fmuladd.f32(float %15, float 4.000000e+00, float %14)
  %add142 = add i32 %add121, %mul21
  %add144 = add i32 %add142, %mul97
  %idxprom145 = sext i32 %add144 to i64
  %arrayidx146 = getelementptr inbounds float, float* %a, i64 %idxprom145
  %17 = load float, float* %arrayidx146, align 4, !tbaa !7
  %18 = tail call float @llvm.fmuladd.f32(float %17, float 5.000000e+00, float %16)
  %add153 = add i32 %add121, %mul29
  %add155 = add i32 %add153, %mul97
  %idxprom156 = sext i32 %add155 to i64
  %arrayidx157 = getelementptr inbounds float, float* %a, i64 %idxprom156
  %19 = load float, float* %arrayidx157, align 4, !tbaa !7
  %20 = tail call float @llvm.fmuladd.f32(float %19, float 7.000000e+00, float %18)
  %add166 = add i32 %add142, %mul108
  %idxprom167 = sext i32 %add166 to i64
  %arrayidx168 = getelementptr inbounds float, float* %a, i64 %idxprom167
  %21 = load float, float* %arrayidx168, align 4, !tbaa !7
  %22 = tail call float @llvm.fmuladd.f32(float %21, float -8.000000e+00, float %20)
  %add177 = add i32 %add153, %mul108
  %idxprom178 = sext i32 %add177 to i64
  %arrayidx179 = getelementptr inbounds float, float* %a, i64 %idxprom178
  %23 = load float, float* %arrayidx179, align 4, !tbaa !7
  %24 = tail call float @llvm.fmuladd.f32(float %23, float 1.000000e+01, float %22)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true7, %entry
  %mul189 = mul i32 %f, %d
  %reass.add = add i32 %mul189, %conv2
  %reass.mul = mul i32 %reass.add, %e
  %add192 = add i32 %reass.mul, %conv
  %idxprom193 = sext i32 %add192 to i64
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %idxprom193.sink = phi i64 [ %idxprom193, %if.else ], [ %idxprom101, %if.then ]
  %.sink = phi float [ 0.000000e+00, %if.else ], [ %24, %if.then ]
  %arrayidx194 = getelementptr inbounds float, float* %b, i64 %idxprom193.sink
  store float %.sink, float* %arrayidx194, align 4, !tbaa !7
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
!3 = !{i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"int", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
