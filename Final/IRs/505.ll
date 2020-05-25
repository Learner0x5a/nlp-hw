; ModuleID = 'src/505.src'
source_filename = "src/505.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture %a, i32 %b, i32 %c, i32 %d) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #2
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %2 = trunc i64 %call4 to i32
  %conv6 = add i32 %2, 1
  %cmp = icmp sgt i32 %conv, %d
  %cmp8 = icmp sgt i32 %conv3, %c
  %or.cond = or i1 %cmp, %cmp8
  %cmp11 = icmp sgt i32 %conv6, %b
  %or.cond152 = or i1 %or.cond, %cmp11
  br i1 %or.cond152, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %3 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %idxprom = sext i32 %conv to i64
  %idxprom13 = sext i32 %conv3 to i64
  %idxprom15 = sext i32 %conv6 to i64
  %arrayidx16 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom13, i64 %idxprom15
  %arrayidx17 = getelementptr inbounds [5 x double], [5 x double]* %arrayidx16, i64 0, i64 0
  %4 = bitcast [5 x double]* %arrayidx16 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !7
  %arrayidx24 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 1
  %6 = load double, double* %arrayidx24, align 8, !tbaa !7
  %arrayidx31 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 2
  %7 = load double, double* %arrayidx31, align 8, !tbaa !7
  %arrayidx38 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 3
  %8 = load double, double* %arrayidx38, align 8, !tbaa !7
  %arrayidx45 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %3, i64 %idxprom, i64 %idxprom13, i64 %idxprom15, i64 4
  %9 = load double, double* %arrayidx45, align 8, !tbaa !7
  %call46 = tail call double @_Z4sqrtd(double 5.000000e-01) #2
  %mul = fmul double %7, %call46
  %add47 = fadd double %8, %9
  %mul48 = fmul double %add47, 5.000000e-01
  %fneg = fneg double %6
  store double %fneg, double* %arrayidx17, align 8, !tbaa !7
  %10 = bitcast double* %arrayidx24 to i64*
  store i64 %5, i64* %10, align 8, !tbaa !7
  %sub = fsub double %8, %9
  %mul64 = fmul double %call46, %sub
  store double %mul64, double* %arrayidx31, align 8, !tbaa !7
  %add73 = fsub double %mul48, %mul
  store double %add73, double* %arrayidx38, align 8, !tbaa !7
  %add81 = fadd double %mul, %mul48
  store double %add81, double* %arrayidx45, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local double @_Z4sqrtd(double) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
