; ModuleID = 'src/637.src'
source_filename = "src/637.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A.s = internal unnamed_addr global [4 x [16 x float]] undef, align 16

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, i32 %b, float* nocapture readonly %c, i32 %d, float* nocapture %e, i32 %f, i32 %g, float %h, float %i) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %q = alloca [4 x float], align 16
  %0 = bitcast [4 x float]* %q to i8*
  %t = alloca [16 x float], align 16
  %u = alloca [4 x float], align 16
  %call = tail call i64 @_Z12get_local_idj(i32 0) #5
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z12get_local_idj(i32 1) #5
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @_Z12get_group_idj(i32 0) #5
  %call3.tr = trunc i64 %call3 to i32
  %conv4 = shl i32 %call3.tr, 6
  %call5 = tail call i64 @_Z12get_group_idj(i32 1) #5
  %call5.tr = trunc i64 %call5 to i32
  %conv7 = shl i32 %call5.tr, 4
  %mul8 = shl i32 %conv2, 4
  %add = add nsw i32 %mul8, %conv
  %add9 = add nsw i32 %add, %conv4
  %idx.ext = sext i32 %add9 to i64
  %add.ptr = getelementptr inbounds float, float* %a, i64 %idx.ext
  %mul11 = mul nsw i32 %conv2, %d
  %add10 = add i32 %mul11, %conv
  %add12 = add i32 %add10, %conv7
  %idx.ext13 = sext i32 %add12 to i64
  %mul16 = mul nsw i32 %conv7, %f
  %add17 = add nsw i32 %mul16, %add9
  %idx.ext18 = sext i32 %add17 to i64
  %add.ptr19 = getelementptr inbounds float, float* %e, i64 %idx.ext18
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #6
  %1 = sext i32 %b to i64
  %2 = bitcast float* %add.ptr to i32*
  %3 = load i32, i32* %2, align 4, !tbaa !7
  %arrayidx23 = getelementptr inbounds [4 x float], [4 x float]* %q, i64 0, i64 0
  %4 = bitcast [4 x float]* %q to i32*
  store i32 %3, i32* %4, align 16, !tbaa !7
  %arrayidx.1 = getelementptr inbounds float, float* %add.ptr, i64 %1
  %5 = bitcast float* %arrayidx.1 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !7
  %arrayidx23.1 = getelementptr inbounds [4 x float], [4 x float]* %q, i64 0, i64 1
  %7 = bitcast float* %arrayidx23.1 to i32*
  store i32 %6, i32* %7, align 4, !tbaa !7
  %8 = shl nsw i64 %1, 1
  %arrayidx.2 = getelementptr inbounds float, float* %add.ptr, i64 %8
  %9 = bitcast float* %arrayidx.2 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !7
  %arrayidx23.2 = getelementptr inbounds [4 x float], [4 x float]* %q, i64 0, i64 2
  %11 = bitcast float* %arrayidx23.2 to i32*
  store i32 %10, i32* %11, align 8, !tbaa !7
  %12 = mul nsw i64 %1, 3
  %arrayidx.3 = getelementptr inbounds float, float* %add.ptr, i64 %12
  %13 = bitcast float* %arrayidx.3 to i32*
  %14 = load i32, i32* %13, align 4, !tbaa !7
  %arrayidx23.3 = getelementptr inbounds [4 x float], [4 x float]* %q, i64 0, i64 3
  %15 = bitcast float* %arrayidx23.3 to i32*
  store i32 %14, i32* %15, align 4, !tbaa !7
  %16 = bitcast [16 x float]* %t to i8*
  %17 = bitcast [4 x float]* %u to i8*
  %add.ptr14 = getelementptr inbounds float, float* %c, i64 %idx.ext13
  %18 = load float, float* %add.ptr14, align 4, !tbaa !7
  %mul25 = shl nsw i32 %b, 2
  %mul28 = shl nsw i32 %d, 2
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %16) #6
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(64) %16, i8 0, i64 64, i1 false)
  %idx.ext26 = sext i32 %mul25 to i64
  %idx.ext29 = sext i32 %mul28 to i64
  %sext = shl i64 %call1, 32
  %idxprom53 = ashr exact i64 %sext, 32
  %sext572 = shl i64 %call, 32
  %idxprom55 = ashr exact i64 %sext572, 32
  %arrayidx56 = getelementptr inbounds [4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 %idxprom53, i64 %idxprom55
  %19 = bitcast [4 x float]* %q to i32*
  %mul65 = shl nsw i32 %b, 1
  %idxprom66 = sext i32 %mul65 to i64
  %mul69 = mul nsw i32 %b, 3
  %idxprom70 = sext i32 %mul69 to i64
  %arrayidx75 = getelementptr inbounds [4 x float], [4 x float]* %u, i64 0, i64 0
  %arrayidx77 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 0
  %arrayidx80 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 1
  %arrayidx83 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 2
  %arrayidx86 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 3
  %arrayidx89 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 4
  %arrayidx92 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 5
  %arrayidx95 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 6
  %arrayidx98 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 7
  %arrayidx101 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 8
  %arrayidx104 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 9
  %arrayidx107 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 10
  %arrayidx110 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 11
  %arrayidx113 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 12
  %arrayidx116 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 13
  %arrayidx119 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 14
  %arrayidx122 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 15
  %arrayidx124 = getelementptr inbounds [4 x float], [4 x float]* %u, i64 0, i64 1
  %arrayidx175 = getelementptr inbounds [4 x float], [4 x float]* %u, i64 0, i64 2
  %arrayidx226 = getelementptr inbounds [4 x float], [4 x float]* %u, i64 0, i64 3
  %mul285 = mul nsw i32 %g, %d
  br label %do.body

do.body:                                          ; preds = %entry, %do.body
  %20 = phi float [ %176, %do.body ], [ 0.000000e+00, %entry ]
  %21 = phi float [ %174, %do.body ], [ 0.000000e+00, %entry ]
  %22 = phi float [ %172, %do.body ], [ 0.000000e+00, %entry ]
  %23 = phi float [ %170, %do.body ], [ 0.000000e+00, %entry ]
  %24 = phi float [ %168, %do.body ], [ 0.000000e+00, %entry ]
  %25 = phi float [ %166, %do.body ], [ 0.000000e+00, %entry ]
  %26 = phi float [ %164, %do.body ], [ 0.000000e+00, %entry ]
  %27 = phi float [ %162, %do.body ], [ 0.000000e+00, %entry ]
  %28 = phi float [ %160, %do.body ], [ 0.000000e+00, %entry ]
  %29 = phi float [ %158, %do.body ], [ 0.000000e+00, %entry ]
  %30 = phi float [ %156, %do.body ], [ 0.000000e+00, %entry ]
  %31 = phi float [ %154, %do.body ], [ 0.000000e+00, %entry ]
  %32 = phi float [ %152, %do.body ], [ 0.000000e+00, %entry ]
  %33 = phi float [ %150, %do.body ], [ 0.000000e+00, %entry ]
  %34 = phi float [ %148, %do.body ], [ 0.000000e+00, %entry ]
  %35 = phi float [ %146, %do.body ], [ 0.000000e+00, %entry ]
  %add.ptr14.pn = phi float* [ %c.addr.0, %do.body ], [ %add.ptr14, %entry ]
  %add.ptr.pn = phi float* [ %a.addr.0, %do.body ], [ %add.ptr, %entry ]
  %p.0 = phi i32 [ %add283, %do.body ], [ %mul28, %entry ]
  %r.0 = phi float [ %44, %do.body ], [ %18, %entry ]
  %a.addr.0 = getelementptr inbounds float, float* %add.ptr.pn, i64 %idx.ext26
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #6
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %17, i8* nonnull align 16 dereferenceable(16) %0, i64 16, i1 false)
  %c.addr.0 = getelementptr inbounds float, float* %add.ptr14.pn, i64 %idx.ext29
  store float %r.0, float* %arrayidx56, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #7
  %36 = bitcast float* %a.addr.0 to i32*
  %37 = load i32, i32* %36, align 4, !tbaa !7
  store i32 %37, i32* %19, align 16, !tbaa !7
  %arrayidx63 = getelementptr inbounds float, float* %a.addr.0, i64 %1
  %38 = bitcast float* %arrayidx63 to i32*
  %39 = load i32, i32* %38, align 4, !tbaa !7
  store i32 %39, i32* %7, align 4, !tbaa !7
  %arrayidx67 = getelementptr inbounds float, float* %a.addr.0, i64 %idxprom66
  %40 = bitcast float* %arrayidx67 to i32*
  %41 = load i32, i32* %40, align 4, !tbaa !7
  store i32 %41, i32* %11, align 8, !tbaa !7
  %arrayidx71 = getelementptr inbounds float, float* %a.addr.0, i64 %idxprom70
  %42 = bitcast float* %arrayidx71 to i32*
  %43 = load i32, i32* %42, align 4, !tbaa !7
  store i32 %43, i32* %15, align 4, !tbaa !7
  %44 = load float, float* %c.addr.0, align 4, !tbaa !7
  %45 = load float, float* %arrayidx75, align 16, !tbaa !7
  %46 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 0), align 16, !tbaa !7
  %47 = tail call float @llvm.fmuladd.f32(float %45, float %46, float %35)
  %48 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 1), align 4, !tbaa !7
  %49 = tail call float @llvm.fmuladd.f32(float %45, float %48, float %34)
  %50 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 2), align 8, !tbaa !7
  %51 = tail call float @llvm.fmuladd.f32(float %45, float %50, float %33)
  %52 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 3), align 4, !tbaa !7
  %53 = tail call float @llvm.fmuladd.f32(float %45, float %52, float %32)
  %54 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 4), align 16, !tbaa !7
  %55 = tail call float @llvm.fmuladd.f32(float %45, float %54, float %31)
  %56 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 5), align 4, !tbaa !7
  %57 = tail call float @llvm.fmuladd.f32(float %45, float %56, float %30)
  %58 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 6), align 8, !tbaa !7
  %59 = tail call float @llvm.fmuladd.f32(float %45, float %58, float %29)
  %60 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 7), align 4, !tbaa !7
  %61 = tail call float @llvm.fmuladd.f32(float %45, float %60, float %28)
  %62 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 8), align 16, !tbaa !7
  %63 = tail call float @llvm.fmuladd.f32(float %45, float %62, float %27)
  %64 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 9), align 4, !tbaa !7
  %65 = tail call float @llvm.fmuladd.f32(float %45, float %64, float %26)
  %66 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 10), align 8, !tbaa !7
  %67 = tail call float @llvm.fmuladd.f32(float %45, float %66, float %25)
  %68 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 11), align 4, !tbaa !7
  %69 = tail call float @llvm.fmuladd.f32(float %45, float %68, float %24)
  %70 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 12), align 16, !tbaa !7
  %71 = tail call float @llvm.fmuladd.f32(float %45, float %70, float %23)
  %72 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 13), align 4, !tbaa !7
  %73 = tail call float @llvm.fmuladd.f32(float %45, float %72, float %22)
  %74 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 14), align 8, !tbaa !7
  %75 = tail call float @llvm.fmuladd.f32(float %45, float %74, float %21)
  %76 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 15), align 4, !tbaa !7
  %77 = tail call float @llvm.fmuladd.f32(float %45, float %76, float %20)
  %78 = load float, float* %arrayidx124, align 4, !tbaa !7
  %79 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 0), align 16, !tbaa !7
  %80 = tail call float @llvm.fmuladd.f32(float %78, float %79, float %47)
  %81 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 1), align 4, !tbaa !7
  %82 = tail call float @llvm.fmuladd.f32(float %78, float %81, float %49)
  %83 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 2), align 8, !tbaa !7
  %84 = tail call float @llvm.fmuladd.f32(float %78, float %83, float %51)
  %85 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 3), align 4, !tbaa !7
  %86 = tail call float @llvm.fmuladd.f32(float %78, float %85, float %53)
  %87 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 4), align 16, !tbaa !7
  %88 = tail call float @llvm.fmuladd.f32(float %78, float %87, float %55)
  %89 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 5), align 4, !tbaa !7
  %90 = tail call float @llvm.fmuladd.f32(float %78, float %89, float %57)
  %91 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 6), align 8, !tbaa !7
  %92 = tail call float @llvm.fmuladd.f32(float %78, float %91, float %59)
  %93 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 7), align 4, !tbaa !7
  %94 = tail call float @llvm.fmuladd.f32(float %78, float %93, float %61)
  %95 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 8), align 16, !tbaa !7
  %96 = tail call float @llvm.fmuladd.f32(float %78, float %95, float %63)
  %97 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 9), align 4, !tbaa !7
  %98 = tail call float @llvm.fmuladd.f32(float %78, float %97, float %65)
  %99 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 10), align 8, !tbaa !7
  %100 = tail call float @llvm.fmuladd.f32(float %78, float %99, float %67)
  %101 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 11), align 4, !tbaa !7
  %102 = tail call float @llvm.fmuladd.f32(float %78, float %101, float %69)
  %103 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 12), align 16, !tbaa !7
  %104 = tail call float @llvm.fmuladd.f32(float %78, float %103, float %71)
  %105 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 13), align 4, !tbaa !7
  %106 = tail call float @llvm.fmuladd.f32(float %78, float %105, float %73)
  %107 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 14), align 8, !tbaa !7
  %108 = tail call float @llvm.fmuladd.f32(float %78, float %107, float %75)
  %109 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 15), align 4, !tbaa !7
  %110 = tail call float @llvm.fmuladd.f32(float %78, float %109, float %77)
  %111 = load float, float* %arrayidx175, align 8, !tbaa !7
  %112 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 0), align 16, !tbaa !7
  %113 = tail call float @llvm.fmuladd.f32(float %111, float %112, float %80)
  %114 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 1), align 4, !tbaa !7
  %115 = tail call float @llvm.fmuladd.f32(float %111, float %114, float %82)
  %116 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 2), align 8, !tbaa !7
  %117 = tail call float @llvm.fmuladd.f32(float %111, float %116, float %84)
  %118 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 3), align 4, !tbaa !7
  %119 = tail call float @llvm.fmuladd.f32(float %111, float %118, float %86)
  %120 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 4), align 16, !tbaa !7
  %121 = tail call float @llvm.fmuladd.f32(float %111, float %120, float %88)
  %122 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 5), align 4, !tbaa !7
  %123 = tail call float @llvm.fmuladd.f32(float %111, float %122, float %90)
  %124 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 6), align 8, !tbaa !7
  %125 = tail call float @llvm.fmuladd.f32(float %111, float %124, float %92)
  %126 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 7), align 4, !tbaa !7
  %127 = tail call float @llvm.fmuladd.f32(float %111, float %126, float %94)
  %128 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 8), align 16, !tbaa !7
  %129 = tail call float @llvm.fmuladd.f32(float %111, float %128, float %96)
  %130 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 9), align 4, !tbaa !7
  %131 = tail call float @llvm.fmuladd.f32(float %111, float %130, float %98)
  %132 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 10), align 8, !tbaa !7
  %133 = tail call float @llvm.fmuladd.f32(float %111, float %132, float %100)
  %134 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 11), align 4, !tbaa !7
  %135 = tail call float @llvm.fmuladd.f32(float %111, float %134, float %102)
  %136 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 12), align 16, !tbaa !7
  %137 = tail call float @llvm.fmuladd.f32(float %111, float %136, float %104)
  %138 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 13), align 4, !tbaa !7
  %139 = tail call float @llvm.fmuladd.f32(float %111, float %138, float %106)
  %140 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 14), align 8, !tbaa !7
  %141 = tail call float @llvm.fmuladd.f32(float %111, float %140, float %108)
  %142 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 15), align 4, !tbaa !7
  %143 = tail call float @llvm.fmuladd.f32(float %111, float %142, float %110)
  %144 = load float, float* %arrayidx226, align 4, !tbaa !7
  %145 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 0), align 16, !tbaa !7
  %146 = tail call float @llvm.fmuladd.f32(float %144, float %145, float %113)
  store float %146, float* %arrayidx77, align 16, !tbaa !7
  %147 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 1), align 4, !tbaa !7
  %148 = tail call float @llvm.fmuladd.f32(float %144, float %147, float %115)
  store float %148, float* %arrayidx80, align 4, !tbaa !7
  %149 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 2), align 8, !tbaa !7
  %150 = tail call float @llvm.fmuladd.f32(float %144, float %149, float %117)
  store float %150, float* %arrayidx83, align 8, !tbaa !7
  %151 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 3), align 4, !tbaa !7
  %152 = tail call float @llvm.fmuladd.f32(float %144, float %151, float %119)
  store float %152, float* %arrayidx86, align 4, !tbaa !7
  %153 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 4), align 16, !tbaa !7
  %154 = tail call float @llvm.fmuladd.f32(float %144, float %153, float %121)
  store float %154, float* %arrayidx89, align 16, !tbaa !7
  %155 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 5), align 4, !tbaa !7
  %156 = tail call float @llvm.fmuladd.f32(float %144, float %155, float %123)
  store float %156, float* %arrayidx92, align 4, !tbaa !7
  %157 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 6), align 8, !tbaa !7
  %158 = tail call float @llvm.fmuladd.f32(float %144, float %157, float %125)
  store float %158, float* %arrayidx95, align 8, !tbaa !7
  %159 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 7), align 4, !tbaa !7
  %160 = tail call float @llvm.fmuladd.f32(float %144, float %159, float %127)
  store float %160, float* %arrayidx98, align 4, !tbaa !7
  %161 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 8), align 16, !tbaa !7
  %162 = tail call float @llvm.fmuladd.f32(float %144, float %161, float %129)
  store float %162, float* %arrayidx101, align 16, !tbaa !7
  %163 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 9), align 4, !tbaa !7
  %164 = tail call float @llvm.fmuladd.f32(float %144, float %163, float %131)
  store float %164, float* %arrayidx104, align 4, !tbaa !7
  %165 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 10), align 8, !tbaa !7
  %166 = tail call float @llvm.fmuladd.f32(float %144, float %165, float %133)
  store float %166, float* %arrayidx107, align 8, !tbaa !7
  %167 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 11), align 4, !tbaa !7
  %168 = tail call float @llvm.fmuladd.f32(float %144, float %167, float %135)
  store float %168, float* %arrayidx110, align 4, !tbaa !7
  %169 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 12), align 16, !tbaa !7
  %170 = tail call float @llvm.fmuladd.f32(float %144, float %169, float %137)
  store float %170, float* %arrayidx113, align 16, !tbaa !7
  %171 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 13), align 4, !tbaa !7
  %172 = tail call float @llvm.fmuladd.f32(float %144, float %171, float %139)
  store float %172, float* %arrayidx116, align 4, !tbaa !7
  %173 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 14), align 8, !tbaa !7
  %174 = tail call float @llvm.fmuladd.f32(float %144, float %173, float %141)
  store float %174, float* %arrayidx119, align 8, !tbaa !7
  %175 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 15), align 4, !tbaa !7
  %176 = tail call float @llvm.fmuladd.f32(float %144, float %175, float %143)
  store float %176, float* %arrayidx122, align 4, !tbaa !7
  %add283 = add nsw i32 %p.0, %mul28
  tail call void @_Z7barrierj(i32 1) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #6
  %cmp286 = icmp slt i32 %add283, %mul285
  br i1 %cmp286, label %do.body, label %do.end288

