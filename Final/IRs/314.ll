; ModuleID = 'src/314.src'
source_filename = "src/314.src"
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
  %sub5 = add nsw i32 %f, -1
  %cmp6 = icmp slt i32 %conv3, %sub5
  %or.cond = and i1 %cmp, %cmp6
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %5 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %6 = bitcast double* %c to [13 x [13 x double]]*
  %7 = bitcast double* %d to [13 x [13 x double]]*
  %idxprom = sext i32 %conv to i64
  %idxprom8 = sext i32 %conv3 to i64
  %arrayidx9 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8
  %8 = bitcast [13 x [5 x double]]* %arrayidx9 to i64*
  %9 = load i64, i64* %8, align 8, !tbaa !7
  %arrayidx12 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3
  %10 = bitcast [5 x double]* %arrayidx12 to i64*
  store i64 %9, i64* %10, align 8, !tbaa !7
  %arrayidx19 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 0, i64 1
  %11 = bitcast double* %arrayidx19 to i64*
  %12 = load i64, i64* %11, align 8, !tbaa !7
  %arrayidx21 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3, i64 1
  %13 = bitcast double* %arrayidx21 to i64*
  store i64 %12, i64* %13, align 8, !tbaa !7
  %arrayidx27 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 0, i64 2
  %14 = bitcast double* %arrayidx27 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !7
  %arrayidx29 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3, i64 2
  %16 = bitcast double* %arrayidx29 to i64*
  store i64 %15, i64* %16, align 8, !tbaa !7
  %arrayidx35 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 0, i64 3
  %17 = bitcast double* %arrayidx35 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !7
  %arrayidx37 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3, i64 3
  %19 = bitcast double* %arrayidx37 to i64*
  store i64 %18, i64* %19, align 8, !tbaa !7
  %arrayidx43 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 0, i64 4
  %20 = bitcast double* %arrayidx43 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !7
  %arrayidx45 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 3, i64 4
  %22 = bitcast double* %arrayidx45 to i64*
  store i64 %21, i64* %22, align 8, !tbaa !7
  %arrayidx48 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1
  %23 = bitcast [5 x double]* %arrayidx48 to i64*
  store i64 %12, i64* %23, align 8, !tbaa !7
  %.cast = bitcast i64 %12 to double
  %arrayidx57 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 0
  %24 = load double, double* %arrayidx57, align 8, !tbaa !7
  %mul = fmul double %24, %.cast
  %arrayidx63 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 %idxprom8, i64 0
  %25 = load double, double* %arrayidx63, align 8, !tbaa !7
  %26 = bitcast i64 %21 to double
  %sub69 = fsub double %26, %25
  %mul70 = fmul double %sub69, 4.000000e-01
  %27 = tail call double @llvm.fmuladd.f64(double %.cast, double %mul, double %mul70)
  %arrayidx72 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1, i64 1
  store double %27, double* %arrayidx72, align 8, !tbaa !7
  %28 = bitcast i64 %15 to double
  %mul75 = fmul double %mul, %28
  %arrayidx77 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1, i64 2
  store double %mul75, double* %arrayidx77, align 8, !tbaa !7
  %29 = bitcast i64 %18 to double
  %mul80 = fmul double %mul, %29
  %arrayidx82 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1, i64 3
  store double %mul80, double* %arrayidx82, align 8, !tbaa !7
  %neg = fmul double %25, -4.000000e-01
  %30 = tail call double @llvm.fmuladd.f64(double %26, double 1.400000e+00, double %neg)
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
  %arrayidx102 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 1
  %32 = bitcast [5 x double]* %arrayidx102 to i64*
  %33 = load i64, i64* %32, align 8, !tbaa !7
  store i64 %33, i64* %10, align 8, !tbaa !7
  %arrayidx111 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 1, i64 1
  %34 = bitcast double* %arrayidx111 to i64*
  %35 = load i64, i64* %34, align 8, !tbaa !7
  store i64 %35, i64* %13, align 8, !tbaa !7
  %arrayidx119 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 1, i64 2
  %36 = bitcast double* %arrayidx119 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !7
  store i64 %37, i64* %16, align 8, !tbaa !7
  %arrayidx127 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 1, i64 3
  %38 = bitcast double* %arrayidx127 to i64*
  %39 = load i64, i64* %38, align 8, !tbaa !7
  store i64 %39, i64* %19, align 8, !tbaa !7
  %arrayidx135 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 1, i64 4
  %40 = bitcast double* %arrayidx135 to i64*
  %41 = load i64, i64* %40, align 8, !tbaa !7
  store i64 %41, i64* %22, align 8, !tbaa !7
  %arrayidx140 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2
  %42 = bitcast [5 x double]* %arrayidx140 to i64*
  store i64 %35, i64* %42, align 16, !tbaa !7
  %.cast2670 = bitcast i64 %35 to double
  %arrayidx149 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 1
  %43 = load double, double* %arrayidx149, align 8, !tbaa !7
  %mul150 = fmul double %43, %.cast2670
  %arrayidx156 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 %idxprom8, i64 1
  %44 = load double, double* %arrayidx156, align 8, !tbaa !7
  %45 = bitcast i64 %41 to double
  %sub162 = fsub double %45, %44
  %mul163 = fmul double %sub162, 4.000000e-01
  %46 = tail call double @llvm.fmuladd.f64(double %.cast2670, double %mul150, double %mul163)
  %arrayidx165 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 1
  store double %46, double* %arrayidx165, align 8, !tbaa !7
  %47 = bitcast i64 %37 to double
  %mul168 = fmul double %mul150, %47
  %arrayidx170 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 2
  store double %mul168, double* %arrayidx170, align 16, !tbaa !7
  %48 = bitcast i64 %39 to double
  %mul173 = fmul double %mul150, %48
  %arrayidx175 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 3
  store double %mul173, double* %arrayidx175, align 8, !tbaa !7
  %neg180 = fmul double %44, -4.000000e-01
  %49 = tail call double @llvm.fmuladd.f64(double %45, double 1.400000e+00, double %neg180)
  %mul181 = fmul double %mul150, %49
  %arrayidx183 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 4
  store double %mul181, double* %arrayidx183, align 16, !tbaa !7
  %mul195 = fmul double %43, %47
  %mul198 = fmul double %43, %48
  %mul201 = fmul double %43, %45
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
  %sub220 = fsub double %mul150, %mul210
  %mul221 = fmul double %sub220, 0x402D555555555555
  %arrayidx223 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 1
  store double %mul221, double* %arrayidx223, align 8, !tbaa !7
  %sub224 = fsub double %mul195, %mul213
  %mul225 = fmul double %sub224, 1.100000e+01
  %arrayidx227 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 2
  store double %mul225, double* %arrayidx227, align 8, !tbaa !7
  %sub228 = fsub double %mul198, %mul216
  %mul229 = fmul double %sub228, 1.100000e+01
  %arrayidx231 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 3
  store double %mul229, double* %arrayidx231, align 8, !tbaa !7
  %mul233 = fmul double %mul195, %mul195
  %54 = tail call double @llvm.fmuladd.f64(double %mul150, double %mul150, double %mul233)
  %55 = tail call double @llvm.fmuladd.f64(double %mul198, double %mul198, double %54)
  %mul236 = fmul double %mul213, %mul213
  %56 = tail call double @llvm.fmuladd.f64(double %mul210, double %mul210, double %mul236)
  %57 = tail call double @llvm.fmuladd.f64(double %mul216, double %mul216, double %56)
  %sub238 = fsub double %55, %57
  %58 = fneg double %mul210
  %neg242 = fmul double %mul210, %58
  %59 = tail call double @llvm.fmuladd.f64(double %mul150, double %mul150, double %neg242)
  %mul243 = fmul double %59, 0x3FFD555555555555
  %60 = tail call double @llvm.fmuladd.f64(double %sub238, double 0xC0151EB851EB851D, double %mul243)
  %sub244 = fsub double %mul201, %mul219
  %61 = tail call double @llvm.fmuladd.f64(double %sub244, double 2.156000e+01, double %60)
  %arrayidx247 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 4
  store double %61, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx252 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 2
  %62 = bitcast [5 x double]* %arrayidx252 to i64*
  %63 = load i64, i64* %62, align 8, !tbaa !7
  %arrayidx254 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4
  %64 = bitcast [5 x double]* %arrayidx254 to i64*
  store i64 %63, i64* %64, align 16, !tbaa !7
  %arrayidx261 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 2, i64 1
  %65 = bitcast double* %arrayidx261 to i64*
  %66 = load i64, i64* %65, align 8, !tbaa !7
  %arrayidx263 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 1
  %67 = bitcast double* %arrayidx263 to i64*
  store i64 %66, i64* %67, align 8, !tbaa !7
  %arrayidx269 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 2, i64 2
  %68 = bitcast double* %arrayidx269 to i64*
  %69 = load i64, i64* %68, align 8, !tbaa !7
  %arrayidx271 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 2
  %70 = bitcast double* %arrayidx271 to i64*
  store i64 %69, i64* %70, align 16, !tbaa !7
  %arrayidx277 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 2, i64 3
  %71 = bitcast double* %arrayidx277 to i64*
  %72 = load i64, i64* %71, align 8, !tbaa !7
  %arrayidx279 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 3
  %73 = bitcast double* %arrayidx279 to i64*
  store i64 %72, i64* %73, align 8, !tbaa !7
  %arrayidx285 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 2, i64 4
  %74 = bitcast double* %arrayidx285 to i64*
  %75 = load i64, i64* %74, align 8, !tbaa !7
  %arrayidx287 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 4
  %76 = bitcast double* %arrayidx287 to i64*
  store i64 %75, i64* %76, align 16, !tbaa !7
  %scevgep2774 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 1, i64 0
  %scevgep27742775 = bitcast double* %scevgep2774 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  %arrayidx294 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 0
  %77 = bitcast double* %arrayidx294 to i64*
  %78 = load i64, i64* %77, align 8, !tbaa !7
  %arrayidx297 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 0
  %79 = bitcast [5 x [5 x double]]* %aa to i64*
  store i64 %78, i64* %79, align 16, !tbaa !7
  %80 = bitcast double* %scevgep2779 to i64*
  %81 = load i64, i64* %80, align 16, !tbaa !7
  store i64 %81, i64* %77, align 8, !tbaa !7
  %82 = bitcast double* %scevgep2781 to i64*
  %83 = load i64, i64* %82, align 8, !tbaa !7
  store i64 %83, i64* %80, align 16, !tbaa !7
  %arrayidx312 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 4, i64 0
  %84 = bitcast double* %arrayidx312 to i64*
  store i64 %63, i64* %82, align 8, !tbaa !7
  %arrayidx318 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 1, i64 0
  %85 = bitcast double* %arrayidx318 to i64*
  %86 = load i64, i64* %85, align 8, !tbaa !7
  %arrayidx321 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 0
  %87 = bitcast [3 x [5 x double]]* %y to i64*
  store i64 %86, i64* %87, align 16, !tbaa !7
  %arrayidx324 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 2, i64 0
  %88 = bitcast double* %arrayidx324 to i64*
  %89 = load i64, i64* %88, align 16, !tbaa !7
  store i64 %89, i64* %85, align 8, !tbaa !7
  %arrayidx294.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 1
  %90 = bitcast double* %arrayidx294.1 to i64*
  %91 = load i64, i64* %90, align 8, !tbaa !7
  %arrayidx297.1 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 1
  %92 = bitcast double* %arrayidx297.1 to i64*
  store i64 %91, i64* %92, align 8, !tbaa !7
  %93 = bitcast double* %arrayidx209 to i64*
  %94 = load i64, i64* %93, align 8, !tbaa !7
  store i64 %94, i64* %90, align 8, !tbaa !7
  %95 = load i64, i64* %13, align 8, !tbaa !7
  store i64 %95, i64* %93, align 8, !tbaa !7
  store i64 %66, i64* %13, align 8, !tbaa !7
  %96 = bitcast double* %arrayidx72 to i64*
  %97 = load i64, i64* %96, align 8, !tbaa !7
  %arrayidx321.1 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 1
  %98 = bitcast double* %arrayidx321.1 to i64*
  store i64 %97, i64* %98, align 8, !tbaa !7
  %99 = bitcast double* %arrayidx165 to i64*
  %100 = load i64, i64* %99, align 8, !tbaa !7
  store i64 %100, i64* %96, align 8, !tbaa !7
  %arrayidx333.1 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 0, i64 1
  %arrayidx294.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 2
  %101 = bitcast double* %arrayidx294.2 to i64*
  %102 = load i64, i64* %101, align 8, !tbaa !7
  %arrayidx297.2 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 2
  %103 = bitcast double* %arrayidx297.2 to i64*
  store i64 %102, i64* %103, align 16, !tbaa !7
  %104 = bitcast double* %arrayidx212 to i64*
  %105 = load i64, i64* %104, align 16, !tbaa !7
  store i64 %105, i64* %101, align 8, !tbaa !7
  %106 = load i64, i64* %16, align 8, !tbaa !7
  store i64 %106, i64* %104, align 16, !tbaa !7
  store i64 %69, i64* %16, align 8, !tbaa !7
  %107 = bitcast double* %arrayidx77 to i64*
  %108 = load i64, i64* %107, align 8, !tbaa !7
  %arrayidx321.2 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 2
  %109 = bitcast double* %arrayidx321.2 to i64*
  store i64 %108, i64* %109, align 16, !tbaa !7
  %110 = bitcast double* %arrayidx170 to i64*
  %111 = load i64, i64* %110, align 16, !tbaa !7
  store i64 %111, i64* %107, align 8, !tbaa !7
  %arrayidx333.2 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 0, i64 2
  %arrayidx294.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 3
  %112 = bitcast double* %arrayidx294.3 to i64*
  %113 = load i64, i64* %112, align 8, !tbaa !7
  %arrayidx297.3 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 3
  %114 = bitcast double* %arrayidx297.3 to i64*
  store i64 %113, i64* %114, align 8, !tbaa !7
  %115 = bitcast double* %arrayidx215 to i64*
  %116 = load i64, i64* %115, align 8, !tbaa !7
  store i64 %116, i64* %112, align 8, !tbaa !7
  %117 = load i64, i64* %19, align 8, !tbaa !7
  store i64 %117, i64* %115, align 8, !tbaa !7
  store i64 %72, i64* %19, align 8, !tbaa !7
  %118 = bitcast double* %arrayidx82 to i64*
  %119 = load i64, i64* %118, align 8, !tbaa !7
  %arrayidx321.3 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 3
  %120 = bitcast double* %arrayidx321.3 to i64*
  store i64 %119, i64* %120, align 8, !tbaa !7
  %121 = bitcast double* %arrayidx175 to i64*
  %122 = load i64, i64* %121, align 8, !tbaa !7
  store i64 %122, i64* %118, align 8, !tbaa !7
  %arrayidx333.3 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 0, i64 3
  %arrayidx294.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 1, i64 4
  %123 = bitcast double* %arrayidx294.4 to i64*
  %124 = load i64, i64* %123, align 8, !tbaa !7
  %arrayidx297.4 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 4
  %125 = bitcast double* %arrayidx297.4 to i64*
  store i64 %124, i64* %125, align 16, !tbaa !7
  %126 = bitcast double* %arrayidx218 to i64*
  %127 = load i64, i64* %126, align 16, !tbaa !7
  store i64 %127, i64* %123, align 8, !tbaa !7
  %128 = load i64, i64* %22, align 8, !tbaa !7
  store i64 %128, i64* %126, align 16, !tbaa !7
  %129 = load i64, i64* %76, align 16, !tbaa !7
  store i64 %129, i64* %22, align 8, !tbaa !7
  %130 = bitcast double* %arrayidx89 to i64*
  %131 = load i64, i64* %130, align 8, !tbaa !7
  %arrayidx321.4 = getelementptr inbounds [3 x [5 x double]], [3 x [5 x double]]* %y, i64 0, i64 0, i64 4
  %132 = bitcast double* %arrayidx321.4 to i64*
  store i64 %131, i64* %132, align 16, !tbaa !7
  %133 = bitcast double* %arrayidx183 to i64*
  %134 = load i64, i64* %133, align 16, !tbaa !7
  store i64 %134, i64* %130, align 8, !tbaa !7
  %arrayidx333.4 = getelementptr inbounds [2 x [5 x double]], [2 x [5 x double]]* %z, i64 0, i64 0, i64 4
  %arrayidx342 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 3
  %135 = bitcast [5 x double]* %arrayidx342 to i64*
  %136 = load i64, i64* %135, align 8, !tbaa !7
  store i64 %136, i64* %64, align 16, !tbaa !7
  %arrayidx352 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 3, i64 1
  %137 = bitcast double* %arrayidx352 to i64*
  %138 = load i64, i64* %137, align 8, !tbaa !7
  store i64 %138, i64* %67, align 8, !tbaa !7
  %arrayidx361 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 3, i64 2
  %139 = bitcast double* %arrayidx361 to i64*
  %140 = load i64, i64* %139, align 8, !tbaa !7
  store i64 %140, i64* %70, align 16, !tbaa !7
  %arrayidx370 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 3, i64 3
  %141 = bitcast double* %arrayidx370 to i64*
  %142 = load i64, i64* %141, align 8, !tbaa !7
  store i64 %142, i64* %73, align 8, !tbaa !7
  %arrayidx379 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 3, i64 4
  %143 = bitcast double* %arrayidx379 to i64*
  %144 = load i64, i64* %143, align 8, !tbaa !7
  store i64 %144, i64* %76, align 16, !tbaa !7
  store i64 %66, i64* %42, align 16, !tbaa !7
  %.cast2671 = bitcast i64 %66 to double
  %arrayidx393 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 2
  %145 = load double, double* %arrayidx393, align 8, !tbaa !7
  %mul394 = fmul double %145, %.cast2671
  %arrayidx400 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 %idxprom8, i64 2
  %146 = load double, double* %arrayidx400, align 8, !tbaa !7
  %147 = bitcast i64 %129 to double
  %sub406 = fsub double %147, %146
  %mul407 = fmul double %sub406, 4.000000e-01
  %148 = tail call double @llvm.fmuladd.f64(double %.cast2671, double %mul394, double %mul407)
  store double %148, double* %arrayidx165, align 8, !tbaa !7
  %149 = bitcast i64 %69 to double
  %mul412 = fmul double %mul394, %149
  store double %mul412, double* %arrayidx170, align 16, !tbaa !7
  %150 = bitcast i64 %72 to double
  %mul417 = fmul double %mul394, %150
  store double %mul417, double* %arrayidx175, align 8, !tbaa !7
  %neg424 = fmul double %146, -4.000000e-01
  %151 = tail call double @llvm.fmuladd.f64(double %147, double 1.400000e+00, double %neg424)
  %mul425 = fmul double %mul394, %151
  store double %mul425, double* %arrayidx183, align 16, !tbaa !7
  %152 = load double, double* %arrayidx21, align 8, !tbaa !7
  %mul436 = fmul double %145, %152
  %mul439 = fmul double %145, %149
  %mul442 = fmul double %145, %150
  %mul445 = fmul double %145, %147
  %153 = load double, double* %arrayidx209, align 8, !tbaa !7
  %mul454 = fmul double %43, %153
  %154 = load double, double* %arrayidx212, align 16, !tbaa !7
  %mul457 = fmul double %43, %154
  %155 = bitcast i64 %117 to double
  %mul460 = fmul double %43, %155
  %156 = bitcast i64 %128 to double
  %mul463 = fmul double %43, %156
  %sub464 = fsub double %mul436, %mul454
  %mul465 = fmul double %sub464, 0x402D555555555555
  store double %mul465, double* %arrayidx223, align 8, !tbaa !7
  %sub468 = fsub double %mul439, %mul457
  %mul469 = fmul double %sub468, 1.100000e+01
  store double %mul469, double* %arrayidx227, align 8, !tbaa !7
  %sub472 = fsub double %mul442, %mul460
  %mul473 = fmul double %sub472, 1.100000e+01
  store double %mul473, double* %arrayidx231, align 8, !tbaa !7
  %mul477 = fmul double %mul439, %mul439
  %157 = tail call double @llvm.fmuladd.f64(double %mul436, double %mul436, double %mul477)
  %158 = tail call double @llvm.fmuladd.f64(double %mul442, double %mul442, double %157)
  %mul480 = fmul double %mul457, %mul457
  %159 = tail call double @llvm.fmuladd.f64(double %mul454, double %mul454, double %mul480)
  %160 = tail call double @llvm.fmuladd.f64(double %mul460, double %mul460, double %159)
  %sub482 = fsub double %158, %160
  %161 = fneg double %mul454
  %neg486 = fmul double %mul454, %161
  %162 = tail call double @llvm.fmuladd.f64(double %mul436, double %mul436, double %neg486)
  %mul487 = fmul double %162, 0x3FFD555555555555
  %163 = tail call double @llvm.fmuladd.f64(double %sub482, double 0xC0151EB851EB851D, double %mul487)
  %sub488 = fsub double %mul445, %mul463
  %164 = tail call double @llvm.fmuladd.f64(double %sub488, double 2.156000e+01, double %163)
  store double %164, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx503 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 1, i64 0
  %165 = load double, double* %arrayidx503, align 8, !tbaa !7
  %166 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub510 = fsub double %.cast2671, %166
  %167 = tail call double @llvm.fmuladd.f64(double %sub510, double -5.500000e+00, double %165)
  %arrayidx503.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 1, i64 1
  %168 = load double, double* %arrayidx503.1, align 8, !tbaa !7
  %169 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub510.1 = fsub double %148, %169
  %170 = tail call double @llvm.fmuladd.f64(double %sub510.1, double -5.500000e+00, double %168)
  %arrayidx503.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 1, i64 2
  %171 = load double, double* %arrayidx503.2, align 8, !tbaa !7
  %172 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub510.2 = fsub double %mul412, %172
  %173 = tail call double @llvm.fmuladd.f64(double %sub510.2, double -5.500000e+00, double %171)
  %arrayidx503.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 1, i64 3
  %174 = load double, double* %arrayidx503.3, align 8, !tbaa !7
  %175 = load double, double* %arrayidx321.3, align 8, !tbaa !7
  %sub510.3 = fsub double %mul417, %175
  %176 = tail call double @llvm.fmuladd.f64(double %sub510.3, double -5.500000e+00, double %174)
  %arrayidx503.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 1, i64 4
  %177 = load double, double* %arrayidx503.4, align 8, !tbaa !7
  %178 = load double, double* %arrayidx321.4, align 16, !tbaa !7
  %sub510.4 = fsub double %mul425, %178
  %179 = tail call double @llvm.fmuladd.f64(double %sub510.4, double -5.500000e+00, double %177)
  %180 = load double, double* %arrayidx294, align 8, !tbaa !7
  %181 = load double, double* %scevgep2779, align 16, !tbaa !7
  %182 = tail call double @llvm.fmuladd.f64(double %181, double -2.000000e+00, double %180)
  %183 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add525 = fadd double %182, %183
  %184 = tail call double @llvm.fmuladd.f64(double %add525, double 9.075000e+01, double %167)
  %185 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub533 = fsub double %mul465, %185
  %186 = tail call double @llvm.fmuladd.f64(double %sub533, double 1.100000e+00, double %170)
  %187 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %188 = tail call double @llvm.fmuladd.f64(double %153, double -2.000000e+00, double %187)
  %add542 = fadd double %152, %188
  %189 = tail call double @llvm.fmuladd.f64(double %add542, double 9.075000e+01, double %186)
  %190 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub550 = fsub double %mul469, %190
  %191 = tail call double @llvm.fmuladd.f64(double %sub550, double 1.100000e+00, double %173)
  %192 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %193 = tail call double @llvm.fmuladd.f64(double %154, double -2.000000e+00, double %192)
  %add559 = fadd double %193, %149
  %194 = tail call double @llvm.fmuladd.f64(double %add559, double 9.075000e+01, double %191)
  %195 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub567 = fsub double %mul473, %195
  %196 = tail call double @llvm.fmuladd.f64(double %sub567, double 1.100000e+00, double %176)
  %197 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %198 = tail call double @llvm.fmuladd.f64(double %155, double -2.000000e+00, double %197)
  %add576 = fadd double %198, %150
  %199 = tail call double @llvm.fmuladd.f64(double %add576, double 9.075000e+01, double %196)
  %200 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub584 = fsub double %164, %200
  %201 = tail call double @llvm.fmuladd.f64(double %sub584, double 1.100000e+00, double %179)
  %202 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %203 = tail call double @llvm.fmuladd.f64(double %156, double -2.000000e+00, double %202)
  %add593 = fadd double %203, %147
  %204 = tail call double @llvm.fmuladd.f64(double %add593, double 9.075000e+01, double %201)
  %call602 = tail call double @_Z3maxdd(double 7.500000e-01, double 7.500000e-01) #5
  %call603 = tail call double @_Z3maxdd(double %call602, double 1.000000e+00) #5
  %neg618 = fmul double %call603, -2.500000e-01
  %neg612 = fmul double %183, -4.000000e+00
  %205 = tail call double @llvm.fmuladd.f64(double %181, double 5.000000e+00, double %neg612)
  %206 = load double, double* %arrayidx312, align 16, !tbaa !7
  %add616 = fadd double %206, %205
  %207 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616, double %184)
  store double %207, double* %arrayidx503, align 8, !tbaa !7
  %208 = load double, double* %arrayidx209, align 8, !tbaa !7
  %209 = load double, double* %arrayidx21, align 8, !tbaa !7
  %neg612.1 = fmul double %209, -4.000000e+00
  %210 = tail call double @llvm.fmuladd.f64(double %208, double 5.000000e+00, double %neg612.1)
  %211 = load double, double* %arrayidx263, align 8, !tbaa !7
  %add616.1 = fadd double %211, %210
  %212 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616.1, double %189)
  store double %212, double* %arrayidx503.1, align 8, !tbaa !7
  %213 = load double, double* %arrayidx212, align 16, !tbaa !7
  %214 = load double, double* %arrayidx29, align 8, !tbaa !7
  %neg612.2 = fmul double %214, -4.000000e+00
  %215 = tail call double @llvm.fmuladd.f64(double %213, double 5.000000e+00, double %neg612.2)
  %216 = load double, double* %arrayidx271, align 16, !tbaa !7
  %add616.2 = fadd double %216, %215
  %217 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616.2, double %194)
  store double %217, double* %arrayidx503.2, align 8, !tbaa !7
  %218 = load double, double* %arrayidx215, align 8, !tbaa !7
  %219 = load double, double* %arrayidx37, align 8, !tbaa !7
  %neg612.3 = fmul double %219, -4.000000e+00
  %220 = tail call double @llvm.fmuladd.f64(double %218, double 5.000000e+00, double %neg612.3)
  %221 = load double, double* %arrayidx279, align 8, !tbaa !7
  %add616.3 = fadd double %221, %220
  %222 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616.3, double %199)
  store double %222, double* %arrayidx503.3, align 8, !tbaa !7
  %223 = load double, double* %arrayidx218, align 16, !tbaa !7
  %224 = load double, double* %arrayidx45, align 8, !tbaa !7
  %neg612.4 = fmul double %224, -4.000000e+00
  %225 = tail call double @llvm.fmuladd.f64(double %223, double 5.000000e+00, double %neg612.4)
  %226 = load double, double* %arrayidx287, align 16, !tbaa !7
  %add616.4 = fadd double %226, %225
  %227 = tail call double @llvm.fmuladd.f64(double %neg618, double %add616.4, double %204)
  store double %227, double* %arrayidx503.4, align 8, !tbaa !7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  %228 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 0
  store double %180, double* %228, align 16, !tbaa !7
  store double %181, double* %arrayidx294, align 8, !tbaa !7
  store double %183, double* %scevgep2779, align 16, !tbaa !7
  store double %206, double* %scevgep2781, align 8, !tbaa !7
  %229 = load i64, i64* %85, align 8, !tbaa !7
  store i64 %229, i64* %87, align 16, !tbaa !7
  %230 = load i64, i64* %88, align 16, !tbaa !7
  store i64 %230, i64* %85, align 8, !tbaa !7
  store double %187, double* %arrayidx297.1, align 8, !tbaa !7
  store double %208, double* %arrayidx294.1, align 8, !tbaa !7
  store double %209, double* %arrayidx209, align 8, !tbaa !7
  store double %211, double* %arrayidx21, align 8, !tbaa !7
  %231 = load i64, i64* %96, align 8, !tbaa !7
  store i64 %231, i64* %98, align 8, !tbaa !7
  %232 = load i64, i64* %99, align 8, !tbaa !7
  store i64 %232, i64* %96, align 8, !tbaa !7
  store double %192, double* %arrayidx297.2, align 16, !tbaa !7
  store double %213, double* %arrayidx294.2, align 8, !tbaa !7
  store double %214, double* %arrayidx212, align 16, !tbaa !7
  store double %216, double* %arrayidx29, align 8, !tbaa !7
  %233 = load i64, i64* %107, align 8, !tbaa !7
  store i64 %233, i64* %109, align 16, !tbaa !7
  %234 = load i64, i64* %110, align 16, !tbaa !7
  store i64 %234, i64* %107, align 8, !tbaa !7
  store double %197, double* %arrayidx297.3, align 8, !tbaa !7
  store double %218, double* %arrayidx294.3, align 8, !tbaa !7
  store double %219, double* %arrayidx215, align 8, !tbaa !7
  store double %221, double* %arrayidx37, align 8, !tbaa !7
  %235 = load i64, i64* %118, align 8, !tbaa !7
  store i64 %235, i64* %120, align 8, !tbaa !7
  %236 = load i64, i64* %121, align 8, !tbaa !7
  store i64 %236, i64* %118, align 8, !tbaa !7
  store double %202, double* %arrayidx297.4, align 16, !tbaa !7
  store double %223, double* %arrayidx294.4, align 8, !tbaa !7
  store double %224, double* %arrayidx218, align 16, !tbaa !7
  store double %226, double* %arrayidx45, align 8, !tbaa !7
  %237 = load i64, i64* %130, align 8, !tbaa !7
  store i64 %237, i64* %132, align 16, !tbaa !7
  %238 = load i64, i64* %133, align 16, !tbaa !7
  store i64 %238, i64* %130, align 8, !tbaa !7
  %arrayidx683 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 4
  %239 = bitcast [5 x double]* %arrayidx683 to i64*
  %240 = load i64, i64* %239, align 8, !tbaa !7
  store i64 %240, i64* %64, align 16, !tbaa !7
  %arrayidx693 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 4, i64 1
  %241 = bitcast double* %arrayidx693 to i64*
  %242 = load i64, i64* %241, align 8, !tbaa !7
  store i64 %242, i64* %67, align 8, !tbaa !7
  %arrayidx702 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 4, i64 2
  %243 = bitcast double* %arrayidx702 to i64*
  %244 = load i64, i64* %243, align 8, !tbaa !7
  store i64 %244, i64* %70, align 16, !tbaa !7
  %arrayidx711 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 4, i64 3
  %245 = bitcast double* %arrayidx711 to i64*
  %246 = load i64, i64* %245, align 8, !tbaa !7
  store i64 %246, i64* %73, align 8, !tbaa !7
  %arrayidx720 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 4, i64 4
  %247 = bitcast double* %arrayidx720 to i64*
  %248 = load i64, i64* %247, align 8, !tbaa !7
  store i64 %248, i64* %76, align 16, !tbaa !7
  %249 = getelementptr [5 x double], [5 x double]* %arrayidx140, i64 0, i64 0
  store double %211, double* %249, align 16, !tbaa !7
  %arrayidx734 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 3
  %250 = load double, double* %arrayidx734, align 8, !tbaa !7
  %mul735 = fmul double %250, %211
  %arrayidx741 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 %idxprom8, i64 3
  %251 = load double, double* %arrayidx741, align 8, !tbaa !7
  %sub747 = fsub double %226, %251
  %mul748 = fmul double %sub747, 4.000000e-01
  %252 = tail call double @llvm.fmuladd.f64(double %211, double %mul735, double %mul748)
  store double %252, double* %arrayidx165, align 8, !tbaa !7
  %mul753 = fmul double %mul735, %216
  store double %mul753, double* %arrayidx170, align 16, !tbaa !7
  %mul758 = fmul double %mul735, %221
  store double %mul758, double* %arrayidx175, align 8, !tbaa !7
  %neg765 = fmul double %251, -4.000000e-01
  %253 = tail call double @llvm.fmuladd.f64(double %226, double 1.400000e+00, double %neg765)
  %mul766 = fmul double %mul735, %253
  store double %mul766, double* %arrayidx183, align 16, !tbaa !7
  %mul780 = fmul double %250, %216
  %mul783 = fmul double %250, %221
  %mul786 = fmul double %250, %226
  %254 = load double, double* %arrayidx393, align 8, !tbaa !7
  %mul795 = fmul double %254, %209
  %mul798 = fmul double %254, %214
  %mul801 = fmul double %254, %219
  %mul804 = fmul double %254, %224
  %sub805 = fsub double %mul735, %mul795
  %mul806 = fmul double %sub805, 0x402D555555555555
  store double %mul806, double* %arrayidx223, align 8, !tbaa !7
  %sub809 = fsub double %mul780, %mul798
  %mul810 = fmul double %sub809, 1.100000e+01
  store double %mul810, double* %arrayidx227, align 8, !tbaa !7
  %sub813 = fsub double %mul783, %mul801
  %mul814 = fmul double %sub813, 1.100000e+01
  store double %mul814, double* %arrayidx231, align 8, !tbaa !7
  %mul818 = fmul double %mul780, %mul780
  %255 = tail call double @llvm.fmuladd.f64(double %mul735, double %mul735, double %mul818)
  %256 = tail call double @llvm.fmuladd.f64(double %mul783, double %mul783, double %255)
  %mul821 = fmul double %mul798, %mul798
  %257 = tail call double @llvm.fmuladd.f64(double %mul795, double %mul795, double %mul821)
  %258 = tail call double @llvm.fmuladd.f64(double %mul801, double %mul801, double %257)
  %sub823 = fsub double %256, %258
  %259 = fneg double %mul795
  %neg827 = fmul double %mul795, %259
  %260 = tail call double @llvm.fmuladd.f64(double %mul735, double %mul735, double %neg827)
  %mul828 = fmul double %260, 0x3FFD555555555555
  %261 = tail call double @llvm.fmuladd.f64(double %sub823, double 0xC0151EB851EB851D, double %mul828)
  %sub829 = fsub double %mul786, %mul804
  %262 = tail call double @llvm.fmuladd.f64(double %sub829, double 2.156000e+01, double %261)
  store double %262, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx844 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 2, i64 0
  %263 = load double, double* %arrayidx844, align 8, !tbaa !7
  %264 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub851 = fsub double %211, %264
  %265 = tail call double @llvm.fmuladd.f64(double %sub851, double -5.500000e+00, double %263)
  %arrayidx844.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 2, i64 1
  %266 = load double, double* %arrayidx844.1, align 8, !tbaa !7
  %267 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub851.1 = fsub double %252, %267
  %268 = tail call double @llvm.fmuladd.f64(double %sub851.1, double -5.500000e+00, double %266)
  %arrayidx844.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 2, i64 2
  %269 = load double, double* %arrayidx844.2, align 8, !tbaa !7
  %270 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub851.2 = fsub double %mul753, %270
  %271 = tail call double @llvm.fmuladd.f64(double %sub851.2, double -5.500000e+00, double %269)
  %arrayidx844.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 2, i64 3
  %272 = load double, double* %arrayidx844.3, align 8, !tbaa !7
  %273 = load double, double* %arrayidx321.3, align 8, !tbaa !7
  %sub851.3 = fsub double %mul758, %273
  %274 = tail call double @llvm.fmuladd.f64(double %sub851.3, double -5.500000e+00, double %272)
  %arrayidx844.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 2, i64 4
  %275 = load double, double* %arrayidx844.4, align 8, !tbaa !7
  %276 = load double, double* %arrayidx321.4, align 16, !tbaa !7
  %sub851.4 = fsub double %mul766, %276
  %277 = tail call double @llvm.fmuladd.f64(double %sub851.4, double -5.500000e+00, double %275)
  %278 = load double, double* %arrayidx294, align 8, !tbaa !7
  %279 = load double, double* %scevgep2779, align 16, !tbaa !7
  %280 = tail call double @llvm.fmuladd.f64(double %279, double -2.000000e+00, double %278)
  %281 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add866 = fadd double %280, %281
  %282 = tail call double @llvm.fmuladd.f64(double %add866, double 9.075000e+01, double %265)
  %283 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub874 = fsub double %mul806, %283
  %284 = tail call double @llvm.fmuladd.f64(double %sub874, double 1.100000e+00, double %268)
  %285 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %286 = tail call double @llvm.fmuladd.f64(double %209, double -2.000000e+00, double %285)
  %add883 = fadd double %211, %286
  %287 = tail call double @llvm.fmuladd.f64(double %add883, double 9.075000e+01, double %284)
  %288 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub891 = fsub double %mul810, %288
  %289 = tail call double @llvm.fmuladd.f64(double %sub891, double 1.100000e+00, double %271)
  %290 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %291 = tail call double @llvm.fmuladd.f64(double %214, double -2.000000e+00, double %290)
  %add900 = fadd double %216, %291
  %292 = tail call double @llvm.fmuladd.f64(double %add900, double 9.075000e+01, double %289)
  %293 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub908 = fsub double %mul814, %293
  %294 = tail call double @llvm.fmuladd.f64(double %sub908, double 1.100000e+00, double %274)
  %295 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %296 = tail call double @llvm.fmuladd.f64(double %219, double -2.000000e+00, double %295)
  %add917 = fadd double %221, %296
  %297 = tail call double @llvm.fmuladd.f64(double %add917, double 9.075000e+01, double %294)
  %298 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub925 = fsub double %262, %298
  %299 = tail call double @llvm.fmuladd.f64(double %sub925, double 1.100000e+00, double %277)
  %300 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %301 = tail call double @llvm.fmuladd.f64(double %224, double -2.000000e+00, double %300)
  %add934 = fadd double %226, %301
  %302 = tail call double @llvm.fmuladd.f64(double %add934, double 9.075000e+01, double %299)
  %mul953 = fmul double %279, 6.000000e+00
  %303 = tail call double @llvm.fmuladd.f64(double %278, double -4.000000e+00, double %mul953)
  %304 = tail call double @llvm.fmuladd.f64(double %281, double -4.000000e+00, double %303)
  %305 = load double, double* %arrayidx312, align 16, !tbaa !7
  %add961 = fadd double %305, %304
  %306 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961, double %282)
  store double %306, double* %arrayidx844, align 8, !tbaa !7
  %307 = load double, double* %arrayidx209, align 8, !tbaa !7
  %mul953.1 = fmul double %307, 6.000000e+00
  %308 = tail call double @llvm.fmuladd.f64(double %285, double -4.000000e+00, double %mul953.1)
  %309 = load double, double* %arrayidx21, align 8, !tbaa !7
  %310 = tail call double @llvm.fmuladd.f64(double %309, double -4.000000e+00, double %308)
  %311 = load double, double* %arrayidx263, align 8, !tbaa !7
  %add961.1 = fadd double %311, %310
  %312 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961.1, double %287)
  store double %312, double* %arrayidx844.1, align 8, !tbaa !7
  %313 = load double, double* %arrayidx212, align 16, !tbaa !7
  %mul953.2 = fmul double %313, 6.000000e+00
  %314 = tail call double @llvm.fmuladd.f64(double %290, double -4.000000e+00, double %mul953.2)
  %315 = load double, double* %arrayidx29, align 8, !tbaa !7
  %316 = tail call double @llvm.fmuladd.f64(double %315, double -4.000000e+00, double %314)
  %317 = load double, double* %arrayidx271, align 16, !tbaa !7
  %add961.2 = fadd double %317, %316
  %318 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961.2, double %292)
  store double %318, double* %arrayidx844.2, align 8, !tbaa !7
  %319 = load double, double* %arrayidx215, align 8, !tbaa !7
  %mul953.3 = fmul double %319, 6.000000e+00
  %320 = tail call double @llvm.fmuladd.f64(double %295, double -4.000000e+00, double %mul953.3)
  %321 = load double, double* %arrayidx37, align 8, !tbaa !7
  %322 = tail call double @llvm.fmuladd.f64(double %321, double -4.000000e+00, double %320)
  %323 = load double, double* %arrayidx279, align 8, !tbaa !7
  %add961.3 = fadd double %323, %322
  %324 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961.3, double %297)
  store double %324, double* %arrayidx844.3, align 8, !tbaa !7
  %325 = load double, double* %arrayidx218, align 16, !tbaa !7
  %mul953.4 = fmul double %325, 6.000000e+00
  %326 = tail call double @llvm.fmuladd.f64(double %300, double -4.000000e+00, double %mul953.4)
  %327 = load double, double* %arrayidx45, align 8, !tbaa !7
  %328 = tail call double @llvm.fmuladd.f64(double %327, double -4.000000e+00, double %326)
  %329 = load double, double* %arrayidx287, align 16, !tbaa !7
  %add961.4 = fadd double %329, %328
  %330 = tail call double @llvm.fmuladd.f64(double %neg618, double %add961.4, double %302)
  store double %330, double* %arrayidx844.4, align 8, !tbaa !7
  %sub975 = add i32 %e, -3
  %cmp9762685 = icmp sgt i32 %sub975, 3
  %331 = bitcast double %305 to i64
  %332 = bitcast double %285 to i64
  %333 = bitcast double %307 to i64
  %334 = bitcast double %290 to i64
  %335 = bitcast double %313 to i64
  %336 = bitcast double %295 to i64
  %337 = bitcast double %319 to i64
  %338 = bitcast double %300 to i64
  %339 = bitcast double %325 to i64
  br i1 %cmp9762685, label %for.body978.lr.ph, label %for.end1332

