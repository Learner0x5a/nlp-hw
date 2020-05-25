; ModuleID = 'src/431.src'
source_filename = "src/431.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(double* readonly %a, double* nocapture readonly %b, double* nocapture readonly %c, double* nocapture readonly %d, double* nocapture readonly %e, double* nocapture readonly %f, double* nocapture readonly %g, double* %h, i32 %i, i32 %j, i32 %k) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %q = alloca [5 x double], align 16
  %r = alloca [5 x double], align 16
  %s = alloca [5 x double], align 16
  %t = alloca [5 x double], align 16
  %u = alloca [5 x double], align 16
  %0 = bitcast [5 x double]* %q to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #4
  %1 = bitcast [5 x double]* %r to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %1) #4
  %2 = bitcast [5 x double]* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #4
  %3 = bitcast [5 x double]* %t to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %3) #4
  %4 = bitcast [5 x double]* %u to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #4
  %call = tail call i64 @_Z13get_global_idj(i32 1) #5
  %5 = trunc i64 %call to i32
  %conv = add i32 %5, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %6 = trunc i64 %call1 to i32
  %conv3 = add i32 %6, 1
  %cmp = icmp sgt i32 %conv, %k
  %cmp5 = icmp sgt i32 %conv3, %j
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %7 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %8 = bitcast double* %b to [13 x [13 x double]]*
  %9 = bitcast double* %c to [13 x [13 x double]]*
  %10 = bitcast double* %d to [13 x [13 x double]]*
  %11 = bitcast double* %e to [13 x [13 x double]]*
  %12 = bitcast double* %f to [13 x [13 x double]]*
  %13 = bitcast double* %g to [13 x [13 x double]]*
  %14 = bitcast double* %h to [13 x [13 x [5 x double]]]*
  %idxprom = sext i32 %conv to i64
  %idxprom7 = sext i32 %conv3 to i64
  %arrayidx8 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7
  %15 = bitcast [13 x [5 x double]]* %arrayidx8 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !7
  %arrayidx11 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 0
  %17 = bitcast [5 x double]* %q to i64*
  store i64 %16, i64* %17, align 16, !tbaa !7
  %arrayidx17 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 0, i64 1
  %18 = bitcast double* %arrayidx17 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !7
  %arrayidx18 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 1
  %20 = bitcast double* %arrayidx18 to i64*
  store i64 %19, i64* %20, align 8, !tbaa !7
  %arrayidx24 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 0, i64 2
  %21 = bitcast double* %arrayidx24 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !7
  %arrayidx25 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 2
  %23 = bitcast double* %arrayidx25 to i64*
  store i64 %22, i64* %23, align 16, !tbaa !7
  %arrayidx31 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 0, i64 3
  %24 = bitcast double* %arrayidx31 to i64*
  %25 = load i64, i64* %24, align 8, !tbaa !7
  %arrayidx32 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 3
  %26 = bitcast double* %arrayidx32 to i64*
  store i64 %25, i64* %26, align 8, !tbaa !7
  %arrayidx38 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 0, i64 4
  %27 = bitcast double* %arrayidx38 to i64*
  %28 = load i64, i64* %27, align 8, !tbaa !7
  %arrayidx39 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 4
  %29 = bitcast double* %arrayidx39 to i64*
  store i64 %28, i64* %29, align 16, !tbaa !7
  %arrayidx44 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 1
  %30 = bitcast [5 x double]* %arrayidx44 to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !7
  %arrayidx46 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 0
  %32 = bitcast [5 x double]* %r to i64*
  store i64 %31, i64* %32, align 16, !tbaa !7
  %arrayidx52 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 1, i64 1
  %33 = bitcast double* %arrayidx52 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !7
  %arrayidx53 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 1
  %35 = bitcast double* %arrayidx53 to i64*
  store i64 %34, i64* %35, align 8, !tbaa !7
  %arrayidx59 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 1, i64 2
  %36 = bitcast double* %arrayidx59 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 2
  %38 = bitcast double* %arrayidx60 to i64*
  store i64 %37, i64* %38, align 16, !tbaa !7
  %arrayidx66 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 1, i64 3
  %39 = bitcast double* %arrayidx66 to i64*
  %40 = load i64, i64* %39, align 8, !tbaa !7
  %arrayidx67 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 3
  %41 = bitcast double* %arrayidx67 to i64*
  store i64 %40, i64* %41, align 8, !tbaa !7
  %arrayidx73 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 1, i64 4
  %42 = bitcast double* %arrayidx73 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !7
  %arrayidx74 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 4
  %44 = bitcast double* %arrayidx74 to i64*
  %arrayidx79 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 2
  %45 = bitcast [5 x double]* %arrayidx79 to i64*
  %46 = load i64, i64* %45, align 8, !tbaa !7
  %47 = bitcast [5 x double]* %s to i64*
  %arrayidx87 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 2, i64 1
  %48 = bitcast double* %arrayidx87 to i64*
  %49 = load i64, i64* %48, align 8, !tbaa !7
  %arrayidx88 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 1
  %50 = bitcast double* %arrayidx88 to i64*
  %arrayidx94 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 2, i64 2
  %51 = bitcast double* %arrayidx94 to i64*
  %52 = load i64, i64* %51, align 8, !tbaa !7
  %arrayidx95 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 2
  %53 = bitcast double* %arrayidx95 to i64*
  %arrayidx101 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 2, i64 3
  %54 = bitcast double* %arrayidx101 to i64*
  %55 = load i64, i64* %54, align 8, !tbaa !7
  %arrayidx102 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 3
  %56 = bitcast double* %arrayidx102 to i64*
  %arrayidx108 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 2, i64 4
  %57 = bitcast double* %arrayidx108 to i64*
  %58 = load i64, i64* %57, align 8, !tbaa !7
  %arrayidx109 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 4
  %59 = bitcast double* %arrayidx109 to i64*
  %arrayidx114 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom7, i64 0
  %60 = load double, double* %arrayidx114, align 8, !tbaa !7
  %arrayidx119 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom7, i64 1
  %61 = load double, double* %arrayidx119, align 8, !tbaa !7
  %arrayidx124 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom7, i64 0
  %62 = load double, double* %arrayidx124, align 8, !tbaa !7
  %arrayidx129 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom7, i64 1
  %63 = load double, double* %arrayidx129, align 8, !tbaa !7
  %arrayidx134 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom, i64 %idxprom7, i64 0
  %64 = load double, double* %arrayidx134, align 8, !tbaa !7
  %arrayidx139 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom, i64 %idxprom7, i64 1
  %65 = load double, double* %arrayidx139, align 8, !tbaa !7
  %arrayidx144 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom, i64 %idxprom7, i64 0
  %66 = load double, double* %arrayidx144, align 8, !tbaa !7
  %arrayidx149 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom, i64 %idxprom7, i64 1
  %67 = load double, double* %arrayidx149, align 8, !tbaa !7
  %arrayidx154 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom, i64 %idxprom7, i64 0
  %68 = load double, double* %arrayidx154, align 8, !tbaa !7
  %arrayidx159 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom, i64 %idxprom7, i64 1
  %69 = load double, double* %arrayidx159, align 8, !tbaa !7
  %arrayidx164 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %13, i64 %idxprom, i64 %idxprom7, i64 0
  %70 = load double, double* %arrayidx164, align 8, !tbaa !7
  %arrayidx169 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %13, i64 %idxprom, i64 %idxprom7, i64 1
  %71 = load double, double* %arrayidx169, align 8, !tbaa !7
  %arrayidx170 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 0
  %72 = bitcast [5 x double]* %t to i64*
  %73 = load i64, i64* %72, align 16, !tbaa !7
  %74 = bitcast [5 x double]* %u to i64*
  store i64 %73, i64* %74, align 16, !tbaa !7
  %arrayidx172 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 1
  %75 = bitcast double* %arrayidx172 to i64*
  %76 = load i64, i64* %75, align 8, !tbaa !7
  %arrayidx173 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 1
  %77 = bitcast double* %arrayidx173 to i64*
  store i64 %76, i64* %77, align 8, !tbaa !7
  %arrayidx174 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 2
  %78 = bitcast double* %arrayidx174 to i64*
  %79 = load i64, i64* %78, align 16, !tbaa !7
  %arrayidx175 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 2
  %80 = bitcast double* %arrayidx175 to i64*
  store i64 %79, i64* %80, align 16, !tbaa !7
  %arrayidx176 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 3
  %81 = bitcast double* %arrayidx176 to i64*
  %82 = load i64, i64* %81, align 8, !tbaa !7
  %arrayidx177 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 3
  %83 = bitcast double* %arrayidx177 to i64*
  store i64 %82, i64* %83, align 8, !tbaa !7
  %arrayidx178 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 4
  %84 = bitcast double* %arrayidx178 to i64*
  %85 = load i64, i64* %84, align 16, !tbaa !7
  %arrayidx179 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 4
  %86 = bitcast double* %arrayidx179 to i64*
  store i64 %85, i64* %86, align 16, !tbaa !7
  store i64 %16, i64* %72, align 16, !tbaa !7
  store i64 %19, i64* %75, align 8, !tbaa !7
  store i64 %22, i64* %78, align 16, !tbaa !7
  store i64 %25, i64* %81, align 8, !tbaa !7
  store i64 %28, i64* %84, align 16, !tbaa !7
  store i64 %31, i64* %17, align 16, !tbaa !7
  store i64 %34, i64* %20, align 8, !tbaa !7
  store i64 %37, i64* %23, align 16, !tbaa !7
  store i64 %40, i64* %26, align 8, !tbaa !7
  store i64 %43, i64* %29, align 16, !tbaa !7
  store i64 %46, i64* %32, align 16, !tbaa !7
  store i64 %49, i64* %35, align 8, !tbaa !7
  store i64 %52, i64* %38, align 16, !tbaa !7
  store i64 %55, i64* %41, align 8, !tbaa !7
  store i64 %58, i64* %44, align 16, !tbaa !7
  %arrayidx216 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 3
  %87 = bitcast [5 x double]* %arrayidx216 to i64*
  %88 = load i64, i64* %87, align 8, !tbaa !7
  store i64 %88, i64* %47, align 16, !tbaa !7
  %arrayidx226 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 3, i64 1
  %89 = bitcast double* %arrayidx226 to i64*
  %90 = load i64, i64* %89, align 8, !tbaa !7
  store i64 %90, i64* %50, align 8, !tbaa !7
  %arrayidx235 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 3, i64 2
  %91 = bitcast double* %arrayidx235 to i64*
  %92 = load i64, i64* %91, align 8, !tbaa !7
  store i64 %92, i64* %53, align 16, !tbaa !7
  %arrayidx244 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 3, i64 3
  %93 = bitcast double* %arrayidx244 to i64*
  %94 = load i64, i64* %93, align 8, !tbaa !7
  store i64 %94, i64* %56, align 8, !tbaa !7
  %arrayidx253 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 3, i64 4
  %95 = bitcast double* %arrayidx253 to i64*
  %96 = load i64, i64* %95, align 8, !tbaa !7
  store i64 %96, i64* %59, align 16, !tbaa !7
  %arrayidx261 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom7, i64 2
  %97 = load double, double* %arrayidx261, align 8, !tbaa !7
  %arrayidx268 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom7, i64 2
  %98 = load double, double* %arrayidx268, align 8, !tbaa !7
  %arrayidx275 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom, i64 %idxprom7, i64 2
  %99 = load double, double* %arrayidx275, align 8, !tbaa !7
  %arrayidx282 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom, i64 %idxprom7, i64 2
  %100 = load double, double* %arrayidx282, align 8, !tbaa !7
  %arrayidx289 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom, i64 %idxprom7, i64 2
  %101 = load double, double* %arrayidx289, align 8, !tbaa !7
  %arrayidx296 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %13, i64 %idxprom, i64 %idxprom7, i64 2
  %102 = load double, double* %arrayidx296, align 8, !tbaa !7
  %arrayidx303 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 1, i64 0
  %103 = load double, double* %arrayidx303, align 8, !tbaa !7
  %104 = bitcast i64 %46 to double
  %105 = bitcast i64 %31 to double
  %106 = tail call double @llvm.fmuladd.f64(double %105, double -2.000000e+00, double %104)
  %107 = bitcast i64 %16 to double
  %add307 = fadd double %106, %107
  %108 = tail call double @llvm.fmuladd.f64(double %add307, double 9.075000e+01, double %103)
  %109 = bitcast i64 %49 to double
  %110 = bitcast i64 %19 to double
  %sub = fsub double %109, %110
  %111 = tail call double @llvm.fmuladd.f64(double %sub, double -5.500000e+00, double %108)
  %arrayidx317 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 1, i64 1
  %112 = load double, double* %arrayidx317, align 8, !tbaa !7
  %113 = bitcast i64 %34 to double
  %114 = tail call double @llvm.fmuladd.f64(double %113, double -2.000000e+00, double %109)
  %add321 = fadd double %114, %110
  %115 = tail call double @llvm.fmuladd.f64(double %add321, double 9.075000e+01, double %112)
  %116 = tail call double @llvm.fmuladd.f64(double %61, double -2.000000e+00, double %97)
  %add322 = fadd double %60, %116
  %117 = tail call double @llvm.fmuladd.f64(double %add322, double 0x4030222222222222, double %115)
  %118 = fneg double %110
  %neg = fmul double %60, %118
  %119 = tail call double @llvm.fmuladd.f64(double %109, double %97, double %neg)
  %120 = bitcast i64 %58 to double
  %sub327 = fsub double %120, %102
  %121 = bitcast i64 %28 to double
  %sub329 = fsub double %sub327, %121
  %add330 = fadd double %70, %sub329
  %122 = tail call double @llvm.fmuladd.f64(double %add330, double 4.000000e-01, double %119)
  %123 = tail call double @llvm.fmuladd.f64(double %122, double -5.500000e+00, double %117)
  %arrayidx338 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 1, i64 2
  %124 = load double, double* %arrayidx338, align 8, !tbaa !7
  %125 = bitcast i64 %52 to double
  %126 = bitcast i64 %37 to double
  %127 = tail call double @llvm.fmuladd.f64(double %126, double -2.000000e+00, double %125)
  %128 = bitcast i64 %22 to double
  %add342 = fadd double %127, %128
  %129 = tail call double @llvm.fmuladd.f64(double %add342, double 9.075000e+01, double %124)
  %130 = tail call double @llvm.fmuladd.f64(double %63, double -2.000000e+00, double %98)
  %add343 = fadd double %62, %130
  %131 = tail call double @llvm.fmuladd.f64(double %add343, double 0x4028333333333334, double %129)
  %132 = fneg double %128
  %neg347 = fmul double %60, %132
  %133 = tail call double @llvm.fmuladd.f64(double %125, double %97, double %neg347)
  %134 = tail call double @llvm.fmuladd.f64(double %133, double -5.500000e+00, double %131)
  %arrayidx355 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 1, i64 3
  %135 = load double, double* %arrayidx355, align 8, !tbaa !7
  %136 = bitcast i64 %55 to double
  %137 = bitcast i64 %40 to double
  %138 = tail call double @llvm.fmuladd.f64(double %137, double -2.000000e+00, double %136)
  %139 = load double, double* %arrayidx176, align 8, !tbaa !7
  %add359 = fadd double %138, %139
  %140 = tail call double @llvm.fmuladd.f64(double %add359, double 9.075000e+01, double %135)
  %141 = tail call double @llvm.fmuladd.f64(double %65, double -2.000000e+00, double %99)
  %add360 = fadd double %64, %141
  %142 = tail call double @llvm.fmuladd.f64(double %add360, double 0x4028333333333334, double %140)
  %143 = fneg double %139
  %neg364 = fmul double %60, %143
  %144 = tail call double @llvm.fmuladd.f64(double %136, double %97, double %neg364)
  %145 = tail call double @llvm.fmuladd.f64(double %144, double -5.500000e+00, double %142)
  %arrayidx372 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 1, i64 4
  %146 = load double, double* %arrayidx372, align 8, !tbaa !7
  %147 = load double, double* %arrayidx39, align 16, !tbaa !7
  %148 = tail call double @llvm.fmuladd.f64(double %147, double -2.000000e+00, double %120)
  %add376 = fadd double %148, %121
  %149 = tail call double @llvm.fmuladd.f64(double %add376, double 9.075000e+01, double %146)
  %150 = tail call double @llvm.fmuladd.f64(double %67, double -2.000000e+00, double %100)
  %add377 = fadd double %66, %150
  %151 = tail call double @llvm.fmuladd.f64(double %add377, double 0xC0273B645A1CAC07, double %149)
  %152 = fmul double %61, -2.000000e+00
  %neg380 = fmul double %61, %152
  %153 = tail call double @llvm.fmuladd.f64(double %97, double %97, double %neg380)
  %154 = tail call double @llvm.fmuladd.f64(double %60, double %60, double %153)
  %155 = tail call double @llvm.fmuladd.f64(double %154, double 0x4000222222222222, double %151)
  %156 = fmul double %147, -2.000000e+00
  %neg385 = fmul double %69, %156
  %157 = tail call double @llvm.fmuladd.f64(double %120, double %101, double %neg385)
  %158 = tail call double @llvm.fmuladd.f64(double %121, double %68, double %157)
  %159 = tail call double @llvm.fmuladd.f64(double %158, double 0x4037B74BC6A7EF9D, double %155)
  %neg389 = fmul double %102, -4.000000e-01
  %160 = tail call double @llvm.fmuladd.f64(double %120, double 1.400000e+00, double %neg389)
  %neg393 = fmul double %70, -4.000000e-01
  %161 = tail call double @llvm.fmuladd.f64(double %121, double 1.400000e+00, double %neg393)
  %162 = fneg double %161
  %neg395 = fmul double %60, %162
  %163 = tail call double @llvm.fmuladd.f64(double %160, double %97, double %neg395)
  %164 = tail call double @llvm.fmuladd.f64(double %163, double -5.500000e+00, double %159)
  %165 = load double, double* %arrayidx11, align 16, !tbaa !7
  %166 = load double, double* %arrayidx46, align 16, !tbaa !7
  %neg406 = fmul double %166, -4.000000e+00
  %167 = tail call double @llvm.fmuladd.f64(double %165, double 5.000000e+00, double %neg406)
  %arrayidx408 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 0
  %168 = load double, double* %arrayidx408, align 16, !tbaa !7
  %add409 = fadd double %168, %167
  %169 = tail call double @llvm.fmuladd.f64(double %add409, double -2.500000e-01, double %111)
  store double %169, double* %arrayidx303, align 8, !tbaa !7
  %170 = load double, double* %arrayidx18, align 8, !tbaa !7
  %171 = load double, double* %arrayidx53, align 8, !tbaa !7
  %neg406.1 = fmul double %171, -4.000000e+00
  %172 = tail call double @llvm.fmuladd.f64(double %170, double 5.000000e+00, double %neg406.1)
  %173 = load double, double* %arrayidx88, align 8, !tbaa !7
  %add409.1 = fadd double %173, %172
  %174 = tail call double @llvm.fmuladd.f64(double %add409.1, double -2.500000e-01, double %123)
  store double %174, double* %arrayidx317, align 8, !tbaa !7
  %175 = load double, double* %arrayidx25, align 16, !tbaa !7
  %176 = load double, double* %arrayidx60, align 16, !tbaa !7
  %neg406.2 = fmul double %176, -4.000000e+00
  %177 = tail call double @llvm.fmuladd.f64(double %175, double 5.000000e+00, double %neg406.2)
  %178 = load double, double* %arrayidx95, align 16, !tbaa !7
  %add409.2 = fadd double %178, %177
  %179 = tail call double @llvm.fmuladd.f64(double %add409.2, double -2.500000e-01, double %134)
  store double %179, double* %arrayidx338, align 8, !tbaa !7
  %180 = load double, double* %arrayidx32, align 8, !tbaa !7
  %181 = load double, double* %arrayidx67, align 8, !tbaa !7
  %neg406.3 = fmul double %181, -4.000000e+00
  %182 = tail call double @llvm.fmuladd.f64(double %180, double 5.000000e+00, double %neg406.3)
  %183 = load double, double* %arrayidx102, align 8, !tbaa !7
  %add409.3 = fadd double %183, %182
  %184 = tail call double @llvm.fmuladd.f64(double %add409.3, double -2.500000e-01, double %145)
  store double %184, double* %arrayidx355, align 8, !tbaa !7
  %185 = load double, double* %arrayidx74, align 16, !tbaa !7
  %neg406.4 = fmul double %185, -4.000000e+00
  %186 = tail call double @llvm.fmuladd.f64(double %147, double 5.000000e+00, double %neg406.4)
  %187 = load double, double* %arrayidx109, align 16, !tbaa !7
  %add409.4 = fadd double %187, %186
  %188 = tail call double @llvm.fmuladd.f64(double %add409.4, double -2.500000e-01, double %164)
  store double %188, double* %arrayidx372, align 8, !tbaa !7
  store i64 %16, i64* %74, align 16, !tbaa !7
  store i64 %19, i64* %77, align 8, !tbaa !7
  store i64 %22, i64* %80, align 16, !tbaa !7
  store i64 %25, i64* %83, align 8, !tbaa !7
  store i64 %28, i64* %86, align 16, !tbaa !7
  store i64 %31, i64* %72, align 16, !tbaa !7
  store i64 %34, i64* %75, align 8, !tbaa !7
  store i64 %37, i64* %78, align 16, !tbaa !7
  store i64 %40, i64* %81, align 8, !tbaa !7
  store i64 %43, i64* %84, align 16, !tbaa !7
  store i64 %46, i64* %17, align 16, !tbaa !7
  store i64 %49, i64* %20, align 8, !tbaa !7
  store i64 %52, i64* %23, align 16, !tbaa !7
  store i64 %55, i64* %26, align 8, !tbaa !7
  store i64 %58, i64* %29, align 16, !tbaa !7
  store i64 %88, i64* %32, align 16, !tbaa !7
  store i64 %90, i64* %35, align 8, !tbaa !7
  store i64 %92, i64* %38, align 16, !tbaa !7
  store i64 %94, i64* %41, align 8, !tbaa !7
  store i64 %96, i64* %44, align 16, !tbaa !7
  %arrayidx464 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 4
  %189 = bitcast [5 x double]* %arrayidx464 to i64*
  %190 = load i64, i64* %189, align 8, !tbaa !7
  store i64 %190, i64* %47, align 16, !tbaa !7
  %arrayidx474 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 4, i64 1
  %191 = bitcast double* %arrayidx474 to i64*
  %192 = load i64, i64* %191, align 8, !tbaa !7
  store i64 %192, i64* %50, align 8, !tbaa !7
  %arrayidx483 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 4, i64 2
  %193 = bitcast double* %arrayidx483 to i64*
  %194 = load i64, i64* %193, align 8, !tbaa !7
  store i64 %194, i64* %53, align 16, !tbaa !7
  %arrayidx492 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 4, i64 3
  %195 = bitcast double* %arrayidx492 to i64*
  %196 = load i64, i64* %195, align 8, !tbaa !7
  store i64 %196, i64* %56, align 8, !tbaa !7
  %arrayidx501 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 4, i64 4
  %197 = bitcast double* %arrayidx501 to i64*
  %198 = load i64, i64* %197, align 8, !tbaa !7
  store i64 %198, i64* %59, align 16, !tbaa !7
  %arrayidx509 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom7, i64 3
  %199 = load double, double* %arrayidx509, align 8, !tbaa !7
  %arrayidx516 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom7, i64 3
  %200 = load double, double* %arrayidx516, align 8, !tbaa !7
  %arrayidx523 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom, i64 %idxprom7, i64 3
  %201 = load double, double* %arrayidx523, align 8, !tbaa !7
  %arrayidx530 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom, i64 %idxprom7, i64 3
  %202 = load double, double* %arrayidx530, align 8, !tbaa !7
  %arrayidx537 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom, i64 %idxprom7, i64 3
  %203 = load double, double* %arrayidx537, align 8, !tbaa !7
  %arrayidx544 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %13, i64 %idxprom, i64 %idxprom7, i64 3
  %204 = load double, double* %arrayidx544, align 8, !tbaa !7
  %arrayidx551 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 2, i64 0
  %205 = load double, double* %arrayidx551, align 8, !tbaa !7
  %206 = bitcast i64 %88 to double
  %207 = tail call double @llvm.fmuladd.f64(double %104, double -2.000000e+00, double %206)
  %add555 = fadd double %207, %105
  %208 = tail call double @llvm.fmuladd.f64(double %add555, double 9.075000e+01, double %205)
  %209 = bitcast i64 %90 to double
  %sub558 = fsub double %209, %113
  %210 = tail call double @llvm.fmuladd.f64(double %sub558, double -5.500000e+00, double %208)
  %arrayidx566 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 2, i64 1
  %211 = load double, double* %arrayidx566, align 8, !tbaa !7
  %212 = tail call double @llvm.fmuladd.f64(double %109, double -2.000000e+00, double %209)
  %add570 = fadd double %212, %113
  %213 = tail call double @llvm.fmuladd.f64(double %add570, double 9.075000e+01, double %211)
  %214 = tail call double @llvm.fmuladd.f64(double %97, double -2.000000e+00, double %199)
  %add571 = fadd double %61, %214
  %215 = tail call double @llvm.fmuladd.f64(double %add571, double 0x4030222222222222, double %213)
  %216 = fneg double %113
  %neg575 = fmul double %61, %216
  %217 = tail call double @llvm.fmuladd.f64(double %209, double %199, double %neg575)
  %218 = bitcast i64 %96 to double
  %sub577 = fsub double %218, %204
  %219 = bitcast i64 %43 to double
  %sub579 = fsub double %sub577, %219
  %add580 = fadd double %71, %sub579
  %220 = tail call double @llvm.fmuladd.f64(double %add580, double 4.000000e-01, double %217)
  %221 = tail call double @llvm.fmuladd.f64(double %220, double -5.500000e+00, double %215)
  %arrayidx588 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 2, i64 2
  %222 = load double, double* %arrayidx588, align 8, !tbaa !7
  %223 = bitcast i64 %92 to double
  %224 = tail call double @llvm.fmuladd.f64(double %125, double -2.000000e+00, double %223)
  %add592 = fadd double %224, %126
  %225 = tail call double @llvm.fmuladd.f64(double %add592, double 9.075000e+01, double %222)
  %226 = tail call double @llvm.fmuladd.f64(double %98, double -2.000000e+00, double %200)
  %add593 = fadd double %63, %226
  %227 = tail call double @llvm.fmuladd.f64(double %add593, double 0x4028333333333334, double %225)
  %228 = fneg double %126
  %neg597 = fmul double %61, %228
  %229 = tail call double @llvm.fmuladd.f64(double %223, double %199, double %neg597)
  %230 = tail call double @llvm.fmuladd.f64(double %229, double -5.500000e+00, double %227)
  %arrayidx605 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 2, i64 3
  %231 = load double, double* %arrayidx605, align 8, !tbaa !7
  %232 = bitcast i64 %94 to double
  %233 = tail call double @llvm.fmuladd.f64(double %136, double -2.000000e+00, double %232)
  %add609 = fadd double %233, %137
  %234 = tail call double @llvm.fmuladd.f64(double %add609, double 9.075000e+01, double %231)
  %235 = tail call double @llvm.fmuladd.f64(double %99, double -2.000000e+00, double %201)
  %add610 = fadd double %65, %235
  %236 = tail call double @llvm.fmuladd.f64(double %add610, double 0x4028333333333334, double %234)
  %237 = fneg double %137
  %neg614 = fmul double %61, %237
  %238 = tail call double @llvm.fmuladd.f64(double %232, double %199, double %neg614)
  %239 = tail call double @llvm.fmuladd.f64(double %238, double -5.500000e+00, double %236)
  %arrayidx622 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 2, i64 4
  %240 = load double, double* %arrayidx622, align 8, !tbaa !7
  %241 = tail call double @llvm.fmuladd.f64(double %120, double -2.000000e+00, double %218)
  %add626 = fadd double %241, %219
  %242 = tail call double @llvm.fmuladd.f64(double %add626, double 9.075000e+01, double %240)
  %243 = tail call double @llvm.fmuladd.f64(double %100, double -2.000000e+00, double %202)
  %add627 = fadd double %67, %243
  %244 = tail call double @llvm.fmuladd.f64(double %add627, double 0xC0273B645A1CAC07, double %242)
  %245 = fmul double %97, -2.000000e+00
  %neg630 = fmul double %97, %245
  %246 = tail call double @llvm.fmuladd.f64(double %199, double %199, double %neg630)
  %247 = tail call double @llvm.fmuladd.f64(double %61, double %61, double %246)
  %248 = tail call double @llvm.fmuladd.f64(double %247, double 0x4000222222222222, double %244)
  %249 = fmul double %120, -2.000000e+00
  %neg635 = fmul double %101, %249
  %250 = tail call double @llvm.fmuladd.f64(double %218, double %203, double %neg635)
  %251 = tail call double @llvm.fmuladd.f64(double %219, double %69, double %250)
  %252 = tail call double @llvm.fmuladd.f64(double %251, double 0x4037B74BC6A7EF9D, double %248)
  %neg639 = fmul double %204, -4.000000e-01
  %253 = tail call double @llvm.fmuladd.f64(double %218, double 1.400000e+00, double %neg639)
  %neg643 = fmul double %71, -4.000000e-01
  %254 = tail call double @llvm.fmuladd.f64(double %219, double 1.400000e+00, double %neg643)
  %255 = fneg double %254
  %neg645 = fmul double %61, %255
  %256 = tail call double @llvm.fmuladd.f64(double %253, double %199, double %neg645)
  %257 = tail call double @llvm.fmuladd.f64(double %256, double -5.500000e+00, double %252)
  %258 = load double, double* %arrayidx170, align 16, !tbaa !7
  %259 = load double, double* %arrayidx11, align 16, !tbaa !7
  %mul657 = fmul double %259, 6.000000e+00
  %260 = tail call double @llvm.fmuladd.f64(double %258, double -4.000000e+00, double %mul657)
  %261 = load double, double* %arrayidx46, align 16, !tbaa !7
  %262 = tail call double @llvm.fmuladd.f64(double %261, double -4.000000e+00, double %260)
  %263 = load double, double* %arrayidx408, align 16, !tbaa !7
  %add662 = fadd double %263, %262
  %264 = tail call double @llvm.fmuladd.f64(double %add662, double -2.500000e-01, double %210)
  store double %264, double* %arrayidx551, align 8, !tbaa !7
  %265 = load double, double* %arrayidx172, align 8, !tbaa !7
  %266 = load double, double* %arrayidx18, align 8, !tbaa !7
  %mul657.1 = fmul double %266, 6.000000e+00
  %267 = tail call double @llvm.fmuladd.f64(double %265, double -4.000000e+00, double %mul657.1)
  %268 = load double, double* %arrayidx53, align 8, !tbaa !7
  %269 = tail call double @llvm.fmuladd.f64(double %268, double -4.000000e+00, double %267)
  %270 = load double, double* %arrayidx88, align 8, !tbaa !7
  %add662.1 = fadd double %270, %269
  %271 = tail call double @llvm.fmuladd.f64(double %add662.1, double -2.500000e-01, double %221)
  store double %271, double* %arrayidx566, align 8, !tbaa !7
  %272 = load double, double* %arrayidx174, align 16, !tbaa !7
  %273 = load double, double* %arrayidx25, align 16, !tbaa !7
  %mul657.2 = fmul double %273, 6.000000e+00
  %274 = tail call double @llvm.fmuladd.f64(double %272, double -4.000000e+00, double %mul657.2)
  %275 = load double, double* %arrayidx60, align 16, !tbaa !7
  %276 = tail call double @llvm.fmuladd.f64(double %275, double -4.000000e+00, double %274)
  %277 = load double, double* %arrayidx95, align 16, !tbaa !7
  %add662.2 = fadd double %277, %276
  %278 = tail call double @llvm.fmuladd.f64(double %add662.2, double -2.500000e-01, double %230)
  store double %278, double* %arrayidx588, align 8, !tbaa !7
  %279 = load double, double* %arrayidx176, align 8, !tbaa !7
  %280 = load double, double* %arrayidx32, align 8, !tbaa !7
  %mul657.3 = fmul double %280, 6.000000e+00
  %281 = tail call double @llvm.fmuladd.f64(double %279, double -4.000000e+00, double %mul657.3)
  %282 = load double, double* %arrayidx67, align 8, !tbaa !7
  %283 = tail call double @llvm.fmuladd.f64(double %282, double -4.000000e+00, double %281)
  %284 = load double, double* %arrayidx102, align 8, !tbaa !7
  %add662.3 = fadd double %284, %283
  %285 = tail call double @llvm.fmuladd.f64(double %add662.3, double -2.500000e-01, double %239)
  store double %285, double* %arrayidx605, align 8, !tbaa !7
  %286 = load double, double* %arrayidx178, align 16, !tbaa !7
  %mul657.4 = fmul double %120, 6.000000e+00
  %287 = tail call double @llvm.fmuladd.f64(double %286, double -4.000000e+00, double %mul657.4)
  %288 = load double, double* %arrayidx74, align 16, !tbaa !7
  %289 = tail call double @llvm.fmuladd.f64(double %288, double -4.000000e+00, double %287)
  %290 = load double, double* %arrayidx109, align 16, !tbaa !7
  %add662.4 = fadd double %290, %289
  %291 = tail call double @llvm.fmuladd.f64(double %add662.4, double -2.500000e-01, double %257)
  store double %291, double* %arrayidx622, align 8, !tbaa !7
  %cmp6762102 = icmp slt i32 %i, 5
  %292 = bitcast double %258 to i64
  %293 = bitcast double %265 to i64
  %294 = bitcast double %272 to i64
  %295 = bitcast double %279 to i64
  %296 = bitcast double %286 to i64
  %297 = bitcast double %280 to i64
  %298 = bitcast double %288 to i64
  %.pre2144 = add nsw i32 %i, -1
  br i1 %cmp6762102, label %for.end938, label %for.body678.preheader

