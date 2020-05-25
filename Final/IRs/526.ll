; ModuleID = 'src/526.src'
source_filename = "src/526.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture readonly %b, double* nocapture readonly %c, double* nocapture readonly %d, double* nocapture readonly %e, double* nocapture readonly %f, double* nocapture %g, i32 %h, i32 %i, i32 %j) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #3
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %2 = trunc i64 %call4 to i32
  %conv6 = add i32 %2, 1
  %cmp = icmp sgt i32 %conv, %j
  %cmp8 = icmp sgt i32 %conv3, %i
  %or.cond = or i1 %cmp, %cmp8
  %cmp11 = icmp sgt i32 %conv6, %h
  %or.cond255 = or i1 %or.cond, %cmp11
  br i1 %or.cond255, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %4 = bitcast double* %b to [13 x [13 x double]]*
  %5 = bitcast double* %c to [13 x [13 x double]]*
  %6 = bitcast double* %d to [13 x [13 x double]]*
  %7 = bitcast double* %e to [13 x [13 x double]]*
  %8 = bitcast double* %f to [13 x [13 x double]]*
  %9 = bitcast double* %g to [13 x [13 x [5 x double]]]*
  %idxprom = sext i32 %conv to i64
  %idxprom13 = sext i32 %conv3 to i64
  %idxprom15 = sext i32 %conv6 to i64
  %arrayidx16 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %4, i64 %idxprom, i64 %idxprom13, i64 %idxprom15
  %10 = load double, double* %arrayidx16, align 8, !tbaa !7
  %arrayidx22 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %5, i64 %idxprom, i64 %idxprom13, i64 %idxprom15
  %11 = load double, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx28 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 %idxprom13, i64 %idxprom15
  %12 = load double, double* %arrayidx28, align 8, !tbaa !7
  %arrayidx34 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom13, i64 %idxprom15
  %13 = load double, double* %arrayidx34, align 8, !tbaa !7
  %mul = fmul double %13, %13
  %arrayidx41 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 0
  %14 = load double, double* %arrayidx41, align 8, !tbaa !7
  %arrayidx48 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 1
  %15 = load double, double* %arrayidx48, align 8, !tbaa !7
  %arrayidx55 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 2
  %16 = load double, double* %arrayidx55, align 8, !tbaa !7
  %arrayidx62 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 3
  %17 = load double, double* %arrayidx62, align 8, !tbaa !7
  %arrayidx69 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 4
  %18 = load double, double* %arrayidx69, align 8, !tbaa !7
  %arrayidx76 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 0
  %19 = load double, double* %arrayidx76, align 8, !tbaa !7
  %call77 = tail call double @_Z4sqrtd(double 5.000000e-01) #3
  %mul78 = fmul double %19, %call77
  %div = fdiv double %mul78, %13
  %add79 = fadd double %17, %18
  %mul80 = fmul double %add79, %div
  %add81 = fadd double %16, %mul80
  %sub = fsub double %17, %18
  %mul82 = fmul double %sub, %mul78
  store double %add81, double* %arrayidx41, align 8, !tbaa !7
  %fneg = fneg double %19
  %mul91 = fmul double %10, %add81
  %20 = tail call double @llvm.fmuladd.f64(double %fneg, double %15, double %mul91)
  store double %20, double* %arrayidx48, align 8, !tbaa !7
  %mul100 = fmul double %11, %add81
  %21 = tail call double @llvm.fmuladd.f64(double %19, double %14, double %mul100)
  store double %21, double* %arrayidx55, align 8, !tbaa !7
  %22 = tail call double @llvm.fmuladd.f64(double %12, double %add81, double %mul82)
  store double %22, double* %arrayidx62, align 8, !tbaa !7
  %fneg116 = fneg double %10
  %mul118 = fmul double %11, %14
  %23 = tail call double @llvm.fmuladd.f64(double %fneg116, double %15, double %mul118)
  %arrayidx125 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom13, i64 %idxprom15
  %24 = load double, double* %arrayidx125, align 8, !tbaa !7
  %mul126 = fmul double %add81, %24
  %25 = tail call double @llvm.fmuladd.f64(double %19, double %23, double %mul126)
  %mul127 = fmul double %mul, 2.500000e+00
  %26 = tail call double @llvm.fmuladd.f64(double %mul127, double %mul80, double %25)
  %27 = tail call double @llvm.fmuladd.f64(double %12, double %mul82, double %26)
  store double %27, double* %arrayidx69, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local double @_Z4sqrtd(double) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

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
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
