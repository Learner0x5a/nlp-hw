; ModuleID = 'src/371.src'
source_filename = "src/371.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A.m = internal unnamed_addr global [1024 x double] undef, align 16
@A.n = internal unnamed_addr global [1024 x double] undef, align 16
@A.o = internal unnamed_addr global [1024 x double] undef, align 16

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %f, i32 %g, i32 %h, i32 %i) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %idx.ext = sext i32 %h to i64
  %add.ptr = getelementptr inbounds double, double* %a, i64 %idx.ext
  %idx.ext1 = sext i32 %i to i64
  %add.ptr2 = getelementptr inbounds double, double* %a, i64 %idx.ext1
  %call = tail call i64 @_Z13get_global_idj(i32 1) #4
  %conv = trunc i64 %call to i32
  %call3 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %conv4 = trunc i64 %call3 to i32
  %call5 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %conv6 = trunc i64 %call5 to i32
  %mul = mul i32 %c, %b
  %mul7 = mul i32 %mul, %conv
  %add = add nsw i32 %conv4, 1
  %mul8 = mul nsw i32 %add, %b
  %add9 = add i32 %mul7, %conv6
  %add10 = add i32 %add9, %mul8
  %idxprom = sext i32 %add10 to i64
  %arrayidx = getelementptr inbounds double, double* %add.ptr, i64 %idxprom
  %0 = load double, double* %arrayidx, align 8, !tbaa !7
  %mul13 = mul nsw i32 %conv4, %b
  %add14 = add i32 %mul13, %conv6
  %add15 = add i32 %add14, %mul7
  %idxprom16 = sext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom16
  %1 = load double, double* %arrayidx17, align 8, !tbaa !7
  %add18 = fadd double %0, %1
  %sext = shl i64 %call5, 32
  %idxprom19 = ashr exact i64 %sext, 32
  %arrayidx20 = getelementptr inbounds [1024 x double], [1024 x double]* @A.m, i64 0, i64 %idxprom19
  store double %add18, double* %arrayidx20, align 8, !tbaa !7
  %add21 = add nsw i32 %conv, 1
  %mul23 = mul i32 %mul, %add21
  %add26 = add i32 %add14, %mul23
  %idxprom27 = sext i32 %add26 to i64
  %arrayidx28 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom27
  %2 = load double, double* %arrayidx28, align 8, !tbaa !7
  %add36 = fadd double %1, %2
  %arrayidx38 = getelementptr inbounds [1024 x double], [1024 x double]* @A.n, i64 0, i64 %idxprom19
  store double %add36, double* %arrayidx38, align 8, !tbaa !7
  %add44 = add i32 %mul8, %conv6
  %add45 = add i32 %add44, %mul23
  %idxprom46 = sext i32 %add45 to i64
  %arrayidx47 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom46
  %3 = load double, double* %arrayidx47, align 8, !tbaa !7
  %add56 = fadd double %2, %3
  %add59 = fadd double %add18, %add56
  %arrayidx61 = getelementptr inbounds [1024 x double], [1024 x double]* @A.o, i64 0, i64 %idxprom19
  store double %add59, double* %arrayidx61, align 8, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #5
  %sub = add nsw i32 %b, -1
  %cmp = icmp sgt i32 %sub, %conv6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load double, double* %arrayidx17, align 8, !tbaa !7
  %mul70 = shl nsw i32 %conv, 1
  %mul71 = mul i32 %f, %e
  %mul72 = mul i32 %mul71, %mul70
  %mul73 = shl nsw i32 %conv4, 1
  %mul74 = mul nsw i32 %mul73, %e
  %mul76 = shl nsw i32 %conv6, 1
  %add75 = add i32 %mul74, %mul76
  %add77 = add i32 %add75, %mul72
  %idxprom78 = sext i32 %add77 to i64
  %arrayidx79 = getelementptr inbounds double, double* %add.ptr2, i64 %idxprom78
  %5 = load double, double* %arrayidx79, align 8, !tbaa !7
  %add80 = fadd double %4, %5
  store double %add80, double* %arrayidx79, align 8, !tbaa !7
  %add86 = add nsw i32 %add15, 1
  %idxprom87 = sext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom87
  %6 = load double, double* %arrayidx88, align 8, !tbaa !7
  %add89 = fadd double %4, %6
  %add99 = or i32 %add77, 1
  %idxprom100 = sext i32 %add99 to i64
  %arrayidx101 = getelementptr inbounds double, double* %add.ptr2, i64 %idxprom100
  %7 = load double, double* %arrayidx101, align 8, !tbaa !7
  %8 = tail call double @llvm.fmuladd.f64(double %add89, double 5.000000e-01, double %7)
  store double %8, double* %arrayidx101, align 8, !tbaa !7
  %9 = load double, double* %arrayidx20, align 8, !tbaa !7
  %add109 = or i32 %mul73, 1
  %mul110 = mul nsw i32 %add109, %e
  %add111 = add i32 %mul76, %mul72
  %add113 = add i32 %add111, %mul110
  %idxprom114 = sext i32 %add113 to i64
  %arrayidx115 = getelementptr inbounds double, double* %add.ptr2, i64 %idxprom114
  %10 = load double, double* %arrayidx115, align 8, !tbaa !7
  %11 = tail call double @llvm.fmuladd.f64(double %9, double 5.000000e-01, double %10)
  store double %11, double* %arrayidx115, align 8, !tbaa !7
  %sext329 = add i64 %sext, 4294967296
  %idxprom119 = ashr exact i64 %sext329, 32
  %arrayidx120 = getelementptr inbounds [1024 x double], [1024 x double]* @A.m, i64 0, i64 %idxprom119
  %12 = load double, double* %arrayidx120, align 8, !tbaa !7
  %add121 = fadd double %9, %12
  %add132 = add nsw i32 %add113, 1
  %idxprom133 = sext i32 %add132 to i64
  %arrayidx134 = getelementptr inbounds double, double* %add.ptr2, i64 %idxprom133
  %13 = load double, double* %arrayidx134, align 8, !tbaa !7
  %14 = tail call double @llvm.fmuladd.f64(double %add121, double 2.500000e-01, double %13)
  store double %14, double* %arrayidx134, align 8, !tbaa !7
  %15 = load double, double* %arrayidx38, align 8, !tbaa !7
  %add139 = or i32 %mul70, 1
  %mul141 = mul i32 %mul71, %add139
  %add146 = add i32 %add75, %mul141
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds double, double* %add.ptr2, i64 %idxprom147
  %16 = load double, double* %arrayidx148, align 8, !tbaa !7
  %17 = tail call double @llvm.fmuladd.f64(double %15, double 5.000000e-01, double %16)
  store double %17, double* %arrayidx148, align 8, !tbaa !7
  %arrayidx153 = getelementptr inbounds [1024 x double], [1024 x double]* @A.n, i64 0, i64 %idxprom119
  %18 = load double, double* %arrayidx153, align 8, !tbaa !7
  %add154 = fadd double %15, %18
  %add165 = add nsw i32 %add146, 1
  %idxprom166 = sext i32 %add165 to i64
  %arrayidx167 = getelementptr inbounds double, double* %add.ptr2, i64 %idxprom166
  %19 = load double, double* %arrayidx167, align 8, !tbaa !7
  %20 = tail call double @llvm.fmuladd.f64(double %add154, double 2.500000e-01, double %19)
  store double %20, double* %arrayidx167, align 8, !tbaa !7
  %21 = load double, double* %arrayidx61, align 8, !tbaa !7
  %add178 = add i32 %mul110, %mul76
  %add180 = add i32 %add178, %mul141
  %idxprom181 = sext i32 %add180 to i64
  %arrayidx182 = getelementptr inbounds double, double* %add.ptr2, i64 %idxprom181
  %22 = load double, double* %arrayidx182, align 8, !tbaa !7
  %23 = tail call double @llvm.fmuladd.f64(double %21, double 2.500000e-01, double %22)
  store double %23, double* %arrayidx182, align 8, !tbaa !7
  %arrayidx187 = getelementptr inbounds [1024 x double], [1024 x double]* @A.o, i64 0, i64 %idxprom119
  %24 = load double, double* %arrayidx187, align 8, !tbaa !7
  %add188 = fadd double %21, %24
  %add200 = add nsw i32 %add180, 1
  %idxprom201 = sext i32 %add200 to i64
  %arrayidx202 = getelementptr inbounds double, double* %add.ptr2, i64 %idxprom201
  %25 = load double, double* %arrayidx202, align 8, !tbaa !7
  %26 = tail call double @llvm.fmuladd.f64(double %add188, double 1.250000e-01, double %25)
  store double %26, double* %arrayidx202, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { convergent nounwind readnone }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"int", !"int", !"int", !"int", !"int", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
