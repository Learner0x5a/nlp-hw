; ModuleID = 'src/39.src'
source_filename = "src/39.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture readonly %b, double* nocapture readonly %c, double* nocapture readonly %d, double* nocapture readonly %e, double* nocapture readonly %f, double* nocapture readonly %g, double* nocapture %h, i32 %i, i32 %j, i32 %k) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
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
  %sub = add nsw i32 %j, -2
  %cmp = icmp sgt i32 %conv, %sub
  %sub5 = add nsw i32 %i, -2
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
  %idxprom = sext i32 %conv to i64
  %idxprom9 = sext i32 %conv3 to i64
  %arrayidx10 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 0, i64 %idxprom, i64 %idxprom9
  %14 = bitcast [5 x double]* %arrayidx10 to i64*
  %15 = load i64, i64* %14, align 8, !tbaa !7
  %arrayidx12 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 0
  %16 = bitcast [5 x double]* %q to i64*
  store i64 %15, i64* %16, align 16, !tbaa !7
  %arrayidx18 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %17 = bitcast double* %arrayidx18 to i64*
  %18 = load i64, i64* %17, align 8, !tbaa !7
  %arrayidx19 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 1
  %19 = bitcast double* %arrayidx19 to i64*
  store i64 %18, i64* %19, align 8, !tbaa !7
  %arrayidx25 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %20 = bitcast double* %arrayidx25 to i64*
  %21 = load i64, i64* %20, align 8, !tbaa !7
  %arrayidx26 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 2
  %22 = bitcast double* %arrayidx26 to i64*
  store i64 %21, i64* %22, align 16, !tbaa !7
  %arrayidx32 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %23 = bitcast double* %arrayidx32 to i64*
  %24 = load i64, i64* %23, align 8, !tbaa !7
  %arrayidx33 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 3
  %25 = bitcast double* %arrayidx33 to i64*
  store i64 %24, i64* %25, align 8, !tbaa !7
  %arrayidx39 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %26 = bitcast double* %arrayidx39 to i64*
  %27 = load i64, i64* %26, align 8, !tbaa !7
  %arrayidx40 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 4
  %28 = bitcast double* %arrayidx40 to i64*
  store i64 %27, i64* %28, align 16, !tbaa !7
  %arrayidx41 = getelementptr inbounds double, double* %a, i64 845
  %29 = bitcast double* %arrayidx41 to [13 x [13 x [5 x double]]]*
  %arrayidx45 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %29, i64 0, i64 %idxprom, i64 %idxprom9
  %30 = bitcast [5 x double]* %arrayidx45 to i64*
  %31 = load i64, i64* %30, align 8, !tbaa !7
  %arrayidx47 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 0
  %32 = bitcast [5 x double]* %r to i64*
  store i64 %31, i64* %32, align 16, !tbaa !7
  %arrayidx53 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %29, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %33 = bitcast double* %arrayidx53 to i64*
  %34 = load i64, i64* %33, align 8, !tbaa !7
  %arrayidx54 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 1
  %35 = bitcast double* %arrayidx54 to i64*
  store i64 %34, i64* %35, align 8, !tbaa !7
  %arrayidx60 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %29, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %36 = bitcast double* %arrayidx60 to i64*
  %37 = load i64, i64* %36, align 8, !tbaa !7
  %arrayidx61 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 2
  %38 = bitcast double* %arrayidx61 to i64*
  store i64 %37, i64* %38, align 16, !tbaa !7
  %arrayidx67 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %29, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %39 = bitcast double* %arrayidx67 to i64*
  %40 = load i64, i64* %39, align 8, !tbaa !7
  %arrayidx68 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 3
  %41 = bitcast double* %arrayidx68 to i64*
  store i64 %40, i64* %41, align 8, !tbaa !7
  %arrayidx74 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %29, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %42 = bitcast double* %arrayidx74 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !7
  %arrayidx75 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 4
  %44 = bitcast double* %arrayidx75 to i64*
  store i64 %43, i64* %44, align 16, !tbaa !7
  %arrayidx76 = getelementptr inbounds double, double* %a, i64 1690
  %45 = bitcast double* %arrayidx76 to [13 x [13 x [5 x double]]]*
  %arrayidx80 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %45, i64 0, i64 %idxprom, i64 %idxprom9
  %46 = bitcast [5 x double]* %arrayidx80 to i64*
  %47 = load i64, i64* %46, align 8, !tbaa !7
  %48 = bitcast [5 x double]* %s to i64*
  store i64 %47, i64* %48, align 16, !tbaa !7
  %arrayidx88 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %45, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %49 = bitcast double* %arrayidx88 to i64*
  %50 = load i64, i64* %49, align 8, !tbaa !7
  %arrayidx89 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 1
  %51 = bitcast double* %arrayidx89 to i64*
  store i64 %50, i64* %51, align 8, !tbaa !7
  %arrayidx95 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %45, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %52 = bitcast double* %arrayidx95 to i64*
  %53 = load i64, i64* %52, align 8, !tbaa !7
  %arrayidx96 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 2
  %54 = bitcast double* %arrayidx96 to i64*
  store i64 %53, i64* %54, align 16, !tbaa !7
  %arrayidx102 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %45, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %55 = bitcast double* %arrayidx102 to i64*
  %56 = load i64, i64* %55, align 8, !tbaa !7
  %arrayidx103 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 3
  %57 = bitcast double* %arrayidx103 to i64*
  store i64 %56, i64* %57, align 8, !tbaa !7
  %arrayidx109 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %45, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %58 = bitcast double* %arrayidx109 to i64*
  %59 = load i64, i64* %58, align 8, !tbaa !7
  %arrayidx110 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 4
  %60 = bitcast double* %arrayidx110 to i64*
  store i64 %59, i64* %60, align 16, !tbaa !7
  %arrayidx115 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 0, i64 %idxprom, i64 %idxprom9
  %61 = load double, double* %arrayidx115, align 8, !tbaa !7
  %arrayidx116 = getelementptr inbounds double, double* %b, i64 169
  %62 = bitcast double* %arrayidx116 to [13 x [13 x double]]*
  %arrayidx120 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %62, i64 0, i64 %idxprom, i64 %idxprom9
  %63 = load double, double* %arrayidx120, align 8, !tbaa !7
  %arrayidx125 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 0, i64 %idxprom, i64 %idxprom9
  %64 = load double, double* %arrayidx125, align 8, !tbaa !7
  %arrayidx126 = getelementptr inbounds double, double* %c, i64 169
  %65 = bitcast double* %arrayidx126 to [13 x [13 x double]]*
  %arrayidx130 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %65, i64 0, i64 %idxprom, i64 %idxprom9
  %66 = load double, double* %arrayidx130, align 8, !tbaa !7
  %arrayidx135 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 0, i64 %idxprom, i64 %idxprom9
  %67 = load double, double* %arrayidx135, align 8, !tbaa !7
  %arrayidx136 = getelementptr inbounds double, double* %d, i64 169
  %68 = bitcast double* %arrayidx136 to [13 x [13 x double]]*
  %arrayidx140 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %68, i64 0, i64 %idxprom, i64 %idxprom9
  %69 = load double, double* %arrayidx140, align 8, !tbaa !7
  %arrayidx145 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 0, i64 %idxprom, i64 %idxprom9
  %70 = load double, double* %arrayidx145, align 8, !tbaa !7
  %arrayidx146 = getelementptr inbounds double, double* %e, i64 169
  %71 = bitcast double* %arrayidx146 to [13 x [13 x double]]*
  %arrayidx150 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %71, i64 0, i64 %idxprom, i64 %idxprom9
  %72 = load double, double* %arrayidx150, align 8, !tbaa !7
  %arrayidx155 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 0, i64 %idxprom, i64 %idxprom9
  %73 = load double, double* %arrayidx155, align 8, !tbaa !7
  %arrayidx156 = getelementptr inbounds double, double* %f, i64 169
  %74 = bitcast double* %arrayidx156 to [13 x [13 x double]]*
  %arrayidx160 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %74, i64 0, i64 %idxprom, i64 %idxprom9
  %75 = load double, double* %arrayidx160, align 8, !tbaa !7
  %arrayidx165 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 0, i64 %idxprom, i64 %idxprom9
  %76 = load double, double* %arrayidx165, align 8, !tbaa !7
  %arrayidx166 = getelementptr inbounds double, double* %g, i64 169
  %77 = bitcast double* %arrayidx166 to [13 x [13 x double]]*
  %arrayidx170 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %77, i64 0, i64 %idxprom, i64 %idxprom9
  %78 = load double, double* %arrayidx170, align 8, !tbaa !7
  %arrayidx171 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 0
  %79 = bitcast [5 x double]* %u to i64*
  %80 = load i64, i64* %79, align 16, !tbaa !7
  %81 = bitcast [5 x double]* %t to i64*
  store i64 %80, i64* %81, align 16, !tbaa !7
  %arrayidx173 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 1
  %82 = bitcast double* %arrayidx173 to i64*
  %83 = load i64, i64* %82, align 8, !tbaa !7
  %arrayidx174 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 1
  %84 = bitcast double* %arrayidx174 to i64*
  store i64 %83, i64* %84, align 8, !tbaa !7
  %arrayidx175 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 2
  %85 = bitcast double* %arrayidx175 to i64*
  %86 = load i64, i64* %85, align 16, !tbaa !7
  %arrayidx176 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 2
  %87 = bitcast double* %arrayidx176 to i64*
  store i64 %86, i64* %87, align 16, !tbaa !7
  %arrayidx177 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 3
  %88 = bitcast double* %arrayidx177 to i64*
  %89 = load i64, i64* %88, align 8, !tbaa !7
  %arrayidx178 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 3
  %90 = bitcast double* %arrayidx178 to i64*
  store i64 %89, i64* %90, align 8, !tbaa !7
  %arrayidx179 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 4
  %91 = bitcast double* %arrayidx179 to i64*
  %92 = load i64, i64* %91, align 16, !tbaa !7
  %arrayidx180 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 4
  %93 = bitcast double* %arrayidx180 to i64*
  store i64 %92, i64* %93, align 16, !tbaa !7
  store i64 %15, i64* %79, align 16, !tbaa !7
  store i64 %18, i64* %82, align 8, !tbaa !7
  store i64 %21, i64* %85, align 16, !tbaa !7
  store i64 %24, i64* %88, align 8, !tbaa !7
  store i64 %27, i64* %91, align 16, !tbaa !7
  store i64 %31, i64* %16, align 16, !tbaa !7
  store i64 %34, i64* %19, align 8, !tbaa !7
  store i64 %37, i64* %22, align 16, !tbaa !7
  store i64 %40, i64* %25, align 8, !tbaa !7
  store i64 %43, i64* %28, align 16, !tbaa !7
  store i64 %47, i64* %32, align 16, !tbaa !7
  store i64 %50, i64* %35, align 8, !tbaa !7
  store i64 %53, i64* %38, align 16, !tbaa !7
  store i64 %56, i64* %41, align 8, !tbaa !7
  store i64 %59, i64* %44, align 16, !tbaa !7
  %arrayidx213 = getelementptr inbounds double, double* %a, i64 2535
  %94 = bitcast double* %arrayidx213 to [13 x [13 x [5 x double]]]*
  %arrayidx217 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %94, i64 0, i64 %idxprom, i64 %idxprom9
  %95 = bitcast [5 x double]* %arrayidx217 to i64*
  %96 = load i64, i64* %95, align 8, !tbaa !7
  store i64 %96, i64* %48, align 16, !tbaa !7
  %arrayidx227 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %94, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %97 = bitcast double* %arrayidx227 to i64*
  %98 = load i64, i64* %97, align 8, !tbaa !7
  store i64 %98, i64* %51, align 8, !tbaa !7
  %arrayidx236 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %94, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %99 = bitcast double* %arrayidx236 to i64*
  %100 = load i64, i64* %99, align 8, !tbaa !7
  store i64 %100, i64* %54, align 16, !tbaa !7
  %arrayidx245 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %94, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %101 = bitcast double* %arrayidx245 to i64*
  %102 = load i64, i64* %101, align 8, !tbaa !7
  store i64 %102, i64* %57, align 8, !tbaa !7
  %arrayidx254 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %94, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %103 = bitcast double* %arrayidx254 to i64*
  %104 = load i64, i64* %103, align 8, !tbaa !7
  store i64 %104, i64* %60, align 16, !tbaa !7
  %arrayidx258 = getelementptr inbounds double, double* %b, i64 338
  %105 = bitcast double* %arrayidx258 to [13 x [13 x double]]*
  %arrayidx262 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %105, i64 0, i64 %idxprom, i64 %idxprom9
  %106 = load double, double* %arrayidx262, align 8, !tbaa !7
  %arrayidx265 = getelementptr inbounds double, double* %c, i64 338
  %107 = bitcast double* %arrayidx265 to [13 x [13 x double]]*
  %arrayidx269 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %107, i64 0, i64 %idxprom, i64 %idxprom9
  %108 = load double, double* %arrayidx269, align 8, !tbaa !7
  %arrayidx272 = getelementptr inbounds double, double* %d, i64 338
  %109 = bitcast double* %arrayidx272 to [13 x [13 x double]]*
  %arrayidx276 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %109, i64 0, i64 %idxprom, i64 %idxprom9
  %110 = load double, double* %arrayidx276, align 8, !tbaa !7
  %arrayidx279 = getelementptr inbounds double, double* %e, i64 338
  %111 = bitcast double* %arrayidx279 to [13 x [13 x double]]*
  %arrayidx283 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %111, i64 0, i64 %idxprom, i64 %idxprom9
  %112 = load double, double* %arrayidx283, align 8, !tbaa !7
  %arrayidx286 = getelementptr inbounds double, double* %f, i64 338
  %113 = bitcast double* %arrayidx286 to [13 x [13 x double]]*
  %arrayidx290 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %113, i64 0, i64 %idxprom, i64 %idxprom9
  %114 = load double, double* %arrayidx290, align 8, !tbaa !7
  %arrayidx293 = getelementptr inbounds double, double* %g, i64 338
  %115 = bitcast double* %arrayidx293 to [13 x [13 x double]]*
  %arrayidx297 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %115, i64 0, i64 %idxprom, i64 %idxprom9
  %116 = load double, double* %arrayidx297, align 8, !tbaa !7
  %arrayidx299 = getelementptr inbounds double, double* %h, i64 845
  %117 = bitcast double* %arrayidx299 to [13 x [13 x [5 x double]]]*
  %arrayidx304 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %117, i64 0, i64 %idxprom, i64 %idxprom9, i64 0
  %118 = load double, double* %arrayidx304, align 8, !tbaa !7
  %119 = bitcast i64 %47 to double
  %120 = bitcast i64 %31 to double
  %121 = tail call double @llvm.fmuladd.f64(double %120, double -2.000000e+00, double %119)
  %122 = bitcast i64 %15 to double
  %add308 = fadd double %121, %122
  %123 = tail call double @llvm.fmuladd.f64(double %add308, double 1.210000e+02, double %118)
  %124 = bitcast i64 %56 to double
  %125 = bitcast i64 %24 to double
  %sub311 = fsub double %124, %125
  %126 = tail call double @llvm.fmuladd.f64(double %sub311, double -5.500000e+00, double %123)
  %arrayidx319 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %117, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %127 = load double, double* %arrayidx319, align 8, !tbaa !7
  %128 = bitcast i64 %50 to double
  %129 = bitcast i64 %34 to double
  %130 = tail call double @llvm.fmuladd.f64(double %129, double -2.000000e+00, double %128)
  %131 = bitcast i64 %18 to double
  %add323 = fadd double %130, %131
  %132 = tail call double @llvm.fmuladd.f64(double %add323, double 1.210000e+02, double %127)
  %133 = tail call double @llvm.fmuladd.f64(double %63, double -2.000000e+00, double %106)
  %add324 = fadd double %61, %133
  %134 = tail call double @llvm.fmuladd.f64(double %add324, double 0x4028333333333334, double %132)
  %135 = fneg double %131
  %neg = fmul double %67, %135
  %136 = tail call double @llvm.fmuladd.f64(double %128, double %110, double %neg)
  %137 = tail call double @llvm.fmuladd.f64(double %136, double -5.500000e+00, double %134)
  %arrayidx335 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %117, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %138 = load double, double* %arrayidx335, align 8, !tbaa !7
  %139 = bitcast i64 %53 to double
  %140 = bitcast i64 %37 to double
  %141 = tail call double @llvm.fmuladd.f64(double %140, double -2.000000e+00, double %139)
  %142 = bitcast i64 %21 to double
  %add339 = fadd double %141, %142
  %143 = tail call double @llvm.fmuladd.f64(double %add339, double 1.210000e+02, double %138)
  %144 = tail call double @llvm.fmuladd.f64(double %66, double -2.000000e+00, double %108)
  %add340 = fadd double %64, %144
  %145 = tail call double @llvm.fmuladd.f64(double %add340, double 0x4028333333333334, double %143)
  %146 = fneg double %142
  %neg344 = fmul double %67, %146
  %147 = tail call double @llvm.fmuladd.f64(double %139, double %110, double %neg344)
  %148 = tail call double @llvm.fmuladd.f64(double %147, double -5.500000e+00, double %145)
  %arrayidx352 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %117, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %149 = load double, double* %arrayidx352, align 8, !tbaa !7
  %150 = load double, double* %arrayidx33, align 8, !tbaa !7
  %151 = tail call double @llvm.fmuladd.f64(double %150, double -2.000000e+00, double %124)
  %add356 = fadd double %151, %125
  %152 = tail call double @llvm.fmuladd.f64(double %add356, double 1.210000e+02, double %149)
  %153 = tail call double @llvm.fmuladd.f64(double %69, double -2.000000e+00, double %110)
  %add357 = fadd double %67, %153
  %154 = tail call double @llvm.fmuladd.f64(double %add357, double 0x4030222222222222, double %152)
  %155 = fneg double %125
  %neg361 = fmul double %67, %155
  %156 = tail call double @llvm.fmuladd.f64(double %124, double %110, double %neg361)
  %157 = load double, double* %arrayidx75, align 16, !tbaa !7
  %sub363 = fsub double %157, %116
  %158 = load double, double* %arrayidx179, align 16, !tbaa !7
  %sub365 = fsub double %sub363, %158
  %add366 = fadd double %76, %sub365
  %159 = tail call double @llvm.fmuladd.f64(double %add366, double 4.000000e-01, double %156)
  %160 = tail call double @llvm.fmuladd.f64(double %159, double -5.500000e+00, double %154)
  %arrayidx374 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %117, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %161 = load double, double* %arrayidx374, align 8, !tbaa !7
  %162 = load double, double* %arrayidx40, align 16, !tbaa !7
  %163 = tail call double @llvm.fmuladd.f64(double %162, double -2.000000e+00, double %157)
  %add378 = fadd double %158, %163
  %164 = tail call double @llvm.fmuladd.f64(double %add378, double 1.210000e+02, double %161)
  %165 = tail call double @llvm.fmuladd.f64(double %72, double -2.000000e+00, double %112)
  %add379 = fadd double %70, %165
  %166 = tail call double @llvm.fmuladd.f64(double %add379, double 0xC0273B645A1CAC07, double %164)
  %167 = fmul double %69, -2.000000e+00
  %neg382 = fmul double %69, %167
  %168 = tail call double @llvm.fmuladd.f64(double %110, double %110, double %neg382)
  %169 = tail call double @llvm.fmuladd.f64(double %67, double %67, double %168)
  %170 = tail call double @llvm.fmuladd.f64(double %169, double 0x4000222222222222, double %166)
  %171 = fmul double %162, -2.000000e+00
  %neg387 = fmul double %75, %171
  %172 = tail call double @llvm.fmuladd.f64(double %157, double %114, double %neg387)
  %173 = tail call double @llvm.fmuladd.f64(double %158, double %73, double %172)
  %174 = tail call double @llvm.fmuladd.f64(double %173, double 0x4037B74BC6A7EF9D, double %170)
  %neg391 = fmul double %116, -4.000000e-01
  %175 = tail call double @llvm.fmuladd.f64(double %157, double 1.400000e+00, double %neg391)
  %neg395 = fmul double %76, -4.000000e-01
  %176 = tail call double @llvm.fmuladd.f64(double %158, double 1.400000e+00, double %neg395)
  %177 = fneg double %176
  %neg397 = fmul double %67, %177
  %178 = tail call double @llvm.fmuladd.f64(double %175, double %110, double %neg397)
  %179 = tail call double @llvm.fmuladd.f64(double %178, double -5.500000e+00, double %174)
  %180 = load double, double* %arrayidx12, align 16, !tbaa !7
  %181 = load double, double* %arrayidx47, align 16, !tbaa !7
  %neg408 = fmul double %181, -4.000000e+00
  %182 = tail call double @llvm.fmuladd.f64(double %180, double 5.000000e+00, double %neg408)
  %arrayidx410 = getelementptr inbounds [5 x double], [5 x double]* %s, i64 0, i64 0
  %183 = load double, double* %arrayidx410, align 16, !tbaa !7
  %add411 = fadd double %183, %182
  %184 = tail call double @llvm.fmuladd.f64(double %add411, double -2.500000e-01, double %126)
  store double %184, double* %arrayidx304, align 8, !tbaa !7
  %185 = load double, double* %arrayidx19, align 8, !tbaa !7
  %186 = load double, double* %arrayidx54, align 8, !tbaa !7
  %neg408.1 = fmul double %186, -4.000000e+00
  %187 = tail call double @llvm.fmuladd.f64(double %185, double 5.000000e+00, double %neg408.1)
  %188 = load double, double* %arrayidx89, align 8, !tbaa !7
  %add411.1 = fadd double %188, %187
  %189 = tail call double @llvm.fmuladd.f64(double %add411.1, double -2.500000e-01, double %137)
  store double %189, double* %arrayidx319, align 8, !tbaa !7
  %190 = load double, double* %arrayidx26, align 16, !tbaa !7
  %191 = load double, double* %arrayidx61, align 16, !tbaa !7
  %neg408.2 = fmul double %191, -4.000000e+00
  %192 = tail call double @llvm.fmuladd.f64(double %190, double 5.000000e+00, double %neg408.2)
  %193 = load double, double* %arrayidx96, align 16, !tbaa !7
  %add411.2 = fadd double %193, %192
  %194 = tail call double @llvm.fmuladd.f64(double %add411.2, double -2.500000e-01, double %148)
  store double %194, double* %arrayidx335, align 8, !tbaa !7
  %195 = load double, double* %arrayidx68, align 8, !tbaa !7
  %neg408.3 = fmul double %195, -4.000000e+00
  %196 = tail call double @llvm.fmuladd.f64(double %150, double 5.000000e+00, double %neg408.3)
  %197 = load double, double* %arrayidx103, align 8, !tbaa !7
  %add411.3 = fadd double %197, %196
  %198 = tail call double @llvm.fmuladd.f64(double %add411.3, double -2.500000e-01, double %160)
  store double %198, double* %arrayidx352, align 8, !tbaa !7
  %neg408.4 = fmul double %157, -4.000000e+00
  %199 = tail call double @llvm.fmuladd.f64(double %162, double 5.000000e+00, double %neg408.4)
  %200 = load double, double* %arrayidx110, align 16, !tbaa !7
  %add411.4 = fadd double %200, %199
  %201 = tail call double @llvm.fmuladd.f64(double %add411.4, double -2.500000e-01, double %179)
  store double %201, double* %arrayidx374, align 8, !tbaa !7
  %202 = bitcast double* %h to [13 x [13 x [5 x double]]]*
  store i64 %15, i64* %81, align 16, !tbaa !7
  store i64 %18, i64* %84, align 8, !tbaa !7
  store i64 %21, i64* %87, align 16, !tbaa !7
  store i64 %24, i64* %90, align 8, !tbaa !7
  store i64 %27, i64* %93, align 16, !tbaa !7
  store i64 %31, i64* %79, align 16, !tbaa !7
  store i64 %34, i64* %82, align 8, !tbaa !7
  store i64 %37, i64* %85, align 16, !tbaa !7
  store i64 %40, i64* %88, align 8, !tbaa !7
  store i64 %43, i64* %91, align 16, !tbaa !7
  store i64 %47, i64* %16, align 16, !tbaa !7
  store i64 %50, i64* %19, align 8, !tbaa !7
  store i64 %53, i64* %22, align 16, !tbaa !7
  store i64 %56, i64* %25, align 8, !tbaa !7
  store i64 %59, i64* %28, align 16, !tbaa !7
  store i64 %96, i64* %32, align 16, !tbaa !7
  store i64 %98, i64* %35, align 8, !tbaa !7
  store i64 %100, i64* %38, align 16, !tbaa !7
  store i64 %102, i64* %41, align 8, !tbaa !7
  store i64 %104, i64* %44, align 16, !tbaa !7
  %arrayidx462 = getelementptr inbounds double, double* %a, i64 3380
  %203 = bitcast double* %arrayidx462 to [13 x [13 x [5 x double]]]*
  %arrayidx466 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %203, i64 0, i64 %idxprom, i64 %idxprom9
  %204 = bitcast [5 x double]* %arrayidx466 to i64*
  %205 = load i64, i64* %204, align 8, !tbaa !7
  store i64 %205, i64* %48, align 16, !tbaa !7
  %arrayidx476 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %203, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %206 = bitcast double* %arrayidx476 to i64*
  %207 = load i64, i64* %206, align 8, !tbaa !7
  store i64 %207, i64* %51, align 8, !tbaa !7
  %arrayidx485 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %203, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %208 = bitcast double* %arrayidx485 to i64*
  %209 = load i64, i64* %208, align 8, !tbaa !7
  store i64 %209, i64* %54, align 16, !tbaa !7
  %arrayidx494 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %203, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %210 = bitcast double* %arrayidx494 to i64*
  %211 = load i64, i64* %210, align 8, !tbaa !7
  store i64 %211, i64* %57, align 8, !tbaa !7
  %arrayidx503 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %203, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %212 = bitcast double* %arrayidx503 to i64*
  %213 = load i64, i64* %212, align 8, !tbaa !7
  store i64 %213, i64* %60, align 16, !tbaa !7
  %arrayidx507 = getelementptr inbounds double, double* %b, i64 507
  %214 = bitcast double* %arrayidx507 to [13 x [13 x double]]*
  %arrayidx511 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %214, i64 0, i64 %idxprom, i64 %idxprom9
  %215 = load double, double* %arrayidx511, align 8, !tbaa !7
  %arrayidx514 = getelementptr inbounds double, double* %c, i64 507
  %216 = bitcast double* %arrayidx514 to [13 x [13 x double]]*
  %arrayidx518 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %216, i64 0, i64 %idxprom, i64 %idxprom9
  %217 = load double, double* %arrayidx518, align 8, !tbaa !7
  %arrayidx521 = getelementptr inbounds double, double* %d, i64 507
  %218 = bitcast double* %arrayidx521 to [13 x [13 x double]]*
  %arrayidx525 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %218, i64 0, i64 %idxprom, i64 %idxprom9
  %219 = load double, double* %arrayidx525, align 8, !tbaa !7
  %arrayidx528 = getelementptr inbounds double, double* %e, i64 507
  %220 = bitcast double* %arrayidx528 to [13 x [13 x double]]*
  %arrayidx532 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %220, i64 0, i64 %idxprom, i64 %idxprom9
  %221 = load double, double* %arrayidx532, align 8, !tbaa !7
  %arrayidx535 = getelementptr inbounds double, double* %f, i64 507
  %222 = bitcast double* %arrayidx535 to [13 x [13 x double]]*
  %arrayidx539 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %222, i64 0, i64 %idxprom, i64 %idxprom9
  %223 = load double, double* %arrayidx539, align 8, !tbaa !7
  %arrayidx542 = getelementptr inbounds double, double* %g, i64 507
  %224 = bitcast double* %arrayidx542 to [13 x [13 x double]]*
  %arrayidx546 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %224, i64 0, i64 %idxprom, i64 %idxprom9
  %225 = load double, double* %arrayidx546, align 8, !tbaa !7
  %arrayidx548 = getelementptr inbounds double, double* %h, i64 1690
  %226 = bitcast double* %arrayidx548 to [13 x [13 x [5 x double]]]*
  %arrayidx553 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %226, i64 0, i64 %idxprom, i64 %idxprom9, i64 0
  %227 = load double, double* %arrayidx553, align 8, !tbaa !7
  %228 = bitcast i64 %96 to double
  %229 = tail call double @llvm.fmuladd.f64(double %119, double -2.000000e+00, double %228)
  %add557 = fadd double %229, %120
  %230 = tail call double @llvm.fmuladd.f64(double %add557, double 1.210000e+02, double %227)
  %231 = bitcast i64 %102 to double
  %232 = bitcast i64 %40 to double
  %sub560 = fsub double %231, %232
  %233 = tail call double @llvm.fmuladd.f64(double %sub560, double -5.500000e+00, double %230)
  %arrayidx568 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %226, i64 0, i64 %idxprom, i64 %idxprom9, i64 1
  %234 = load double, double* %arrayidx568, align 8, !tbaa !7
  %235 = bitcast i64 %98 to double
  %236 = tail call double @llvm.fmuladd.f64(double %128, double -2.000000e+00, double %235)
  %add572 = fadd double %236, %129
  %237 = tail call double @llvm.fmuladd.f64(double %add572, double 1.210000e+02, double %234)
  %238 = tail call double @llvm.fmuladd.f64(double %106, double -2.000000e+00, double %215)
  %add573 = fadd double %63, %238
  %239 = tail call double @llvm.fmuladd.f64(double %add573, double 0x4028333333333334, double %237)
  %240 = fneg double %129
  %neg577 = fmul double %69, %240
  %241 = tail call double @llvm.fmuladd.f64(double %235, double %219, double %neg577)
  %242 = tail call double @llvm.fmuladd.f64(double %241, double -5.500000e+00, double %239)
  %arrayidx585 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %226, i64 0, i64 %idxprom, i64 %idxprom9, i64 2
  %243 = load double, double* %arrayidx585, align 8, !tbaa !7
  %244 = bitcast i64 %100 to double
  %245 = tail call double @llvm.fmuladd.f64(double %139, double -2.000000e+00, double %244)
  %add589 = fadd double %245, %140
  %246 = tail call double @llvm.fmuladd.f64(double %add589, double 1.210000e+02, double %243)
  %247 = tail call double @llvm.fmuladd.f64(double %108, double -2.000000e+00, double %217)
  %add590 = fadd double %66, %247
  %248 = tail call double @llvm.fmuladd.f64(double %add590, double 0x4028333333333334, double %246)
  %249 = fneg double %140
  %neg594 = fmul double %69, %249
  %250 = tail call double @llvm.fmuladd.f64(double %244, double %219, double %neg594)
  %251 = tail call double @llvm.fmuladd.f64(double %250, double -5.500000e+00, double %248)
  %arrayidx602 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %226, i64 0, i64 %idxprom, i64 %idxprom9, i64 3
  %252 = load double, double* %arrayidx602, align 8, !tbaa !7
  %253 = load double, double* %arrayidx33, align 8, !tbaa !7
  %254 = tail call double @llvm.fmuladd.f64(double %253, double -2.000000e+00, double %231)
  %add606 = fadd double %254, %232
  %255 = tail call double @llvm.fmuladd.f64(double %add606, double 1.210000e+02, double %252)
  %256 = tail call double @llvm.fmuladd.f64(double %110, double -2.000000e+00, double %219)
  %add607 = fadd double %69, %256
  %257 = tail call double @llvm.fmuladd.f64(double %add607, double 0x4030222222222222, double %255)
  %258 = fneg double %232
  %neg611 = fmul double %69, %258
  %259 = tail call double @llvm.fmuladd.f64(double %231, double %219, double %neg611)
  %260 = load double, double* %arrayidx75, align 16, !tbaa !7
  %sub613 = fsub double %260, %225
  %261 = load double, double* %arrayidx179, align 16, !tbaa !7
  %sub615 = fsub double %sub613, %261
  %add616 = fadd double %78, %sub615
  %262 = tail call double @llvm.fmuladd.f64(double %add616, double 4.000000e-01, double %259)
  %263 = tail call double @llvm.fmuladd.f64(double %262, double -5.500000e+00, double %257)
  %arrayidx624 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %226, i64 0, i64 %idxprom, i64 %idxprom9, i64 4
  %264 = load double, double* %arrayidx624, align 8, !tbaa !7
  %265 = load double, double* %arrayidx40, align 16, !tbaa !7
  %266 = tail call double @llvm.fmuladd.f64(double %265, double -2.000000e+00, double %260)
  %add628 = fadd double %261, %266
  %267 = tail call double @llvm.fmuladd.f64(double %add628, double 1.210000e+02, double %264)
  %268 = tail call double @llvm.fmuladd.f64(double %112, double -2.000000e+00, double %221)
  %add629 = fadd double %72, %268
  %269 = tail call double @llvm.fmuladd.f64(double %add629, double 0xC0273B645A1CAC07, double %267)
  %270 = fmul double %110, -2.000000e+00
  %neg632 = fmul double %110, %270
  %271 = tail call double @llvm.fmuladd.f64(double %219, double %219, double %neg632)
  %272 = tail call double @llvm.fmuladd.f64(double %69, double %69, double %271)
  %273 = tail call double @llvm.fmuladd.f64(double %272, double 0x4000222222222222, double %269)
  %274 = fmul double %265, -2.000000e+00
  %neg637 = fmul double %114, %274
  %275 = tail call double @llvm.fmuladd.f64(double %260, double %223, double %neg637)
  %276 = tail call double @llvm.fmuladd.f64(double %261, double %75, double %275)
  %277 = tail call double @llvm.fmuladd.f64(double %276, double 0x4037B74BC6A7EF9D, double %273)
  %neg641 = fmul double %225, -4.000000e-01
  %278 = tail call double @llvm.fmuladd.f64(double %260, double 1.400000e+00, double %neg641)
  %neg645 = fmul double %78, -4.000000e-01
  %279 = tail call double @llvm.fmuladd.f64(double %261, double 1.400000e+00, double %neg645)
  %280 = fneg double %279
  %neg647 = fmul double %69, %280
  %281 = tail call double @llvm.fmuladd.f64(double %278, double %219, double %neg647)
  %282 = tail call double @llvm.fmuladd.f64(double %281, double -5.500000e+00, double %277)
  %283 = load double, double* %arrayidx171, align 16, !tbaa !7
  %284 = load double, double* %arrayidx12, align 16, !tbaa !7
  %mul659 = fmul double %284, 6.000000e+00
  %285 = tail call double @llvm.fmuladd.f64(double %283, double -4.000000e+00, double %mul659)
  %286 = load double, double* %arrayidx47, align 16, !tbaa !7
  %287 = tail call double @llvm.fmuladd.f64(double %286, double -4.000000e+00, double %285)
  %288 = load double, double* %arrayidx410, align 16, !tbaa !7
  %add664 = fadd double %288, %287
  %289 = tail call double @llvm.fmuladd.f64(double %add664, double -2.500000e-01, double %233)
  store double %289, double* %arrayidx553, align 8, !tbaa !7
  %290 = load double, double* %arrayidx173, align 8, !tbaa !7
  %291 = load double, double* %arrayidx19, align 8, !tbaa !7
  %mul659.1 = fmul double %291, 6.000000e+00
  %292 = tail call double @llvm.fmuladd.f64(double %290, double -4.000000e+00, double %mul659.1)
  %293 = load double, double* %arrayidx54, align 8, !tbaa !7
  %294 = tail call double @llvm.fmuladd.f64(double %293, double -4.000000e+00, double %292)
  %295 = load double, double* %arrayidx89, align 8, !tbaa !7
  %add664.1 = fadd double %295, %294
  %296 = tail call double @llvm.fmuladd.f64(double %add664.1, double -2.500000e-01, double %242)
  store double %296, double* %arrayidx568, align 8, !tbaa !7
  %297 = load double, double* %arrayidx175, align 16, !tbaa !7
  %298 = load double, double* %arrayidx26, align 16, !tbaa !7
  %mul659.2 = fmul double %298, 6.000000e+00
  %299 = tail call double @llvm.fmuladd.f64(double %297, double -4.000000e+00, double %mul659.2)
  %300 = load double, double* %arrayidx61, align 16, !tbaa !7
  %301 = tail call double @llvm.fmuladd.f64(double %300, double -4.000000e+00, double %299)
  %302 = load double, double* %arrayidx96, align 16, !tbaa !7
  %add664.2 = fadd double %302, %301
  %303 = tail call double @llvm.fmuladd.f64(double %add664.2, double -2.500000e-01, double %251)
  store double %303, double* %arrayidx585, align 8, !tbaa !7
  %304 = load double, double* %arrayidx177, align 8, !tbaa !7
  %mul659.3 = fmul double %253, 6.000000e+00
  %305 = tail call double @llvm.fmuladd.f64(double %304, double -4.000000e+00, double %mul659.3)
  %306 = load double, double* %arrayidx68, align 8, !tbaa !7
  %307 = tail call double @llvm.fmuladd.f64(double %306, double -4.000000e+00, double %305)
  %308 = load double, double* %arrayidx103, align 8, !tbaa !7
  %add664.3 = fadd double %308, %307
  %309 = tail call double @llvm.fmuladd.f64(double %add664.3, double -2.500000e-01, double %263)
  store double %309, double* %arrayidx602, align 8, !tbaa !7
  %mul659.4 = fmul double %265, 6.000000e+00
  %310 = tail call double @llvm.fmuladd.f64(double %261, double -4.000000e+00, double %mul659.4)
  %311 = tail call double @llvm.fmuladd.f64(double %260, double -4.000000e+00, double %310)
  %312 = load double, double* %arrayidx110, align 16, !tbaa !7
  %add664.4 = fadd double %312, %311
  %313 = tail call double @llvm.fmuladd.f64(double %add664.4, double -2.500000e-01, double %282)
  store double %313, double* %arrayidx624, align 8, !tbaa !7
  %cmp6782105 = icmp slt i32 %k, 7
  %314 = bitcast double %283 to i64
  %315 = bitcast double %290 to i64
  %316 = bitcast double %297 to i64
  %317 = bitcast double %304 to i64
  %318 = bitcast double %261 to i64
  %319 = bitcast double %265 to i64
  %320 = bitcast double %260 to i64
  br i1 %cmp6782105, label %if.end.for.end940_crit_edge, label %for.body680.preheader

