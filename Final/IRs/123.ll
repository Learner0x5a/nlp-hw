; ModuleID = 'src/123.src'
source_filename = "src/123.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(double* readonly %a, double* readonly %b, double* %c, i32 %d, i32 %e, i32 %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #3
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %1 = trunc i64 %call1 to i32
  %call4 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %2 = trunc i64 %call4 to i32
  %conv6 = add i32 %2, 1
  %sub = add nsw i32 %f, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv3 = add i32 %1, 1
  %sub8 = add nsw i32 %d, -2
  %cmp9 = icmp sgt i32 %conv3, %sub8
  %sub12 = add nsw i32 %e, -2
  %cmp13 = icmp sgt i32 %conv6, %sub12
  %or.cond = or i1 %cmp9, %cmp13
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %mul = mul nsw i32 %sub8, %0
  %add18 = add nsw i32 %mul, %1
  %mul21 = mul i32 %add18, 325
  %idxprom = sext i32 %mul21 to i64
  %arrayidx = getelementptr inbounds double, double* %a, i64 %idxprom
  %3 = bitcast double* %arrayidx to [5 x [5 x double]]*
  %arrayidx23 = getelementptr inbounds double, double* %b, i64 %idxprom
  %4 = bitcast double* %arrayidx23 to [5 x [5 x double]]*
  %mul27 = mul i32 %add18, 975
  %idxprom28 = sext i32 %mul27 to i64
  %arrayidx29 = getelementptr inbounds double, double* %c, i64 %idxprom28
  %5 = bitcast double* %arrayidx29 to [3 x [5 x [5 x double]]]*
  %sext = shl i64 %call4, 32
  %idxprom31 = ashr exact i64 %sext, 32
  %arrayidx34 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 0
  %6 = load double, double* %arrayidx34, align 8, !tbaa !7
  %arrayidx40 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 0
  %7 = load double, double* %arrayidx40, align 8, !tbaa !7
  %neg = fmul double %7, -1.210000e+00
  %8 = tail call double @llvm.fmuladd.f64(double %6, double -5.500000e-02, double %neg)
  %9 = fadd double %8, 0xBFED0A3D70A3D70A
  %idxprom44 = sext i32 %conv6 to i64
  %arrayidx48 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 0
  store double %9, double* %arrayidx48, align 8, !tbaa !7
  %arrayidx54 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 0
  %10 = load double, double* %arrayidx54, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 0
  %11 = load double, double* %arrayidx60, align 8, !tbaa !7
  %neg62 = fmul double %11, -1.210000e+00
  %12 = tail call double @llvm.fmuladd.f64(double %10, double -5.500000e-02, double %neg62)
  %arrayidx67 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 0
  store double %12, double* %arrayidx67, align 8, !tbaa !7
  %arrayidx73 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 0
  %13 = load double, double* %arrayidx73, align 8, !tbaa !7
  %arrayidx79 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 0
  %14 = load double, double* %arrayidx79, align 8, !tbaa !7
  %neg81 = fmul double %14, -1.210000e+00
  %15 = tail call double @llvm.fmuladd.f64(double %13, double -5.500000e-02, double %neg81)
  %arrayidx86 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 0
  store double %15, double* %arrayidx86, align 8, !tbaa !7
  %arrayidx92 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 0
  %16 = load double, double* %arrayidx92, align 8, !tbaa !7
  %arrayidx98 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 0
  %17 = load double, double* %arrayidx98, align 8, !tbaa !7
  %neg100 = fmul double %17, -1.210000e+00
  %18 = tail call double @llvm.fmuladd.f64(double %16, double -5.500000e-02, double %neg100)
  %arrayidx105 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 0
  store double %18, double* %arrayidx105, align 8, !tbaa !7
  %arrayidx111 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 0
  %19 = load double, double* %arrayidx111, align 8, !tbaa !7
  %arrayidx117 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 0
  %20 = load double, double* %arrayidx117, align 8, !tbaa !7
  %neg119 = fmul double %20, -1.210000e+00
  %21 = tail call double @llvm.fmuladd.f64(double %19, double -5.500000e-02, double %neg119)
  %arrayidx124 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 0
  store double %21, double* %arrayidx124, align 8, !tbaa !7
  %arrayidx130 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 1
  %22 = load double, double* %arrayidx130, align 8, !tbaa !7
  %arrayidx136 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 1
  %23 = load double, double* %arrayidx136, align 8, !tbaa !7
  %neg138 = fmul double %23, -1.210000e+00
  %24 = tail call double @llvm.fmuladd.f64(double %22, double -5.500000e-02, double %neg138)
  %arrayidx143 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 1
  store double %24, double* %arrayidx143, align 8, !tbaa !7
  %arrayidx149 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 1
  %25 = load double, double* %arrayidx149, align 8, !tbaa !7
  %arrayidx155 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 1
  %26 = load double, double* %arrayidx155, align 8, !tbaa !7
  %neg157 = fmul double %26, -1.210000e+00
  %27 = tail call double @llvm.fmuladd.f64(double %25, double -5.500000e-02, double %neg157)
  %28 = fadd double %27, 0xBFED0A3D70A3D70A
  %arrayidx164 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 1
  store double %28, double* %arrayidx164, align 8, !tbaa !7
  %arrayidx170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 1
  %29 = load double, double* %arrayidx170, align 8, !tbaa !7
  %arrayidx176 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 1
  %30 = load double, double* %arrayidx176, align 8, !tbaa !7
  %neg178 = fmul double %30, -1.210000e+00
  %31 = tail call double @llvm.fmuladd.f64(double %29, double -5.500000e-02, double %neg178)
  %arrayidx183 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 1
  store double %31, double* %arrayidx183, align 8, !tbaa !7
  %arrayidx189 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 1
  %32 = load double, double* %arrayidx189, align 8, !tbaa !7
  %arrayidx195 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 1
  %33 = load double, double* %arrayidx195, align 8, !tbaa !7
  %neg197 = fmul double %33, -1.210000e+00
  %34 = tail call double @llvm.fmuladd.f64(double %32, double -5.500000e-02, double %neg197)
  %arrayidx202 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 1
  store double %34, double* %arrayidx202, align 8, !tbaa !7
  %arrayidx208 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 1
  %35 = load double, double* %arrayidx208, align 8, !tbaa !7
  %arrayidx214 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 1
  %36 = load double, double* %arrayidx214, align 8, !tbaa !7
  %neg216 = fmul double %36, -1.210000e+00
  %37 = tail call double @llvm.fmuladd.f64(double %35, double -5.500000e-02, double %neg216)
  %arrayidx221 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 1
  store double %37, double* %arrayidx221, align 8, !tbaa !7
  %arrayidx227 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 2
  %38 = load double, double* %arrayidx227, align 8, !tbaa !7
  %arrayidx233 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 2
  %39 = load double, double* %arrayidx233, align 8, !tbaa !7
  %neg235 = fmul double %39, -1.210000e+00
  %40 = tail call double @llvm.fmuladd.f64(double %38, double -5.500000e-02, double %neg235)
  %arrayidx240 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 2
  store double %40, double* %arrayidx240, align 8, !tbaa !7
  %arrayidx246 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 2
  %41 = load double, double* %arrayidx246, align 8, !tbaa !7
  %arrayidx252 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 2
  %42 = load double, double* %arrayidx252, align 8, !tbaa !7
  %neg254 = fmul double %42, -1.210000e+00
  %43 = tail call double @llvm.fmuladd.f64(double %41, double -5.500000e-02, double %neg254)
  %arrayidx259 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 2
  store double %43, double* %arrayidx259, align 8, !tbaa !7
  %arrayidx265 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 2
  %44 = load double, double* %arrayidx265, align 8, !tbaa !7
  %arrayidx271 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 2
  %45 = load double, double* %arrayidx271, align 8, !tbaa !7
  %neg273 = fmul double %45, -1.210000e+00
  %46 = tail call double @llvm.fmuladd.f64(double %44, double -5.500000e-02, double %neg273)
  %47 = fadd double %46, 0xBFED0A3D70A3D70A
  %arrayidx280 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 2
  store double %47, double* %arrayidx280, align 8, !tbaa !7
  %arrayidx286 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 2
  %48 = load double, double* %arrayidx286, align 8, !tbaa !7
  %arrayidx292 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 2
  %49 = load double, double* %arrayidx292, align 8, !tbaa !7
  %neg294 = fmul double %49, -1.210000e+00
  %50 = tail call double @llvm.fmuladd.f64(double %48, double -5.500000e-02, double %neg294)
  %arrayidx299 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 2
  store double %50, double* %arrayidx299, align 8, !tbaa !7
  %arrayidx305 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 2
  %51 = load double, double* %arrayidx305, align 8, !tbaa !7
  %arrayidx311 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 2
  %52 = load double, double* %arrayidx311, align 8, !tbaa !7
  %neg313 = fmul double %52, -1.210000e+00
  %53 = tail call double @llvm.fmuladd.f64(double %51, double -5.500000e-02, double %neg313)
  %arrayidx318 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 2
  store double %53, double* %arrayidx318, align 8, !tbaa !7
  %arrayidx324 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 3
  %54 = load double, double* %arrayidx324, align 8, !tbaa !7
  %arrayidx330 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 3
  %55 = load double, double* %arrayidx330, align 8, !tbaa !7
  %neg332 = fmul double %55, -1.210000e+00
  %56 = tail call double @llvm.fmuladd.f64(double %54, double -5.500000e-02, double %neg332)
  %arrayidx337 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 3
  store double %56, double* %arrayidx337, align 8, !tbaa !7
  %arrayidx343 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 3
  %57 = load double, double* %arrayidx343, align 8, !tbaa !7
  %arrayidx349 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 3
  %58 = load double, double* %arrayidx349, align 8, !tbaa !7
  %neg351 = fmul double %58, -1.210000e+00
  %59 = tail call double @llvm.fmuladd.f64(double %57, double -5.500000e-02, double %neg351)
  %arrayidx356 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 3
  store double %59, double* %arrayidx356, align 8, !tbaa !7
  %arrayidx362 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 3
  %60 = load double, double* %arrayidx362, align 8, !tbaa !7
  %arrayidx368 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 3
  %61 = load double, double* %arrayidx368, align 8, !tbaa !7
  %neg370 = fmul double %61, -1.210000e+00
  %62 = tail call double @llvm.fmuladd.f64(double %60, double -5.500000e-02, double %neg370)
  %arrayidx375 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 3
  store double %62, double* %arrayidx375, align 8, !tbaa !7
  %arrayidx381 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 3
  %63 = load double, double* %arrayidx381, align 8, !tbaa !7
  %arrayidx387 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 3
  %64 = load double, double* %arrayidx387, align 8, !tbaa !7
  %neg389 = fmul double %64, -1.210000e+00
  %65 = tail call double @llvm.fmuladd.f64(double %63, double -5.500000e-02, double %neg389)
  %66 = fadd double %65, 0xBFED0A3D70A3D70A
  %arrayidx396 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 3
  store double %66, double* %arrayidx396, align 8, !tbaa !7
  %arrayidx402 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 3
  %67 = load double, double* %arrayidx402, align 8, !tbaa !7
  %arrayidx408 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 3
  %68 = load double, double* %arrayidx408, align 8, !tbaa !7
  %neg410 = fmul double %68, -1.210000e+00
  %69 = tail call double @llvm.fmuladd.f64(double %67, double -5.500000e-02, double %neg410)
  %arrayidx415 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 3
  store double %69, double* %arrayidx415, align 8, !tbaa !7
  %arrayidx421 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 0, i64 4
  %70 = load double, double* %arrayidx421, align 8, !tbaa !7
  %arrayidx427 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 0, i64 4
  %71 = load double, double* %arrayidx427, align 8, !tbaa !7
  %neg429 = fmul double %71, -1.210000e+00
  %72 = tail call double @llvm.fmuladd.f64(double %70, double -5.500000e-02, double %neg429)
  %arrayidx434 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 0, i64 4
  store double %72, double* %arrayidx434, align 8, !tbaa !7
  %arrayidx440 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 1, i64 4
  %73 = load double, double* %arrayidx440, align 8, !tbaa !7
  %arrayidx446 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 1, i64 4
  %74 = load double, double* %arrayidx446, align 8, !tbaa !7
  %neg448 = fmul double %74, -1.210000e+00
  %75 = tail call double @llvm.fmuladd.f64(double %73, double -5.500000e-02, double %neg448)
  %arrayidx453 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 1, i64 4
  store double %75, double* %arrayidx453, align 8, !tbaa !7
  %arrayidx459 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 2, i64 4
  %76 = load double, double* %arrayidx459, align 8, !tbaa !7
  %arrayidx465 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 2, i64 4
  %77 = load double, double* %arrayidx465, align 8, !tbaa !7
  %neg467 = fmul double %77, -1.210000e+00
  %78 = tail call double @llvm.fmuladd.f64(double %76, double -5.500000e-02, double %neg467)
  %arrayidx472 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 2, i64 4
  store double %78, double* %arrayidx472, align 8, !tbaa !7
  %arrayidx478 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 3, i64 4
  %79 = load double, double* %arrayidx478, align 8, !tbaa !7
  %arrayidx484 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 3, i64 4
  %80 = load double, double* %arrayidx484, align 8, !tbaa !7
  %neg486 = fmul double %80, -1.210000e+00
  %81 = tail call double @llvm.fmuladd.f64(double %79, double -5.500000e-02, double %neg486)
  %arrayidx491 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 3, i64 4
  store double %81, double* %arrayidx491, align 8, !tbaa !7
  %arrayidx497 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom31, i64 4, i64 4
  %82 = load double, double* %arrayidx497, align 8, !tbaa !7
  %arrayidx503 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom31, i64 4, i64 4
  %83 = load double, double* %arrayidx503, align 8, !tbaa !7
  %neg505 = fmul double %83, -1.210000e+00
  %84 = tail call double @llvm.fmuladd.f64(double %82, double -5.500000e-02, double %neg505)
  %85 = fadd double %84, 0xBFED0A3D70A3D70A
  %arrayidx512 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 0, i64 4, i64 4
  store double %85, double* %arrayidx512, align 8, !tbaa !7
  %arrayidx517 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 0
  %86 = load double, double* %arrayidx517, align 8, !tbaa !7
  %87 = tail call double @llvm.fmuladd.f64(double %86, double 2.420000e+00, double 1.000000e+00)
  %88 = fadd double %87, 1.815000e+00
  %arrayidx525 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 0
  store double %88, double* %arrayidx525, align 8, !tbaa !7
  %arrayidx530 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 0
  %89 = load double, double* %arrayidx530, align 8, !tbaa !7
  %mul531 = fmul double %89, 2.420000e+00
  %arrayidx536 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 0
  store double %mul531, double* %arrayidx536, align 8, !tbaa !7
  %arrayidx541 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 0
  %90 = load double, double* %arrayidx541, align 8, !tbaa !7
  %mul542 = fmul double %90, 2.420000e+00
  %arrayidx547 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 0
  store double %mul542, double* %arrayidx547, align 8, !tbaa !7
  %arrayidx552 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 0
  %91 = load double, double* %arrayidx552, align 8, !tbaa !7
  %mul553 = fmul double %91, 2.420000e+00
  %arrayidx558 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 0
  store double %mul553, double* %arrayidx558, align 8, !tbaa !7
  %arrayidx563 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 0
  %92 = load double, double* %arrayidx563, align 8, !tbaa !7
  %mul564 = fmul double %92, 2.420000e+00
  %arrayidx569 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 0
  store double %mul564, double* %arrayidx569, align 8, !tbaa !7
  %arrayidx574 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 1
  %93 = load double, double* %arrayidx574, align 8, !tbaa !7
  %mul575 = fmul double %93, 2.420000e+00
  %arrayidx580 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 1
  store double %mul575, double* %arrayidx580, align 8, !tbaa !7
  %arrayidx585 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 1
  %94 = load double, double* %arrayidx585, align 8, !tbaa !7
  %95 = tail call double @llvm.fmuladd.f64(double %94, double 2.420000e+00, double 1.000000e+00)
  %96 = fadd double %95, 1.815000e+00
  %arrayidx593 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 1
  store double %96, double* %arrayidx593, align 8, !tbaa !7
  %arrayidx598 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 1
  %97 = load double, double* %arrayidx598, align 8, !tbaa !7
  %mul599 = fmul double %97, 2.420000e+00
  %arrayidx604 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 1
  store double %mul599, double* %arrayidx604, align 8, !tbaa !7
  %arrayidx609 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 1
  %98 = load double, double* %arrayidx609, align 8, !tbaa !7
  %mul610 = fmul double %98, 2.420000e+00
  %arrayidx615 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 1
  store double %mul610, double* %arrayidx615, align 8, !tbaa !7
  %arrayidx620 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 1
  %99 = load double, double* %arrayidx620, align 8, !tbaa !7
  %mul621 = fmul double %99, 2.420000e+00
  %arrayidx626 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 1
  store double %mul621, double* %arrayidx626, align 8, !tbaa !7
  %arrayidx631 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 2
  %100 = load double, double* %arrayidx631, align 8, !tbaa !7
  %mul632 = fmul double %100, 2.420000e+00
  %arrayidx637 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 2
  store double %mul632, double* %arrayidx637, align 8, !tbaa !7
  %arrayidx642 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 2
  %101 = load double, double* %arrayidx642, align 8, !tbaa !7
  %mul643 = fmul double %101, 2.420000e+00
  %arrayidx648 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 2
  store double %mul643, double* %arrayidx648, align 8, !tbaa !7
  %arrayidx653 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 2
  %102 = load double, double* %arrayidx653, align 8, !tbaa !7
  %103 = tail call double @llvm.fmuladd.f64(double %102, double 2.420000e+00, double 1.000000e+00)
  %104 = fadd double %103, 1.815000e+00
  %arrayidx661 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 2
  store double %104, double* %arrayidx661, align 8, !tbaa !7
  %arrayidx666 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 2
  %105 = load double, double* %arrayidx666, align 8, !tbaa !7
  %mul667 = fmul double %105, 2.420000e+00
  %arrayidx672 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 2
  store double %mul667, double* %arrayidx672, align 8, !tbaa !7
  %arrayidx677 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 2
  %106 = load double, double* %arrayidx677, align 8, !tbaa !7
  %mul678 = fmul double %106, 2.420000e+00
  %arrayidx683 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 2
  store double %mul678, double* %arrayidx683, align 8, !tbaa !7
  %arrayidx688 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 3
  %107 = load double, double* %arrayidx688, align 8, !tbaa !7
  %mul689 = fmul double %107, 2.420000e+00
  %arrayidx694 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 3
  store double %mul689, double* %arrayidx694, align 8, !tbaa !7
  %arrayidx699 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 3
  %108 = load double, double* %arrayidx699, align 8, !tbaa !7
  %mul700 = fmul double %108, 2.420000e+00
  %arrayidx705 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 3
  store double %mul700, double* %arrayidx705, align 8, !tbaa !7
  %arrayidx710 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 3
  %109 = load double, double* %arrayidx710, align 8, !tbaa !7
  %mul711 = fmul double %109, 2.420000e+00
  %arrayidx716 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 3
  store double %mul711, double* %arrayidx716, align 8, !tbaa !7
  %arrayidx721 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 3
  %110 = load double, double* %arrayidx721, align 8, !tbaa !7
  %111 = tail call double @llvm.fmuladd.f64(double %110, double 2.420000e+00, double 1.000000e+00)
  %112 = fadd double %111, 1.815000e+00
  %arrayidx729 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 3
  store double %112, double* %arrayidx729, align 8, !tbaa !7
  %arrayidx734 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 3
  %113 = load double, double* %arrayidx734, align 8, !tbaa !7
  %mul735 = fmul double %113, 2.420000e+00
  %arrayidx740 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 3
  store double %mul735, double* %arrayidx740, align 8, !tbaa !7
  %arrayidx745 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 0, i64 4
  %114 = load double, double* %arrayidx745, align 8, !tbaa !7
  %mul746 = fmul double %114, 2.420000e+00
  %arrayidx751 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 0, i64 4
  store double %mul746, double* %arrayidx751, align 8, !tbaa !7
  %arrayidx756 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 1, i64 4
  %115 = load double, double* %arrayidx756, align 8, !tbaa !7
  %mul757 = fmul double %115, 2.420000e+00
  %arrayidx762 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 1, i64 4
  store double %mul757, double* %arrayidx762, align 8, !tbaa !7
  %arrayidx767 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 2, i64 4
  %116 = load double, double* %arrayidx767, align 8, !tbaa !7
  %mul768 = fmul double %116, 2.420000e+00
  %arrayidx773 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 2, i64 4
  store double %mul768, double* %arrayidx773, align 8, !tbaa !7
  %arrayidx778 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 3, i64 4
  %117 = load double, double* %arrayidx778, align 8, !tbaa !7
  %mul779 = fmul double %117, 2.420000e+00
  %arrayidx784 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 3, i64 4
  store double %mul779, double* %arrayidx784, align 8, !tbaa !7
  %arrayidx789 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom44, i64 4, i64 4
  %118 = load double, double* %arrayidx789, align 8, !tbaa !7
  %119 = tail call double @llvm.fmuladd.f64(double %118, double 2.420000e+00, double 1.000000e+00)
  %120 = fadd double %119, 1.815000e+00
  %arrayidx797 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 1, i64 4, i64 4
  store double %120, double* %arrayidx797, align 8, !tbaa !7
  %sext1813 = add i64 %sext, 8589934592
  %idxprom799 = ashr exact i64 %sext1813, 32
  %arrayidx802 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 0
  %121 = load double, double* %arrayidx802, align 8, !tbaa !7
  %arrayidx808 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 0
  %122 = load double, double* %arrayidx808, align 8, !tbaa !7
  %neg810 = fmul double %122, -1.210000e+00
  %123 = tail call double @llvm.fmuladd.f64(double %121, double 5.500000e-02, double %neg810)
  %124 = fadd double %123, 0xBFED0A3D70A3D70A
  %arrayidx817 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 0
  store double %124, double* %arrayidx817, align 8, !tbaa !7
  %arrayidx822 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 0
  %125 = load double, double* %arrayidx822, align 8, !tbaa !7
  %arrayidx828 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 0
  %126 = load double, double* %arrayidx828, align 8, !tbaa !7
  %neg830 = fmul double %126, -1.210000e+00
  %127 = tail call double @llvm.fmuladd.f64(double %125, double 5.500000e-02, double %neg830)
  %arrayidx835 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 0
  store double %127, double* %arrayidx835, align 8, !tbaa !7
  %arrayidx840 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 0
  %128 = load double, double* %arrayidx840, align 8, !tbaa !7
  %arrayidx846 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 0
  %129 = load double, double* %arrayidx846, align 8, !tbaa !7
  %neg848 = fmul double %129, -1.210000e+00
  %130 = tail call double @llvm.fmuladd.f64(double %128, double 5.500000e-02, double %neg848)
  %arrayidx853 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 0
  store double %130, double* %arrayidx853, align 8, !tbaa !7
  %arrayidx858 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 0
  %131 = load double, double* %arrayidx858, align 8, !tbaa !7
  %arrayidx864 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 0
  %132 = load double, double* %arrayidx864, align 8, !tbaa !7
  %neg866 = fmul double %132, -1.210000e+00
  %133 = tail call double @llvm.fmuladd.f64(double %131, double 5.500000e-02, double %neg866)
  %arrayidx871 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 0
  store double %133, double* %arrayidx871, align 8, !tbaa !7
  %arrayidx876 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 0
  %134 = load double, double* %arrayidx876, align 8, !tbaa !7
  %arrayidx882 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 0
  %135 = load double, double* %arrayidx882, align 8, !tbaa !7
  %neg884 = fmul double %135, -1.210000e+00
  %136 = tail call double @llvm.fmuladd.f64(double %134, double 5.500000e-02, double %neg884)
  %arrayidx889 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 0
  store double %136, double* %arrayidx889, align 8, !tbaa !7
  %arrayidx894 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 1
  %137 = load double, double* %arrayidx894, align 8, !tbaa !7
  %arrayidx900 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 1
  %138 = load double, double* %arrayidx900, align 8, !tbaa !7
  %neg902 = fmul double %138, -1.210000e+00
  %139 = tail call double @llvm.fmuladd.f64(double %137, double 5.500000e-02, double %neg902)
  %arrayidx907 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 1
  store double %139, double* %arrayidx907, align 8, !tbaa !7
  %arrayidx912 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 1
  %140 = load double, double* %arrayidx912, align 8, !tbaa !7
  %arrayidx918 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 1
  %141 = load double, double* %arrayidx918, align 8, !tbaa !7
  %neg920 = fmul double %141, -1.210000e+00
  %142 = tail call double @llvm.fmuladd.f64(double %140, double 5.500000e-02, double %neg920)
  %143 = fadd double %142, 0xBFED0A3D70A3D70A
  %arrayidx927 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 1
  store double %143, double* %arrayidx927, align 8, !tbaa !7
  %arrayidx932 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 1
  %144 = load double, double* %arrayidx932, align 8, !tbaa !7
  %arrayidx938 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 1
  %145 = load double, double* %arrayidx938, align 8, !tbaa !7
  %neg940 = fmul double %145, -1.210000e+00
  %146 = tail call double @llvm.fmuladd.f64(double %144, double 5.500000e-02, double %neg940)
  %arrayidx945 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 1
  store double %146, double* %arrayidx945, align 8, !tbaa !7
  %arrayidx950 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 1
  %147 = load double, double* %arrayidx950, align 8, !tbaa !7
  %arrayidx956 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 1
  %148 = load double, double* %arrayidx956, align 8, !tbaa !7
  %neg958 = fmul double %148, -1.210000e+00
  %149 = tail call double @llvm.fmuladd.f64(double %147, double 5.500000e-02, double %neg958)
  %arrayidx963 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 1
  store double %149, double* %arrayidx963, align 8, !tbaa !7
  %arrayidx968 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 1
  %150 = load double, double* %arrayidx968, align 8, !tbaa !7
  %arrayidx974 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 1
  %151 = load double, double* %arrayidx974, align 8, !tbaa !7
  %neg976 = fmul double %151, -1.210000e+00
  %152 = tail call double @llvm.fmuladd.f64(double %150, double 5.500000e-02, double %neg976)
  %arrayidx981 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 1
  store double %152, double* %arrayidx981, align 8, !tbaa !7
  %arrayidx986 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 2
  %153 = load double, double* %arrayidx986, align 8, !tbaa !7
  %arrayidx992 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 2
  %154 = load double, double* %arrayidx992, align 8, !tbaa !7
  %neg994 = fmul double %154, -1.210000e+00
  %155 = tail call double @llvm.fmuladd.f64(double %153, double 5.500000e-02, double %neg994)
  %arrayidx999 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 2
  store double %155, double* %arrayidx999, align 8, !tbaa !7
  %arrayidx1004 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 2
  %156 = load double, double* %arrayidx1004, align 8, !tbaa !7
  %arrayidx1010 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 2
  %157 = load double, double* %arrayidx1010, align 8, !tbaa !7
  %neg1012 = fmul double %157, -1.210000e+00
  %158 = tail call double @llvm.fmuladd.f64(double %156, double 5.500000e-02, double %neg1012)
  %arrayidx1017 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 2
  store double %158, double* %arrayidx1017, align 8, !tbaa !7
  %arrayidx1022 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 2
  %159 = load double, double* %arrayidx1022, align 8, !tbaa !7
  %arrayidx1028 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 2
  %160 = load double, double* %arrayidx1028, align 8, !tbaa !7
  %neg1030 = fmul double %160, -1.210000e+00
  %161 = tail call double @llvm.fmuladd.f64(double %159, double 5.500000e-02, double %neg1030)
  %162 = fadd double %161, 0xBFED0A3D70A3D70A
  %arrayidx1037 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 2
  store double %162, double* %arrayidx1037, align 8, !tbaa !7
  %arrayidx1042 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 2
  %163 = load double, double* %arrayidx1042, align 8, !tbaa !7
  %arrayidx1048 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 2
  %164 = load double, double* %arrayidx1048, align 8, !tbaa !7
  %neg1050 = fmul double %164, -1.210000e+00
  %165 = tail call double @llvm.fmuladd.f64(double %163, double 5.500000e-02, double %neg1050)
  %arrayidx1055 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 2
  store double %165, double* %arrayidx1055, align 8, !tbaa !7
  %arrayidx1060 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 2
  %166 = load double, double* %arrayidx1060, align 8, !tbaa !7
  %arrayidx1066 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 2
  %167 = load double, double* %arrayidx1066, align 8, !tbaa !7
  %neg1068 = fmul double %167, -1.210000e+00
  %168 = tail call double @llvm.fmuladd.f64(double %166, double 5.500000e-02, double %neg1068)
  %arrayidx1073 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 2
  store double %168, double* %arrayidx1073, align 8, !tbaa !7
  %arrayidx1078 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 3
  %169 = load double, double* %arrayidx1078, align 8, !tbaa !7
  %arrayidx1084 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 3
  %170 = load double, double* %arrayidx1084, align 8, !tbaa !7
  %neg1086 = fmul double %170, -1.210000e+00
  %171 = tail call double @llvm.fmuladd.f64(double %169, double 5.500000e-02, double %neg1086)
  %arrayidx1091 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 3
  store double %171, double* %arrayidx1091, align 8, !tbaa !7
  %arrayidx1096 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 3
  %172 = load double, double* %arrayidx1096, align 8, !tbaa !7
  %arrayidx1102 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 3
  %173 = load double, double* %arrayidx1102, align 8, !tbaa !7
  %neg1104 = fmul double %173, -1.210000e+00
  %174 = tail call double @llvm.fmuladd.f64(double %172, double 5.500000e-02, double %neg1104)
  %arrayidx1109 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 3
  store double %174, double* %arrayidx1109, align 8, !tbaa !7
  %arrayidx1114 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 3
  %175 = load double, double* %arrayidx1114, align 8, !tbaa !7
  %arrayidx1120 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 3
  %176 = load double, double* %arrayidx1120, align 8, !tbaa !7
  %neg1122 = fmul double %176, -1.210000e+00
  %177 = tail call double @llvm.fmuladd.f64(double %175, double 5.500000e-02, double %neg1122)
  %arrayidx1127 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 3
  store double %177, double* %arrayidx1127, align 8, !tbaa !7
  %arrayidx1132 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 3
  %178 = load double, double* %arrayidx1132, align 8, !tbaa !7
  %arrayidx1138 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 3
  %179 = load double, double* %arrayidx1138, align 8, !tbaa !7
  %neg1140 = fmul double %179, -1.210000e+00
  %180 = tail call double @llvm.fmuladd.f64(double %178, double 5.500000e-02, double %neg1140)
  %181 = fadd double %180, 0xBFED0A3D70A3D70A
  %arrayidx1147 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 3
  store double %181, double* %arrayidx1147, align 8, !tbaa !7
  %arrayidx1152 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 3
  %182 = load double, double* %arrayidx1152, align 8, !tbaa !7
  %arrayidx1158 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 3
  %183 = load double, double* %arrayidx1158, align 8, !tbaa !7
  %neg1160 = fmul double %183, -1.210000e+00
  %184 = tail call double @llvm.fmuladd.f64(double %182, double 5.500000e-02, double %neg1160)
  %arrayidx1165 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 3
  store double %184, double* %arrayidx1165, align 8, !tbaa !7
  %arrayidx1170 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 0, i64 4
  %185 = load double, double* %arrayidx1170, align 8, !tbaa !7
  %arrayidx1176 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 0, i64 4
  %186 = load double, double* %arrayidx1176, align 8, !tbaa !7
  %neg1178 = fmul double %186, -1.210000e+00
  %187 = tail call double @llvm.fmuladd.f64(double %185, double 5.500000e-02, double %neg1178)
  %arrayidx1183 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 0, i64 4
  store double %187, double* %arrayidx1183, align 8, !tbaa !7
  %arrayidx1188 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 1, i64 4
  %188 = load double, double* %arrayidx1188, align 8, !tbaa !7
  %arrayidx1194 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 1, i64 4
  %189 = load double, double* %arrayidx1194, align 8, !tbaa !7
  %neg1196 = fmul double %189, -1.210000e+00
  %190 = tail call double @llvm.fmuladd.f64(double %188, double 5.500000e-02, double %neg1196)
  %arrayidx1201 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 1, i64 4
  store double %190, double* %arrayidx1201, align 8, !tbaa !7
  %arrayidx1206 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 2, i64 4
  %191 = load double, double* %arrayidx1206, align 8, !tbaa !7
  %arrayidx1212 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 2, i64 4
  %192 = load double, double* %arrayidx1212, align 8, !tbaa !7
  %neg1214 = fmul double %192, -1.210000e+00
  %193 = tail call double @llvm.fmuladd.f64(double %191, double 5.500000e-02, double %neg1214)
  %arrayidx1219 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 2, i64 4
  store double %193, double* %arrayidx1219, align 8, !tbaa !7
  %arrayidx1224 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 3, i64 4
  %194 = load double, double* %arrayidx1224, align 8, !tbaa !7
  %arrayidx1230 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 3, i64 4
  %195 = load double, double* %arrayidx1230, align 8, !tbaa !7
  %neg1232 = fmul double %195, -1.210000e+00
  %196 = tail call double @llvm.fmuladd.f64(double %194, double 5.500000e-02, double %neg1232)
  %arrayidx1237 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 3, i64 4
  store double %196, double* %arrayidx1237, align 8, !tbaa !7
  %arrayidx1242 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %3, i64 %idxprom799, i64 4, i64 4
  %197 = load double, double* %arrayidx1242, align 8, !tbaa !7
  %arrayidx1248 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %4, i64 %idxprom799, i64 4, i64 4
  %198 = load double, double* %arrayidx1248, align 8, !tbaa !7
  %neg1250 = fmul double %198, -1.210000e+00
  %199 = tail call double @llvm.fmuladd.f64(double %197, double 5.500000e-02, double %neg1250)
  %200 = fadd double %199, 0xBFED0A3D70A3D70A
  %arrayidx1257 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %5, i64 %idxprom44, i64 2, i64 4, i64 4
  store double %200, double* %arrayidx1257, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.end
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
