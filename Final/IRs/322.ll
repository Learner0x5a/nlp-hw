; ModuleID = 'src/322.src'
source_filename = "src/322.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture %b, double* nocapture readonly %c, double* nocapture readonly %d, i32 %e, i32 %f, i32 %g) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
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
  %sub = add nsw i32 %f, -1
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
  %arrayidx10 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 0, i64 %idxprom, i64 %idxprom9
  %8 = bitcast [5 x double]* %arrayidx10 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !7
  %arrayidx12 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3
  %10 = bitcast [5 x double]* %arrayidx12 to i64*
  store i64 %9, i64* %10, align 8, !tbaa !7
  %arrayidx19 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %11 = bitcast double* %arrayidx19 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !7
  %arrayidx21 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3, i64 1
  %13 = bitcast double* %arrayidx21 to i64*
  store i64 %12, i64* %13, align 8, !tbaa !7
  %arrayidx27 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %14 = bitcast double* %arrayidx27 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !7
  %arrayidx29 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3, i64 2
  %16 = bitcast double* %arrayidx29 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !7
  %arrayidx35 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %17 = bitcast double* %arrayidx35 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !7
  %arrayidx37 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3, i64 3
  %19 = bitcast double* %arrayidx37 to i64*
  store i64 %18, i64* %19, align 8, !tbaa !7
  %arrayidx43 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %20 = bitcast double* %arrayidx43 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !7
  %arrayidx45 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3, i64 4
  %22 = bitcast double* %arrayidx45 to i64*
  store i64 %21, i64* %22, align 8, !tbaa !7
  %arrayidx48 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1
  %23 = bitcast [5 x double]* %arrayidx48 to i64*
  store i64 %18, i64* %23, align 8, !tbaa !7
  %.cast = bitcast i64 %18 to double
  %arrayidx57 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 0, i64 %idxprom, i64 %idxprom9
  %24 = load double, double* %arrayidx57, align 8, !tbaa !7
  %mul = fmul double %24, %.cast
  %arrayidx63 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 0, i64 %idxprom, i64 %idxprom9
  %25 = load double, double* %arrayidx63, align 8, !tbaa !7
  %26 = bitcast i64 %12 to double
  %mul66 = fmul double %mul, %26
  %arrayidx68 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1, i64 1
  store double %mul66, double* %arrayidx68, align 8, !tbaa !7
  %27 = bitcast i64 %15 to double
  %mul71 = fmul double %mul, %27
  %arrayidx73 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1, i64 2
  store double %mul71, double* %arrayidx73, align 8, !tbaa !7
  %28 = bitcast i64 %21 to double
  %sub79 = fsub double %28, %25
  %mul80 = fmul double %sub79, 4.000000e-01
  %29 = tail call double @llvm.fmuladd.f64(double %.cast, double %mul, double %mul80)
  %arrayidx82 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1, i64 3
  store double %29, double* %arrayidx82, align 8, !tbaa !7
  %neg = fmul double %25, -4.000000e-01
  %30 = tail call double @llvm.fmuladd.f64(double %28, double 1.400000e+00, double %neg)
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
  %arrayidx98 = getelementptr inbounds double, double* %a, i64 845
  %32 = bitcast double* %arrayidx98 to [13 x [13 x [5 x double]]]*
  %arrayidx102 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %32, i64 0, i64 %idxprom, i64 %idxprom9
  %33 = bitcast [5 x double]* %arrayidx102 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !7
  store i64 %34, i64* %10, align 8, !tbaa !7
  %arrayidx111 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %32, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %35 = bitcast double* %arrayidx111 to i64*
  %36 = load i64, i64* %35, align 8, !tbaa !7
  store i64 %36, i64* %13, align 8, !tbaa !7
  %arrayidx119 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %32, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %37 = bitcast double* %arrayidx119 to i64*
  %38 = load i64, i64* %37, align 8, !tbaa !7
  store i64 %38, i64* %16, align 8, !tbaa !7
  %arrayidx127 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %32, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %39 = bitcast double* %arrayidx127 to i64*
  %40 = load i64, i64* %39, align 8, !tbaa !7
  store i64 %40, i64* %19, align 8, !tbaa !7
  %arrayidx135 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %32, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %41 = bitcast double* %arrayidx135 to i64*
  %42 = load i64, i64* %41, align 8, !tbaa !7
  store i64 %42, i64* %22, align 8, !tbaa !7
  %arrayidx140 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2
  %43 = bitcast [5 x double]* %arrayidx140 to i64*
  store i64 %40, i64* %43, align 16, !tbaa !7
  %.cast2670 = bitcast i64 %40 to double
  %arrayidx145 = getelementptr inbounds double, double* %d, i64 169
  %44 = bitcast double* %arrayidx145 to [13 x [13 x double]]*
  %arrayidx149 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %44, i64 0, i64 %idxprom, i64 %idxprom9
  %45 = load double, double* %arrayidx149, align 8, !tbaa !7
  %mul150 = fmul double %45, %.cast2670
  %arrayidx152 = getelementptr inbounds double, double* %c, i64 169
  %46 = bitcast double* %arrayidx152 to [13 x [13 x double]]*
  %arrayidx156 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %46, i64 0, i64 %idxprom, i64 %idxprom9
  %47 = load double, double* %arrayidx156, align 8, !tbaa !7
  %48 = bitcast i64 %36 to double
  %mul159 = fmul double %mul150, %48
  %arrayidx161 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 1
  store double %mul159, double* %arrayidx161, align 8, !tbaa !7
  %49 = bitcast i64 %38 to double
  %mul164 = fmul double %mul150, %49
  %arrayidx166 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 2
  store double %mul164, double* %arrayidx166, align 16, !tbaa !7
  %50 = bitcast i64 %42 to double
  %sub172 = fsub double %50, %47
  %mul173 = fmul double %sub172, 4.000000e-01
  %51 = tail call double @llvm.fmuladd.f64(double %.cast2670, double %mul150, double %mul173)
  %arrayidx175 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 3
  store double %51, double* %arrayidx175, align 8, !tbaa !7
  %neg180 = fmul double %47, -4.000000e-01
  %52 = tail call double @llvm.fmuladd.f64(double %50, double 1.400000e+00, double %neg180)
  %mul181 = fmul double %mul150, %52
  %arrayidx183 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 4
  store double %mul181, double* %arrayidx183, align 16, !tbaa !7
  %mul192 = fmul double %45, %48
  %mul195 = fmul double %45, %49
  %mul201 = fmul double %45, %50
  %arrayidx209 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 2, i64 1
  %53 = load double, double* %arrayidx209, align 8, !tbaa !7
  %mul210 = fmul double %24, %53
  %arrayidx212 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 2, i64 2
  %54 = load double, double* %arrayidx212, align 16, !tbaa !7
  %mul213 = fmul double %24, %54
  %arrayidx215 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 2, i64 3
  %55 = load double, double* %arrayidx215, align 8, !tbaa !7
  %mul216 = fmul double %24, %55
  %arrayidx218 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 2, i64 4
  %56 = load double, double* %arrayidx218, align 16, !tbaa !7
  %mul219 = fmul double %24, %56
  %sub220 = fsub double %mul192, %mul210
  %mul221 = fmul double %sub220, 1.100000e+01
  %arrayidx223 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 1
  store double %mul221, double* %arrayidx223, align 8, !tbaa !7
  %sub224 = fsub double %mul195, %mul213
  %mul225 = fmul double %sub224, 1.100000e+01
  %arrayidx227 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 2
  store double %mul225, double* %arrayidx227, align 8, !tbaa !7
  %sub228 = fsub double %mul150, %mul216
  %mul229 = fmul double %sub228, 0x402D555555555555
  %arrayidx231 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 3
  store double %mul229, double* %arrayidx231, align 8, !tbaa !7
  %mul233 = fmul double %mul195, %mul195
  %57 = tail call double @llvm.fmuladd.f64(double %mul192, double %mul192, double %mul233)
  %58 = tail call double @llvm.fmuladd.f64(double %mul150, double %mul150, double %57)
  %mul236 = fmul double %mul213, %mul213
  %59 = tail call double @llvm.fmuladd.f64(double %mul210, double %mul210, double %mul236)
  %60 = tail call double @llvm.fmuladd.f64(double %mul216, double %mul216, double %59)
  %sub238 = fsub double %58, %60
  %61 = fneg double %mul216
  %neg242 = fmul double %mul216, %61
  %62 = tail call double @llvm.fmuladd.f64(double %mul150, double %mul150, double %neg242)
  %mul243 = fmul double %62, 0x3FFD555555555555
  %63 = tail call double @llvm.fmuladd.f64(double %sub238, double 0xC0151EB851EB851D, double %mul243)
  %sub244 = fsub double %mul201, %mul219
  %64 = tail call double @llvm.fmuladd.f64(double %sub244, double 2.156000e+01, double %63)
  %arrayidx247 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 4
  store double %64, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx248 = getelementptr inbounds double, double* %a, i64 1690
  %65 = bitcast double* %arrayidx248 to [13 x [13 x [5 x double]]]*
  %arrayidx252 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %65, i64 0, i64 %idxprom, i64 %idxprom9
  %66 = bitcast [5 x double]* %arrayidx252 to i64*
  %67 = load i64, i64* %66, align 8, !tbaa !7
  %arrayidx254 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4
  %68 = bitcast [5 x double]* %arrayidx254 to i64*
  store i64 %67, i64* %68, align 16, !tbaa !7
  %arrayidx261 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %65, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %69 = bitcast double* %arrayidx261 to i64*
  %70 = load i64, i64* %69, align 8, !tbaa !7
  %arrayidx263 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 1
  %71 = bitcast double* %arrayidx263 to i64*
  store i64 %70, i64* %71, align 8, !tbaa !7
  %arrayidx269 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %65, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %72 = bitcast double* %arrayidx269 to i64*
  %73 = load i64, i64* %72, align 8, !tbaa !7
  %arrayidx271 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 2
  %74 = bitcast double* %arrayidx271 to i64*
  store i64 %73, i64* %74, align 16, !tbaa !7
  %arrayidx277 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %65, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %75 = bitcast double* %arrayidx277 to i64*
  %76 = load i64, i64* %75, align 8, !tbaa !7
  %arrayidx279 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 3
  %77 = bitcast double* %arrayidx279 to i64*
  store i64 %76, i64* %77, align 8, !tbaa !7
  %arrayidx285 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %65, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %78 = bitcast double* %arrayidx285 to i64*
  %79 = load i64, i64* %78, align 8, !tbaa !7
  %arrayidx287 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 4
  %80 = bitcast double* %arrayidx287 to i64*
  store i64 %79, i64* %80, align 16, !tbaa !7
  %scevgep2774 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 0
  %scevgep27742775 = bitcast double* %scevgep2774 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  %arrayidx294 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 0
  %81 = bitcast double* %arrayidx294 to i64*
  %82 = load i64, i64* %81, align 8, !tbaa !7
  %arrayidx297 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 0
  %83 = bitcast [5 x [5 x double]]* %aa to i64*
  store i64 %82, i64* %83, align 16, !tbaa !7
  %84 = bitcast double* %scevgep2779 to i64*
  %85 = load i64, i64* %84, align 16, !tbaa !7
  store i64 %85, i64* %81, align 8, !tbaa !7
  %86 = bitcast double* %scevgep2781 to i64*
  %87 = load i64, i64* %86, align 8, !tbaa !7
  store i64 %87, i64* %84, align 16, !tbaa !7
  %arrayidx312 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 0
  %88 = bitcast double* %arrayidx312 to i64*
  store i64 %67, i64* %86, align 8, !tbaa !7
  %arrayidx318 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1, i64 0
  %89 = bitcast double* %arrayidx318 to i64*
  %90 = load i64, i64* %89, align 8, !tbaa !7
  %arrayidx321 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 0
  %91 = bitcast [3 x [5 x double]]* %y to i64*
  store i64 %90, i64* %91, align 16, !tbaa !7
  %arrayidx324 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 0
  %92 = bitcast double* %arrayidx324 to i64*
  %93 = load i64, i64* %92, align 16, !tbaa !7
  store i64 %93, i64* %89, align 8, !tbaa !7
  %arrayidx294.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 1
  %94 = bitcast double* %arrayidx294.1 to i64*
  %95 = load i64, i64* %94, align 8, !tbaa !7
  %arrayidx297.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 1
  %96 = bitcast double* %arrayidx297.1 to i64*
  store i64 %95, i64* %96, align 8, !tbaa !7
  %97 = bitcast double* %arrayidx209 to i64*
  %98 = load i64, i64* %97, align 8, !tbaa !7
  store i64 %98, i64* %94, align 8, !tbaa !7
  %99 = load i64, i64* %13, align 8, !tbaa !7
  store i64 %99, i64* %97, align 8, !tbaa !7
  store i64 %70, i64* %13, align 8, !tbaa !7
  %100 = bitcast double* %arrayidx68 to i64*
  %101 = load i64, i64* %100, align 8, !tbaa !7
  %arrayidx321.1 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 1
  %102 = bitcast double* %arrayidx321.1 to i64*
  store i64 %101, i64* %102, align 8, !tbaa !7
  %103 = bitcast double* %arrayidx161 to i64*
  %104 = load i64, i64* %103, align 8, !tbaa !7
  store i64 %104, i64* %100, align 8, !tbaa !7
  %arrayidx333.1 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 0, i64 1
  %arrayidx294.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 2
  %105 = bitcast double* %arrayidx294.2 to i64*
  %106 = load i64, i64* %105, align 8, !tbaa !7
  %arrayidx297.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 2
  %107 = bitcast double* %arrayidx297.2 to i64*
  store i64 %106, i64* %107, align 16, !tbaa !7
  %108 = bitcast double* %arrayidx212 to i64*
  %109 = load i64, i64* %108, align 16, !tbaa !7
  store i64 %109, i64* %105, align 8, !tbaa !7
  %110 = load i64, i64* %16, align 8, !tbaa !7
  store i64 %110, i64* %108, align 16, !tbaa !7
  store i64 %73, i64* %16, align 8, !tbaa !7
  %111 = bitcast double* %arrayidx73 to i64*
  %112 = load i64, i64* %111, align 8, !tbaa !7
  %arrayidx321.2 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 2
  %113 = bitcast double* %arrayidx321.2 to i64*
  store i64 %112, i64* %113, align 16, !tbaa !7
  %114 = bitcast double* %arrayidx166 to i64*
  %115 = load i64, i64* %114, align 16, !tbaa !7
  store i64 %115, i64* %111, align 8, !tbaa !7
  %arrayidx333.2 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 0, i64 2
  %arrayidx294.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 3
  %116 = bitcast double* %arrayidx294.3 to i64*
  %117 = load i64, i64* %116, align 8, !tbaa !7
  %arrayidx297.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 3
  %118 = bitcast double* %arrayidx297.3 to i64*
  store i64 %117, i64* %118, align 8, !tbaa !7
  %119 = bitcast double* %arrayidx215 to i64*
  %120 = load i64, i64* %119, align 8, !tbaa !7
  store i64 %120, i64* %116, align 8, !tbaa !7
  %121 = load i64, i64* %19, align 8, !tbaa !7
  store i64 %121, i64* %119, align 8, !tbaa !7
  store i64 %76, i64* %19, align 8, !tbaa !7
  %122 = bitcast double* %arrayidx82 to i64*
  %123 = load i64, i64* %122, align 8, !tbaa !7
  %arrayidx321.3 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 3
  %124 = bitcast double* %arrayidx321.3 to i64*
  store i64 %123, i64* %124, align 8, !tbaa !7
  %125 = bitcast double* %arrayidx175 to i64*
  %126 = load i64, i64* %125, align 8, !tbaa !7
  store i64 %126, i64* %122, align 8, !tbaa !7
  %arrayidx333.3 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 0, i64 3
  %arrayidx294.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 4
  %127 = bitcast double* %arrayidx294.4 to i64*
  %128 = load i64, i64* %127, align 8, !tbaa !7
  %arrayidx297.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 4
  %129 = bitcast double* %arrayidx297.4 to i64*
  store i64 %128, i64* %129, align 16, !tbaa !7
  %130 = bitcast double* %arrayidx218 to i64*
  %131 = load i64, i64* %130, align 16, !tbaa !7
  store i64 %131, i64* %127, align 8, !tbaa !7
  %132 = load i64, i64* %22, align 8, !tbaa !7
  store i64 %132, i64* %130, align 16, !tbaa !7
  %133 = load i64, i64* %80, align 16, !tbaa !7
  store i64 %133, i64* %22, align 8, !tbaa !7
  %134 = bitcast double* %arrayidx89 to i64*
  %135 = load i64, i64* %134, align 8, !tbaa !7
  %arrayidx321.4 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 4
  %136 = bitcast double* %arrayidx321.4 to i64*
  store i64 %135, i64* %136, align 16, !tbaa !7
  %137 = bitcast double* %arrayidx183 to i64*
  %138 = load i64, i64* %137, align 16, !tbaa !7
  store i64 %138, i64* %134, align 8, !tbaa !7
  %arrayidx333.4 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 0, i64 4
  %arrayidx338 = getelementptr inbounds double, double* %a, i64 2535
  %139 = bitcast double* %arrayidx338 to [13 x [13 x [5 x double]]]*
  %arrayidx342 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %139, i64 0, i64 %idxprom, i64 %idxprom9
  %140 = bitcast [5 x double]* %arrayidx342 to i64*
  %141 = load i64, i64* %140, align 8, !tbaa !7
  store i64 %141, i64* %68, align 16, !tbaa !7
  %arrayidx352 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %139, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %142 = bitcast double* %arrayidx352 to i64*
  %143 = load i64, i64* %142, align 8, !tbaa !7
  store i64 %143, i64* %71, align 8, !tbaa !7
  %arrayidx361 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %139, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %144 = bitcast double* %arrayidx361 to i64*
  %145 = load i64, i64* %144, align 8, !tbaa !7
  store i64 %145, i64* %74, align 16, !tbaa !7
  %arrayidx370 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %139, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %146 = bitcast double* %arrayidx370 to i64*
  %147 = load i64, i64* %146, align 8, !tbaa !7
  store i64 %147, i64* %77, align 8, !tbaa !7
  %arrayidx379 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %139, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %148 = bitcast double* %arrayidx379 to i64*
  %149 = load i64, i64* %148, align 8, !tbaa !7
  store i64 %149, i64* %80, align 16, !tbaa !7
  store i64 %76, i64* %43, align 16, !tbaa !7
  %.cast2671 = bitcast i64 %76 to double
  %arrayidx389 = getelementptr inbounds double, double* %d, i64 338
  %150 = bitcast double* %arrayidx389 to [13 x [13 x double]]*
  %arrayidx393 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %150, i64 0, i64 %idxprom, i64 %idxprom9
  %151 = load double, double* %arrayidx393, align 8, !tbaa !7
  %mul394 = fmul double %151, %.cast2671
  %arrayidx396 = getelementptr inbounds double, double* %c, i64 338
  %152 = bitcast double* %arrayidx396 to [13 x [13 x double]]*
  %arrayidx400 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %152, i64 0, i64 %idxprom, i64 %idxprom9
  %153 = load double, double* %arrayidx400, align 8, !tbaa !7
  %154 = load double, double* %arrayidx21, align 8, !tbaa !7
  %mul403 = fmul double %mul394, %154
  store double %mul403, double* %arrayidx161, align 8, !tbaa !7
  %155 = bitcast i64 %73 to double
  %mul408 = fmul double %mul394, %155
  store double %mul408, double* %arrayidx166, align 16, !tbaa !7
  %156 = bitcast i64 %133 to double
  %sub416 = fsub double %156, %153
  %mul417 = fmul double %sub416, 4.000000e-01
  %157 = tail call double @llvm.fmuladd.f64(double %.cast2671, double %mul394, double %mul417)
  store double %157, double* %arrayidx175, align 8, !tbaa !7
  %neg424 = fmul double %153, -4.000000e-01
  %158 = tail call double @llvm.fmuladd.f64(double %156, double 1.400000e+00, double %neg424)
  %mul425 = fmul double %mul394, %158
  store double %mul425, double* %arrayidx183, align 16, !tbaa !7
  %mul436 = fmul double %151, %154
  %mul439 = fmul double %151, %155
  %mul445 = fmul double %151, %156
  %159 = load double, double* %arrayidx209, align 8, !tbaa !7
  %mul454 = fmul double %45, %159
  %160 = load double, double* %arrayidx212, align 16, !tbaa !7
  %mul457 = fmul double %45, %160
  %161 = bitcast i64 %121 to double
  %mul460 = fmul double %45, %161
  %162 = bitcast i64 %132 to double
  %mul463 = fmul double %45, %162
  %sub464 = fsub double %mul436, %mul454
  %mul465 = fmul double %sub464, 1.100000e+01
  store double %mul465, double* %arrayidx223, align 8, !tbaa !7
  %sub468 = fsub double %mul439, %mul457
  %mul469 = fmul double %sub468, 1.100000e+01
  store double %mul469, double* %arrayidx227, align 8, !tbaa !7
  %sub472 = fsub double %mul394, %mul460
  %mul473 = fmul double %sub472, 0x402D555555555555
  store double %mul473, double* %arrayidx231, align 8, !tbaa !7
  %mul477 = fmul double %mul439, %mul439
  %163 = tail call double @llvm.fmuladd.f64(double %mul436, double %mul436, double %mul477)
  %164 = tail call double @llvm.fmuladd.f64(double %mul394, double %mul394, double %163)
  %mul480 = fmul double %mul457, %mul457
  %165 = tail call double @llvm.fmuladd.f64(double %mul454, double %mul454, double %mul480)
  %166 = tail call double @llvm.fmuladd.f64(double %mul460, double %mul460, double %165)
  %sub482 = fsub double %164, %166
  %167 = fneg double %mul460
  %neg486 = fmul double %mul460, %167
  %168 = tail call double @llvm.fmuladd.f64(double %mul394, double %mul394, double %neg486)
  %mul487 = fmul double %168, 0x3FFD555555555555
  %169 = tail call double @llvm.fmuladd.f64(double %sub482, double 0xC0151EB851EB851D, double %mul487)
  %sub488 = fsub double %mul445, %mul463
  %170 = tail call double @llvm.fmuladd.f64(double %sub488, double 2.156000e+01, double %169)
  store double %170, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx497 = getelementptr inbounds double, double* %b, i64 845
  %171 = bitcast double* %arrayidx497 to [13 x [13 x [5 x double]]]*
  %arrayidx503 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %171, i64 0, i64 %idxprom, i64 %idxprom9, i64 0
  %172 = load double, double* %arrayidx503, align 8, !tbaa !7
  %173 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub510 = fsub double %.cast2671, %173
  %174 = tail call double @llvm.fmuladd.f64(double %sub510, double -5.500000e+00, double %172)
  %arrayidx503.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %171, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %175 = load double, double* %arrayidx503.1, align 8, !tbaa !7
  %176 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub510.1 = fsub double %mul403, %176
  %177 = tail call double @llvm.fmuladd.f64(double %sub510.1, double -5.500000e+00, double %175)
  %arrayidx503.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %171, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %178 = load double, double* %arrayidx503.2, align 8, !tbaa !7
  %179 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub510.2 = fsub double %mul408, %179
  %180 = tail call double @llvm.fmuladd.f64(double %sub510.2, double -5.500000e+00, double %178)
  %arrayidx503.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %171, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %181 = load double, double* %arrayidx503.3, align 8, !tbaa !7
  %182 = load double, double* %arrayidx321.3, align 8, !tbaa !7
  %sub510.3 = fsub double %157, %182
  %183 = tail call double @llvm.fmuladd.f64(double %sub510.3, double -5.500000e+00, double %181)
  %arrayidx503.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %171, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %184 = load double, double* %arrayidx503.4, align 8, !tbaa !7
  %185 = load double, double* %arrayidx321.4, align 16, !tbaa !7
  %sub510.4 = fsub double %mul425, %185
  %186 = tail call double @llvm.fmuladd.f64(double %sub510.4, double -5.500000e+00, double %184)
  %187 = load double, double* %arrayidx294, align 8, !tbaa !7
  %188 = load double, double* %scevgep2779, align 16, !tbaa !7
  %189 = tail call double @llvm.fmuladd.f64(double %188, double -2.000000e+00, double %187)
  %190 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add525 = fadd double %189, %190
  %191 = tail call double @llvm.fmuladd.f64(double %add525, double 1.210000e+02, double %174)
  %192 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub533 = fsub double %mul465, %192
  %193 = tail call double @llvm.fmuladd.f64(double %sub533, double 1.100000e+00, double %177)
  %194 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %195 = tail call double @llvm.fmuladd.f64(double %159, double -2.000000e+00, double %194)
  %add542 = fadd double %154, %195
  %196 = tail call double @llvm.fmuladd.f64(double %add542, double 1.210000e+02, double %193)
  %197 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub550 = fsub double %mul469, %197
  %198 = tail call double @llvm.fmuladd.f64(double %sub550, double 1.100000e+00, double %180)
  %199 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %200 = tail call double @llvm.fmuladd.f64(double %160, double -2.000000e+00, double %199)
  %add559 = fadd double %200, %155
  %201 = tail call double @llvm.fmuladd.f64(double %add559, double 1.210000e+02, double %198)
  %202 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub567 = fsub double %mul473, %202
  %203 = tail call double @llvm.fmuladd.f64(double %sub567, double 1.100000e+00, double %183)
  %204 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %205 = tail call double @llvm.fmuladd.f64(double %161, double -2.000000e+00, double %204)
  %add576 = fadd double %205, %.cast2671
  %206 = tail call double @llvm.fmuladd.f64(double %add576, double 1.210000e+02, double %203)
  %207 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub584 = fsub double %170, %207
  %208 = tail call double @llvm.fmuladd.f64(double %sub584, double 1.100000e+00, double %186)
  %209 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %210 = tail call double @llvm.fmuladd.f64(double %162, double -2.000000e+00, double %209)
  %add593 = fadd double %210, %156
  %211 = tail call double @llvm.fmuladd.f64(double %add593, double 1.210000e+02, double %208)
  %call602 = tail call double @_Z3maxdd(double 7.500000e-01, double 7.500000e-01) #5
  %call603 = tail call double @_Z3maxdd(double %call602, double 1.000000e+00) #5
  %neg618 = fmul double %call603, -2.500000e-01
  %neg612 = fmul double %190, -4.000000e+00
  %212 = tail call double @llvm.fmuladd.f64(double %188, double 5.000000e+00, double %neg612)
  %213 = load double, double* %arrayidx312, align 16, !tbaa !7
  %add616 = fadd double %213, %212
  %214 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616, double %191)
  store double %214, double* %arrayidx503, align 8, !tbaa !7
  %215 = load double, double* %arrayidx209, align 8, !tbaa !7
  %216 = load double, double* %arrayidx21, align 8, !tbaa !7
  %neg612.1 = fmul double %216, -4.000000e+00
  %217 = tail call double @llvm.fmuladd.f64(double %215, double 5.000000e+00, double %neg612.1)
  %218 = load double, double* %arrayidx263, align 8, !tbaa !7
  %add616.1 = fadd double %218, %217
  %219 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616.1, double %196)
  store double %219, double* %arrayidx503.1, align 8, !tbaa !7
  %220 = load double, double* %arrayidx212, align 16, !tbaa !7
  %221 = load double, double* %arrayidx29, align 8, !tbaa !7
  %neg612.2 = fmul double %221, -4.000000e+00
  %222 = tail call double @llvm.fmuladd.f64(double %220, double 5.000000e+00, double %neg612.2)
  %223 = load double, double* %arrayidx271, align 16, !tbaa !7
  %add616.2 = fadd double %223, %222
  %224 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616.2, double %201)
  store double %224, double* %arrayidx503.2, align 8, !tbaa !7
  %225 = load double, double* %arrayidx215, align 8, !tbaa !7
  %226 = load double, double* %arrayidx37, align 8, !tbaa !7
  %neg612.3 = fmul double %226, -4.000000e+00
  %227 = tail call double @llvm.fmuladd.f64(double %225, double 5.000000e+00, double %neg612.3)
  %228 = load double, double* %arrayidx279, align 8, !tbaa !7
  %add616.3 = fadd double %228, %227
  %229 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616.3, double %206)
  store double %229, double* %arrayidx503.3, align 8, !tbaa !7
  %230 = load double, double* %arrayidx218, align 16, !tbaa !7
  %231 = load double, double* %arrayidx45, align 8, !tbaa !7
  %neg612.4 = fmul double %231, -4.000000e+00
  %232 = tail call double @llvm.fmuladd.f64(double %230, double 5.000000e+00, double %neg612.4)
  %233 = load double, double* %arrayidx287, align 16, !tbaa !7
  %add616.4 = fadd double %233, %232
  %234 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616.4, double %211)
  store double %234, double* %arrayidx503.4, align 8, !tbaa !7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  %235 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 0
  store double %187, double* %235, align 16, !tbaa !7
  store double %188, double* %arrayidx294, align 8, !tbaa !7
  store double %190, double* %scevgep2779, align 16, !tbaa !7
  store double %213, double* %scevgep2781, align 8, !tbaa !7
  %236 = load i64, i64* %89, align 8, !tbaa !7
  store i64 %236, i64* %91, align 16, !tbaa !7
  %237 = load i64, i64* %92, align 16, !tbaa !7
  store i64 %237, i64* %89, align 8, !tbaa !7
  store double %194, double* %arrayidx297.1, align 8, !tbaa !7
  store double %215, double* %arrayidx294.1, align 8, !tbaa !7
  store double %216, double* %arrayidx209, align 8, !tbaa !7
  store double %218, double* %arrayidx21, align 8, !tbaa !7
  %238 = load i64, i64* %100, align 8, !tbaa !7
  store i64 %238, i64* %102, align 8, !tbaa !7
  %239 = load i64, i64* %103, align 8, !tbaa !7
  store i64 %239, i64* %100, align 8, !tbaa !7
  store double %199, double* %arrayidx297.2, align 16, !tbaa !7
  store double %220, double* %arrayidx294.2, align 8, !tbaa !7
  store double %221, double* %arrayidx212, align 16, !tbaa !7
  store double %223, double* %arrayidx29, align 8, !tbaa !7
  %240 = load i64, i64* %111, align 8, !tbaa !7
  store i64 %240, i64* %113, align 16, !tbaa !7
  %241 = load i64, i64* %114, align 16, !tbaa !7
  store i64 %241, i64* %111, align 8, !tbaa !7
  store double %204, double* %arrayidx297.3, align 8, !tbaa !7
  store double %225, double* %arrayidx294.3, align 8, !tbaa !7
  store double %226, double* %arrayidx215, align 8, !tbaa !7
  store double %228, double* %arrayidx37, align 8, !tbaa !7
  %242 = load i64, i64* %122, align 8, !tbaa !7
  store i64 %242, i64* %124, align 8, !tbaa !7
  %243 = load i64, i64* %125, align 8, !tbaa !7
  store i64 %243, i64* %122, align 8, !tbaa !7
  store double %209, double* %arrayidx297.4, align 16, !tbaa !7
  store double %230, double* %arrayidx294.4, align 8, !tbaa !7
  store double %231, double* %arrayidx218, align 16, !tbaa !7
  store double %233, double* %arrayidx45, align 8, !tbaa !7
  %244 = load i64, i64* %134, align 8, !tbaa !7
  store i64 %244, i64* %136, align 16, !tbaa !7
  %245 = load i64, i64* %137, align 16, !tbaa !7
  store i64 %245, i64* %134, align 8, !tbaa !7
  %arrayidx679 = getelementptr inbounds double, double* %a, i64 3380
  %246 = bitcast double* %arrayidx679 to [13 x [13 x [5 x double]]]*
  %arrayidx683 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %246, i64 0, i64 %idxprom, i64 %idxprom9
  %247 = bitcast [5 x double]* %arrayidx683 to i64*
  %248 = load i64, i64* %247, align 8, !tbaa !7
  store i64 %248, i64* %68, align 16, !tbaa !7
  %arrayidx693 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %246, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %249 = bitcast double* %arrayidx693 to i64*
  %250 = load i64, i64* %249, align 8, !tbaa !7
  store i64 %250, i64* %71, align 8, !tbaa !7
  %arrayidx702 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %246, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %251 = bitcast double* %arrayidx702 to i64*
  %252 = load i64, i64* %251, align 8, !tbaa !7
  store i64 %252, i64* %74, align 16, !tbaa !7
  %arrayidx711 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %246, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %253 = bitcast double* %arrayidx711 to i64*
  %254 = load i64, i64* %253, align 8, !tbaa !7
  store i64 %254, i64* %77, align 8, !tbaa !7
  %arrayidx720 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %246, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %255 = bitcast double* %arrayidx720 to i64*
  %256 = load i64, i64* %255, align 8, !tbaa !7
  store i64 %256, i64* %80, align 16, !tbaa !7
  %257 = getelementptr [5 x double], [5 x double]* %arrayidx140, i64 0, i64 0
  store double %228, double* %257, align 16, !tbaa !7
  %arrayidx730 = getelementptr inbounds double, double* %d, i64 507
  %258 = bitcast double* %arrayidx730 to [13 x [13 x double]]*
  %arrayidx734 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %258, i64 0, i64 %idxprom, i64 %idxprom9
  %259 = load double, double* %arrayidx734, align 8, !tbaa !7
  %mul735 = fmul double %259, %228
  %arrayidx737 = getelementptr inbounds double, double* %c, i64 507
  %260 = bitcast double* %arrayidx737 to [13 x [13 x double]]*
  %arrayidx741 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %260, i64 0, i64 %idxprom, i64 %idxprom9
  %261 = load double, double* %arrayidx741, align 8, !tbaa !7
  %mul744 = fmul double %mul735, %218
  store double %mul744, double* %arrayidx161, align 8, !tbaa !7
  %mul749 = fmul double %mul735, %223
  store double %mul749, double* %arrayidx166, align 16, !tbaa !7
  %sub757 = fsub double %233, %261
  %mul758 = fmul double %sub757, 4.000000e-01
  %262 = tail call double @llvm.fmuladd.f64(double %228, double %mul735, double %mul758)
  store double %262, double* %arrayidx175, align 8, !tbaa !7
  %neg765 = fmul double %261, -4.000000e-01
  %263 = tail call double @llvm.fmuladd.f64(double %233, double 1.400000e+00, double %neg765)
  %mul766 = fmul double %mul735, %263
  store double %mul766, double* %arrayidx183, align 16, !tbaa !7
  %mul777 = fmul double %259, %218
  %mul780 = fmul double %259, %223
  %mul786 = fmul double %259, %233
  %264 = load double, double* %arrayidx393, align 8, !tbaa !7
  %mul795 = fmul double %264, %216
  %mul798 = fmul double %264, %221
  %mul801 = fmul double %264, %226
  %mul804 = fmul double %264, %231
  %sub805 = fsub double %mul777, %mul795
  %mul806 = fmul double %sub805, 1.100000e+01
  store double %mul806, double* %arrayidx223, align 8, !tbaa !7
  %sub809 = fsub double %mul780, %mul798
  %mul810 = fmul double %sub809, 1.100000e+01
  store double %mul810, double* %arrayidx227, align 8, !tbaa !7
  %sub813 = fsub double %mul735, %mul801
  %mul814 = fmul double %sub813, 0x402D555555555555
  store double %mul814, double* %arrayidx231, align 8, !tbaa !7
  %mul818 = fmul double %mul780, %mul780
  %265 = tail call double @llvm.fmuladd.f64(double %mul777, double %mul777, double %mul818)
  %266 = tail call double @llvm.fmuladd.f64(double %mul735, double %mul735, double %265)
  %mul821 = fmul double %mul798, %mul798
  %267 = tail call double @llvm.fmuladd.f64(double %mul795, double %mul795, double %mul821)
  %268 = tail call double @llvm.fmuladd.f64(double %mul801, double %mul801, double %267)
  %sub823 = fsub double %266, %268
  %269 = fneg double %mul801
  %neg827 = fmul double %mul801, %269
  %270 = tail call double @llvm.fmuladd.f64(double %mul735, double %mul735, double %neg827)
  %mul828 = fmul double %270, 0x3FFD555555555555
  %271 = tail call double @llvm.fmuladd.f64(double %sub823, double 0xC0151EB851EB851D, double %mul828)
  %sub829 = fsub double %mul786, %mul804
  %272 = tail call double @llvm.fmuladd.f64(double %sub829, double 2.156000e+01, double %271)
  store double %272, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx838 = getelementptr inbounds double, double* %b, i64 1690
  %273 = bitcast double* %arrayidx838 to [13 x [13 x [5 x double]]]*
  %arrayidx844 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %273, i64 0, i64 %idxprom, i64 %idxprom9, i64 0
  %274 = load double, double* %arrayidx844, align 8, !tbaa !7
  %275 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub851 = fsub double %228, %275
  %276 = tail call double @llvm.fmuladd.f64(double %sub851, double -5.500000e+00, double %274)
  %arrayidx844.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %273, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %277 = load double, double* %arrayidx844.1, align 8, !tbaa !7
  %278 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub851.1 = fsub double %mul744, %278
  %279 = tail call double @llvm.fmuladd.f64(double %sub851.1, double -5.500000e+00, double %277)
  %arrayidx844.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %273, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %280 = load double, double* %arrayidx844.2, align 8, !tbaa !7
  %281 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub851.2 = fsub double %mul749, %281
  %282 = tail call double @llvm.fmuladd.f64(double %sub851.2, double -5.500000e+00, double %280)
  %arrayidx844.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %273, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %283 = load double, double* %arrayidx844.3, align 8, !tbaa !7
  %284 = load double, double* %arrayidx321.3, align 8, !tbaa !7
  %sub851.3 = fsub double %262, %284
  %285 = tail call double @llvm.fmuladd.f64(double %sub851.3, double -5.500000e+00, double %283)
  %arrayidx844.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %273, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %286 = load double, double* %arrayidx844.4, align 8, !tbaa !7
  %287 = load double, double* %arrayidx321.4, align 16, !tbaa !7
  %sub851.4 = fsub double %mul766, %287
  %288 = tail call double @llvm.fmuladd.f64(double %sub851.4, double -5.500000e+00, double %286)
  %289 = load double, double* %arrayidx294, align 8, !tbaa !7
  %290 = load double, double* %scevgep2779, align 16, !tbaa !7
  %291 = tail call double @llvm.fmuladd.f64(double %290, double -2.000000e+00, double %289)
  %292 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add866 = fadd double %291, %292
  %293 = tail call double @llvm.fmuladd.f64(double %add866, double 1.210000e+02, double %276)
  %294 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub874 = fsub double %mul806, %294
  %295 = tail call double @llvm.fmuladd.f64(double %sub874, double 1.100000e+00, double %279)
  %296 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %297 = tail call double @llvm.fmuladd.f64(double %216, double -2.000000e+00, double %296)
  %add883 = fadd double %218, %297
  %298 = tail call double @llvm.fmuladd.f64(double %add883, double 1.210000e+02, double %295)
  %299 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub891 = fsub double %mul810, %299
  %300 = tail call double @llvm.fmuladd.f64(double %sub891, double 1.100000e+00, double %282)
  %301 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %302 = tail call double @llvm.fmuladd.f64(double %221, double -2.000000e+00, double %301)
  %add900 = fadd double %223, %302
  %303 = tail call double @llvm.fmuladd.f64(double %add900, double 1.210000e+02, double %300)
  %304 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub908 = fsub double %mul814, %304
  %305 = tail call double @llvm.fmuladd.f64(double %sub908, double 1.100000e+00, double %285)
  %306 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %307 = tail call double @llvm.fmuladd.f64(double %226, double -2.000000e+00, double %306)
  %add917 = fadd double %228, %307
  %308 = tail call double @llvm.fmuladd.f64(double %add917, double 1.210000e+02, double %305)
  %309 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub925 = fsub double %272, %309
  %310 = tail call double @llvm.fmuladd.f64(double %sub925, double 1.100000e+00, double %288)
  %311 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %312 = tail call double @llvm.fmuladd.f64(double %231, double -2.000000e+00, double %311)
  %add934 = fadd double %233, %312
  %313 = tail call double @llvm.fmuladd.f64(double %add934, double 1.210000e+02, double %310)
  %mul953 = fmul double %290, 6.000000e+00
  %314 = tail call double @llvm.fmuladd.f64(double %289, double -4.000000e+00, double %mul953)
  %315 = tail call double @llvm.fmuladd.f64(double %292, double -4.000000e+00, double %314)
  %316 = load double, double* %arrayidx312, align 16, !tbaa !7
  %add961 = fadd double %316, %315
  %317 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961, double %293)
  store double %317, double* %arrayidx844, align 8, !tbaa !7
  %318 = load double, double* %arrayidx209, align 8, !tbaa !7
  %mul953.1 = fmul double %318, 6.000000e+00
  %319 = tail call double @llvm.fmuladd.f64(double %296, double -4.000000e+00, double %mul953.1)
  %320 = load double, double* %arrayidx21, align 8, !tbaa !7
  %321 = tail call double @llvm.fmuladd.f64(double %320, double -4.000000e+00, double %319)
  %322 = load double, double* %arrayidx263, align 8, !tbaa !7
  %add961.1 = fadd double %322, %321
  %323 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961.1, double %298)
  store double %323, double* %arrayidx844.1, align 8, !tbaa !7
  %324 = load double, double* %arrayidx212, align 16, !tbaa !7
  %mul953.2 = fmul double %324, 6.000000e+00
  %325 = tail call double @llvm.fmuladd.f64(double %301, double -4.000000e+00, double %mul953.2)
  %326 = load double, double* %arrayidx29, align 8, !tbaa !7
  %327 = tail call double @llvm.fmuladd.f64(double %326, double -4.000000e+00, double %325)
  %328 = load double, double* %arrayidx271, align 16, !tbaa !7
  %add961.2 = fadd double %328, %327
  %329 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961.2, double %303)
  store double %329, double* %arrayidx844.2, align 8, !tbaa !7
  %330 = load double, double* %arrayidx215, align 8, !tbaa !7
  %mul953.3 = fmul double %330, 6.000000e+00
  %331 = tail call double @llvm.fmuladd.f64(double %306, double -4.000000e+00, double %mul953.3)
  %332 = load double, double* %arrayidx37, align 8, !tbaa !7
  %333 = tail call double @llvm.fmuladd.f64(double %332, double -4.000000e+00, double %331)
  %334 = load double, double* %arrayidx279, align 8, !tbaa !7
  %add961.3 = fadd double %334, %333
  %335 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961.3, double %308)
  store double %335, double* %arrayidx844.3, align 8, !tbaa !7
  %336 = load double, double* %arrayidx218, align 16, !tbaa !7
  %mul953.4 = fmul double %336, 6.000000e+00
  %337 = tail call double @llvm.fmuladd.f64(double %311, double -4.000000e+00, double %mul953.4)
  %338 = load double, double* %arrayidx45, align 8, !tbaa !7
  %339 = tail call double @llvm.fmuladd.f64(double %338, double -4.000000e+00, double %337)
  %340 = load double, double* %arrayidx287, align 16, !tbaa !7
  %add961.4 = fadd double %340, %339
  %341 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961.4, double %313)
  store double %341, double* %arrayidx844.4, align 8, !tbaa !7
  %sub975 = add i32 %g, -3
  %cmp9762685 = icmp sgt i32 %sub975, 3
  %342 = bitcast double %316 to i64
  %343 = bitcast double %296 to i64
  %344 = bitcast double %318 to i64
  %345 = bitcast double %301 to i64
  %346 = bitcast double %324 to i64
  %347 = bitcast double %306 to i64
  %348 = bitcast double %330 to i64
  %349 = bitcast double %311 to i64
  %350 = bitcast double %336 to i64
  br i1 %cmp9762685, label %for.body978.lr.ph, label %for.end1332

