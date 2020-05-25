; ModuleID = 'src/0.src'
source_filename = "src/0.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(i32 %a, <4 x float>* nocapture readonly %b, <4 x float>* nocapture %c, <4 x float>* nocapture %d, <4 x float>* nocapture %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
entry:
  %call = tail call i64 @_Z12get_local_idj(i32 0) #4
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %idxprom = and i64 %call1, 4294967295
  %arrayidx = getelementptr inbounds <4 x float>, <4 x float>* %b, i64 %idxprom
  %0 = load <4 x float>, <4 x float>* %arrayidx, align 16, !tbaa !8
  %sub = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %0
  %mul3 = fmul <4 x float> %0, <float 3.000000e+01, float 3.000000e+01, float 3.000000e+01, float 3.000000e+01>
  %1 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %sub, <4 x float> <float 5.000000e+00, float 5.000000e+00, float 5.000000e+00, float 5.000000e+00>, <4 x float> %mul3)
  %mul5 = fmul <4 x float> %0, <float 1.000000e+02, float 1.000000e+02, float 1.000000e+02, float 1.000000e+02>
  %2 = fadd <4 x float> %sub, %mul5
  %mul7 = fmul <4 x float> %0, <float 1.000000e+01, float 1.000000e+01, float 1.000000e+01, float 1.000000e+01>
  %3 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %sub, <4 x float> <float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>, <4 x float> %mul7)
  %conv8 = sitofp i32 %a to float
  %div = fdiv float 1.000000e+00, %conv8, !fpmath !11
  %splat.splatinsert = insertelement <4 x float> undef, float %div, i32 0
  %splat.splat = shufflevector <4 x float> %splat.splatinsert, <4 x float> undef, <4 x i32> zeroinitializer
  %mul = fmul <4 x float> %splat.splat, %3
  %call9 = tail call <4 x float> @_Z4sqrtDv4_f(<4 x float> %mul) #4
  %mul10 = fmul <4 x float> %call9, <float 0x3FD3333340000000, float 0x3FD3333340000000, float 0x3FD3333340000000, float 0x3FD3333340000000>
  %mul11 = fmul <4 x float> %mul, <float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000, float 0x3F947AE140000000>
  %call12 = tail call <4 x float> @_Z3expDv4_f(<4 x float> %mul11) #4
  %div13 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %call12, !fpmath !11
  %call14 = tail call <4 x float> @_Z3expDv4_f(<4 x float> %mul10) #4
  %div15 = fdiv <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %call14, !fpmath !11
  %sub16 = fsub <4 x float> %call12, %div15
  %sub17 = fsub <4 x float> %call14, %div15
  %div18 = fdiv <4 x float> %sub16, %sub17, !fpmath !11
  %sub19 = fsub <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %div18
  %mul20 = fmul <4 x float> %div13, %div18
  %mul21 = fmul <4 x float> %div13, %sub19
  %conv22 = uitofp i32 %conv to float
  %neg = fsub float -0.000000e+00, %conv8
  %4 = tail call float @llvm.fmuladd.f32(float %conv22, float 2.000000e+00, float %neg)
  %splat.splatinsert25 = insertelement <4 x float> undef, float %4, i32 0
  %splat.splat26 = shufflevector <4 x float> %splat.splatinsert25, <4 x float> undef, <4 x i32> zeroinitializer
  %mul27 = fmul <4 x float> %mul10, %splat.splat26
  %call28 = tail call <4 x float> @_Z3expDv4_f(<4 x float> %mul27) #4
  %neg30 = fsub <4 x float> <float -0.000000e+00, float -0.000000e+00, float -0.000000e+00, float -0.000000e+00>, %2
  %5 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %1, <4 x float> %call28, <4 x float> %neg30)
  %6 = extractelement <4 x float> %5, i64 0
  %cmp = fcmp ogt float %6, 0.000000e+00
  %cond = select i1 %cmp, float %6, float 0.000000e+00
  %idxprom32 = and i64 %call, 4294967295
  %arrayidx33 = getelementptr inbounds <4 x float>, <4 x float>* %d, i64 %idxprom32
  %7 = insertelement <4 x float> undef, float %cond, i64 0
  %8 = extractelement <4 x float> %5, i64 1
  %cmp34 = fcmp ogt float %8, 0.000000e+00
  %cond39 = select i1 %cmp34, float %8, float 0.000000e+00
  %9 = insertelement <4 x float> %7, float %cond39, i64 1
  %10 = extractelement <4 x float> %5, i64 2
  %cmp42 = fcmp ogt float %10, 0.000000e+00
  %cond47 = select i1 %cmp42, float %10, float 0.000000e+00
  %11 = insertelement <4 x float> %9, float %cond47, i64 2
  %12 = extractelement <4 x float> %5, i64 3
  %cmp50 = fcmp ogt float %12, 0.000000e+00
  %cond55 = select i1 %cmp50, float %12, float 0.000000e+00
  %13 = insertelement <4 x float> %11, float %cond55, i64 3
  store <4 x float> %13, <4 x float>* %arrayidx33, align 16
  tail call void @_Z7barrierj(i32 1) #5
  %cmp58160 = icmp sgt i32 %a, 0
  br i1 %cmp58160, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %add = add i64 %call, 1
  %idxprom65 = and i64 %add, 4294967295
  %arrayidx66 = getelementptr inbounds <4 x float>, <4 x float>* %d, i64 %idxprom65
  %arrayidx69 = getelementptr inbounds <4 x float>, <4 x float>* %e, i64 %idxprom32
  %arrayidx79 = getelementptr inbounds <4 x float>, <4 x float>* %e, i64 %idxprom65
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end83, %entry
  %cmp85 = icmp eq i32 %conv, 0
  br i1 %cmp85, label %if.then87, label %if.end91