if.end.for.end940_crit_edge:                      ; preds = %if.end
  %.pre2144 = load i64, i64* %25, align 8, !tbaa !7
  %321 = bitcast i64 %.pre2144 to double
  %.pre2145 = add nsw i32 %k, -3
  br label %for.end940

for.body680.preheader:                            ; preds = %if.end
  %322 = add nsw i32 %k, -3
  %wide.trip.count = zext i32 %322 to i64
  %.pre2147 = load double, double* %arrayidx33, align 8, !tbaa !7
  %323 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 0
  %324 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 0
  %325 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 0
  %arrayidx917 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 0
  br label %for.body680

for.body680:                                      ; preds = %for.body680, %for.body680.preheader
  %326 = phi double [ %312, %for.body680.preheader ], [ %440, %for.body680 ]
  %327 = phi double [ %308, %for.body680.preheader ], [ %434, %for.body680 ]
  %328 = phi double [ %302, %for.body680.preheader ], [ %428, %for.body680 ]
  %329 = phi double [ %295, %for.body680.preheader ], [ %422, %for.body680 ]
  %330 = phi double [ %288, %for.body680.preheader ], [ %416, %for.body680 ]
  %331 = phi i64 [ %320, %for.body680.preheader ], [ %448, %for.body680 ]
  %332 = phi double [ %306, %for.body680.preheader ], [ %327, %for.body680 ]
  %333 = phi double [ %300, %for.body680.preheader ], [ %328, %for.body680 ]
  %334 = phi double [ %293, %for.body680.preheader ], [ %329, %for.body680 ]
  %335 = phi double [ %286, %for.body680.preheader ], [ %330, %for.body680 ]
  %336 = phi i64 [ %319, %for.body680.preheader ], [ %447, %for.body680 ]
  %337 = phi double [ %.pre2147, %for.body680.preheader ], [ %332, %for.body680 ]
  %338 = phi double [ %298, %for.body680.preheader ], [ %333, %for.body680 ]
  %339 = phi double [ %291, %for.body680.preheader ], [ %334, %for.body680 ]
  %340 = phi double [ %284, %for.body680.preheader ], [ %335, %for.body680 ]
  %341 = phi i64 [ %318, %for.body680.preheader ], [ %446, %for.body680 ]
  %342 = phi i64 [ %317, %for.body680.preheader ], [ %445, %for.body680 ]
  %343 = phi i64 [ %316, %for.body680.preheader ], [ %444, %for.body680 ]
  %344 = phi i64 [ %315, %for.body680.preheader ], [ %443, %for.body680 ]
  %345 = phi i64 [ %314, %for.body680.preheader ], [ %442, %for.body680 ]
  %indvars.iv = phi i64 [ 3, %for.body680.preheader ], [ %indvars.iv.next, %for.body680 ]
  %v.02117 = phi double [ %106, %for.body680.preheader ], [ %w.02116, %for.body680 ]
  %w.02116 = phi double [ %215, %for.body680.preheader ], [ %357, %for.body680 ]
  %y.02115 = phi double [ %108, %for.body680.preheader ], [ %z.02114, %for.body680 ]
  %z.02114 = phi double [ %217, %for.body680.preheader ], [ %358, %for.body680 ]
  %al.02113 = phi double [ %225, %for.body680.preheader ], [ %362, %for.body680 ]
  %ak.02112 = phi double [ %116, %for.body680.preheader ], [ %al.02113, %for.body680 ]
  %ai.02111 = phi double [ %223, %for.body680.preheader ], [ %361, %for.body680 ]
  %ah.02110 = phi double [ %114, %for.body680.preheader ], [ %ai.02111, %for.body680 ]
  %af.02109 = phi double [ %221, %for.body680.preheader ], [ %360, %for.body680 ]
  %ae.02108 = phi double [ %112, %for.body680.preheader ], [ %af.02109, %for.body680 ]
  %ac.02107 = phi double [ %219, %for.body680.preheader ], [ %359, %for.body680 ]
  %ab.02106 = phi double [ %110, %for.body680.preheader ], [ %ac.02107, %for.body680 ]
  store i64 %345, i64* %81, align 16, !tbaa !7
  store i64 %344, i64* %84, align 8, !tbaa !7
  store i64 %343, i64* %87, align 16, !tbaa !7
  store i64 %342, i64* %90, align 8, !tbaa !7
  store i64 %341, i64* %93, align 16, !tbaa !7
  store i64 %336, i64* %91, align 16, !tbaa !7
  store i64 %331, i64* %28, align 16, !tbaa !7
  %346 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx727 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %346, i64 %idxprom, i64 %idxprom9
  %347 = bitcast [5 x double]* %arrayidx727 to i64*
  %348 = load i64, i64* %347, align 8, !tbaa !7
  store i64 %348, i64* %48, align 16, !tbaa !7
  %arrayidx737 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %346, i64 %idxprom, i64 %idxprom9, i64 1
  %349 = bitcast double* %arrayidx737 to i64*
  %350 = load i64, i64* %349, align 8, !tbaa !7
  store i64 %350, i64* %51, align 8, !tbaa !7
  %arrayidx746 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %346, i64 %idxprom, i64 %idxprom9, i64 2
  %351 = bitcast double* %arrayidx746 to i64*
  %352 = load i64, i64* %351, align 8, !tbaa !7
  store i64 %352, i64* %54, align 16, !tbaa !7
  %arrayidx755 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %346, i64 %idxprom, i64 %idxprom9, i64 3
  %353 = bitcast double* %arrayidx755 to i64*
  %354 = load i64, i64* %353, align 8, !tbaa !7
  store i64 %354, i64* %57, align 8, !tbaa !7
  %arrayidx764 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %346, i64 %idxprom, i64 %idxprom9, i64 4
  %355 = bitcast double* %arrayidx764 to i64*
  %356 = load i64, i64* %355, align 8, !tbaa !7
  store i64 %356, i64* %60, align 16, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx772 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %indvars.iv.next, i64 %idxprom, i64 %idxprom9
  %357 = load double, double* %arrayidx772, align 8, !tbaa !7
  %arrayidx779 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %indvars.iv.next, i64 %idxprom, i64 %idxprom9
  %358 = load double, double* %arrayidx779, align 8, !tbaa !7
  %arrayidx786 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %indvars.iv.next, i64 %idxprom, i64 %idxprom9
  %359 = load double, double* %arrayidx786, align 8, !tbaa !7
  %arrayidx793 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %indvars.iv.next, i64 %idxprom, i64 %idxprom9
  %360 = load double, double* %arrayidx793, align 8, !tbaa !7
  %arrayidx800 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %indvars.iv.next, i64 %idxprom, i64 %idxprom9
  %361 = load double, double* %arrayidx800, align 8, !tbaa !7
  %arrayidx807 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %indvars.iv.next, i64 %idxprom, i64 %idxprom9
  %362 = load double, double* %arrayidx807, align 8, !tbaa !7
  %arrayidx814 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 0
  %363 = load double, double* %arrayidx814, align 8, !tbaa !7
  %364 = tail call double @llvm.fmuladd.f64(double %335, double -2.000000e+00, double %330)
  %add818 = fadd double %364, %340
  %365 = tail call double @llvm.fmuladd.f64(double %add818, double 1.210000e+02, double %363)
  %sub821 = fsub double %327, %337
  %366 = tail call double @llvm.fmuladd.f64(double %sub821, double -5.500000e+00, double %365)
  %arrayidx829 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 1
  %367 = load double, double* %arrayidx829, align 8, !tbaa !7
  %368 = tail call double @llvm.fmuladd.f64(double %334, double -2.000000e+00, double %329)
  %add833 = fadd double %368, %339
  %369 = tail call double @llvm.fmuladd.f64(double %add833, double 1.210000e+02, double %367)
  %370 = tail call double @llvm.fmuladd.f64(double %w.02116, double -2.000000e+00, double %357)
  %add834 = fadd double %v.02117, %370
  %371 = tail call double @llvm.fmuladd.f64(double %add834, double 0x4028333333333334, double %369)
  %372 = fneg double %339
  %neg838 = fmul double %ab.02106, %372
  %373 = tail call double @llvm.fmuladd.f64(double %329, double %359, double %neg838)
  %374 = tail call double @llvm.fmuladd.f64(double %373, double -5.500000e+00, double %371)
  %arrayidx846 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 2
  %375 = load double, double* %arrayidx846, align 8, !tbaa !7
  %376 = tail call double @llvm.fmuladd.f64(double %333, double -2.000000e+00, double %328)
  %add850 = fadd double %376, %338
  %377 = tail call double @llvm.fmuladd.f64(double %add850, double 1.210000e+02, double %375)
  %378 = tail call double @llvm.fmuladd.f64(double %z.02114, double -2.000000e+00, double %358)
  %add851 = fadd double %y.02115, %378
  %379 = tail call double @llvm.fmuladd.f64(double %add851, double 0x4028333333333334, double %377)
  %380 = fneg double %338
  %neg855 = fmul double %ab.02106, %380
  %381 = tail call double @llvm.fmuladd.f64(double %328, double %359, double %neg855)
  %382 = tail call double @llvm.fmuladd.f64(double %381, double -5.500000e+00, double %379)
  %arrayidx863 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 3
  %383 = load double, double* %arrayidx863, align 8, !tbaa !7
  %384 = tail call double @llvm.fmuladd.f64(double %332, double -2.000000e+00, double %327)
  %add867 = fadd double %337, %384
  %385 = tail call double @llvm.fmuladd.f64(double %add867, double 1.210000e+02, double %383)
  %386 = tail call double @llvm.fmuladd.f64(double %ac.02107, double -2.000000e+00, double %359)
  %add868 = fadd double %ab.02106, %386
  %387 = tail call double @llvm.fmuladd.f64(double %add868, double 0x4030222222222222, double %385)
  %388 = fneg double %337
  %neg872 = fmul double %ab.02106, %388
  %389 = tail call double @llvm.fmuladd.f64(double %327, double %359, double %neg872)
  %sub874 = fsub double %326, %362
  %390 = load double, double* %arrayidx179, align 16, !tbaa !7
  %sub876 = fsub double %sub874, %390
  %add877 = fadd double %ak.02112, %sub876
  %391 = tail call double @llvm.fmuladd.f64(double %add877, double 4.000000e-01, double %389)
  %392 = tail call double @llvm.fmuladd.f64(double %391, double -5.500000e+00, double %387)
  %arrayidx885 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %indvars.iv, i64 %idxprom, i64 %idxprom9, i64 4
  %393 = load double, double* %arrayidx885, align 8, !tbaa !7
  %394 = load double, double* %arrayidx40, align 16, !tbaa !7
  %395 = tail call double @llvm.fmuladd.f64(double %394, double -2.000000e+00, double %326)
  %add889 = fadd double %390, %395
  %396 = tail call double @llvm.fmuladd.f64(double %add889, double 1.210000e+02, double %393)
  %397 = tail call double @llvm.fmuladd.f64(double %af.02109, double -2.000000e+00, double %360)
  %add890 = fadd double %ae.02108, %397
  %398 = tail call double @llvm.fmuladd.f64(double %add890, double 0xC0273B645A1CAC07, double %396)
  %399 = fmul double %ac.02107, -2.000000e+00
  %neg893 = fmul double %ac.02107, %399
  %400 = tail call double @llvm.fmuladd.f64(double %359, double %359, double %neg893)
  %401 = tail call double @llvm.fmuladd.f64(double %ab.02106, double %ab.02106, double %400)
  %402 = tail call double @llvm.fmuladd.f64(double %401, double 0x4000222222222222, double %398)
  %403 = fmul double %394, -2.000000e+00
  %neg898 = fmul double %ai.02111, %403
  %404 = tail call double @llvm.fmuladd.f64(double %326, double %361, double %neg898)
  %405 = tail call double @llvm.fmuladd.f64(double %390, double %ah.02110, double %404)
  %406 = tail call double @llvm.fmuladd.f64(double %405, double 0x4037B74BC6A7EF9D, double %402)
  %neg902 = fmul double %362, -4.000000e-01
  %407 = tail call double @llvm.fmuladd.f64(double %326, double 1.400000e+00, double %neg902)
  %neg906 = fmul double %ak.02112, -4.000000e-01
  %408 = tail call double @llvm.fmuladd.f64(double %390, double 1.400000e+00, double %neg906)
  %409 = fneg double %408
  %neg908 = fmul double %ab.02106, %409
  %410 = tail call double @llvm.fmuladd.f64(double %407, double %359, double %neg908)
  %411 = tail call double @llvm.fmuladd.f64(double %410, double -5.500000e+00, double %406)
  %412 = load double, double* %arrayidx917, align 16, !tbaa !7
  %413 = tail call double @llvm.fmuladd.f64(double %340, double -4.000000e+00, double %412)
  %414 = tail call double @llvm.fmuladd.f64(double %335, double 6.000000e+00, double %413)
  %415 = tail call double @llvm.fmuladd.f64(double %330, double -4.000000e+00, double %414)
  %416 = load double, double* %arrayidx410, align 16, !tbaa !7
  %add926 = fadd double %415, %416
  %417 = tail call double @llvm.fmuladd.f64(double %add926, double -2.500000e-01, double %366)
  store double %417, double* %arrayidx814, align 8, !tbaa !7
  %418 = load double, double* %arrayidx174, align 8, !tbaa !7
  %419 = tail call double @llvm.fmuladd.f64(double %339, double -4.000000e+00, double %418)
  %420 = tail call double @llvm.fmuladd.f64(double %334, double 6.000000e+00, double %419)
  %421 = tail call double @llvm.fmuladd.f64(double %329, double -4.000000e+00, double %420)
  %422 = load double, double* %arrayidx89, align 8, !tbaa !7
  %add926.1 = fadd double %421, %422
  %423 = tail call double @llvm.fmuladd.f64(double %add926.1, double -2.500000e-01, double %374)
  store double %423, double* %arrayidx829, align 8, !tbaa !7
  %424 = load double, double* %arrayidx176, align 16, !tbaa !7
  %425 = tail call double @llvm.fmuladd.f64(double %338, double -4.000000e+00, double %424)
  %426 = tail call double @llvm.fmuladd.f64(double %333, double 6.000000e+00, double %425)
  %427 = tail call double @llvm.fmuladd.f64(double %328, double -4.000000e+00, double %426)
  %428 = load double, double* %arrayidx96, align 16, !tbaa !7
  %add926.2 = fadd double %427, %428
  %429 = tail call double @llvm.fmuladd.f64(double %add926.2, double -2.500000e-01, double %382)
  store double %429, double* %arrayidx846, align 8, !tbaa !7
  %430 = load double, double* %arrayidx178, align 8, !tbaa !7
  %431 = tail call double @llvm.fmuladd.f64(double %337, double -4.000000e+00, double %430)
  %432 = tail call double @llvm.fmuladd.f64(double %332, double 6.000000e+00, double %431)
  %433 = tail call double @llvm.fmuladd.f64(double %327, double -4.000000e+00, double %432)
  %434 = load double, double* %arrayidx103, align 8, !tbaa !7
  %add926.3 = fadd double %433, %434
  %435 = tail call double @llvm.fmuladd.f64(double %add926.3, double -2.500000e-01, double %392)
  store double %435, double* %arrayidx863, align 8, !tbaa !7
  %436 = load double, double* %arrayidx180, align 16, !tbaa !7
  %437 = tail call double @llvm.fmuladd.f64(double %390, double -4.000000e+00, double %436)
  %438 = tail call double @llvm.fmuladd.f64(double %394, double 6.000000e+00, double %437)
  %439 = tail call double @llvm.fmuladd.f64(double %326, double -4.000000e+00, double %438)
  %440 = load double, double* %arrayidx110, align 16, !tbaa !7
  %add926.4 = fadd double %439, %440
  %441 = tail call double @llvm.fmuladd.f64(double %add926.4, double -2.500000e-01, double %411)
  store double %441, double* %arrayidx885, align 8, !tbaa !7
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %442 = bitcast double %340 to i64
  %443 = bitcast double %339 to i64
  %444 = bitcast double %338 to i64
  %445 = bitcast double %337 to i64
  %446 = bitcast double %390 to i64
  %447 = bitcast double %394 to i64
  %448 = bitcast double %326 to i64
  br i1 %exitcond, label %for.end940.loopexit, label %for.body680