for.body978.lr.ph:                                ; preds = %if.end
  %wide.trip.count = zext i32 %sub975 to i64
  %340 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 0
  %341 = getelementptr [5 x double], [5 x double]* %arrayidx140, i64 0, i64 0
  %.promoted = load i64, i64* %85, align 8, !tbaa !7
  %.promoted2810 = load i64, i64* %96, align 8, !tbaa !7
  %.promoted2812 = load i64, i64* %107, align 8, !tbaa !7
  %.promoted2814 = load i64, i64* %118, align 8, !tbaa !7
  %.promoted2816 = load i64, i64* %130, align 8, !tbaa !7
  br label %for.body978

for.body978:                                      ; preds = %for.body978, %for.body978.lr.ph
  %342 = phi i64 [ %.promoted2816, %for.body978.lr.ph ], [ %361, %for.body978 ]
  %343 = phi i64 [ %.promoted2814, %for.body978.lr.ph ], [ %360, %for.body978 ]
  %344 = phi i64 [ %.promoted2812, %for.body978.lr.ph ], [ %359, %for.body978 ]
  %345 = phi i64 [ %.promoted2810, %for.body978.lr.ph ], [ %358, %for.body978 ]
  %346 = phi i64 [ %.promoted, %for.body978.lr.ph ], [ %357, %for.body978 ]
  %.in = phi double [ %329, %for.body978.lr.ph ], [ %451, %for.body978 ]
  %.in2783 = phi double [ %327, %for.body978.lr.ph ], [ %.in, %for.body978 ]
  %347 = phi i64 [ %339, %for.body978.lr.ph ], [ %461, %for.body978 ]
  %348 = phi i64 [ %338, %for.body978.lr.ph ], [ %460, %for.body978 ]
  %.in2784 = phi double [ %323, %for.body978.lr.ph ], [ %445, %for.body978 ]
  %.in2785 = phi double [ %321, %for.body978.lr.ph ], [ %.in2784, %for.body978 ]
  %349 = phi i64 [ %337, %for.body978.lr.ph ], [ %459, %for.body978 ]
  %350 = phi i64 [ %336, %for.body978.lr.ph ], [ %458, %for.body978 ]
  %.in2786 = phi double [ %317, %for.body978.lr.ph ], [ %439, %for.body978 ]
  %.in2787 = phi double [ %315, %for.body978.lr.ph ], [ %.in2786, %for.body978 ]
  %351 = phi i64 [ %335, %for.body978.lr.ph ], [ %457, %for.body978 ]
  %352 = phi i64 [ %334, %for.body978.lr.ph ], [ %456, %for.body978 ]
  %353 = phi double [ %311, %for.body978.lr.ph ], [ %433, %for.body978 ]
  %.in2788 = phi double [ %309, %for.body978.lr.ph ], [ %353, %for.body978 ]
  %354 = phi i64 [ %333, %for.body978.lr.ph ], [ %455, %for.body978 ]
  %355 = phi i64 [ %332, %for.body978.lr.ph ], [ %454, %for.body978 ]
  %356 = phi i64 [ %331, %for.body978.lr.ph ], [ %453, %for.body978 ]
  %.in2789 = phi double [ %281, %for.body978.lr.ph ], [ %402, %for.body978 ]
  %.in2790 = phi double [ %279, %for.body978.lr.ph ], [ %.in2789, %for.body978 ]
  %.in2791 = phi double [ %278, %for.body978.lr.ph ], [ %.in2790, %for.body978 ]
  %indvars.iv = phi i64 [ 3, %for.body978.lr.ph ], [ %indvars.iv.next, %for.body978 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  store i64 %356, i64* %82, align 8, !tbaa !7
  store i64 %346, i64* %87, align 16, !tbaa !7
  %357 = load i64, i64* %88, align 16, !tbaa !7
  store i64 %355, i64* %92, align 8, !tbaa !7
  store i64 %354, i64* %90, align 8, !tbaa !7
  store i64 %345, i64* %98, align 8, !tbaa !7
  %358 = load i64, i64* %99, align 8, !tbaa !7
  store i64 %352, i64* %103, align 16, !tbaa !7
  store i64 %351, i64* %101, align 8, !tbaa !7
  store i64 %344, i64* %109, align 16, !tbaa !7
  %359 = load i64, i64* %110, align 16, !tbaa !7
  store i64 %350, i64* %114, align 8, !tbaa !7
  store i64 %349, i64* %112, align 8, !tbaa !7
  store i64 %343, i64* %120, align 8, !tbaa !7
  %360 = load i64, i64* %121, align 8, !tbaa !7
  store i64 %348, i64* %125, align 16, !tbaa !7
  store i64 %347, i64* %123, align 8, !tbaa !7
  store i64 %342, i64* %132, align 16, !tbaa !7
  %361 = load i64, i64* %133, align 16, !tbaa !7
  %362 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx1035 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 %362
  %363 = bitcast [5 x double]* %arrayidx1035 to i64*
  %364 = load i64, i64* %363, align 8, !tbaa !7
  store i64 %364, i64* %64, align 16, !tbaa !7
  %arrayidx1045 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 %362, i64 1
  %365 = bitcast double* %arrayidx1045 to i64*
  %366 = load i64, i64* %365, align 8, !tbaa !7
  store i64 %366, i64* %67, align 8, !tbaa !7
  %arrayidx1054 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 %362, i64 2
  %367 = bitcast double* %arrayidx1054 to i64*
  %368 = load i64, i64* %367, align 8, !tbaa !7
  store i64 %368, i64* %70, align 16, !tbaa !7
  %arrayidx1063 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 %362, i64 3
  %369 = bitcast double* %arrayidx1063 to i64*
  %370 = load i64, i64* %369, align 8, !tbaa !7
  store i64 %370, i64* %73, align 8, !tbaa !7
  %arrayidx1072 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 %362, i64 4
  %371 = bitcast double* %arrayidx1072 to i64*
  %372 = load i64, i64* %371, align 8, !tbaa !7
  store i64 %372, i64* %76, align 16, !tbaa !7
  store double %353, double* %341, align 16, !tbaa !7
  %arrayidx1086 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv.next
  %373 = load double, double* %arrayidx1086, align 8, !tbaa !7
  %mul1087 = fmul double %373, %353
  %arrayidx1093 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv.next
  %374 = load double, double* %arrayidx1093, align 8, !tbaa !7
  %sub1099 = fsub double %.in, %374
  %mul1100 = fmul double %sub1099, 4.000000e-01
  %375 = tail call double @llvm.fmuladd.f64(double %353, double %mul1087, double %mul1100)
  store double %375, double* %arrayidx165, align 8, !tbaa !7
  %mul1105 = fmul double %mul1087, %.in2786
  store double %mul1105, double* %arrayidx170, align 16, !tbaa !7
  %mul1110 = fmul double %mul1087, %.in2784
  store double %mul1110, double* %arrayidx175, align 8, !tbaa !7
  %neg1117 = fmul double %374, -4.000000e-01
  %376 = tail call double @llvm.fmuladd.f64(double %.in, double 1.400000e+00, double %neg1117)
  %mul1118 = fmul double %mul1087, %376
  store double %mul1118, double* %arrayidx183, align 16, !tbaa !7
  %mul1132 = fmul double %373, %.in2786
  %mul1135 = fmul double %373, %.in2784
  %mul1138 = fmul double %373, %.in
  %arrayidx1144 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv
  %377 = load double, double* %arrayidx1144, align 8, !tbaa !7
  %mul1147 = fmul double %377, %.in2788
  %mul1150 = fmul double %377, %.in2787
  %mul1153 = fmul double %377, %.in2785
  %mul1156 = fmul double %377, %.in2783
  %sub1157 = fsub double %mul1087, %mul1147
  %mul1158 = fmul double %sub1157, 0x402D555555555555
  store double %mul1158, double* %arrayidx223, align 8, !tbaa !7
  %sub1161 = fsub double %mul1132, %mul1150
  %mul1162 = fmul double %sub1161, 1.100000e+01
  store double %mul1162, double* %arrayidx227, align 8, !tbaa !7
  %sub1165 = fsub double %mul1135, %mul1153
  %mul1166 = fmul double %sub1165, 1.100000e+01
  store double %mul1166, double* %arrayidx231, align 8, !tbaa !7
  %mul1170 = fmul double %mul1132, %mul1132
  %378 = tail call double @llvm.fmuladd.f64(double %mul1087, double %mul1087, double %mul1170)
  %379 = tail call double @llvm.fmuladd.f64(double %mul1135, double %mul1135, double %378)
  %mul1173 = fmul double %mul1150, %mul1150
  %380 = tail call double @llvm.fmuladd.f64(double %mul1147, double %mul1147, double %mul1173)
  %381 = tail call double @llvm.fmuladd.f64(double %mul1153, double %mul1153, double %380)
  %sub1175 = fsub double %379, %381
  %382 = fneg double %mul1147
  %neg1179 = fmul double %mul1147, %382
  %383 = tail call double @llvm.fmuladd.f64(double %mul1087, double %mul1087, double %neg1179)
  %mul1180 = fmul double %383, 0x3FFD555555555555
  %384 = tail call double @llvm.fmuladd.f64(double %sub1175, double 0xC0151EB851EB851D, double %mul1180)
  %sub1181 = fsub double %mul1138, %mul1156
  %385 = tail call double @llvm.fmuladd.f64(double %sub1181, double 2.156000e+01, double %384)
  store double %385, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx1196 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 0
  %386 = load double, double* %arrayidx1196, align 8, !tbaa !7
  %387 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub1203 = fsub double %353, %387
  %388 = tail call double @llvm.fmuladd.f64(double %sub1203, double -5.500000e+00, double %386)
  %arrayidx1196.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 1
  %389 = load double, double* %arrayidx1196.1, align 8, !tbaa !7
  %390 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub1203.1 = fsub double %375, %390
  %391 = tail call double @llvm.fmuladd.f64(double %sub1203.1, double -5.500000e+00, double %389)
  %arrayidx1196.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 2
  %392 = load double, double* %arrayidx1196.2, align 8, !tbaa !7
  %393 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub1203.2 = fsub double %mul1105, %393
  %394 = tail call double @llvm.fmuladd.f64(double %sub1203.2, double -5.500000e+00, double %392)
  %arrayidx1196.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 3
  %395 = load double, double* %arrayidx1196.3, align 8, !tbaa !7
  %396 = load double, double* %arrayidx321.3, align 8, !tbaa !7
  %sub1203.3 = fsub double %mul1110, %396
  %397 = tail call double @llvm.fmuladd.f64(double %sub1203.3, double -5.500000e+00, double %395)
  %arrayidx1196.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 4
  %398 = load double, double* %arrayidx1196.4, align 8, !tbaa !7
  %399 = load double, double* %arrayidx321.4, align 16, !tbaa !7
  %sub1203.4 = fsub double %mul1118, %399
  %400 = tail call double @llvm.fmuladd.f64(double %sub1203.4, double -5.500000e+00, double %398)
  %401 = tail call double @llvm.fmuladd.f64(double %.in2789, double -2.000000e+00, double %.in2790)
  %402 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add1218 = fadd double %401, %402
  %403 = tail call double @llvm.fmuladd.f64(double %add1218, double 9.075000e+01, double %388)
  %404 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub1226 = fsub double %mul1158, %404
  %405 = tail call double @llvm.fmuladd.f64(double %sub1226, double 1.100000e+00, double %391)
  %406 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %407 = tail call double @llvm.fmuladd.f64(double %.in2788, double -2.000000e+00, double %406)
  %add1235 = fadd double %407, %353
  %408 = tail call double @llvm.fmuladd.f64(double %add1235, double 9.075000e+01, double %405)
  %409 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub1243 = fsub double %mul1162, %409
  %410 = tail call double @llvm.fmuladd.f64(double %sub1243, double 1.100000e+00, double %394)
  %411 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %412 = tail call double @llvm.fmuladd.f64(double %.in2787, double -2.000000e+00, double %411)
  %add1252 = fadd double %.in2786, %412
  %413 = tail call double @llvm.fmuladd.f64(double %add1252, double 9.075000e+01, double %410)
  %414 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub1260 = fsub double %mul1166, %414
  %415 = tail call double @llvm.fmuladd.f64(double %sub1260, double 1.100000e+00, double %397)
  %416 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %417 = tail call double @llvm.fmuladd.f64(double %.in2785, double -2.000000e+00, double %416)
  %add1269 = fadd double %.in2784, %417
  %418 = tail call double @llvm.fmuladd.f64(double %add1269, double 9.075000e+01, double %415)
  %419 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub1277 = fsub double %385, %419
  %420 = tail call double @llvm.fmuladd.f64(double %sub1277, double 1.100000e+00, double %400)
  %421 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %422 = tail call double @llvm.fmuladd.f64(double %.in2783, double -2.000000e+00, double %421)
  %add1286 = fadd double %.in, %422
  %423 = tail call double @llvm.fmuladd.f64(double %add1286, double 9.075000e+01, double %420)
  %424 = tail call double @llvm.fmuladd.f64(double %.in2790, double -4.000000e+00, double %.in2791)
  %425 = tail call double @llvm.fmuladd.f64(double %.in2789, double 6.000000e+00, double %424)
  %426 = tail call double @llvm.fmuladd.f64(double %402, double -4.000000e+00, double %425)
  %427 = load double, double* %arrayidx312, align 16, !tbaa !7
  %add1316 = fadd double %426, %427
  %428 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316, double %403)
  store double %428, double* %arrayidx1196, align 8, !tbaa !7
  %429 = load double, double* %arrayidx297.1, align 8, !tbaa !7
  %430 = tail call double @llvm.fmuladd.f64(double %406, double -4.000000e+00, double %429)
  %431 = tail call double @llvm.fmuladd.f64(double %.in2788, double 6.000000e+00, double %430)
  %432 = tail call double @llvm.fmuladd.f64(double %353, double -4.000000e+00, double %431)
  %433 = load double, double* %arrayidx263, align 8, !tbaa !7
  %add1316.1 = fadd double %432, %433
  %434 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316.1, double %408)
  store double %434, double* %arrayidx1196.1, align 8, !tbaa !7
  %435 = load double, double* %arrayidx297.2, align 16, !tbaa !7
  %436 = tail call double @llvm.fmuladd.f64(double %411, double -4.000000e+00, double %435)
  %437 = tail call double @llvm.fmuladd.f64(double %.in2787, double 6.000000e+00, double %436)
  %438 = tail call double @llvm.fmuladd.f64(double %.in2786, double -4.000000e+00, double %437)
  %439 = load double, double* %arrayidx271, align 16, !tbaa !7
  %add1316.2 = fadd double %438, %439
  %440 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316.2, double %413)
  store double %440, double* %arrayidx1196.2, align 8, !tbaa !7
  %441 = load double, double* %arrayidx297.3, align 8, !tbaa !7
  %442 = tail call double @llvm.fmuladd.f64(double %416, double -4.000000e+00, double %441)
  %443 = tail call double @llvm.fmuladd.f64(double %.in2785, double 6.000000e+00, double %442)
  %444 = tail call double @llvm.fmuladd.f64(double %.in2784, double -4.000000e+00, double %443)
  %445 = load double, double* %arrayidx279, align 8, !tbaa !7
  %add1316.3 = fadd double %444, %445
  %446 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316.3, double %418)
  store double %446, double* %arrayidx1196.3, align 8, !tbaa !7
  %447 = load double, double* %arrayidx297.4, align 16, !tbaa !7
  %448 = tail call double @llvm.fmuladd.f64(double %421, double -4.000000e+00, double %447)
  %449 = tail call double @llvm.fmuladd.f64(double %.in2783, double 6.000000e+00, double %448)
  %450 = tail call double @llvm.fmuladd.f64(double %.in, double -4.000000e+00, double %449)
  %451 = load double, double* %arrayidx287, align 16, !tbaa !7
  %add1316.4 = fadd double %450, %451
  %452 = tail call double @llvm.fmuladd.f64(double %neg618, double %add1316.4, double %423)
  store double %452, double* %arrayidx1196.4, align 8, !tbaa !7
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %453 = bitcast double %427 to i64
  %454 = bitcast double %406 to i64
  %455 = bitcast double %.in2788 to i64
  %456 = bitcast double %411 to i64
  %457 = bitcast double %.in2787 to i64
  %458 = bitcast double %416 to i64
  %459 = bitcast double %.in2785 to i64
  %460 = bitcast double %421 to i64
  %461 = bitcast double %.in2783 to i64
  br i1 %exitcond, label %for.end1332.loopexit, label %for.body978

