; ModuleID = 'src/15.src'
source_filename = "src/15.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(<4 x i8>* nocapture readonly %a, <4 x i8>* nocapture %b) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @_Z15get_global_sizej(i32 0) #3
  %conv4 = trunc i64 %call3 to i32
  %call5 = tail call i64 @_Z15get_global_sizej(i32 1) #3
  %mul = mul i32 %conv4, %conv2
  %add = add i32 %mul, %conv
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %conv6 = trunc i64 %call5 to i32
  %sub = add i32 %conv4, -1
  %cmp8 = icmp ugt i32 %sub, %conv
  %cmp11 = icmp ne i32 %conv2, 0
  %or.cond = and i1 %cmp11, %cmp8
  %sub14 = add i32 %conv6, -1
  %cmp15 = icmp ugt i32 %sub14, %conv2
  %or.cond126 = and i1 %or.cond, %cmp15
  br i1 %or.cond126, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %sub17 = add nsw i32 %add, -1
  %sub18 = sub i32 %sub17, %conv4
  %idxprom = zext i32 %sub18 to i64
  %arrayidx = getelementptr inbounds <4 x i8>, <4 x i8>* %a, i64 %idxprom
  %0 = bitcast <4 x i8>* %arrayidx to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !8
  %call19 = tail call <4 x float> @_Z14convert_float4Dv4_h(i32 %1) #3
  %sub20 = sub i32 %add, %conv4
  %idxprom21 = zext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds <4 x i8>, <4 x i8>* %a, i64 %idxprom21
  %2 = bitcast <4 x i8>* %arrayidx22 to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !8
  %call24 = tail call <4 x float> @_Z14convert_float4Dv4_h(i32 %3) #3
  %add25 = add nsw i32 %add, 1
  %sub26 = sub i32 %add25, %conv4
  %idxprom27 = zext i32 %sub26 to i64
  %arrayidx28 = getelementptr inbounds <4 x i8>, <4 x i8>* %a, i64 %idxprom27
  %4 = bitcast <4 x i8>* %arrayidx28 to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !8
  %call30 = tail call <4 x float> @_Z14convert_float4Dv4_h(i32 %5) #3
  %idxprom32 = sext i32 %sub17 to i64
  %arrayidx33 = getelementptr inbounds <4 x i8>, <4 x i8>* %a, i64 %idxprom32
  %6 = bitcast <4 x i8>* %arrayidx33 to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !8
  %call35 = tail call <4 x float> @_Z14convert_float4Dv4_h(i32 %7) #3
  %idxprom36 = sext i32 %add to i64
  %idxprom41 = sext i32 %add25 to i64
  %arrayidx42 = getelementptr inbounds <4 x i8>, <4 x i8>* %a, i64 %idxprom41
  %8 = bitcast <4 x i8>* %arrayidx42 to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !8
  %call44 = tail call <4 x float> @_Z14convert_float4Dv4_h(i32 %9) #3
  %add46 = add i32 %sub17, %conv4
  %idxprom47 = zext i32 %add46 to i64
  %arrayidx48 = getelementptr inbounds <4 x i8>, <4 x i8>* %a, i64 %idxprom47
  %10 = bitcast <4 x i8>* %arrayidx48 to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !8
  %call50 = tail call <4 x float> @_Z14convert_float4Dv4_h(i32 %11) #3
  %add51 = add i32 %add, %conv4
  %idxprom52 = zext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds <4 x i8>, <4 x i8>* %a, i64 %idxprom52
  %12 = bitcast <4 x i8>* %arrayidx53 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !8
  %call55 = tail call <4 x float> @_Z14convert_float4Dv4_h(i32 %13) #3
  %add57 = add i32 %add25, %conv4
  %idxprom58 = zext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds <4 x i8>, <4 x i8>* %a, i64 %idxprom58
  %14 = bitcast <4 x i8>* %arrayidx59 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !8
  %call61 = tail call <4 x float> @_Z14convert_float4Dv4_h(i32 %15) #3
  %16 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %call24, <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float> %call19)
  %add63 = fadd <4 x float> %16, %call30
  %sub64 = fsub <4 x float> %add63, %call50
  %17 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %call55, <4 x float> <float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float -2.000000e+00>, <4 x float> %sub64)
  %sub66 = fsub <4 x float> %17, %call61
  %sub67 = fsub <4 x float> %call19, %call30
  %18 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %call35, <4 x float> <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>, <4 x float> %sub67)
  %19 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %call44, <4 x float> <float -2.000000e+00, float -2.000000e+00, float -2.000000e+00, float -2.000000e+00>, <4 x float> %18)
  %add70 = fadd <4 x float> %19, %call50
  %sub71 = fsub <4 x float> %add70, %call61
  %call72 = tail call <4 x float> @_Z5hypotDv4_fS_(<4 x float> %sub66, <4 x float> %sub71) #3
  %div = fmul <4 x float> %call72, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %call73 = tail call i32 @_Z14convert_uchar4Dv4_f(<4 x float> %div) #3
  %arrayidx76 = getelementptr inbounds <4 x i8>, <4 x i8>* %b, i64 %idxprom36
  %20 = bitcast <4 x i8>* %arrayidx76 to i32*
  store i32 %call73, i32* %20, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z15get_global_sizej(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local <4 x float> @_Z14convert_float4Dv4_h(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: convergent nounwind readnone
declare dso_local i32 @_Z14convert_uchar4Dv4_f(<4 x float>) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local <4 x float> @_Z5hypotDv4_fS_(<4 x float>, <4 x float>) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1}
!4 = !{!"none", !"none"}
!5 = !{!"uchar4*", !"uchar4*"}
!6 = !{!"uchar __attribute__((ext_vector_type(4)))*", !"uchar __attribute__((ext_vector_type(4)))*"}
!7 = !{!"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
