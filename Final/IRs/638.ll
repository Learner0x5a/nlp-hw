; ModuleID = 'src/638.src'
source_filename = "src/638.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(<4 x float>* nocapture %a, <4 x float>* nocapture readonly %b, i32 %c, i32* nocapture readonly %d, float %e, float %f, float %g, i32 %h) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %idxprom = and i64 %call, 4294967295
  %arrayidx = getelementptr inbounds <4 x float>, <4 x float>* %b, i64 %idxprom
  %0 = load <4 x float>, <4 x float>* %arrayidx, align 16, !tbaa !8
  %cmp64 = icmp sgt i32 %c, 0
  br i1 %cmp64, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %1 = extractelement <4 x float> %0, i64 0
  %2 = extractelement <4 x float> %0, i64 1
  %3 = extractelement <4 x float> %0, i64 2
  %neg = fsub float -0.000000e+00, %g
  %wide.trip.count = zext i32 %c to i64
  br label %while.body

while.body:                                       ; preds = %if.end, %while.body.lr.ph
  %indvars.iv = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %k.066 = phi <4 x float> [ zeroinitializer, %while.body.lr.ph ], [ %k.1, %if.end ]
  %4 = trunc i64 %indvars.iv to i32
  %mul = mul nsw i32 %4, %h
  %add = add i32 %mul, %conv
  %idxprom2 = zext i32 %add to i64
  %arrayidx3 = getelementptr inbounds i32, i32* %d, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4, !tbaa !11
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds <4 x float>, <4 x float>* %b, i64 %idxprom4
  %6 = load <4 x float>, <4 x float>* %arrayidx5, align 16, !tbaa !8
  %7 = extractelement <4 x float> %6, i64 0
  %sub = fsub float %1, %7
  %8 = extractelement <4 x float> %6, i64 1
  %sub6 = fsub float %2, %8
  %9 = extractelement <4 x float> %6, i64 2
  %sub7 = fsub float %3, %9
  %mul9 = fmul float %sub6, %sub6
  %10 = tail call float @llvm.fmuladd.f32(float %sub, float %sub, float %mul9)
  %11 = tail call float @llvm.fmuladd.f32(float %sub7, float %sub7, float %10)
  %cmp11 = fcmp olt float %11, %e
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %div = fdiv float 1.000000e+00, %11, !fpmath !13
  %mul13 = fmul float %div, %div
  %mul14 = fmul float %div, %mul13
  %mul15 = fmul float %div, %mul14
  %12 = tail call float @llvm.fmuladd.f32(float %f, float %mul14, float %neg)
  %mul17 = fmul float %mul15, %12
  %13 = extractelement <4 x float> %k.066, i64 0
  %14 = tail call float @llvm.fmuladd.f32(float %sub, float %mul17, float %13)
  %15 = insertelement <4 x float> %k.066, float %14, i64 0
  %16 = extractelement <4 x float> %k.066, i64 1
  %17 = tail call float @llvm.fmuladd.f32(float %sub6, float %mul17, float %16)
  %18 = insertelement <4 x float> %15, float %17, i64 1
  %19 = extractelement <4 x float> %k.066, i64 2
  %20 = tail call float @llvm.fmuladd.f32(float %sub7, float %mul17, float %19)
  %21 = insertelement <4 x float> %18, float %20, i64 2
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %k.1 = phi <4 x float> [ %21, %if.then ], [ %k.066, %while.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %while.end, label %while.body

while.end:                                        ; preds = %if.end, %entry
  %k.0.lcssa = phi <4 x float> [ zeroinitializer, %entry ], [ %k.1, %if.end ]
  %arrayidx22 = getelementptr inbounds <4 x float>, <4 x float>* %a, i64 %idxprom
  store <4 x float> %k.0.lcssa, <4 x float>* %arrayidx22, align 16, !tbaa !8
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
!3 = !{i32 1, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float4*", !"float4*", !"int", !"int*", !"float", !"float", !"float", !"int"}
!6 = !{!"float __attribute__((ext_vector_type(4)))*", !"float __attribute__((ext_vector_type(4)))*", !"int", !"int*", !"float", !"float", !"float", !"int"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{float 2.500000e+00}