for.body978.lr.ph:                                ; preds = %if.end
  %wide.trip.count = zext i32 %sub975 to i64
  %351 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 0
  %352 = getelementptr [5 x double], [5 x double]* %arrayidx140, i64 0, i64 0
  %.promoted = load i64, i64* %89, align 8, !tbaa !7
  %.promoted2810 = load i64, i64* %100, align 8, !tbaa !7
  %.promoted2812 = load i64, i64* %111, align 8, !tbaa !7
  %.promoted2814 = load i64, i64* %122, align 8, !tbaa !7
  %.promoted2816 = load i64, i64* %134, align 8, !tbaa !7
  br label %for.body978

for.body978:                                      ; preds = %for.body978, %for.body978.lr.ph
  %353 = phi i64 [ %.promoted2816, %for.body978.lr.ph ], [ %372, %for.body978 ]
  %354 = phi i64 [ %.promoted2814, %for.body978.lr.ph ], [ %371, %for.body978 ]
  %355 = phi i64 [ %.promoted2812, %for.body978.lr.ph ], [ %370, %for.body978 ]
  %356 = phi i64 [ %.promoted2810, %for.body978.lr.ph ], [ %369, %for.body978 ]
  %357 = phi i64 [ %.promoted, %for.body978.lr.ph ], [ %368, %for.body978 ]
  %.in = phi double [ %340, %for.body978.lr.ph ], [ %462, %for.body978 ]
  %.in2783 = phi double [ %338, %for.body978.lr.ph ], [ %.in, %for.body978 ]
  %358 = phi i64 [ %350, %for.body978.lr.ph ], [ %472, %for.body978 ]
  %359 = phi i64 [ %349, %for.body978.lr.ph ], [ %471, %for.body978 ]
  %360 = phi double [ %334, %for.body978.lr.ph ], [ %456, %for.body978 ]
  %.in2784 = phi double [ %332, %for.body978.lr.ph ], [ %360, %for.body978 ]
  %361 = phi i64 [ %348, %for.body978.lr.ph ], [ %470, %for.body978 ]
  %362 = phi i64 [ %347, %for.body978.lr.ph ], [ %469, %for.body978 ]
  %.in2785 = phi double [ %328, %for.body978.lr.ph ], [ %450, %for.body978 ]
  %.in2786 = phi double [ %326, %for.body978.lr.ph ], [ %.in2785, %for.body978 ]
  %363 = phi i64 [ %346, %for.body978.lr.ph ], [ %468, %for.body978 ]
  %364 = phi i64 [ %345, %for.body978.lr.ph ], [ %467, %for.body978 ]
  %.in2787 = phi double [ %322, %for.body978.lr.ph ], [ %444, %for.body978 ]
  %.in2788 = phi double [ %320, %for.body978.lr.ph ], [ %.in2787, %for.body978 ]
  %365 = phi i64 [ %344, %for.body978.lr.ph ], [ %466, %for.body978 ]
  %366 = phi i64 [ %343, %for.body978.lr.ph ], [ %465, %for.body978 ]
  %367 = phi i64 [ %342, %for.body978.lr.ph ], [ %464, %for.body978 ]
  %.in2789 = phi double [ %292, %for.body978.lr.ph ], [ %413, %for.body978 ]
  %.in2790 = phi double [ %290, %for.body978.lr.ph ], [ %.in2789, %for.body978 ]
  %.in2791 = phi double [ %289, %for.body978.lr.ph ], [ %.in2790, %for.body978 ]
  %indvars.iv = phi i64 [ 3, %for.body978.lr.ph ], [ %indvars.iv.next, %for.body978 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  store i64 %367, i64* %86, align 8, !tbaa !7
  store i64 %357, i64* %91, align 16, !tbaa !7
  %368 = load i64, i64* %92, align 16, !tbaa !7
  store i64 %366, i64* %96, align 8, !tbaa !7
  store i64 %365, i64* %94, align 8, !tbaa !7
  store i64 %356, i64* %102, align 8, !tbaa !7
  %369 = load i64, i64* %103, align 8, !tbaa !7
  store i64 %364, i64* %107, align 16, !tbaa !7
  store i64 %363, i64* %105, align 8, !tbaa !7
  store i64 %355, i64* %113, align 16, !tbaa !7
  %370 = load i64, i64* %114, align 16, !tbaa !7
  store i64 %362, i64* %118, align 8, !tbaa !7
  store i64 %361, i64* %116, align 8, !tbaa !7
  store i64 %354, i64* %124, align 8, !tbaa !7
  %371 = load i64, i64* %125, align 8, !tbaa !7
  store i64 %359, i64* %129, align 16, !tbaa !7
  store i64 %358, i64* %127, align 8, !tbaa !7
  store i64 %353, i64* %136, align 16, !tbaa !7
  %372 = load i64, i64* %137, align 16, !tbaa !7
  %373 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx1035 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %373, i64 %idxprom, i64 %idxprom9
  %374 = bitcast [5 x double]* %arrayidx1035 to i64*
  %375 = load i64, i64* %374, align 8, !tbaa !7
  store i64 %375, i64* %68, align 16, !tbaa !7
  %arrayidx1045 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %373, i64 %idxprom, i64 %idxprom9, i64 1
  %376 = bitcast double* %arrayidx1045 to i64*
  %377 = load i64, i64* %376, align 8, !tbaa !7
  store i64 %377, i64* %71, align 8, !tbaa !7
  %arrayidx1054 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %373, i64 %idxprom, i64 %idxprom9, i64 2
  %378 = bitcast double* %arrayidx1054 to i64*
  %379 = load i64, i64* %378, align 8, !tbaa !7
  store i64 %379, i64* %74, align 16, !tbaa !7
  %arrayidx1063 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %373, i64 %idxprom, i64 %idxprom9, i64 3
  %380 = bitcast double* %arrayidx1063 to i64*
  %381 = load i64, i64* %380, align 8, !tbaa !7
  store i64 %381, i64* %77, align 8, !tbaa !7
  %arrayidx1072 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %373, i64 %idxprom, i64 %idxprom9, i64 4
  %382 = bitcast double* %arrayidx1072 to i64*
  %383 = load i64, i64* %382, align 8, !tbaa !7
  store i64 %383, i64* %80, align 16, !tbaa !7
  store double %360, double* %352, align 16, !tbaa !7
  %arrayidx1086 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %indvars.iv.next, i64 %idxprom, i64 %idxprom9
  %384 = load double, double* %arrayidx1086, align 8, !tbaa !7
  %mul1087 = fmul double %384, %360
  %arrayidx1093 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %indvars.iv.next, i64 %idxprom, i64 %idxprom9
  %385 = load double, double* %arrayidx1093, align 8, !tbaa !7
  %mul1096 = fmul double %mul1087, %.in2787
  store double %mul1096, double* %arrayidx161, align 8, !tbaa !7
  %mul1101 = fmul double %mul1087, %.in2785
  store double %mul1101, double* %arrayidx166, align 16, !tbaa !7
  %sub1109 = fsub double %.in, %385
  %mul1110 = fmul double %sub1109, 4.000000e-01
  %386 = tail call double @llvm.fmuladd.f64(double %360, double %mul1087, double %mul1110)
  store double %386, double* %arrayidx175, align 8, !tbaa !7
  %neg1117 = fmul double %385, -4.000000e-01
  %387 = tail call double @llvm.fmuladd.f64(double %.in, double 1.400000e+00, double %neg1117)
  %mul1118 = fmul double %mul1087, %387
  store double %mul1118, double* %arrayidx183, align 16, !tbaa !7
  %mul1129 = fmul double %384, %.in2787
  %mul1132 = fmul double %384, %.in2785
  %mul1138 = fmul double %384, %.in
  %arrayidx1144 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9
  %388 = load double, double* %arrayidx1144, align 8, !tbaa !7
  %mul1147 = fmul double %388, %.in2788
  %mul1150 = fmul double %388, %.in2786
  %mul1153 = fmul double %388, %.in2784
  %mul1156 = fmul double %388, %.in2783
  %sub1157 = fsub double %mul1129, %mul1147
  %mul1158 = fmul double %sub1157, 1.100000e+01
  store double %mul1158, double* %arrayidx223, align 8, !tbaa !7
  %sub1161 = fsub double %mul1132, %mul1150
  %mul1162 = fmul double %sub1161, 1.100000e+01
  store double %mul1162, double* %arrayidx227, align 8, !tbaa !7
  %sub1165 = fsub double %mul1087, %mul1153
  %mul1166 = fmul double %sub1165, 0x402D555555555555
  store double %mul1166, double* %arrayidx231, align 8, !tbaa !7
  %mul1170 = fmul double %mul1132, %mul1132
  %389 = tail call double @llvm.fmuladd.f64(double %mul1129, double %mul1129, double %mul1170)
  %390 = tail call double @llvm.fmuladd.f64(double %mul1087, double %mul1087, double %389)
  %mul1173 = fmul double %mul1150, %mul1150
  %391 = tail call double @llvm.fmuladd.f64(double %mul1147, double %mul1147, double %mul1173)
  %392 = tail call double @llvm.fmuladd.f64(double %mul1153, double %mul1153, double %391)
  %sub1175 = fsub double %390, %392
  %393 = fneg double %mul1153
  %neg1179 = fmul double %mul1153, %393
  %394 = tail call double @llvm.fmuladd.f64(double %mul1087, double %mul1087, double %neg1179)
  %mul1180 = fmul double %394, 0x3FFD555555555555
  %395 = tail call double @llvm.fmuladd.f64(double %sub1175, double 0xC0151EB851EB851D, double %mul1180)
  %sub1181 = fsub double %mul1138, %mul1156
  %396 = tail call double @llvm.fmuladd.f64(double %sub1181, double 2.156000e+01, double %395)
  store double %396, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx1196 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 0
  %397 = load double, double* %arrayidx1196, align 8, !tbaa !7
  %398 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub1203 = fsub double %360, %398
  %399 = tail call double @llvm.fmuladd.f64(double %sub1203, double -5.500000e+00, double %397)
  %arrayidx1196.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 1
  %400 = load double, double* %arrayidx1196.1, align 8, !tbaa !7
  %401 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub1203.1 = fsub double %mul1096, %401
  %402 = tail call double @llvm.fmuladd.f64(double %sub1203.1, double -5.500000e+00, double %400)
  %arrayidx1196.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 2
  %403 = load double, double* %arrayidx1196.2, align 8, !tbaa !7
  %404 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub1203.2 = fsub double %mul1101, %404
  %405 = tail call double @llvm.fmuladd.f64(double %sub1203.2, double -5.500000e+00, double %403)
  %arrayidx1196.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 3
  %406 = load double, double* %arrayidx1196.3, align 8, !tbaa !7
  %407 = load double, double* %arrayidx321.3, align 8, !tbaa !7
  %sub1203.3 = fsub double %386, %407
  %408 = tail call double @llvm.fmuladd.f64(double %sub1203.3, double -5.500000e+00, double %406)
  %arrayidx1196.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 4
  %409 = load double, double* %arrayidx1196.4, align 8, !tbaa !7
  %410 = load double, double* %arrayidx321.4, align 16, !tbaa !7
  %sub1203.4 = fsub double %mul1118, %410
  %411 = tail call double @llvm.fmuladd.f64(double %sub1203.4, double -5.500000e+00, double %409)
  %412 = tail call double @llvm.fmuladd.f64(double %.in2789, double -2.000000e+00, double %.in2790)
  %413 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add1218 = fadd double %412, %413
  %414 = tail call double @llvm.fmuladd.f64(double %add1218, double 1.210000e+02, double %399)
  %415 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub1226 = fsub double %mul1158, %415
  %416 = tail call double @llvm.fmuladd.f64(double %sub1226, double 1.100000e+00, double %402)
  %417 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %418 = tail call double @llvm.fmuladd.f64(double %.in2788, double -2.000000e+00, double %417)
  %add1235 = fadd double %.in2787, %418
  %419 = tail call double @llvm.fmuladd.f64(double %add1235, double 1.210000e+02, double %416)
  %420 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub1243 = fsub double %mul1162, %420
  %421 = tail call double @llvm.fmuladd.f64(double %sub1243, double 1.100000e+00, double %405)
  %422 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %423 = tail call double @llvm.fmuladd.f64(double %.in2786, double -2.000000e+00, double %422)
  %add1252 = fadd double %.in2785, %423
  %424 = tail call double @llvm.fmuladd.f64(double %add1252, double 1.210000e+02, double %421)
  %425 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub1260 = fsub double %mul1166, %425
  %426 = tail call double @llvm.fmuladd.f64(double %sub1260, double 1.100000e+00, double %408)
  %427 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %428 = tail call double @llvm.fmuladd.f64(double %.in2784, double -2.000000e+00, double %427)
  %add1269 = fadd double %428, %360
  %429 = tail call double @llvm.fmuladd.f64(double %add1269, double 1.210000e+02, double %426)
  %430 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub1277 = fsub double %396, %430
  %431 = tail call double @llvm.fmuladd.f64(double %sub1277, double 1.100000e+00, double %411)
  %432 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %433 = tail call double @llvm.fmuladd.f64(double %.in2783, double -2.000000e+00, double %432)
  %add1286 = fadd double %.in, %433
  %434 = tail call double @llvm.fmuladd.f64(double %add1286, double 1.210000e+02, double %431)
  %435 = tail call double @llvm.fmuladd.f64(double %.in2790, double -4.000000e+00, double %.in2791)
  %436 = tail call double @llvm.fmuladd.f64(double %.in2789, double 6.000000e+00, double %435)
  %437 = tail call double @llvm.fmuladd.f64(double %413, double -4.000000e+00, double %436)
  %438 = load double, double* %arrayidx312, align 16, !tbaa !7
  %add1316 = fadd double %437, %438
  %439 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316, double %414)
  store double %439, double* %arrayidx1196, align 8, !tbaa !7
  %440 = load double, double* %arrayidx297.1, align 8, !tbaa !7
  %441 = tail call double @llvm.fmuladd.f64(double %417, double -4.000000e+00, double %440)
  %442 = tail call double @llvm.fmuladd.f64(double %.in2788, double 6.000000e+00, double %441)
  %443 = tail call double @llvm.fmuladd.f64(double %.in2787, double -4.000000e+00, double %442)
  %444 = load double, double* %arrayidx263, align 8, !tbaa !7
  %add1316.1 = fadd double %443, %444
  %445 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316.1, double %419)
  store double %445, double* %arrayidx1196.1, align 8, !tbaa !7
  %446 = load double, double* %arrayidx297.2, align 16, !tbaa !7
  %447 = tail call double @llvm.fmuladd.f64(double %422, double -4.000000e+00, double %446)
  %448 = tail call double @llvm.fmuladd.f64(double %.in2786, double 6.000000e+00, double %447)
  %449 = tail call double @llvm.fmuladd.f64(double %.in2785, double -4.000000e+00, double %448)
  %450 = load double, double* %arrayidx271, align 16, !tbaa !7
  %add1316.2 = fadd double %449, %450
  %451 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316.2, double %424)
  store double %451, double* %arrayidx1196.2, align 8, !tbaa !7
  %452 = load double, double* %arrayidx297.3, align 8, !tbaa !7
  %453 = tail call double @llvm.fmuladd.f64(double %427, double -4.000000e+00, double %452)
  %454 = tail call double @llvm.fmuladd.f64(double %.in2784, double 6.000000e+00, double %453)
  %455 = tail call double @llvm.fmuladd.f64(double %360, double -4.000000e+00, double %454)
  %456 = load double, double* %arrayidx279, align 8, !tbaa !7
  %add1316.3 = fadd double %455, %456
  %457 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316.3, double %429)
  store double %457, double* %arrayidx1196.3, align 8, !tbaa !7
  %458 = load double, double* %arrayidx297.4, align 16, !tbaa !7
  %459 = tail call double @llvm.fmuladd.f64(double %432, double -4.000000e+00, double %458)
  %460 = tail call double @llvm.fmuladd.f64(double %.in2783, double 6.000000e+00, double %459)
  %461 = tail call double @llvm.fmuladd.f64(double %.in, double -4.000000e+00, double %460)
  %462 = load double, double* %arrayidx287, align 16, !tbaa !7
  %add1316.4 = fadd double %461, %462
  %463 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316.4, double %434)
  store double %463, double* %arrayidx1196.4, align 8, !tbaa !7
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %464 = bitcast double %438 to i64
  %465 = bitcast double %417 to i64
  %466 = bitcast double %.in2788 to i64
  %467 = bitcast double %422 to i64
  %468 = bitcast double %.in2786 to i64
  %469 = bitcast double %427 to i64
  %470 = bitcast double %.in2784 to i64
  %471 = bitcast double %432 to i64
  %472 = bitcast double %.in2783 to i64
  br i1 %exitcond, label %for.end1332.loopexit, label %for.body978

