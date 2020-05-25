; ModuleID = 'src/382.src'
source_filename = "src/382.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A.k = internal unnamed_addr global [1024 x double] undef, align 16
@A.l = internal unnamed_addr global [1024 x double] undef, align 16

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture %b, double* nocapture readonly %c, i32 %d, i32 %e, i32 %f, i32 %g) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 1) #4
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %1 = trunc i64 %call1 to i32
  %conv3 = add i32 %1, 1
  %call4 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %conv5 = trunc i64 %call4 to i32
  %cmp285 = icmp slt i32 %conv5, %d
  br i1 %cmp285, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mul = mul i32 %e, %d
  %mul7 = mul i32 %mul, %conv
  %mul8 = mul nsw i32 %1, %e
  %add14 = add i32 %1, 2
  %mul15 = mul nsw i32 %add14, %d
  %mul24 = mul i32 %mul, %0
  %mul25 = mul nsw i32 %conv3, %d
  %add32 = add i32 %0, 2
  %mul34 = mul i32 %mul, %add32
  %mul48 = mul nsw i32 %1, %d
  %call89 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  %2 = trunc i64 %call89 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %m.0286 = phi i32 [ %conv5, %for.body.lr.ph ], [ %conv92, %for.body ]
  %add9 = add i32 %m.0286, %g
  %add10 = add i32 %add9, %mul8
  %add11 = add i32 %add10, %mul7
  %idxprom = sext i32 %add11 to i64
  %arrayidx = getelementptr inbounds double, double* %a, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8, !tbaa !7
  %add17 = add i32 %add9, %mul15
  %add18 = add i32 %add17, %mul7
  %idxprom19 = sext i32 %add18 to i64
  %arrayidx20 = getelementptr inbounds double, double* %a, i64 %idxprom19
  %4 = load double, double* %arrayidx20, align 8, !tbaa !7
  %add21 = fadd double %3, %4
  %add27 = add i32 %add9, %mul24
  %add28 = add i32 %add27, %mul25
  %idxprom29 = sext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds double, double* %a, i64 %idxprom29
  %5 = load double, double* %arrayidx30, align 8, !tbaa !7
  %add31 = fadd double %add21, %5
  %add37 = add i32 %add9, %mul25
  %add38 = add i32 %add37, %mul34
  %idxprom39 = sext i32 %add38 to i64
  %arrayidx40 = getelementptr inbounds double, double* %a, i64 %idxprom39
  %6 = load double, double* %arrayidx40, align 8, !tbaa !7
  %add41 = fadd double %add31, %6
  %idxprom42 = sext i32 %m.0286 to i64
  %arrayidx43 = getelementptr inbounds [1024 x double], [1024 x double]* @A.k, i64 0, i64 %idxprom42
  store double %add41, double* %arrayidx43, align 8, !tbaa !7
  %add50 = add i32 %add9, %mul48
  %add51 = add i32 %add50, %mul24
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds double, double* %a, i64 %idxprom52
  %7 = load double, double* %arrayidx53, align 8, !tbaa !7
  %add61 = add i32 %add27, %mul15
  %idxprom62 = sext i32 %add61 to i64
  %arrayidx63 = getelementptr inbounds double, double* %a, i64 %idxprom62
  %8 = load double, double* %arrayidx63, align 8, !tbaa !7
  %add64 = fadd double %7, %8
  %add72 = add i32 %add50, %mul34
  %idxprom73 = sext i32 %add72 to i64
  %arrayidx74 = getelementptr inbounds double, double* %a, i64 %idxprom73
  %9 = load double, double* %arrayidx74, align 8, !tbaa !7
  %add75 = fadd double %add64, %9
  %add83 = add i32 %add17, %mul34
  %idxprom84 = sext i32 %add83 to i64
  %arrayidx85 = getelementptr inbounds double, double* %a, i64 %idxprom84
  %10 = load double, double* %arrayidx85, align 8, !tbaa !7
  %add86 = fadd double %add75, %10
  %arrayidx88 = getelementptr inbounds [1024 x double], [1024 x double]* @A.l, i64 0, i64 %idxprom42
  store double %add86, double* %arrayidx88, align 8, !tbaa !7
  %conv92 = add i32 %m.0286, %2
  %cmp = icmp slt i32 %conv92, %d
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  tail call void @_Z7barrierj(i32 1) #5
  %add93 = add nsw i32 %conv5, 1
  %sub95 = add nsw i32 %d, -1
  %cmp96283 = icmp slt i32 %add93, %sub95
  br i1 %cmp96283, label %for.body98.lr.ph, label %for.end166

