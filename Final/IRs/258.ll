; ModuleID = 'src/258.src'
source_filename = "src/258.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture %a, double* nocapture %b, double* nocapture readonly %c, i32 %d, i32 %e, i32 %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv4 = trunc i64 %call3 to i32
  %cmp = icmp slt i32 %conv, %f
  %cmp6 = icmp slt i32 %conv2, %e
  %or.cond = and i1 %cmp, %cmp6
  %cmp9 = icmp slt i32 %conv4, %d
  %or.cond137 = and i1 %or.cond, %cmp9
  br i1 %or.cond137, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %1 = bitcast double* %b to [13 x [13 x [5 x double]]]*
  %2 = bitcast double* %c to [13 x double]*
  %conv11 = sitofp i32 %conv to double
  %sub = add nsw i32 %f, -1
  %conv12 = sitofp i32 %sub to double
  %div = fdiv double %conv11, %conv12
  %conv13 = sitofp i32 %conv2 to double
  %div14 = fdiv double %conv13, 1.100000e+01
  %conv15 = sitofp i32 %conv4 to double
  %div16 = fdiv double %conv15, 1.100000e+01
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %sext135 = shl i64 %call1, 32
  %idxprom19 = ashr exact i64 %sext135, 32
  %sext136 = shl i64 %call3, 32
  %idxprom21 = ashr exact i64 %sext136, 32
  br label %for.body

for.body:                                         ; preds = %for.body, %if.end
  %indvars.iv = phi i64 [ 0, %if.end ], [ %indvars.iv.next, %for.body ]
  %arrayidx24 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom19, i64 %idxprom21, i64 %indvars.iv
  store double 0.000000e+00, double* %arrayidx24, align 8, !tbaa !7
  %arrayidx27 = getelementptr inbounds [13 x double], [13 x double]* %2, i64 %indvars.iv, i64 0
  %3 = load double, double* %arrayidx27, align 8, !tbaa !7
  %arrayidx30 = getelementptr inbounds [13 x double], [13 x double]* %2, i64 %indvars.iv, i64 1
  %4 = load double, double* %arrayidx30, align 8, !tbaa !7
  %arrayidx33 = getelementptr inbounds [13 x double], [13 x double]* %2, i64 %indvars.iv, i64 4
  %5 = load double, double* %arrayidx33, align 8, !tbaa !7
  %arrayidx36 = getelementptr inbounds [13 x double], [13 x double]* %2, i64 %indvars.iv, i64 7
  %6 = load double, double* %arrayidx36, align 8, !tbaa !7
  %arrayidx39 = getelementptr inbounds [13 x double], [13 x double]* %2, i64 %indvars.iv, i64 10
  %7 = load double, double* %arrayidx39, align 8, !tbaa !7
  %8 = tail call double @llvm.fmuladd.f64(double %7, double %div16, double %6)
  %9 = tail call double @llvm.fmuladd.f64(double %8, double %div16, double %5)
  %10 = tail call double @llvm.fmuladd.f64(double %9, double %div16, double %4)
  %11 = tail call double @llvm.fmuladd.f64(double %10, double %div16, double %3)
  %arrayidx42 = getelementptr inbounds [13 x double], [13 x double]* %2, i64 %indvars.iv, i64 2
  %12 = load double, double* %arrayidx42, align 8, !tbaa !7
  %arrayidx45 = getelementptr inbounds [13 x double], [13 x double]* %2, i64 %indvars.iv, i64 5
  %13 = load double, double* %arrayidx45, align 8, !tbaa !7
  %arrayidx48 = getelementptr inbounds [13 x double], [13 x double]* %2, i64 %indvars.iv, i64 8
  %14 = load double, double* %arrayidx48, align 8, !tbaa !7
  %arrayidx51 = getelementptr inbounds [13 x double], [13 x double]* %2, i64 %indvars.iv, i64 11
  %15 = load double, double* %arrayidx51, align 8, !tbaa !7
  %16 = tail call double @llvm.fmuladd.f64(double %15, double %div14, double %14)
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %div14, double %13)
  %18 = tail call double @llvm.fmuladd.f64(double %17, double %div14, double %12)
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %div14, double %11)
  %arrayidx54 = getelementptr inbounds [13 x double], [13 x double]* %2, i64 %indvars.iv, i64 3
  %20 = load double, double* %arrayidx54, align 8, !tbaa !7
  %arrayidx57 = getelementptr inbounds [13 x double], [13 x double]* %2, i64 %indvars.iv, i64 6
  %21 = load double, double* %arrayidx57, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [13 x double], [13 x double]* %2, i64 %indvars.iv, i64 9
  %22 = load double, double* %arrayidx60, align 8, !tbaa !7
  %arrayidx63 = getelementptr inbounds [13 x double], [13 x double]* %2, i64 %indvars.iv, i64 12
  %23 = load double, double* %arrayidx63, align 8, !tbaa !7
  %24 = tail call double @llvm.fmuladd.f64(double %23, double %div, double %22)
  %25 = tail call double @llvm.fmuladd.f64(double %24, double %div, double %21)
  %26 = tail call double @llvm.fmuladd.f64(double %25, double %div, double %20)
  %27 = tail call double @llvm.fmuladd.f64(double %26, double %div, double %19)
  %arrayidx71 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom, i64 %idxprom19, i64 %idxprom21, i64 %indvars.iv
  store double %27, double* %arrayidx71, align 8, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond, label %cleanup, label %for.body

cleanup:                                          ; preds = %for.body, %entry
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
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