for.end1332.loopexit:                             ; preds = %for.body978
  store double %.in2791, double* %351, align 16, !tbaa !7
  store double %.in2790, double* %arrayidx294, align 8, !tbaa !7
  store double %.in2789, double* %scevgep2779, align 16, !tbaa !7
  store i64 %368, i64* %89, align 8, !tbaa !7
  store double %.in2788, double* %arrayidx209, align 8, !tbaa !7
  store double %.in2787, double* %arrayidx21, align 8, !tbaa !7
  store i64 %369, i64* %100, align 8, !tbaa !7
  store double %.in2786, double* %arrayidx212, align 16, !tbaa !7
  store double %.in2785, double* %arrayidx29, align 8, !tbaa !7
  store i64 %370, i64* %111, align 8, !tbaa !7
  store double %.in2784, double* %arrayidx215, align 8, !tbaa !7
  store double %360, double* %arrayidx37, align 8, !tbaa !7
  store i64 %371, i64* %122, align 8, !tbaa !7
  store double %.in2783, double* %arrayidx218, align 16, !tbaa !7
  store double %.in, double* %arrayidx45, align 8, !tbaa !7
  store i64 %372, i64* %134, align 8, !tbaa !7
  br label %for.end1332

for.end1332:                                      ; preds = %for.end1332.loopexit, %if.end
  %473 = phi double [ %340, %if.end ], [ %462, %for.end1332.loopexit ]
  %474 = phi double [ %338, %if.end ], [ %.in, %for.end1332.loopexit ]
  %475 = phi i64 [ %350, %if.end ], [ %472, %for.end1332.loopexit ]
  %476 = phi i64 [ %349, %if.end ], [ %471, %for.end1332.loopexit ]
  %477 = phi double [ %334, %if.end ], [ %456, %for.end1332.loopexit ]
  %478 = phi double [ %332, %if.end ], [ %360, %for.end1332.loopexit ]
  %479 = phi i64 [ %348, %if.end ], [ %470, %for.end1332.loopexit ]
  %480 = phi i64 [ %347, %if.end ], [ %469, %for.end1332.loopexit ]
  %481 = phi double [ %328, %if.end ], [ %450, %for.end1332.loopexit ]
  %482 = phi double [ %326, %if.end ], [ %.in2785, %for.end1332.loopexit ]
  %483 = phi i64 [ %346, %if.end ], [ %468, %for.end1332.loopexit ]
  %484 = phi i64 [ %345, %if.end ], [ %467, %for.end1332.loopexit ]
  %485 = phi double [ %322, %if.end ], [ %444, %for.end1332.loopexit ]
  %486 = phi double [ %320, %if.end ], [ %.in2787, %for.end1332.loopexit ]
  %487 = phi i64 [ %344, %if.end ], [ %466, %for.end1332.loopexit ]
  %488 = phi i64 [ %343, %if.end ], [ %465, %for.end1332.loopexit ]
  %489 = phi i64 [ %342, %if.end ], [ %464, %for.end1332.loopexit ]
  %sub1334 = add nsw i32 %g, -2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  %490 = load i64, i64* %81, align 8, !tbaa !7
  store i64 %490, i64* %83, align 16, !tbaa !7
  %491 = load i64, i64* %84, align 16, !tbaa !7
  store i64 %491, i64* %81, align 8, !tbaa !7
  %492 = load i64, i64* %86, align 8, !tbaa !7
  store i64 %492, i64* %84, align 16, !tbaa !7
  store i64 %489, i64* %86, align 8, !tbaa !7
  %493 = load i64, i64* %89, align 8, !tbaa !7
  store i64 %493, i64* %91, align 16, !tbaa !7
  %494 = load i64, i64* %92, align 16, !tbaa !7
  store i64 %494, i64* %89, align 8, !tbaa !7
  store i64 %488, i64* %96, align 8, !tbaa !7
  store i64 %487, i64* %94, align 8, !tbaa !7
  store double %486, double* %arrayidx209, align 8, !tbaa !7
  store double %485, double* %arrayidx21, align 8, !tbaa !7
  %495 = load i64, i64* %100, align 8, !tbaa !7
  store i64 %495, i64* %102, align 8, !tbaa !7
  %496 = load i64, i64* %103, align 8, !tbaa !7
  store i64 %496, i64* %100, align 8, !tbaa !7
  store i64 %484, i64* %107, align 16, !tbaa !7
  store i64 %483, i64* %105, align 8, !tbaa !7
  store double %482, double* %arrayidx212, align 16, !tbaa !7
  store double %481, double* %arrayidx29, align 8, !tbaa !7
  %497 = load i64, i64* %111, align 8, !tbaa !7
  store i64 %497, i64* %113, align 16, !tbaa !7
  %498 = load i64, i64* %114, align 16, !tbaa !7
  store i64 %498, i64* %111, align 8, !tbaa !7
  store i64 %480, i64* %118, align 8, !tbaa !7
  store i64 %479, i64* %116, align 8, !tbaa !7
  store double %478, double* %arrayidx215, align 8, !tbaa !7
  store double %477, double* %arrayidx37, align 8, !tbaa !7
  %499 = load i64, i64* %122, align 8, !tbaa !7
  store i64 %499, i64* %124, align 8, !tbaa !7
  %500 = load i64, i64* %125, align 8, !tbaa !7
  store i64 %500, i64* %122, align 8, !tbaa !7
  store i64 %476, i64* %129, align 16, !tbaa !7
  store i64 %475, i64* %127, align 8, !tbaa !7
  store double %474, double* %arrayidx218, align 16, !tbaa !7
  store double %473, double* %arrayidx45, align 8, !tbaa !7
  %501 = load i64, i64* %134, align 8, !tbaa !7
  store i64 %501, i64* %136, align 16, !tbaa !7
  %502 = load i64, i64* %137, align 16, !tbaa !7
  store i64 %502, i64* %134, align 8, !tbaa !7
  %sub1335 = add nsw i32 %g, -1
  %idxprom1385 = sext i32 %sub1335 to i64
  %arrayidx1390 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom1385, i64 %idxprom, i64 %idxprom9
  %503 = bitcast [5 x double]* %arrayidx1390 to i64*
  %504 = load i64, i64* %503, align 8, !tbaa !7
  store i64 %504, i64* %68, align 16, !tbaa !7
  %arrayidx1400 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom1385, i64 %idxprom, i64 %idxprom9, i64 1
  %505 = bitcast double* %arrayidx1400 to i64*
  %506 = load i64, i64* %505, align 8, !tbaa !7
  store i64 %506, i64* %71, align 8, !tbaa !7
  %arrayidx1409 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom1385, i64 %idxprom, i64 %idxprom9, i64 2
  %507 = bitcast double* %arrayidx1409 to i64*
  %508 = load i64, i64* %507, align 8, !tbaa !7
  store i64 %508, i64* %74, align 16, !tbaa !7
  %arrayidx1418 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom1385, i64 %idxprom, i64 %idxprom9, i64 3
  %509 = bitcast double* %arrayidx1418 to i64*
  %510 = load i64, i64* %509, align 8, !tbaa !7
  store i64 %510, i64* %77, align 8, !tbaa !7
  %arrayidx1427 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom1385, i64 %idxprom, i64 %idxprom9, i64 4
  %511 = bitcast double* %arrayidx1427 to i64*
  %512 = load i64, i64* %511, align 8, !tbaa !7
  store i64 %512, i64* %80, align 16, !tbaa !7
  %513 = getelementptr [5 x double], [5 x double]* %arrayidx140, i64 0, i64 0
  store double %477, double* %513, align 16, !tbaa !7
  %idxprom1436 = sext i32 %sub1334 to i64
  %arrayidx1441 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom1436, i64 %idxprom, i64 %idxprom9
  %514 = load double, double* %arrayidx1441, align 8, !tbaa !7
  %mul1442 = fmul double %514, %477
  %arrayidx1448 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom1436, i64 %idxprom, i64 %idxprom9
  %515 = load double, double* %arrayidx1448, align 8, !tbaa !7
  %mul1451 = fmul double %mul1442, %485
  store double %mul1451, double* %arrayidx161, align 8, !tbaa !7
  %mul1456 = fmul double %mul1442, %481
  store double %mul1456, double* %arrayidx166, align 16, !tbaa !7
  %sub1464 = fsub double %473, %515
  %mul1465 = fmul double %sub1464, 4.000000e-01
  %516 = tail call double @llvm.fmuladd.f64(double %477, double %mul1442, double %mul1465)
  store double %516, double* %arrayidx175, align 8, !tbaa !7
  %neg1472 = fmul double %515, -4.000000e-01
  %517 = tail call double @llvm.fmuladd.f64(double %473, double 1.400000e+00, double %neg1472)
  %mul1473 = fmul double %mul1442, %517
  store double %mul1473, double* %arrayidx183, align 16, !tbaa !7
  %mul1484 = fmul double %514, %485
  %mul1487 = fmul double %514, %481
  %mul1493 = fmul double %514, %473
  %idxprom1494 = sext i32 %sub975 to i64
  %arrayidx1499 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom1494, i64 %idxprom, i64 %idxprom9
  %518 = load double, double* %arrayidx1499, align 8, !tbaa !7
  %mul1502 = fmul double %518, %486
  %mul1505 = fmul double %518, %482
  %mul1508 = fmul double %518, %478
  %mul1511 = fmul double %518, %474
  %sub1512 = fsub double %mul1484, %mul1502
  %mul1513 = fmul double %sub1512, 1.100000e+01
  store double %mul1513, double* %arrayidx223, align 8, !tbaa !7
  %sub1516 = fsub double %mul1487, %mul1505
  %mul1517 = fmul double %sub1516, 1.100000e+01
  store double %mul1517, double* %arrayidx227, align 8, !tbaa !7
  %sub1520 = fsub double %mul1442, %mul1508
  %mul1521 = fmul double %sub1520, 0x402D555555555555
  store double %mul1521, double* %arrayidx231, align 8, !tbaa !7
  %mul1525 = fmul double %mul1487, %mul1487
  %519 = tail call double @llvm.fmuladd.f64(double %mul1484, double %mul1484, double %mul1525)
  %520 = tail call double @llvm.fmuladd.f64(double %mul1442, double %mul1442, double %519)
  %mul1528 = fmul double %mul1505, %mul1505
  %521 = tail call double @llvm.fmuladd.f64(double %mul1502, double %mul1502, double %mul1528)
  %522 = tail call double @llvm.fmuladd.f64(double %mul1508, double %mul1508, double %521)
  %sub1530 = fsub double %520, %522
  %523 = fneg double %mul1508
  %neg1534 = fmul double %mul1508, %523
  %524 = tail call double @llvm.fmuladd.f64(double %mul1442, double %mul1442, double %neg1534)
  %mul1535 = fmul double %524, 0x3FFD555555555555
  %525 = tail call double @llvm.fmuladd.f64(double %sub1530, double 0xC0151EB851EB851D, double %mul1535)
  %sub1536 = fsub double %mul1493, %mul1511
  %526 = tail call double @llvm.fmuladd.f64(double %sub1536, double 2.156000e+01, double %525)
  store double %526, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx1551 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom1494, i64 %idxprom, i64 %idxprom9, i64 0
  %527 = load double, double* %arrayidx1551, align 8, !tbaa !7
  %528 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub1558 = fsub double %477, %528
  %529 = tail call double @llvm.fmuladd.f64(double %sub1558, double -5.500000e+00, double %527)
  %arrayidx1551.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom1494, i64 %idxprom, i64 %idxprom9, i64 1
  %530 = load double, double* %arrayidx1551.1, align 8, !tbaa !7
  %531 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub1558.1 = fsub double %mul1451, %531
  %532 = tail call double @llvm.fmuladd.f64(double %sub1558.1, double -5.500000e+00, double %530)
  %arrayidx1551.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom1494, i64 %idxprom, i64 %idxprom9, i64 2
  %533 = load double, double* %arrayidx1551.2, align 8, !tbaa !7
  %534 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub1558.2 = fsub double %mul1456, %534
  %535 = tail call double @llvm.fmuladd.f64(double %sub1558.2, double -5.500000e+00, double %533)
  %arrayidx1551.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom1494, i64 %idxprom, i64 %idxprom9, i64 3
  %536 = load double, double* %arrayidx1551.3, align 8, !tbaa !7
  %537 = load double, double* %arrayidx321.3, align 8, !tbaa !7
  %sub1558.3 = fsub double %516, %537
  %538 = tail call double @llvm.fmuladd.f64(double %sub1558.3, double -5.500000e+00, double %536)
  %arrayidx1551.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom1494, i64 %idxprom, i64 %idxprom9, i64 4
  %539 = load double, double* %arrayidx1551.4, align 8, !tbaa !7
  %540 = load double, double* %arrayidx321.4, align 16, !tbaa !7
  %sub1558.4 = fsub double %mul1473, %540
  %541 = tail call double @llvm.fmuladd.f64(double %sub1558.4, double -5.500000e+00, double %539)
  %542 = load double, double* %arrayidx294, align 8, !tbaa !7
  %543 = load double, double* %scevgep2779, align 16, !tbaa !7
  %544 = tail call double @llvm.fmuladd.f64(double %543, double -2.000000e+00, double %542)
  %545 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add1573 = fadd double %544, %545
  %546 = tail call double @llvm.fmuladd.f64(double %add1573, double 1.210000e+02, double %529)
  %547 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub1581 = fsub double %mul1513, %547
  %548 = tail call double @llvm.fmuladd.f64(double %sub1581, double 1.100000e+00, double %532)
  %549 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %550 = tail call double @llvm.fmuladd.f64(double %486, double -2.000000e+00, double %549)
  %add1590 = fadd double %485, %550
  %551 = tail call double @llvm.fmuladd.f64(double %add1590, double 1.210000e+02, double %548)
  %552 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub1598 = fsub double %mul1517, %552
  %553 = tail call double @llvm.fmuladd.f64(double %sub1598, double 1.100000e+00, double %535)
  %554 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %555 = tail call double @llvm.fmuladd.f64(double %482, double -2.000000e+00, double %554)
  %add1607 = fadd double %481, %555
  %556 = tail call double @llvm.fmuladd.f64(double %add1607, double 1.210000e+02, double %553)
  %557 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub1615 = fsub double %mul1521, %557
  %558 = tail call double @llvm.fmuladd.f64(double %sub1615, double 1.100000e+00, double %538)
  %559 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %560 = tail call double @llvm.fmuladd.f64(double %478, double -2.000000e+00, double %559)
  %add1624 = fadd double %560, %477
  %561 = tail call double @llvm.fmuladd.f64(double %add1624, double 1.210000e+02, double %558)
  %562 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub1632 = fsub double %526, %562
  %563 = tail call double @llvm.fmuladd.f64(double %sub1632, double 1.100000e+00, double %541)
  %564 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %565 = tail call double @llvm.fmuladd.f64(double %474, double -2.000000e+00, double %564)
  %add1641 = fadd double %473, %565
  %566 = tail call double @llvm.fmuladd.f64(double %add1641, double 1.210000e+02, double %563)
  %567 = load double, double* %arrayidx297, align 16, !tbaa !7
  %568 = tail call double @llvm.fmuladd.f64(double %542, double -4.000000e+00, double %567)
  %569 = tail call double @llvm.fmuladd.f64(double %543, double 6.000000e+00, double %568)
  %570 = tail call double @llvm.fmuladd.f64(double %545, double -4.000000e+00, double %569)
  %571 = tail call double @llvm.fmuladd.f64(double %neg618, double %570, double %546)
  store double %571, double* %arrayidx1551, align 8, !tbaa !7
  %572 = load double, double* %arrayidx297.1, align 8, !tbaa !7
  %573 = tail call double @llvm.fmuladd.f64(double %549, double -4.000000e+00, double %572)
  %574 = load double, double* %arrayidx209, align 8, !tbaa !7
  %575 = tail call double @llvm.fmuladd.f64(double %574, double 6.000000e+00, double %573)
  %576 = load double, double* %arrayidx21, align 8, !tbaa !7
  %577 = tail call double @llvm.fmuladd.f64(double %576, double -4.000000e+00, double %575)
  %578 = tail call double @llvm.fmuladd.f64(double %neg618, double %577, double %551)
  store double %578, double* %arrayidx1551.1, align 8, !tbaa !7
  %579 = load double, double* %arrayidx297.2, align 16, !tbaa !7
  %580 = tail call double @llvm.fmuladd.f64(double %554, double -4.000000e+00, double %579)
  %581 = load double, double* %arrayidx212, align 16, !tbaa !7
  %582 = tail call double @llvm.fmuladd.f64(double %581, double 6.000000e+00, double %580)
  %583 = load double, double* %arrayidx29, align 8, !tbaa !7
  %584 = tail call double @llvm.fmuladd.f64(double %583, double -4.000000e+00, double %582)
  %585 = tail call double @llvm.fmuladd.f64(double %neg618, double %584, double %556)
  store double %585, double* %arrayidx1551.2, align 8, !tbaa !7
  %586 = load double, double* %arrayidx297.3, align 8, !tbaa !7
  %587 = tail call double @llvm.fmuladd.f64(double %559, double -4.000000e+00, double %586)
  %588 = load double, double* %arrayidx215, align 8, !tbaa !7
  %589 = tail call double @llvm.fmuladd.f64(double %588, double 6.000000e+00, double %587)
  %590 = load double, double* %arrayidx37, align 8, !tbaa !7
  %591 = tail call double @llvm.fmuladd.f64(double %590, double -4.000000e+00, double %589)
  %592 = tail call double @llvm.fmuladd.f64(double %neg618, double %591, double %561)
  store double %592, double* %arrayidx1551.3, align 8, !tbaa !7
  %593 = load double, double* %arrayidx297.4, align 16, !tbaa !7
  %594 = tail call double @llvm.fmuladd.f64(double %564, double -4.000000e+00, double %593)
  %595 = load double, double* %arrayidx218, align 16, !tbaa !7
  %596 = tail call double @llvm.fmuladd.f64(double %595, double 6.000000e+00, double %594)
  %597 = load double, double* %arrayidx45, align 8, !tbaa !7
  %598 = tail call double @llvm.fmuladd.f64(double %597, double -4.000000e+00, double %596)
  %599 = tail call double @llvm.fmuladd.f64(double %neg618, double %598, double %566)
  store double %599, double* %arrayidx1551.4, align 8, !tbaa !7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  %600 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 0
  store double %542, double* %600, align 16, !tbaa !7
  store double %543, double* %arrayidx294, align 8, !tbaa !7
  store double %545, double* %scevgep2779, align 16, !tbaa !7
  %601 = load i64, i64* %88, align 16, !tbaa !7
  store i64 %601, i64* %86, align 8, !tbaa !7
  %602 = load i64, i64* %89, align 8, !tbaa !7
  store i64 %602, i64* %91, align 16, !tbaa !7
  %603 = load i64, i64* %92, align 16, !tbaa !7
  store i64 %603, i64* %89, align 8, !tbaa !7
  store double %549, double* %arrayidx297.1, align 8, !tbaa !7
  store double %574, double* %arrayidx294.1, align 8, !tbaa !7
  store double %576, double* %arrayidx209, align 8, !tbaa !7
  %604 = load i64, i64* %71, align 8, !tbaa !7
  store i64 %604, i64* %13, align 8, !tbaa !7
  %605 = load i64, i64* %100, align 8, !tbaa !7
  store i64 %605, i64* %102, align 8, !tbaa !7
  %606 = load i64, i64* %103, align 8, !tbaa !7
  store i64 %606, i64* %100, align 8, !tbaa !7
  store double %554, double* %arrayidx297.2, align 16, !tbaa !7
  store double %581, double* %arrayidx294.2, align 8, !tbaa !7
  store double %583, double* %arrayidx212, align 16, !tbaa !7
  %607 = load i64, i64* %74, align 16, !tbaa !7
  store i64 %607, i64* %16, align 8, !tbaa !7
  %608 = load i64, i64* %111, align 8, !tbaa !7
  store i64 %608, i64* %113, align 16, !tbaa !7
  %609 = load i64, i64* %114, align 16, !tbaa !7
  store i64 %609, i64* %111, align 8, !tbaa !7
  store double %559, double* %arrayidx297.3, align 8, !tbaa !7
  store double %588, double* %arrayidx294.3, align 8, !tbaa !7
  store double %590, double* %arrayidx215, align 8, !tbaa !7
  %610 = load i64, i64* %77, align 8, !tbaa !7
  store i64 %610, i64* %19, align 8, !tbaa !7
  %611 = load i64, i64* %122, align 8, !tbaa !7
  store i64 %611, i64* %124, align 8, !tbaa !7
  %612 = load i64, i64* %125, align 8, !tbaa !7
  store i64 %612, i64* %122, align 8, !tbaa !7
  store double %564, double* %arrayidx297.4, align 16, !tbaa !7
  store double %595, double* %arrayidx294.4, align 8, !tbaa !7
  store double %597, double* %arrayidx218, align 16, !tbaa !7
  %613 = load i64, i64* %80, align 16, !tbaa !7
  store i64 %613, i64* %22, align 8, !tbaa !7
  %614 = load i64, i64* %134, align 8, !tbaa !7
  store i64 %614, i64* %136, align 16, !tbaa !7
  %615 = load i64, i64* %137, align 16, !tbaa !7
  store i64 %615, i64* %134, align 8, !tbaa !7
  store i64 %610, i64* %43, align 16, !tbaa !7
  %.cast2674 = bitcast i64 %610 to double
  %arrayidx1744 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom1385, i64 %idxprom, i64 %idxprom9
  %616 = load double, double* %arrayidx1744, align 8, !tbaa !7
  %mul1745 = fmul double %616, %.cast2674
  %arrayidx1751 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom1385, i64 %idxprom, i64 %idxprom9
  %617 = load double, double* %arrayidx1751, align 8, !tbaa !7
  %618 = bitcast i64 %604 to double
  %mul1754 = fmul double %mul1745, %618
  store double %mul1754, double* %arrayidx161, align 8, !tbaa !7
  %619 = bitcast i64 %607 to double
  %mul1759 = fmul double %mul1745, %619
  store double %mul1759, double* %arrayidx166, align 16, !tbaa !7
  %620 = bitcast i64 %613 to double
  %sub1767 = fsub double %620, %617
  %mul1768 = fmul double %sub1767, 4.000000e-01
  %621 = tail call double @llvm.fmuladd.f64(double %.cast2674, double %mul1745, double %mul1768)
  store double %621, double* %arrayidx175, align 8, !tbaa !7
  %neg1775 = fmul double %617, -4.000000e-01
  %622 = tail call double @llvm.fmuladd.f64(double %620, double 1.400000e+00, double %neg1775)
  %mul1776 = fmul double %mul1745, %622
  store double %mul1776, double* %arrayidx183, align 16, !tbaa !7
  %mul1787 = fmul double %616, %618
  %mul1790 = fmul double %616, %619
  %mul1796 = fmul double %616, %620
  %623 = load double, double* %arrayidx1441, align 8, !tbaa !7
  %mul1805 = fmul double %623, %576
  %mul1808 = fmul double %623, %583
  %mul1811 = fmul double %623, %590
  %mul1814 = fmul double %623, %597
  %sub1815 = fsub double %mul1787, %mul1805
  %mul1816 = fmul double %sub1815, 1.100000e+01
  store double %mul1816, double* %arrayidx223, align 8, !tbaa !7
  %sub1819 = fsub double %mul1790, %mul1808
  %mul1820 = fmul double %sub1819, 1.100000e+01
  store double %mul1820, double* %arrayidx227, align 8, !tbaa !7
  %sub1823 = fsub double %mul1745, %mul1811
  %mul1824 = fmul double %sub1823, 0x402D555555555555
  store double %mul1824, double* %arrayidx231, align 8, !tbaa !7
  %mul1828 = fmul double %mul1790, %mul1790
  %624 = tail call double @llvm.fmuladd.f64(double %mul1787, double %mul1787, double %mul1828)
  %625 = tail call double @llvm.fmuladd.f64(double %mul1745, double %mul1745, double %624)
  %mul1831 = fmul double %mul1808, %mul1808
  %626 = tail call double @llvm.fmuladd.f64(double %mul1805, double %mul1805, double %mul1831)
  %627 = tail call double @llvm.fmuladd.f64(double %mul1811, double %mul1811, double %626)
  %sub1833 = fsub double %625, %627
  %628 = fneg double %mul1811
  %neg1837 = fmul double %mul1811, %628
  %629 = tail call double @llvm.fmuladd.f64(double %mul1745, double %mul1745, double %neg1837)
  %mul1838 = fmul double %629, 0x3FFD555555555555
  %630 = tail call double @llvm.fmuladd.f64(double %sub1833, double 0xC0151EB851EB851D, double %mul1838)
  %sub1839 = fsub double %mul1796, %mul1814
  %631 = tail call double @llvm.fmuladd.f64(double %sub1839, double 2.156000e+01, double %630)
  store double %631, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx1854 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom1436, i64 %idxprom, i64 %idxprom9, i64 0
  %632 = load double, double* %arrayidx1854, align 8, !tbaa !7
  %633 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub1861 = fsub double %.cast2674, %633
  %634 = tail call double @llvm.fmuladd.f64(double %sub1861, double -5.500000e+00, double %632)
  %arrayidx1854.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom1436, i64 %idxprom, i64 %idxprom9, i64 1
  %635 = load double, double* %arrayidx1854.1, align 8, !tbaa !7
  %636 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub1861.1 = fsub double %mul1754, %636
  %637 = tail call double @llvm.fmuladd.f64(double %sub1861.1, double -5.500000e+00, double %635)
  %arrayidx1854.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom1436, i64 %idxprom, i64 %idxprom9, i64 2
  %638 = load double, double* %arrayidx1854.2, align 8, !tbaa !7
  %639 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub1861.2 = fsub double %mul1759, %639
  %640 = tail call double @llvm.fmuladd.f64(double %sub1861.2, double -5.500000e+00, double %638)
  %arrayidx1854.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom1436, i64 %idxprom, i64 %idxprom9, i64 3
  %641 = load double, double* %arrayidx1854.3, align 8, !tbaa !7
  %642 = bitcast i64 %611 to double
  %sub1861.3 = fsub double %621, %642
  %643 = tail call double @llvm.fmuladd.f64(double %sub1861.3, double -5.500000e+00, double %641)
  %arrayidx1854.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom1436, i64 %idxprom, i64 %idxprom9, i64 4
  %644 = load double, double* %arrayidx1854.4, align 8, !tbaa !7
  %645 = bitcast i64 %614 to double
  %sub1861.4 = fsub double %mul1776, %645
  %646 = tail call double @llvm.fmuladd.f64(double %sub1861.4, double -5.500000e+00, double %644)
  %647 = load double, double* %arrayidx294, align 8, !tbaa !7
  %648 = load double, double* %scevgep2779, align 16, !tbaa !7
  %649 = tail call double @llvm.fmuladd.f64(double %648, double -2.000000e+00, double %647)
  %650 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add1876 = fadd double %649, %650
  %651 = tail call double @llvm.fmuladd.f64(double %add1876, double 1.210000e+02, double %634)
  %652 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub1884 = fsub double %mul1816, %652
  %653 = tail call double @llvm.fmuladd.f64(double %sub1884, double 1.100000e+00, double %637)
  %654 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %655 = tail call double @llvm.fmuladd.f64(double %576, double -2.000000e+00, double %654)
  %add1893 = fadd double %655, %618
  %656 = tail call double @llvm.fmuladd.f64(double %add1893, double 1.210000e+02, double %653)
  %657 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub1901 = fsub double %mul1820, %657
  %658 = tail call double @llvm.fmuladd.f64(double %sub1901, double 1.100000e+00, double %640)
  %659 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %660 = tail call double @llvm.fmuladd.f64(double %583, double -2.000000e+00, double %659)
  %add1910 = fadd double %660, %619
  %661 = tail call double @llvm.fmuladd.f64(double %add1910, double 1.210000e+02, double %658)
  %662 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub1918 = fsub double %mul1824, %662
  %663 = tail call double @llvm.fmuladd.f64(double %sub1918, double 1.100000e+00, double %643)
  %664 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %665 = tail call double @llvm.fmuladd.f64(double %590, double -2.000000e+00, double %664)
  %add1927 = fadd double %665, %.cast2674
  %666 = tail call double @llvm.fmuladd.f64(double %add1927, double 1.210000e+02, double %663)
  %667 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub1935 = fsub double %631, %667
  %668 = tail call double @llvm.fmuladd.f64(double %sub1935, double 1.100000e+00, double %646)
  %669 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %670 = tail call double @llvm.fmuladd.f64(double %597, double -2.000000e+00, double %669)
  %add1944 = fadd double %670, %620
  %671 = tail call double @llvm.fmuladd.f64(double %add1944, double 1.210000e+02, double %668)
  %672 = load double, double* %arrayidx297, align 16, !tbaa !7
  %673 = tail call double @llvm.fmuladd.f64(double %647, double -4.000000e+00, double %672)
  %674 = tail call double @llvm.fmuladd.f64(double %648, double 5.000000e+00, double %673)
  %675 = tail call double @llvm.fmuladd.f64(double %neg618, double %674, double %651)
  store double %675, double* %arrayidx1854, align 8, !tbaa !7
  %676 = load double, double* %arrayidx297.1, align 8, !tbaa !7
  %677 = tail call double @llvm.fmuladd.f64(double %654, double -4.000000e+00, double %676)
  %678 = load double, double* %arrayidx209, align 8, !tbaa !7
  %679 = tail call double @llvm.fmuladd.f64(double %678, double 5.000000e+00, double %677)
  %680 = tail call double @llvm.fmuladd.f64(double %neg618, double %679, double %656)
  store double %680, double* %arrayidx1854.1, align 8, !tbaa !7
  %681 = load double, double* %arrayidx297.2, align 16, !tbaa !7
  %682 = tail call double @llvm.fmuladd.f64(double %659, double -4.000000e+00, double %681)
  %683 = load double, double* %arrayidx212, align 16, !tbaa !7
  %684 = tail call double @llvm.fmuladd.f64(double %683, double 5.000000e+00, double %682)
  %685 = tail call double @llvm.fmuladd.f64(double %neg618, double %684, double %661)
  store double %685, double* %arrayidx1854.2, align 8, !tbaa !7
  %686 = load double, double* %arrayidx297.3, align 8, !tbaa !7
  %687 = tail call double @llvm.fmuladd.f64(double %664, double -4.000000e+00, double %686)
  %688 = load double, double* %arrayidx215, align 8, !tbaa !7
  %689 = tail call double @llvm.fmuladd.f64(double %688, double 5.000000e+00, double %687)
  %690 = tail call double @llvm.fmuladd.f64(double %neg618, double %689, double %666)
  store double %690, double* %arrayidx1854.3, align 8, !tbaa !7
  %691 = load double, double* %arrayidx297.4, align 16, !tbaa !7
  %692 = tail call double @llvm.fmuladd.f64(double %669, double -4.000000e+00, double %691)
  %693 = load double, double* %arrayidx218, align 16, !tbaa !7
  %694 = tail call double @llvm.fmuladd.f64(double %693, double 5.000000e+00, double %692)
  %695 = tail call double @llvm.fmuladd.f64(double %neg618, double %694, double %671)
  store double %695, double* %arrayidx1854.4, align 8, !tbaa !7
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