for.end940.loopexit:                              ; preds = %for.body680
  store double %340, double* %323, align 16, !tbaa !7
  store double %339, double* %arrayidx173, align 8, !tbaa !7
  store double %338, double* %arrayidx175, align 16, !tbaa !7
  store double %337, double* %arrayidx177, align 8, !tbaa !7
  store double %335, double* %324, align 16, !tbaa !7
  store double %334, double* %arrayidx19, align 8, !tbaa !7
  store double %333, double* %arrayidx26, align 16, !tbaa !7
  store double %332, double* %arrayidx33, align 8, !tbaa !7
  store double %330, double* %325, align 16, !tbaa !7
  store double %329, double* %arrayidx54, align 8, !tbaa !7
  store double %328, double* %arrayidx61, align 16, !tbaa !7
  store double %327, double* %arrayidx68, align 8, !tbaa !7
  store double %326, double* %arrayidx75, align 16, !tbaa !7
  %449 = bitcast double %332 to i64
  %.pre2146 = fmul double %al.02113, -4.000000e-01
  br label %for.end940

for.end940:                                       ; preds = %if.end.for.end940_crit_edge, %for.end940.loopexit
  %neg1377.pre-phi = phi double [ %neg641, %if.end.for.end940_crit_edge ], [ %neg902, %for.end940.loopexit ]
  %neg1167.pre-phi = phi double [ %neg391, %if.end.for.end940_crit_edge ], [ %.pre2146, %for.end940.loopexit ]
  %sub941.pre-phi = phi i32 [ %.pre2145, %if.end.for.end940_crit_edge ], [ %322, %for.end940.loopexit ]
  %.in = phi double [ %312, %if.end.for.end940_crit_edge ], [ %440, %for.end940.loopexit ]
  %.in2148 = phi double [ %308, %if.end.for.end940_crit_edge ], [ %434, %for.end940.loopexit ]
  %.in2149 = phi double [ %302, %if.end.for.end940_crit_edge ], [ %428, %for.end940.loopexit ]
  %.in2150 = phi double [ %295, %if.end.for.end940_crit_edge ], [ %422, %for.end940.loopexit ]
  %.in2151 = phi double [ %288, %if.end.for.end940_crit_edge ], [ %416, %for.end940.loopexit ]
  %450 = phi double [ %260, %if.end.for.end940_crit_edge ], [ %326, %for.end940.loopexit ]
  %451 = phi i64 [ %320, %if.end.for.end940_crit_edge ], [ %448, %for.end940.loopexit ]
  %.in2152 = phi double [ %306, %if.end.for.end940_crit_edge ], [ %327, %for.end940.loopexit ]
  %.in2153 = phi double [ %300, %if.end.for.end940_crit_edge ], [ %328, %for.end940.loopexit ]
  %.in2154 = phi double [ %293, %if.end.for.end940_crit_edge ], [ %329, %for.end940.loopexit ]
  %.in2155 = phi double [ %286, %if.end.for.end940_crit_edge ], [ %330, %for.end940.loopexit ]
  %452 = phi i64 [ %319, %if.end.for.end940_crit_edge ], [ %447, %for.end940.loopexit ]
  %453 = phi double [ %321, %if.end.for.end940_crit_edge ], [ %332, %for.end940.loopexit ]
  %454 = phi i64 [ %.pre2144, %if.end.for.end940_crit_edge ], [ %449, %for.end940.loopexit ]
  %.in2156 = phi double [ %298, %if.end.for.end940_crit_edge ], [ %333, %for.end940.loopexit ]
  %.in2157 = phi double [ %291, %if.end.for.end940_crit_edge ], [ %334, %for.end940.loopexit ]
  %.in2158 = phi double [ %284, %if.end.for.end940_crit_edge ], [ %335, %for.end940.loopexit ]
  %455 = phi i64 [ %318, %if.end.for.end940_crit_edge ], [ %446, %for.end940.loopexit ]
  %456 = phi i64 [ %317, %if.end.for.end940_crit_edge ], [ %445, %for.end940.loopexit ]
  %457 = phi i64 [ %316, %if.end.for.end940_crit_edge ], [ %444, %for.end940.loopexit ]
  %458 = phi i64 [ %315, %if.end.for.end940_crit_edge ], [ %443, %for.end940.loopexit ]
  %459 = phi i64 [ %314, %if.end.for.end940_crit_edge ], [ %442, %for.end940.loopexit ]
  %ab.0.lcssa = phi double [ %110, %if.end.for.end940_crit_edge ], [ %ac.02107, %for.end940.loopexit ]
  %ac.0.lcssa = phi double [ %219, %if.end.for.end940_crit_edge ], [ %359, %for.end940.loopexit ]
  %ae.0.lcssa = phi double [ %112, %if.end.for.end940_crit_edge ], [ %af.02109, %for.end940.loopexit ]
  %af.0.lcssa = phi double [ %221, %if.end.for.end940_crit_edge ], [ %360, %for.end940.loopexit ]
  %ah.0.lcssa = phi double [ %114, %if.end.for.end940_crit_edge ], [ %ai.02111, %for.end940.loopexit ]
  %ai.0.lcssa = phi double [ %223, %if.end.for.end940_crit_edge ], [ %361, %for.end940.loopexit ]
  %ak.0.lcssa = phi double [ %116, %if.end.for.end940_crit_edge ], [ %al.02113, %for.end940.loopexit ]
  %al.0.lcssa = phi double [ %225, %if.end.for.end940_crit_edge ], [ %362, %for.end940.loopexit ]
  %z.0.lcssa = phi double [ %217, %if.end.for.end940_crit_edge ], [ %358, %for.end940.loopexit ]
  %y.0.lcssa = phi double [ %108, %if.end.for.end940_crit_edge ], [ %z.02114, %for.end940.loopexit ]
  %w.0.lcssa = phi double [ %215, %if.end.for.end940_crit_edge ], [ %357, %for.end940.loopexit ]
  %v.0.lcssa = phi double [ %106, %if.end.for.end940_crit_edge ], [ %w.02116, %for.end940.loopexit ]
  store i64 %459, i64* %81, align 16, !tbaa !7
  store i64 %458, i64* %84, align 8, !tbaa !7
  store i64 %457, i64* %87, align 16, !tbaa !7
  store i64 %456, i64* %90, align 8, !tbaa !7
  store i64 %455, i64* %93, align 16, !tbaa !7
  %460 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 0
  store double %.in2158, double* %460, align 16, !tbaa !7
  store double %.in2157, double* %arrayidx173, align 8, !tbaa !7
  store double %.in2156, double* %arrayidx175, align 16, !tbaa !7
  store double %453, double* %arrayidx177, align 8, !tbaa !7
  store i64 %452, i64* %91, align 16, !tbaa !7
  %461 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 0
  store double %.in2155, double* %461, align 16, !tbaa !7
  store double %.in2154, double* %arrayidx19, align 8, !tbaa !7
  store double %.in2153, double* %arrayidx26, align 16, !tbaa !7
  store double %.in2152, double* %arrayidx33, align 8, !tbaa !7
  store double %450, double* %arrayidx40, align 16, !tbaa !7
  %462 = getelementptr inbounds [5 x double], [5 x double]* %r, i64 0, i64 0
  store double %.in2151, double* %462, align 16, !tbaa !7
  store double %.in2150, double* %arrayidx54, align 8, !tbaa !7
  store double %.in2149, double* %arrayidx61, align 16, !tbaa !7
  store double %.in2148, double* %arrayidx68, align 8, !tbaa !7
  store double %.in, double* %arrayidx75, align 16, !tbaa !7
  %add982 = add nsw i32 %k, -1
  %idxprom983 = sext i32 %add982 to i64
  %arrayidx988 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom983, i64 %idxprom, i64 %idxprom9
  %463 = bitcast [5 x double]* %arrayidx988 to i64*
  %464 = load i64, i64* %463, align 8, !tbaa !7
  store i64 %464, i64* %48, align 16, !tbaa !7
  %arrayidx998 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom983, i64 %idxprom, i64 %idxprom9, i64 1
  %465 = bitcast double* %arrayidx998 to i64*
  %466 = load i64, i64* %465, align 8, !tbaa !7
  store i64 %466, i64* %51, align 8, !tbaa !7
  %arrayidx1007 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom983, i64 %idxprom, i64 %idxprom9, i64 2
  %467 = bitcast double* %arrayidx1007 to i64*
  %468 = load i64, i64* %467, align 8, !tbaa !7
  store i64 %468, i64* %54, align 16, !tbaa !7
  %arrayidx1016 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom983, i64 %idxprom, i64 %idxprom9, i64 3
  %469 = bitcast double* %arrayidx1016 to i64*
  %470 = load i64, i64* %469, align 8, !tbaa !7
  store i64 %470, i64* %57, align 8, !tbaa !7
  %arrayidx1025 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %13, i64 %idxprom983, i64 %idxprom, i64 %idxprom9, i64 4
  %471 = bitcast double* %arrayidx1025 to i64*
  %472 = load i64, i64* %471, align 8, !tbaa !7
  store i64 %472, i64* %60, align 16, !tbaa !7
  %add1027 = add nsw i32 %k, -2
  %idxprom1028 = sext i32 %add1027 to i64
  %arrayidx1033 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9
  %473 = load double, double* %arrayidx1033, align 8, !tbaa !7
  %arrayidx1040 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9
  %474 = load double, double* %arrayidx1040, align 8, !tbaa !7
  %arrayidx1047 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9
  %475 = load double, double* %arrayidx1047, align 8, !tbaa !7
  %arrayidx1054 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9
  %476 = load double, double* %arrayidx1054, align 8, !tbaa !7
  %arrayidx1061 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9
  %477 = load double, double* %arrayidx1061, align 8, !tbaa !7
  %arrayidx1068 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9
  %478 = load double, double* %arrayidx1068, align 8, !tbaa !7
  %idxprom1069 = sext i32 %sub941.pre-phi to i64
  %arrayidx1075 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %idxprom1069, i64 %idxprom, i64 %idxprom9, i64 0
  %479 = load double, double* %arrayidx1075, align 8, !tbaa !7
  %480 = tail call double @llvm.fmuladd.f64(double %.in2155, double -2.000000e+00, double %.in2151)
  %add1079 = fadd double %480, %.in2158
  %481 = tail call double @llvm.fmuladd.f64(double %add1079, double 1.210000e+02, double %479)
  %sub1082 = fsub double %.in2148, %453
  %482 = tail call double @llvm.fmuladd.f64(double %sub1082, double -5.500000e+00, double %481)
  %arrayidx1090 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %idxprom1069, i64 %idxprom, i64 %idxprom9, i64 1
  %483 = load double, double* %arrayidx1090, align 8, !tbaa !7
  %484 = tail call double @llvm.fmuladd.f64(double %.in2154, double -2.000000e+00, double %.in2150)
  %add1094 = fadd double %484, %.in2157
  %485 = tail call double @llvm.fmuladd.f64(double %add1094, double 1.210000e+02, double %483)
  %486 = tail call double @llvm.fmuladd.f64(double %w.0.lcssa, double -2.000000e+00, double %473)
  %add1095 = fadd double %v.0.lcssa, %486
  %487 = tail call double @llvm.fmuladd.f64(double %add1095, double 0x4028333333333334, double %485)
  %488 = fneg double %.in2157
  %neg1099 = fmul double %ab.0.lcssa, %488
  %489 = tail call double @llvm.fmuladd.f64(double %.in2150, double %475, double %neg1099)
  %490 = tail call double @llvm.fmuladd.f64(double %489, double -5.500000e+00, double %487)
  %arrayidx1107 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %idxprom1069, i64 %idxprom, i64 %idxprom9, i64 2
  %491 = load double, double* %arrayidx1107, align 8, !tbaa !7
  %492 = tail call double @llvm.fmuladd.f64(double %.in2153, double -2.000000e+00, double %.in2149)
  %add1111 = fadd double %492, %.in2156
  %493 = tail call double @llvm.fmuladd.f64(double %add1111, double 1.210000e+02, double %491)
  %494 = tail call double @llvm.fmuladd.f64(double %z.0.lcssa, double -2.000000e+00, double %474)
  %add1112 = fadd double %y.0.lcssa, %494
  %495 = tail call double @llvm.fmuladd.f64(double %add1112, double 0x4028333333333334, double %493)
  %496 = fneg double %.in2156
  %neg1116 = fmul double %ab.0.lcssa, %496
  %497 = tail call double @llvm.fmuladd.f64(double %.in2149, double %475, double %neg1116)
  %498 = tail call double @llvm.fmuladd.f64(double %497, double -5.500000e+00, double %495)
  %arrayidx1124 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %idxprom1069, i64 %idxprom, i64 %idxprom9, i64 3
  %499 = load double, double* %arrayidx1124, align 8, !tbaa !7
  %500 = tail call double @llvm.fmuladd.f64(double %.in2152, double -2.000000e+00, double %.in2148)
  %add1128 = fadd double %453, %500
  %501 = tail call double @llvm.fmuladd.f64(double %add1128, double 1.210000e+02, double %499)
  %502 = tail call double @llvm.fmuladd.f64(double %ac.0.lcssa, double -2.000000e+00, double %475)
  %add1129 = fadd double %ab.0.lcssa, %502
  %503 = tail call double @llvm.fmuladd.f64(double %add1129, double 0x4030222222222222, double %501)
  %504 = fneg double %453
  %neg1133 = fmul double %ab.0.lcssa, %504
  %505 = tail call double @llvm.fmuladd.f64(double %.in2148, double %475, double %neg1133)
  %sub1135 = fsub double %.in, %478
  %506 = load double, double* %arrayidx179, align 16, !tbaa !7
  %sub1137 = fsub double %sub1135, %506
  %add1138 = fadd double %ak.0.lcssa, %sub1137
  %507 = tail call double @llvm.fmuladd.f64(double %add1138, double 4.000000e-01, double %505)
  %508 = tail call double @llvm.fmuladd.f64(double %507, double -5.500000e+00, double %503)
  %arrayidx1146 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %idxprom1069, i64 %idxprom, i64 %idxprom9, i64 4
  %509 = load double, double* %arrayidx1146, align 8, !tbaa !7
  %510 = load double, double* %arrayidx40, align 16, !tbaa !7
  %511 = tail call double @llvm.fmuladd.f64(double %510, double -2.000000e+00, double %.in)
  %add1150 = fadd double %506, %511
  %512 = tail call double @llvm.fmuladd.f64(double %add1150, double 1.210000e+02, double %509)
  %513 = tail call double @llvm.fmuladd.f64(double %af.0.lcssa, double -2.000000e+00, double %476)
  %add1151 = fadd double %ae.0.lcssa, %513
  %514 = tail call double @llvm.fmuladd.f64(double %add1151, double 0xC0273B645A1CAC07, double %512)
  %515 = fmul double %ac.0.lcssa, -2.000000e+00
  %neg1154 = fmul double %ac.0.lcssa, %515
  %516 = tail call double @llvm.fmuladd.f64(double %475, double %475, double %neg1154)
  %517 = tail call double @llvm.fmuladd.f64(double %ab.0.lcssa, double %ab.0.lcssa, double %516)
  %518 = tail call double @llvm.fmuladd.f64(double %517, double 0x4000222222222222, double %514)
  %519 = fmul double %510, -2.000000e+00
  %neg1159 = fmul double %ai.0.lcssa, %519
  %520 = tail call double @llvm.fmuladd.f64(double %.in, double %477, double %neg1159)
  %521 = tail call double @llvm.fmuladd.f64(double %506, double %ah.0.lcssa, double %520)
  %522 = tail call double @llvm.fmuladd.f64(double %521, double 0x4037B74BC6A7EF9D, double %518)
  %neg1163 = fmul double %478, -4.000000e-01
  %523 = tail call double @llvm.fmuladd.f64(double %.in, double 1.400000e+00, double %neg1163)
  %524 = tail call double @llvm.fmuladd.f64(double %506, double 1.400000e+00, double %neg1167.pre-phi)
  %525 = fneg double %524
  %neg1169 = fmul double %ab.0.lcssa, %525
  %526 = tail call double @llvm.fmuladd.f64(double %523, double %475, double %neg1169)
  %527 = tail call double @llvm.fmuladd.f64(double %526, double -5.500000e+00, double %522)
  %arrayidx1178 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 0
  %528 = load double, double* %arrayidx1178, align 16, !tbaa !7
  %529 = load double, double* %arrayidx171, align 16, !tbaa !7
  %530 = tail call double @llvm.fmuladd.f64(double %529, double -4.000000e+00, double %528)
  %531 = load double, double* %arrayidx12, align 16, !tbaa !7
  %532 = tail call double @llvm.fmuladd.f64(double %531, double 6.000000e+00, double %530)
  %533 = load double, double* %arrayidx47, align 16, !tbaa !7
  %534 = tail call double @llvm.fmuladd.f64(double %533, double -4.000000e+00, double %532)
  %535 = tail call double @llvm.fmuladd.f64(double %534, double -2.500000e-01, double %482)
  store double %535, double* %arrayidx1075, align 8, !tbaa !7
  %536 = load double, double* %arrayidx174, align 8, !tbaa !7
  %537 = load double, double* %arrayidx173, align 8, !tbaa !7
  %538 = tail call double @llvm.fmuladd.f64(double %537, double -4.000000e+00, double %536)
  %539 = load double, double* %arrayidx19, align 8, !tbaa !7
  %540 = tail call double @llvm.fmuladd.f64(double %539, double 6.000000e+00, double %538)
  %541 = load double, double* %arrayidx54, align 8, !tbaa !7
  %542 = tail call double @llvm.fmuladd.f64(double %541, double -4.000000e+00, double %540)
  %543 = tail call double @llvm.fmuladd.f64(double %542, double -2.500000e-01, double %490)
  store double %543, double* %arrayidx1090, align 8, !tbaa !7
  %544 = load double, double* %arrayidx176, align 16, !tbaa !7
  %545 = load double, double* %arrayidx175, align 16, !tbaa !7
  %546 = tail call double @llvm.fmuladd.f64(double %545, double -4.000000e+00, double %544)
  %547 = load double, double* %arrayidx26, align 16, !tbaa !7
  %548 = tail call double @llvm.fmuladd.f64(double %547, double 6.000000e+00, double %546)
  %549 = load double, double* %arrayidx61, align 16, !tbaa !7
  %550 = tail call double @llvm.fmuladd.f64(double %549, double -4.000000e+00, double %548)
  %551 = tail call double @llvm.fmuladd.f64(double %550, double -2.500000e-01, double %498)
  store double %551, double* %arrayidx1107, align 8, !tbaa !7
  %552 = load double, double* %arrayidx178, align 8, !tbaa !7
  %553 = load double, double* %arrayidx177, align 8, !tbaa !7
  %554 = tail call double @llvm.fmuladd.f64(double %553, double -4.000000e+00, double %552)
  %555 = load double, double* %arrayidx33, align 8, !tbaa !7
  %556 = tail call double @llvm.fmuladd.f64(double %555, double 6.000000e+00, double %554)
  %557 = load double, double* %arrayidx68, align 8, !tbaa !7
  %558 = tail call double @llvm.fmuladd.f64(double %557, double -4.000000e+00, double %556)
  %559 = tail call double @llvm.fmuladd.f64(double %558, double -2.500000e-01, double %508)
  store double %559, double* %arrayidx1124, align 8, !tbaa !7
  %560 = load double, double* %arrayidx180, align 16, !tbaa !7
  %561 = tail call double @llvm.fmuladd.f64(double %506, double -4.000000e+00, double %560)
  %562 = tail call double @llvm.fmuladd.f64(double %510, double 6.000000e+00, double %561)
  %563 = load double, double* %arrayidx75, align 16, !tbaa !7
  %564 = tail call double @llvm.fmuladd.f64(double %563, double -4.000000e+00, double %562)
  %565 = tail call double @llvm.fmuladd.f64(double %564, double -2.500000e-01, double %527)
  store double %565, double* %arrayidx1146, align 8, !tbaa !7
  %566 = getelementptr inbounds [5 x double], [5 x double]* %t, i64 0, i64 0
  store double %.in2158, double* %566, align 16, !tbaa !7
  store double %.in2157, double* %arrayidx174, align 8, !tbaa !7
  store double %.in2156, double* %arrayidx176, align 16, !tbaa !7
  store i64 %454, i64* %90, align 8, !tbaa !7
  store i64 %452, i64* %93, align 16, !tbaa !7
  %567 = getelementptr inbounds [5 x double], [5 x double]* %u, i64 0, i64 0
  store double %.in2155, double* %567, align 16, !tbaa !7
  store double %.in2154, double* %arrayidx173, align 8, !tbaa !7
  store double %.in2153, double* %arrayidx175, align 16, !tbaa !7
  store double %.in2152, double* %arrayidx177, align 8, !tbaa !7
  store i64 %451, i64* %91, align 16, !tbaa !7
  %568 = getelementptr inbounds [5 x double], [5 x double]* %q, i64 0, i64 0
  store double %.in2151, double* %568, align 16, !tbaa !7
  store double %.in2150, double* %arrayidx19, align 8, !tbaa !7
  store double %.in2149, double* %arrayidx26, align 16, !tbaa !7
  store double %.in2148, double* %arrayidx33, align 8, !tbaa !7
  store double %.in, double* %arrayidx40, align 16, !tbaa !7
  store i64 %464, i64* %32, align 16, !tbaa !7
  store i64 %466, i64* %35, align 8, !tbaa !7
  store i64 %468, i64* %38, align 16, !tbaa !7
  store i64 %470, i64* %41, align 8, !tbaa !7
  store i64 %472, i64* %44, align 16, !tbaa !7
  %arrayidx1243 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %7, i64 %idxprom983, i64 %idxprom, i64 %idxprom9
  %569 = load double, double* %arrayidx1243, align 8, !tbaa !7
  %arrayidx1250 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %8, i64 %idxprom983, i64 %idxprom, i64 %idxprom9
  %570 = load double, double* %arrayidx1250, align 8, !tbaa !7
  %arrayidx1257 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %9, i64 %idxprom983, i64 %idxprom, i64 %idxprom9
  %571 = load double, double* %arrayidx1257, align 8, !tbaa !7
  %arrayidx1264 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %10, i64 %idxprom983, i64 %idxprom, i64 %idxprom9
  %572 = load double, double* %arrayidx1264, align 8, !tbaa !7
  %arrayidx1271 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %11, i64 %idxprom983, i64 %idxprom, i64 %idxprom9
  %573 = load double, double* %arrayidx1271, align 8, !tbaa !7
  %arrayidx1278 = getelementptr inbounds [13 x [13 x double]], [13 x [13 x double]]* %12, i64 %idxprom983, i64 %idxprom, i64 %idxprom9
  %574 = load double, double* %arrayidx1278, align 8, !tbaa !7
  %arrayidx1285 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9, i64 0
  %575 = load double, double* %arrayidx1285, align 8, !tbaa !7
  %576 = bitcast i64 %464 to double
  %577 = tail call double @llvm.fmuladd.f64(double %.in2151, double -2.000000e+00, double %576)
  %add1289 = fadd double %577, %.in2155
  %578 = tail call double @llvm.fmuladd.f64(double %add1289, double 1.210000e+02, double %575)
  %579 = bitcast i64 %470 to double
  %sub1292 = fsub double %579, %.in2152
  %580 = tail call double @llvm.fmuladd.f64(double %sub1292, double -5.500000e+00, double %578)
  %arrayidx1300 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9, i64 1
  %581 = load double, double* %arrayidx1300, align 8, !tbaa !7
  %582 = bitcast i64 %466 to double
  %583 = tail call double @llvm.fmuladd.f64(double %.in2150, double -2.000000e+00, double %582)
  %add1304 = fadd double %583, %.in2154
  %584 = tail call double @llvm.fmuladd.f64(double %add1304, double 1.210000e+02, double %581)
  %585 = tail call double @llvm.fmuladd.f64(double %473, double -2.000000e+00, double %569)
  %add1305 = fadd double %w.0.lcssa, %585
  %586 = tail call double @llvm.fmuladd.f64(double %add1305, double 0x4028333333333334, double %584)
  %587 = fneg double %.in2154
  %neg1309 = fmul double %ac.0.lcssa, %587
  %588 = tail call double @llvm.fmuladd.f64(double %582, double %571, double %neg1309)
  %589 = tail call double @llvm.fmuladd.f64(double %588, double -5.500000e+00, double %586)
  %arrayidx1317 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9, i64 2
  %590 = load double, double* %arrayidx1317, align 8, !tbaa !7
  %591 = bitcast i64 %468 to double
  %592 = tail call double @llvm.fmuladd.f64(double %.in2149, double -2.000000e+00, double %591)
  %add1321 = fadd double %592, %.in2153
  %593 = tail call double @llvm.fmuladd.f64(double %add1321, double 1.210000e+02, double %590)
  %594 = tail call double @llvm.fmuladd.f64(double %474, double -2.000000e+00, double %570)
  %add1322 = fadd double %z.0.lcssa, %594
  %595 = tail call double @llvm.fmuladd.f64(double %add1322, double 0x4028333333333334, double %593)
  %596 = fneg double %.in2153
  %neg1326 = fmul double %ac.0.lcssa, %596
  %597 = tail call double @llvm.fmuladd.f64(double %591, double %571, double %neg1326)
  %598 = tail call double @llvm.fmuladd.f64(double %597, double -5.500000e+00, double %595)
  %arrayidx1334 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9, i64 3
  %599 = load double, double* %arrayidx1334, align 8, !tbaa !7
  %600 = tail call double @llvm.fmuladd.f64(double %.in2148, double -2.000000e+00, double %579)
  %add1338 = fadd double %.in2152, %600
  %601 = tail call double @llvm.fmuladd.f64(double %add1338, double 1.210000e+02, double %599)
  %602 = tail call double @llvm.fmuladd.f64(double %475, double -2.000000e+00, double %571)
  %add1339 = fadd double %ac.0.lcssa, %602
  %603 = tail call double @llvm.fmuladd.f64(double %add1339, double 0x4030222222222222, double %601)
  %604 = fneg double %.in2152
  %neg1343 = fmul double %ac.0.lcssa, %604
  %605 = tail call double @llvm.fmuladd.f64(double %579, double %571, double %neg1343)
  %606 = bitcast i64 %472 to double
  %sub1345 = fsub double %606, %574
  %sub1347 = fsub double %sub1345, %450
  %add1348 = fadd double %al.0.lcssa, %sub1347
  %607 = tail call double @llvm.fmuladd.f64(double %add1348, double 4.000000e-01, double %605)
  %608 = tail call double @llvm.fmuladd.f64(double %607, double -5.500000e+00, double %603)
  %arrayidx1356 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %202, i64 %idxprom1028, i64 %idxprom, i64 %idxprom9, i64 4
  %609 = load double, double* %arrayidx1356, align 8, !tbaa !7
  %610 = tail call double @llvm.fmuladd.f64(double %.in, double -2.000000e+00, double %606)
  %add1360 = fadd double %450, %610
  %611 = tail call double @llvm.fmuladd.f64(double %add1360, double 1.210000e+02, double %609)
  %612 = tail call double @llvm.fmuladd.f64(double %476, double -2.000000e+00, double %572)
  %add1361 = fadd double %af.0.lcssa, %612
  %613 = tail call double @llvm.fmuladd.f64(double %add1361, double 0xC0273B645A1CAC07, double %611)
  %614 = fmul double %475, -2.000000e+00
  %neg1364 = fmul double %475, %614
  %615 = tail call double @llvm.fmuladd.f64(double %571, double %571, double %neg1364)
  %616 = tail call double @llvm.fmuladd.f64(double %ac.0.lcssa, double %ac.0.lcssa, double %615)
  %617 = tail call double @llvm.fmuladd.f64(double %616, double 0x4000222222222222, double %613)
  %618 = fmul double %.in, -2.000000e+00
  %neg1369 = fmul double %477, %618
  %619 = tail call double @llvm.fmuladd.f64(double %606, double %573, double %neg1369)
  %620 = tail call double @llvm.fmuladd.f64(double %450, double %ai.0.lcssa, double %619)
  %621 = tail call double @llvm.fmuladd.f64(double %620, double 0x4037B74BC6A7EF9D, double %617)
  %neg1373 = fmul double %574, -4.000000e-01
  %622 = tail call double @llvm.fmuladd.f64(double %606, double 1.400000e+00, double %neg1373)
  %623 = tail call double @llvm.fmuladd.f64(double %450, double 1.400000e+00, double %neg1377.pre-phi)
  %624 = fneg double %623
  %neg1379 = fmul double %ac.0.lcssa, %624
  %625 = tail call double @llvm.fmuladd.f64(double %622, double %571, double %neg1379)
  %626 = tail call double @llvm.fmuladd.f64(double %625, double -5.500000e+00, double %621)
  %627 = load double, double* %arrayidx1178, align 16, !tbaa !7
  %628 = load double, double* %arrayidx171, align 16, !tbaa !7
  %629 = tail call double @llvm.fmuladd.f64(double %628, double -4.000000e+00, double %627)
  %630 = load double, double* %arrayidx12, align 16, !tbaa !7
  %631 = tail call double @llvm.fmuladd.f64(double %630, double 5.000000e+00, double %629)
  %632 = tail call double @llvm.fmuladd.f64(double %631, double -2.500000e-01, double %580)
  store double %632, double* %arrayidx1285, align 8, !tbaa !7
  %633 = load double, double* %arrayidx174, align 8, !tbaa !7
  %634 = load double, double* %arrayidx173, align 8, !tbaa !7
  %635 = tail call double @llvm.fmuladd.f64(double %634, double -4.000000e+00, double %633)
  %636 = load double, double* %arrayidx19, align 8, !tbaa !7
  %637 = tail call double @llvm.fmuladd.f64(double %636, double 5.000000e+00, double %635)
  %638 = tail call double @llvm.fmuladd.f64(double %637, double -2.500000e-01, double %589)
  store double %638, double* %arrayidx1300, align 8, !tbaa !7
  %639 = load double, double* %arrayidx176, align 16, !tbaa !7
  %640 = load double, double* %arrayidx175, align 16, !tbaa !7
  %641 = tail call double @llvm.fmuladd.f64(double %640, double -4.000000e+00, double %639)
  %642 = load double, double* %arrayidx26, align 16, !tbaa !7
  %643 = tail call double @llvm.fmuladd.f64(double %642, double 5.000000e+00, double %641)
  %644 = tail call double @llvm.fmuladd.f64(double %643, double -2.500000e-01, double %598)
  store double %644, double* %arrayidx1317, align 8, !tbaa !7
  %645 = load double, double* %arrayidx178, align 8, !tbaa !7
  %646 = load double, double* %arrayidx177, align 8, !tbaa !7
  %647 = tail call double @llvm.fmuladd.f64(double %646, double -4.000000e+00, double %645)
  %648 = load double, double* %arrayidx33, align 8, !tbaa !7
  %649 = tail call double @llvm.fmuladd.f64(double %648, double 5.000000e+00, double %647)
  %650 = tail call double @llvm.fmuladd.f64(double %649, double -2.500000e-01, double %608)
  store double %650, double* %arrayidx1334, align 8, !tbaa !7
  %651 = load double, double* %arrayidx180, align 16, !tbaa !7
  %652 = load double, double* %arrayidx179, align 16, !tbaa !7
  %653 = tail call double @llvm.fmuladd.f64(double %652, double -4.000000e+00, double %651)
  %654 = load double, double* %arrayidx40, align 16, !tbaa !7
  %655 = tail call double @llvm.fmuladd.f64(double %654, double 5.000000e+00, double %653)
  %656 = tail call double @llvm.fmuladd.f64(double %655, double -2.500000e-01, double %626)
  store double %656, double* %arrayidx1356, align 8, !tbaa !7
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
