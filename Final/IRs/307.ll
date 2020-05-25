; ModuleID = 'src/307.src'
source_filename = "src/307.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture %b, double* nocapture readonly %c, double* nocapture %d, double* nocapture %e, i32 %f, i32 %g, i32 %h) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %call3 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv4 = trunc i64 %call3 to i32
  %cmp = icmp slt i32 %conv, %h
  %conv2 = trunc i64 %call1 to i32
  %cmp6 = icmp slt i32 %conv2, %g
  %or.cond = and i1 %cmp, %cmp6
  %cmp9 = icmp slt i32 %conv4, %f
  %or.cond157 = and i1 %or.cond, %cmp9
  br i1 %or.cond157, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast double* %b to [13 x [13 x [5 x double]]]*
  %1 = bitcast double* %c to [13 x [13 x [5 x double]]]*
  %2 = bitcast double* %d to [13 x [13 x double]]*
  %sext154 = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext154, 32
  %sext155 = shl i64 %call1, 32
  %idxprom13 = ashr exact i64 %sext155, 32
  %sext156 = shl i64 %call3, 32
  %idxprom15 = ashr exact i64 %sext156, 32
  %arrayidx18 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 0
  %3 = load double, double* %arrayidx18, align 8, !tbaa !7
  %fneg = fneg double %3
  %arrayidx26 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 0
  store double %fneg, double* %arrayidx26, align 8, !tbaa !7
  %arrayidx18.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 1
  %4 = load double, double* %arrayidx18.1, align 8, !tbaa !7
  %fneg.1 = fneg double %4
  %arrayidx26.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 1
  store double %fneg.1, double* %arrayidx26.1, align 8, !tbaa !7
  %arrayidx18.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 2
  %5 = load double, double* %arrayidx18.2, align 8, !tbaa !7
  %fneg.2 = fneg double %5
  %arrayidx26.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 2
  store double %fneg.2, double* %arrayidx26.2, align 8, !tbaa !7
  %arrayidx18.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 3
  %6 = load double, double* %arrayidx18.3, align 8, !tbaa !7
  %fneg.3 = fneg double %6
  %arrayidx26.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 3
  store double %fneg.3, double* %arrayidx26.3, align 8, !tbaa !7
  %arrayidx18.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 4
  %7 = load double, double* %arrayidx18.4, align 8, !tbaa !7
  %fneg.4 = fneg double %7
  %arrayidx26.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 4
  store double %fneg.4, double* %arrayidx26.4, align 8, !tbaa !7
  %8 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %9 = bitcast double* %e to [13 x [13 x double]]*
  %arrayidx33 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 0
  %10 = load double, double* %arrayidx33, align 8, !tbaa !7
  %div = fdiv double 1.000000e+00, %10
  %arrayidx39 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom13, i64 %idxprom15
  store double %div, double* %arrayidx39, align 8, !tbaa !7
  %arrayidx46 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 1
  %11 = load double, double* %arrayidx46, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 2
  %12 = load double, double* %arrayidx60, align 8, !tbaa !7
  %mul68 = fmul double %12, %12
  %13 = tail call double @llvm.fmuladd.f64(double %11, double %11, double %mul68)
  %arrayidx75 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %8, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 3
  %14 = load double, double* %arrayidx75, align 8, !tbaa !7
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %13)
  %mul = fmul double %15, 5.000000e-01
  %mul83 = fmul double %div, %mul
  %arrayidx89 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %2, i64 %idxprom, i64 %idxprom13, i64 %idxprom15
  store double %mul83, double* %arrayidx89, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

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
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