do.end288:                                        ; preds = %do.body
  store float %44, float* %arrayidx56, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #7
  %177 = load float, float* %arrayidx23, align 16, !tbaa !7
  %178 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 0), align 16, !tbaa !7
  %179 = tail call float @llvm.fmuladd.f32(float %177, float %178, float %146)
  %180 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 1), align 4, !tbaa !7
  %181 = tail call float @llvm.fmuladd.f32(float %177, float %180, float %148)
  %182 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 2), align 8, !tbaa !7
  %183 = tail call float @llvm.fmuladd.f32(float %177, float %182, float %150)
  %184 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 3), align 4, !tbaa !7
  %185 = tail call float @llvm.fmuladd.f32(float %177, float %184, float %152)
  %186 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 4), align 16, !tbaa !7
  %187 = tail call float @llvm.fmuladd.f32(float %177, float %186, float %154)
  %188 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 5), align 4, !tbaa !7
  %189 = tail call float @llvm.fmuladd.f32(float %177, float %188, float %156)
  %190 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 6), align 8, !tbaa !7
  %191 = tail call float @llvm.fmuladd.f32(float %177, float %190, float %158)
  %192 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 7), align 4, !tbaa !7
  %193 = tail call float @llvm.fmuladd.f32(float %177, float %192, float %160)
  %194 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 8), align 16, !tbaa !7
  %195 = tail call float @llvm.fmuladd.f32(float %177, float %194, float %162)
  %196 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 9), align 4, !tbaa !7
  %197 = tail call float @llvm.fmuladd.f32(float %177, float %196, float %164)
  %198 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 10), align 8, !tbaa !7
  %199 = tail call float @llvm.fmuladd.f32(float %177, float %198, float %166)
  %200 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 11), align 4, !tbaa !7
  %201 = tail call float @llvm.fmuladd.f32(float %177, float %200, float %168)
  %202 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 12), align 16, !tbaa !7
  %203 = tail call float @llvm.fmuladd.f32(float %177, float %202, float %170)
  %204 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 13), align 4, !tbaa !7
  %205 = tail call float @llvm.fmuladd.f32(float %177, float %204, float %172)
  %206 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 14), align 8, !tbaa !7
  %207 = tail call float @llvm.fmuladd.f32(float %177, float %206, float %174)
  %208 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 0, i64 15), align 4, !tbaa !7
  %209 = tail call float @llvm.fmuladd.f32(float %177, float %208, float %176)
  %210 = load float, float* %arrayidx23.1, align 4, !tbaa !7
  %211 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 0), align 16, !tbaa !7
  %212 = tail call float @llvm.fmuladd.f32(float %210, float %211, float %179)
  %213 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 1), align 4, !tbaa !7
  %214 = tail call float @llvm.fmuladd.f32(float %210, float %213, float %181)
  %215 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 2), align 8, !tbaa !7
  %216 = tail call float @llvm.fmuladd.f32(float %210, float %215, float %183)
  %217 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 3), align 4, !tbaa !7
  %218 = tail call float @llvm.fmuladd.f32(float %210, float %217, float %185)
  %219 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 4), align 16, !tbaa !7
  %220 = tail call float @llvm.fmuladd.f32(float %210, float %219, float %187)
  %221 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 5), align 4, !tbaa !7
  %222 = tail call float @llvm.fmuladd.f32(float %210, float %221, float %189)
  %223 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 6), align 8, !tbaa !7
  %224 = tail call float @llvm.fmuladd.f32(float %210, float %223, float %191)
  %225 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 7), align 4, !tbaa !7
  %226 = tail call float @llvm.fmuladd.f32(float %210, float %225, float %193)
  %227 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 8), align 16, !tbaa !7
  %228 = tail call float @llvm.fmuladd.f32(float %210, float %227, float %195)
  %229 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 9), align 4, !tbaa !7
  %230 = tail call float @llvm.fmuladd.f32(float %210, float %229, float %197)
  %231 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 10), align 8, !tbaa !7
  %232 = tail call float @llvm.fmuladd.f32(float %210, float %231, float %199)
  %233 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 11), align 4, !tbaa !7
  %234 = tail call float @llvm.fmuladd.f32(float %210, float %233, float %201)
  %235 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 12), align 16, !tbaa !7
  %236 = tail call float @llvm.fmuladd.f32(float %210, float %235, float %203)
  %237 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 13), align 4, !tbaa !7
  %238 = tail call float @llvm.fmuladd.f32(float %210, float %237, float %205)
  %239 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 14), align 8, !tbaa !7
  %240 = tail call float @llvm.fmuladd.f32(float %210, float %239, float %207)
  %241 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 1, i64 15), align 4, !tbaa !7
  %242 = tail call float @llvm.fmuladd.f32(float %210, float %241, float %209)
  %243 = load float, float* %arrayidx23.2, align 8, !tbaa !7
  %244 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 0), align 16, !tbaa !7
  %245 = tail call float @llvm.fmuladd.f32(float %243, float %244, float %212)
  %246 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 1), align 4, !tbaa !7
  %247 = tail call float @llvm.fmuladd.f32(float %243, float %246, float %214)
  %248 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 2), align 8, !tbaa !7
  %249 = tail call float @llvm.fmuladd.f32(float %243, float %248, float %216)
  %250 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 3), align 4, !tbaa !7
  %251 = tail call float @llvm.fmuladd.f32(float %243, float %250, float %218)
  %252 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 4), align 16, !tbaa !7
  %253 = tail call float @llvm.fmuladd.f32(float %243, float %252, float %220)
  %254 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 5), align 4, !tbaa !7
  %255 = tail call float @llvm.fmuladd.f32(float %243, float %254, float %222)
  %256 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 6), align 8, !tbaa !7
  %257 = tail call float @llvm.fmuladd.f32(float %243, float %256, float %224)
  %258 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 7), align 4, !tbaa !7
  %259 = tail call float @llvm.fmuladd.f32(float %243, float %258, float %226)
  %260 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 8), align 16, !tbaa !7
  %261 = tail call float @llvm.fmuladd.f32(float %243, float %260, float %228)
  %262 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 9), align 4, !tbaa !7
  %263 = tail call float @llvm.fmuladd.f32(float %243, float %262, float %230)
  %264 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 10), align 8, !tbaa !7
  %265 = tail call float @llvm.fmuladd.f32(float %243, float %264, float %232)
  %266 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 11), align 4, !tbaa !7
  %267 = tail call float @llvm.fmuladd.f32(float %243, float %266, float %234)
  %268 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 12), align 16, !tbaa !7
  %269 = tail call float @llvm.fmuladd.f32(float %243, float %268, float %236)
  %270 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 13), align 4, !tbaa !7
  %271 = tail call float @llvm.fmuladd.f32(float %243, float %270, float %238)
  %272 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 14), align 8, !tbaa !7
  %273 = tail call float @llvm.fmuladd.f32(float %243, float %272, float %240)
  %274 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 2, i64 15), align 4, !tbaa !7
  %275 = tail call float @llvm.fmuladd.f32(float %243, float %274, float %242)
  %276 = load float, float* %arrayidx23.3, align 4, !tbaa !7
  %277 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 0), align 16, !tbaa !7
  %278 = tail call float @llvm.fmuladd.f32(float %276, float %277, float %245)
  store float %278, float* %arrayidx77, align 16, !tbaa !7
  %279 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 1), align 4, !tbaa !7
  %280 = tail call float @llvm.fmuladd.f32(float %276, float %279, float %247)
  store float %280, float* %arrayidx80, align 4, !tbaa !7
  %281 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 2), align 8, !tbaa !7
  %282 = tail call float @llvm.fmuladd.f32(float %276, float %281, float %249)
  store float %282, float* %arrayidx83, align 8, !tbaa !7
  %283 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 3), align 4, !tbaa !7
  %284 = tail call float @llvm.fmuladd.f32(float %276, float %283, float %251)
  store float %284, float* %arrayidx86, align 4, !tbaa !7
  %285 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 4), align 16, !tbaa !7
  %286 = tail call float @llvm.fmuladd.f32(float %276, float %285, float %253)
  store float %286, float* %arrayidx89, align 16, !tbaa !7
  %287 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 5), align 4, !tbaa !7
  %288 = tail call float @llvm.fmuladd.f32(float %276, float %287, float %255)
  store float %288, float* %arrayidx92, align 4, !tbaa !7
  %289 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 6), align 8, !tbaa !7
  %290 = tail call float @llvm.fmuladd.f32(float %276, float %289, float %257)
  store float %290, float* %arrayidx95, align 8, !tbaa !7
  %291 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 7), align 4, !tbaa !7
  %292 = tail call float @llvm.fmuladd.f32(float %276, float %291, float %259)
  store float %292, float* %arrayidx98, align 4, !tbaa !7
  %293 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 8), align 16, !tbaa !7
  %294 = tail call float @llvm.fmuladd.f32(float %276, float %293, float %261)
  store float %294, float* %arrayidx101, align 16, !tbaa !7
  %295 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 9), align 4, !tbaa !7
  %296 = tail call float @llvm.fmuladd.f32(float %276, float %295, float %263)
  store float %296, float* %arrayidx104, align 4, !tbaa !7
  %297 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 10), align 8, !tbaa !7
  %298 = tail call float @llvm.fmuladd.f32(float %276, float %297, float %265)
  store float %298, float* %arrayidx107, align 8, !tbaa !7
  %299 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 11), align 4, !tbaa !7
  %300 = tail call float @llvm.fmuladd.f32(float %276, float %299, float %267)
  store float %300, float* %arrayidx110, align 4, !tbaa !7
  %301 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 12), align 16, !tbaa !7
  %302 = tail call float @llvm.fmuladd.f32(float %276, float %301, float %269)
  store float %302, float* %arrayidx113, align 16, !tbaa !7
  %303 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 13), align 4, !tbaa !7
  %304 = tail call float @llvm.fmuladd.f32(float %276, float %303, float %271)
  store float %304, float* %arrayidx116, align 4, !tbaa !7
  %305 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 14), align 8, !tbaa !7
  %306 = tail call float @llvm.fmuladd.f32(float %276, float %305, float %273)
  store float %306, float* %arrayidx119, align 8, !tbaa !7
  %307 = load float, float* getelementptr inbounds ([4 x [16 x float]], [4 x [16 x float]]* @A.s, i64 0, i64 3, i64 15), align 4, !tbaa !7
  %308 = tail call float @llvm.fmuladd.f32(float %276, float %307, float %275)
  store float %308, float* %arrayidx122, align 4, !tbaa !7
  %idx.ext510 = sext i32 %f to i64
  %309 = load float, float* %add.ptr19, align 4, !tbaa !7
  %mul506 = fmul float %309, %i
  %310 = tail call float @llvm.fmuladd.f32(float %h, float %278, float %mul506)
  store float %310, float* %add.ptr19, align 4, !tbaa !7
  %add.ptr511 = getelementptr inbounds float, float* %add.ptr19, i64 %idx.ext510
  %311 = load float, float* %add.ptr511, align 4, !tbaa !7
  %mul506.1 = fmul float %311, %i
  %312 = tail call float @llvm.fmuladd.f32(float %h, float %280, float %mul506.1)
  store float %312, float* %add.ptr511, align 4, !tbaa !7
  %add.ptr511.1 = getelementptr inbounds float, float* %add.ptr511, i64 %idx.ext510
  %313 = load float, float* %add.ptr511.1, align 4, !tbaa !7
  %mul506.2 = fmul float %313, %i
  %314 = tail call float @llvm.fmuladd.f32(float %h, float %282, float %mul506.2)
  store float %314, float* %add.ptr511.1, align 4, !tbaa !7
  %add.ptr511.2 = getelementptr inbounds float, float* %add.ptr511.1, i64 %idx.ext510
  %315 = load float, float* %add.ptr511.2, align 4, !tbaa !7
  %mul506.3 = fmul float %315, %i
  %316 = tail call float @llvm.fmuladd.f32(float %h, float %284, float %mul506.3)
  store float %316, float* %add.ptr511.2, align 4, !tbaa !7
  %add.ptr511.3 = getelementptr inbounds float, float* %add.ptr511.2, i64 %idx.ext510
  %317 = load float, float* %add.ptr511.3, align 4, !tbaa !7
  %mul506.4 = fmul float %317, %i
  %318 = tail call float @llvm.fmuladd.f32(float %h, float %286, float %mul506.4)
  store float %318, float* %add.ptr511.3, align 4, !tbaa !7
  %add.ptr511.4 = getelementptr inbounds float, float* %add.ptr511.3, i64 %idx.ext510
  %319 = load float, float* %add.ptr511.4, align 4, !tbaa !7
  %mul506.5 = fmul float %319, %i
  %320 = tail call float @llvm.fmuladd.f32(float %h, float %288, float %mul506.5)
  store float %320, float* %add.ptr511.4, align 4, !tbaa !7
  %add.ptr511.5 = getelementptr inbounds float, float* %add.ptr511.4, i64 %idx.ext510
  %321 = load float, float* %add.ptr511.5, align 4, !tbaa !7
  %mul506.6 = fmul float %321, %i
  %322 = tail call float @llvm.fmuladd.f32(float %h, float %290, float %mul506.6)
  store float %322, float* %add.ptr511.5, align 4, !tbaa !7
  %add.ptr511.6 = getelementptr inbounds float, float* %add.ptr511.5, i64 %idx.ext510
  %323 = load float, float* %add.ptr511.6, align 4, !tbaa !7
  %mul506.7 = fmul float %323, %i
  %324 = tail call float @llvm.fmuladd.f32(float %h, float %292, float %mul506.7)
  store float %324, float* %add.ptr511.6, align 4, !tbaa !7
  %add.ptr511.7 = getelementptr inbounds float, float* %add.ptr511.6, i64 %idx.ext510
  %325 = load float, float* %add.ptr511.7, align 4, !tbaa !7
  %mul506.8 = fmul float %325, %i
  %326 = tail call float @llvm.fmuladd.f32(float %h, float %294, float %mul506.8)
  store float %326, float* %add.ptr511.7, align 4, !tbaa !7
  %add.ptr511.8 = getelementptr inbounds float, float* %add.ptr511.7, i64 %idx.ext510
  %327 = load float, float* %add.ptr511.8, align 4, !tbaa !7
  %mul506.9 = fmul float %327, %i
  %328 = tail call float @llvm.fmuladd.f32(float %h, float %296, float %mul506.9)
  store float %328, float* %add.ptr511.8, align 4, !tbaa !7
  %add.ptr511.9 = getelementptr inbounds float, float* %add.ptr511.8, i64 %idx.ext510
  %329 = load float, float* %add.ptr511.9, align 4, !tbaa !7
  %mul506.10 = fmul float %329, %i
  %330 = tail call float @llvm.fmuladd.f32(float %h, float %298, float %mul506.10)
  store float %330, float* %add.ptr511.9, align 4, !tbaa !7
  %add.ptr511.10 = getelementptr inbounds float, float* %add.ptr511.9, i64 %idx.ext510
  %331 = load float, float* %add.ptr511.10, align 4, !tbaa !7
  %mul506.11 = fmul float %331, %i
  %332 = tail call float @llvm.fmuladd.f32(float %h, float %300, float %mul506.11)
  store float %332, float* %add.ptr511.10, align 4, !tbaa !7
  %add.ptr511.11 = getelementptr inbounds float, float* %add.ptr511.10, i64 %idx.ext510
  %333 = load float, float* %add.ptr511.11, align 4, !tbaa !7
  %mul506.12 = fmul float %333, %i
  %334 = tail call float @llvm.fmuladd.f32(float %h, float %302, float %mul506.12)
  store float %334, float* %add.ptr511.11, align 4, !tbaa !7
  %add.ptr511.12 = getelementptr inbounds float, float* %add.ptr511.11, i64 %idx.ext510
  %335 = load float, float* %arrayidx116, align 4, !tbaa !7
  %336 = load float, float* %add.ptr511.12, align 4, !tbaa !7
  %mul506.13 = fmul float %336, %i
  %337 = tail call float @llvm.fmuladd.f32(float %h, float %335, float %mul506.13)
  store float %337, float* %add.ptr511.12, align 4, !tbaa !7
  %add.ptr511.13 = getelementptr inbounds float, float* %add.ptr511.12, i64 %idx.ext510
  %338 = load float, float* %arrayidx119, align 8, !tbaa !7
  %339 = load float, float* %add.ptr511.13, align 4, !tbaa !7
  %mul506.14 = fmul float %339, %i
  %340 = tail call float @llvm.fmuladd.f32(float %h, float %338, float %mul506.14)
  store float %340, float* %add.ptr511.13, align 4, !tbaa !7
  %add.ptr511.14 = getelementptr inbounds float, float* %add.ptr511.13, i64 %idx.ext510
  %341 = load float, float* %arrayidx122, align 4, !tbaa !7
  %342 = load float, float* %add.ptr511.14, align 4, !tbaa !7
  %mul506.15 = fmul float %342, %i
  %343 = tail call float @llvm.fmuladd.f32(float %h, float %341, float %mul506.15)
  store float %343, float* %add.ptr511.14, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %16) #6
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #6
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #2

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable willreturn }
attributes #5 = { convergent nounwind readnone }
attributes #6 = { nounwind }
attributes #7 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"int", !"float*", !"int", !"float*", !"int", !"int", !"float", !"float"}
!6 = !{!"const", !"", !"const", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
