; ModuleID = 'src/319.src'
source_filename = "src/319.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(double* readonly %a, double* nocapture %b, double* nocapture readonly %c, double* nocapture readonly %d, i32 %e, i32 %f, i32 %g) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %y = alloca [3 x [5 x double]], align 16
  %0 = bitcast [3 x [5 x double]]* %y to i8*
  %z = alloca [2 x [5 x double]], align 16
  %1 = bitcast [2 x [5 x double]]* %z to i8*
  %aa = alloca [5 x [5 x double]], align 16
  %2 = bitcast [5 x [5 x double]]* %aa to i8*
  call void @llvm.lifetime.start.p0i8(i64 120, i8* nonnull %0) #4
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %1) #4
  call void @llvm.lifetime.start.p0i8(i64 200, i8* nonnull %2) #4
  %call = tail call i64 @_Z13get_global_idj(i32 1) #5
  %3 = trunc i64 %call to i32
  %conv = add i32 %3, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %4 = trunc i64 %call1 to i32
  %conv3 = add i32 %4, 1
  %sub = add nsw i32 %g, -1
  %cmp = icmp slt i32 %conv, %sub
  %sub5 = add nsw i32 %e, -1
  %cmp6 = icmp slt i32 %conv3, %sub5
  %or.cond = and i1 %cmp, %cmp6
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %5 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %6 = bitcast double* %c to [13 x [13 x double]]*
  %7 = bitcast double* %d to [13 x [13 x double]]*
  %idxprom = sext i32 %conv to i64
  %idxprom9 = sext i32 %conv3 to i64
  %arrayidx10 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 0, i64 %idxprom9
  %8 = bitcast [5 x double]* %arrayidx10 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !7
  %arrayidx12 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3
  %10 = bitcast [5 x double]* %arrayidx12 to i64*
  store i64 %9, i64* %10, align 8, !tbaa !7
  %arrayidx19 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 0, i64 %idxprom9, i64 1
  %11 = bitcast double* %arrayidx19 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !7
  %arrayidx21 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3, i64 1
  %13 = bitcast double* %arrayidx21 to i64*
  store i64 %12, i64* %13, align 8, !tbaa !7
  %arrayidx27 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 0, i64 %idxprom9, i64 2
  %14 = bitcast double* %arrayidx27 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !7
  %arrayidx29 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3, i64 2
  %16 = bitcast double* %arrayidx29 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !7
  %arrayidx35 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 0, i64 %idxprom9, i64 3
  %17 = bitcast double* %arrayidx35 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !7
  %arrayidx37 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3, i64 3
  %19 = bitcast double* %arrayidx37 to i64*
  store i64 %18, i64* %19, align 8, !tbaa !7
  %arrayidx43 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 0, i64 %idxprom9, i64 4
  %20 = bitcast double* %arrayidx43 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !7
  %arrayidx45 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3, i64 4
  %22 = bitcast double* %arrayidx45 to i64*
  store i64 %21, i64* %22, align 8, !tbaa !7
  %arrayidx48 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1
  %23 = bitcast [5 x double]* %arrayidx48 to i64*
  store i64 %15, i64* %23, align 8, !tbaa !7
  %.cast = bitcast i64 %15 to double
  %arrayidx57 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 0, i64 %idxprom9
  %24 = load double, double* %arrayidx57, align 8, !tbaa !7
  %mul = fmul double %24, %.cast
  %arrayidx63 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 0, i64 %idxprom9
  %25 = load double, double* %arrayidx63, align 8, !tbaa !7
  %26 = bitcast i64 %12 to double
  %mul66 = fmul double %mul, %26
  %arrayidx68 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1, i64 1
  store double %mul66, double* %arrayidx68, align 8, !tbaa !7
  %27 = bitcast i64 %21 to double
  %sub74 = fsub double %27, %25
  %mul75 = fmul double %sub74, 4.000000e-01
  %28 = tail call double @llvm.fmuladd.f64(double %.cast, double %mul, double %mul75)
  %arrayidx77 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1, i64 2
  store double %28, double* %arrayidx77, align 8, !tbaa !7
  %29 = bitcast i64 %18 to double
  %mul80 = fmul double %mul, %29
  %arrayidx82 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1, i64 3
  store double %mul80, double* %arrayidx82, align 8, !tbaa !7
  %neg = fmul double %25, -4.000000e-01
  %30 = tail call double @llvm.fmuladd.f64(double %27, double 1.400000e+00, double %neg)
  %mul87 = fmul double %mul, %30
  %arrayidx89 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1, i64 4
  store double %mul87, double* %arrayidx89, align 8, !tbaa !7
  %scevgep2779 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 2, i64 0
  %scevgep27792780 = bitcast double* %scevgep2779 to i8*
  %scevgep2781 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3, i64 0
  %scevgep27812782 = bitcast double* %scevgep2781 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %scevgep27792780, i8* nonnull align 8 dereferenceable(40) %scevgep27812782, i64 40, i1 false)
  %31 = bitcast double* %b to [13 x [13 x [5 x double]]]*
  %arrayidx13 = getelementptr inbounds [5 x double], [5 x double]* %arrayidx12, i64 0, i64 0
  %arrayidx102 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 1, i64 %idxprom9
  %32 = bitcast [5 x double]* %arrayidx102 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !7
  store i64 %33, i64* %10, align 8, !tbaa !7
  %arrayidx111 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 1, i64 %idxprom9, i64 1
  %34 = bitcast double* %arrayidx111 to i64*
  %35 = load i64, i64* %34, align 8, !tbaa !7
  store i64 %35, i64* %13, align 8, !tbaa !7
  %arrayidx119 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 1, i64 %idxprom9, i64 2
  %36 = bitcast double* %arrayidx119 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !7
  store i64 %37, i64* %16, align 8, !tbaa !7
  %arrayidx127 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 1, i64 %idxprom9, i64 3
  %38 = bitcast double* %arrayidx127 to i64*
  %39 = load i64, i64* %38, align 8, !tbaa !7
  store i64 %39, i64* %19, align 8, !tbaa !7
  %arrayidx135 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 1, i64 %idxprom9, i64 4
  %40 = bitcast double* %arrayidx135 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !7
  store i64 %41, i64* %22, align 8, !tbaa !7
  %arrayidx140 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2
  %42 = bitcast [5 x double]* %arrayidx140 to i64*
  store i64 %37, i64* %42, align 16, !tbaa !7
  %.cast2670 = bitcast i64 %37 to double
  %arrayidx149 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 1, i64 %idxprom9
  %43 = load double, double* %arrayidx149, align 8, !tbaa !7
  %mul150 = fmul double %43, %.cast2670
  %arrayidx156 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 1, i64 %idxprom9
  %44 = load double, double* %arrayidx156, align 8, !tbaa !7
  %45 = bitcast i64 %35 to double
  %mul159 = fmul double %mul150, %45
  %arrayidx161 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 1
  store double %mul159, double* %arrayidx161, align 8, !tbaa !7
  %46 = bitcast i64 %41 to double
  %sub167 = fsub double %46, %44
  %mul168 = fmul double %sub167, 4.000000e-01
  %47 = tail call double @llvm.fmuladd.f64(double %.cast2670, double %mul150, double %mul168)
  %arrayidx170 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 2
  store double %47, double* %arrayidx170, align 16, !tbaa !7
  %48 = bitcast i64 %39 to double
  %mul173 = fmul double %mul150, %48
  %arrayidx175 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 3
  store double %mul173, double* %arrayidx175, align 8, !tbaa !7
  %neg180 = fmul double %44, -4.000000e-01
  %49 = tail call double @llvm.fmuladd.f64(double %46, double 1.400000e+00, double %neg180)
  %mul181 = fmul double %mul150, %49
  %arrayidx183 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 4
  store double %mul181, double* %arrayidx183, align 16, !tbaa !7
  %mul192 = fmul double %43, %45
  %mul198 = fmul double %43, %48
  %mul201 = fmul double %43, %46
  %arrayidx209 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 2, i64 1
  %50 = load double, double* %arrayidx209, align 8, !tbaa !7
  %mul210 = fmul double %24, %50
  %arrayidx212 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 2, i64 2
  %51 = load double, double* %arrayidx212, align 16, !tbaa !7
  %mul213 = fmul double %24, %51
  %arrayidx215 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 2, i64 3
  %52 = load double, double* %arrayidx215, align 8, !tbaa !7
  %mul216 = fmul double %24, %52
  %arrayidx218 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 2, i64 4
  %53 = load double, double* %arrayidx218, align 16, !tbaa !7
  %mul219 = fmul double %24, %53
  %sub220 = fsub double %mul192, %mul210
  %mul221 = fmul double %sub220, 1.100000e+01
  %arrayidx223 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 1
  store double %mul221, double* %arrayidx223, align 8, !tbaa !7
  %sub224 = fsub double %mul150, %mul213
  %mul225 = fmul double %sub224, 0x402D555555555555
  %arrayidx227 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 2
  store double %mul225, double* %arrayidx227, align 8, !tbaa !7
  %sub228 = fsub double %mul198, %mul216
  %mul229 = fmul double %sub228, 1.100000e+01
  %arrayidx231 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 3
  store double %mul229, double* %arrayidx231, align 8, !tbaa !7
  %mul233 = fmul double %mul150, %mul150
  %54 = tail call double @llvm.fmuladd.f64(double %mul192, double %mul192, double %mul233)
  %55 = tail call double @llvm.fmuladd.f64(double %mul198, double %mul198, double %54)
  %mul236 = fmul double %mul213, %mul213
  %56 = tail call double @llvm.fmuladd.f64(double %mul210, double %mul210, double %mul236)
  %57 = tail call double @llvm.fmuladd.f64(double %mul216, double %mul216, double %56)
  %sub238 = fsub double %55, %57
  %neg242 = fsub double -0.000000e+00, %mul236
  %58 = tail call double @llvm.fmuladd.f64(double %mul150, double %mul150, double %neg242)
  %mul243 = fmul double %58, 0x3FFD555555555555
  %59 = tail call double @llvm.fmuladd.f64(double %sub238, double 0xC0151EB851EB851D, double %mul243)
  %sub244 = fsub double %mul201, %mul219
  %60 = tail call double @llvm.fmuladd.f64(double %sub244, double 2.156000e+01, double %59)
  %arrayidx247 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 4
  store double %60, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx252 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 2, i64 %idxprom9
  %61 = bitcast [5 x double]* %arrayidx252 to i64*
  %62 = load i64, i64* %61, align 8, !tbaa !7
  %arrayidx254 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4
  %63 = bitcast [5 x double]* %arrayidx254 to i64*
  store i64 %62, i64* %63, align 16, !tbaa !7
  %arrayidx261 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 2, i64 %idxprom9, i64 1
  %64 = bitcast double* %arrayidx261 to i64*
  %65 = load i64, i64* %64, align 8, !tbaa !7
  %arrayidx263 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 1
  %66 = bitcast double* %arrayidx263 to i64*
  store i64 %65, i64* %66, align 8, !tbaa !7
  %arrayidx269 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 2, i64 %idxprom9, i64 2
  %67 = bitcast double* %arrayidx269 to i64*
  %68 = load i64, i64* %67, align 8, !tbaa !7
  %arrayidx271 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 2
  %69 = bitcast double* %arrayidx271 to i64*
  store i64 %68, i64* %69, align 16, !tbaa !7
  %arrayidx277 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 2, i64 %idxprom9, i64 3
  %70 = bitcast double* %arrayidx277 to i64*
  %71 = load i64, i64* %70, align 8, !tbaa !7
  %arrayidx279 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 3
  %72 = bitcast double* %arrayidx279 to i64*
  store i64 %71, i64* %72, align 8, !tbaa !7
  %arrayidx285 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 2, i64 %idxprom9, i64 4
  %73 = bitcast double* %arrayidx285 to i64*
  %74 = load i64, i64* %73, align 8, !tbaa !7
  %arrayidx287 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 4
  %75 = bitcast double* %arrayidx287 to i64*
  store i64 %74, i64* %75, align 16, !tbaa !7
  %scevgep2774 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 0
  %scevgep27742775 = bitcast double* %scevgep2774 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  %arrayidx294 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 0
  %76 = bitcast double* %arrayidx294 to i64*
  %77 = load i64, i64* %76, align 8, !tbaa !7
  %arrayidx297 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 0
  %78 = bitcast [5 x [5 x double]]* %aa to i64*
  store i64 %77, i64* %78, align 16, !tbaa !7
  %79 = bitcast double* %scevgep2779 to i64*
  %80 = load i64, i64* %79, align 16, !tbaa !7
  store i64 %80, i64* %76, align 8, !tbaa !7
  %81 = bitcast double* %scevgep2781 to i64*
  %82 = load i64, i64* %81, align 8, !tbaa !7
  store i64 %82, i64* %79, align 16, !tbaa !7
  %arrayidx312 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 0
  %83 = bitcast double* %arrayidx312 to i64*
  store i64 %62, i64* %81, align 8, !tbaa !7
  %arrayidx318 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1, i64 0
  %84 = bitcast double* %arrayidx318 to i64*
  %85 = load i64, i64* %84, align 8, !tbaa !7
  %arrayidx321 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 0
  %86 = bitcast [3 x [5 x double]]* %y to i64*
  store i64 %85, i64* %86, align 16, !tbaa !7
  %arrayidx324 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 0
  %87 = bitcast double* %arrayidx324 to i64*
  %88 = load i64, i64* %87, align 16, !tbaa !7
  store i64 %88, i64* %84, align 8, !tbaa !7
  %arrayidx294.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 1
  %89 = bitcast double* %arrayidx294.1 to i64*
  %90 = load i64, i64* %89, align 8, !tbaa !7
  %arrayidx297.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 1
  %91 = bitcast double* %arrayidx297.1 to i64*
  store i64 %90, i64* %91, align 8, !tbaa !7
  %92 = bitcast double* %arrayidx209 to i64*
  %93 = load i64, i64* %92, align 8, !tbaa !7
  store i64 %93, i64* %89, align 8, !tbaa !7
  %94 = load i64, i64* %13, align 8, !tbaa !7
  store i64 %94, i64* %92, align 8, !tbaa !7
  store i64 %65, i64* %13, align 8, !tbaa !7
  %95 = bitcast double* %arrayidx68 to i64*
  %96 = load i64, i64* %95, align 8, !tbaa !7
  %arrayidx321.1 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 1
  %97 = bitcast double* %arrayidx321.1 to i64*
  store i64 %96, i64* %97, align 8, !tbaa !7
  %98 = bitcast double* %arrayidx161 to i64*
  %99 = load i64, i64* %98, align 8, !tbaa !7
  store i64 %99, i64* %95, align 8, !tbaa !7
  %arrayidx333.1 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 0, i64 1
  %arrayidx294.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 2
  %100 = bitcast double* %arrayidx294.2 to i64*
  %101 = load i64, i64* %100, align 8, !tbaa !7
  %arrayidx297.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 2
  %102 = bitcast double* %arrayidx297.2 to i64*
  store i64 %101, i64* %102, align 16, !tbaa !7
  %103 = bitcast double* %arrayidx212 to i64*
  %104 = load i64, i64* %103, align 16, !tbaa !7
  store i64 %104, i64* %100, align 8, !tbaa !7
  %105 = load i64, i64* %16, align 8, !tbaa !7
  store i64 %105, i64* %103, align 16, !tbaa !7
  store i64 %68, i64* %16, align 8, !tbaa !7
  %106 = bitcast double* %arrayidx77 to i64*
  %107 = load i64, i64* %106, align 8, !tbaa !7
  %arrayidx321.2 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 2
  %108 = bitcast double* %arrayidx321.2 to i64*
  store i64 %107, i64* %108, align 16, !tbaa !7
  %109 = bitcast double* %arrayidx170 to i64*
  %110 = load i64, i64* %109, align 16, !tbaa !7
  store i64 %110, i64* %106, align 8, !tbaa !7
  %arrayidx333.2 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 0, i64 2
  %arrayidx294.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 3
  %111 = bitcast double* %arrayidx294.3 to i64*
  %112 = load i64, i64* %111, align 8, !tbaa !7
  %arrayidx297.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 3
  %113 = bitcast double* %arrayidx297.3 to i64*
  store i64 %112, i64* %113, align 8, !tbaa !7
  %114 = bitcast double* %arrayidx215 to i64*
  %115 = load i64, i64* %114, align 8, !tbaa !7
  store i64 %115, i64* %111, align 8, !tbaa !7
  %116 = load i64, i64* %19, align 8, !tbaa !7
  store i64 %116, i64* %114, align 8, !tbaa !7
  store i64 %71, i64* %19, align 8, !tbaa !7
  %117 = bitcast double* %arrayidx82 to i64*
  %118 = load i64, i64* %117, align 8, !tbaa !7
  %arrayidx321.3 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 3
  %119 = bitcast double* %arrayidx321.3 to i64*
  store i64 %118, i64* %119, align 8, !tbaa !7
  %120 = bitcast double* %arrayidx175 to i64*
  %121 = load i64, i64* %120, align 8, !tbaa !7
  store i64 %121, i64* %117, align 8, !tbaa !7
  %arrayidx333.3 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 0, i64 3
  %arrayidx294.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 4
  %122 = bitcast double* %arrayidx294.4 to i64*
  %123 = load i64, i64* %122, align 8, !tbaa !7
  %arrayidx297.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 4
  %124 = bitcast double* %arrayidx297.4 to i64*
  store i64 %123, i64* %124, align 16, !tbaa !7
  %125 = bitcast double* %arrayidx218 to i64*
  %126 = load i64, i64* %125, align 16, !tbaa !7
  store i64 %126, i64* %122, align 8, !tbaa !7
  %127 = load i64, i64* %22, align 8, !tbaa !7
  store i64 %127, i64* %125, align 16, !tbaa !7
  %128 = load i64, i64* %75, align 16, !tbaa !7
  store i64 %128, i64* %22, align 8, !tbaa !7
  %129 = bitcast double* %arrayidx89 to i64*
  %130 = load i64, i64* %129, align 8, !tbaa !7
  %arrayidx321.4 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 4
  %131 = bitcast double* %arrayidx321.4 to i64*
  store i64 %130, i64* %131, align 16, !tbaa !7
  %132 = bitcast double* %arrayidx183 to i64*
  %133 = load i64, i64* %132, align 16, !tbaa !7
  store i64 %133, i64* %129, align 8, !tbaa !7
  %arrayidx333.4 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 0, i64 4
  %arrayidx342 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 3, i64 %idxprom9
  %134 = bitcast [5 x double]* %arrayidx342 to i64*
  %135 = load i64, i64* %134, align 8, !tbaa !7
  store i64 %135, i64* %63, align 16, !tbaa !7
  %arrayidx352 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 3, i64 %idxprom9, i64 1
  %136 = bitcast double* %arrayidx352 to i64*
  %137 = load i64, i64* %136, align 8, !tbaa !7
  store i64 %137, i64* %66, align 8, !tbaa !7
  %arrayidx361 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 3, i64 %idxprom9, i64 2
  %138 = bitcast double* %arrayidx361 to i64*
  %139 = load i64, i64* %138, align 8, !tbaa !7
  store i64 %139, i64* %69, align 16, !tbaa !7
  %arrayidx370 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 3, i64 %idxprom9, i64 3
  %140 = bitcast double* %arrayidx370 to i64*
  %141 = load i64, i64* %140, align 8, !tbaa !7
  store i64 %141, i64* %72, align 8, !tbaa !7
  %arrayidx379 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 3, i64 %idxprom9, i64 4
  %142 = bitcast double* %arrayidx379 to i64*
  %143 = load i64, i64* %142, align 8, !tbaa !7
  store i64 %143, i64* %75, align 16, !tbaa !7
  store i64 %68, i64* %42, align 16, !tbaa !7
  %.cast2671 = bitcast i64 %68 to double
  %arrayidx393 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 2, i64 %idxprom9
  %144 = load double, double* %arrayidx393, align 8, !tbaa !7
  %mul394 = fmul double %144, %.cast2671
  %arrayidx400 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 2, i64 %idxprom9
  %145 = load double, double* %arrayidx400, align 8, !tbaa !7
  %146 = load double, double* %arrayidx21, align 8, !tbaa !7
  %mul403 = fmul double %mul394, %146
  store double %mul403, double* %arrayidx161, align 8, !tbaa !7
  %147 = bitcast i64 %128 to double
  %sub411 = fsub double %147, %145
  %mul412 = fmul double %sub411, 4.000000e-01
  %148 = tail call double @llvm.fmuladd.f64(double %.cast2671, double %mul394, double %mul412)
  store double %148, double* %arrayidx170, align 16, !tbaa !7
  %149 = bitcast i64 %71 to double
  %mul417 = fmul double %mul394, %149
  store double %mul417, double* %arrayidx175, align 8, !tbaa !7
  %neg424 = fmul double %145, -4.000000e-01
  %150 = tail call double @llvm.fmuladd.f64(double %147, double 1.400000e+00, double %neg424)
  %mul425 = fmul double %mul394, %150
  store double %mul425, double* %arrayidx183, align 16, !tbaa !7
  %mul436 = fmul double %144, %146
  %mul442 = fmul double %144, %149
  %mul445 = fmul double %144, %147
  %151 = load double, double* %arrayidx209, align 8, !tbaa !7
  %mul454 = fmul double %43, %151
  %152 = load double, double* %arrayidx212, align 16, !tbaa !7
  %mul457 = fmul double %43, %152
  %153 = bitcast i64 %116 to double
  %mul460 = fmul double %43, %153
  %154 = bitcast i64 %127 to double
  %mul463 = fmul double %43, %154
  %sub464 = fsub double %mul436, %mul454
  %mul465 = fmul double %sub464, 1.100000e+01
  store double %mul465, double* %arrayidx223, align 8, !tbaa !7
  %sub468 = fsub double %mul394, %mul457
  %mul469 = fmul double %sub468, 0x402D555555555555
  store double %mul469, double* %arrayidx227, align 8, !tbaa !7
  %sub472 = fsub double %mul442, %mul460
  %mul473 = fmul double %sub472, 1.100000e+01
  store double %mul473, double* %arrayidx231, align 8, !tbaa !7
  %mul477 = fmul double %mul394, %mul394
  %155 = tail call double @llvm.fmuladd.f64(double %mul436, double %mul436, double %mul477)
  %156 = tail call double @llvm.fmuladd.f64(double %mul442, double %mul442, double %155)
  %mul480 = fmul double %mul457, %mul457
  %157 = tail call double @llvm.fmuladd.f64(double %mul454, double %mul454, double %mul480)
  %158 = tail call double @llvm.fmuladd.f64(double %mul460, double %mul460, double %157)
  %sub482 = fsub double %156, %158
  %neg486 = fsub double -0.000000e+00, %mul480
  %159 = tail call double @llvm.fmuladd.f64(double %mul394, double %mul394, double %neg486)
  %mul487 = fmul double %159, 0x3FFD555555555555
  %160 = tail call double @llvm.fmuladd.f64(double %sub482, double 0xC0151EB851EB851D, double %mul487)
  %sub488 = fsub double %mul445, %mul463
  %161 = tail call double @llvm.fmuladd.f64(double %sub488, double 2.156000e+01, double %160)
  store double %161, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx503 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 1, i64 %idxprom9, i64 0
  %162 = load double, double* %arrayidx503, align 8, !tbaa !7
  %163 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub510 = fsub double %.cast2671, %163
  %164 = tail call double @llvm.fmuladd.f64(double %sub510, double -5.500000e+00, double %162)
  %arrayidx503.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 1, i64 %idxprom9, i64 1
  %165 = load double, double* %arrayidx503.1, align 8, !tbaa !7
  %166 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub510.1 = fsub double %mul403, %166
  %167 = tail call double @llvm.fmuladd.f64(double %sub510.1, double -5.500000e+00, double %165)
  %arrayidx503.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 1, i64 %idxprom9, i64 2
  %168 = load double, double* %arrayidx503.2, align 8, !tbaa !7
  %169 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub510.2 = fsub double %148, %169
  %170 = tail call double @llvm.fmuladd.f64(double %sub510.2, double -5.500000e+00, double %168)
  %arrayidx503.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 1, i64 %idxprom9, i64 3
  %171 = load double, double* %arrayidx503.3, align 8, !tbaa !7
  %172 = load double, double* %arrayidx321.3, align 8, !tbaa !7
  %sub510.3 = fsub double %mul417, %172
  %173 = tail call double @llvm.fmuladd.f64(double %sub510.3, double -5.500000e+00, double %171)
  %arrayidx503.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 1, i64 %idxprom9, i64 4
  %174 = load double, double* %arrayidx503.4, align 8, !tbaa !7
  %175 = load double, double* %arrayidx321.4, align 16, !tbaa !7
  %sub510.4 = fsub double %mul425, %175
  %176 = tail call double @llvm.fmuladd.f64(double %sub510.4, double -5.500000e+00, double %174)
  %177 = load double, double* %arrayidx294, align 8, !tbaa !7
  %178 = load double, double* %scevgep2779, align 16, !tbaa !7
  %179 = tail call double @llvm.fmuladd.f64(double %178, double -2.000000e+00, double %177)
  %180 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add525 = fadd double %179, %180
  %181 = tail call double @llvm.fmuladd.f64(double %add525, double 9.075000e+01, double %164)
  %182 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub533 = fsub double %mul465, %182
  %183 = tail call double @llvm.fmuladd.f64(double %sub533, double 1.100000e+00, double %167)
  %184 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %185 = tail call double @llvm.fmuladd.f64(double %151, double -2.000000e+00, double %184)
  %add542 = fadd double %146, %185
  %186 = tail call double @llvm.fmuladd.f64(double %add542, double 9.075000e+01, double %183)
  %187 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub550 = fsub double %mul469, %187
  %188 = tail call double @llvm.fmuladd.f64(double %sub550, double 1.100000e+00, double %170)
  %189 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %190 = tail call double @llvm.fmuladd.f64(double %152, double -2.000000e+00, double %189)
  %add559 = fadd double %190, %.cast2671
  %191 = tail call double @llvm.fmuladd.f64(double %add559, double 9.075000e+01, double %188)
  %192 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub567 = fsub double %mul473, %192
  %193 = tail call double @llvm.fmuladd.f64(double %sub567, double 1.100000e+00, double %173)
  %194 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %195 = tail call double @llvm.fmuladd.f64(double %153, double -2.000000e+00, double %194)
  %add576 = fadd double %195, %149
  %196 = tail call double @llvm.fmuladd.f64(double %add576, double 9.075000e+01, double %193)
  %197 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub584 = fsub double %161, %197
  %198 = tail call double @llvm.fmuladd.f64(double %sub584, double 1.100000e+00, double %176)
  %199 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %200 = tail call double @llvm.fmuladd.f64(double %154, double -2.000000e+00, double %199)
  %add593 = fadd double %200, %147
  %201 = tail call double @llvm.fmuladd.f64(double %add593, double 9.075000e+01, double %198)
  %call602 = tail call double @_Z3maxdd(double 7.500000e-01, double 7.500000e-01) #5
  %call603 = tail call double @_Z3maxdd(double %call602, double 1.000000e+00) #5
  %neg618 = fmul double %call603, -2.500000e-01
  %neg612 = fmul double %180, -4.000000e+00
  %202 = tail call double @llvm.fmuladd.f64(double %178, double 5.000000e+00, double %neg612)
  %203 = load double, double* %arrayidx312, align 16, !tbaa !7
  %add616 = fadd double %203, %202
  %204 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616, double %181)
  store double %204, double* %arrayidx503, align 8, !tbaa !7
  %205 = load double, double* %arrayidx209, align 8, !tbaa !7
  %206 = load double, double* %arrayidx21, align 8, !tbaa !7
  %neg612.1 = fmul double %206, -4.000000e+00
  %207 = tail call double @llvm.fmuladd.f64(double %205, double 5.000000e+00, double %neg612.1)
  %208 = load double, double* %arrayidx263, align 8, !tbaa !7
  %add616.1 = fadd double %208, %207
  %209 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616.1, double %186)
  store double %209, double* %arrayidx503.1, align 8, !tbaa !7
  %210 = load double, double* %arrayidx212, align 16, !tbaa !7
  %211 = load double, double* %arrayidx29, align 8, !tbaa !7
  %neg612.2 = fmul double %211, -4.000000e+00
  %212 = tail call double @llvm.fmuladd.f64(double %210, double 5.000000e+00, double %neg612.2)
  %213 = load double, double* %arrayidx271, align 16, !tbaa !7
  %add616.2 = fadd double %213, %212
  %214 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616.2, double %191)
  store double %214, double* %arrayidx503.2, align 8, !tbaa !7
  %215 = load double, double* %arrayidx215, align 8, !tbaa !7
  %216 = load double, double* %arrayidx37, align 8, !tbaa !7
  %neg612.3 = fmul double %216, -4.000000e+00
  %217 = tail call double @llvm.fmuladd.f64(double %215, double 5.000000e+00, double %neg612.3)
  %218 = load double, double* %arrayidx279, align 8, !tbaa !7
  %add616.3 = fadd double %218, %217
  %219 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616.3, double %196)
  store double %219, double* %arrayidx503.3, align 8, !tbaa !7
  %220 = load double, double* %arrayidx218, align 16, !tbaa !7
  %221 = load double, double* %arrayidx45, align 8, !tbaa !7
  %neg612.4 = fmul double %221, -4.000000e+00
  %222 = tail call double @llvm.fmuladd.f64(double %220, double 5.000000e+00, double %neg612.4)
  %223 = load double, double* %arrayidx287, align 16, !tbaa !7
  %add616.4 = fadd double %223, %222
  %224 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616.4, double %201)
  store double %224, double* %arrayidx503.4, align 8, !tbaa !7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  %225 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 0
  store double %177, double* %225, align 16, !tbaa !7
  store double %178, double* %arrayidx294, align 8, !tbaa !7
  store double %180, double* %scevgep2779, align 16, !tbaa !7
  store double %203, double* %scevgep2781, align 8, !tbaa !7
  %226 = load i64, i64* %84, align 8, !tbaa !7
  store i64 %226, i64* %86, align 16, !tbaa !7
  %227 = load i64, i64* %87, align 16, !tbaa !7
  store i64 %227, i64* %84, align 8, !tbaa !7
  store double %184, double* %arrayidx297.1, align 8, !tbaa !7
  store double %205, double* %arrayidx294.1, align 8, !tbaa !7
  store double %206, double* %arrayidx209, align 8, !tbaa !7
  store double %208, double* %arrayidx21, align 8, !tbaa !7
  %228 = load i64, i64* %95, align 8, !tbaa !7
  store i64 %228, i64* %97, align 8, !tbaa !7
  %229 = load i64, i64* %98, align 8, !tbaa !7
  store i64 %229, i64* %95, align 8, !tbaa !7
  store double %189, double* %arrayidx297.2, align 16, !tbaa !7
  store double %210, double* %arrayidx294.2, align 8, !tbaa !7
  store double %211, double* %arrayidx212, align 16, !tbaa !7
  store double %213, double* %arrayidx29, align 8, !tbaa !7
  %230 = load i64, i64* %106, align 8, !tbaa !7
  store i64 %230, i64* %108, align 16, !tbaa !7
  %231 = load i64, i64* %109, align 16, !tbaa !7
  store i64 %231, i64* %106, align 8, !tbaa !7
  store double %194, double* %arrayidx297.3, align 8, !tbaa !7
  store double %215, double* %arrayidx294.3, align 8, !tbaa !7
  store double %216, double* %arrayidx215, align 8, !tbaa !7
  store double %218, double* %arrayidx37, align 8, !tbaa !7
  %232 = load i64, i64* %117, align 8, !tbaa !7
  store i64 %232, i64* %119, align 8, !tbaa !7
  %233 = load i64, i64* %120, align 8, !tbaa !7
  store i64 %233, i64* %117, align 8, !tbaa !7
  store double %199, double* %arrayidx297.4, align 16, !tbaa !7
  store double %220, double* %arrayidx294.4, align 8, !tbaa !7
  store double %221, double* %arrayidx218, align 16, !tbaa !7
  store double %223, double* %arrayidx45, align 8, !tbaa !7
  %234 = load i64, i64* %129, align 8, !tbaa !7
  store i64 %234, i64* %131, align 16, !tbaa !7
  %235 = load i64, i64* %132, align 16, !tbaa !7
  store i64 %235, i64* %129, align 8, !tbaa !7
  %arrayidx683 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 4, i64 %idxprom9
  %236 = bitcast [5 x double]* %arrayidx683 to i64*
  %237 = load i64, i64* %236, align 8, !tbaa !7
  store i64 %237, i64* %63, align 16, !tbaa !7
  %arrayidx693 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 4, i64 %idxprom9, i64 1
  %238 = bitcast double* %arrayidx693 to i64*
  %239 = load i64, i64* %238, align 8, !tbaa !7
  store i64 %239, i64* %66, align 8, !tbaa !7
  %arrayidx702 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 4, i64 %idxprom9, i64 2
  %240 = bitcast double* %arrayidx702 to i64*
  %241 = load i64, i64* %240, align 8, !tbaa !7
  store i64 %241, i64* %69, align 16, !tbaa !7
  %arrayidx711 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 4, i64 %idxprom9, i64 3
  %242 = bitcast double* %arrayidx711 to i64*
  %243 = load i64, i64* %242, align 8, !tbaa !7
  store i64 %243, i64* %72, align 8, !tbaa !7
  %arrayidx720 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 4, i64 %idxprom9, i64 4
  %244 = bitcast double* %arrayidx720 to i64*
  %245 = load i64, i64* %244, align 8, !tbaa !7
  store i64 %245, i64* %75, align 16, !tbaa !7
  %246 = getelementptr [5 x double], [5 x double]* %arrayidx140, i64 0, i64 0
  store double %213, double* %246, align 16, !tbaa !7
  %arrayidx734 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 3, i64 %idxprom9
  %247 = load double, double* %arrayidx734, align 8, !tbaa !7
  %mul735 = fmul double %247, %213
  %arrayidx741 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 3, i64 %idxprom9
  %248 = load double, double* %arrayidx741, align 8, !tbaa !7
  %mul744 = fmul double %mul735, %208
  store double %mul744, double* %arrayidx161, align 8, !tbaa !7
  %sub752 = fsub double %223, %248
  %mul753 = fmul double %sub752, 4.000000e-01
  %249 = tail call double @llvm.fmuladd.f64(double %213, double %mul735, double %mul753)
  store double %249, double* %arrayidx170, align 16, !tbaa !7
  %mul758 = fmul double %mul735, %218
  store double %mul758, double* %arrayidx175, align 8, !tbaa !7
  %neg765 = fmul double %248, -4.000000e-01
  %250 = tail call double @llvm.fmuladd.f64(double %223, double 1.400000e+00, double %neg765)
  %mul766 = fmul double %mul735, %250
  store double %mul766, double* %arrayidx183, align 16, !tbaa !7
  %mul777 = fmul double %247, %208
  %mul783 = fmul double %247, %218
  %mul786 = fmul double %247, %223
  %251 = load double, double* %arrayidx393, align 8, !tbaa !7
  %mul795 = fmul double %251, %206
  %mul798 = fmul double %251, %211
  %mul801 = fmul double %251, %216
  %mul804 = fmul double %251, %221
  %sub805 = fsub double %mul777, %mul795
  %mul806 = fmul double %sub805, 1.100000e+01
  store double %mul806, double* %arrayidx223, align 8, !tbaa !7
  %sub809 = fsub double %mul735, %mul798
  %mul810 = fmul double %sub809, 0x402D555555555555
  store double %mul810, double* %arrayidx227, align 8, !tbaa !7
  %sub813 = fsub double %mul783, %mul801
  %mul814 = fmul double %sub813, 1.100000e+01
  store double %mul814, double* %arrayidx231, align 8, !tbaa !7
  %mul818 = fmul double %mul735, %mul735
  %252 = tail call double @llvm.fmuladd.f64(double %mul777, double %mul777, double %mul818)
  %253 = tail call double @llvm.fmuladd.f64(double %mul783, double %mul783, double %252)
  %mul821 = fmul double %mul798, %mul798
  %254 = tail call double @llvm.fmuladd.f64(double %mul795, double %mul795, double %mul821)
  %255 = tail call double @llvm.fmuladd.f64(double %mul801, double %mul801, double %254)
  %sub823 = fsub double %253, %255
  %neg827 = fsub double -0.000000e+00, %mul821
  %256 = tail call double @llvm.fmuladd.f64(double %mul735, double %mul735, double %neg827)
  %mul828 = fmul double %256, 0x3FFD555555555555
  %257 = tail call double @llvm.fmuladd.f64(double %sub823, double 0xC0151EB851EB851D, double %mul828)
  %sub829 = fsub double %mul786, %mul804
  %258 = tail call double @llvm.fmuladd.f64(double %sub829, double 2.156000e+01, double %257)
  store double %258, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx844 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 2, i64 %idxprom9, i64 0
  %259 = load double, double* %arrayidx844, align 8, !tbaa !7
  %260 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub851 = fsub double %213, %260
  %261 = tail call double @llvm.fmuladd.f64(double %sub851, double -5.500000e+00, double %259)
  %arrayidx844.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 2, i64 %idxprom9, i64 1
  %262 = load double, double* %arrayidx844.1, align 8, !tbaa !7
  %263 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub851.1 = fsub double %mul744, %263
  %264 = tail call double @llvm.fmuladd.f64(double %sub851.1, double -5.500000e+00, double %262)
  %arrayidx844.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 2, i64 %idxprom9, i64 2
  %265 = load double, double* %arrayidx844.2, align 8, !tbaa !7
  %266 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub851.2 = fsub double %249, %266
  %267 = tail call double @llvm.fmuladd.f64(double %sub851.2, double -5.500000e+00, double %265)
  %arrayidx844.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 2, i64 %idxprom9, i64 3
  %268 = load double, double* %arrayidx844.3, align 8, !tbaa !7
  %269 = load double, double* %arrayidx321.3, align 8, !tbaa !7
  %sub851.3 = fsub double %mul758, %269
  %270 = tail call double @llvm.fmuladd.f64(double %sub851.3, double -5.500000e+00, double %268)
  %arrayidx844.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 2, i64 %idxprom9, i64 4
  %271 = load double, double* %arrayidx844.4, align 8, !tbaa !7
  %272 = load double, double* %arrayidx321.4, align 16, !tbaa !7
  %sub851.4 = fsub double %mul766, %272
  %273 = tail call double @llvm.fmuladd.f64(double %sub851.4, double -5.500000e+00, double %271)
  %274 = load double, double* %arrayidx294, align 8, !tbaa !7
  %275 = load double, double* %scevgep2779, align 16, !tbaa !7
  %276 = tail call double @llvm.fmuladd.f64(double %275, double -2.000000e+00, double %274)
  %277 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add866 = fadd double %276, %277
  %278 = tail call double @llvm.fmuladd.f64(double %add866, double 9.075000e+01, double %261)
  %279 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub874 = fsub double %mul806, %279
  %280 = tail call double @llvm.fmuladd.f64(double %sub874, double 1.100000e+00, double %264)
  %281 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %282 = tail call double @llvm.fmuladd.f64(double %206, double -2.000000e+00, double %281)
  %add883 = fadd double %208, %282
  %283 = tail call double @llvm.fmuladd.f64(double %add883, double 9.075000e+01, double %280)
  %284 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub891 = fsub double %mul810, %284
  %285 = tail call double @llvm.fmuladd.f64(double %sub891, double 1.100000e+00, double %267)
  %286 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %287 = tail call double @llvm.fmuladd.f64(double %211, double -2.000000e+00, double %286)
  %add900 = fadd double %213, %287
  %288 = tail call double @llvm.fmuladd.f64(double %add900, double 9.075000e+01, double %285)
  %289 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub908 = fsub double %mul814, %289
  %290 = tail call double @llvm.fmuladd.f64(double %sub908, double 1.100000e+00, double %270)
  %291 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %292 = tail call double @llvm.fmuladd.f64(double %216, double -2.000000e+00, double %291)
  %add917 = fadd double %218, %292
  %293 = tail call double @llvm.fmuladd.f64(double %add917, double 9.075000e+01, double %290)
  %294 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub925 = fsub double %258, %294
  %295 = tail call double @llvm.fmuladd.f64(double %sub925, double 1.100000e+00, double %273)
  %296 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %297 = tail call double @llvm.fmuladd.f64(double %221, double -2.000000e+00, double %296)
  %add934 = fadd double %223, %297
  %298 = tail call double @llvm.fmuladd.f64(double %add934, double 9.075000e+01, double %295)
  %mul953 = fmul double %275, 6.000000e+00
  %299 = tail call double @llvm.fmuladd.f64(double %274, double -4.000000e+00, double %mul953)
  %300 = tail call double @llvm.fmuladd.f64(double %277, double -4.000000e+00, double %299)
  %301 = load double, double* %arrayidx312, align 16, !tbaa !7
  %add961 = fadd double %301, %300
  %302 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961, double %278)
  store double %302, double* %arrayidx844, align 8, !tbaa !7
  %303 = load double, double* %arrayidx209, align 8, !tbaa !7
  %mul953.1 = fmul double %303, 6.000000e+00
  %304 = tail call double @llvm.fmuladd.f64(double %281, double -4.000000e+00, double %mul953.1)
  %305 = load double, double* %arrayidx21, align 8, !tbaa !7
  %306 = tail call double @llvm.fmuladd.f64(double %305, double -4.000000e+00, double %304)
  %307 = load double, double* %arrayidx263, align 8, !tbaa !7
  %add961.1 = fadd double %307, %306
  %308 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961.1, double %283)
  store double %308, double* %arrayidx844.1, align 8, !tbaa !7
  %309 = load double, double* %arrayidx212, align 16, !tbaa !7
  %mul953.2 = fmul double %309, 6.000000e+00
  %310 = tail call double @llvm.fmuladd.f64(double %286, double -4.000000e+00, double %mul953.2)
  %311 = load double, double* %arrayidx29, align 8, !tbaa !7
  %312 = tail call double @llvm.fmuladd.f64(double %311, double -4.000000e+00, double %310)
  %313 = load double, double* %arrayidx271, align 16, !tbaa !7
  %add961.2 = fadd double %313, %312
  %314 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961.2, double %288)
  store double %314, double* %arrayidx844.2, align 8, !tbaa !7
  %315 = load double, double* %arrayidx215, align 8, !tbaa !7
  %mul953.3 = fmul double %315, 6.000000e+00
  %316 = tail call double @llvm.fmuladd.f64(double %291, double -4.000000e+00, double %mul953.3)
  %317 = load double, double* %arrayidx37, align 8, !tbaa !7
  %318 = tail call double @llvm.fmuladd.f64(double %317, double -4.000000e+00, double %316)
  %319 = load double, double* %arrayidx279, align 8, !tbaa !7
  %add961.3 = fadd double %319, %318
  %320 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961.3, double %293)
  store double %320, double* %arrayidx844.3, align 8, !tbaa !7
  %321 = load double, double* %arrayidx218, align 16, !tbaa !7
  %mul953.4 = fmul double %321, 6.000000e+00
  %322 = tail call double @llvm.fmuladd.f64(double %296, double -4.000000e+00, double %mul953.4)
  %323 = load double, double* %arrayidx45, align 8, !tbaa !7
  %324 = tail call double @llvm.fmuladd.f64(double %323, double -4.000000e+00, double %322)
  %325 = load double, double* %arrayidx287, align 16, !tbaa !7
  %add961.4 = fadd double %325, %324
  %326 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961.4, double %298)
  store double %326, double* %arrayidx844.4, align 8, !tbaa !7
  %sub975 = add i32 %f, -3
  %cmp9762685 = icmp sgt i32 %sub975, 3
  %327 = bitcast double %301 to i64
  %328 = bitcast double %281 to i64
  %329 = bitcast double %303 to i64
  %330 = bitcast double %286 to i64
  %331 = bitcast double %309 to i64
  %332 = bitcast double %291 to i64
  %333 = bitcast double %315 to i64
  %334 = bitcast double %296 to i64
  %335 = bitcast double %321 to i64
  br i1 %cmp9762685, label %for.body978.lr.ph, label %for.end1332