for.end1332.loopexit:                             ; preds = %for.body978
  store double %.in2791, double* %340, align 16, !tbaa !7
  store double %.in2790, double* %arrayidx294, align 8, !tbaa !7
  store double %.in2789, double* %scevgep2779, align 16, !tbaa !7
  store i64 %357, i64* %85, align 8, !tbaa !7
  store double %.in2788, double* %arrayidx209, align 8, !tbaa !7
  store double %353, double* %arrayidx21, align 8, !tbaa !7
  store i64 %358, i64* %96, align 8, !tbaa !7
  store double %.in2787, double* %arrayidx212, align 16, !tbaa !7
  store double %.in2786, double* %arrayidx29, align 8, !tbaa !7
  store i64 %359, i64* %107, align 8, !tbaa !7
  store double %.in2785, double* %arrayidx215, align 8, !tbaa !7
  store double %.in2784, double* %arrayidx37, align 8, !tbaa !7
  store i64 %360, i64* %118, align 8, !tbaa !7
  store double %.in2783, double* %arrayidx218, align 16, !tbaa !7
  store double %.in, double* %arrayidx45, align 8, !tbaa !7
  store i64 %361, i64* %130, align 8, !tbaa !7
  br label %for.end1332

for.end1332:                                      ; preds = %for.end1332.loopexit, %if.end
  %462 = phi double [ %329, %if.end ], [ %451, %for.end1332.loopexit ]
  %463 = phi double [ %327, %if.end ], [ %.in, %for.end1332.loopexit ]
  %464 = phi i64 [ %339, %if.end ], [ %461, %for.end1332.loopexit ]
  %465 = phi i64 [ %338, %if.end ], [ %460, %for.end1332.loopexit ]
  %466 = phi double [ %323, %if.end ], [ %445, %for.end1332.loopexit ]
  %467 = phi double [ %321, %if.end ], [ %.in2784, %for.end1332.loopexit ]
  %468 = phi i64 [ %337, %if.end ], [ %459, %for.end1332.loopexit ]
  %469 = phi i64 [ %336, %if.end ], [ %458, %for.end1332.loopexit ]
  %470 = phi double [ %317, %if.end ], [ %439, %for.end1332.loopexit ]
  %471 = phi double [ %315, %if.end ], [ %.in2786, %for.end1332.loopexit ]
  %472 = phi i64 [ %335, %if.end ], [ %457, %for.end1332.loopexit ]
  %473 = phi i64 [ %334, %if.end ], [ %456, %for.end1332.loopexit ]
  %474 = phi double [ %311, %if.end ], [ %433, %for.end1332.loopexit ]
  %475 = phi double [ %309, %if.end ], [ %353, %for.end1332.loopexit ]
  %476 = phi i64 [ %333, %if.end ], [ %455, %for.end1332.loopexit ]
  %477 = phi i64 [ %332, %if.end ], [ %454, %for.end1332.loopexit ]
  %478 = phi i64 [ %331, %if.end ], [ %453, %for.end1332.loopexit ]
  %sub1334 = add nsw i32 %e, -2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  %479 = load i64, i64* %77, align 8, !tbaa !7
  store i64 %479, i64* %79, align 16, !tbaa !7
  %480 = load i64, i64* %80, align 16, !tbaa !7
  store i64 %480, i64* %77, align 8, !tbaa !7
  %481 = load i64, i64* %82, align 8, !tbaa !7
  store i64 %481, i64* %80, align 16, !tbaa !7
  store i64 %478, i64* %82, align 8, !tbaa !7
  %482 = load i64, i64* %85, align 8, !tbaa !7
  store i64 %482, i64* %87, align 16, !tbaa !7
  %483 = load i64, i64* %88, align 16, !tbaa !7
  store i64 %483, i64* %85, align 8, !tbaa !7
  store i64 %477, i64* %92, align 8, !tbaa !7
  store i64 %476, i64* %90, align 8, !tbaa !7
  store double %475, double* %arrayidx209, align 8, !tbaa !7
  store double %474, double* %arrayidx21, align 8, !tbaa !7
  %484 = load i64, i64* %96, align 8, !tbaa !7
  store i64 %484, i64* %98, align 8, !tbaa !7
  %485 = load i64, i64* %99, align 8, !tbaa !7
  store i64 %485, i64* %96, align 8, !tbaa !7
  store i64 %473, i64* %103, align 16, !tbaa !7
  store i64 %472, i64* %101, align 8, !tbaa !7
  store double %471, double* %arrayidx212, align 16, !tbaa !7
  store double %470, double* %arrayidx29, align 8, !tbaa !7
  %486 = load i64, i64* %107, align 8, !tbaa !7
  store i64 %486, i64* %109, align 16, !tbaa !7
  %487 = load i64, i64* %110, align 16, !tbaa !7
  store i64 %487, i64* %107, align 8, !tbaa !7
  store i64 %469, i64* %114, align 8, !tbaa !7
  store i64 %468, i64* %112, align 8, !tbaa !7
  store double %467, double* %arrayidx215, align 8, !tbaa !7
  store double %466, double* %arrayidx37, align 8, !tbaa !7
  %488 = load i64, i64* %118, align 8, !tbaa !7
  store i64 %488, i64* %120, align 8, !tbaa !7
  %489 = load i64, i64* %121, align 8, !tbaa !7
  store i64 %489, i64* %118, align 8, !tbaa !7
  store i64 %465, i64* %125, align 16, !tbaa !7
  store i64 %464, i64* %123, align 8, !tbaa !7
  store double %463, double* %arrayidx218, align 16, !tbaa !7
  store double %462, double* %arrayidx45, align 8, !tbaa !7
  %490 = load i64, i64* %130, align 8, !tbaa !7
  store i64 %490, i64* %132, align 16, !tbaa !7
  %491 = load i64, i64* %133, align 16, !tbaa !7
  store i64 %491, i64* %130, align 8, !tbaa !7
  %sub1335 = add nsw i32 %e, -1
  %idxprom1389 = sext i32 %sub1335 to i64
  %arrayidx1390 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 %idxprom1389
  %492 = bitcast [5 x double]* %arrayidx1390 to i64*
  %493 = load i64, i64* %492, align 8, !tbaa !7
  store i64 %493, i64* %64, align 16, !tbaa !7
  %arrayidx1400 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 %idxprom1389, i64 1
  %494 = bitcast double* %arrayidx1400 to i64*
  %495 = load i64, i64* %494, align 8, !tbaa !7
  store i64 %495, i64* %67, align 8, !tbaa !7
  %arrayidx1409 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 %idxprom1389, i64 2
  %496 = bitcast double* %arrayidx1409 to i64*
  %497 = load i64, i64* %496, align 8, !tbaa !7
  store i64 %497, i64* %70, align 16, !tbaa !7
  %arrayidx1418 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 %idxprom1389, i64 3
  %498 = bitcast double* %arrayidx1418 to i64*
  %499 = load i64, i64* %498, align 8, !tbaa !7
  store i64 %499, i64* %73, align 8, !tbaa !7
  %arrayidx1427 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %5, i64 %idxprom, i64 %idxprom8, i64 %idxprom1389, i64 4
  %500 = bitcast double* %arrayidx1427 to i64*
  %501 = load i64, i64* %500, align 8, !tbaa !7
  store i64 %501, i64* %76, align 16, !tbaa !7
  %502 = getelementptr [5 x double], [5 x double]* %arrayidx140, i64 0, i64 0
  store double %474, double* %502, align 16, !tbaa !7
  %idxprom1440 = sext i32 %sub1334 to i64
  %arrayidx1441 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 %idxprom1440
  %503 = load double, double* %arrayidx1441, align 8, !tbaa !7
  %mul1442 = fmul double %503, %474
  %arrayidx1448 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 %idxprom8, i64 %idxprom1440
  %504 = load double, double* %arrayidx1448, align 8, !tbaa !7
  %sub1454 = fsub double %462, %504
  %mul1455 = fmul double %sub1454, 4.000000e-01
  %505 = tail call double @llvm.fmuladd.f64(double %474, double %mul1442, double %mul1455)
  store double %505, double* %arrayidx165, align 8, !tbaa !7
  %mul1460 = fmul double %mul1442, %470
  store double %mul1460, double* %arrayidx170, align 16, !tbaa !7
  %mul1465 = fmul double %mul1442, %466
  store double %mul1465, double* %arrayidx175, align 8, !tbaa !7
  %neg1472 = fmul double %504, -4.000000e-01
  %506 = tail call double @llvm.fmuladd.f64(double %462, double 1.400000e+00, double %neg1472)
  %mul1473 = fmul double %mul1442, %506
  store double %mul1473, double* %arrayidx183, align 16, !tbaa !7
  %mul1487 = fmul double %503, %470
  %mul1490 = fmul double %503, %466
  %mul1493 = fmul double %503, %462
  %idxprom1498 = sext i32 %sub975 to i64
  %arrayidx1499 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 %idxprom1498
  %507 = load double, double* %arrayidx1499, align 8, !tbaa !7
  %mul1502 = fmul double %507, %475
  %mul1505 = fmul double %507, %471
  %mul1508 = fmul double %507, %467
  %mul1511 = fmul double %507, %463
  %sub1512 = fsub double %mul1442, %mul1502
  %mul1513 = fmul double %sub1512, 0x402D555555555555
  store double %mul1513, double* %arrayidx223, align 8, !tbaa !7
  %sub1516 = fsub double %mul1487, %mul1505
  %mul1517 = fmul double %sub1516, 1.100000e+01
  store double %mul1517, double* %arrayidx227, align 8, !tbaa !7
  %sub1520 = fsub double %mul1490, %mul1508
  %mul1521 = fmul double %sub1520, 1.100000e+01
  store double %mul1521, double* %arrayidx231, align 8, !tbaa !7
  %mul1525 = fmul double %mul1487, %mul1487
  %508 = tail call double @llvm.fmuladd.f64(double %mul1442, double %mul1442, double %mul1525)
  %509 = tail call double @llvm.fmuladd.f64(double %mul1490, double %mul1490, double %508)
  %mul1528 = fmul double %mul1505, %mul1505
  %510 = tail call double @llvm.fmuladd.f64(double %mul1502, double %mul1502, double %mul1528)
  %511 = tail call double @llvm.fmuladd.f64(double %mul1508, double %mul1508, double %510)
  %sub1530 = fsub double %509, %511
  %512 = fneg double %mul1502
  %neg1534 = fmul double %mul1502, %512
  %513 = tail call double @llvm.fmuladd.f64(double %mul1442, double %mul1442, double %neg1534)
  %mul1535 = fmul double %513, 0x3FFD555555555555
  %514 = tail call double @llvm.fmuladd.f64(double %sub1530, double 0xC0151EB851EB851D, double %mul1535)
  %sub1536 = fsub double %mul1493, %mul1511
  %515 = tail call double @llvm.fmuladd.f64(double %sub1536, double 2.156000e+01, double %514)
  store double %515, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx1551 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %idxprom1498, i64 0
  %516 = load double, double* %arrayidx1551, align 8, !tbaa !7
  %517 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub1558 = fsub double %474, %517
  %518 = tail call double @llvm.fmuladd.f64(double %sub1558, double -5.500000e+00, double %516)
  %arrayidx1551.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %idxprom1498, i64 1
  %519 = load double, double* %arrayidx1551.1, align 8, !tbaa !7
  %520 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub1558.1 = fsub double %505, %520
  %521 = tail call double @llvm.fmuladd.f64(double %sub1558.1, double -5.500000e+00, double %519)
  %arrayidx1551.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %idxprom1498, i64 2
  %522 = load double, double* %arrayidx1551.2, align 8, !tbaa !7
  %523 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub1558.2 = fsub double %mul1460, %523
  %524 = tail call double @llvm.fmuladd.f64(double %sub1558.2, double -5.500000e+00, double %522)
  %arrayidx1551.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %idxprom1498, i64 3
  %525 = load double, double* %arrayidx1551.3, align 8, !tbaa !7
  %526 = load double, double* %arrayidx321.3, align 8, !tbaa !7
  %sub1558.3 = fsub double %mul1465, %526
  %527 = tail call double @llvm.fmuladd.f64(double %sub1558.3, double -5.500000e+00, double %525)
  %arrayidx1551.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %idxprom1498, i64 4
  %528 = load double, double* %arrayidx1551.4, align 8, !tbaa !7
  %529 = load double, double* %arrayidx321.4, align 16, !tbaa !7
  %sub1558.4 = fsub double %mul1473, %529
  %530 = tail call double @llvm.fmuladd.f64(double %sub1558.4, double -5.500000e+00, double %528)
  %531 = load double, double* %arrayidx294, align 8, !tbaa !7
  %532 = load double, double* %scevgep2779, align 16, !tbaa !7
  %533 = tail call double @llvm.fmuladd.f64(double %532, double -2.000000e+00, double %531)
  %534 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add1573 = fadd double %533, %534
  %535 = tail call double @llvm.fmuladd.f64(double %add1573, double 9.075000e+01, double %518)
  %536 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub1581 = fsub double %mul1513, %536
  %537 = tail call double @llvm.fmuladd.f64(double %sub1581, double 1.100000e+00, double %521)
  %538 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %539 = tail call double @llvm.fmuladd.f64(double %475, double -2.000000e+00, double %538)
  %add1590 = fadd double %539, %474
  %540 = tail call double @llvm.fmuladd.f64(double %add1590, double 9.075000e+01, double %537)
  %541 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub1598 = fsub double %mul1517, %541
  %542 = tail call double @llvm.fmuladd.f64(double %sub1598, double 1.100000e+00, double %524)
  %543 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %544 = tail call double @llvm.fmuladd.f64(double %471, double -2.000000e+00, double %543)
  %add1607 = fadd double %470, %544
  %545 = tail call double @llvm.fmuladd.f64(double %add1607, double 9.075000e+01, double %542)
  %546 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub1615 = fsub double %mul1521, %546
  %547 = tail call double @llvm.fmuladd.f64(double %sub1615, double 1.100000e+00, double %527)
  %548 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %549 = tail call double @llvm.fmuladd.f64(double %467, double -2.000000e+00, double %548)
  %add1624 = fadd double %466, %549
  %550 = tail call double @llvm.fmuladd.f64(double %add1624, double 9.075000e+01, double %547)
  %551 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub1632 = fsub double %515, %551
  %552 = tail call double @llvm.fmuladd.f64(double %sub1632, double 1.100000e+00, double %530)
  %553 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %554 = tail call double @llvm.fmuladd.f64(double %463, double -2.000000e+00, double %553)
  %add1641 = fadd double %462, %554
  %555 = tail call double @llvm.fmuladd.f64(double %add1641, double 9.075000e+01, double %552)
  %556 = load double, double* %arrayidx297, align 16, !tbaa !7
  %557 = tail call double @llvm.fmuladd.f64(double %531, double -4.000000e+00, double %556)
  %558 = tail call double @llvm.fmuladd.f64(double %532, double 6.000000e+00, double %557)
  %559 = tail call double @llvm.fmuladd.f64(double %534, double -4.000000e+00, double %558)
  %560 = tail call double @llvm.fmuladd.f64(double %neg618, double %559, double %535)
  store double %560, double* %arrayidx1551, align 8, !tbaa !7
  %561 = load double, double* %arrayidx297.1, align 8, !tbaa !7
  %562 = tail call double @llvm.fmuladd.f64(double %538, double -4.000000e+00, double %561)
  %563 = load double, double* %arrayidx209, align 8, !tbaa !7
  %564 = tail call double @llvm.fmuladd.f64(double %563, double 6.000000e+00, double %562)
  %565 = load double, double* %arrayidx21, align 8, !tbaa !7
  %566 = tail call double @llvm.fmuladd.f64(double %565, double -4.000000e+00, double %564)
  %567 = tail call double @llvm.fmuladd.f64(double %neg618, double %566, double %540)
  store double %567, double* %arrayidx1551.1, align 8, !tbaa !7
  %568 = load double, double* %arrayidx297.2, align 16, !tbaa !7
  %569 = tail call double @llvm.fmuladd.f64(double %543, double -4.000000e+00, double %568)
  %570 = load double, double* %arrayidx212, align 16, !tbaa !7
  %571 = tail call double @llvm.fmuladd.f64(double %570, double 6.000000e+00, double %569)
  %572 = load double, double* %arrayidx29, align 8, !tbaa !7
  %573 = tail call double @llvm.fmuladd.f64(double %572, double -4.000000e+00, double %571)
  %574 = tail call double @llvm.fmuladd.f64(double %neg618, double %573, double %545)
  store double %574, double* %arrayidx1551.2, align 8, !tbaa !7
  %575 = load double, double* %arrayidx297.3, align 8, !tbaa !7
  %576 = tail call double @llvm.fmuladd.f64(double %548, double -4.000000e+00, double %575)
  %577 = load double, double* %arrayidx215, align 8, !tbaa !7
  %578 = tail call double @llvm.fmuladd.f64(double %577, double 6.000000e+00, double %576)
  %579 = load double, double* %arrayidx37, align 8, !tbaa !7
  %580 = tail call double @llvm.fmuladd.f64(double %579, double -4.000000e+00, double %578)
  %581 = tail call double @llvm.fmuladd.f64(double %neg618, double %580, double %550)
  store double %581, double* %arrayidx1551.3, align 8, !tbaa !7
  %582 = load double, double* %arrayidx297.4, align 16, !tbaa !7
  %583 = tail call double @llvm.fmuladd.f64(double %553, double -4.000000e+00, double %582)
  %584 = load double, double* %arrayidx218, align 16, !tbaa !7
  %585 = tail call double @llvm.fmuladd.f64(double %584, double 6.000000e+00, double %583)
  %586 = load double, double* %arrayidx45, align 8, !tbaa !7
  %587 = tail call double @llvm.fmuladd.f64(double %586, double -4.000000e+00, double %585)
  %588 = tail call double @llvm.fmuladd.f64(double %neg618, double %587, double %555)
  store double %588, double* %arrayidx1551.4, align 8, !tbaa !7
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %1, i8* nonnull align 8 dereferenceable(40) %scevgep27742775, i64 40, i1 false)
  %589 = getelementptr inbounds [5 x [5 x double]], [5 x [5 x double]]* %aa, i64 0, i64 0, i64 0
  store double %531, double* %589, align 16, !tbaa !7
  store double %532, double* %arrayidx294, align 8, !tbaa !7
  store double %534, double* %scevgep2779, align 16, !tbaa !7
  %590 = load i64, i64* %84, align 16, !tbaa !7
  store i64 %590, i64* %82, align 8, !tbaa !7
  %591 = load i64, i64* %85, align 8, !tbaa !7
  store i64 %591, i64* %87, align 16, !tbaa !7
  %592 = load i64, i64* %88, align 16, !tbaa !7
  store i64 %592, i64* %85, align 8, !tbaa !7
  store double %538, double* %arrayidx297.1, align 8, !tbaa !7
  store double %563, double* %arrayidx294.1, align 8, !tbaa !7
  store double %565, double* %arrayidx209, align 8, !tbaa !7
  %593 = load i64, i64* %67, align 8, !tbaa !7
  store i64 %593, i64* %13, align 8, !tbaa !7
  %594 = load i64, i64* %96, align 8, !tbaa !7
  store i64 %594, i64* %98, align 8, !tbaa !7
  %595 = load i64, i64* %99, align 8, !tbaa !7
  store i64 %595, i64* %96, align 8, !tbaa !7
  store double %543, double* %arrayidx297.2, align 16, !tbaa !7
  store double %570, double* %arrayidx294.2, align 8, !tbaa !7
  store double %572, double* %arrayidx212, align 16, !tbaa !7
  %596 = load i64, i64* %70, align 16, !tbaa !7
  store i64 %596, i64* %16, align 8, !tbaa !7
  %597 = load i64, i64* %107, align 8, !tbaa !7
  store i64 %597, i64* %109, align 16, !tbaa !7
  %598 = load i64, i64* %110, align 16, !tbaa !7
  store i64 %598, i64* %107, align 8, !tbaa !7
  store double %548, double* %arrayidx297.3, align 8, !tbaa !7
  store double %577, double* %arrayidx294.3, align 8, !tbaa !7
  store double %579, double* %arrayidx215, align 8, !tbaa !7
  %599 = load i64, i64* %73, align 8, !tbaa !7
  store i64 %599, i64* %19, align 8, !tbaa !7
  %600 = load i64, i64* %118, align 8, !tbaa !7
  store i64 %600, i64* %120, align 8, !tbaa !7
  %601 = load i64, i64* %121, align 8, !tbaa !7
  store i64 %601, i64* %118, align 8, !tbaa !7
  store double %553, double* %arrayidx297.4, align 16, !tbaa !7
  store double %584, double* %arrayidx294.4, align 8, !tbaa !7
  store double %586, double* %arrayidx218, align 16, !tbaa !7
  %602 = load i64, i64* %76, align 16, !tbaa !7
  store i64 %602, i64* %22, align 8, !tbaa !7
  %603 = load i64, i64* %130, align 8, !tbaa !7
  store i64 %603, i64* %132, align 16, !tbaa !7
  %604 = load i64, i64* %133, align 16, !tbaa !7
  store i64 %604, i64* %130, align 8, !tbaa !7
  store i64 %593, i64* %42, align 16, !tbaa !7
  %.cast2674 = bitcast i64 %593 to double
  %arrayidx1744 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 %idxprom1389
  %605 = load double, double* %arrayidx1744, align 8, !tbaa !7
  %mul1745 = fmul double %605, %.cast2674
  %arrayidx1751 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %6, i64 %idxprom, i64 %idxprom8, i64 %idxprom1389
  %606 = load double, double* %arrayidx1751, align 8, !tbaa !7
  %607 = bitcast i64 %602 to double
  %sub1757 = fsub double %607, %606
  %mul1758 = fmul double %sub1757, 4.000000e-01
  %608 = tail call double @llvm.fmuladd.f64(double %.cast2674, double %mul1745, double %mul1758)
  store double %608, double* %arrayidx165, align 8, !tbaa !7
  %609 = bitcast i64 %596 to double
  %mul1763 = fmul double %mul1745, %609
  store double %mul1763, double* %arrayidx170, align 16, !tbaa !7
  %610 = bitcast i64 %599 to double
  %mul1768 = fmul double %mul1745, %610
  store double %mul1768, double* %arrayidx175, align 8, !tbaa !7
  %neg1775 = fmul double %606, -4.000000e-01
  %611 = tail call double @llvm.fmuladd.f64(double %607, double 1.400000e+00, double %neg1775)
  %mul1776 = fmul double %mul1745, %611
  store double %mul1776, double* %arrayidx183, align 16, !tbaa !7
  %mul1790 = fmul double %605, %609
  %mul1793 = fmul double %605, %610
  %mul1796 = fmul double %605, %607
  %612 = load double, double* %arrayidx1441, align 8, !tbaa !7
  %mul1805 = fmul double %612, %565
  %mul1808 = fmul double %612, %572
  %mul1811 = fmul double %612, %579
  %mul1814 = fmul double %612, %586
  %sub1815 = fsub double %mul1745, %mul1805
  %mul1816 = fmul double %sub1815, 0x402D555555555555
  store double %mul1816, double* %arrayidx223, align 8, !tbaa !7
  %sub1819 = fsub double %mul1790, %mul1808
  %mul1820 = fmul double %sub1819, 1.100000e+01
  store double %mul1820, double* %arrayidx227, align 8, !tbaa !7
  %sub1823 = fsub double %mul1793, %mul1811
  %mul1824 = fmul double %sub1823, 1.100000e+01
  store double %mul1824, double* %arrayidx231, align 8, !tbaa !7
  %mul1828 = fmul double %mul1790, %mul1790
  %613 = tail call double @llvm.fmuladd.f64(double %mul1745, double %mul1745, double %mul1828)
  %614 = tail call double @llvm.fmuladd.f64(double %mul1793, double %mul1793, double %613)
  %mul1831 = fmul double %mul1808, %mul1808
  %615 = tail call double @llvm.fmuladd.f64(double %mul1805, double %mul1805, double %mul1831)
  %616 = tail call double @llvm.fmuladd.f64(double %mul1811, double %mul1811, double %615)
  %sub1833 = fsub double %614, %616
  %617 = fneg double %mul1805
  %neg1837 = fmul double %mul1805, %617
  %618 = tail call double @llvm.fmuladd.f64(double %mul1745, double %mul1745, double %neg1837)
  %mul1838 = fmul double %618, 0x3FFD555555555555
  %619 = tail call double @llvm.fmuladd.f64(double %sub1833, double 0xC0151EB851EB851D, double %mul1838)
  %sub1839 = fsub double %mul1796, %mul1814
  %620 = tail call double @llvm.fmuladd.f64(double %sub1839, double 2.156000e+01, double %619)
  store double %620, double* %arrayidx247, align 8, !tbaa !7
  %arrayidx1854 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %idxprom1440, i64 0
  %621 = load double, double* %arrayidx1854, align 8, !tbaa !7
  %622 = load double, double* %arrayidx321, align 16, !tbaa !7
  %sub1861 = fsub double %.cast2674, %622
  %623 = tail call double @llvm.fmuladd.f64(double %sub1861, double -5.500000e+00, double %621)
  %arrayidx1854.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %idxprom1440, i64 1
  %624 = load double, double* %arrayidx1854.1, align 8, !tbaa !7
  %625 = load double, double* %arrayidx321.1, align 8, !tbaa !7
  %sub1861.1 = fsub double %608, %625
  %626 = tail call double @llvm.fmuladd.f64(double %sub1861.1, double -5.500000e+00, double %624)
  %arrayidx1854.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %idxprom1440, i64 2
  %627 = load double, double* %arrayidx1854.2, align 8, !tbaa !7
  %628 = load double, double* %arrayidx321.2, align 16, !tbaa !7
  %sub1861.2 = fsub double %mul1763, %628
  %629 = tail call double @llvm.fmuladd.f64(double %sub1861.2, double -5.500000e+00, double %627)
  %arrayidx1854.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %idxprom1440, i64 3
  %630 = load double, double* %arrayidx1854.3, align 8, !tbaa !7
  %631 = bitcast i64 %600 to double
  %sub1861.3 = fsub double %mul1768, %631
  %632 = tail call double @llvm.fmuladd.f64(double %sub1861.3, double -5.500000e+00, double %630)
  %arrayidx1854.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %31, i64 %idxprom, i64 %idxprom8, i64 %idxprom1440, i64 4
  %633 = load double, double* %arrayidx1854.4, align 8, !tbaa !7
  %634 = bitcast i64 %603 to double
  %sub1861.4 = fsub double %mul1776, %634
  %635 = tail call double @llvm.fmuladd.f64(double %sub1861.4, double -5.500000e+00, double %633)
  %636 = load double, double* %arrayidx294, align 8, !tbaa !7
  %637 = load double, double* %scevgep2779, align 16, !tbaa !7
  %638 = tail call double @llvm.fmuladd.f64(double %637, double -2.000000e+00, double %636)
  %639 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add1876 = fadd double %638, %639
  %640 = tail call double @llvm.fmuladd.f64(double %add1876, double 9.075000e+01, double %623)
  %641 = load double, double* %arrayidx333.1, align 8, !tbaa !7
  %sub1884 = fsub double %mul1816, %641
  %642 = tail call double @llvm.fmuladd.f64(double %sub1884, double 1.100000e+00, double %626)
  %643 = load double, double* %arrayidx294.1, align 8, !tbaa !7
  %644 = tail call double @llvm.fmuladd.f64(double %565, double -2.000000e+00, double %643)
  %add1893 = fadd double %644, %.cast2674
  %645 = tail call double @llvm.fmuladd.f64(double %add1893, double 9.075000e+01, double %642)
  %646 = load double, double* %arrayidx333.2, align 16, !tbaa !7
  %sub1901 = fsub double %mul1820, %646
  %647 = tail call double @llvm.fmuladd.f64(double %sub1901, double 1.100000e+00, double %629)
  %648 = load double, double* %arrayidx294.2, align 8, !tbaa !7
  %649 = tail call double @llvm.fmuladd.f64(double %572, double -2.000000e+00, double %648)
  %add1910 = fadd double %649, %609
  %650 = tail call double @llvm.fmuladd.f64(double %add1910, double 9.075000e+01, double %647)
  %651 = load double, double* %arrayidx333.3, align 8, !tbaa !7
  %sub1918 = fsub double %mul1824, %651
  %652 = tail call double @llvm.fmuladd.f64(double %sub1918, double 1.100000e+00, double %632)
  %653 = load double, double* %arrayidx294.3, align 8, !tbaa !7
  %654 = tail call double @llvm.fmuladd.f64(double %579, double -2.000000e+00, double %653)
  %add1927 = fadd double %654, %610
  %655 = tail call double @llvm.fmuladd.f64(double %add1927, double 9.075000e+01, double %652)
  %656 = load double, double* %arrayidx333.4, align 16, !tbaa !7
  %sub1935 = fsub double %620, %656
  %657 = tail call double @llvm.fmuladd.f64(double %sub1935, double 1.100000e+00, double %635)
  %658 = load double, double* %arrayidx294.4, align 8, !tbaa !7
  %659 = tail call double @llvm.fmuladd.f64(double %586, double -2.000000e+00, double %658)
  %add1944 = fadd double %659, %607
  %660 = tail call double @llvm.fmuladd.f64(double %add1944, double 9.075000e+01, double %657)
  %661 = load double, double* %arrayidx297, align 16, !tbaa !7
  %662 = tail call double @llvm.fmuladd.f64(double %636, double -4.000000e+00, double %661)
  %663 = tail call double @llvm.fmuladd.f64(double %637, double 5.000000e+00, double %662)
  %664 = tail call double @llvm.fmuladd.f64(double %neg618, double %663, double %640)
  store double %664, double* %arrayidx1854, align 8, !tbaa !7
  %665 = load double, double* %arrayidx297.1, align 8, !tbaa !7
  %666 = tail call double @llvm.fmuladd.f64(double %643, double -4.000000e+00, double %665)
  %667 = load double, double* %arrayidx209, align 8, !tbaa !7
  %668 = tail call double @llvm.fmuladd.f64(double %667, double 5.000000e+00, double %666)
  %669 = tail call double @llvm.fmuladd.f64(double %neg618, double %668, double %645)
  store double %669, double* %arrayidx1854.1, align 8, !tbaa !7
  %670 = load double, double* %arrayidx297.2, align 16, !tbaa !7
  %671 = tail call double @llvm.fmuladd.f64(double %648, double -4.000000e+00, double %670)
  %672 = load double, double* %arrayidx212, align 16, !tbaa !7
  %673 = tail call double @llvm.fmuladd.f64(double %672, double 5.000000e+00, double %671)
  %674 = tail call double @llvm.fmuladd.f64(double %neg618, double %673, double %650)
  store double %674, double* %arrayidx1854.2, align 8, !tbaa !7
  %675 = load double, double* %arrayidx297.3, align 8, !tbaa !7
  %676 = tail call double @llvm.fmuladd.f64(double %653, double -4.000000e+00, double %675)
  %677 = load double, double* %arrayidx215, align 8, !tbaa !7
  %678 = tail call double @llvm.fmuladd.f64(double %677, double 5.000000e+00, double %676)
  %679 = tail call double @llvm.fmuladd.f64(double %neg618, double %678, double %655)
  store double %679, double* %arrayidx1854.3, align 8, !tbaa !7
  %680 = load double, double* %arrayidx297.4, align 16, !tbaa !7
  %681 = tail call double @llvm.fmuladd.f64(double %658, double -4.000000e+00, double %680)
  %682 = load double, double* %arrayidx218, align 16, !tbaa !7
  %683 = tail call double @llvm.fmuladd.f64(double %682, double 5.000000e+00, double %681)
  %684 = tail call double @llvm.fmuladd.f64(double %neg618, double %683, double %660)
  store double %684, double* %arrayidx1854.4, align 8, !tbaa !7
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