for.body678.preheader:                            ; preds = %if.end
  %wide.trip.count = zext i32 %.pre2144 to i64
  %299 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 0
  %300 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 0
  %301 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 0
  %arrayidx915 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 0
  br label %for.body678

for.body678:                                      ; preds = %for.body678, %for.body678.preheader
  %302 = phi double [ %290, %for.body678.preheader ], [ %418, %for.body678 ]
  %303 = phi double [ %284, %for.body678.preheader ], [ %411, %for.body678 ]
  %304 = phi double [ %277, %for.body678.preheader ], [ %405, %for.body678 ]
  %305 = phi double [ %270, %for.body678.preheader ], [ %399, %for.body678 ]
  %306 = phi double [ %263, %for.body678.preheader ], [ %393, %for.body678 ]
  %307 = phi i64 [ %298, %for.body678.preheader ], [ %427, %for.body678 ]
  %308 = phi double [ %282, %for.body678.preheader ], [ %303, %for.body678 ]
  %309 = phi double [ %275, %for.body678.preheader ], [ %304, %for.body678 ]
  %310 = phi double [ %268, %for.body678.preheader ], [ %305, %for.body678 ]
  %311 = phi double [ %261, %for.body678.preheader ], [ %306, %for.body678 ]
  %312 = phi i64 [ %58, %for.body678.preheader ], [ %426, %for.body678 ]
  %313 = phi i64 [ %297, %for.body678.preheader ], [ %425, %for.body678 ]
  %314 = phi double [ %273, %for.body678.preheader ], [ %309, %for.body678 ]
  %315 = phi double [ %266, %for.body678.preheader ], [ %310, %for.body678 ]
  %316 = phi double [ %259, %for.body678.preheader ], [ %311, %for.body678 ]
  %317 = phi i64 [ %296, %for.body678.preheader ], [ %424, %for.body678 ]
  %318 = phi i64 [ %295, %for.body678.preheader ], [ %423, %for.body678 ]
  %319 = phi i64 [ %294, %for.body678.preheader ], [ %422, %for.body678 ]
  %320 = phi i64 [ %293, %for.body678.preheader ], [ %421, %for.body678 ]
  %321 = phi i64 [ %292, %for.body678.preheader ], [ %420, %for.body678 ]
  %indvars.iv = phi i64 [ 3, %for.body678.preheader ], [ %indvars.iv.next, %for.body678 ]
  %v.02114 = phi double [ %97, %for.body678.preheader ], [ %w.02113, %for.body678 ]
  %w.02113 = phi double [ %199, %for.body678.preheader ], [ %333, %for.body678 ]
  %y.02112 = phi double [ %98, %for.body678.preheader ], [ %z.02111, %for.body678 ]
  %z.02111 = phi double [ %200, %for.body678.preheader ], [ %334, %for.body678 ]
  %al.02110 = phi double [ %204, %for.body678.preheader ], [ %338, %for.body678 ]
  %ak.02109 = phi double [ %102, %for.body678.preheader ], [ %al.02110, %for.body678 ]
  %ai.02108 = phi double [ %203, %for.body678.preheader ], [ %337, %for.body678 ]
  %ah.02107 = phi double [ %101, %for.body678.preheader ], [ %ai.02108, %for.body678 ]
  %af.02106 = phi double [ %202, %for.body678.preheader ], [ %336, %for.body678 ]
  %ae.02105 = phi double [ %100, %for.body678.preheader ], [ %af.02106, %for.body678 ]
  %ac.02104 = phi double [ %201, %for.body678.preheader ], [ %335, %for.body678 ]
  %ab.02103 = phi double [ %99, %for.body678.preheader ], [ %ac.02104, %for.body678 ]
  store i64 %321, i64* %74, align 16, !tbaa !7
  store i64 %320, i64* %77, align 8, !tbaa !7
  store i64 %319, i64* %80, align 16, !tbaa !7
  store i64 %318, i64* %83, align 8, !tbaa !7
  store i64 %317, i64* %86, align 16, !tbaa !7
  store i64 %313, i64* %81, align 8, !tbaa !7
  store i64 %312, i64* %84, align 16, !tbaa !7
  store i64 %307, i64* %29, align 16, !tbaa !7
  %322 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx725 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 %322
  %323 = bitcast [5 x double]* %arrayidx725 to i64*
  %324 = load i64, i64* %323, align 8, !tbaa !7
  store i64 %324, i64* %47, align 16, !tbaa !7
  %arrayidx735 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 %322, i64 1
  %325 = bitcast double* %arrayidx735 to i64*
  %326 = load i64, i64* %325, align 8, !tbaa !7
  store i64 %326, i64* %50, align 8, !tbaa !7
  %arrayidx744 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 %322, i64 2
  %327 = bitcast double* %arrayidx744 to i64*
  %328 = load i64, i64* %327, align 8, !tbaa !7
  store i64 %328, i64* %53, align 16, !tbaa !7
  %arrayidx753 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 %322, i64 3
  %329 = bitcast double* %arrayidx753 to i64*
  %330 = load i64, i64* %329, align 8, !tbaa !7
  store i64 %330, i64* %56, align 8, !tbaa !7
  %arrayidx762 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 %322, i64 4
  %331 = bitcast double* %arrayidx762 to i64*
  %332 = load i64, i64* %331, align 8, !tbaa !7
  store i64 %332, i64* %59, align 16, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx770 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom7, i64 %indvars.iv.next
  %333 = load double, double* %arrayidx770, align 8, !tbaa !7
  %arrayidx777 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom7, i64 %indvars.iv.next
  %334 = load double, double* %arrayidx777, align 8, !tbaa !7
  %arrayidx784 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom, i64 %idxprom7, i64 %indvars.iv.next
  %335 = load double, double* %arrayidx784, align 8, !tbaa !7
  %arrayidx791 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom, i64 %idxprom7, i64 %indvars.iv.next
  %336 = load double, double* %arrayidx791, align 8, !tbaa !7
  %arrayidx798 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom, i64 %idxprom7, i64 %indvars.iv.next
  %337 = load double, double* %arrayidx798, align 8, !tbaa !7
  %arrayidx805 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %13, i64 %idxprom, i64 %idxprom7, i64 %indvars.iv.next
  %338 = load double, double* %arrayidx805, align 8, !tbaa !7
  %arrayidx812 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %indvars.iv, i64 0
  %339 = load double, double* %arrayidx812, align 8, !tbaa !7
  %340 = tail call double @llvm.fmuladd.f64(double %311, double -2.000000e+00, double %306)
  %add816 = fadd double %340, %316
  %341 = tail call double @llvm.fmuladd.f64(double %add816, double 9.075000e+01, double %339)
  %sub819 = fsub double %305, %315
  %342 = tail call double @llvm.fmuladd.f64(double %sub819, double -5.500000e+00, double %341)
  %arrayidx827 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %indvars.iv, i64 1
  %343 = load double, double* %arrayidx827, align 8, !tbaa !7
  %344 = tail call double @llvm.fmuladd.f64(double %310, double -2.000000e+00, double %305)
  %add831 = fadd double %315, %344
  %345 = tail call double @llvm.fmuladd.f64(double %add831, double 9.075000e+01, double %343)
  %346 = tail call double @llvm.fmuladd.f64(double %w.02113, double -2.000000e+00, double %333)
  %add832 = fadd double %v.02114, %346
  %347 = tail call double @llvm.fmuladd.f64(double %add832, double 0x4030222222222222, double %345)
  %348 = fneg double %315
  %neg836 = fmul double %v.02114, %348
  %349 = tail call double @llvm.fmuladd.f64(double %305, double %333, double %neg836)
  %sub838 = fsub double %302, %338
  %350 = bitcast i64 %312 to double
  %sub840 = fsub double %sub838, %350
  %add841 = fadd double %ak.02109, %sub840
  %351 = tail call double @llvm.fmuladd.f64(double %add841, double 4.000000e-01, double %349)
  %352 = tail call double @llvm.fmuladd.f64(double %351, double -5.500000e+00, double %347)
  %arrayidx849 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %indvars.iv, i64 2
  %353 = load double, double* %arrayidx849, align 8, !tbaa !7
  %354 = tail call double @llvm.fmuladd.f64(double %309, double -2.000000e+00, double %304)
  %add853 = fadd double %354, %314
  %355 = tail call double @llvm.fmuladd.f64(double %add853, double 9.075000e+01, double %353)
  %356 = tail call double @llvm.fmuladd.f64(double %z.02111, double -2.000000e+00, double %334)
  %add854 = fadd double %y.02112, %356
  %357 = tail call double @llvm.fmuladd.f64(double %add854, double 0x4028333333333334, double %355)
  %358 = fneg double %314
  %neg858 = fmul double %v.02114, %358
  %359 = tail call double @llvm.fmuladd.f64(double %304, double %333, double %neg858)
  %360 = tail call double @llvm.fmuladd.f64(double %359, double -5.500000e+00, double %357)
  %arrayidx866 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %indvars.iv, i64 3
  %361 = load double, double* %arrayidx866, align 8, !tbaa !7
  %362 = tail call double @llvm.fmuladd.f64(double %308, double -2.000000e+00, double %303)
  %363 = load double, double* %arrayidx176, align 8, !tbaa !7
  %add870 = fadd double %362, %363
  %364 = tail call double @llvm.fmuladd.f64(double %add870, double 9.075000e+01, double %361)
  %365 = tail call double @llvm.fmuladd.f64(double %ac.02104, double -2.000000e+00, double %335)
  %add871 = fadd double %ab.02103, %365
  %366 = tail call double @llvm.fmuladd.f64(double %add871, double 0x4028333333333334, double %364)
  %367 = fneg double %363
  %neg875 = fmul double %v.02114, %367
  %368 = tail call double @llvm.fmuladd.f64(double %303, double %333, double %neg875)
  %369 = tail call double @llvm.fmuladd.f64(double %368, double -5.500000e+00, double %366)
  %arrayidx883 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %indvars.iv, i64 4
  %370 = load double, double* %arrayidx883, align 8, !tbaa !7
  %371 = load double, double* %arrayidx39, align 16, !tbaa !7
  %372 = tail call double @llvm.fmuladd.f64(double %371, double -2.000000e+00, double %302)
  %add887 = fadd double %372, %350
  %373 = tail call double @llvm.fmuladd.f64(double %add887, double 9.075000e+01, double %370)
  %374 = tail call double @llvm.fmuladd.f64(double %af.02106, double -2.000000e+00, double %336)
  %add888 = fadd double %ae.02105, %374
  %375 = tail call double @llvm.fmuladd.f64(double %add888, double 0xC0273B645A1CAC07, double %373)
  %376 = fmul double %w.02113, -2.000000e+00
  %neg891 = fmul double %w.02113, %376
  %377 = tail call double @llvm.fmuladd.f64(double %333, double %333, double %neg891)
  %378 = tail call double @llvm.fmuladd.f64(double %v.02114, double %v.02114, double %377)
  %379 = tail call double @llvm.fmuladd.f64(double %378, double 0x4000222222222222, double %375)
  %380 = fmul double %371, -2.000000e+00
  %neg896 = fmul double %ai.02108, %380
  %381 = tail call double @llvm.fmuladd.f64(double %302, double %337, double %neg896)
  %382 = tail call double @llvm.fmuladd.f64(double %350, double %ah.02107, double %381)
  %383 = tail call double @llvm.fmuladd.f64(double %382, double 0x4037B74BC6A7EF9D, double %379)
  %neg900 = fmul double %338, -4.000000e-01
  %384 = tail call double @llvm.fmuladd.f64(double %302, double 1.400000e+00, double %neg900)
  %neg904 = fmul double %ak.02109, -4.000000e-01
  %385 = tail call double @llvm.fmuladd.f64(double %350, double 1.400000e+00, double %neg904)
  %386 = fneg double %385
  %neg906 = fmul double %v.02114, %386
  %387 = tail call double @llvm.fmuladd.f64(double %384, double %333, double %neg906)
  %388 = tail call double @llvm.fmuladd.f64(double %387, double -5.500000e+00, double %383)
  %389 = load double, double* %arrayidx915, align 16, !tbaa !7
  %390 = tail call double @llvm.fmuladd.f64(double %316, double -4.000000e+00, double %389)
  %391 = tail call double @llvm.fmuladd.f64(double %311, double 6.000000e+00, double %390)
  %392 = tail call double @llvm.fmuladd.f64(double %306, double -4.000000e+00, double %391)
  %393 = load double, double* %arrayidx408, align 16, !tbaa !7
  %add924 = fadd double %392, %393
  %394 = tail call double @llvm.fmuladd.f64(double %add924, double -2.500000e-01, double %342)
  store double %394, double* %arrayidx812, align 8, !tbaa !7
  %395 = load double, double* %arrayidx173, align 8, !tbaa !7
  %396 = tail call double @llvm.fmuladd.f64(double %315, double -4.000000e+00, double %395)
  %397 = tail call double @llvm.fmuladd.f64(double %310, double 6.000000e+00, double %396)
  %398 = tail call double @llvm.fmuladd.f64(double %305, double -4.000000e+00, double %397)
  %399 = load double, double* %arrayidx88, align 8, !tbaa !7
  %add924.1 = fadd double %398, %399
  %400 = tail call double @llvm.fmuladd.f64(double %add924.1, double -2.500000e-01, double %352)
  store double %400, double* %arrayidx827, align 8, !tbaa !7
  %401 = load double, double* %arrayidx175, align 16, !tbaa !7
  %402 = tail call double @llvm.fmuladd.f64(double %314, double -4.000000e+00, double %401)
  %403 = tail call double @llvm.fmuladd.f64(double %309, double 6.000000e+00, double %402)
  %404 = tail call double @llvm.fmuladd.f64(double %304, double -4.000000e+00, double %403)
  %405 = load double, double* %arrayidx95, align 16, !tbaa !7
  %add924.2 = fadd double %404, %405
  %406 = tail call double @llvm.fmuladd.f64(double %add924.2, double -2.500000e-01, double %360)
  store double %406, double* %arrayidx849, align 8, !tbaa !7
  %407 = load double, double* %arrayidx177, align 8, !tbaa !7
  %408 = tail call double @llvm.fmuladd.f64(double %363, double -4.000000e+00, double %407)
  %409 = tail call double @llvm.fmuladd.f64(double %308, double 6.000000e+00, double %408)
  %410 = tail call double @llvm.fmuladd.f64(double %303, double -4.000000e+00, double %409)
  %411 = load double, double* %arrayidx102, align 8, !tbaa !7
  %add924.3 = fadd double %410, %411
  %412 = tail call double @llvm.fmuladd.f64(double %add924.3, double -2.500000e-01, double %369)
  store double %412, double* %arrayidx866, align 8, !tbaa !7
  %413 = load double, double* %arrayidx179, align 16, !tbaa !7
  %414 = load double, double* %arrayidx178, align 16, !tbaa !7
  %415 = tail call double @llvm.fmuladd.f64(double %414, double -4.000000e+00, double %413)
  %416 = tail call double @llvm.fmuladd.f64(double %371, double 6.000000e+00, double %415)
  %417 = tail call double @llvm.fmuladd.f64(double %302, double -4.000000e+00, double %416)
  %418 = load double, double* %arrayidx109, align 16, !tbaa !7
  %add924.4 = fadd double %417, %418
  %419 = tail call double @llvm.fmuladd.f64(double %add924.4, double -2.500000e-01, double %388)
  store double %419, double* %arrayidx883, align 8, !tbaa !7
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %420 = bitcast double %316 to i64
  %421 = bitcast double %315 to i64
  %422 = bitcast double %314 to i64
  %423 = bitcast double %363 to i64
  %424 = bitcast double %414 to i64
  %425 = bitcast double %308 to i64
  %426 = bitcast double %371 to i64
  %427 = bitcast double %302 to i64
  br i1 %exitcond, label %for.end938.loopexit, label %for.body678