for.body978.lr.ph:                                ; preds = %if.end
  %wide.trip.count = zext i32 %sub975 to i64
  %336 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 0
  %337 = getelementptr [5 x double], [5 x double]* %arrayidx140, i64 0, i64 0
  %.promoted = load i64, i64* %84, align 8, !tbaa !7
  %.promoted2810 = load i64, i64* %95, align 8, !tbaa !7
  %.promoted2812 = load i64, i64* %106, align 8, !tbaa !7
  %.promoted2814 = load i64, i64* %117, align 8, !tbaa !7
  %.promoted2816 = load i64, i64* %129, align 8, !tbaa !7
  br label %for.body978

for.body978:                                      ; preds = %for.body978, %for.body978.lr.ph
  %338 = phi i64 [ %.promoted2816, %for.body978.lr.ph ], [ %357, %for.body978 ]
  %339 = phi i64 [ %.promoted2814, %for.body978.lr.ph ], [ %356, %for.body978 ]
  %340 = phi i64 [ %.promoted2812, %for.body978.lr.ph ], [ %355, %for.body978 ]
  %341 = phi i64 [ %.promoted2810, %for.body978.lr.ph ], [ %354, %for.body978 ]
  %342 = phi i64 [ %.promoted, %for.body978.lr.ph ], [ %353, %for.body978 ]
  %.in = phi double [ %325, %for.body978.lr.ph ], [ %446, %for.body978 ]
  %.in2783 = phi double [ %323, %for.body978.lr.ph ], [ %.in, %for.body978 ]
  %343 = phi i64 [ %335, %for.body978.lr.ph ], [ %456, %for.body978 ]
  %344 = phi i64 [ %334, %for.body978.lr.ph ], [ %455, %for.body978 ]
  %.in2784 = phi double [ %319, %for.body978.lr.ph ], [ %440, %for.body978 ]
  %.in2785 = phi double [ %317, %for.body978.lr.ph ], [ %.in2784, %for.body978 ]
  %345 = phi i64 [ %333, %for.body978.lr.ph ], [ %454, %for.body978 ]
  %346 = phi i64 [ %332, %for.body978.lr.ph ], [ %453, %for.body978 ]
  %347 = phi double [ %313, %for.body978.lr.ph ], [ %434, %for.body978 ]
  %.in2786 = phi double [ %311, %for.body978.lr.ph ], [ %347, %for.body978 ]
  %348 = phi i64 [ %331, %for.body978.lr.ph ], [ %452, %for.body978 ]
  %349 = phi i64 [ %330, %for.body978.lr.ph ], [ %451, %for.body978 ]
  %.in2787 = phi double [ %307, %for.body978.lr.ph ], [ %428, %for.body978 ]
  %.in2788 = phi double [ %305, %for.body978.lr.ph ], [ %.in2787, %for.body978 ]
  %350 = phi i64 [ %329, %for.body978.lr.ph ], [ %450, %for.body978 ]
  %351 = phi i64 [ %328, %for.body978.lr.ph ], [ %449, %for.body978 ]
  %352 = phi i64 [ %327, %for.body978.lr.ph ], [ %448, %for.body978 ]
  %.in2789 = phi double [ %277, %for.body978.lr.ph ], [ %397, %for.body978 ]
  %.in2790 = phi double [ %275, %for.body978.lr.ph ], [ %.in2789, %for.body978 ]
  %.in2791 = phi double [ %274, %for.body978.lr.ph ], [ %.in2790, %for.body978 ]
  %indvars.iv = phi i64 [ 3, %for.body978.lr.ph ], [ %indvars.iv.next, %for.body978 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  store i64 %352, i64* %81, align 8, !tbaa !7
  store i64 %342, i64* %86, align 16, !tbaa !7
  %353 = load i64, i64* %87, align 16, !tbaa !7
  store i64 %351, i64* %91, align 8, !tbaa !7
  store i64 %350, i64* %89, align 8, !tbaa !7
  store i64 %341, i64* %97, align 8, !tbaa !7
  %354 = load i64, i64* %98, align 8, !tbaa !7
  store i64 %349, i64* %102, align 16, !tbaa !7
  store i64 %348, i64* %100, align 8, !tbaa !7
  store i64 %340, i64* %108, align 16, !tbaa !7
  %355 = load i64, i64* %109, align 16, !tbaa !7
  store i64 %346, i64* %113, align 8, !tbaa !7
  store i64 %345, i64* %111, align 8, !tbaa !7
  store i64 %339, i64* %119, align 8, !tbaa !7
  %356 = load i64, i64* %120, align 8, !tbaa !7
  store i64 %344, i64* %124, align 16, !tbaa !7
  store i64 %343, i64* %122, align 8, !tbaa !7
  store i64 %338, i64* %131, align 16, !tbaa !7
  %357 = load i64, i64* %132, align 16, !tbaa !7
  %358 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx1035 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %358, i64 %idxprom9
  %359 = bitcast [5 x double]* %arrayidx1035 to i64*
  %360 = load i64, i64* %359, align 8, !tbaa !7
  store i64 %360, i64* %63, align 16, !tbaa !7
  %arrayidx1045 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %358, i64 %idxprom9, i64 1
  %361 = bitcast double* %arrayidx1045 to i64*
  %362 = load i64, i64* %361, align 8, !tbaa !7
  store i64 %362, i64* %66, align 8, !tbaa !7
  %arrayidx1054 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %358, i64 %idxprom9, i64 2
  %363 = bitcast double* %arrayidx1054 to i64*
  %364 = load i64, i64* %363, align 8, !tbaa !7
  store i64 %364, i64* %69, align 16, !tbaa !7
  %arrayidx1063 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %358, i64 %idxprom9, i64 3
  %365 = bitcast double* %arrayidx1063 to i64*
  %366 = load i64, i64* %365, align 8, !tbaa !7
  store i64 %366, i64* %72, align 8, !tbaa !7
  %arrayidx1072 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %358, i64 %idxprom9, i64 4
  %367 = bitcast double* %arrayidx1072 to i64*
  %368 = load i64, i64* %367, align 8, !tbaa !7
  store i64 %368, i64* %75, align 16, !tbaa !7
  store double %347, double* %337, align 16, !tbaa !7
  %arrayidx1086 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %indvars.iv.next, i64 %idxprom9
  %369 = load double, double* %arrayidx1086, align 8, !tbaa !7
  %mul1087 = fmul double %369, %347
  %arrayidx1093 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 %indvars.iv.next, i64 %idxprom9
  %370 = load double, double* %arrayidx1093, align 8, !tbaa !7
  %mul1096 = fmul double %mul1087, %.in2787
  store double %mul1096, double* %arrayidx161, align 8, !tbaa !7
  %sub1104 = fsub double %.in, %370
  %mul1105 = fmul double %sub1104, 4.000000e-01
  %371 = tail call double @llvm.fmuladd.f64(double %347, double %mul1087, double %mul1105)
  store double %371, double* %arrayidx170, align 16, !tbaa !7
  %mul1110 = fmul double %mul1087, %.in2784
  store double %mul1110, double* %arrayidx175, align 8, !tbaa !7
  %neg1117 = fmul double %370, -4.000000e-01
  %372 = tail call double @llvm.fmuladd.f64(double %.in, double 1.400000e+00, double %neg1117)
  %mul1118 = fmul double %mul1087, %372
  store double %mul1118, double* %arrayidx183, align 16, !tbaa !7
  %mul1129 = fmul double %369, %.in2787
  %mul1135 = fmul double %369, %.in2784
  %mul1138 = fmul double %369, %.in
  %arrayidx1144 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %indvars.iv, i64 %idxprom9
  %373 = load double, double* %arrayidx1144, align 8, !tbaa !7
  %mul1147 = fmul double %373, %.in2788
  %mul1150 = fmul double %373, %.in2786
  %mul1153 = fmul double %373, %.in2785
  %mul1156 = fmul double %373, %.in2783
  %sub1157 = fsub double %mul1129, %mul1147
  %mul1158 = fmul double %sub1157, 1.100000e+01
  store double %mul1158, double* %arrayidx223, align 8, !tbaa !7
  %sub1161 = fsub double %mul1087, %mul1150
  %mul1162 = fmul double %sub1161, 0x402D555555555555
  store double %mul1162, double* %arrayidx227, align 8, !tbaa !7
  %sub1165 = fsub double %mul1135, %mul1153
  %mul1166 = fmul double %sub1165, 1.100000e+01
  store double %mul1166, double* %arrayidx231, align 8, !tbaa !7
  %mul1170 = fmul double %mul1087, %mul1087
  %374 = tail call double @llvm.fmuladd.f64(double %mul1129, double %mul1129, double %mul1170)
  %375 = tail call double @llvm.fmuladd.f64(double %mul1135, double %mul1135, double %374)
  %mul1173 = fmul double %mul1150, %mul1150
  %376 = tail call double @llvm.fmuladd.f64(double %mul1147, double %mul1147, double %mul1173)
  %377 = tail call double @llvm.fmuladd.f64(double %mul1153, double %mul1153, double %376)
  %sub1175 = fsub double %375, %377
  %neg1179 = fsub double -0.000000e+00, %mul1173
  %378 = tail call double @llvm.fmuladd.f64(double %mul1087, double %mul1087, double %neg1179)
  %mul1180 = fmul double %378, 0x3FFD555555555555
  %379 = tail call double @llvm.fmuladd.f64(double %sub1175, double 0xC0151EB851EB851D, double %mul1180)
  %sub1181 = fsub double %mul1138, %mul1156
  %380 = tail call double @llvm.fmuladd.f64(double %sub1181, double 2.156000e+01, double %379)
  store double %380, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx1196 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %indvars.iv, i64 %idxprom9, i64 0
  %381 = load double, double* %arrayidx1196, align 8, !tbaa !7
  %382 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub1203 = fsub double %347, %382
  %383 = tail call double @llvm.fmuladd.f64(double %sub1203, double -5.500000e+00, double %381)
  %arrayidx1196.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %indvars.iv, i64 %idxprom9, i64 1
  %384 = load double, double* %arrayidx1196.1, align 8, !tbaa !7
  %385 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub1203.1 = fsub double %mul1096, %385
  %386 = tail call double @llvm.fmuladd.f64(double %sub1203.1, double -5.500000e+00, double %384)
  %arrayidx1196.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %indvars.iv, i64 %idxprom9, i64 2
  %387 = load double, double* %arrayidx1196.2, align 8, !tbaa !7
  %388 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub1203.2 = fsub double %371, %388
  %389 = tail call double @llvm.fmuladd.f64(double %sub1203.2, double -5.500000e+00, double %387)
  %arrayidx1196.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %indvars.iv, i64 %idxprom9, i64 3
  %390 = load double, double* %arrayidx1196.3, align 8, !tbaa !7
  %391 = load double, double* %arrayidx321.3, align 8, !tbaa !7
  %sub1203.3 = fsub double %mul1110, %391
  %392 = tail call double @llvm.fmuladd.f64(double %sub1203.3, double -5.500000e+00, double %390)
  %arrayidx1196.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %indvars.iv, i64 %idxprom9, i64 4
  %393 = load double, double* %arrayidx1196.4, align 8, !tbaa !7
  %394 = load double, double* %arrayidx321.4, align 16, !tbaa !7
  %sub1203.4 = fsub double %mul1118, %394
  %395 = tail call double @llvm.fmuladd.f64(double %sub1203.4, double -5.500000e+00, double %393)
  %396 = tail call double @llvm.fmuladd.f64(double %.in2789, double -2.000000e+00, double %.in2790)
  %397 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add1218 = fadd double %396, %397
  %398 = tail call double @llvm.fmuladd.f64(double %add1218, double 9.075000e+01, double %383)
  %399 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub1226 = fsub double %mul1158, %399
  %400 = tail call double @llvm.fmuladd.f64(double %sub1226, double 1.100000e+00, double %386)
  %401 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %402 = tail call double @llvm.fmuladd.f64(double %.in2788, double -2.000000e+00, double %401)
  %add1235 = fadd double %.in2787, %402
  %403 = tail call double @llvm.fmuladd.f64(double %add1235, double 9.075000e+01, double %400)
  %404 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub1243 = fsub double %mul1162, %404
  %405 = tail call double @llvm.fmuladd.f64(double %sub1243, double 1.100000e+00, double %389)
  %406 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %407 = tail call double @llvm.fmuladd.f64(double %.in2786, double -2.000000e+00, double %406)
  %add1252 = fadd double %407, %347
  %408 = tail call double @llvm.fmuladd.f64(double %add1252, double 9.075000e+01, double %405)
  %409 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub1260 = fsub double %mul1166, %409
  %410 = tail call double @llvm.fmuladd.f64(double %sub1260, double 1.100000e+00, double %392)
  %411 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %412 = tail call double @llvm.fmuladd.f64(double %.in2785, double -2.000000e+00, double %411)
  %add1269 = fadd double %.in2784, %412
  %413 = tail call double @llvm.fmuladd.f64(double %add1269, double 9.075000e+01, double %410)
  %414 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub1277 = fsub double %380, %414
  %415 = tail call double @llvm.fmuladd.f64(double %sub1277, double 1.100000e+00, double %395)
  %416 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %417 = tail call double @llvm.fmuladd.f64(double %.in2783, double -2.000000e+00, double %416)
  %add1286 = fadd double %.in, %417
  %418 = tail call double @llvm.fmuladd.f64(double %add1286, double 9.075000e+01, double %415)
  %419 = tail call double @llvm.fmuladd.f64(double %.in2790, double -4.000000e+00, double %.in2791)
  %420 = tail call double @llvm.fmuladd.f64(double %.in2789, double 6.000000e+00, double %419)
  %421 = tail call double @llvm.fmuladd.f64(double %397, double -4.000000e+00, double %420)
  %422 = load double, double* %arrayidx312, align 16, !tbaa !7
  %add1316 = fadd double %421, %422
  %423 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316, double %398)
  store double %423, double* %arrayidx1196, align 8, !tbaa !7
  %424 = load double, double* %arrayidx297.1, align 8, !tbaa !7
  %425 = tail call double @llvm.fmuladd.f64(double %401, double -4.000000e+00, double %424)
  %426 = tail call double @llvm.fmuladd.f64(double %.in2788, double 6.000000e+00, double %425)
  %427 = tail call double @llvm.fmuladd.f64(double %.in2787, double -4.000000e+00, double %426)
  %428 = load double, double* %arrayidx263, align 8, !tbaa !7
  %add1316.1 = fadd double %427, %428
  %429 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316.1, double %403)
  store double %429, double* %arrayidx1196.1, align 8, !tbaa !7
  %430 = load double, double* %arrayidx297.2, align 16, !tbaa !7
  %431 = tail call double @llvm.fmuladd.f64(double %406, double -4.000000e+00, double %430)
  %432 = tail call double @llvm.fmuladd.f64(double %.in2786, double 6.000000e+00, double %431)
  %433 = tail call double @llvm.fmuladd.f64(double %347, double -4.000000e+00, double %432)
  %434 = load double, double* %arrayidx271, align 16, !tbaa !7
  %add1316.2 = fadd double %433, %434
  %435 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316.2, double %408)
  store double %435, double* %arrayidx1196.2, align 8, !tbaa !7
  %436 = load double, double* %arrayidx297.3, align 8, !tbaa !7
  %437 = tail call double @llvm.fmuladd.f64(double %411, double -4.000000e+00, double %436)
  %438 = tail call double @llvm.fmuladd.f64(double %.in2785, double 6.000000e+00, double %437)
  %439 = tail call double @llvm.fmuladd.f64(double %.in2784, double -4.000000e+00, double %438)
  %440 = load double, double* %arrayidx279, align 8, !tbaa !7
  %add1316.3 = fadd double %439, %440
  %441 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316.3, double %413)
  store double %441, double* %arrayidx1196.3, align 8, !tbaa !7
  %442 = load double, double* %arrayidx297.4, align 16, !tbaa !7
  %443 = tail call double @llvm.fmuladd.f64(double %416, double -4.000000e+00, double %442)
  %444 = tail call double @llvm.fmuladd.f64(double %.in2783, double 6.000000e+00, double %443)
  %445 = tail call double @llvm.fmuladd.f64(double %.in, double -4.000000e+00, double %444)
  %446 = load double, double* %arrayidx287, align 16, !tbaa !7
  %add1316.4 = fadd double %445, %446
  %447 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316.4, double %418)
  store double %447, double* %arrayidx1196.4, align 8, !tbaa !7
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %448 = bitcast double %422 to i64
  %449 = bitcast double %401 to i64
  %450 = bitcast double %.in2788 to i64
  %451 = bitcast double %406 to i64
  %452 = bitcast double %.in2786 to i64
  %453 = bitcast double %411 to i64
  %454 = bitcast double %.in2785 to i64
  %455 = bitcast double %416 to i64
  %456 = bitcast double %.in2783 to i64
  br i1 %exitcond, label %for.end1332.loopexit, label %for.body978

