; ModuleID = 'src/521.src'
source_filename = "src/521.src"
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
  %or.cond258 = or i1 %or.cond, %cmp11
  br i1 %or.cond258, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = bitcast double* %a to [13 x [13 x double]]*
  %4 = bitcast double* %b to [13 x [13 x double]]*
  %5 = bitcast double* %c to [13 x [13 x double]]*
  %6 = bitcast double* %d to [13 x [13 x double]]*
  %7 = bitcast double* %e to [13 x [13 x double]]*
  %8 = bitcast double* %f to [13 x [13 x double]]*
  %9 = bitcast double* %g to [13 x [13 x [5 x double]]]*
  %idxprom = sext i32 %conv to i64
  %idxprom13 = sext i32 %conv3 to i64
  %idxprom15 = sext i32 %conv6 to i64
  %arrayidx16 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom13, i64 %idxprom15
  %10 = load double, double* %arrayidx16, align 8, !tbaa !7
  %arrayidx22 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %3, i64 %idxprom, i64 %idxprom13, i64 %idxprom15
  %11 = load double, double* %arrayidx22, align 8, !tbaa !7
  %arrayidx28 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %4, i64 %idxprom, i64 %idxprom13, i64 %idxprom15
  %12 = load double, double* %arrayidx28, align 8, !tbaa !7
  %arrayidx34 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %5, i64 %idxprom, i64 %idxprom13, i64 %idxprom15
  %13 = load double, double* %arrayidx34, align 8, !tbaa !7
  %arrayidx40 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom13, i64 %idxprom15
  %14 = load double, double* %arrayidx40, align 8, !tbaa !7
  %mul = fmul double %14, %14
  %arrayidx47 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 0
  %15 = load double, double* %arrayidx47, align 8, !tbaa !7
  %arrayidx54 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 1
  %16 = load double, double* %arrayidx54, align 8, !tbaa !7
  %arrayidx61 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 2
  %17 = load double, double* %arrayidx61, align 8, !tbaa !7
  %arrayidx68 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 3
  %18 = load double, double* %arrayidx68, align 8, !tbaa !7
  %arrayidx75 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %9, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 4
  %19 = load double, double* %arrayidx75, align 8, !tbaa !7
  %div = fdiv double 4.000000e-01, %mul
  %arrayidx81 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 %idxprom13, i64 %idxprom15
  %20 = load double, double* %arrayidx81, align 8, !tbaa !7
  %21 = fneg double %11
  %neg = fmul double %16, %21
  %22 = tail call double @llvm.fmuladd.f64(double %20, double %15, double %neg)
  %neg85 = fsub double -0.000000e+00, %12
  %23 = tail call double @llvm.fmuladd.f64(double %neg85, double %17, double %22)
  %neg87 = fsub double -0.000000e+00, %13
  %24 = tail call double @llvm.fmuladd.f64(double %neg87, double %18, double %23)
  %add88 = fadd double %19, %24
  %mul89 = fmul double %div, %add88
  %call90 = tail call double @_Z4sqrtd(double 5.000000e-01) #3
  %mul91 = fmul double %10, %call90
  %neg93 = fsub double -0.000000e+00, %16
  %25 = tail call double @llvm.fmuladd.f64(double %11, double %15, double %neg93)
  %mul94 = fmul double %25, %mul91
  %mul97 = fmul double %14, %mul91
  %mul98 = fmul double %mul97, %mul89
  %sub = fsub double %15, %mul89
  store double %sub, double* %arrayidx47, align 8, !tbaa !7
  %fneg = fneg double %10
  %neg107 = fsub double -0.000000e+00, %18
  %26 = tail call double @llvm.fmuladd.f64(double %13, double %15, double %neg107)
  %mul108 = fmul double %26, %fneg
  store double %mul108, double* %arrayidx54, align 8, !tbaa !7
  %neg117 = fsub double -0.000000e+00, %17
  %27 = tail call double @llvm.fmuladd.f64(double %12, double %15, double %neg117)
  %mul118 = fmul double %10, %27
  store double %mul118, double* %arrayidx61, align 8, !tbaa !7
  %add127 = fsub double %mul98, %mul94
  store double %add127, double* %arrayidx68, align 8, !tbaa !7
  %add135 = fadd double %mul94, %mul98
  store double %add135, double* %arrayidx75, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: convergent nounwind readnone
declare dso_local double @_Z4sqrtd(double) local_unnamed_addr #1

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
!6 = !{!"const", !"const", !"const", !"const", !"const", !"const", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