for.end938.loopexit:                              ; preds = %for.body678
  store double %316, double* %299, align 16, !tbaa !7
  store double %315, double* %arrayidx172, align 8, !tbaa !7
  store double %314, double* %arrayidx174, align 16, !tbaa !7
  store double %311, double* %300, align 16, !tbaa !7
  store double %310, double* %arrayidx18, align 8, !tbaa !7
  store double %309, double* %arrayidx25, align 16, !tbaa !7
  store double %308, double* %arrayidx32, align 8, !tbaa !7
  store double %306, double* %301, align 16, !tbaa !7
  store double %305, double* %arrayidx53, align 8, !tbaa !7
  store double %304, double* %arrayidx60, align 16, !tbaa !7
  store double %303, double* %arrayidx67, align 8, !tbaa !7
  store double %302, double* %arrayidx74, align 16, !tbaa !7
  %.pre2141 = fmul double %al.02110, -4.000000e-01
  %.pre2142 = tail call double @llvm.fmuladd.f64(double %371, double 1.400000e+00, double %.pre2141)
  br label %for.end938

for.end938:                                       ; preds = %if.end, %for.end938.loopexit
  %neg1374.pre-phi = phi double [ %neg900, %for.end938.loopexit ], [ %neg639, %if.end ]
  %.pre-phi2143 = phi double [ %.pre2142, %for.end938.loopexit ], [ %160, %if.end ]
  %.pre-phi = phi double [ %371, %for.end938.loopexit ], [ %120, %if.end ]
  %.in = phi double [ %418, %for.end938.loopexit ], [ %290, %if.end ]
  %.in2145 = phi double [ %411, %for.end938.loopexit ], [ %284, %if.end ]
  %.in2146 = phi double [ %405, %for.end938.loopexit ], [ %277, %if.end ]
  %.in2147 = phi double [ %399, %for.end938.loopexit ], [ %270, %if.end ]
  %.in2148 = phi double [ %393, %for.end938.loopexit ], [ %263, %if.end ]
  %428 = phi double [ %302, %for.end938.loopexit ], [ %288, %if.end ]
  %429 = phi i64 [ %427, %for.end938.loopexit ], [ %298, %if.end ]
  %.in2149 = phi double [ %303, %for.end938.loopexit ], [ %282, %if.end ]
  %.in2150 = phi double [ %304, %for.end938.loopexit ], [ %275, %if.end ]
  %.in2151 = phi double [ %305, %for.end938.loopexit ], [ %268, %if.end ]
  %.in2152 = phi double [ %306, %for.end938.loopexit ], [ %261, %if.end ]
  %430 = phi i64 [ %426, %for.end938.loopexit ], [ %58, %if.end ]
  %431 = phi i64 [ %425, %for.end938.loopexit ], [ %297, %if.end ]
  %.in2153 = phi double [ %309, %for.end938.loopexit ], [ %273, %if.end ]
  %.in2154 = phi double [ %310, %for.end938.loopexit ], [ %266, %if.end ]
  %.in2155 = phi double [ %311, %for.end938.loopexit ], [ %259, %if.end ]
  %432 = phi i64 [ %424, %for.end938.loopexit ], [ %296, %if.end ]
  %433 = phi i64 [ %423, %for.end938.loopexit ], [ %295, %if.end ]
  %434 = phi i64 [ %422, %for.end938.loopexit ], [ %294, %if.end ]
  %435 = phi i64 [ %421, %for.end938.loopexit ], [ %293, %if.end ]
  %436 = phi i64 [ %420, %for.end938.loopexit ], [ %292, %if.end ]
  %ab.0.lcssa = phi double [ %ac.02104, %for.end938.loopexit ], [ %99, %if.end ]
  %ac.0.lcssa = phi double [ %335, %for.end938.loopexit ], [ %201, %if.end ]
  %ae.0.lcssa = phi double [ %af.02106, %for.end938.loopexit ], [ %100, %if.end ]
  %af.0.lcssa = phi double [ %336, %for.end938.loopexit ], [ %202, %if.end ]
  %ah.0.lcssa = phi double [ %ai.02108, %for.end938.loopexit ], [ %101, %if.end ]
  %ai.0.lcssa = phi double [ %337, %for.end938.loopexit ], [ %203, %if.end ]
  %ak.0.lcssa = phi double [ %al.02110, %for.end938.loopexit ], [ %102, %if.end ]
  %al.0.lcssa = phi double [ %338, %for.end938.loopexit ], [ %204, %if.end ]
  %z.0.lcssa = phi double [ %334, %for.end938.loopexit ], [ %200, %if.end ]
  %y.0.lcssa = phi double [ %z.02111, %for.end938.loopexit ], [ %98, %if.end ]
  %w.0.lcssa = phi double [ %333, %for.end938.loopexit ], [ %199, %if.end ]
  %v.0.lcssa = phi double [ %w.02113, %for.end938.loopexit ], [ %97, %if.end ]
  store i64 %436, i64* %74, align 16, !tbaa !7
  store i64 %435, i64* %77, align 8, !tbaa !7
  store i64 %434, i64* %80, align 16, !tbaa !7
  store i64 %433, i64* %83, align 8, !tbaa !7
  store i64 %432, i64* %86, align 16, !tbaa !7
  %437 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 0
  store double %.in2155, double* %437, align 16, !tbaa !7
  store double %.in2154, double* %arrayidx172, align 8, !tbaa !7
  store double %.in2153, double* %arrayidx174, align 16, !tbaa !7
  store i64 %431, i64* %81, align 8, !tbaa !7
  store i64 %430, i64* %84, align 16, !tbaa !7
  %438 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 0
  store double %.in2152, double* %438, align 16, !tbaa !7
  store double %.in2151, double* %arrayidx18, align 8, !tbaa !7
  store double %.in2150, double* %arrayidx25, align 16, !tbaa !7
  store double %.in2149, double* %arrayidx32, align 8, !tbaa !7
  store double %428, double* %arrayidx39, align 16, !tbaa !7
  %439 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 0
  store double %.in2148, double* %439, align 16, !tbaa !7
  store double %.in2147, double* %arrayidx53, align 8, !tbaa !7
  store double %.in2146, double* %arrayidx60, align 16, !tbaa !7
  store double %.in2145, double* %arrayidx67, align 8, !tbaa !7
  store double %.in, double* %arrayidx74, align 16, !tbaa !7
  %add984 = add nsw i32 %i, 1
  %idxprom985 = sext i32 %add984 to i64
  %arrayidx986 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 %idxprom985
  %440 = bitcast [5 x double]* %arrayidx986 to i64*
  %441 = load i64, i64* %440, align 8, !tbaa !7
  store i64 %441, i64* %47, align 16, !tbaa !7
  %arrayidx996 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 %idxprom985, i64 1
  %442 = bitcast double* %arrayidx996 to i64*
  %443 = load i64, i64* %442, align 8, !tbaa !7
  store i64 %443, i64* %50, align 8, !tbaa !7
  %arrayidx1005 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 %idxprom985, i64 2
  %444 = bitcast double* %arrayidx1005 to i64*
  %445 = load i64, i64* %444, align 8, !tbaa !7
  store i64 %445, i64* %53, align 16, !tbaa !7
  %arrayidx1014 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 %idxprom985, i64 3
  %446 = bitcast double* %arrayidx1014 to i64*
  %447 = load i64, i64* %446, align 8, !tbaa !7
  store i64 %447, i64* %56, align 8, !tbaa !7
  %arrayidx1023 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %7, i64 %idxprom, i64 %idxprom7, i64 %idxprom985, i64 4
  %448 = bitcast double* %arrayidx1023 to i64*
  %449 = load i64, i64* %448, align 8, !tbaa !7
  store i64 %449, i64* %59, align 16, !tbaa !7
  %idxprom1030 = sext i32 %i to i64
  %arrayidx1031 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom7, i64 %idxprom1030
  %450 = load double, double* %arrayidx1031, align 8, !tbaa !7
  %arrayidx1038 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom7, i64 %idxprom1030
  %451 = load double, double* %arrayidx1038, align 8, !tbaa !7
  %arrayidx1045 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom, i64 %idxprom7, i64 %idxprom1030
  %452 = load double, double* %arrayidx1045, align 8, !tbaa !7
  %arrayidx1052 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom, i64 %idxprom7, i64 %idxprom1030
  %453 = load double, double* %arrayidx1052, align 8, !tbaa !7
  %arrayidx1059 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom, i64 %idxprom7, i64 %idxprom1030
  %454 = load double, double* %arrayidx1059, align 8, !tbaa !7
  %arrayidx1066 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %13, i64 %idxprom, i64 %idxprom7, i64 %idxprom1030
  %455 = load double, double* %arrayidx1066, align 8, !tbaa !7
  %idxprom1071 = sext i32 %.pre2144 to i64
  %arrayidx1073 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %idxprom1071, i64 0
  %456 = load double, double* %arrayidx1073, align 8, !tbaa !7
  %457 = tail call double @llvm.fmuladd.f64(double %.in2152, double -2.000000e+00, double %.in2148)
  %add1077 = fadd double %457, %.in2155
  %458 = tail call double @llvm.fmuladd.f64(double %add1077, double 9.075000e+01, double %456)
  %sub1080 = fsub double %.in2147, %.in2154
  %459 = tail call double @llvm.fmuladd.f64(double %sub1080, double -5.500000e+00, double %458)
  %arrayidx1088 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %idxprom1071, i64 1
  %460 = load double, double* %arrayidx1088, align 8, !tbaa !7
  %461 = tail call double @llvm.fmuladd.f64(double %.in2151, double -2.000000e+00, double %.in2147)
  %add1092 = fadd double %.in2154, %461
  %462 = tail call double @llvm.fmuladd.f64(double %add1092, double 9.075000e+01, double %460)
  %463 = tail call double @llvm.fmuladd.f64(double %w.0.lcssa, double -2.000000e+00, double %450)
  %add1093 = fadd double %v.0.lcssa, %463
  %464 = tail call double @llvm.fmuladd.f64(double %add1093, double 0x4030222222222222, double %462)
  %465 = fneg double %.in2154
  %neg1097 = fmul double %v.0.lcssa, %465
  %466 = tail call double @llvm.fmuladd.f64(double %.in2147, double %450, double %neg1097)
  %sub1099 = fsub double %.in, %455
  %sub1101 = fsub double %sub1099, %.pre-phi
  %add1102 = fadd double %ak.0.lcssa, %sub1101
  %467 = tail call double @llvm.fmuladd.f64(double %add1102, double 4.000000e-01, double %466)
  %468 = tail call double @llvm.fmuladd.f64(double %467, double -5.500000e+00, double %464)
  %arrayidx1110 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %idxprom1071, i64 2
  %469 = load double, double* %arrayidx1110, align 8, !tbaa !7
  %470 = tail call double @llvm.fmuladd.f64(double %.in2150, double -2.000000e+00, double %.in2146)
  %add1114 = fadd double %470, %.in2153
  %471 = tail call double @llvm.fmuladd.f64(double %add1114, double 9.075000e+01, double %469)
  %472 = tail call double @llvm.fmuladd.f64(double %z.0.lcssa, double -2.000000e+00, double %451)
  %add1115 = fadd double %y.0.lcssa, %472
  %473 = tail call double @llvm.fmuladd.f64(double %add1115, double 0x4028333333333334, double %471)
  %474 = fneg double %.in2153
  %neg1119 = fmul double %v.0.lcssa, %474
  %475 = tail call double @llvm.fmuladd.f64(double %.in2146, double %450, double %neg1119)
  %476 = tail call double @llvm.fmuladd.f64(double %475, double -5.500000e+00, double %473)
  %arrayidx1127 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %idxprom1071, i64 3
  %477 = load double, double* %arrayidx1127, align 8, !tbaa !7
  %478 = tail call double @llvm.fmuladd.f64(double %.in2149, double -2.000000e+00, double %.in2145)
  %479 = load double, double* %arrayidx176, align 8, !tbaa !7
  %add1131 = fadd double %478, %479
  %480 = tail call double @llvm.fmuladd.f64(double %add1131, double 9.075000e+01, double %477)
  %481 = tail call double @llvm.fmuladd.f64(double %ac.0.lcssa, double -2.000000e+00, double %452)
  %add1132 = fadd double %ab.0.lcssa, %481
  %482 = tail call double @llvm.fmuladd.f64(double %add1132, double 0x4028333333333334, double %480)
  %483 = fneg double %479
  %neg1136 = fmul double %v.0.lcssa, %483
  %484 = tail call double @llvm.fmuladd.f64(double %.in2145, double %450, double %neg1136)
  %485 = tail call double @llvm.fmuladd.f64(double %484, double -5.500000e+00, double %482)
  %arrayidx1144 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %idxprom1071, i64 4
  %486 = load double, double* %arrayidx1144, align 8, !tbaa !7
  %487 = load double, double* %arrayidx39, align 16, !tbaa !7
  %488 = tail call double @llvm.fmuladd.f64(double %487, double -2.000000e+00, double %.in)
  %add1148 = fadd double %.pre-phi, %488
  %489 = tail call double @llvm.fmuladd.f64(double %add1148, double 9.075000e+01, double %486)
  %490 = tail call double @llvm.fmuladd.f64(double %af.0.lcssa, double -2.000000e+00, double %453)
  %add1149 = fadd double %ae.0.lcssa, %490
  %491 = tail call double @llvm.fmuladd.f64(double %add1149, double 0xC0273B645A1CAC07, double %489)
  %492 = fmul double %w.0.lcssa, -2.000000e+00
  %neg1152 = fmul double %w.0.lcssa, %492
  %493 = tail call double @llvm.fmuladd.f64(double %450, double %450, double %neg1152)
  %494 = tail call double @llvm.fmuladd.f64(double %v.0.lcssa, double %v.0.lcssa, double %493)
  %495 = tail call double @llvm.fmuladd.f64(double %494, double 0x4000222222222222, double %491)
  %496 = fmul double %487, -2.000000e+00
  %neg1157 = fmul double %ai.0.lcssa, %496
  %497 = tail call double @llvm.fmuladd.f64(double %.in, double %454, double %neg1157)
  %498 = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %ah.0.lcssa, double %497)
  %499 = tail call double @llvm.fmuladd.f64(double %498, double 0x4037B74BC6A7EF9D, double %495)
  %neg1161 = fmul double %455, -4.000000e-01
  %500 = tail call double @llvm.fmuladd.f64(double %.in, double 1.400000e+00, double %neg1161)
  %501 = fneg double %.pre-phi2143
  %neg1167 = fmul double %v.0.lcssa, %501
  %502 = tail call double @llvm.fmuladd.f64(double %500, double %450, double %neg1167)
  %503 = tail call double @llvm.fmuladd.f64(double %502, double -5.500000e+00, double %499)
  %arrayidx1176 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 0
  %504 = load double, double* %arrayidx1176, align 16, !tbaa !7
  %505 = load double, double* %arrayidx170, align 16, !tbaa !7
  %506 = tail call double @llvm.fmuladd.f64(double %505, double -4.000000e+00, double %504)
  %507 = load double, double* %arrayidx11, align 16, !tbaa !7
  %508 = tail call double @llvm.fmuladd.f64(double %507, double 6.000000e+00, double %506)
  %509 = load double, double* %arrayidx46, align 16, !tbaa !7
  %510 = tail call double @llvm.fmuladd.f64(double %509, double -4.000000e+00, double %508)
  %511 = tail call double @llvm.fmuladd.f64(double %510, double -2.500000e-01, double %459)
  store double %511, double* %arrayidx1073, align 8, !tbaa !7
  %512 = load double, double* %arrayidx173, align 8, !tbaa !7
  %513 = load double, double* %arrayidx172, align 8, !tbaa !7
  %514 = tail call double @llvm.fmuladd.f64(double %513, double -4.000000e+00, double %512)
  %515 = load double, double* %arrayidx18, align 8, !tbaa !7
  %516 = tail call double @llvm.fmuladd.f64(double %515, double 6.000000e+00, double %514)
  %517 = load double, double* %arrayidx53, align 8, !tbaa !7
  %518 = tail call double @llvm.fmuladd.f64(double %517, double -4.000000e+00, double %516)
  %519 = tail call double @llvm.fmuladd.f64(double %518, double -2.500000e-01, double %468)
  store double %519, double* %arrayidx1088, align 8, !tbaa !7
  %520 = load double, double* %arrayidx175, align 16, !tbaa !7
  %521 = load double, double* %arrayidx174, align 16, !tbaa !7
  %522 = tail call double @llvm.fmuladd.f64(double %521, double -4.000000e+00, double %520)
  %523 = load double, double* %arrayidx25, align 16, !tbaa !7
  %524 = tail call double @llvm.fmuladd.f64(double %523, double 6.000000e+00, double %522)
  %525 = load double, double* %arrayidx60, align 16, !tbaa !7
  %526 = tail call double @llvm.fmuladd.f64(double %525, double -4.000000e+00, double %524)
  %527 = tail call double @llvm.fmuladd.f64(double %526, double -2.500000e-01, double %476)
  store double %527, double* %arrayidx1110, align 8, !tbaa !7
  %528 = load double, double* %arrayidx177, align 8, !tbaa !7
  %529 = tail call double @llvm.fmuladd.f64(double %479, double -4.000000e+00, double %528)
  %530 = load double, double* %arrayidx32, align 8, !tbaa !7
  %531 = tail call double @llvm.fmuladd.f64(double %530, double 6.000000e+00, double %529)
  %532 = load double, double* %arrayidx67, align 8, !tbaa !7
  %533 = tail call double @llvm.fmuladd.f64(double %532, double -4.000000e+00, double %531)
  %534 = tail call double @llvm.fmuladd.f64(double %533, double -2.500000e-01, double %485)
  store double %534, double* %arrayidx1127, align 8, !tbaa !7
  %535 = load double, double* %arrayidx179, align 16, !tbaa !7
  %536 = load double, double* %arrayidx178, align 16, !tbaa !7
  %537 = tail call double @llvm.fmuladd.f64(double %536, double -4.000000e+00, double %535)
  %538 = tail call double @llvm.fmuladd.f64(double %487, double 6.000000e+00, double %537)
  %539 = load double, double* %arrayidx74, align 16, !tbaa !7
  %540 = tail call double @llvm.fmuladd.f64(double %539, double -4.000000e+00, double %538)
  %541 = tail call double @llvm.fmuladd.f64(double %540, double -2.500000e-01, double %503)
  store double %541, double* %arrayidx1144, align 8, !tbaa !7
  %542 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 0
  store double %.in2155, double* %542, align 16, !tbaa !7
  store double %.in2154, double* %arrayidx173, align 8, !tbaa !7
  store double %.in2153, double* %arrayidx175, align 16, !tbaa !7
  store i64 %431, i64* %83, align 8, !tbaa !7
  store i64 %430, i64* %86, align 16, !tbaa !7
  %543 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 0
  store double %.in2152, double* %543, align 16, !tbaa !7
  store double %.in2151, double* %arrayidx172, align 8, !tbaa !7
  store double %.in2150, double* %arrayidx174, align 16, !tbaa !7
  store double %.in2149, double* %arrayidx176, align 8, !tbaa !7
  store i64 %429, i64* %84, align 16, !tbaa !7
  %544 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 0
  store double %.in2148, double* %544, align 16, !tbaa !7
  store double %.in2147, double* %arrayidx18, align 8, !tbaa !7
  store double %.in2146, double* %arrayidx25, align 16, !tbaa !7
  store double %.in2145, double* %arrayidx32, align 8, !tbaa !7
  store double %.in, double* %arrayidx39, align 16, !tbaa !7
  store i64 %441, i64* %32, align 16, !tbaa !7
  store i64 %443, i64* %35, align 8, !tbaa !7
  store i64 %445, i64* %38, align 16, !tbaa !7
  store i64 %447, i64* %41, align 8, !tbaa !7
  store i64 %449, i64* %44, align 16, !tbaa !7
  %arrayidx1240 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom7, i64 %idxprom985
  %545 = load double, double* %arrayidx1240, align 8, !tbaa !7
  %arrayidx1247 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom7, i64 %idxprom985
  %546 = load double, double* %arrayidx1247, align 8, !tbaa !7
  %arrayidx1254 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom, i64 %idxprom7, i64 %idxprom985
  %547 = load double, double* %arrayidx1254, align 8, !tbaa !7
  %arrayidx1261 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom, i64 %idxprom7, i64 %idxprom985
  %548 = load double, double* %arrayidx1261, align 8, !tbaa !7
  %arrayidx1268 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom, i64 %idxprom7, i64 %idxprom985
  %549 = load double, double* %arrayidx1268, align 8, !tbaa !7
  %arrayidx1275 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %13, i64 %idxprom, i64 %idxprom7, i64 %idxprom985
  %550 = load double, double* %arrayidx1275, align 8, !tbaa !7
  %arrayidx1282 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %idxprom1030, i64 0
  %551 = load double, double* %arrayidx1282, align 8, !tbaa !7
  %552 = bitcast i64 %441 to double
  %553 = tail call double @llvm.fmuladd.f64(double %.in2148, double -2.000000e+00, double %552)
  %add1286 = fadd double %553, %.in2152
  %554 = tail call double @llvm.fmuladd.f64(double %add1286, double 9.075000e+01, double %551)
  %555 = bitcast i64 %443 to double
  %sub1289 = fsub double %555, %.in2151
  %556 = tail call double @llvm.fmuladd.f64(double %sub1289, double -5.500000e+00, double %554)
  %arrayidx1297 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %idxprom1030, i64 1
  %557 = load double, double* %arrayidx1297, align 8, !tbaa !7
  %558 = tail call double @llvm.fmuladd.f64(double %.in2147, double -2.000000e+00, double %555)
  %add1301 = fadd double %.in2151, %558
  %559 = tail call double @llvm.fmuladd.f64(double %add1301, double 9.075000e+01, double %557)
  %560 = tail call double @llvm.fmuladd.f64(double %450, double -2.000000e+00, double %545)
  %add1302 = fadd double %w.0.lcssa, %560
  %561 = tail call double @llvm.fmuladd.f64(double %add1302, double 0x4030222222222222, double %559)
  %562 = fneg double %.in2151
  %neg1306 = fmul double %w.0.lcssa, %562
  %563 = tail call double @llvm.fmuladd.f64(double %555, double %545, double %neg1306)
  %564 = bitcast i64 %449 to double
  %sub1308 = fsub double %564, %550
  %sub1310 = fsub double %sub1308, %428
  %add1311 = fadd double %al.0.lcssa, %sub1310
  %565 = tail call double @llvm.fmuladd.f64(double %add1311, double 4.000000e-01, double %563)
  %566 = tail call double @llvm.fmuladd.f64(double %565, double -5.500000e+00, double %561)
  %arrayidx1319 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %idxprom1030, i64 2
  %567 = load double, double* %arrayidx1319, align 8, !tbaa !7
  %568 = bitcast i64 %445 to double
  %569 = tail call double @llvm.fmuladd.f64(double %.in2146, double -2.000000e+00, double %568)
  %add1323 = fadd double %569, %.in2150
  %570 = tail call double @llvm.fmuladd.f64(double %add1323, double 9.075000e+01, double %567)
  %571 = tail call double @llvm.fmuladd.f64(double %451, double -2.000000e+00, double %546)
  %add1324 = fadd double %z.0.lcssa, %571
  %572 = tail call double @llvm.fmuladd.f64(double %add1324, double 0x4028333333333334, double %570)
  %573 = fneg double %.in2150
  %neg1328 = fmul double %w.0.lcssa, %573
  %574 = tail call double @llvm.fmuladd.f64(double %568, double %545, double %neg1328)
  %575 = tail call double @llvm.fmuladd.f64(double %574, double -5.500000e+00, double %572)
  %arrayidx1336 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %idxprom1030, i64 3
  %576 = load double, double* %arrayidx1336, align 8, !tbaa !7
  %577 = bitcast i64 %447 to double
  %578 = tail call double @llvm.fmuladd.f64(double %.in2145, double -2.000000e+00, double %577)
  %add1340 = fadd double %578, %.in2149
  %579 = tail call double @llvm.fmuladd.f64(double %add1340, double 9.075000e+01, double %576)
  %580 = tail call double @llvm.fmuladd.f64(double %452, double -2.000000e+00, double %547)
  %add1341 = fadd double %ac.0.lcssa, %580
  %581 = tail call double @llvm.fmuladd.f64(double %add1341, double 0x4028333333333334, double %579)
  %582 = fneg double %.in2149
  %neg1345 = fmul double %w.0.lcssa, %582
  %583 = tail call double @llvm.fmuladd.f64(double %577, double %545, double %neg1345)
  %584 = tail call double @llvm.fmuladd.f64(double %583, double -5.500000e+00, double %581)
  %arrayidx1353 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom7, i64 %idxprom1030, i64 4
  %585 = load double, double* %arrayidx1353, align 8, !tbaa !7
  %586 = tail call double @llvm.fmuladd.f64(double %.in, double -2.000000e+00, double %564)
  %add1357 = fadd double %428, %586
  %587 = tail call double @llvm.fmuladd.f64(double %add1357, double 9.075000e+01, double %585)
  %588 = tail call double @llvm.fmuladd.f64(double %453, double -2.000000e+00, double %548)
  %add1358 = fadd double %af.0.lcssa, %588
  %589 = tail call double @llvm.fmuladd.f64(double %add1358, double 0xC0273B645A1CAC07, double %587)
  %590 = fmul double %450, -2.000000e+00
  %neg1361 = fmul double %450, %590
  %591 = tail call double @llvm.fmuladd.f64(double %545, double %545, double %neg1361)
  %592 = tail call double @llvm.fmuladd.f64(double %w.0.lcssa, double %w.0.lcssa, double %591)
  %593 = tail call double @llvm.fmuladd.f64(double %592, double 0x4000222222222222, double %589)
  %594 = fmul double %.in, -2.000000e+00
  %neg1366 = fmul double %454, %594
  %595 = tail call double @llvm.fmuladd.f64(double %564, double %549, double %neg1366)
  %596 = tail call double @llvm.fmuladd.f64(double %428, double %ai.0.lcssa, double %595)
  %597 = tail call double @llvm.fmuladd.f64(double %596, double 0x4037B74BC6A7EF9D, double %593)
  %neg1370 = fmul double %550, -4.000000e-01
  %598 = tail call double @llvm.fmuladd.f64(double %564, double 1.400000e+00, double %neg1370)
  %599 = tail call double @llvm.fmuladd.f64(double %428, double 1.400000e+00, double %neg1374.pre-phi)
  %600 = fneg double %599
  %neg1376 = fmul double %w.0.lcssa, %600
  %601 = tail call double @llvm.fmuladd.f64(double %598, double %545, double %neg1376)
  %602 = tail call double @llvm.fmuladd.f64(double %601, double -5.500000e+00, double %597)
  %603 = load double, double* %arrayidx1176, align 16, !tbaa !7
  %604 = load double, double* %arrayidx170, align 16, !tbaa !7
  %605 = tail call double @llvm.fmuladd.f64(double %604, double -4.000000e+00, double %603)
  %606 = load double, double* %arrayidx11, align 16, !tbaa !7
  %607 = tail call double @llvm.fmuladd.f64(double %606, double 5.000000e+00, double %605)
  %608 = tail call double @llvm.fmuladd.f64(double %607, double -2.500000e-01, double %556)
  store double %608, double* %arrayidx1282, align 8, !tbaa !7
  %609 = load double, double* %arrayidx173, align 8, !tbaa !7
  %610 = load double, double* %arrayidx172, align 8, !tbaa !7
  %611 = tail call double @llvm.fmuladd.f64(double %610, double -4.000000e+00, double %609)
  %612 = load double, double* %arrayidx18, align 8, !tbaa !7
  %613 = tail call double @llvm.fmuladd.f64(double %612, double 5.000000e+00, double %611)
  %614 = tail call double @llvm.fmuladd.f64(double %613, double -2.500000e-01, double %566)
  store double %614, double* %arrayidx1297, align 8, !tbaa !7
  %615 = load double, double* %arrayidx175, align 16, !tbaa !7
  %616 = load double, double* %arrayidx174, align 16, !tbaa !7
  %617 = tail call double @llvm.fmuladd.f64(double %616, double -4.000000e+00, double %615)
  %618 = load double, double* %arrayidx25, align 16, !tbaa !7
  %619 = tail call double @llvm.fmuladd.f64(double %618, double 5.000000e+00, double %617)
  %620 = tail call double @llvm.fmuladd.f64(double %619, double -2.500000e-01, double %575)
  store double %620, double* %arrayidx1319, align 8, !tbaa !7
  %621 = load double, double* %arrayidx177, align 8, !tbaa !7
  %622 = load double, double* %arrayidx176, align 8, !tbaa !7
  %623 = tail call double @llvm.fmuladd.f64(double %622, double -4.000000e+00, double %621)
  %624 = load double, double* %arrayidx32, align 8, !tbaa !7
  %625 = tail call double @llvm.fmuladd.f64(double %624, double 5.000000e+00, double %623)
  %626 = tail call double @llvm.fmuladd.f64(double %625, double -2.500000e-01, double %584)
  store double %626, double* %arrayidx1336, align 8, !tbaa !7
  %627 = load double, double* %arrayidx179, align 16, !tbaa !7
  %628 = load double, double* %arrayidx178, align 16, !tbaa !7
  %629 = tail call double @llvm.fmuladd.f64(double %628, double -4.000000e+00, double %627)
  %630 = load double, double* %arrayidx39, align 16, !tbaa !7
  %631 = tail call double @llvm.fmuladd.f64(double %630, double 5.000000e+00, double %629)
  %632 = tail call double @llvm.fmuladd.f64(double %631, double -2.500000e-01, double %602)
  store double %632, double* %arrayidx1353, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %for.end938, %entry
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

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
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int"}
!6 = !{!"const", !"const", !"const", !"const", !"const", !"const", !"const", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
