; ModuleID = 'src/5.src'
source_filename = "src/5.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(<4 x float>* nocapture readonly %a, <4 x float>* nocapture readonly %b, <4 x float>* nocapture %c, i32 %d, i32 %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %conv2 = trunc i64 %call1 to i32
  %div = lshr i32 %e, 2
  %cmp366 = icmp eq i32 %d, 0
  %.pre = shl i32 %conv2, 2
  br i1 %cmp366, label %entry.for.cond.cleanup_crit_edge, label %for.body.lr.ph

entry.for.cond.cleanup_crit_edge:                 ; preds = %entry
  %.pre382 = or i32 %.pre, 1
  %.pre383 = or i32 %.pre, 2
  %.pre384 = or i32 %.pre, 3
  br label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %div6 = lshr i32 %d, 2
  %mul = mul i32 %.pre, %div6
  %add9 = or i32 %.pre, 1
  %mul11 = mul i32 %add9, %div6
  %add17 = or i32 %.pre, 2
  %mul19 = mul i32 %add17, %div6
  %add25 = or i32 %.pre, 3
  %mul27 = mul i32 %add25, %div6
  %0 = zext i32 %d to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry.for.cond.cleanup_crit_edge
  %add150.pre-phi = phi i32 [ %.pre384, %entry.for.cond.cleanup_crit_edge ], [ %add25, %for.body ]
  %add144.pre-phi = phi i32 [ %.pre383, %entry.for.cond.cleanup_crit_edge ], [ %add17, %for.body ]
  %add138.pre-phi = phi i32 [ %.pre382, %entry.for.cond.cleanup_crit_edge ], [ %add9, %for.body ]
  %j.0.lcssa = phi <4 x float> [ undef, %entry.for.cond.cleanup_crit_edge ], [ %129, %for.body ]
  %i.0.lcssa = phi <4 x float> [ undef, %entry.for.cond.cleanup_crit_edge ], [ %105, %for.body ]
  %h.0.lcssa = phi <4 x float> [ undef, %entry.for.cond.cleanup_crit_edge ], [ %81, %for.body ]
  %g.0.lcssa = phi <4 x float> [ undef, %entry.for.cond.cleanup_crit_edge ], [ %57, %for.body ]
  %mul133 = mul i32 %.pre, %div
  %add134 = add i32 %mul133, %conv
  %idxprom135 = zext i32 %add134 to i64
  %arrayidx136 = getelementptr inbounds <4 x float>, <4 x float>* %c, i64 %idxprom135
  store <4 x float> %g.0.lcssa, <4 x float>* %arrayidx136, align 16, !tbaa !8
  %mul139 = mul i32 %add138.pre-phi, %div
  %add140 = add i32 %mul139, %conv
  %idxprom141 = zext i32 %add140 to i64
  %arrayidx142 = getelementptr inbounds <4 x float>, <4 x float>* %c, i64 %idxprom141
  store <4 x float> %h.0.lcssa, <4 x float>* %arrayidx142, align 16, !tbaa !8
  %mul145 = mul i32 %add144.pre-phi, %div
  %add146 = add i32 %mul145, %conv
  %idxprom147 = zext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds <4 x float>, <4 x float>* %c, i64 %idxprom147
  store <4 x float> %i.0.lcssa, <4 x float>* %arrayidx148, align 16, !tbaa !8
  %mul151 = mul i32 %add150.pre-phi, %div
  %add152 = add i32 %mul151, %conv
  %idxprom153 = zext i32 %add152 to i64
  %arrayidx154 = getelementptr inbounds <4 x float>, <4 x float>* %c, i64 %idxprom153
  store <4 x float> %j.0.lcssa, <4 x float>* %arrayidx154, align 16, !tbaa !8
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %g.0371 = phi <4 x float> [ undef, %for.body.lr.ph ], [ %57, %for.body ]
  %h.0370 = phi <4 x float> [ undef, %for.body.lr.ph ], [ %81, %for.body ]
  %i.0369 = phi <4 x float> [ undef, %for.body.lr.ph ], [ %105, %for.body ]
  %j.0368 = phi <4 x float> [ undef, %for.body.lr.ph ], [ %129, %for.body ]
  %1 = lshr exact i64 %indvars.iv, 2
  %2 = trunc i64 %1 to i32
  %add = add i32 %mul, %2
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds <4 x float>, <4 x float>* %a, i64 %idxprom
  %3 = load <4 x float>, <4 x float>* %arrayidx, align 16, !tbaa !8
  %add12 = add i32 %mul11, %2
  %idxprom13 = zext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds <4 x float>, <4 x float>* %a, i64 %idxprom13
  %4 = load <4 x float>, <4 x float>* %arrayidx14, align 16, !tbaa !8
  %add20 = add i32 %mul19, %2
  %idxprom21 = zext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds <4 x float>, <4 x float>* %a, i64 %idxprom21
  %5 = load <4 x float>, <4 x float>* %arrayidx22, align 16, !tbaa !8
  %add28 = add i32 %mul27, %2
  %idxprom29 = zext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds <4 x float>, <4 x float>* %a, i64 %idxprom29
  %6 = load <4 x float>, <4 x float>* %arrayidx30, align 16, !tbaa !8
  %7 = trunc i64 %indvars.iv to i32
  %mul31 = mul i32 %div, %7
  %add32 = add i32 %mul31, %conv
  %idxprom33 = zext i32 %add32 to i64
  %arrayidx34 = getelementptr inbounds <4 x float>, <4 x float>* %b, i64 %idxprom33
  %8 = load <4 x float>, <4 x float>* %arrayidx34, align 16, !tbaa !8
  %9 = trunc i64 %indvars.iv to i32
  %10 = or i32 %9, 1
  %mul36 = mul i32 %10, %div
  %add37 = add i32 %mul36, %conv
  %idxprom38 = zext i32 %add37 to i64
  %arrayidx39 = getelementptr inbounds <4 x float>, <4 x float>* %b, i64 %idxprom38
  %11 = load <4 x float>, <4 x float>* %arrayidx39, align 16, !tbaa !8
  %12 = trunc i64 %indvars.iv to i32
  %13 = or i32 %12, 2
  %mul41 = mul i32 %13, %div
  %add42 = add i32 %mul41, %conv
  %idxprom43 = zext i32 %add42 to i64
  %arrayidx44 = getelementptr inbounds <4 x float>, <4 x float>* %b, i64 %idxprom43
  %14 = load <4 x float>, <4 x float>* %arrayidx44, align 16, !tbaa !8
  %15 = trunc i64 %indvars.iv to i32
  %16 = or i32 %15, 3
  %mul46 = mul i32 %16, %div
  %add47 = add i32 %mul46, %conv
  %idxprom48 = zext i32 %add47 to i64
  %arrayidx49 = getelementptr inbounds <4 x float>, <4 x float>* %b, i64 %idxprom48
  %17 = load <4 x float>, <4 x float>* %arrayidx49, align 16, !tbaa !8
  %18 = extractelement <4 x float> %3, i64 0
  %19 = extractelement <4 x float> %8, i64 0
  %20 = extractelement <4 x float> %3, i64 1
  %21 = extractelement <4 x float> %11, i64 0
  %mul51 = fmul float %20, %21
  %22 = tail call float @llvm.fmuladd.f32(float %18, float %19, float %mul51)
  %23 = extractelement <4 x float> %3, i64 2
  %24 = extractelement <4 x float> %14, i64 0
  %25 = tail call float @llvm.fmuladd.f32(float %23, float %24, float %22)
  %26 = extractelement <4 x float> %3, i64 3
  %27 = extractelement <4 x float> %17, i64 0
  %28 = tail call float @llvm.fmuladd.f32(float %26, float %27, float %25)
  %29 = extractelement <4 x float> %g.0371, i64 0
  %add54 = fadd float %29, %28
  %30 = insertelement <4 x float> undef, float %add54, i64 0
  %31 = extractelement <4 x float> %8, i64 1
  %32 = extractelement <4 x float> %11, i64 1
  %mul56 = fmul float %20, %32
  %33 = tail call float @llvm.fmuladd.f32(float %18, float %31, float %mul56)
  %34 = extractelement <4 x float> %14, i64 1
  %35 = tail call float @llvm.fmuladd.f32(float %23, float %34, float %33)
  %36 = extractelement <4 x float> %17, i64 1
  %37 = tail call float @llvm.fmuladd.f32(float %26, float %36, float %35)
  %38 = extractelement <4 x float> %g.0371, i64 1
  %add59 = fadd float %38, %37
  %39 = insertelement <4 x float> %30, float %add59, i64 1
  %40 = extractelement <4 x float> %8, i64 2
  %41 = extractelement <4 x float> %11, i64 2
  %mul61 = fmul float %20, %41
  %42 = tail call float @llvm.fmuladd.f32(float %18, float %40, float %mul61)
  %43 = extractelement <4 x float> %14, i64 2
  %44 = tail call float @llvm.fmuladd.f32(float %23, float %43, float %42)
  %45 = extractelement <4 x float> %17, i64 2
  %46 = tail call float @llvm.fmuladd.f32(float %26, float %45, float %44)
  %47 = extractelement <4 x float> %g.0371, i64 2
  %add64 = fadd float %47, %46
  %48 = insertelement <4 x float> %39, float %add64, i64 2
  %49 = extractelement <4 x float> %8, i64 3
  %50 = extractelement <4 x float> %11, i64 3
  %mul66 = fmul float %20, %50
  %51 = tail call float @llvm.fmuladd.f32(float %18, float %49, float %mul66)
  %52 = extractelement <4 x float> %14, i64 3
  %53 = tail call float @llvm.fmuladd.f32(float %23, float %52, float %51)
  %54 = extractelement <4 x float> %17, i64 3
  %55 = tail call float @llvm.fmuladd.f32(float %26, float %54, float %53)
  %56 = extractelement <4 x float> %g.0371, i64 3
  %add69 = fadd float %56, %55
  %57 = insertelement <4 x float> %48, float %add69, i64 3
  %58 = extractelement <4 x float> %4, i64 0
  %59 = extractelement <4 x float> %4, i64 1
  %mul71 = fmul float %59, %21
  %60 = tail call float @llvm.fmuladd.f32(float %58, float %19, float %mul71)
  %61 = extractelement <4 x float> %4, i64 2
  %62 = tail call float @llvm.fmuladd.f32(float %61, float %24, float %60)
  %63 = extractelement <4 x float> %4, i64 3
  %64 = tail call float @llvm.fmuladd.f32(float %63, float %27, float %62)
  %65 = extractelement <4 x float> %h.0370, i64 0
  %add74 = fadd float %65, %64
  %66 = insertelement <4 x float> undef, float %add74, i64 0
  %mul76 = fmul float %59, %32
  %67 = tail call float @llvm.fmuladd.f32(float %58, float %31, float %mul76)
  %68 = tail call float @llvm.fmuladd.f32(float %61, float %34, float %67)
  %69 = tail call float @llvm.fmuladd.f32(float %63, float %36, float %68)
  %70 = extractelement <4 x float> %h.0370, i64 1
  %add79 = fadd float %70, %69
  %71 = insertelement <4 x float> %66, float %add79, i64 1
  %mul81 = fmul float %59, %41
  %72 = tail call float @llvm.fmuladd.f32(float %58, float %40, float %mul81)
  %73 = tail call float @llvm.fmuladd.f32(float %61, float %43, float %72)
  %74 = tail call float @llvm.fmuladd.f32(float %63, float %45, float %73)
  %75 = extractelement <4 x float> %h.0370, i64 2
  %add84 = fadd float %75, %74
  %76 = insertelement <4 x float> %71, float %add84, i64 2
  %mul86 = fmul float %59, %50
  %77 = tail call float @llvm.fmuladd.f32(float %58, float %49, float %mul86)
  %78 = tail call float @llvm.fmuladd.f32(float %61, float %52, float %77)
  %79 = tail call float @llvm.fmuladd.f32(float %63, float %54, float %78)
  %80 = extractelement <4 x float> %h.0370, i64 3
  %add89 = fadd float %80, %79
  %81 = insertelement <4 x float> %76, float %add89, i64 3
  %82 = extractelement <4 x float> %5, i64 0
  %83 = extractelement <4 x float> %5, i64 1
  %mul91 = fmul float %83, %21
  %84 = tail call float @llvm.fmuladd.f32(float %82, float %19, float %mul91)
  %85 = extractelement <4 x float> %5, i64 2
  %86 = tail call float @llvm.fmuladd.f32(float %85, float %24, float %84)
  %87 = extractelement <4 x float> %5, i64 3
  %88 = tail call float @llvm.fmuladd.f32(float %87, float %27, float %86)
  %89 = extractelement <4 x float> %i.0369, i64 0
  %add94 = fadd float %89, %88
  %90 = insertelement <4 x float> undef, float %add94, i64 0
  %mul96 = fmul float %83, %32
  %91 = tail call float @llvm.fmuladd.f32(float %82, float %31, float %mul96)
  %92 = tail call float @llvm.fmuladd.f32(float %85, float %34, float %91)
  %93 = tail call float @llvm.fmuladd.f32(float %87, float %36, float %92)
  %94 = extractelement <4 x float> %i.0369, i64 1
  %add99 = fadd float %94, %93
  %95 = insertelement <4 x float> %90, float %add99, i64 1
  %mul101 = fmul float %83, %41
  %96 = tail call float @llvm.fmuladd.f32(float %82, float %40, float %mul101)
  %97 = tail call float @llvm.fmuladd.f32(float %85, float %43, float %96)
  %98 = tail call float @llvm.fmuladd.f32(float %87, float %45, float %97)
  %99 = extractelement <4 x float> %i.0369, i64 2
  %add104 = fadd float %99, %98
  %100 = insertelement <4 x float> %95, float %add104, i64 2
  %mul106 = fmul float %83, %50
  %101 = tail call float @llvm.fmuladd.f32(float %82, float %49, float %mul106)
  %102 = tail call float @llvm.fmuladd.f32(float %85, float %52, float %101)
  %103 = tail call float @llvm.fmuladd.f32(float %87, float %54, float %102)
  %104 = extractelement <4 x float> %i.0369, i64 3
  %add109 = fadd float %104, %103
  %105 = insertelement <4 x float> %100, float %add109, i64 3
  %106 = extractelement <4 x float> %6, i64 0
  %107 = extractelement <4 x float> %6, i64 1
  %mul111 = fmul float %107, %21
  %108 = tail call float @llvm.fmuladd.f32(float %106, float %19, float %mul111)
  %109 = extractelement <4 x float> %6, i64 2
  %110 = tail call float @llvm.fmuladd.f32(float %109, float %24, float %108)
  %111 = extractelement <4 x float> %6, i64 3
  %112 = tail call float @llvm.fmuladd.f32(float %111, float %27, float %110)
  %113 = extractelement <4 x float> %j.0368, i64 0
  %add114 = fadd float %113, %112
  %114 = insertelement <4 x float> undef, float %add114, i64 0
  %mul116 = fmul float %107, %32
  %115 = tail call float @llvm.fmuladd.f32(float %106, float %31, float %mul116)
  %116 = tail call float @llvm.fmuladd.f32(float %109, float %34, float %115)
  %117 = tail call float @llvm.fmuladd.f32(float %111, float %36, float %116)
  %118 = extractelement <4 x float> %j.0368, i64 1
  %add119 = fadd float %118, %117
  %119 = insertelement <4 x float> %114, float %add119, i64 1
  %mul121 = fmul float %107, %41
  %120 = tail call float @llvm.fmuladd.f32(float %106, float %40, float %mul121)
  %121 = tail call float @llvm.fmuladd.f32(float %109, float %43, float %120)
  %122 = tail call float @llvm.fmuladd.f32(float %111, float %45, float %121)
  %123 = extractelement <4 x float> %j.0368, i64 2
  %add124 = fadd float %123, %122
  %124 = insertelement <4 x float> %119, float %add124, i64 2
  %mul126 = fmul float %107, %50
  %125 = tail call float @llvm.fmuladd.f32(float %106, float %49, float %mul126)
  %126 = tail call float @llvm.fmuladd.f32(float %109, float %52, float %125)
  %127 = tail call float @llvm.fmuladd.f32(float %111, float %54, float %126)
  %128 = extractelement <4 x float> %j.0368, i64 3
  %add129 = fadd float %128, %127
  %129 = insertelement <4 x float> %124, float %add129, i64 3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4
  %cmp = icmp ult i64 %indvars.iv.next, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup
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
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float4*", !"float4*", !"float4*", !"uint", !"uint"}
!6 = !{!"float __attribute__((ext_vector_type(4)))*", !"float __attribute__((ext_vector_type(4)))*", !"float __attribute__((ext_vector_type(4)))*", !"uint", !"uint"}
!7 = !{!"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