for.end1332.loopexit:                             ; preds = %for.body978
  store double %.in2791, double* %336, align 16, !tbaa !7
  store double %.in2790, double* %arrayidx294, align 8, !tbaa !7
  store double %.in2789, double* %scevgep2779, align 16, !tbaa !7
  store i64 %353, i64* %84, align 8, !tbaa !7
  store double %.in2788, double* %arrayidx209, align 8, !tbaa !7
  store double %.in2787, double* %arrayidx21, align 8, !tbaa !7
  store i64 %354, i64* %95, align 8, !tbaa !7
  store double %.in2786, double* %arrayidx212, align 16, !tbaa !7
  store double %347, double* %arrayidx29, align 8, !tbaa !7
  store i64 %355, i64* %106, align 8, !tbaa !7
  store double %.in2785, double* %arrayidx215, align 8, !tbaa !7
  store double %.in2784, double* %arrayidx37, align 8, !tbaa !7
  store i64 %356, i64* %117, align 8, !tbaa !7
  store double %.in2783, double* %arrayidx218, align 16, !tbaa !7
  store double %.in, double* %arrayidx45, align 8, !tbaa !7
  store i64 %357, i64* %129, align 8, !tbaa !7
  br label %for.end1332

for.end1332:                                      ; preds = %for.end1332.loopexit, %if.end
  %457 = phi double [ %325, %if.end ], [ %446, %for.end1332.loopexit ]
  %458 = phi double [ %323, %if.end ], [ %.in, %for.end1332.loopexit ]
  %459 = phi i64 [ %335, %if.end ], [ %456, %for.end1332.loopexit ]
  %460 = phi i64 [ %334, %if.end ], [ %455, %for.end1332.loopexit ]
  %461 = phi double [ %319, %if.end ], [ %440, %for.end1332.loopexit ]
  %462 = phi double [ %317, %if.end ], [ %.in2784, %for.end1332.loopexit ]
  %463 = phi i64 [ %333, %if.end ], [ %454, %for.end1332.loopexit ]
  %464 = phi i64 [ %332, %if.end ], [ %453, %for.end1332.loopexit ]
  %465 = phi double [ %313, %if.end ], [ %434, %for.end1332.loopexit ]
  %466 = phi double [ %311, %if.end ], [ %347, %for.end1332.loopexit ]
  %467 = phi i64 [ %331, %if.end ], [ %452, %for.end1332.loopexit ]
  %468 = phi i64 [ %330, %if.end ], [ %451, %for.end1332.loopexit ]
  %469 = phi double [ %307, %if.end ], [ %428, %for.end1332.loopexit ]
  %470 = phi double [ %305, %if.end ], [ %.in2787, %for.end1332.loopexit ]
  %471 = phi i64 [ %329, %if.end ], [ %450, %for.end1332.loopexit ]
  %472 = phi i64 [ %328, %if.end ], [ %449, %for.end1332.loopexit ]
  %473 = phi i64 [ %327, %if.end ], [ %448, %for.end1332.loopexit ]
  %sub1334 = add nsw i32 %f, -2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  %474 = load i64, i64* %76, align 8, !tbaa !7
  store i64 %474, i64* %78, align 16, !tbaa !7
  %475 = load i64, i64* %79, align 16, !tbaa !7
  store i64 %475, i64* %76, align 8, !tbaa !7
  %476 = load i64, i64* %81, align 8, !tbaa !7
  store i64 %476, i64* %79, align 16, !tbaa !7
  store i64 %473, i64* %81, align 8, !tbaa !7
  %477 = load i64, i64* %84, align 8, !tbaa !7
  store i64 %477, i64* %86, align 16, !tbaa !7
  %478 = load i64, i64* %87, align 16, !tbaa !7
  store i64 %478, i64* %84, align 8, !tbaa !7
  store i64 %472, i64* %91, align 8, !tbaa !7
  store i64 %471, i64* %89, align 8, !tbaa !7
  store double %470, double* %arrayidx209, align 8, !tbaa !7
  store double %469, double* %arrayidx21, align 8, !tbaa !7
  %479 = load i64, i64* %95, align 8, !tbaa !7
  store i64 %479, i64* %97, align 8, !tbaa !7
  %480 = load i64, i64* %98, align 8, !tbaa !7
  store i64 %480, i64* %95, align 8, !tbaa !7
  store i64 %468, i64* %102, align 16, !tbaa !7
  store i64 %467, i64* %100, align 8, !tbaa !7
  store double %466, double* %arrayidx212, align 16, !tbaa !7
  store double %465, double* %arrayidx29, align 8, !tbaa !7
  %481 = load i64, i64* %106, align 8, !tbaa !7
  store i64 %481, i64* %108, align 16, !tbaa !7
  %482 = load i64, i64* %109, align 16, !tbaa !7
  store i64 %482, i64* %106, align 8, !tbaa !7
  store i64 %464, i64* %113, align 8, !tbaa !7
  store i64 %463, i64* %111, align 8, !tbaa !7
  store double %462, double* %arrayidx215, align 8, !tbaa !7
  store double %461, double* %arrayidx37, align 8, !tbaa !7
  %483 = load i64, i64* %117, align 8, !tbaa !7
  store i64 %483, i64* %119, align 8, !tbaa !7
  %484 = load i64, i64* %120, align 8, !tbaa !7
  store i64 %484, i64* %117, align 8, !tbaa !7
  store i64 %460, i64* %124, align 16, !tbaa !7
  store i64 %459, i64* %122, align 8, !tbaa !7
  store double %458, double* %arrayidx218, align 16, !tbaa !7
  store double %457, double* %arrayidx45, align 8, !tbaa !7
  %485 = load i64, i64* %129, align 8, !tbaa !7
  store i64 %485, i64* %131, align 16, !tbaa !7
  %486 = load i64, i64* %132, align 16, !tbaa !7
  store i64 %486, i64* %129, align 8, !tbaa !7
  %sub1335 = add nsw i32 %f, -1
  %idxprom1387 = sext i32 %sub1335 to i64
  %arrayidx1390 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom1387, i64 %idxprom9
  %487 = bitcast [5 x double]* %arrayidx1390 to i64*
  %488 = load i64, i64* %487, align 8, !tbaa !7
  store i64 %488, i64* %63, align 16, !tbaa !7
  %arrayidx1400 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom1387, i64 %idxprom9, i64 1
  %489 = bitcast double* %arrayidx1400 to i64*
  %490 = load i64, i64* %489, align 8, !tbaa !7
  store i64 %490, i64* %66, align 8, !tbaa !7
  %arrayidx1409 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom1387, i64 %idxprom9, i64 2
  %491 = bitcast double* %arrayidx1409 to i64*
  %492 = load i64, i64* %491, align 8, !tbaa !7
  store i64 %492, i64* %69, align 16, !tbaa !7
  %arrayidx1418 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom1387, i64 %idxprom9, i64 3
  %493 = bitcast double* %arrayidx1418 to i64*
  %494 = load i64, i64* %493, align 8, !tbaa !7
  store i64 %494, i64* %72, align 8, !tbaa !7
  %arrayidx1427 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom1387, i64 %idxprom9, i64 4
  %495 = bitcast double* %arrayidx1427 to i64*
  %496 = load i64, i64* %495, align 8, !tbaa !7
  store i64 %496, i64* %75, align 16, !tbaa !7
  %497 = getelementptr [5 x double], [5 x double]* %arrayidx140, i64 0, i64 0
  store double %465, double* %497, align 16, !tbaa !7
  %idxprom1438 = sext i32 %sub1334 to i64
  %arrayidx1441 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom1438, i64 %idxprom9
  %498 = load double, double* %arrayidx1441, align 8, !tbaa !7
  %mul1442 = fmul double %498, %465
  %arrayidx1448 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 %idxprom1438, i64 %idxprom9
  %499 = load double, double* %arrayidx1448, align 8, !tbaa !7
  %mul1451 = fmul double %mul1442, %469
  store double %mul1451, double* %arrayidx161, align 8, !tbaa !7
  %sub1459 = fsub double %457, %499
  %mul1460 = fmul double %sub1459, 4.000000e-01
  %500 = tail call double @llvm.fmuladd.f64(double %465, double %mul1442, double %mul1460)
  store double %500, double* %arrayidx170, align 16, !tbaa !7
  %mul1465 = fmul double %mul1442, %461
  store double %mul1465, double* %arrayidx175, align 8, !tbaa !7
  %neg1472 = fmul double %499, -4.000000e-01
  %501 = tail call double @llvm.fmuladd.f64(double %457, double 1.400000e+00, double %neg1472)
  %mul1473 = fmul double %mul1442, %501
  store double %mul1473, double* %arrayidx183, align 16, !tbaa !7
  %mul1484 = fmul double %498, %469
  %mul1490 = fmul double %498, %461
  %mul1493 = fmul double %498, %457
  %idxprom1496 = sext i32 %sub975 to i64
  %arrayidx1499 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom1496, i64 %idxprom9
  %502 = load double, double* %arrayidx1499, align 8, !tbaa !7
  %mul1502 = fmul double %502, %470
  %mul1505 = fmul double %502, %466
  %mul1508 = fmul double %502, %462
  %mul1511 = fmul double %502, %458
  %sub1512 = fsub double %mul1484, %mul1502
  %mul1513 = fmul double %sub1512, 1.100000e+01
  store double %mul1513, double* %arrayidx223, align 8, !tbaa !7
  %sub1516 = fsub double %mul1442, %mul1505
  %mul1517 = fmul double %sub1516, 0x402D555555555555
  store double %mul1517, double* %arrayidx227, align 8, !tbaa !7
  %sub1520 = fsub double %mul1490, %mul1508
  %mul1521 = fmul double %sub1520, 1.100000e+01
  store double %mul1521, double* %arrayidx231, align 8, !tbaa !7
  %mul1525 = fmul double %mul1442, %mul1442
  %503 = tail call double @llvm.fmuladd.f64(double %mul1484, double %mul1484, double %mul1525)
  %504 = tail call double @llvm.fmuladd.f64(double %mul1490, double %mul1490, double %503)
  %mul1528 = fmul double %mul1505, %mul1505
  %505 = tail call double @llvm.fmuladd.f64(double %mul1502, double %mul1502, double %mul1528)
  %506 = tail call double @llvm.fmuladd.f64(double %mul1508, double %mul1508, double %505)
  %sub1530 = fsub double %504, %506
  %neg1534 = fsub double -0.000000e+00, %mul1528
  %507 = tail call double @llvm.fmuladd.f64(double %mul1442, double %mul1442, double %neg1534)
  %mul1535 = fmul double %507, 0x3FFD555555555555
  %508 = tail call double @llvm.fmuladd.f64(double %sub1530, double 0xC0151EB851EB851D, double %mul1535)
  %sub1536 = fsub double %mul1493, %mul1511
  %509 = tail call double @llvm.fmuladd.f64(double %sub1536, double 2.156000e+01, double %508)
  store double %509, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx1551 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom1496, i64 %idxprom9, i64 0
  %510 = load double, double* %arrayidx1551, align 8, !tbaa !7
  %511 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub1558 = fsub double %465, %511
  %512 = tail call double @llvm.fmuladd.f64(double %sub1558, double -5.500000e+00, double %510)
  %arrayidx1551.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom1496, i64 %idxprom9, i64 1
  %513 = load double, double* %arrayidx1551.1, align 8, !tbaa !7
  %514 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub1558.1 = fsub double %mul1451, %514
  %515 = tail call double @llvm.fmuladd.f64(double %sub1558.1, double -5.500000e+00, double %513)
  %arrayidx1551.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom1496, i64 %idxprom9, i64 2
  %516 = load double, double* %arrayidx1551.2, align 8, !tbaa !7
  %517 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub1558.2 = fsub double %500, %517
  %518 = tail call double @llvm.fmuladd.f64(double %sub1558.2, double -5.500000e+00, double %516)
  %arrayidx1551.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom1496, i64 %idxprom9, i64 3
  %519 = load double, double* %arrayidx1551.3, align 8, !tbaa !7
  %520 = load double, double* %arrayidx321.3, align 8, !tbaa !7
  %sub1558.3 = fsub double %mul1465, %520
  %521 = tail call double @llvm.fmuladd.f64(double %sub1558.3, double -5.500000e+00, double %519)
  %arrayidx1551.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom1496, i64 %idxprom9, i64 4
  %522 = load double, double* %arrayidx1551.4, align 8, !tbaa !7
  %523 = load double, double* %arrayidx321.4, align 16, !tbaa !7
  %sub1558.4 = fsub double %mul1473, %523
  %524 = tail call double @llvm.fmuladd.f64(double %sub1558.4, double -5.500000e+00, double %522)
  %525 = load double, double* %arrayidx294, align 8, !tbaa !7
  %526 = load double, double* %scevgep2779, align 16, !tbaa !7
  %527 = tail call double @llvm.fmuladd.f64(double %526, double -2.000000e+00, double %525)
  %528 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add1573 = fadd double %527, %528
  %529 = tail call double @llvm.fmuladd.f64(double %add1573, double 9.075000e+01, double %512)
  %530 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub1581 = fsub double %mul1513, %530
  %531 = tail call double @llvm.fmuladd.f64(double %sub1581, double 1.100000e+00, double %515)
  %532 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %533 = tail call double @llvm.fmuladd.f64(double %470, double -2.000000e+00, double %532)
  %add1590 = fadd double %469, %533
  %534 = tail call double @llvm.fmuladd.f64(double %add1590, double 9.075000e+01, double %531)
  %535 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub1598 = fsub double %mul1517, %535
  %536 = tail call double @llvm.fmuladd.f64(double %sub1598, double 1.100000e+00, double %518)
  %537 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %538 = tail call double @llvm.fmuladd.f64(double %466, double -2.000000e+00, double %537)
  %add1607 = fadd double %538, %465
  %539 = tail call double @llvm.fmuladd.f64(double %add1607, double 9.075000e+01, double %536)
  %540 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub1615 = fsub double %mul1521, %540
  %541 = tail call double @llvm.fmuladd.f64(double %sub1615, double 1.100000e+00, double %521)
  %542 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %543 = tail call double @llvm.fmuladd.f64(double %462, double -2.000000e+00, double %542)
  %add1624 = fadd double %461, %543
  %544 = tail call double @llvm.fmuladd.f64(double %add1624, double 9.075000e+01, double %541)
  %545 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub1632 = fsub double %509, %545
  %546 = tail call double @llvm.fmuladd.f64(double %sub1632, double 1.100000e+00, double %524)
  %547 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %548 = tail call double @llvm.fmuladd.f64(double %458, double -2.000000e+00, double %547)
  %add1641 = fadd double %457, %548
  %549 = tail call double @llvm.fmuladd.f64(double %add1641, double 9.075000e+01, double %546)
  %550 = load double, double* %arrayidx297, align 16, !tbaa !7
  %551 = tail call double @llvm.fmuladd.f64(double %525, double -4.000000e+00, double %550)
  %552 = tail call double @llvm.fmuladd.f64(double %526, double 6.000000e+00, double %551)
  %553 = tail call double @llvm.fmuladd.f64(double %528, double -4.000000e+00, double %552)
  %554 = tail call double @llvm.fmuladd.f64(double %neg618, double %553, double %529)
  store double %554, double* %arrayidx1551, align 8, !tbaa !7
  %555 = load double, double* %arrayidx297.1, align 8, !tbaa !7
  %556 = tail call double @llvm.fmuladd.f64(double %532, double -4.000000e+00, double %555)
  %557 = load double, double* %arrayidx209, align 8, !tbaa !7
  %558 = tail call double @llvm.fmuladd.f64(double %557, double 6.000000e+00, double %556)
  %559 = load double, double* %arrayidx21, align 8, !tbaa !7
  %560 = tail call double @llvm.fmuladd.f64(double %559, double -4.000000e+00, double %558)
  %561 = tail call double @llvm.fmuladd.f64(double %neg618, double %560, double %534)
  store double %561, double* %arrayidx1551.1, align 8, !tbaa !7
  %562 = load double, double* %arrayidx297.2, align 16, !tbaa !7
  %563 = tail call double @llvm.fmuladd.f64(double %537, double -4.000000e+00, double %562)
  %564 = load double, double* %arrayidx212, align 16, !tbaa !7
  %565 = tail call double @llvm.fmuladd.f64(double %564, double 6.000000e+00, double %563)
  %566 = load double, double* %arrayidx29, align 8, !tbaa !7
  %567 = tail call double @llvm.fmuladd.f64(double %566, double -4.000000e+00, double %565)
  %568 = tail call double @llvm.fmuladd.f64(double %neg618, double %567, double %539)
  store double %568, double* %arrayidx1551.2, align 8, !tbaa !7
  %569 = load double, double* %arrayidx297.3, align 8, !tbaa !7
  %570 = tail call double @llvm.fmuladd.f64(double %542, double -4.000000e+00, double %569)
  %571 = load double, double* %arrayidx215, align 8, !tbaa !7
  %572 = tail call double @llvm.fmuladd.f64(double %571, double 6.000000e+00, double %570)
  %573 = load double, double* %arrayidx37, align 8, !tbaa !7
  %574 = tail call double @llvm.fmuladd.f64(double %573, double -4.000000e+00, double %572)
  %575 = tail call double @llvm.fmuladd.f64(double %neg618, double %574, double %544)
  store double %575, double* %arrayidx1551.3, align 8, !tbaa !7
  %576 = load double, double* %arrayidx297.4, align 16, !tbaa !7
  %577 = tail call double @llvm.fmuladd.f64(double %547, double -4.000000e+00, double %576)
  %578 = load double, double* %arrayidx218, align 16, !tbaa !7
  %579 = tail call double @llvm.fmuladd.f64(double %578, double 6.000000e+00, double %577)
  %580 = load double, double* %arrayidx45, align 8, !tbaa !7
  %581 = tail call double @llvm.fmuladd.f64(double %580, double -4.000000e+00, double %579)
  %582 = tail call double @llvm.fmuladd.f64(double %neg618, double %581, double %549)
  store double %582, double* %arrayidx1551.4, align 8, !tbaa !7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  %583 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 0
  store double %525, double* %583, align 16, !tbaa !7
  store double %526, double* %arrayidx294, align 8, !tbaa !7
  store double %528, double* %scevgep2779, align 16, !tbaa !7
  %584 = load i64, i64* %83, align 16, !tbaa !7
  store i64 %584, i64* %81, align 8, !tbaa !7
  %585 = load i64, i64* %84, align 8, !tbaa !7
  store i64 %585, i64* %86, align 16, !tbaa !7
  %586 = load i64, i64* %87, align 16, !tbaa !7
  store i64 %586, i64* %84, align 8, !tbaa !7
  store double %532, double* %arrayidx297.1, align 8, !tbaa !7
  store double %557, double* %arrayidx294.1, align 8, !tbaa !7
  store double %559, double* %arrayidx209, align 8, !tbaa !7
  %587 = load i64, i64* %66, align 8, !tbaa !7
  store i64 %587, i64* %13, align 8, !tbaa !7
  %588 = load i64, i64* %95, align 8, !tbaa !7
  store i64 %588, i64* %97, align 8, !tbaa !7
  %589 = load i64, i64* %98, align 8, !tbaa !7
  store i64 %589, i64* %95, align 8, !tbaa !7
  store double %537, double* %arrayidx297.2, align 16, !tbaa !7
  store double %564, double* %arrayidx294.2, align 8, !tbaa !7
  store double %566, double* %arrayidx212, align 16, !tbaa !7
  %590 = load i64, i64* %69, align 16, !tbaa !7
  store i64 %590, i64* %16, align 8, !tbaa !7
  %591 = load i64, i64* %106, align 8, !tbaa !7
  store i64 %591, i64* %108, align 16, !tbaa !7
  %592 = load i64, i64* %109, align 16, !tbaa !7
  store i64 %592, i64* %106, align 8, !tbaa !7
  store double %542, double* %arrayidx297.3, align 8, !tbaa !7
  store double %571, double* %arrayidx294.3, align 8, !tbaa !7
  store double %573, double* %arrayidx215, align 8, !tbaa !7
  %593 = load i64, i64* %72, align 8, !tbaa !7
  store i64 %593, i64* %19, align 8, !tbaa !7
  %594 = load i64, i64* %117, align 8, !tbaa !7
  store i64 %594, i64* %119, align 8, !tbaa !7
  %595 = load i64, i64* %120, align 8, !tbaa !7
  store i64 %595, i64* %117, align 8, !tbaa !7
  store double %547, double* %arrayidx297.4, align 16, !tbaa !7
  store double %578, double* %arrayidx294.4, align 8, !tbaa !7
  store double %580, double* %arrayidx218, align 16, !tbaa !7
  %596 = load i64, i64* %75, align 16, !tbaa !7
  store i64 %596, i64* %22, align 8, !tbaa !7
  %597 = load i64, i64* %129, align 8, !tbaa !7
  store i64 %597, i64* %131, align 16, !tbaa !7
  %598 = load i64, i64* %132, align 16, !tbaa !7
  store i64 %598, i64* %129, align 8, !tbaa !7
  store i64 %590, i64* %42, align 16, !tbaa !7
  %.cast2674 = bitcast i64 %590 to double
  %arrayidx1744 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom1387, i64 %idxprom9
  %599 = load double, double* %arrayidx1744, align 8, !tbaa !7
  %mul1745 = fmul double %599, %.cast2674
  %arrayidx1751 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 %idxprom1387, i64 %idxprom9
  %600 = load double, double* %arrayidx1751, align 8, !tbaa !7
  %601 = bitcast i64 %587 to double
  %mul1754 = fmul double %mul1745, %601
  store double %mul1754, double* %arrayidx161, align 8, !tbaa !7
  %602 = bitcast i64 %596 to double
  %sub1762 = fsub double %602, %600
  %mul1763 = fmul double %sub1762, 4.000000e-01
  %603 = tail call double @llvm.fmuladd.f64(double %.cast2674, double %mul1745, double %mul1763)
  store double %603, double* %arrayidx170, align 16, !tbaa !7
  %604 = bitcast i64 %593 to double
  %mul1768 = fmul double %mul1745, %604
  store double %mul1768, double* %arrayidx175, align 8, !tbaa !7
  %neg1775 = fmul double %600, -4.000000e-01
  %605 = tail call double @llvm.fmuladd.f64(double %602, double 1.400000e+00, double %neg1775)
  %mul1776 = fmul double %mul1745, %605
  store double %mul1776, double* %arrayidx183, align 16, !tbaa !7
  %mul1787 = fmul double %599, %601
  %mul1793 = fmul double %599, %604
  %mul1796 = fmul double %599, %602
  %606 = load double, double* %arrayidx1441, align 8, !tbaa !7
  %mul1805 = fmul double %606, %559
  %mul1808 = fmul double %606, %566
  %mul1811 = fmul double %606, %573
  %mul1814 = fmul double %606, %580
  %sub1815 = fsub double %mul1787, %mul1805
  %mul1816 = fmul double %sub1815, 1.100000e+01
  store double %mul1816, double* %arrayidx223, align 8, !tbaa !7
  %sub1819 = fsub double %mul1745, %mul1808
  %mul1820 = fmul double %sub1819, 0x402D555555555555
  store double %mul1820, double* %arrayidx227, align 8, !tbaa !7
  %sub1823 = fsub double %mul1793, %mul1811
  %mul1824 = fmul double %sub1823, 1.100000e+01
  store double %mul1824, double* %arrayidx231, align 8, !tbaa !7
  %mul1828 = fmul double %mul1745, %mul1745
  %607 = tail call double @llvm.fmuladd.f64(double %mul1787, double %mul1787, double %mul1828)
  %608 = tail call double @llvm.fmuladd.f64(double %mul1793, double %mul1793, double %607)
  %mul1831 = fmul double %mul1808, %mul1808
  %609 = tail call double @llvm.fmuladd.f64(double %mul1805, double %mul1805, double %mul1831)
  %610 = tail call double @llvm.fmuladd.f64(double %mul1811, double %mul1811, double %609)
  %sub1833 = fsub double %608, %610
  %neg1837 = fsub double -0.000000e+00, %mul1831
  %611 = tail call double @llvm.fmuladd.f64(double %mul1745, double %mul1745, double %neg1837)
  %mul1838 = fmul double %611, 0x3FFD555555555555
  %612 = tail call double @llvm.fmuladd.f64(double %sub1833, double 0xC0151EB851EB851D, double %mul1838)
  %sub1839 = fsub double %mul1796, %mul1814
  %613 = tail call double @llvm.fmuladd.f64(double %sub1839, double 2.156000e+01, double %612)
  store double %613, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx1854 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom1438, i64 %idxprom9, i64 0
  %614 = load double, double* %arrayidx1854, align 8, !tbaa !7
  %615 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub1861 = fsub double %.cast2674, %615
  %616 = tail call double @llvm.fmuladd.f64(double %sub1861, double -5.500000e+00, double %614)
  %arrayidx1854.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom1438, i64 %idxprom9, i64 1
  %617 = load double, double* %arrayidx1854.1, align 8, !tbaa !7
  %618 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub1861.1 = fsub double %mul1754, %618
  %619 = tail call double @llvm.fmuladd.f64(double %sub1861.1, double -5.500000e+00, double %617)
  %arrayidx1854.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom1438, i64 %idxprom9, i64 2
  %620 = load double, double* %arrayidx1854.2, align 8, !tbaa !7
  %621 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub1861.2 = fsub double %603, %621
  %622 = tail call double @llvm.fmuladd.f64(double %sub1861.2, double -5.500000e+00, double %620)
  %arrayidx1854.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom1438, i64 %idxprom9, i64 3
  %623 = load double, double* %arrayidx1854.3, align 8, !tbaa !7
  %624 = bitcast i64 %594 to double
  %sub1861.3 = fsub double %mul1768, %624
  %625 = tail call double @llvm.fmuladd.f64(double %sub1861.3, double -5.500000e+00, double %623)
  %arrayidx1854.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom1438, i64 %idxprom9, i64 4
  %626 = load double, double* %arrayidx1854.4, align 8, !tbaa !7
  %627 = bitcast i64 %597 to double
  %sub1861.4 = fsub double %mul1776, %627
  %628 = tail call double @llvm.fmuladd.f64(double %sub1861.4, double -5.500000e+00, double %626)
  %629 = load double, double* %arrayidx294, align 8, !tbaa !7
  %630 = load double, double* %scevgep2779, align 16, !tbaa !7
  %631 = tail call double @llvm.fmuladd.f64(double %630, double -2.000000e+00, double %629)
  %632 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add1876 = fadd double %631, %632
  %633 = tail call double @llvm.fmuladd.f64(double %add1876, double 9.075000e+01, double %616)
  %634 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub1884 = fsub double %mul1816, %634
  %635 = tail call double @llvm.fmuladd.f64(double %sub1884, double 1.100000e+00, double %619)
  %636 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %637 = tail call double @llvm.fmuladd.f64(double %559, double -2.000000e+00, double %636)
  %add1893 = fadd double %637, %601
  %638 = tail call double @llvm.fmuladd.f64(double %add1893, double 9.075000e+01, double %635)
  %639 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub1901 = fsub double %mul1820, %639
  %640 = tail call double @llvm.fmuladd.f64(double %sub1901, double 1.100000e+00, double %622)
  %641 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %642 = tail call double @llvm.fmuladd.f64(double %566, double -2.000000e+00, double %641)
  %add1910 = fadd double %642, %.cast2674
  %643 = tail call double @llvm.fmuladd.f64(double %add1910, double 9.075000e+01, double %640)
  %644 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub1918 = fsub double %mul1824, %644
  %645 = tail call double @llvm.fmuladd.f64(double %sub1918, double 1.100000e+00, double %625)
  %646 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %647 = tail call double @llvm.fmuladd.f64(double %573, double -2.000000e+00, double %646)
  %add1927 = fadd double %647, %604
  %648 = tail call double @llvm.fmuladd.f64(double %add1927, double 9.075000e+01, double %645)
  %649 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub1935 = fsub double %613, %649
  %650 = tail call double @llvm.fmuladd.f64(double %sub1935, double 1.100000e+00, double %628)
  %651 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %652 = tail call double @llvm.fmuladd.f64(double %580, double -2.000000e+00, double %651)
  %add1944 = fadd double %652, %602
  %653 = tail call double @llvm.fmuladd.f64(double %add1944, double 9.075000e+01, double %650)
  %654 = load double, double* %arrayidx297, align 16, !tbaa !7
  %655 = tail call double @llvm.fmuladd.f64(double %629, double -4.000000e+00, double %654)
  %656 = tail call double @llvm.fmuladd.f64(double %630, double 5.000000e+00, double %655)
  %657 = tail call double @llvm.fmuladd.f64(double %neg618, double %656, double %633)
  store double %657, double* %arrayidx1854, align 8, !tbaa !7
  %658 = load double, double* %arrayidx297.1, align 8, !tbaa !7
  %659 = tail call double @llvm.fmuladd.f64(double %636, double -4.000000e+00, double %658)
  %660 = load double, double* %arrayidx209, align 8, !tbaa !7
  %661 = tail call double @llvm.fmuladd.f64(double %660, double 5.000000e+00, double %659)
  %662 = tail call double @llvm.fmuladd.f64(double %neg618, double %661, double %638)
  store double %662, double* %arrayidx1854.1, align 8, !tbaa !7
  %663 = load double, double* %arrayidx297.2, align 16, !tbaa !7
  %664 = tail call double @llvm.fmuladd.f64(double %641, double -4.000000e+00, double %663)
  %665 = load double, double* %arrayidx212, align 16, !tbaa !7
  %666 = tail call double @llvm.fmuladd.f64(double %665, double 5.000000e+00, double %664)
  %667 = tail call double @llvm.fmuladd.f64(double %neg618, double %666, double %643)
  store double %667, double* %arrayidx1854.2, align 8, !tbaa !7
  %668 = load double, double* %arrayidx297.3, align 8, !tbaa !7
  %669 = tail call double @llvm.fmuladd.f64(double %646, double -4.000000e+00, double %668)
  %670 = load double, double* %arrayidx215, align 8, !tbaa !7
  %671 = tail call double @llvm.fmuladd.f64(double %670, double 5.000000e+00, double %669)
  %672 = tail call double @llvm.fmuladd.f64(double %neg618, double %671, double %648)
  store double %672, double* %arrayidx1854.3, align 8, !tbaa !7
  %673 = load double, double* %arrayidx297.4, align 16, !tbaa !7
  %674 = tail call double @llvm.fmuladd.f64(double %651, double -4.000000e+00, double %673)
  %675 = load double, double* %arrayidx218, align 16, !tbaa !7
  %676 = tail call double @llvm.fmuladd.f64(double %675, double 5.000000e+00, double %674)
  %677 = tail call double @llvm.fmuladd.f64(double %neg618, double %676, double %653)
  store double %677, double* %arrayidx1854.4, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %for.end1332, %entry
  call void @llvm.lifetime.end.p0i8(i64 200, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 120, i8* nonnull %0) #4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: convergent nounwind readnone
declare dso_local double @_Z3maxdd(double, double) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