for.body98.lr.ph:                                 ; preds = %for.end
  %mul99 = mul nsw i32 %conv, %e
  %mul100282 = add i32 %mul99, %conv3
  %add102 = mul i32 %mul100282, %d
  %arrayidx117 = getelementptr inbounds double, double* %c, i64 1
  %arrayidx141 = getelementptr inbounds double, double* %c, i64 2
  %call162 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  %11 = trunc i64 %call162 to i32
  br label %for.body98

for.body98:                                       ; preds = %for.body98.lr.ph, %for.body98
  %m.1284 = phi i32 [ %add93, %for.body98.lr.ph ], [ %conv165, %for.body98 ]
  %add103 = add nsw i32 %m.1284, %add102
  %add104 = add i32 %add103, %g
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds double, double* %b, i64 %idxprom105
  %12 = load double, double* %arrayidx106, align 8, !tbaa !7
  %13 = load double, double* %c, align 8, !tbaa !7
  %arrayidx115 = getelementptr inbounds double, double* %a, i64 %idxprom105
  %14 = load double, double* %arrayidx115, align 8, !tbaa !7
  %15 = tail call double @llvm.fmuladd.f64(double %13, double %14, double %12)
  %16 = load double, double* %arrayidx117, align 8, !tbaa !7
  %add124 = add i32 %add104, -1
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds double, double* %a, i64 %idxprom125
  %17 = load double, double* %arrayidx126, align 8, !tbaa !7
  %add133 = add i32 %add104, 1
  %idxprom134 = sext i32 %add133 to i64
  %arrayidx135 = getelementptr inbounds double, double* %a, i64 %idxprom134
  %18 = load double, double* %arrayidx135, align 8, !tbaa !7
  %add136 = fadd double %17, %18
  %idxprom137 = sext i32 %m.1284 to i64
  %arrayidx138 = getelementptr inbounds [1024 x double], [1024 x double]* @A.k, i64 0, i64 %idxprom137
  %19 = load double, double* %arrayidx138, align 8, !tbaa !7
  %add139 = fadd double %add136, %19
  %20 = tail call double @llvm.fmuladd.f64(double %16, double %add139, double %15)
  %21 = load double, double* %arrayidx141, align 8, !tbaa !7
  %arrayidx143 = getelementptr inbounds [1024 x double], [1024 x double]* @A.l, i64 0, i64 %idxprom137
  %22 = load double, double* %arrayidx143, align 8, !tbaa !7
  %sub144 = add nsw i32 %m.1284, -1
  %idxprom145 = sext i32 %sub144 to i64
  %arrayidx146 = getelementptr inbounds [1024 x double], [1024 x double]* @A.k, i64 0, i64 %idxprom145
  %23 = load double, double* %arrayidx146, align 8, !tbaa !7
  %add147 = fadd double %22, %23
  %add148 = add nsw i32 %m.1284, 1
  %idxprom149 = sext i32 %add148 to i64
  %arrayidx150 = getelementptr inbounds [1024 x double], [1024 x double]* @A.k, i64 0, i64 %idxprom149
  %24 = load double, double* %arrayidx150, align 8, !tbaa !7
  %add151 = fadd double %add147, %24
  %25 = tail call double @llvm.fmuladd.f64(double %21, double %add151, double %20)
  store double %25, double* %arrayidx106, align 8, !tbaa !7
  %conv165 = add i32 %m.1284, %11
  %cmp96 = icmp slt i32 %conv165, %sub95
  br i1 %cmp96, label %for.body98, label %for.end166

for.end166:                                       ; preds = %for.body98, %for.end
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

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
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"int", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