for.body:                                         ; preds = %for.body.lr.ph, %if.end83
  %x.0161 = phi i32 [ %a, %for.body.lr.ph ], [ %sub84, %if.end83 ]
  %cmp60 = icmp ugt i32 %x.0161, %conv
  br i1 %cmp60, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %14 = load <4 x float>, <4 x float>* %arrayidx33, align 16, !tbaa !8
  %15 = load <4 x float>, <4 x float>* %arrayidx66, align 16, !tbaa !8
  %mul67 = fmul <4 x float> %mul21, %15
  %16 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %mul20, <4 x float> %14, <4 x float> %mul67)
  store <4 x float> %16, <4 x float>* %arrayidx69, align 16, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  tail call void @_Z7barrierj(i32 1) #5
  %sub70 = add nsw i32 %x.0161, -1
  %cmp71 = icmp ugt i32 %sub70, %conv
  br i1 %cmp71, label %if.then73, label %if.end83

if.then73:                                        ; preds = %if.end
  %17 = load <4 x float>, <4 x float>* %arrayidx69, align 16, !tbaa !8
  %18 = load <4 x float>, <4 x float>* %arrayidx79, align 16, !tbaa !8
  %mul80 = fmul <4 x float> %mul21, %18
  %19 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %mul20, <4 x float> %17, <4 x float> %mul80)
  store <4 x float> %19, <4 x float>* %arrayidx33, align 16, !tbaa !8
  br label %if.end83

if.end83:                                         ; preds = %if.then73, %if.end
  tail call void @_Z7barrierj(i32 1) #5
  %sub84 = add nsw i32 %x.0161, -2
  %cmp58 = icmp sgt i32 %sub84, 0
  br i1 %cmp58, label %for.body, label %for.cond.cleanup

if.then87:                                        ; preds = %for.cond.cleanup
  %20 = load <4 x float>, <4 x float>* %d, align 16, !tbaa !8
  %arrayidx90 = getelementptr inbounds <4 x float>, <4 x float>* %c, i64 %idxprom
  store <4 x float> %20, <4 x float>* %arrayidx90, align 16, !tbaa !8
  br label %if.end91

if.end91:                                         ; preds = %if.then87, %for.cond.cleanup
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: convergent nounwind readnone
declare dso_local <4 x float> @_Z4sqrtDv4_f(<4 x float>) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local <4 x float> @_Z3expDv4_f(<4 x float>) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #3

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!3 = !{i32 0, i32 1, i32 1, i32 3, i32 3}
!4 = !{!"none", !"none", !"none", !"none", !"none"}
!5 = !{!"int", !"float4*", !"float4*", !"float4*", !"float4*"}
!6 = !{!"int", !"float __attribute__((ext_vector_type(4)))*", !"float __attribute__((ext_vector_type(4)))*", !"float __attribute__((ext_vector_type(4)))*", !"float __attribute__((ext_vector_type(4)))*"}
!7 = !{!"", !"const", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{float 2.500000e+00}
