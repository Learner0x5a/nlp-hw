; ModuleID = 'src/28.src'
source_filename = "src/28.src"
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
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  %call = tail call i64 @_Z13get_global_idj(i32 1) #5
  %5 = trunc i64 %call to i32
  %conv = add i32 %5, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #5
  %6 = trunc i64 %call1 to i32
  %conv3 = add i32 %6, 1
  %sub = add nsw i32 %k, -2
  %cmp = icmp sgt i32 %conv, %sub
  %sub5 = add nsw i32 %j, -2
  %cmp6 = icmp sgt i32 %conv3, %sub5
  %or.cond = or i1 %cmp, %cmp6
  br i1 %or.cond, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %7 = bitcast double* %b to [13 x [13 x double]]*
  %8 = bitcast double* %c to [13 x [13 x double]]*
  %9 = bitcast double* %d to [13 x [13 x double]]*
  %10 = bitcast double* %e to [13 x [13 x double]]*
  %11 = bitcast double* %f to [13 x [13 x double]]*
  %12 = bitcast double* %g to [13 x [13 x double]]*
  %13 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %14 = bitcast double* %h to [13 x [13 x [5 x double]]]*
  %idxprom = sext i32 %conv to i64
  %idxprom8 = sext i32 %conv3 to i64
  %arrayidx9 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8
  %15 = bitcast [13 x [5 x double]]* %arrayidx9 to i64*
  %16 = load i64, i64* %15, align 8, !tbaa !7
  %arrayidx12 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 0
  %17 = bitcast [5 x double]* %q to i64*
  store i64 %16, i64* %17, align 16, !tbaa !7
  %arrayidx18 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 0, i64 1
  %18 = bitcast double* %arrayidx18 to i64*
  %19 = load i64, i64* %18, align 8, !tbaa !7
  %arrayidx19 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 1
  %20 = bitcast double* %arrayidx19 to i64*
  store i64 %19, i64* %20, align 8, !tbaa !7
  %arrayidx25 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 0, i64 2
  %21 = bitcast double* %arrayidx25 to i64*
  %22 = load i64, i64* %21, align 8, !tbaa !7
  %arrayidx26 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 2
  %23 = bitcast double* %arrayidx26 to i64*
  store i64 %22, i64* %23, align 16, !tbaa !7
  %arrayidx32 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 0, i64 3
  %24 = bitcast double* %arrayidx32 to i64*
  %25 = load i64, i64* %24, align 8, !tbaa !7
  %arrayidx33 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 3
  %26 = bitcast double* %arrayidx33 to i64*
  store i64 %25, i64* %26, align 8, !tbaa !7
  %arrayidx39 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 0, i64 4
  %27 = bitcast double* %arrayidx39 to i64*
  %28 = load i64, i64* %27, align 8, !tbaa !7
  %arrayidx40 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 4
  %29 = bitcast double* %arrayidx40 to i64*
  store i64 %28, i64* %29, align 16, !tbaa !7
  %arrayidx45 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 1
  %30 = bitcast [5 x double]* %arrayidx45 to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !7
  %arrayidx47 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 0
  %32 = bitcast [5 x double]* %r to i64*
  store i64 %31, i64* %32, align 16, !tbaa !7
  %arrayidx53 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 1, i64 1
  %33 = bitcast double* %arrayidx53 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !7
  %arrayidx54 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 1
  %35 = bitcast double* %arrayidx54 to i64*
  store i64 %34, i64* %35, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 1, i64 2
  %36 = bitcast double* %arrayidx60 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !7
  %arrayidx61 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 2
  %38 = bitcast double* %arrayidx61 to i64*
  store i64 %37, i64* %38, align 16, !tbaa !7
  %arrayidx67 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 1, i64 3
  %39 = bitcast double* %arrayidx67 to i64*
  %40 = load i64, i64* %39, align 8, !tbaa !7
  %arrayidx68 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 3
  %41 = bitcast double* %arrayidx68 to i64*
  store i64 %40, i64* %41, align 8, !tbaa !7
  %arrayidx74 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 1, i64 4
  %42 = bitcast double* %arrayidx74 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !7
  %arrayidx75 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 4
  %44 = bitcast double* %arrayidx75 to i64*
  %arrayidx80 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 2
  %45 = bitcast [5 x double]* %arrayidx80 to i64*
  %46 = load i64, i64* %45, align 8, !tbaa !7
  %47 = bitcast [5 x double]* %s to i64*
  %arrayidx88 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 2, i64 1
  %48 = bitcast double* %arrayidx88 to i64*
  %49 = load i64, i64* %48, align 8, !tbaa !7
  %arrayidx89 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 1
  %50 = bitcast double* %arrayidx89 to i64*
  %arrayidx95 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 2, i64 2
  %51 = bitcast double* %arrayidx95 to i64*
  %52 = load i64, i64* %51, align 8, !tbaa !7
  %arrayidx96 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 2
  %53 = bitcast double* %arrayidx96 to i64*
  %arrayidx102 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 2, i64 3
  %54 = bitcast double* %arrayidx102 to i64*
  %55 = load i64, i64* %54, align 8, !tbaa !7
  %arrayidx103 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 3
  %56 = bitcast double* %arrayidx103 to i64*
  %arrayidx109 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 2, i64 4
  %57 = bitcast double* %arrayidx109 to i64*
  %58 = load i64, i64* %57, align 8, !tbaa !7
  %arrayidx110 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 4
  %59 = bitcast double* %arrayidx110 to i64*
  %arrayidx115 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 0
  %60 = load double, double* %arrayidx115, align 8, !tbaa !7
  %arrayidx120 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 1
  %61 = load double, double* %arrayidx120, align 8, !tbaa !7
  %arrayidx125 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom8, i64 0
  %62 = load double, double* %arrayidx125, align 8, !tbaa !7
  %arrayidx130 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom8, i64 1
  %63 = load double, double* %arrayidx130, align 8, !tbaa !7
  %arrayidx135 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom8, i64 0
  %64 = load double, double* %arrayidx135, align 8, !tbaa !7
  %arrayidx140 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom8, i64 1
  %65 = load double, double* %arrayidx140, align 8, !tbaa !7
  %arrayidx145 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom, i64 %idxprom8, i64 0
  %66 = load double, double* %arrayidx145, align 8, !tbaa !7
  %arrayidx150 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom, i64 %idxprom8, i64 1
  %67 = load double, double* %arrayidx150, align 8, !tbaa !7
  %arrayidx155 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom, i64 %idxprom8, i64 0
  %68 = load double, double* %arrayidx155, align 8, !tbaa !7
  %arrayidx160 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom, i64 %idxprom8, i64 1
  %69 = load double, double* %arrayidx160, align 8, !tbaa !7
  %arrayidx165 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom, i64 %idxprom8, i64 0
  %70 = load double, double* %arrayidx165, align 8, !tbaa !7
  %arrayidx170 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom, i64 %idxprom8, i64 1
  %71 = load double, double* %arrayidx170, align 8, !tbaa !7
  %arrayidx171 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 0
  %72 = bitcast [5 x double]* %u to i64*
  %73 = load i64, i64* %72, align 16, !tbaa !7
  %74 = bitcast [5 x double]* %t to i64*
  store i64 %73, i64* %74, align 16, !tbaa !7
  %arrayidx173 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 1
  %75 = bitcast double* %arrayidx173 to i64*
  %76 = load i64, i64* %75, align 8, !tbaa !7
  %arrayidx174 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 1
  %77 = bitcast double* %arrayidx174 to i64*
  store i64 %76, i64* %77, align 8, !tbaa !7
  %arrayidx175 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 2
  %78 = bitcast double* %arrayidx175 to i64*
  %79 = load i64, i64* %78, align 16, !tbaa !7
  %arrayidx176 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 2
  %80 = bitcast double* %arrayidx176 to i64*
  store i64 %79, i64* %80, align 16, !tbaa !7
  %arrayidx177 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 3
  %81 = bitcast double* %arrayidx177 to i64*
  %82 = load i64, i64* %81, align 8, !tbaa !7
  %arrayidx178 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 3
  %83 = bitcast double* %arrayidx178 to i64*
  store i64 %82, i64* %83, align 8, !tbaa !7
  %arrayidx179 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 4
  %84 = bitcast double* %arrayidx179 to i64*
  %85 = load i64, i64* %84, align 16, !tbaa !7
  %arrayidx180 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 4
  %86 = bitcast double* %arrayidx180 to i64*
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
  %arrayidx217 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 3
  %87 = bitcast [5 x double]* %arrayidx217 to i64*
  %88 = load i64, i64* %87, align 8, !tbaa !7
  store i64 %88, i64* %47, align 16, !tbaa !7
  %arrayidx227 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 3, i64 1
  %89 = bitcast double* %arrayidx227 to i64*
  %90 = load i64, i64* %89, align 8, !tbaa !7
  store i64 %90, i64* %50, align 8, !tbaa !7
  %arrayidx236 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 3, i64 2
  %91 = bitcast double* %arrayidx236 to i64*
  %92 = load i64, i64* %91, align 8, !tbaa !7
  store i64 %92, i64* %53, align 16, !tbaa !7
  %arrayidx245 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 3, i64 3
  %93 = bitcast double* %arrayidx245 to i64*
  %94 = load i64, i64* %93, align 8, !tbaa !7
  store i64 %94, i64* %56, align 8, !tbaa !7
  %arrayidx254 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 3, i64 4
  %95 = bitcast double* %arrayidx254 to i64*
  %96 = load i64, i64* %95, align 8, !tbaa !7
  store i64 %96, i64* %59, align 16, !tbaa !7
  %arrayidx262 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 2
  %97 = load double, double* %arrayidx262, align 8, !tbaa !7
  %arrayidx269 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom8, i64 2
  %98 = load double, double* %arrayidx269, align 8, !tbaa !7
  %arrayidx276 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom8, i64 2
  %99 = load double, double* %arrayidx276, align 8, !tbaa !7
  %arrayidx283 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom, i64 %idxprom8, i64 2
  %100 = load double, double* %arrayidx283, align 8, !tbaa !7
  %arrayidx290 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom, i64 %idxprom8, i64 2
  %101 = load double, double* %arrayidx290, align 8, !tbaa !7
  %arrayidx297 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom, i64 %idxprom8, i64 2
  %102 = load double, double* %arrayidx297, align 8, !tbaa !7
  %arrayidx304 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 1, i64 0
  %103 = load double, double* %arrayidx304, align 8, !tbaa !7
  %104 = bitcast i64 %46 to double
  %105 = bitcast i64 %31 to double
  %106 = tail call double @llvm.fmuladd.f64(double %105, double -2.000000e+00, double %104)
  %107 = bitcast i64 %16 to double
  %add308 = fadd double %106, %107
  %108 = tail call double @llvm.fmuladd.f64(double %add308, double 9.075000e+01, double %103)
  %109 = bitcast i64 %49 to double
  %110 = bitcast i64 %19 to double
  %sub311 = fsub double %109, %110
  %111 = tail call double @llvm.fmuladd.f64(double %sub311, double -5.500000e+00, double %108)
  %arrayidx319 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 1, i64 1
  %112 = load double, double* %arrayidx319, align 8, !tbaa !7
  %113 = bitcast i64 %34 to double
  %114 = tail call double @llvm.fmuladd.f64(double %113, double -2.000000e+00, double %109)
  %add323 = fadd double %114, %110
  %115 = tail call double @llvm.fmuladd.f64(double %add323, double 9.075000e+01, double %112)
  %116 = tail call double @llvm.fmuladd.f64(double %61, double -2.000000e+00, double %97)
  %add324 = fadd double %60, %116
  %117 = tail call double @llvm.fmuladd.f64(double %add324, double 0x4030222222222222, double %115)
  %118 = fneg double %110
  %neg = fmul double %60, %118
  %119 = tail call double @llvm.fmuladd.f64(double %109, double %97, double %neg)
  %120 = bitcast i64 %58 to double
  %sub329 = fsub double %120, %102
  %121 = bitcast i64 %28 to double
  %sub331 = fsub double %sub329, %121
  %add332 = fadd double %70, %sub331
  %122 = tail call double @llvm.fmuladd.f64(double %add332, double 4.000000e-01, double %119)
  %123 = tail call double @llvm.fmuladd.f64(double %122, double -5.500000e+00, double %117)
  %arrayidx340 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 1, i64 2
  %124 = load double, double* %arrayidx340, align 8, !tbaa !7
  %125 = bitcast i64 %52 to double
  %126 = bitcast i64 %37 to double
  %127 = tail call double @llvm.fmuladd.f64(double %126, double -2.000000e+00, double %125)
  %128 = bitcast i64 %22 to double
  %add344 = fadd double %127, %128
  %129 = tail call double @llvm.fmuladd.f64(double %add344, double 9.075000e+01, double %124)
  %130 = tail call double @llvm.fmuladd.f64(double %63, double -2.000000e+00, double %98)
  %add345 = fadd double %62, %130
  %131 = tail call double @llvm.fmuladd.f64(double %add345, double 0x4028333333333334, double %129)
  %132 = fneg double %128
  %neg349 = fmul double %60, %132
  %133 = tail call double @llvm.fmuladd.f64(double %125, double %97, double %neg349)
  %134 = tail call double @llvm.fmuladd.f64(double %133, double -5.500000e+00, double %131)
  %arrayidx357 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 1, i64 3
  %135 = load double, double* %arrayidx357, align 8, !tbaa !7
  %136 = bitcast i64 %55 to double
  %137 = bitcast i64 %40 to double
  %138 = tail call double @llvm.fmuladd.f64(double %137, double -2.000000e+00, double %136)
  %139 = load double, double* %arrayidx177, align 8, !tbaa !7
  %add361 = fadd double %138, %139
  %140 = tail call double @llvm.fmuladd.f64(double %add361, double 9.075000e+01, double %135)
  %141 = tail call double @llvm.fmuladd.f64(double %65, double -2.000000e+00, double %99)
  %add362 = fadd double %64, %141
  %142 = tail call double @llvm.fmuladd.f64(double %add362, double 0x4028333333333334, double %140)
  %143 = fneg double %139
  %neg366 = fmul double %60, %143
  %144 = tail call double @llvm.fmuladd.f64(double %136, double %97, double %neg366)
  %145 = tail call double @llvm.fmuladd.f64(double %144, double -5.500000e+00, double %142)
  %arrayidx374 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 1, i64 4
  %146 = load double, double* %arrayidx374, align 8, !tbaa !7
  %147 = load double, double* %arrayidx40, align 16, !tbaa !7
  %148 = tail call double @llvm.fmuladd.f64(double %147, double -2.000000e+00, double %120)
  %add378 = fadd double %148, %121
  %149 = tail call double @llvm.fmuladd.f64(double %add378, double 9.075000e+01, double %146)
  %150 = tail call double @llvm.fmuladd.f64(double %67, double -2.000000e+00, double %100)
  %add379 = fadd double %66, %150
  %151 = tail call double @llvm.fmuladd.f64(double %add379, double 0xC0273B645A1CAC07, double %149)
  %152 = fmul double %61, -2.000000e+00
  %neg382 = fmul double %61, %152
  %153 = tail call double @llvm.fmuladd.f64(double %97, double %97, double %neg382)
  %154 = tail call double @llvm.fmuladd.f64(double %60, double %60, double %153)
  %155 = tail call double @llvm.fmuladd.f64(double %154, double 0x4000222222222222, double %151)
  %156 = fmul double %147, -2.000000e+00
  %neg387 = fmul double %69, %156
  %157 = tail call double @llvm.fmuladd.f64(double %120, double %101, double %neg387)
  %158 = tail call double @llvm.fmuladd.f64(double %121, double %68, double %157)
  %159 = tail call double @llvm.fmuladd.f64(double %158, double 0x4037B74BC6A7EF9D, double %155)
  %neg391 = fmul double %102, -4.000000e-01
  %160 = tail call double @llvm.fmuladd.f64(double %120, double 1.400000e+00, double %neg391)
  %neg395 = fmul double %70, -4.000000e-01
  %161 = tail call double @llvm.fmuladd.f64(double %121, double 1.400000e+00, double %neg395)
  %162 = fneg double %161
  %neg397 = fmul double %60, %162
  %163 = tail call double @llvm.fmuladd.f64(double %160, double %97, double %neg397)
  %164 = tail call double @llvm.fmuladd.f64(double %163, double -5.500000e+00, double %159)
  %165 = load double, double* %arrayidx12, align 16, !tbaa !7
  %166 = load double, double* %arrayidx47, align 16, !tbaa !7
  %neg408 = fmul double %166, -4.000000e+00
  %167 = tail call double @llvm.fmuladd.f64(double %165, double 5.000000e+00, double %neg408)
  %arrayidx410 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 0
  %168 = load double, double* %arrayidx410, align 16, !tbaa !7
  %add411 = fadd double %168, %167
  %169 = tail call double @llvm.fmuladd.f64(double %add411, double -2.500000e-01, double %111)
  store double %169, double* %arrayidx304, align 8, !tbaa !7
  %170 = load double, double* %arrayidx19, align 8, !tbaa !7
  %171 = load double, double* %arrayidx54, align 8, !tbaa !7
  %neg408.1 = fmul double %171, -4.000000e+00
  %172 = tail call double @llvm.fmuladd.f64(double %170, double 5.000000e+00, double %neg408.1)
  %173 = load double, double* %arrayidx89, align 8, !tbaa !7
  %add411.1 = fadd double %173, %172
  %174 = tail call double @llvm.fmuladd.f64(double %add411.1, double -2.500000e-01, double %123)
  store double %174, double* %arrayidx319, align 8, !tbaa !7
  %175 = load double, double* %arrayidx26, align 16, !tbaa !7
  %176 = load double, double* %arrayidx61, align 16, !tbaa !7
  %neg408.2 = fmul double %176, -4.000000e+00
  %177 = tail call double @llvm.fmuladd.f64(double %175, double 5.000000e+00, double %neg408.2)
  %178 = load double, double* %arrayidx96, align 16, !tbaa !7
  %add411.2 = fadd double %178, %177
  %179 = tail call double @llvm.fmuladd.f64(double %add411.2, double -2.500000e-01, double %134)
  store double %179, double* %arrayidx340, align 8, !tbaa !7
  %180 = load double, double* %arrayidx33, align 8, !tbaa !7
  %181 = load double, double* %arrayidx68, align 8, !tbaa !7
  %neg408.3 = fmul double %181, -4.000000e+00
  %182 = tail call double @llvm.fmuladd.f64(double %180, double 5.000000e+00, double %neg408.3)
  %183 = load double, double* %arrayidx103, align 8, !tbaa !7
  %add411.3 = fadd double %183, %182
  %184 = tail call double @llvm.fmuladd.f64(double %add411.3, double -2.500000e-01, double %145)
  store double %184, double* %arrayidx357, align 8, !tbaa !7
  %185 = load double, double* %arrayidx75, align 16, !tbaa !7
  %neg408.4 = fmul double %185, -4.000000e+00
  %186 = tail call double @llvm.fmuladd.f64(double %147, double 5.000000e+00, double %neg408.4)
  %187 = load double, double* %arrayidx110, align 16, !tbaa !7
  %add411.4 = fadd double %187, %186
  %188 = tail call double @llvm.fmuladd.f64(double %add411.4, double -2.500000e-01, double %164)
  store double %188, double* %arrayidx374, align 8, !tbaa !7
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
  %arrayidx466 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 4
  %189 = bitcast [5 x double]* %arrayidx466 to i64*
  %190 = load i64, i64* %189, align 8, !tbaa !7
  store i64 %190, i64* %47, align 16, !tbaa !7
  %arrayidx476 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 4, i64 1
  %191 = bitcast double* %arrayidx476 to i64*
  %192 = load i64, i64* %191, align 8, !tbaa !7
  store i64 %192, i64* %50, align 8, !tbaa !7
  %arrayidx485 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 4, i64 2
  %193 = bitcast double* %arrayidx485 to i64*
  %194 = load i64, i64* %193, align 8, !tbaa !7
  store i64 %194, i64* %53, align 16, !tbaa !7
  %arrayidx494 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 4, i64 3
  %195 = bitcast double* %arrayidx494 to i64*
  %196 = load i64, i64* %195, align 8, !tbaa !7
  store i64 %196, i64* %56, align 8, !tbaa !7
  %arrayidx503 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 4, i64 4
  %197 = bitcast double* %arrayidx503 to i64*
  %198 = load i64, i64* %197, align 8, !tbaa !7
  store i64 %198, i64* %59, align 16, !tbaa !7
  %arrayidx511 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 3
  %199 = load double, double* %arrayidx511, align 8, !tbaa !7
  %arrayidx518 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom8, i64 3
  %200 = load double, double* %arrayidx518, align 8, !tbaa !7
  %arrayidx525 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom8, i64 3
  %201 = load double, double* %arrayidx525, align 8, !tbaa !7
  %arrayidx532 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom, i64 %idxprom8, i64 3
  %202 = load double, double* %arrayidx532, align 8, !tbaa !7
  %arrayidx539 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom, i64 %idxprom8, i64 3
  %203 = load double, double* %arrayidx539, align 8, !tbaa !7
  %arrayidx546 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom, i64 %idxprom8, i64 3
  %204 = load double, double* %arrayidx546, align 8, !tbaa !7
  %arrayidx553 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 2, i64 0
  %205 = load double, double* %arrayidx553, align 8, !tbaa !7
  %206 = bitcast i64 %88 to double
  %207 = tail call double @llvm.fmuladd.f64(double %104, double -2.000000e+00, double %206)
  %add557 = fadd double %207, %105
  %208 = tail call double @llvm.fmuladd.f64(double %add557, double 9.075000e+01, double %205)
  %209 = bitcast i64 %90 to double
  %sub560 = fsub double %209, %113
  %210 = tail call double @llvm.fmuladd.f64(double %sub560, double -5.500000e+00, double %208)
  %arrayidx568 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 2, i64 1
  %211 = load double, double* %arrayidx568, align 8, !tbaa !7
  %212 = tail call double @llvm.fmuladd.f64(double %109, double -2.000000e+00, double %209)
  %add572 = fadd double %212, %113
  %213 = tail call double @llvm.fmuladd.f64(double %add572, double 9.075000e+01, double %211)
  %214 = tail call double @llvm.fmuladd.f64(double %97, double -2.000000e+00, double %199)
  %add573 = fadd double %61, %214
  %215 = tail call double @llvm.fmuladd.f64(double %add573, double 0x4030222222222222, double %213)
  %216 = fneg double %113
  %neg577 = fmul double %61, %216
  %217 = tail call double @llvm.fmuladd.f64(double %209, double %199, double %neg577)
  %218 = bitcast i64 %96 to double
  %sub579 = fsub double %218, %204
  %219 = bitcast i64 %43 to double
  %sub581 = fsub double %sub579, %219
  %add582 = fadd double %71, %sub581
  %220 = tail call double @llvm.fmuladd.f64(double %add582, double 4.000000e-01, double %217)
  %221 = tail call double @llvm.fmuladd.f64(double %220, double -5.500000e+00, double %215)
  %arrayidx590 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 2, i64 2
  %222 = load double, double* %arrayidx590, align 8, !tbaa !7
  %223 = bitcast i64 %92 to double
  %224 = tail call double @llvm.fmuladd.f64(double %125, double -2.000000e+00, double %223)
  %add594 = fadd double %224, %126
  %225 = tail call double @llvm.fmuladd.f64(double %add594, double 9.075000e+01, double %222)
  %226 = tail call double @llvm.fmuladd.f64(double %98, double -2.000000e+00, double %200)
  %add595 = fadd double %63, %226
  %227 = tail call double @llvm.fmuladd.f64(double %add595, double 0x4028333333333334, double %225)
  %228 = fneg double %126
  %neg599 = fmul double %61, %228
  %229 = tail call double @llvm.fmuladd.f64(double %223, double %199, double %neg599)
  %230 = tail call double @llvm.fmuladd.f64(double %229, double -5.500000e+00, double %227)
  %arrayidx607 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 2, i64 3
  %231 = load double, double* %arrayidx607, align 8, !tbaa !7
  %232 = bitcast i64 %94 to double
  %233 = tail call double @llvm.fmuladd.f64(double %136, double -2.000000e+00, double %232)
  %add611 = fadd double %233, %137
  %234 = tail call double @llvm.fmuladd.f64(double %add611, double 9.075000e+01, double %231)
  %235 = tail call double @llvm.fmuladd.f64(double %99, double -2.000000e+00, double %201)
  %add612 = fadd double %65, %235
  %236 = tail call double @llvm.fmuladd.f64(double %add612, double 0x4028333333333334, double %234)
  %237 = fneg double %137
  %neg616 = fmul double %61, %237
  %238 = tail call double @llvm.fmuladd.f64(double %232, double %199, double %neg616)
  %239 = tail call double @llvm.fmuladd.f64(double %238, double -5.500000e+00, double %236)
  %arrayidx624 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 2, i64 4
  %240 = load double, double* %arrayidx624, align 8, !tbaa !7
  %241 = tail call double @llvm.fmuladd.f64(double %120, double -2.000000e+00, double %218)
  %add628 = fadd double %241, %219
  %242 = tail call double @llvm.fmuladd.f64(double %add628, double 9.075000e+01, double %240)
  %243 = tail call double @llvm.fmuladd.f64(double %100, double -2.000000e+00, double %202)
  %add629 = fadd double %67, %243
  %244 = tail call double @llvm.fmuladd.f64(double %add629, double 0xC0273B645A1CAC07, double %242)
  %245 = fmul double %97, -2.000000e+00
  %neg632 = fmul double %97, %245
  %246 = tail call double @llvm.fmuladd.f64(double %199, double %199, double %neg632)
  %247 = tail call double @llvm.fmuladd.f64(double %61, double %61, double %246)
  %248 = tail call double @llvm.fmuladd.f64(double %247, double 0x4000222222222222, double %244)
  %249 = fmul double %120, -2.000000e+00
  %neg637 = fmul double %101, %249
  %250 = tail call double @llvm.fmuladd.f64(double %218, double %203, double %neg637)
  %251 = tail call double @llvm.fmuladd.f64(double %219, double %69, double %250)
  %252 = tail call double @llvm.fmuladd.f64(double %251, double 0x4037B74BC6A7EF9D, double %248)
  %neg641 = fmul double %204, -4.000000e-01
  %253 = tail call double @llvm.fmuladd.f64(double %218, double 1.400000e+00, double %neg641)
  %neg645 = fmul double %71, -4.000000e-01
  %254 = tail call double @llvm.fmuladd.f64(double %219, double 1.400000e+00, double %neg645)
  %255 = fneg double %254
  %neg647 = fmul double %61, %255
  %256 = tail call double @llvm.fmuladd.f64(double %253, double %199, double %neg647)
  %257 = tail call double @llvm.fmuladd.f64(double %256, double -5.500000e+00, double %252)
  %258 = load double, double* %arrayidx171, align 16, !tbaa !7
  %259 = load double, double* %arrayidx12, align 16, !tbaa !7
  %mul659 = fmul double %259, 6.000000e+00
  %260 = tail call double @llvm.fmuladd.f64(double %258, double -4.000000e+00, double %mul659)
  %261 = load double, double* %arrayidx47, align 16, !tbaa !7
  %262 = tail call double @llvm.fmuladd.f64(double %261, double -4.000000e+00, double %260)
  %263 = load double, double* %arrayidx410, align 16, !tbaa !7
  %add664 = fadd double %263, %262
  %264 = tail call double @llvm.fmuladd.f64(double %add664, double -2.500000e-01, double %210)
  store double %264, double* %arrayidx553, align 8, !tbaa !7
  %265 = load double, double* %arrayidx173, align 8, !tbaa !7
  %266 = load double, double* %arrayidx19, align 8, !tbaa !7
  %mul659.1 = fmul double %266, 6.000000e+00
  %267 = tail call double @llvm.fmuladd.f64(double %265, double -4.000000e+00, double %mul659.1)
  %268 = load double, double* %arrayidx54, align 8, !tbaa !7
  %269 = tail call double @llvm.fmuladd.f64(double %268, double -4.000000e+00, double %267)
  %270 = load double, double* %arrayidx89, align 8, !tbaa !7
  %add664.1 = fadd double %270, %269
  %271 = tail call double @llvm.fmuladd.f64(double %add664.1, double -2.500000e-01, double %221)
  store double %271, double* %arrayidx568, align 8, !tbaa !7
  %272 = load double, double* %arrayidx175, align 16, !tbaa !7
  %273 = load double, double* %arrayidx26, align 16, !tbaa !7
  %mul659.2 = fmul double %273, 6.000000e+00
  %274 = tail call double @llvm.fmuladd.f64(double %272, double -4.000000e+00, double %mul659.2)
  %275 = load double, double* %arrayidx61, align 16, !tbaa !7
  %276 = tail call double @llvm.fmuladd.f64(double %275, double -4.000000e+00, double %274)
  %277 = load double, double* %arrayidx96, align 16, !tbaa !7
  %add664.2 = fadd double %277, %276
  %278 = tail call double @llvm.fmuladd.f64(double %add664.2, double -2.500000e-01, double %230)
  store double %278, double* %arrayidx590, align 8, !tbaa !7
  %279 = load double, double* %arrayidx177, align 8, !tbaa !7
  %280 = load double, double* %arrayidx33, align 8, !tbaa !7
  %mul659.3 = fmul double %280, 6.000000e+00
  %281 = tail call double @llvm.fmuladd.f64(double %279, double -4.000000e+00, double %mul659.3)
  %282 = load double, double* %arrayidx68, align 8, !tbaa !7
  %283 = tail call double @llvm.fmuladd.f64(double %282, double -4.000000e+00, double %281)
  %284 = load double, double* %arrayidx103, align 8, !tbaa !7
  %add664.3 = fadd double %284, %283
  %285 = tail call double @llvm.fmuladd.f64(double %add664.3, double -2.500000e-01, double %239)
  store double %285, double* %arrayidx607, align 8, !tbaa !7
  %286 = load double, double* %arrayidx179, align 16, !tbaa !7
  %mul659.4 = fmul double %120, 6.000000e+00
  %287 = tail call double @llvm.fmuladd.f64(double %286, double -4.000000e+00, double %mul659.4)
  %288 = load double, double* %arrayidx75, align 16, !tbaa !7
  %289 = tail call double @llvm.fmuladd.f64(double %288, double -4.000000e+00, double %287)
  %290 = load double, double* %arrayidx110, align 16, !tbaa !7
  %add664.4 = fadd double %290, %289
  %291 = tail call double @llvm.fmuladd.f64(double %add664.4, double -2.500000e-01, double %257)
  store double %291, double* %arrayidx624, align 8, !tbaa !7
  %cmp6782105 = icmp slt i32 %i, 7
  %292 = bitcast double %258 to i64
  %293 = bitcast double %265 to i64
  %294 = bitcast double %272 to i64
  %295 = bitcast double %279 to i64
  %296 = bitcast double %286 to i64
  %297 = bitcast double %280 to i64
  %298 = bitcast double %288 to i64
  %.pre2147 = add nsw i32 %i, -3
  br i1 %cmp6782105, label %for.end940, label %for.body680.preheader

