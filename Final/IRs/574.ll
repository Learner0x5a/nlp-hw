; ModuleID = 'src/574.src'
source_filename = "src/574.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture %b, i32 %c, i32 %d) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %conv2 = trunc i64 %call1 to i32
  %sub = add nsw i32 %c, -1
  %cmp = icmp sgt i32 %sub, %conv2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %sub4 = add nsw i32 %d, -1
  %cmp5 = icmp sgt i32 %sub4, %conv
  %cmp8 = icmp sgt i32 %conv2, 0
  %or.cond = and i1 %cmp5, %cmp8
  %cmp11 = icmp sgt i32 %conv, 0
  %or.cond76 = and i1 %cmp11, %or.cond
  br i1 %or.cond76, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %sub13 = add nsw i32 %conv2, -1
  %mul = mul nsw i32 %sub13, %d
  %sub14 = add nsw i32 %conv, -1
  %add = add nsw i32 %mul, %sub14
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds float, float* %a, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %add19 = add nsw i32 %mul, %conv
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds float, float* %a, i64 %idxprom20
  %1 = load float, float* %arrayidx21, align 4, !tbaa !7
  %mul22 = fmul float %1, 5.000000e-01
  %2 = tail call float @llvm.fmuladd.f32(float %0, float 0x3FC99999A0000000, float %mul22)
  %add25 = add nuw nsw i32 %conv, 1
  %add26 = add nsw i32 %mul, %add25
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds float, float* %a, i64 %idxprom27
  %3 = load float, float* %arrayidx28, align 4, !tbaa !7
  %4 = tail call float @llvm.fmuladd.f32(float %3, float 0xBFE99999A0000000, float %2)
  %mul31 = mul nsw i32 %conv2, %d
  %add33 = add nsw i32 %mul31, %sub14
  %idxprom34 = sext i32 %add33 to i64
  %arrayidx35 = getelementptr inbounds float, float* %a, i64 %idxprom34
  %5 = load float, float* %arrayidx35, align 4, !tbaa !7
  %6 = tail call float @llvm.fmuladd.f32(float %5, float 0xBFD3333340000000, float %4)
  %add40 = add nsw i32 %mul31, %conv
  %idxprom41 = sext i32 %add40 to i64
  %arrayidx42 = getelementptr inbounds float, float* %a, i64 %idxprom41
  %7 = load float, float* %arrayidx42, align 4, !tbaa !7
  %8 = tail call float @llvm.fmuladd.f32(float %7, float 0x3FE3333340000000, float %6)
  %add47 = add nsw i32 %mul31, %add25
  %idxprom48 = sext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds float, float* %a, i64 %idxprom48
  %9 = load float, float* %arrayidx49, align 4, !tbaa !7
  %10 = tail call float @llvm.fmuladd.f32(float %9, float 0xBFECCCCCC0000000, float %8)
  %add51 = add nuw nsw i32 %conv2, 1
  %mul52 = mul nsw i32 %add51, %d
  %add54 = add nsw i32 %mul52, %sub14
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds float, float* %a, i64 %idxprom55
  %11 = load float, float* %arrayidx56, align 4, !tbaa !7
  %12 = tail call float @llvm.fmuladd.f32(float %11, float 0x3FD99999A0000000, float %10)
  %add61 = add nsw i32 %mul52, %conv
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds float, float* %a, i64 %idxprom62
  %13 = load float, float* %arrayidx63, align 4, !tbaa !7
  %14 = tail call float @llvm.fmuladd.f32(float %13, float 0x3FE6666660000000, float %12)
  %add68 = add nsw i32 %mul52, %add25
  %idxprom69 = sext i32 %add68 to i64
  %arrayidx70 = getelementptr inbounds float, float* %a, i64 %idxprom69
  %15 = load float, float* %arrayidx70, align 4, !tbaa !7
  %16 = tail call float @llvm.fmuladd.f32(float %15, float 0x3FB99999A0000000, float %14)
  %arrayidx75 = getelementptr inbounds float, float* %b, i64 %idxprom41
  store float %16, float* %arrayidx75, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
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
!3 = !{i32 1, i32 1, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"int", !"int"}
!6 = !{!"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
