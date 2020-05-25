; ModuleID = 'src/391.src'
source_filename = "src/391.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A.v = internal unnamed_addr global [1024 x double] undef, align 16
@A.w = internal unnamed_addr global [1024 x double] undef, align 16

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture %a, i32 %b, i32 %c, i32 %d, i32 %e, i32 %f, i32 %g, i32 %h, i32 %i, i32 %j, i32 %k, i32 %l) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %idx.ext = sext i32 %h to i64
  %add.ptr = getelementptr inbounds double, double* %a, i64 %idx.ext
  %call = tail call i64 @_Z13get_global_idj(i32 1) #4
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call3 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %1 = trunc i64 %call3 to i32
  %conv5 = add i32 %1, 1
  %call6 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %2 = trunc i64 %call6 to i32
  %conv8 = add i32 %2, 1
  %mul = shl nsw i32 %conv, 1
  %sub = sub nsw i32 %mul, %l
  %mul9 = shl nsw i32 %conv5, 1
  %sub10 = sub nsw i32 %mul9, %k
  %mul11 = shl nsw i32 %conv8, 1
  %sub12 = sub nsw i32 %mul11, %j
  %add13 = add nsw i32 %sub, 1
  %mul14 = mul i32 %c, %b
  %mul15 = mul i32 %mul14, %add13
  %mul16 = mul nsw i32 %sub10, %b
  %add17 = add i32 %sub12, %mul16
  %add18 = add i32 %add17, %mul15
  %idxprom = sext i32 %add18 to i64
  %arrayidx = getelementptr inbounds double, double* %add.ptr, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8, !tbaa !7
  %add22 = add nsw i32 %sub10, 2
  %mul23 = mul nsw i32 %add22, %b
  %add24 = add i32 %mul23, %sub12
  %add25 = add i32 %add24, %mul15
  %idxprom26 = sext i32 %add25 to i64
  %arrayidx27 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom26
  %4 = load double, double* %arrayidx27, align 8, !tbaa !7
  %add28 = fadd double %3, %4
  %mul30 = mul i32 %mul14, %sub
  %add31 = add nsw i32 %sub10, 1
  %mul32 = mul nsw i32 %add31, %b
  %add33 = add i32 %sub12, %mul30
  %add34 = add i32 %add33, %mul32
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom35
  %5 = load double, double* %arrayidx36, align 8, !tbaa !7
  %add37 = fadd double %add28, %5
  %add38 = add nsw i32 %sub, 2
  %mul40 = mul i32 %mul14, %add38
  %add43 = add i32 %mul32, %sub12
  %add44 = add i32 %add43, %mul40
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom45
  %6 = load double, double* %arrayidx46, align 8, !tbaa !7
  %add47 = fadd double %add37, %6
  %idxprom48 = sext i32 %sub12 to i64
  %arrayidx49 = getelementptr inbounds [1024 x double], [1024 x double]* @A.v, i64 0, i64 %idxprom48
  store double %add47, double* %arrayidx49, align 8, !tbaa !7
  %add54 = add i32 %add17, %mul30
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom55
  %7 = load double, double* %arrayidx56, align 8, !tbaa !7
  %add62 = add i32 %add17, %mul40
  %idxprom63 = sext i32 %add62 to i64
  %arrayidx64 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom63
  %8 = load double, double* %arrayidx64, align 8, !tbaa !7
  %add65 = fadd double %7, %8
  %add71 = add i32 %add33, %mul23
  %idxprom72 = sext i32 %add71 to i64
  %arrayidx73 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom72
  %9 = load double, double* %arrayidx73, align 8, !tbaa !7
  %add74 = fadd double %add65, %9
  %add81 = add i32 %add24, %mul40
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom82
  %10 = load double, double* %arrayidx83, align 8, !tbaa !7
  %add84 = fadd double %add74, %10
  %arrayidx86 = getelementptr inbounds [1024 x double], [1024 x double]* @A.w, i64 0, i64 %idxprom48
  store double %add84, double* %arrayidx86, align 8, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #5
  %sub87 = add nsw i32 %e, -1
  %cmp = icmp slt i32 %conv8, %sub87
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %idx.ext1 = sext i32 %i to i64
  %add.ptr2 = getelementptr inbounds double, double* %a, i64 %idx.ext1
  %add96 = add nsw i32 %add54, 1
  %idxprom97 = sext i32 %add96 to i64
  %arrayidx98 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom97
  %11 = load double, double* %arrayidx98, align 8, !tbaa !7
  %add105 = add nsw i32 %add62, 1
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom106
  %12 = load double, double* %arrayidx107, align 8, !tbaa !7
  %add108 = fadd double %11, %12
  %add115 = add nsw i32 %add71, 1
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom116
  %13 = load double, double* %arrayidx117, align 8, !tbaa !7
  %add118 = fadd double %add108, %13
  %add126 = add nsw i32 %add81, 1
  %idxprom127 = sext i32 %add126 to i64
  %arrayidx128 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom127
  %14 = load double, double* %arrayidx128, align 8, !tbaa !7
  %add129 = fadd double %add118, %14
  %add136 = add nsw i32 %add18, 1
  %idxprom137 = sext i32 %add136 to i64
  %arrayidx138 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom137
  %15 = load double, double* %arrayidx138, align 8, !tbaa !7
  %add146 = add nsw i32 %add25, 1
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom147
  %16 = load double, double* %arrayidx148, align 8, !tbaa !7
  %add149 = fadd double %15, %16
  %add156 = add nsw i32 %add34, 1
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom157
  %17 = load double, double* %arrayidx158, align 8, !tbaa !7
  %add159 = fadd double %add149, %17
  %add167 = add nsw i32 %add44, 1
  %idxprom168 = sext i32 %add167 to i64
  %arrayidx169 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom168
  %18 = load double, double* %arrayidx169, align 8, !tbaa !7
  %add170 = fadd double %add159, %18
  %add177 = add i32 %add43, %mul15
  %add178 = add nsw i32 %add177, 1
  %idxprom179 = sext i32 %add178 to i64
  %arrayidx180 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom179
  %19 = load double, double* %arrayidx180, align 8, !tbaa !7
  %idxprom189 = sext i32 %add177 to i64
  %arrayidx190 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom189
  %20 = load double, double* %arrayidx190, align 8, !tbaa !7
  %add198 = add nsw i32 %add177, 2
  %idxprom199 = sext i32 %add198 to i64
  %arrayidx200 = getelementptr inbounds double, double* %add.ptr, i64 %idxprom199
  %21 = load double, double* %arrayidx200, align 8, !tbaa !7
  %add201 = fadd double %20, %21
  %add202 = fadd double %add170, %add201
  %mul203 = fmul double %add202, 2.500000e-01
  %22 = tail call double @llvm.fmuladd.f64(double %19, double 5.000000e-01, double %mul203)
  %23 = load double, double* %arrayidx49, align 8, !tbaa !7
  %add206 = add nsw i32 %sub12, 2
  %idxprom207 = sext i32 %add206 to i64
  %arrayidx208 = getelementptr inbounds [1024 x double], [1024 x double]* @A.v, i64 0, i64 %idxprom207
  %24 = load double, double* %arrayidx208, align 8, !tbaa !7
  %add209 = fadd double %23, %24
  %add210 = fadd double %add129, %add209
  %25 = tail call double @llvm.fmuladd.f64(double %add210, double 1.250000e-01, double %22)
  %26 = load double, double* %arrayidx86, align 8, !tbaa !7
  %arrayidx216 = getelementptr inbounds [1024 x double], [1024 x double]* @A.w, i64 0, i64 %idxprom207
  %27 = load double, double* %arrayidx216, align 8, !tbaa !7
  %add217 = fadd double %26, %27
  %28 = tail call double @llvm.fmuladd.f64(double %add217, double 6.250000e-02, double %25)
  %mul219 = mul nsw i32 %conv, %f
  %mul220379 = add i32 %mul219, %conv5
  %add222 = mul i32 %mul220379, %e
  %add223 = add nsw i32 %add222, %conv8
  %idxprom224 = sext i32 %add223 to i64
  %arrayidx225 = getelementptr inbounds double, double* %add.ptr2, i64 %idxprom224
  store double %28, double* %arrayidx225, align 8, !tbaa !7
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
!3 = !{i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"int", !"int", !"int", !"int", !"int", !"int", !"int", !"int", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
