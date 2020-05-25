; ModuleID = 'src/601.src'
source_filename = "src/601.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, i32 %b, float* nocapture readonly %c, i32 %d, float* nocapture %e, float* nocapture %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z12get_group_idj(i32 1) #4
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @_Z12get_local_idj(i32 1) #4
  %conv4 = trunc i64 %call3 to i32
  %add = add nsw i32 %b, 1
  %mul5 = shl i32 %conv, 4
  %reass.add = add i32 %mul5, %conv4
  %reass.mul = mul i32 %reass.add, %add
  %add9 = add i32 %b, 2
  %add10 = add i32 %add9, %conv2
  %add12 = add i32 %add10, %reass.mul
  %add14 = or i32 %mul5, 1
  %add15 = add i32 %add14, %conv4
  %add16 = shl i64 %call1, 32
  %sext = add i64 %add16, 4294967296
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds float, float* %a, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %mul17 = fmul float %0, 0x3FD3333340000000
  %idxprom18 = sext i32 %add15 to i64
  %arrayidx19 = getelementptr inbounds float, float* %c, i64 %idxprom18
  %1 = load float, float* %arrayidx19, align 4, !tbaa !7
  %idxprom21 = sext i32 %add12 to i64
  %arrayidx22 = getelementptr inbounds float, float* %f, i64 %idxprom21
  %2 = load float, float* %arrayidx22, align 4, !tbaa !7
  %mul23 = fmul float %2, 0x3FD3333340000000
  %3 = tail call float @llvm.fmuladd.f32(float %mul17, float %1, float %mul23)
  %arrayidx25 = getelementptr inbounds float, float* %e, i64 %idxprom21
  %4 = load float, float* %arrayidx25, align 4, !tbaa !7
  %add26 = fadd float %4, %3
  store float %add26, float* %arrayidx25, align 4, !tbaa !7
  %5 = load float, float* %arrayidx, align 4, !tbaa !7
  %mul29 = fmul float %5, 0x3FD3333340000000
  %6 = load float, float* %arrayidx19, align 4, !tbaa !7
  %7 = load float, float* %arrayidx22, align 4, !tbaa !7
  %mul35 = fmul float %7, 0x3FD3333340000000
  %8 = tail call float @llvm.fmuladd.f32(float %mul29, float %6, float %mul35)
  store float %8, float* %arrayidx22, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #5
  %9 = or i64 %call3, %call
  %10 = trunc i64 %9 to i32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %12 = load float, float* %arrayidx, align 4, !tbaa !7
  %arrayidx45 = getelementptr inbounds float, float* %f, i64 %idxprom
  %13 = load float, float* %arrayidx45, align 4, !tbaa !7
  %mul46 = fmul float %13, 0x3FD3333340000000
  %14 = tail call float @llvm.fmuladd.f32(float %12, float 0x3FD3333340000000, float %mul46)
  %arrayidx48 = getelementptr inbounds float, float* %e, i64 %idxprom
  %15 = load float, float* %arrayidx48, align 4, !tbaa !7
  %add49 = fadd float %15, %14
  store float %add49, float* %arrayidx48, align 4, !tbaa !7
  %16 = load float, float* %arrayidx, align 4, !tbaa !7
  %17 = load float, float* %arrayidx45, align 4, !tbaa !7
  %mul55 = fmul float %17, 0x3FD3333340000000
  %18 = tail call float @llvm.fmuladd.f32(float %16, float 0x3FD3333340000000, float %mul55)
  store float %18, float* %arrayidx45, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #3

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent nounwind readnone }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 0, i32 1, i32 0, i32 1, i32 1}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"int", !"float*", !"int", !"float*", !"float*"}
!6 = !{!"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