for.body680.preheader:                            ; preds = %if.end
  %wide.trip.count = zext i32 %.pre2147 to i64
  %299 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 0
  %300 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 0
  %301 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 0
  %arrayidx917 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 0
  br label %for.body680

for.body680:                                      ; preds = %for.body680, %for.body680.preheader
  %302 = phi double [ %290, %for.body680.preheader ], [ %418, %for.body680 ]
  %303 = phi double [ %284, %for.body680.preheader ], [ %411, %for.body680 ]
  %304 = phi double [ %277, %for.body680.preheader ], [ %405, %for.body680 ]
  %305 = phi double [ %270, %for.body680.preheader ], [ %399, %for.body680 ]
  %306 = phi double [ %263, %for.body680.preheader ], [ %393, %for.body680 ]
  %307 = phi i64 [ %298, %for.body680.preheader ], [ %427, %for.body680 ]
  %308 = phi double [ %282, %for.body680.preheader ], [ %303, %for.body680 ]
  %309 = phi double [ %275, %for.body680.preheader ], [ %304, %for.body680 ]
  %310 = phi double [ %268, %for.body680.preheader ], [ %305, %for.body680 ]
  %311 = phi double [ %261, %for.body680.preheader ], [ %306, %for.body680 ]
  %312 = phi i64 [ %58, %for.body680.preheader ], [ %426, %for.body680 ]
  %313 = phi i64 [ %297, %for.body680.preheader ], [ %425, %for.body680 ]
  %314 = phi double [ %273, %for.body680.preheader ], [ %309, %for.body680 ]
  %315 = phi double [ %266, %for.body680.preheader ], [ %310, %for.body680 ]
  %316 = phi double [ %259, %for.body680.preheader ], [ %311, %for.body680 ]
  %317 = phi i64 [ %296, %for.body680.preheader ], [ %424, %for.body680 ]
  %318 = phi i64 [ %295, %for.body680.preheader ], [ %423, %for.body680 ]
  %319 = phi i64 [ %294, %for.body680.preheader ], [ %422, %for.body680 ]
  %320 = phi i64 [ %293, %for.body680.preheader ], [ %421, %for.body680 ]
  %321 = phi i64 [ %292, %for.body680.preheader ], [ %420, %for.body680 ]
  %indvars.iv = phi i64 [ 3, %for.body680.preheader ], [ %indvars.iv.next, %for.body680 ]
  %v.02117 = phi double [ %97, %for.body680.preheader ], [ %w.02116, %for.body680 ]
  %w.02116 = phi double [ %199, %for.body680.preheader ], [ %333, %for.body680 ]
  %y.02115 = phi double [ %98, %for.body680.preheader ], [ %z.02114, %for.body680 ]
  %z.02114 = phi double [ %200, %for.body680.preheader ], [ %334, %for.body680 ]
  %al.02113 = phi double [ %204, %for.body680.preheader ], [ %338, %for.body680 ]
  %ak.02112 = phi double [ %102, %for.body680.preheader ], [ %al.02113, %for.body680 ]
  %ai.02111 = phi double [ %203, %for.body680.preheader ], [ %337, %for.body680 ]
  %ah.02110 = phi double [ %101, %for.body680.preheader ], [ %ai.02111, %for.body680 ]
  %af.02109 = phi double [ %202, %for.body680.preheader ], [ %336, %for.body680 ]
  %ae.02108 = phi double [ %100, %for.body680.preheader ], [ %af.02109, %for.body680 ]
  %ac.02107 = phi double [ %201, %for.body680.preheader ], [ %335, %for.body680 ]
  %ab.02106 = phi double [ %99, %for.body680.preheader ], [ %ac.02107, %for.body680 ]
  store i64 %321, i64* %74, align 16, !tbaa !7
  store i64 %320, i64* %77, align 8, !tbaa !7
  store i64 %319, i64* %80, align 16, !tbaa !7
  store i64 %318, i64* %83, align 8, !tbaa !7
  store i64 %317, i64* %86, align 16, !tbaa !7
  store i64 %313, i64* %81, align 8, !tbaa !7
  store i64 %312, i64* %84, align 16, !tbaa !7
  store i64 %307, i64* %29, align 16, !tbaa !7
  %322 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx727 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 %322
  %323 = bitcast [5 x double]* %arrayidx727 to i64*
  %324 = load i64, i64* %323, align 8, !tbaa !7
  store i64 %324, i64* %47, align 16, !tbaa !7
  %arrayidx737 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 %322, i64 1
  %325 = bitcast double* %arrayidx737 to i64*
  %326 = load i64, i64* %325, align 8, !tbaa !7
  store i64 %326, i64* %50, align 8, !tbaa !7
  %arrayidx746 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 %322, i64 2
  %327 = bitcast double* %arrayidx746 to i64*
  %328 = load i64, i64* %327, align 8, !tbaa !7
  store i64 %328, i64* %53, align 16, !tbaa !7
  %arrayidx755 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 %322, i64 3
  %329 = bitcast double* %arrayidx755 to i64*
  %330 = load i64, i64* %329, align 8, !tbaa !7
  store i64 %330, i64* %56, align 8, !tbaa !7
  %arrayidx764 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 %322, i64 4
  %331 = bitcast double* %arrayidx764 to i64*
  %332 = load i64, i64* %331, align 8, !tbaa !7
  store i64 %332, i64* %59, align 16, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx772 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv.next
  %333 = load double, double* %arrayidx772, align 8, !tbaa !7
  %arrayidx779 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv.next
  %334 = load double, double* %arrayidx779, align 8, !tbaa !7
  %arrayidx786 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv.next
  %335 = load double, double* %arrayidx786, align 8, !tbaa !7
  %arrayidx793 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv.next
  %336 = load double, double* %arrayidx793, align 8, !tbaa !7
  %arrayidx800 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv.next
  %337 = load double, double* %arrayidx800, align 8, !tbaa !7
  %arrayidx807 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv.next
  %338 = load double, double* %arrayidx807, align 8, !tbaa !7
  %arrayidx814 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 0
  %339 = load double, double* %arrayidx814, align 8, !tbaa !7
  %340 = tail call double @llvm.fmuladd.f64(double %311, double -2.000000e+00, double %306)
  %add818 = fadd double %340, %316
  %341 = tail call double @llvm.fmuladd.f64(double %add818, double 9.075000e+01, double %339)
  %sub821 = fsub double %305, %315
  %342 = tail call double @llvm.fmuladd.f64(double %sub821, double -5.500000e+00, double %341)
  %arrayidx829 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 1
  %343 = load double, double* %arrayidx829, align 8, !tbaa !7
  %344 = tail call double @llvm.fmuladd.f64(double %310, double -2.000000e+00, double %305)
  %add833 = fadd double %315, %344
  %345 = tail call double @llvm.fmuladd.f64(double %add833, double 9.075000e+01, double %343)
  %346 = tail call double @llvm.fmuladd.f64(double %w.02116, double -2.000000e+00, double %333)
  %add834 = fadd double %v.02117, %346
  %347 = tail call double @llvm.fmuladd.f64(double %add834, double 0x4030222222222222, double %345)
  %348 = fneg double %315
  %neg838 = fmul double %v.02117, %348
  %349 = tail call double @llvm.fmuladd.f64(double %305, double %333, double %neg838)
  %sub840 = fsub double %302, %338
  %350 = bitcast i64 %312 to double
  %sub842 = fsub double %sub840, %350
  %add843 = fadd double %ak.02112, %sub842
  %351 = tail call double @llvm.fmuladd.f64(double %add843, double 4.000000e-01, double %349)
  %352 = tail call double @llvm.fmuladd.f64(double %351, double -5.500000e+00, double %347)
  %arrayidx851 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 2
  %353 = load double, double* %arrayidx851, align 8, !tbaa !7
  %354 = tail call double @llvm.fmuladd.f64(double %309, double -2.000000e+00, double %304)
  %add855 = fadd double %354, %314
  %355 = tail call double @llvm.fmuladd.f64(double %add855, double 9.075000e+01, double %353)
  %356 = tail call double @llvm.fmuladd.f64(double %z.02114, double -2.000000e+00, double %334)
  %add856 = fadd double %y.02115, %356
  %357 = tail call double @llvm.fmuladd.f64(double %add856, double 0x4028333333333334, double %355)
  %358 = fneg double %314
  %neg860 = fmul double %v.02117, %358
  %359 = tail call double @llvm.fmuladd.f64(double %304, double %333, double %neg860)
  %360 = tail call double @llvm.fmuladd.f64(double %359, double -5.500000e+00, double %357)
  %arrayidx868 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 3
  %361 = load double, double* %arrayidx868, align 8, !tbaa !7
  %362 = tail call double @llvm.fmuladd.f64(double %308, double -2.000000e+00, double %303)
  %363 = load double, double* %arrayidx177, align 8, !tbaa !7
  %add872 = fadd double %362, %363
  %364 = tail call double @llvm.fmuladd.f64(double %add872, double 9.075000e+01, double %361)
  %365 = tail call double @llvm.fmuladd.f64(double %ac.02107, double -2.000000e+00, double %335)
  %add873 = fadd double %ab.02106, %365
  %366 = tail call double @llvm.fmuladd.f64(double %add873, double 0x4028333333333334, double %364)
  %367 = fneg double %363
  %neg877 = fmul double %v.02117, %367
  %368 = tail call double @llvm.fmuladd.f64(double %303, double %333, double %neg877)
  %369 = tail call double @llvm.fmuladd.f64(double %368, double -5.500000e+00, double %366)
  %arrayidx885 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %indvars.iv, i64 4
  %370 = load double, double* %arrayidx885, align 8, !tbaa !7
  %371 = load double, double* %arrayidx40, align 16, !tbaa !7
  %372 = tail call double @llvm.fmuladd.f64(double %371, double -2.000000e+00, double %302)
  %add889 = fadd double %372, %350
  %373 = tail call double @llvm.fmuladd.f64(double %add889, double 9.075000e+01, double %370)
  %374 = tail call double @llvm.fmuladd.f64(double %af.02109, double -2.000000e+00, double %336)
  %add890 = fadd double %ae.02108, %374
  %375 = tail call double @llvm.fmuladd.f64(double %add890, double 0xC0273B645A1CAC07, double %373)
  %376 = fmul double %w.02116, -2.000000e+00
  %neg893 = fmul double %w.02116, %376
  %377 = tail call double @llvm.fmuladd.f64(double %333, double %333, double %neg893)
  %378 = tail call double @llvm.fmuladd.f64(double %v.02117, double %v.02117, double %377)
  %379 = tail call double @llvm.fmuladd.f64(double %378, double 0x4000222222222222, double %375)
  %380 = fmul double %371, -2.000000e+00
  %neg898 = fmul double %ai.02111, %380
  %381 = tail call double @llvm.fmuladd.f64(double %302, double %337, double %neg898)
  %382 = tail call double @llvm.fmuladd.f64(double %350, double %ah.02110, double %381)
  %383 = tail call double @llvm.fmuladd.f64(double %382, double 0x4037B74BC6A7EF9D, double %379)
  %neg902 = fmul double %338, -4.000000e-01
  %384 = tail call double @llvm.fmuladd.f64(double %302, double 1.400000e+00, double %neg902)
  %neg906 = fmul double %ak.02112, -4.000000e-01
  %385 = tail call double @llvm.fmuladd.f64(double %350, double 1.400000e+00, double %neg906)
  %386 = fneg double %385
  %neg908 = fmul double %v.02117, %386
  %387 = tail call double @llvm.fmuladd.f64(double %384, double %333, double %neg908)
  %388 = tail call double @llvm.fmuladd.f64(double %387, double -5.500000e+00, double %383)
  %389 = load double, double* %arrayidx917, align 16, !tbaa !7
  %390 = tail call double @llvm.fmuladd.f64(double %316, double -4.000000e+00, double %389)
  %391 = tail call double @llvm.fmuladd.f64(double %311, double 6.000000e+00, double %390)
  %392 = tail call double @llvm.fmuladd.f64(double %306, double -4.000000e+00, double %391)
  %393 = load double, double* %arrayidx410, align 16, !tbaa !7
  %add926 = fadd double %392, %393
  %394 = tail call double @llvm.fmuladd.f64(double %add926, double -2.500000e-01, double %342)
  store double %394, double* %arrayidx814, align 8, !tbaa !7
  %395 = load double, double* %arrayidx174, align 8, !tbaa !7
  %396 = tail call double @llvm.fmuladd.f64(double %315, double -4.000000e+00, double %395)
  %397 = tail call double @llvm.fmuladd.f64(double %310, double 6.000000e+00, double %396)
  %398 = tail call double @llvm.fmuladd.f64(double %305, double -4.000000e+00, double %397)
  %399 = load double, double* %arrayidx89, align 8, !tbaa !7
  %add926.1 = fadd double %398, %399
  %400 = tail call double @llvm.fmuladd.f64(double %add926.1, double -2.500000e-01, double %352)
  store double %400, double* %arrayidx829, align 8, !tbaa !7
  %401 = load double, double* %arrayidx176, align 16, !tbaa !7
  %402 = tail call double @llvm.fmuladd.f64(double %314, double -4.000000e+00, double %401)
  %403 = tail call double @llvm.fmuladd.f64(double %309, double 6.000000e+00, double %402)
  %404 = tail call double @llvm.fmuladd.f64(double %304, double -4.000000e+00, double %403)
  %405 = load double, double* %arrayidx96, align 16, !tbaa !7
  %add926.2 = fadd double %404, %405
  %406 = tail call double @llvm.fmuladd.f64(double %add926.2, double -2.500000e-01, double %360)
  store double %406, double* %arrayidx851, align 8, !tbaa !7
  %407 = load double, double* %arrayidx178, align 8, !tbaa !7
  %408 = tail call double @llvm.fmuladd.f64(double %363, double -4.000000e+00, double %407)
  %409 = tail call double @llvm.fmuladd.f64(double %308, double 6.000000e+00, double %408)
  %410 = tail call double @llvm.fmuladd.f64(double %303, double -4.000000e+00, double %409)
  %411 = load double, double* %arrayidx103, align 8, !tbaa !7
  %add926.3 = fadd double %410, %411
  %412 = tail call double @llvm.fmuladd.f64(double %add926.3, double -2.500000e-01, double %369)
  store double %412, double* %arrayidx868, align 8, !tbaa !7
  %413 = load double, double* %arrayidx180, align 16, !tbaa !7
  %414 = load double, double* %arrayidx179, align 16, !tbaa !7
  %415 = tail call double @llvm.fmuladd.f64(double %414, double -4.000000e+00, double %413)
  %416 = tail call double @llvm.fmuladd.f64(double %371, double 6.000000e+00, double %415)
  %417 = tail call double @llvm.fmuladd.f64(double %302, double -4.000000e+00, double %416)
  %418 = load double, double* %arrayidx110, align 16, !tbaa !7
  %add926.4 = fadd double %417, %418
  %419 = tail call double @llvm.fmuladd.f64(double %add926.4, double -2.500000e-01, double %388)
  store double %419, double* %arrayidx885, align 8, !tbaa !7
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %420 = bitcast double %316 to i64
  %421 = bitcast double %315 to i64
  %422 = bitcast double %314 to i64
  %423 = bitcast double %363 to i64
  %424 = bitcast double %414 to i64
  %425 = bitcast double %308 to i64
  %426 = bitcast double %371 to i64
  %427 = bitcast double %302 to i64
  br i1 %exitcond, label %for.end940.loopexit, label %for.body680

for.end940.loopexit:                              ; preds = %for.body680
  store double %316, double* %299, align 16, !tbaa !7
  store double %315, double* %arrayidx173, align 8, !tbaa !7
  store double %314, double* %arrayidx175, align 16, !tbaa !7
  store double %311, double* %300, align 16, !tbaa !7
  store double %310, double* %arrayidx19, align 8, !tbaa !7
  store double %309, double* %arrayidx26, align 16, !tbaa !7
  store double %308, double* %arrayidx33, align 8, !tbaa !7
  store double %306, double* %301, align 16, !tbaa !7
  store double %305, double* %arrayidx54, align 8, !tbaa !7
  store double %304, double* %arrayidx61, align 16, !tbaa !7
  store double %303, double* %arrayidx68, align 8, !tbaa !7
  store double %302, double* %arrayidx75, align 16, !tbaa !7
  %.pre2144 = fmul double %al.02113, -4.000000e-01
  %.pre2145 = tail call double @llvm.fmuladd.f64(double %371, double 1.400000e+00, double %.pre2144)
  br label %for.end940

for.end940:                                       ; preds = %if.end, %for.end940.loopexit
  %neg1377.pre-phi = phi double [ %neg902, %for.end940.loopexit ], [ %neg641, %if.end ]
  %.pre-phi2146 = phi double [ %.pre2145, %for.end940.loopexit ], [ %160, %if.end ]
  %.pre-phi = phi double [ %371, %for.end940.loopexit ], [ %120, %if.end ]
  %.in = phi double [ %418, %for.end940.loopexit ], [ %290, %if.end ]
  %.in2148 = phi double [ %411, %for.end940.loopexit ], [ %284, %if.end ]
  %.in2149 = phi double [ %405, %for.end940.loopexit ], [ %277, %if.end ]
  %.in2150 = phi double [ %399, %for.end940.loopexit ], [ %270, %if.end ]
  %.in2151 = phi double [ %393, %for.end940.loopexit ], [ %263, %if.end ]
  %428 = phi double [ %302, %for.end940.loopexit ], [ %288, %if.end ]
  %429 = phi i64 [ %427, %for.end940.loopexit ], [ %298, %if.end ]
  %.in2152 = phi double [ %303, %for.end940.loopexit ], [ %282, %if.end ]
  %.in2153 = phi double [ %304, %for.end940.loopexit ], [ %275, %if.end ]
  %.in2154 = phi double [ %305, %for.end940.loopexit ], [ %268, %if.end ]
  %.in2155 = phi double [ %306, %for.end940.loopexit ], [ %261, %if.end ]
  %430 = phi i64 [ %426, %for.end940.loopexit ], [ %58, %if.end ]
  %431 = phi i64 [ %425, %for.end940.loopexit ], [ %297, %if.end ]
  %.in2156 = phi double [ %309, %for.end940.loopexit ], [ %273, %if.end ]
  %.in2157 = phi double [ %310, %for.end940.loopexit ], [ %266, %if.end ]
  %.in2158 = phi double [ %311, %for.end940.loopexit ], [ %259, %if.end ]
  %432 = phi i64 [ %424, %for.end940.loopexit ], [ %296, %if.end ]
  %433 = phi i64 [ %423, %for.end940.loopexit ], [ %295, %if.end ]
  %434 = phi i64 [ %422, %for.end940.loopexit ], [ %294, %if.end ]
  %435 = phi i64 [ %421, %for.end940.loopexit ], [ %293, %if.end ]
  %436 = phi i64 [ %420, %for.end940.loopexit ], [ %292, %if.end ]
  %ab.0.lcssa = phi double [ %ac.02107, %for.end940.loopexit ], [ %99, %if.end ]
  %ac.0.lcssa = phi double [ %335, %for.end940.loopexit ], [ %201, %if.end ]
  %ae.0.lcssa = phi double [ %af.02109, %for.end940.loopexit ], [ %100, %if.end ]
  %af.0.lcssa = phi double [ %336, %for.end940.loopexit ], [ %202, %if.end ]
  %ah.0.lcssa = phi double [ %ai.02111, %for.end940.loopexit ], [ %101, %if.end ]
  %ai.0.lcssa = phi double [ %337, %for.end940.loopexit ], [ %203, %if.end ]
  %ak.0.lcssa = phi double [ %al.02113, %for.end940.loopexit ], [ %102, %if.end ]
  %al.0.lcssa = phi double [ %338, %for.end940.loopexit ], [ %204, %if.end ]
  %z.0.lcssa = phi double [ %334, %for.end940.loopexit ], [ %200, %if.end ]
  %y.0.lcssa = phi double [ %z.02114, %for.end940.loopexit ], [ %98, %if.end ]
  %w.0.lcssa = phi double [ %333, %for.end940.loopexit ], [ %199, %if.end ]
  %v.0.lcssa = phi double [ %w.02116, %for.end940.loopexit ], [ %97, %if.end ]
  store i64 %436, i64* %74, align 16, !tbaa !7
  store i64 %435, i64* %77, align 8, !tbaa !7
  store i64 %434, i64* %80, align 16, !tbaa !7
  store i64 %433, i64* %83, align 8, !tbaa !7
  store i64 %432, i64* %86, align 16, !tbaa !7
  %437 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 0
  store double %.in2158, double* %437, align 16, !tbaa !7
  store double %.in2157, double* %arrayidx173, align 8, !tbaa !7
  store double %.in2156, double* %arrayidx175, align 16, !tbaa !7
  store i64 %431, i64* %81, align 8, !tbaa !7
  store i64 %430, i64* %84, align 16, !tbaa !7
  %438 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 0
  store double %.in2155, double* %438, align 16, !tbaa !7
  store double %.in2154, double* %arrayidx19, align 8, !tbaa !7
  store double %.in2153, double* %arrayidx26, align 16, !tbaa !7
  store double %.in2152, double* %arrayidx33, align 8, !tbaa !7
  store double %428, double* %arrayidx40, align 16, !tbaa !7
  %439 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 0
  store double %.in2151, double* %439, align 16, !tbaa !7
  store double %.in2150, double* %arrayidx54, align 8, !tbaa !7
  store double %.in2149, double* %arrayidx61, align 16, !tbaa !7
  store double %.in2148, double* %arrayidx68, align 8, !tbaa !7
  store double %.in, double* %arrayidx75, align 16, !tbaa !7
  %add986 = add nsw i32 %i, -1
  %idxprom987 = sext i32 %add986 to i64
  %arrayidx988 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 %idxprom987
  %440 = bitcast [5 x double]* %arrayidx988 to i64*
  %441 = load i64, i64* %440, align 8, !tbaa !7
  store i64 %441, i64* %47, align 16, !tbaa !7
  %arrayidx998 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 %idxprom987, i64 1
  %442 = bitcast double* %arrayidx998 to i64*
  %443 = load i64, i64* %442, align 8, !tbaa !7
  store i64 %443, i64* %50, align 8, !tbaa !7
  %arrayidx1007 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 %idxprom987, i64 2
  %444 = bitcast double* %arrayidx1007 to i64*
  %445 = load i64, i64* %444, align 8, !tbaa !7
  store i64 %445, i64* %53, align 16, !tbaa !7
  %arrayidx1016 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 %idxprom987, i64 3
  %446 = bitcast double* %arrayidx1016 to i64*
  %447 = load i64, i64* %446, align 8, !tbaa !7
  store i64 %447, i64* %56, align 8, !tbaa !7
  %arrayidx1025 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom, i64 %idxprom8, i64 %idxprom987, i64 4
  %448 = bitcast double* %arrayidx1025 to i64*
  %449 = load i64, i64* %448, align 8, !tbaa !7
  store i64 %449, i64* %59, align 16, !tbaa !7
  %add1031 = add nsw i32 %i, -2
  %idxprom1032 = sext i32 %add1031 to i64
  %arrayidx1033 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032
  %450 = load double, double* %arrayidx1033, align 8, !tbaa !7
  %arrayidx1040 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032
  %451 = load double, double* %arrayidx1040, align 8, !tbaa !7
  %arrayidx1047 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032
  %452 = load double, double* %arrayidx1047, align 8, !tbaa !7
  %arrayidx1054 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032
  %453 = load double, double* %arrayidx1054, align 8, !tbaa !7
  %arrayidx1061 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032
  %454 = load double, double* %arrayidx1061, align 8, !tbaa !7
  %arrayidx1068 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032
  %455 = load double, double* %arrayidx1068, align 8, !tbaa !7
  %idxprom1073 = sext i32 %.pre2147 to i64
  %arrayidx1075 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %idxprom1073, i64 0
  %456 = load double, double* %arrayidx1075, align 8, !tbaa !7
  %457 = tail call double @llvm.fmuladd.f64(double %.in2155, double -2.000000e+00, double %.in2151)
  %add1079 = fadd double %457, %.in2158
  %458 = tail call double @llvm.fmuladd.f64(double %add1079, double 9.075000e+01, double %456)
  %sub1082 = fsub double %.in2150, %.in2157
  %459 = tail call double @llvm.fmuladd.f64(double %sub1082, double -5.500000e+00, double %458)
  %arrayidx1090 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %idxprom1073, i64 1
  %460 = load double, double* %arrayidx1090, align 8, !tbaa !7
  %461 = tail call double @llvm.fmuladd.f64(double %.in2154, double -2.000000e+00, double %.in2150)
  %add1094 = fadd double %.in2157, %461
  %462 = tail call double @llvm.fmuladd.f64(double %add1094, double 9.075000e+01, double %460)
  %463 = tail call double @llvm.fmuladd.f64(double %w.0.lcssa, double -2.000000e+00, double %450)
  %add1095 = fadd double %v.0.lcssa, %463
  %464 = tail call double @llvm.fmuladd.f64(double %add1095, double 0x4030222222222222, double %462)
  %465 = fneg double %.in2157
  %neg1099 = fmul double %v.0.lcssa, %465
  %466 = tail call double @llvm.fmuladd.f64(double %.in2150, double %450, double %neg1099)
  %sub1101 = fsub double %.in, %455
  %sub1103 = fsub double %sub1101, %.pre-phi
  %add1104 = fadd double %ak.0.lcssa, %sub1103
  %467 = tail call double @llvm.fmuladd.f64(double %add1104, double 4.000000e-01, double %466)
  %468 = tail call double @llvm.fmuladd.f64(double %467, double -5.500000e+00, double %464)
  %arrayidx1112 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %idxprom1073, i64 2
  %469 = load double, double* %arrayidx1112, align 8, !tbaa !7
  %470 = tail call double @llvm.fmuladd.f64(double %.in2153, double -2.000000e+00, double %.in2149)
  %add1116 = fadd double %470, %.in2156
  %471 = tail call double @llvm.fmuladd.f64(double %add1116, double 9.075000e+01, double %469)
  %472 = tail call double @llvm.fmuladd.f64(double %z.0.lcssa, double -2.000000e+00, double %451)
  %add1117 = fadd double %y.0.lcssa, %472
  %473 = tail call double @llvm.fmuladd.f64(double %add1117, double 0x4028333333333334, double %471)
  %474 = fneg double %.in2156
  %neg1121 = fmul double %v.0.lcssa, %474
  %475 = tail call double @llvm.fmuladd.f64(double %.in2149, double %450, double %neg1121)
  %476 = tail call double @llvm.fmuladd.f64(double %475, double -5.500000e+00, double %473)
  %arrayidx1129 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %idxprom1073, i64 3
  %477 = load double, double* %arrayidx1129, align 8, !tbaa !7
  %478 = tail call double @llvm.fmuladd.f64(double %.in2152, double -2.000000e+00, double %.in2148)
  %479 = load double, double* %arrayidx177, align 8, !tbaa !7
  %add1133 = fadd double %478, %479
  %480 = tail call double @llvm.fmuladd.f64(double %add1133, double 9.075000e+01, double %477)
  %481 = tail call double @llvm.fmuladd.f64(double %ac.0.lcssa, double -2.000000e+00, double %452)
  %add1134 = fadd double %ab.0.lcssa, %481
  %482 = tail call double @llvm.fmuladd.f64(double %add1134, double 0x4028333333333334, double %480)
  %483 = fneg double %479
  %neg1138 = fmul double %v.0.lcssa, %483
  %484 = tail call double @llvm.fmuladd.f64(double %.in2148, double %450, double %neg1138)
  %485 = tail call double @llvm.fmuladd.f64(double %484, double -5.500000e+00, double %482)
  %arrayidx1146 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %idxprom1073, i64 4
  %486 = load double, double* %arrayidx1146, align 8, !tbaa !7
  %487 = load double, double* %arrayidx40, align 16, !tbaa !7
  %488 = tail call double @llvm.fmuladd.f64(double %487, double -2.000000e+00, double %.in)
  %add1150 = fadd double %.pre-phi, %488
  %489 = tail call double @llvm.fmuladd.f64(double %add1150, double 9.075000e+01, double %486)
  %490 = tail call double @llvm.fmuladd.f64(double %af.0.lcssa, double -2.000000e+00, double %453)
  %add1151 = fadd double %ae.0.lcssa, %490
  %491 = tail call double @llvm.fmuladd.f64(double %add1151, double 0xC0273B645A1CAC07, double %489)
  %492 = fmul double %w.0.lcssa, -2.000000e+00
  %neg1154 = fmul double %w.0.lcssa, %492
  %493 = tail call double @llvm.fmuladd.f64(double %450, double %450, double %neg1154)
  %494 = tail call double @llvm.fmuladd.f64(double %v.0.lcssa, double %v.0.lcssa, double %493)
  %495 = tail call double @llvm.fmuladd.f64(double %494, double 0x4000222222222222, double %491)
  %496 = fmul double %487, -2.000000e+00
  %neg1159 = fmul double %ai.0.lcssa, %496
  %497 = tail call double @llvm.fmuladd.f64(double %.in, double %454, double %neg1159)
  %498 = tail call double @llvm.fmuladd.f64(double %.pre-phi, double %ah.0.lcssa, double %497)
  %499 = tail call double @llvm.fmuladd.f64(double %498, double 0x4037B74BC6A7EF9D, double %495)
  %neg1163 = fmul double %455, -4.000000e-01
  %500 = tail call double @llvm.fmuladd.f64(double %.in, double 1.400000e+00, double %neg1163)
  %501 = fneg double %.pre-phi2146
  %neg1169 = fmul double %v.0.lcssa, %501
  %502 = tail call double @llvm.fmuladd.f64(double %500, double %450, double %neg1169)
  %503 = tail call double @llvm.fmuladd.f64(double %502, double -5.500000e+00, double %499)
  %arrayidx1178 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 0
  %504 = load double, double* %arrayidx1178, align 16, !tbaa !7
  %505 = load double, double* %arrayidx171, align 16, !tbaa !7
  %506 = tail call double @llvm.fmuladd.f64(double %505, double -4.000000e+00, double %504)
  %507 = load double, double* %arrayidx12, align 16, !tbaa !7
  %508 = tail call double @llvm.fmuladd.f64(double %507, double 6.000000e+00, double %506)
  %509 = load double, double* %arrayidx47, align 16, !tbaa !7
  %510 = tail call double @llvm.fmuladd.f64(double %509, double -4.000000e+00, double %508)
  %511 = tail call double @llvm.fmuladd.f64(double %510, double -2.500000e-01, double %459)
  store double %511, double* %arrayidx1075, align 8, !tbaa !7
  %512 = load double, double* %arrayidx174, align 8, !tbaa !7
  %513 = load double, double* %arrayidx173, align 8, !tbaa !7
  %514 = tail call double @llvm.fmuladd.f64(double %513, double -4.000000e+00, double %512)
  %515 = load double, double* %arrayidx19, align 8, !tbaa !7
  %516 = tail call double @llvm.fmuladd.f64(double %515, double 6.000000e+00, double %514)
  %517 = load double, double* %arrayidx54, align 8, !tbaa !7
  %518 = tail call double @llvm.fmuladd.f64(double %517, double -4.000000e+00, double %516)
  %519 = tail call double @llvm.fmuladd.f64(double %518, double -2.500000e-01, double %468)
  store double %519, double* %arrayidx1090, align 8, !tbaa !7
  %520 = load double, double* %arrayidx176, align 16, !tbaa !7
  %521 = load double, double* %arrayidx175, align 16, !tbaa !7
  %522 = tail call double @llvm.fmuladd.f64(double %521, double -4.000000e+00, double %520)
  %523 = load double, double* %arrayidx26, align 16, !tbaa !7
  %524 = tail call double @llvm.fmuladd.f64(double %523, double 6.000000e+00, double %522)
  %525 = load double, double* %arrayidx61, align 16, !tbaa !7
  %526 = tail call double @llvm.fmuladd.f64(double %525, double -4.000000e+00, double %524)
  %527 = tail call double @llvm.fmuladd.f64(double %526, double -2.500000e-01, double %476)
  store double %527, double* %arrayidx1112, align 8, !tbaa !7
  %528 = load double, double* %arrayidx178, align 8, !tbaa !7
  %529 = tail call double @llvm.fmuladd.f64(double %479, double -4.000000e+00, double %528)
  %530 = load double, double* %arrayidx33, align 8, !tbaa !7
  %531 = tail call double @llvm.fmuladd.f64(double %530, double 6.000000e+00, double %529)
  %532 = load double, double* %arrayidx68, align 8, !tbaa !7
  %533 = tail call double @llvm.fmuladd.f64(double %532, double -4.000000e+00, double %531)
  %534 = tail call double @llvm.fmuladd.f64(double %533, double -2.500000e-01, double %485)
  store double %534, double* %arrayidx1129, align 8, !tbaa !7
  %535 = load double, double* %arrayidx180, align 16, !tbaa !7
  %536 = load double, double* %arrayidx179, align 16, !tbaa !7
  %537 = tail call double @llvm.fmuladd.f64(double %536, double -4.000000e+00, double %535)
  %538 = tail call double @llvm.fmuladd.f64(double %487, double 6.000000e+00, double %537)
  %539 = load double, double* %arrayidx75, align 16, !tbaa !7
  %540 = tail call double @llvm.fmuladd.f64(double %539, double -4.000000e+00, double %538)
  %541 = tail call double @llvm.fmuladd.f64(double %540, double -2.500000e-01, double %503)
  store double %541, double* %arrayidx1146, align 8, !tbaa !7
  %542 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 0
  store double %.in2158, double* %542, align 16, !tbaa !7
  store double %.in2157, double* %arrayidx174, align 8, !tbaa !7
  store double %.in2156, double* %arrayidx176, align 16, !tbaa !7
  store i64 %431, i64* %83, align 8, !tbaa !7
  store i64 %430, i64* %86, align 16, !tbaa !7
  %543 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 0
  store double %.in2155, double* %543, align 16, !tbaa !7
  store double %.in2154, double* %arrayidx173, align 8, !tbaa !7
  store double %.in2153, double* %arrayidx175, align 16, !tbaa !7
  store double %.in2152, double* %arrayidx177, align 8, !tbaa !7
  store i64 %429, i64* %84, align 16, !tbaa !7
  %544 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 0
  store double %.in2151, double* %544, align 16, !tbaa !7
  store double %.in2150, double* %arrayidx19, align 8, !tbaa !7
  store double %.in2149, double* %arrayidx26, align 16, !tbaa !7
  store double %.in2148, double* %arrayidx33, align 8, !tbaa !7
  store double %.in, double* %arrayidx40, align 16, !tbaa !7
  store i64 %441, i64* %32, align 16, !tbaa !7
  store i64 %443, i64* %35, align 8, !tbaa !7
  store i64 %445, i64* %38, align 16, !tbaa !7
  store i64 %447, i64* %41, align 8, !tbaa !7
  store i64 %449, i64* %44, align 16, !tbaa !7
  %arrayidx1243 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom, i64 %idxprom8, i64 %idxprom987
  %545 = load double, double* %arrayidx1243, align 8, !tbaa !7
  %arrayidx1250 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom, i64 %idxprom8, i64 %idxprom987
  %546 = load double, double* %arrayidx1250, align 8, !tbaa !7
  %arrayidx1257 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom, i64 %idxprom8, i64 %idxprom987
  %547 = load double, double* %arrayidx1257, align 8, !tbaa !7
  %arrayidx1264 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom, i64 %idxprom8, i64 %idxprom987
  %548 = load double, double* %arrayidx1264, align 8, !tbaa !7
  %arrayidx1271 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom, i64 %idxprom8, i64 %idxprom987
  %549 = load double, double* %arrayidx1271, align 8, !tbaa !7
  %arrayidx1278 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom, i64 %idxprom8, i64 %idxprom987
  %550 = load double, double* %arrayidx1278, align 8, !tbaa !7
  %arrayidx1285 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032, i64 0
  %551 = load double, double* %arrayidx1285, align 8, !tbaa !7
  %552 = bitcast i64 %441 to double
  %553 = tail call double @llvm.fmuladd.f64(double %.in2151, double -2.000000e+00, double %552)
  %add1289 = fadd double %553, %.in2155
  %554 = tail call double @llvm.fmuladd.f64(double %add1289, double 9.075000e+01, double %551)
  %555 = bitcast i64 %443 to double
  %sub1292 = fsub double %555, %.in2154
  %556 = tail call double @llvm.fmuladd.f64(double %sub1292, double -5.500000e+00, double %554)
  %arrayidx1300 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032, i64 1
  %557 = load double, double* %arrayidx1300, align 8, !tbaa !7
  %558 = tail call double @llvm.fmuladd.f64(double %.in2150, double -2.000000e+00, double %555)
  %add1304 = fadd double %.in2154, %558
  %559 = tail call double @llvm.fmuladd.f64(double %add1304, double 9.075000e+01, double %557)
  %560 = tail call double @llvm.fmuladd.f64(double %450, double -2.000000e+00, double %545)
  %add1305 = fadd double %w.0.lcssa, %560
  %561 = tail call double @llvm.fmuladd.f64(double %add1305, double 0x4030222222222222, double %559)
  %562 = fneg double %.in2154
  %neg1309 = fmul double %w.0.lcssa, %562
  %563 = tail call double @llvm.fmuladd.f64(double %555, double %545, double %neg1309)
  %564 = bitcast i64 %449 to double
  %sub1311 = fsub double %564, %550
  %sub1313 = fsub double %sub1311, %428
  %add1314 = fadd double %al.0.lcssa, %sub1313
  %565 = tail call double @llvm.fmuladd.f64(double %add1314, double 4.000000e-01, double %563)
  %566 = tail call double @llvm.fmuladd.f64(double %565, double -5.500000e+00, double %561)
  %arrayidx1322 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032, i64 2
  %567 = load double, double* %arrayidx1322, align 8, !tbaa !7
  %568 = bitcast i64 %445 to double
  %569 = tail call double @llvm.fmuladd.f64(double %.in2149, double -2.000000e+00, double %568)
  %add1326 = fadd double %569, %.in2153
  %570 = tail call double @llvm.fmuladd.f64(double %add1326, double 9.075000e+01, double %567)
  %571 = tail call double @llvm.fmuladd.f64(double %451, double -2.000000e+00, double %546)
  %add1327 = fadd double %z.0.lcssa, %571
  %572 = tail call double @llvm.fmuladd.f64(double %add1327, double 0x4028333333333334, double %570)
  %573 = fneg double %.in2153
  %neg1331 = fmul double %w.0.lcssa, %573
  %574 = tail call double @llvm.fmuladd.f64(double %568, double %545, double %neg1331)
  %575 = tail call double @llvm.fmuladd.f64(double %574, double -5.500000e+00, double %572)
  %arrayidx1339 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032, i64 3
  %576 = load double, double* %arrayidx1339, align 8, !tbaa !7
  %577 = bitcast i64 %447 to double
  %578 = tail call double @llvm.fmuladd.f64(double %.in2148, double -2.000000e+00, double %577)
  %add1343 = fadd double %578, %.in2152
  %579 = tail call double @llvm.fmuladd.f64(double %add1343, double 9.075000e+01, double %576)
  %580 = tail call double @llvm.fmuladd.f64(double %452, double -2.000000e+00, double %547)
  %add1344 = fadd double %ac.0.lcssa, %580
  %581 = tail call double @llvm.fmuladd.f64(double %add1344, double 0x4028333333333334, double %579)
  %582 = fneg double %.in2152
  %neg1348 = fmul double %w.0.lcssa, %582
  %583 = tail call double @llvm.fmuladd.f64(double %577, double %545, double %neg1348)
  %584 = tail call double @llvm.fmuladd.f64(double %583, double -5.500000e+00, double %581)
  %arrayidx1356 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %14, i64 %idxprom, i64 %idxprom8, i64 %idxprom1032, i64 4
  %585 = load double, double* %arrayidx1356, align 8, !tbaa !7
  %586 = tail call double @llvm.fmuladd.f64(double %.in, double -2.000000e+00, double %564)
  %add1360 = fadd double %428, %586
  %587 = tail call double @llvm.fmuladd.f64(double %add1360, double 9.075000e+01, double %585)
  %588 = tail call double @llvm.fmuladd.f64(double %453, double -2.000000e+00, double %548)
  %add1361 = fadd double %af.0.lcssa, %588
  %589 = tail call double @llvm.fmuladd.f64(double %add1361, double 0xC0273B645A1CAC07, double %587)
  %590 = fmul double %450, -2.000000e+00
  %neg1364 = fmul double %450, %590
  %591 = tail call double @llvm.fmuladd.f64(double %545, double %545, double %neg1364)
  %592 = tail call double @llvm.fmuladd.f64(double %w.0.lcssa, double %w.0.lcssa, double %591)
  %593 = tail call double @llvm.fmuladd.f64(double %592, double 0x4000222222222222, double %589)
  %594 = fmul double %.in, -2.000000e+00
  %neg1369 = fmul double %454, %594
  %595 = tail call double @llvm.fmuladd.f64(double %564, double %549, double %neg1369)
  %596 = tail call double @llvm.fmuladd.f64(double %428, double %ai.0.lcssa, double %595)
  %597 = tail call double @llvm.fmuladd.f64(double %596, double 0x4037B74BC6A7EF9D, double %593)
  %neg1373 = fmul double %550, -4.000000e-01
  %598 = tail call double @llvm.fmuladd.f64(double %564, double 1.400000e+00, double %neg1373)
  %599 = tail call double @llvm.fmuladd.f64(double %428, double 1.400000e+00, double %neg1377.pre-phi)
  %600 = fneg double %599
  %neg1379 = fmul double %w.0.lcssa, %600
  %601 = tail call double @llvm.fmuladd.f64(double %598, double %545, double %neg1379)
  %602 = tail call double @llvm.fmuladd.f64(double %601, double -5.500000e+00, double %597)
  %603 = load double, double* %arrayidx1178, align 16, !tbaa !7
  %604 = load double, double* %arrayidx171, align 16, !tbaa !7
  %605 = tail call double @llvm.fmuladd.f64(double %604, double -4.000000e+00, double %603)
  %606 = load double, double* %arrayidx12, align 16, !tbaa !7
  %607 = tail call double @llvm.fmuladd.f64(double %606, double 5.000000e+00, double %605)
  %608 = tail call double @llvm.fmuladd.f64(double %607, double -2.500000e-01, double %556)
  store double %608, double* %arrayidx1285, align 8, !tbaa !7
  %609 = load double, double* %arrayidx174, align 8, !tbaa !7
  %610 = load double, double* %arrayidx173, align 8, !tbaa !7
  %611 = tail call double @llvm.fmuladd.f64(double %610, double -4.000000e+00, double %609)
  %612 = load double, double* %arrayidx19, align 8, !tbaa !7
  %613 = tail call double @llvm.fmuladd.f64(double %612, double 5.000000e+00, double %611)
  %614 = tail call double @llvm.fmuladd.f64(double %613, double -2.500000e-01, double %566)
  store double %614, double* %arrayidx1300, align 8, !tbaa !7
  %615 = load double, double* %arrayidx176, align 16, !tbaa !7
  %616 = load double, double* %arrayidx175, align 16, !tbaa !7
  %617 = tail call double @llvm.fmuladd.f64(double %616, double -4.000000e+00, double %615)
  %618 = load double, double* %arrayidx26, align 16, !tbaa !7
  %619 = tail call double @llvm.fmuladd.f64(double %618, double 5.000000e+00, double %617)
  %620 = tail call double @llvm.fmuladd.f64(double %619, double -2.500000e-01, double %575)
  store double %620, double* %arrayidx1322, align 8, !tbaa !7
  %621 = load double, double* %arrayidx178, align 8, !tbaa !7
  %622 = load double, double* %arrayidx177, align 8, !tbaa !7
  %623 = tail call double @llvm.fmuladd.f64(double %622, double -4.000000e+00, double %621)
  %624 = load double, double* %arrayidx33, align 8, !tbaa !7
  %625 = tail call double @llvm.fmuladd.f64(double %624, double 5.000000e+00, double %623)
  %626 = tail call double @llvm.fmuladd.f64(double %625, double -2.500000e-01, double %584)
  store double %626, double* %arrayidx1339, align 8, !tbaa !7
  %627 = load double, double* %arrayidx180, align 16, !tbaa !7
  %628 = load double, double* %arrayidx179, align 16, !tbaa !7
  %629 = tail call double @llvm.fmuladd.f64(double %628, double -4.000000e+00, double %627)
  %630 = load double, double* %arrayidx40, align 16, !tbaa !7
  %631 = tail call double @llvm.fmuladd.f64(double %630, double 5.000000e+00, double %629)
  %632 = tail call double @llvm.fmuladd.f64(double %631, double -2.500000e-01, double %602)
  store double %632, double* %arrayidx1356, align 8, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %for.end940, %entry
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

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
