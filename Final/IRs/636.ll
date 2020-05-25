; ModuleID = 'src/636.src'
source_filename = "src/636.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A.t = internal unnamed_addr global [16 x [17 x float]] undef, align 16

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, i32 %b, float* nocapture readonly %c, i32 %d, float* nocapture %e, i32 %f, i32 %g, float %h, float %i) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %s = alloca [16 x float], align 16
  %0 = bitcast [16 x float]* %s to i8*
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
  %add10 = add nsw i32 %conv7, %conv2
  %mul11 = mul nsw i32 %add10, %d
  %add12 = add nsw i32 %mul11, %conv
  %idx.ext13 = sext i32 %add12 to i64
  %mul16 = mul nsw i32 %conv7, %f
  %add17 = add nsw i32 %mul16, %add9
  %idx.ext18 = sext i32 %add17 to i64
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(64) %0, i8 0, i64 64, i1 false)
  %add.ptr = getelementptr inbounds float, float* %a, i64 %idx.ext
  %add.ptr14 = getelementptr inbounds float, float* %c, i64 %idx.ext13
  %add.ptr19 = getelementptr inbounds float, float* %e, i64 %idx.ext18
  %1 = bitcast [4 x float]* %u to i8*
  %sext = shl i64 %call, 32
  %idxprom36 = ashr exact i64 %sext, 32
  %sext1037 = shl i64 %call1, 32
  %idxprom38 = ashr exact i64 %sext1037, 32
  %arrayidx39 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 %idxprom36, i64 %idxprom38
  %2 = bitcast float* %arrayidx39 to i32*
  %mul40 = shl nsw i32 %d, 2
  %idxprom41 = sext i32 %mul40 to i64
  %sext1038 = add i64 %sext1037, 17179869184
  %idxprom46 = ashr exact i64 %sext1038, 32
  %arrayidx47 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 %idxprom36, i64 %idxprom46
  %3 = bitcast float* %arrayidx47 to i32*
  %mul48 = shl nsw i32 %d, 3
  %idxprom49 = sext i32 %mul48 to i64
  %sext1039 = add i64 %sext1037, 34359738368
  %idxprom54 = ashr exact i64 %sext1039, 32
  %arrayidx55 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 %idxprom36, i64 %idxprom54
  %4 = bitcast float* %arrayidx55 to i32*
  %mul56 = mul nsw i32 %d, 12
  %idxprom57 = sext i32 %mul56 to i64
  %sext1040 = add i64 %sext1037, 51539607552
  %idxprom62 = ashr exact i64 %sext1040, 32
  %arrayidx63 = getelementptr inbounds [16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 %idxprom36, i64 %idxprom62
  %5 = bitcast float* %arrayidx63 to i32*
  %mul64 = shl nsw i32 %b, 2
  %idx.ext65 = sext i32 %mul64 to i64
  %arrayidx68 = getelementptr inbounds [4 x float], [4 x float]* %u, i64 0, i64 0
  %arrayidx70 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 0
  %arrayidx73 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 1
  %arrayidx76 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 2
  %arrayidx79 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 3
  %arrayidx82 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 4
  %arrayidx85 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 5
  %arrayidx88 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 6
  %arrayidx91 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 7
  %arrayidx94 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 8
  %arrayidx97 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 9
  %arrayidx100 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 10
  %arrayidx103 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 11
  %arrayidx106 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 12
  %arrayidx109 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 13
  %arrayidx112 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 14
  %arrayidx115 = getelementptr inbounds [16 x float], [16 x float]* %s, i64 0, i64 15
  %6 = bitcast [4 x float]* %u to i32*
  %arrayidx121 = getelementptr inbounds [4 x float], [4 x float]* %u, i64 0, i64 1
  %idxprom172 = sext i32 %b to i64
  %7 = bitcast float* %arrayidx121 to i32*
  %arrayidx176 = getelementptr inbounds [4 x float], [4 x float]* %u, i64 0, i64 2
  %mul226 = shl nsw i32 %b, 1
  %idxprom227 = sext i32 %mul226 to i64
  %8 = bitcast float* %arrayidx176 to i32*
  %arrayidx231 = getelementptr inbounds [4 x float], [4 x float]* %u, i64 0, i64 3
  %mul281 = mul nsw i32 %b, 3
  %idxprom282 = sext i32 %mul281 to i64
  %9 = bitcast float* %arrayidx231 to i32*
  %10 = bitcast [4 x float]* %u to i32*
  %11 = shl nsw i64 %idxprom172, 1
  %12 = mul nsw i64 %idxprom172, 3
  br label %do.body

do.body:                                          ; preds = %entry, %do.body
  %13 = phi float [ %594, %do.body ], [ 0.000000e+00, %entry ]
  %14 = phi float [ %592, %do.body ], [ 0.000000e+00, %entry ]
  %15 = phi float [ %590, %do.body ], [ 0.000000e+00, %entry ]
  %16 = phi float [ %588, %do.body ], [ 0.000000e+00, %entry ]
  %17 = phi float [ %586, %do.body ], [ 0.000000e+00, %entry ]
  %18 = phi float [ %584, %do.body ], [ 0.000000e+00, %entry ]
  %19 = phi float [ %582, %do.body ], [ 0.000000e+00, %entry ]
  %20 = phi float [ %580, %do.body ], [ 0.000000e+00, %entry ]
  %21 = phi float [ %578, %do.body ], [ 0.000000e+00, %entry ]
  %22 = phi float [ %576, %do.body ], [ 0.000000e+00, %entry ]
  %23 = phi float [ %574, %do.body ], [ 0.000000e+00, %entry ]
  %24 = phi float [ %572, %do.body ], [ 0.000000e+00, %entry ]
  %25 = phi float [ %570, %do.body ], [ 0.000000e+00, %entry ]
  %26 = phi float [ %568, %do.body ], [ 0.000000e+00, %entry ]
  %27 = phi float [ %566, %do.body ], [ 0.000000e+00, %entry ]
  %c.addr.0 = phi float* [ %add.ptr938, %do.body ], [ %add.ptr14, %entry ]
  %a.addr.0 = phi float* [ %add.ptr733, %do.body ], [ %add.ptr, %entry ]
  %r.0 = phi i32 [ %add939, %do.body ], [ 0, %entry ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #6
  %28 = bitcast float* %a.addr.0 to i32*
  %29 = load i32, i32* %28, align 4, !tbaa !7
  store i32 %29, i32* %10, align 16, !tbaa !7
  %arrayidx27.1 = getelementptr inbounds float, float* %a.addr.0, i64 %idxprom172
  %30 = bitcast float* %arrayidx27.1 to i32*
  %31 = load i32, i32* %30, align 4, !tbaa !7
  store i32 %31, i32* %7, align 4, !tbaa !7
  %arrayidx27.2 = getelementptr inbounds float, float* %a.addr.0, i64 %11
  %32 = bitcast float* %arrayidx27.2 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !7
  store i32 %33, i32* %8, align 8, !tbaa !7
  %arrayidx27.3 = getelementptr inbounds float, float* %a.addr.0, i64 %12
  %34 = bitcast float* %arrayidx27.3 to i32*
  %35 = load i32, i32* %34, align 4, !tbaa !7
  store i32 %35, i32* %9, align 4, !tbaa !7
  %36 = bitcast float* %c.addr.0 to i32*
  %37 = load i32, i32* %36, align 4, !tbaa !7
  store i32 %37, i32* %2, align 4, !tbaa !7
  %arrayidx42 = getelementptr inbounds float, float* %c.addr.0, i64 %idxprom41
  %38 = bitcast float* %arrayidx42 to i32*
  %39 = load i32, i32* %38, align 4, !tbaa !7
  store i32 %39, i32* %3, align 4, !tbaa !7
  %arrayidx50 = getelementptr inbounds float, float* %c.addr.0, i64 %idxprom49
  %40 = bitcast float* %arrayidx50 to i32*
  %41 = load i32, i32* %40, align 4, !tbaa !7
  store i32 %41, i32* %4, align 4, !tbaa !7
  %arrayidx58 = getelementptr inbounds float, float* %c.addr.0, i64 %idxprom57
  %42 = bitcast float* %arrayidx58 to i32*
  %43 = load i32, i32* %42, align 4, !tbaa !7
  store i32 %43, i32* %5, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #7
  %add.ptr66 = getelementptr inbounds float, float* %a.addr.0, i64 %idx.ext65
  %44 = bitcast i32 %29 to float
  %45 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 0), align 16, !tbaa !7
  %46 = tail call float @llvm.fmuladd.f32(float %44, float %45, float %27)
  store float %46, float* %arrayidx70, align 16, !tbaa !7
  %47 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 1), align 4, !tbaa !7
  %48 = tail call float @llvm.fmuladd.f32(float %44, float %47, float %26)
  store float %48, float* %arrayidx73, align 4, !tbaa !7
  %49 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 2), align 8, !tbaa !7
  %50 = tail call float @llvm.fmuladd.f32(float %44, float %49, float %25)
  store float %50, float* %arrayidx76, align 8, !tbaa !7
  %51 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 3), align 4, !tbaa !7
  %52 = tail call float @llvm.fmuladd.f32(float %44, float %51, float %24)
  store float %52, float* %arrayidx79, align 4, !tbaa !7
  %53 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 4), align 16, !tbaa !7
  %54 = tail call float @llvm.fmuladd.f32(float %44, float %53, float %23)
  store float %54, float* %arrayidx82, align 16, !tbaa !7
  %55 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 5), align 4, !tbaa !7
  %56 = tail call float @llvm.fmuladd.f32(float %44, float %55, float %22)
  store float %56, float* %arrayidx85, align 4, !tbaa !7
  %57 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 6), align 8, !tbaa !7
  %58 = tail call float @llvm.fmuladd.f32(float %44, float %57, float %21)
  store float %58, float* %arrayidx88, align 8, !tbaa !7
  %59 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 7), align 4, !tbaa !7
  %60 = tail call float @llvm.fmuladd.f32(float %44, float %59, float %20)
  store float %60, float* %arrayidx91, align 4, !tbaa !7
  %61 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 8), align 16, !tbaa !7
  %62 = tail call float @llvm.fmuladd.f32(float %44, float %61, float %19)
  store float %62, float* %arrayidx94, align 16, !tbaa !7
  %63 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 9), align 4, !tbaa !7
  %64 = tail call float @llvm.fmuladd.f32(float %44, float %63, float %18)
  store float %64, float* %arrayidx97, align 4, !tbaa !7
  %65 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 10), align 8, !tbaa !7
  %66 = tail call float @llvm.fmuladd.f32(float %44, float %65, float %17)
  store float %66, float* %arrayidx100, align 8, !tbaa !7
  %67 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 11), align 4, !tbaa !7
  %68 = tail call float @llvm.fmuladd.f32(float %44, float %67, float %16)
  store float %68, float* %arrayidx103, align 4, !tbaa !7
  %69 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 12), align 16, !tbaa !7
  %70 = tail call float @llvm.fmuladd.f32(float %44, float %69, float %15)
  store float %70, float* %arrayidx106, align 16, !tbaa !7
  %71 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 13), align 4, !tbaa !7
  %72 = tail call float @llvm.fmuladd.f32(float %44, float %71, float %14)
  store float %72, float* %arrayidx109, align 4, !tbaa !7
  %73 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 14), align 8, !tbaa !7
  %74 = tail call float @llvm.fmuladd.f32(float %44, float %73, float %13)
  store float %74, float* %arrayidx112, align 8, !tbaa !7
  %75 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 0, i64 15), align 4, !tbaa !7
  %76 = load float, float* %arrayidx115, align 4, !tbaa !7
  %77 = tail call float @llvm.fmuladd.f32(float %44, float %75, float %76)
  store float %77, float* %arrayidx115, align 4, !tbaa !7
  %78 = bitcast float* %add.ptr66 to i32*
  %79 = load i32, i32* %78, align 4, !tbaa !7
  store i32 %79, i32* %6, align 16, !tbaa !7
  %80 = bitcast i32 %31 to float
  %81 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 0), align 4, !tbaa !7
  %82 = tail call float @llvm.fmuladd.f32(float %80, float %81, float %46)
  store float %82, float* %arrayidx70, align 16, !tbaa !7
  %83 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 1), align 4, !tbaa !7
  %84 = tail call float @llvm.fmuladd.f32(float %80, float %83, float %48)
  store float %84, float* %arrayidx73, align 4, !tbaa !7
  %85 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 2), align 4, !tbaa !7
  %86 = tail call float @llvm.fmuladd.f32(float %80, float %85, float %50)
  store float %86, float* %arrayidx76, align 8, !tbaa !7
  %87 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 3), align 4, !tbaa !7
  %88 = tail call float @llvm.fmuladd.f32(float %80, float %87, float %52)
  store float %88, float* %arrayidx79, align 4, !tbaa !7
  %89 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 4), align 4, !tbaa !7
  %90 = tail call float @llvm.fmuladd.f32(float %80, float %89, float %54)
  store float %90, float* %arrayidx82, align 16, !tbaa !7
  %91 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 5), align 4, !tbaa !7
  %92 = tail call float @llvm.fmuladd.f32(float %80, float %91, float %56)
  store float %92, float* %arrayidx85, align 4, !tbaa !7
  %93 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 6), align 4, !tbaa !7
  %94 = tail call float @llvm.fmuladd.f32(float %80, float %93, float %58)
  store float %94, float* %arrayidx88, align 8, !tbaa !7
  %95 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 7), align 4, !tbaa !7
  %96 = tail call float @llvm.fmuladd.f32(float %80, float %95, float %60)
  store float %96, float* %arrayidx91, align 4, !tbaa !7
  %97 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 8), align 4, !tbaa !7
  %98 = tail call float @llvm.fmuladd.f32(float %80, float %97, float %62)
  store float %98, float* %arrayidx94, align 16, !tbaa !7
  %99 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 9), align 4, !tbaa !7
  %100 = tail call float @llvm.fmuladd.f32(float %80, float %99, float %64)
  store float %100, float* %arrayidx97, align 4, !tbaa !7
  %101 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 10), align 4, !tbaa !7
  %102 = tail call float @llvm.fmuladd.f32(float %80, float %101, float %66)
  store float %102, float* %arrayidx100, align 8, !tbaa !7
  %103 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 11), align 4, !tbaa !7
  %104 = tail call float @llvm.fmuladd.f32(float %80, float %103, float %68)
  store float %104, float* %arrayidx103, align 4, !tbaa !7
  %105 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 12), align 4, !tbaa !7
  %106 = tail call float @llvm.fmuladd.f32(float %80, float %105, float %70)
  store float %106, float* %arrayidx106, align 16, !tbaa !7
  %107 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 13), align 4, !tbaa !7
  %108 = tail call float @llvm.fmuladd.f32(float %80, float %107, float %72)
  store float %108, float* %arrayidx109, align 4, !tbaa !7
  %109 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 14), align 4, !tbaa !7
  %110 = tail call float @llvm.fmuladd.f32(float %80, float %109, float %74)
  store float %110, float* %arrayidx112, align 8, !tbaa !7
  %111 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 1, i64 15), align 4, !tbaa !7
  %112 = tail call float @llvm.fmuladd.f32(float %80, float %111, float %77)
  store float %112, float* %arrayidx115, align 4, !tbaa !7
  %arrayidx173 = getelementptr inbounds float, float* %add.ptr66, i64 %idxprom172
  %113 = bitcast float* %arrayidx173 to i32*
  %114 = load i32, i32* %113, align 4, !tbaa !7
  store i32 %114, i32* %7, align 4, !tbaa !7
  %115 = load float, float* %arrayidx176, align 8, !tbaa !7
  %116 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 0), align 8, !tbaa !7
  %117 = tail call float @llvm.fmuladd.f32(float %115, float %116, float %82)
  store float %117, float* %arrayidx70, align 16, !tbaa !7
  %118 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 1), align 4, !tbaa !7
  %119 = tail call float @llvm.fmuladd.f32(float %115, float %118, float %84)
  store float %119, float* %arrayidx73, align 4, !tbaa !7
  %120 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 2), align 8, !tbaa !7
  %121 = tail call float @llvm.fmuladd.f32(float %115, float %120, float %86)
  store float %121, float* %arrayidx76, align 8, !tbaa !7
  %122 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 3), align 4, !tbaa !7
  %123 = tail call float @llvm.fmuladd.f32(float %115, float %122, float %88)
  store float %123, float* %arrayidx79, align 4, !tbaa !7
  %124 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 4), align 8, !tbaa !7
  %125 = tail call float @llvm.fmuladd.f32(float %115, float %124, float %90)
  store float %125, float* %arrayidx82, align 16, !tbaa !7
  %126 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 5), align 4, !tbaa !7
  %127 = tail call float @llvm.fmuladd.f32(float %115, float %126, float %92)
  store float %127, float* %arrayidx85, align 4, !tbaa !7
  %128 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 6), align 8, !tbaa !7
  %129 = tail call float @llvm.fmuladd.f32(float %115, float %128, float %94)
  store float %129, float* %arrayidx88, align 8, !tbaa !7
  %130 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 7), align 4, !tbaa !7
  %131 = tail call float @llvm.fmuladd.f32(float %115, float %130, float %96)
  store float %131, float* %arrayidx91, align 4, !tbaa !7
  %132 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 8), align 8, !tbaa !7
  %133 = tail call float @llvm.fmuladd.f32(float %115, float %132, float %98)
  store float %133, float* %arrayidx94, align 16, !tbaa !7
  %134 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 9), align 4, !tbaa !7
  %135 = tail call float @llvm.fmuladd.f32(float %115, float %134, float %100)
  store float %135, float* %arrayidx97, align 4, !tbaa !7
  %136 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 10), align 8, !tbaa !7
  %137 = tail call float @llvm.fmuladd.f32(float %115, float %136, float %102)
  store float %137, float* %arrayidx100, align 8, !tbaa !7
  %138 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 11), align 4, !tbaa !7
  %139 = tail call float @llvm.fmuladd.f32(float %115, float %138, float %104)
  store float %139, float* %arrayidx103, align 4, !tbaa !7
  %140 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 12), align 8, !tbaa !7
  %141 = tail call float @llvm.fmuladd.f32(float %115, float %140, float %106)
  store float %141, float* %arrayidx106, align 16, !tbaa !7
  %142 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 13), align 4, !tbaa !7
  %143 = tail call float @llvm.fmuladd.f32(float %115, float %142, float %108)
  store float %143, float* %arrayidx109, align 4, !tbaa !7
  %144 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 14), align 8, !tbaa !7
  %145 = tail call float @llvm.fmuladd.f32(float %115, float %144, float %110)
  store float %145, float* %arrayidx112, align 8, !tbaa !7
  %146 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 2, i64 15), align 4, !tbaa !7
  %147 = tail call float @llvm.fmuladd.f32(float %115, float %146, float %112)
  store float %147, float* %arrayidx115, align 4, !tbaa !7
  %arrayidx228 = getelementptr inbounds float, float* %add.ptr66, i64 %idxprom227
  %148 = bitcast float* %arrayidx228 to i32*
  %149 = load i32, i32* %148, align 4, !tbaa !7
  store i32 %149, i32* %8, align 8, !tbaa !7
  %150 = load float, float* %arrayidx231, align 4, !tbaa !7
  %151 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 0), align 4, !tbaa !7
  %152 = tail call float @llvm.fmuladd.f32(float %150, float %151, float %117)
  store float %152, float* %arrayidx70, align 16, !tbaa !7
  %153 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 1), align 4, !tbaa !7
  %154 = tail call float @llvm.fmuladd.f32(float %150, float %153, float %119)
  store float %154, float* %arrayidx73, align 4, !tbaa !7
  %155 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 2), align 4, !tbaa !7
  %156 = tail call float @llvm.fmuladd.f32(float %150, float %155, float %121)
  store float %156, float* %arrayidx76, align 8, !tbaa !7
  %157 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 3), align 4, !tbaa !7
  %158 = tail call float @llvm.fmuladd.f32(float %150, float %157, float %123)
  store float %158, float* %arrayidx79, align 4, !tbaa !7
  %159 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 4), align 4, !tbaa !7
  %160 = tail call float @llvm.fmuladd.f32(float %150, float %159, float %125)
  store float %160, float* %arrayidx82, align 16, !tbaa !7
  %161 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 5), align 4, !tbaa !7
  %162 = tail call float @llvm.fmuladd.f32(float %150, float %161, float %127)
  store float %162, float* %arrayidx85, align 4, !tbaa !7
  %163 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 6), align 4, !tbaa !7
  %164 = tail call float @llvm.fmuladd.f32(float %150, float %163, float %129)
  store float %164, float* %arrayidx88, align 8, !tbaa !7
  %165 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 7), align 4, !tbaa !7
  %166 = tail call float @llvm.fmuladd.f32(float %150, float %165, float %131)
  store float %166, float* %arrayidx91, align 4, !tbaa !7
  %167 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 8), align 4, !tbaa !7
  %168 = tail call float @llvm.fmuladd.f32(float %150, float %167, float %133)
  store float %168, float* %arrayidx94, align 16, !tbaa !7
  %169 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 9), align 4, !tbaa !7
  %170 = tail call float @llvm.fmuladd.f32(float %150, float %169, float %135)
  store float %170, float* %arrayidx97, align 4, !tbaa !7
  %171 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 10), align 4, !tbaa !7
  %172 = tail call float @llvm.fmuladd.f32(float %150, float %171, float %137)
  store float %172, float* %arrayidx100, align 8, !tbaa !7
  %173 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 11), align 4, !tbaa !7
  %174 = tail call float @llvm.fmuladd.f32(float %150, float %173, float %139)
  store float %174, float* %arrayidx103, align 4, !tbaa !7
  %175 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 12), align 4, !tbaa !7
  %176 = tail call float @llvm.fmuladd.f32(float %150, float %175, float %141)
  store float %176, float* %arrayidx106, align 16, !tbaa !7
  %177 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 13), align 4, !tbaa !7
  %178 = tail call float @llvm.fmuladd.f32(float %150, float %177, float %143)
  store float %178, float* %arrayidx109, align 4, !tbaa !7
  %179 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 14), align 4, !tbaa !7
  %180 = tail call float @llvm.fmuladd.f32(float %150, float %179, float %145)
  store float %180, float* %arrayidx112, align 8, !tbaa !7
  %181 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 3, i64 15), align 4, !tbaa !7
  %182 = tail call float @llvm.fmuladd.f32(float %150, float %181, float %147)
  store float %182, float* %arrayidx115, align 4, !tbaa !7
  %arrayidx283 = getelementptr inbounds float, float* %add.ptr66, i64 %idxprom282
  %183 = bitcast float* %arrayidx283 to i32*
  %184 = load i32, i32* %183, align 4, !tbaa !7
  store i32 %184, i32* %9, align 4, !tbaa !7
  %add.ptr287 = getelementptr inbounds float, float* %add.ptr66, i64 %idx.ext65
  %185 = load float, float* %arrayidx68, align 16, !tbaa !7
  %186 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 0), align 16, !tbaa !7
  %187 = tail call float @llvm.fmuladd.f32(float %185, float %186, float %152)
  store float %187, float* %arrayidx70, align 16, !tbaa !7
  %188 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 1), align 4, !tbaa !7
  %189 = tail call float @llvm.fmuladd.f32(float %185, float %188, float %154)
  store float %189, float* %arrayidx73, align 4, !tbaa !7
  %190 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 2), align 8, !tbaa !7
  %191 = tail call float @llvm.fmuladd.f32(float %185, float %190, float %156)
  store float %191, float* %arrayidx76, align 8, !tbaa !7
  %192 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 3), align 4, !tbaa !7
  %193 = tail call float @llvm.fmuladd.f32(float %185, float %192, float %158)
  store float %193, float* %arrayidx79, align 4, !tbaa !7
  %194 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 4), align 16, !tbaa !7
  %195 = tail call float @llvm.fmuladd.f32(float %185, float %194, float %160)
  store float %195, float* %arrayidx82, align 16, !tbaa !7
  %196 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 5), align 4, !tbaa !7
  %197 = tail call float @llvm.fmuladd.f32(float %185, float %196, float %162)
  store float %197, float* %arrayidx85, align 4, !tbaa !7
  %198 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 6), align 8, !tbaa !7
  %199 = tail call float @llvm.fmuladd.f32(float %185, float %198, float %164)
  store float %199, float* %arrayidx88, align 8, !tbaa !7
  %200 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 7), align 4, !tbaa !7
  %201 = tail call float @llvm.fmuladd.f32(float %185, float %200, float %166)
  store float %201, float* %arrayidx91, align 4, !tbaa !7
  %202 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 8), align 16, !tbaa !7
  %203 = tail call float @llvm.fmuladd.f32(float %185, float %202, float %168)
  store float %203, float* %arrayidx94, align 16, !tbaa !7
  %204 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 9), align 4, !tbaa !7
  %205 = tail call float @llvm.fmuladd.f32(float %185, float %204, float %170)
  store float %205, float* %arrayidx97, align 4, !tbaa !7
  %206 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 10), align 8, !tbaa !7
  %207 = tail call float @llvm.fmuladd.f32(float %185, float %206, float %172)
  store float %207, float* %arrayidx100, align 8, !tbaa !7
  %208 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 11), align 4, !tbaa !7
  %209 = tail call float @llvm.fmuladd.f32(float %185, float %208, float %174)
  store float %209, float* %arrayidx103, align 4, !tbaa !7
  %210 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 12), align 16, !tbaa !7
  %211 = tail call float @llvm.fmuladd.f32(float %185, float %210, float %176)
  store float %211, float* %arrayidx106, align 16, !tbaa !7
  %212 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 13), align 4, !tbaa !7
  %213 = tail call float @llvm.fmuladd.f32(float %185, float %212, float %178)
  store float %213, float* %arrayidx109, align 4, !tbaa !7
  %214 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 14), align 8, !tbaa !7
  %215 = tail call float @llvm.fmuladd.f32(float %185, float %214, float %180)
  store float %215, float* %arrayidx112, align 8, !tbaa !7
  %216 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 4, i64 15), align 4, !tbaa !7
  %217 = tail call float @llvm.fmuladd.f32(float %185, float %216, float %182)
  store float %217, float* %arrayidx115, align 4, !tbaa !7
  %218 = bitcast float* %add.ptr287 to i32*
  %219 = load i32, i32* %218, align 4, !tbaa !7
  store i32 %219, i32* %6, align 16, !tbaa !7
  %220 = load float, float* %arrayidx121, align 4, !tbaa !7
  %221 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 0), align 4, !tbaa !7
  %222 = tail call float @llvm.fmuladd.f32(float %220, float %221, float %187)
  store float %222, float* %arrayidx70, align 16, !tbaa !7
  %223 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 1), align 4, !tbaa !7
  %224 = tail call float @llvm.fmuladd.f32(float %220, float %223, float %189)
  store float %224, float* %arrayidx73, align 4, !tbaa !7
  %225 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 2), align 4, !tbaa !7
  %226 = tail call float @llvm.fmuladd.f32(float %220, float %225, float %191)
  store float %226, float* %arrayidx76, align 8, !tbaa !7
  %227 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 3), align 4, !tbaa !7
  %228 = tail call float @llvm.fmuladd.f32(float %220, float %227, float %193)
  store float %228, float* %arrayidx79, align 4, !tbaa !7
  %229 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 4), align 4, !tbaa !7
  %230 = tail call float @llvm.fmuladd.f32(float %220, float %229, float %195)
  store float %230, float* %arrayidx82, align 16, !tbaa !7
  %231 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 5), align 4, !tbaa !7
  %232 = tail call float @llvm.fmuladd.f32(float %220, float %231, float %197)
  store float %232, float* %arrayidx85, align 4, !tbaa !7
  %233 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 6), align 4, !tbaa !7
  %234 = tail call float @llvm.fmuladd.f32(float %220, float %233, float %199)
  store float %234, float* %arrayidx88, align 8, !tbaa !7
  %235 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 7), align 4, !tbaa !7
  %236 = tail call float @llvm.fmuladd.f32(float %220, float %235, float %201)
  store float %236, float* %arrayidx91, align 4, !tbaa !7
  %237 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 8), align 4, !tbaa !7
  %238 = tail call float @llvm.fmuladd.f32(float %220, float %237, float %203)
  store float %238, float* %arrayidx94, align 16, !tbaa !7
  %239 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 9), align 4, !tbaa !7
  %240 = tail call float @llvm.fmuladd.f32(float %220, float %239, float %205)
  store float %240, float* %arrayidx97, align 4, !tbaa !7
  %241 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 10), align 4, !tbaa !7
  %242 = tail call float @llvm.fmuladd.f32(float %220, float %241, float %207)
  store float %242, float* %arrayidx100, align 8, !tbaa !7
  %243 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 11), align 4, !tbaa !7
  %244 = tail call float @llvm.fmuladd.f32(float %220, float %243, float %209)
  store float %244, float* %arrayidx103, align 4, !tbaa !7
  %245 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 12), align 4, !tbaa !7
  %246 = tail call float @llvm.fmuladd.f32(float %220, float %245, float %211)
  store float %246, float* %arrayidx106, align 16, !tbaa !7
  %247 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 13), align 4, !tbaa !7
  %248 = tail call float @llvm.fmuladd.f32(float %220, float %247, float %213)
  store float %248, float* %arrayidx109, align 4, !tbaa !7
  %249 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 14), align 4, !tbaa !7
  %250 = tail call float @llvm.fmuladd.f32(float %220, float %249, float %215)
  store float %250, float* %arrayidx112, align 8, !tbaa !7
  %251 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 5, i64 15), align 4, !tbaa !7
  %252 = tail call float @llvm.fmuladd.f32(float %220, float %251, float %217)
  store float %252, float* %arrayidx115, align 4, !tbaa !7
  %arrayidx396 = getelementptr inbounds float, float* %add.ptr287, i64 %idxprom172
  %253 = bitcast float* %arrayidx396 to i32*
  %254 = load i32, i32* %253, align 4, !tbaa !7
  store i32 %254, i32* %7, align 4, !tbaa !7
  %255 = load float, float* %arrayidx176, align 8, !tbaa !7
  %256 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 0), align 8, !tbaa !7
  %257 = tail call float @llvm.fmuladd.f32(float %255, float %256, float %222)
  store float %257, float* %arrayidx70, align 16, !tbaa !7
  %258 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 1), align 4, !tbaa !7
  %259 = tail call float @llvm.fmuladd.f32(float %255, float %258, float %224)
  store float %259, float* %arrayidx73, align 4, !tbaa !7
  %260 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 2), align 8, !tbaa !7
  %261 = tail call float @llvm.fmuladd.f32(float %255, float %260, float %226)
  store float %261, float* %arrayidx76, align 8, !tbaa !7
  %262 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 3), align 4, !tbaa !7
  %263 = tail call float @llvm.fmuladd.f32(float %255, float %262, float %228)
  store float %263, float* %arrayidx79, align 4, !tbaa !7
  %264 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 4), align 8, !tbaa !7
  %265 = tail call float @llvm.fmuladd.f32(float %255, float %264, float %230)
  store float %265, float* %arrayidx82, align 16, !tbaa !7
  %266 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 5), align 4, !tbaa !7
  %267 = tail call float @llvm.fmuladd.f32(float %255, float %266, float %232)
  store float %267, float* %arrayidx85, align 4, !tbaa !7
  %268 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 6), align 8, !tbaa !7
  %269 = tail call float @llvm.fmuladd.f32(float %255, float %268, float %234)
  store float %269, float* %arrayidx88, align 8, !tbaa !7
  %270 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 7), align 4, !tbaa !7
  %271 = tail call float @llvm.fmuladd.f32(float %255, float %270, float %236)
  store float %271, float* %arrayidx91, align 4, !tbaa !7
  %272 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 8), align 8, !tbaa !7
  %273 = tail call float @llvm.fmuladd.f32(float %255, float %272, float %238)
  store float %273, float* %arrayidx94, align 16, !tbaa !7
  %274 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 9), align 4, !tbaa !7
  %275 = tail call float @llvm.fmuladd.f32(float %255, float %274, float %240)
  store float %275, float* %arrayidx97, align 4, !tbaa !7
  %276 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 10), align 8, !tbaa !7
  %277 = tail call float @llvm.fmuladd.f32(float %255, float %276, float %242)
  store float %277, float* %arrayidx100, align 8, !tbaa !7
  %278 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 11), align 4, !tbaa !7
  %279 = tail call float @llvm.fmuladd.f32(float %255, float %278, float %244)
  store float %279, float* %arrayidx103, align 4, !tbaa !7
  %280 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 12), align 8, !tbaa !7
  %281 = tail call float @llvm.fmuladd.f32(float %255, float %280, float %246)
  store float %281, float* %arrayidx106, align 16, !tbaa !7
  %282 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 13), align 4, !tbaa !7
  %283 = tail call float @llvm.fmuladd.f32(float %255, float %282, float %248)
  store float %283, float* %arrayidx109, align 4, !tbaa !7
  %284 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 14), align 8, !tbaa !7
  %285 = tail call float @llvm.fmuladd.f32(float %255, float %284, float %250)
  store float %285, float* %arrayidx112, align 8, !tbaa !7
  %286 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 6, i64 15), align 4, !tbaa !7
  %287 = tail call float @llvm.fmuladd.f32(float %255, float %286, float %252)
  store float %287, float* %arrayidx115, align 4, !tbaa !7
  %arrayidx451 = getelementptr inbounds float, float* %add.ptr287, i64 %idxprom227
  %288 = bitcast float* %arrayidx451 to i32*
  %289 = load i32, i32* %288, align 4, !tbaa !7
  store i32 %289, i32* %8, align 8, !tbaa !7
  %290 = load float, float* %arrayidx231, align 4, !tbaa !7
  %291 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 0), align 4, !tbaa !7
  %292 = tail call float @llvm.fmuladd.f32(float %290, float %291, float %257)
  store float %292, float* %arrayidx70, align 16, !tbaa !7
  %293 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 1), align 4, !tbaa !7
  %294 = tail call float @llvm.fmuladd.f32(float %290, float %293, float %259)
  store float %294, float* %arrayidx73, align 4, !tbaa !7
  %295 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 2), align 4, !tbaa !7
  %296 = tail call float @llvm.fmuladd.f32(float %290, float %295, float %261)
  store float %296, float* %arrayidx76, align 8, !tbaa !7
  %297 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 3), align 4, !tbaa !7
  %298 = tail call float @llvm.fmuladd.f32(float %290, float %297, float %263)
  store float %298, float* %arrayidx79, align 4, !tbaa !7
  %299 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 4), align 4, !tbaa !7
  %300 = tail call float @llvm.fmuladd.f32(float %290, float %299, float %265)
  store float %300, float* %arrayidx82, align 16, !tbaa !7
  %301 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 5), align 4, !tbaa !7
  %302 = tail call float @llvm.fmuladd.f32(float %290, float %301, float %267)
  store float %302, float* %arrayidx85, align 4, !tbaa !7
  %303 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 6), align 4, !tbaa !7
  %304 = tail call float @llvm.fmuladd.f32(float %290, float %303, float %269)
  store float %304, float* %arrayidx88, align 8, !tbaa !7
  %305 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 7), align 4, !tbaa !7
  %306 = tail call float @llvm.fmuladd.f32(float %290, float %305, float %271)
  store float %306, float* %arrayidx91, align 4, !tbaa !7
  %307 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 8), align 4, !tbaa !7
  %308 = tail call float @llvm.fmuladd.f32(float %290, float %307, float %273)
  store float %308, float* %arrayidx94, align 16, !tbaa !7
  %309 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 9), align 4, !tbaa !7
  %310 = tail call float @llvm.fmuladd.f32(float %290, float %309, float %275)
  store float %310, float* %arrayidx97, align 4, !tbaa !7
  %311 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 10), align 4, !tbaa !7
  %312 = tail call float @llvm.fmuladd.f32(float %290, float %311, float %277)
  store float %312, float* %arrayidx100, align 8, !tbaa !7
  %313 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 11), align 4, !tbaa !7
  %314 = tail call float @llvm.fmuladd.f32(float %290, float %313, float %279)
  store float %314, float* %arrayidx103, align 4, !tbaa !7
  %315 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 12), align 4, !tbaa !7
  %316 = tail call float @llvm.fmuladd.f32(float %290, float %315, float %281)
  store float %316, float* %arrayidx106, align 16, !tbaa !7
  %317 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 13), align 4, !tbaa !7
  %318 = tail call float @llvm.fmuladd.f32(float %290, float %317, float %283)
  store float %318, float* %arrayidx109, align 4, !tbaa !7
  %319 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 14), align 4, !tbaa !7
  %320 = tail call float @llvm.fmuladd.f32(float %290, float %319, float %285)
  store float %320, float* %arrayidx112, align 8, !tbaa !7
  %321 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 7, i64 15), align 4, !tbaa !7
  %322 = tail call float @llvm.fmuladd.f32(float %290, float %321, float %287)
  store float %322, float* %arrayidx115, align 4, !tbaa !7
  %arrayidx506 = getelementptr inbounds float, float* %add.ptr287, i64 %idxprom282
  %323 = bitcast float* %arrayidx506 to i32*
  %324 = load i32, i32* %323, align 4, !tbaa !7
  store i32 %324, i32* %9, align 4, !tbaa !7
  %add.ptr510 = getelementptr inbounds float, float* %add.ptr287, i64 %idx.ext65
  %325 = load float, float* %arrayidx68, align 16, !tbaa !7
  %326 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 0), align 16, !tbaa !7
  %327 = tail call float @llvm.fmuladd.f32(float %325, float %326, float %292)
  store float %327, float* %arrayidx70, align 16, !tbaa !7
  %328 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 1), align 4, !tbaa !7
  %329 = tail call float @llvm.fmuladd.f32(float %325, float %328, float %294)
  store float %329, float* %arrayidx73, align 4, !tbaa !7
  %330 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 2), align 8, !tbaa !7
  %331 = tail call float @llvm.fmuladd.f32(float %325, float %330, float %296)
  store float %331, float* %arrayidx76, align 8, !tbaa !7
  %332 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 3), align 4, !tbaa !7
  %333 = tail call float @llvm.fmuladd.f32(float %325, float %332, float %298)
  store float %333, float* %arrayidx79, align 4, !tbaa !7
  %334 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 4), align 16, !tbaa !7
  %335 = tail call float @llvm.fmuladd.f32(float %325, float %334, float %300)
  store float %335, float* %arrayidx82, align 16, !tbaa !7
  %336 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 5), align 4, !tbaa !7
  %337 = tail call float @llvm.fmuladd.f32(float %325, float %336, float %302)
  store float %337, float* %arrayidx85, align 4, !tbaa !7
  %338 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 6), align 8, !tbaa !7
  %339 = tail call float @llvm.fmuladd.f32(float %325, float %338, float %304)
  store float %339, float* %arrayidx88, align 8, !tbaa !7
  %340 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 7), align 4, !tbaa !7
  %341 = tail call float @llvm.fmuladd.f32(float %325, float %340, float %306)
  store float %341, float* %arrayidx91, align 4, !tbaa !7
  %342 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 8), align 16, !tbaa !7
  %343 = tail call float @llvm.fmuladd.f32(float %325, float %342, float %308)
  store float %343, float* %arrayidx94, align 16, !tbaa !7
  %344 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 9), align 4, !tbaa !7
  %345 = tail call float @llvm.fmuladd.f32(float %325, float %344, float %310)
  store float %345, float* %arrayidx97, align 4, !tbaa !7
  %346 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 10), align 8, !tbaa !7
  %347 = tail call float @llvm.fmuladd.f32(float %325, float %346, float %312)
  store float %347, float* %arrayidx100, align 8, !tbaa !7
  %348 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 11), align 4, !tbaa !7
  %349 = tail call float @llvm.fmuladd.f32(float %325, float %348, float %314)
  store float %349, float* %arrayidx103, align 4, !tbaa !7
  %350 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 12), align 16, !tbaa !7
  %351 = tail call float @llvm.fmuladd.f32(float %325, float %350, float %316)
  store float %351, float* %arrayidx106, align 16, !tbaa !7
  %352 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 13), align 4, !tbaa !7
  %353 = tail call float @llvm.fmuladd.f32(float %325, float %352, float %318)
  store float %353, float* %arrayidx109, align 4, !tbaa !7
  %354 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 14), align 8, !tbaa !7
  %355 = tail call float @llvm.fmuladd.f32(float %325, float %354, float %320)
  store float %355, float* %arrayidx112, align 8, !tbaa !7
  %356 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 8, i64 15), align 4, !tbaa !7
  %357 = tail call float @llvm.fmuladd.f32(float %325, float %356, float %322)
  store float %357, float* %arrayidx115, align 4, !tbaa !7
  %358 = bitcast float* %add.ptr510 to i32*
  %359 = load i32, i32* %358, align 4, !tbaa !7
  store i32 %359, i32* %6, align 16, !tbaa !7
  %360 = load float, float* %arrayidx121, align 4, !tbaa !7
  %361 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 0), align 4, !tbaa !7
  %362 = tail call float @llvm.fmuladd.f32(float %360, float %361, float %327)
  store float %362, float* %arrayidx70, align 16, !tbaa !7
  %363 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 1), align 4, !tbaa !7
  %364 = tail call float @llvm.fmuladd.f32(float %360, float %363, float %329)
  store float %364, float* %arrayidx73, align 4, !tbaa !7
  %365 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 2), align 4, !tbaa !7
  %366 = tail call float @llvm.fmuladd.f32(float %360, float %365, float %331)
  store float %366, float* %arrayidx76, align 8, !tbaa !7
  %367 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 3), align 4, !tbaa !7
  %368 = tail call float @llvm.fmuladd.f32(float %360, float %367, float %333)
  store float %368, float* %arrayidx79, align 4, !tbaa !7
  %369 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 4), align 4, !tbaa !7
  %370 = tail call float @llvm.fmuladd.f32(float %360, float %369, float %335)
  store float %370, float* %arrayidx82, align 16, !tbaa !7
  %371 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 5), align 4, !tbaa !7
  %372 = tail call float @llvm.fmuladd.f32(float %360, float %371, float %337)
  store float %372, float* %arrayidx85, align 4, !tbaa !7
  %373 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 6), align 4, !tbaa !7
  %374 = tail call float @llvm.fmuladd.f32(float %360, float %373, float %339)
  store float %374, float* %arrayidx88, align 8, !tbaa !7
  %375 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 7), align 4, !tbaa !7
  %376 = tail call float @llvm.fmuladd.f32(float %360, float %375, float %341)
  store float %376, float* %arrayidx91, align 4, !tbaa !7
  %377 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 8), align 4, !tbaa !7
  %378 = tail call float @llvm.fmuladd.f32(float %360, float %377, float %343)
  store float %378, float* %arrayidx94, align 16, !tbaa !7
  %379 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 9), align 4, !tbaa !7
  %380 = tail call float @llvm.fmuladd.f32(float %360, float %379, float %345)
  store float %380, float* %arrayidx97, align 4, !tbaa !7
  %381 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 10), align 4, !tbaa !7
  %382 = tail call float @llvm.fmuladd.f32(float %360, float %381, float %347)
  store float %382, float* %arrayidx100, align 8, !tbaa !7
  %383 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 11), align 4, !tbaa !7
  %384 = tail call float @llvm.fmuladd.f32(float %360, float %383, float %349)
  store float %384, float* %arrayidx103, align 4, !tbaa !7
  %385 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 12), align 4, !tbaa !7
  %386 = tail call float @llvm.fmuladd.f32(float %360, float %385, float %351)
  store float %386, float* %arrayidx106, align 16, !tbaa !7
  %387 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 13), align 4, !tbaa !7
  %388 = tail call float @llvm.fmuladd.f32(float %360, float %387, float %353)
  store float %388, float* %arrayidx109, align 4, !tbaa !7
  %389 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 14), align 4, !tbaa !7
  %390 = tail call float @llvm.fmuladd.f32(float %360, float %389, float %355)
  store float %390, float* %arrayidx112, align 8, !tbaa !7
  %391 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 9, i64 15), align 4, !tbaa !7
  %392 = tail call float @llvm.fmuladd.f32(float %360, float %391, float %357)
  store float %392, float* %arrayidx115, align 4, !tbaa !7
  %arrayidx619 = getelementptr inbounds float, float* %add.ptr510, i64 %idxprom172
  %393 = bitcast float* %arrayidx619 to i32*
  %394 = load i32, i32* %393, align 4, !tbaa !7
  store i32 %394, i32* %7, align 4, !tbaa !7
  %395 = load float, float* %arrayidx176, align 8, !tbaa !7
  %396 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 0), align 8, !tbaa !7
  %397 = tail call float @llvm.fmuladd.f32(float %395, float %396, float %362)
  store float %397, float* %arrayidx70, align 16, !tbaa !7
  %398 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 1), align 4, !tbaa !7
  %399 = tail call float @llvm.fmuladd.f32(float %395, float %398, float %364)
  store float %399, float* %arrayidx73, align 4, !tbaa !7
  %400 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 2), align 8, !tbaa !7
  %401 = tail call float @llvm.fmuladd.f32(float %395, float %400, float %366)
  store float %401, float* %arrayidx76, align 8, !tbaa !7
  %402 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 3), align 4, !tbaa !7
  %403 = tail call float @llvm.fmuladd.f32(float %395, float %402, float %368)
  store float %403, float* %arrayidx79, align 4, !tbaa !7
  %404 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 4), align 8, !tbaa !7
  %405 = tail call float @llvm.fmuladd.f32(float %395, float %404, float %370)
  store float %405, float* %arrayidx82, align 16, !tbaa !7
  %406 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 5), align 4, !tbaa !7
  %407 = tail call float @llvm.fmuladd.f32(float %395, float %406, float %372)
  store float %407, float* %arrayidx85, align 4, !tbaa !7
  %408 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 6), align 8, !tbaa !7
  %409 = tail call float @llvm.fmuladd.f32(float %395, float %408, float %374)
  store float %409, float* %arrayidx88, align 8, !tbaa !7
  %410 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 7), align 4, !tbaa !7
  %411 = tail call float @llvm.fmuladd.f32(float %395, float %410, float %376)
  store float %411, float* %arrayidx91, align 4, !tbaa !7
  %412 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 8), align 8, !tbaa !7
  %413 = tail call float @llvm.fmuladd.f32(float %395, float %412, float %378)
  store float %413, float* %arrayidx94, align 16, !tbaa !7
  %414 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 9), align 4, !tbaa !7
  %415 = tail call float @llvm.fmuladd.f32(float %395, float %414, float %380)
  store float %415, float* %arrayidx97, align 4, !tbaa !7
  %416 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 10), align 8, !tbaa !7
  %417 = tail call float @llvm.fmuladd.f32(float %395, float %416, float %382)
  store float %417, float* %arrayidx100, align 8, !tbaa !7
  %418 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 11), align 4, !tbaa !7
  %419 = tail call float @llvm.fmuladd.f32(float %395, float %418, float %384)
  store float %419, float* %arrayidx103, align 4, !tbaa !7
  %420 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 12), align 8, !tbaa !7
  %421 = tail call float @llvm.fmuladd.f32(float %395, float %420, float %386)
  store float %421, float* %arrayidx106, align 16, !tbaa !7
  %422 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 13), align 4, !tbaa !7
  %423 = tail call float @llvm.fmuladd.f32(float %395, float %422, float %388)
  store float %423, float* %arrayidx109, align 4, !tbaa !7
  %424 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 14), align 8, !tbaa !7
  %425 = tail call float @llvm.fmuladd.f32(float %395, float %424, float %390)
  store float %425, float* %arrayidx112, align 8, !tbaa !7
  %426 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 10, i64 15), align 4, !tbaa !7
  %427 = tail call float @llvm.fmuladd.f32(float %395, float %426, float %392)
  store float %427, float* %arrayidx115, align 4, !tbaa !7
  %arrayidx674 = getelementptr inbounds float, float* %add.ptr510, i64 %idxprom227
  %428 = bitcast float* %arrayidx674 to i32*
  %429 = load i32, i32* %428, align 4, !tbaa !7
  store i32 %429, i32* %8, align 8, !tbaa !7
  %430 = load float, float* %arrayidx231, align 4, !tbaa !7
  %431 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 0), align 4, !tbaa !7
  %432 = tail call float @llvm.fmuladd.f32(float %430, float %431, float %397)
  store float %432, float* %arrayidx70, align 16, !tbaa !7
  %433 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 1), align 4, !tbaa !7
  %434 = tail call float @llvm.fmuladd.f32(float %430, float %433, float %399)
  store float %434, float* %arrayidx73, align 4, !tbaa !7
  %435 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 2), align 4, !tbaa !7
  %436 = tail call float @llvm.fmuladd.f32(float %430, float %435, float %401)
  store float %436, float* %arrayidx76, align 8, !tbaa !7
  %437 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 3), align 4, !tbaa !7
  %438 = tail call float @llvm.fmuladd.f32(float %430, float %437, float %403)
  store float %438, float* %arrayidx79, align 4, !tbaa !7
  %439 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 4), align 4, !tbaa !7
  %440 = tail call float @llvm.fmuladd.f32(float %430, float %439, float %405)
  store float %440, float* %arrayidx82, align 16, !tbaa !7
  %441 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 5), align 4, !tbaa !7
  %442 = tail call float @llvm.fmuladd.f32(float %430, float %441, float %407)
  store float %442, float* %arrayidx85, align 4, !tbaa !7
  %443 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 6), align 4, !tbaa !7
  %444 = tail call float @llvm.fmuladd.f32(float %430, float %443, float %409)
  store float %444, float* %arrayidx88, align 8, !tbaa !7
  %445 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 7), align 4, !tbaa !7
  %446 = tail call float @llvm.fmuladd.f32(float %430, float %445, float %411)
  store float %446, float* %arrayidx91, align 4, !tbaa !7
  %447 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 8), align 4, !tbaa !7
  %448 = tail call float @llvm.fmuladd.f32(float %430, float %447, float %413)
  store float %448, float* %arrayidx94, align 16, !tbaa !7
  %449 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 9), align 4, !tbaa !7
  %450 = tail call float @llvm.fmuladd.f32(float %430, float %449, float %415)
  store float %450, float* %arrayidx97, align 4, !tbaa !7
  %451 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 10), align 4, !tbaa !7
  %452 = tail call float @llvm.fmuladd.f32(float %430, float %451, float %417)
  store float %452, float* %arrayidx100, align 8, !tbaa !7
  %453 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 11), align 4, !tbaa !7
  %454 = tail call float @llvm.fmuladd.f32(float %430, float %453, float %419)
  store float %454, float* %arrayidx103, align 4, !tbaa !7
  %455 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 12), align 4, !tbaa !7
  %456 = tail call float @llvm.fmuladd.f32(float %430, float %455, float %421)
  store float %456, float* %arrayidx106, align 16, !tbaa !7
  %457 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 13), align 4, !tbaa !7
  %458 = tail call float @llvm.fmuladd.f32(float %430, float %457, float %423)
  store float %458, float* %arrayidx109, align 4, !tbaa !7
  %459 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 14), align 4, !tbaa !7
  %460 = tail call float @llvm.fmuladd.f32(float %430, float %459, float %425)
  store float %460, float* %arrayidx112, align 8, !tbaa !7
  %461 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 11, i64 15), align 4, !tbaa !7
  %462 = tail call float @llvm.fmuladd.f32(float %430, float %461, float %427)
  store float %462, float* %arrayidx115, align 4, !tbaa !7
  %arrayidx729 = getelementptr inbounds float, float* %add.ptr510, i64 %idxprom282
  %463 = bitcast float* %arrayidx729 to i32*
  %464 = load i32, i32* %463, align 4, !tbaa !7
  store i32 %464, i32* %9, align 4, !tbaa !7
  %add.ptr733 = getelementptr inbounds float, float* %add.ptr510, i64 %idx.ext65
  %465 = load float, float* %arrayidx68, align 16, !tbaa !7
  %466 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 0), align 16, !tbaa !7
  %467 = tail call float @llvm.fmuladd.f32(float %465, float %466, float %432)
  %468 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 1), align 4, !tbaa !7
  %469 = tail call float @llvm.fmuladd.f32(float %465, float %468, float %434)
  %470 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 2), align 8, !tbaa !7
  %471 = tail call float @llvm.fmuladd.f32(float %465, float %470, float %436)
  %472 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 3), align 4, !tbaa !7
  %473 = tail call float @llvm.fmuladd.f32(float %465, float %472, float %438)
  %474 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 4), align 16, !tbaa !7
  %475 = tail call float @llvm.fmuladd.f32(float %465, float %474, float %440)
  %476 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 5), align 4, !tbaa !7
  %477 = tail call float @llvm.fmuladd.f32(float %465, float %476, float %442)
  %478 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 6), align 8, !tbaa !7
  %479 = tail call float @llvm.fmuladd.f32(float %465, float %478, float %444)
  %480 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 7), align 4, !tbaa !7
  %481 = tail call float @llvm.fmuladd.f32(float %465, float %480, float %446)
  %482 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 8), align 16, !tbaa !7
  %483 = tail call float @llvm.fmuladd.f32(float %465, float %482, float %448)
  %484 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 9), align 4, !tbaa !7
  %485 = tail call float @llvm.fmuladd.f32(float %465, float %484, float %450)
  %486 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 10), align 8, !tbaa !7
  %487 = tail call float @llvm.fmuladd.f32(float %465, float %486, float %452)
  %488 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 11), align 4, !tbaa !7
  %489 = tail call float @llvm.fmuladd.f32(float %465, float %488, float %454)
  %490 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 12), align 16, !tbaa !7
  %491 = tail call float @llvm.fmuladd.f32(float %465, float %490, float %456)
  %492 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 13), align 4, !tbaa !7
  %493 = tail call float @llvm.fmuladd.f32(float %465, float %492, float %458)
  %494 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 14), align 8, !tbaa !7
  %495 = tail call float @llvm.fmuladd.f32(float %465, float %494, float %460)
  %496 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 12, i64 15), align 4, !tbaa !7
  %497 = tail call float @llvm.fmuladd.f32(float %465, float %496, float %462)
  %498 = load float, float* %arrayidx121, align 4, !tbaa !7
  %499 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 0), align 4, !tbaa !7
  %500 = tail call float @llvm.fmuladd.f32(float %498, float %499, float %467)
  %501 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 1), align 4, !tbaa !7
  %502 = tail call float @llvm.fmuladd.f32(float %498, float %501, float %469)
  %503 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 2), align 4, !tbaa !7
  %504 = tail call float @llvm.fmuladd.f32(float %498, float %503, float %471)
  %505 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 3), align 4, !tbaa !7
  %506 = tail call float @llvm.fmuladd.f32(float %498, float %505, float %473)
  %507 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 4), align 4, !tbaa !7
  %508 = tail call float @llvm.fmuladd.f32(float %498, float %507, float %475)
  %509 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 5), align 4, !tbaa !7
  %510 = tail call float @llvm.fmuladd.f32(float %498, float %509, float %477)
  %511 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 6), align 4, !tbaa !7
  %512 = tail call float @llvm.fmuladd.f32(float %498, float %511, float %479)
  %513 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 7), align 4, !tbaa !7
  %514 = tail call float @llvm.fmuladd.f32(float %498, float %513, float %481)
  %515 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 8), align 4, !tbaa !7
  %516 = tail call float @llvm.fmuladd.f32(float %498, float %515, float %483)
  %517 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 9), align 4, !tbaa !7
  %518 = tail call float @llvm.fmuladd.f32(float %498, float %517, float %485)
  %519 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 10), align 4, !tbaa !7
  %520 = tail call float @llvm.fmuladd.f32(float %498, float %519, float %487)
  %521 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 11), align 4, !tbaa !7
  %522 = tail call float @llvm.fmuladd.f32(float %498, float %521, float %489)
  %523 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 12), align 4, !tbaa !7
  %524 = tail call float @llvm.fmuladd.f32(float %498, float %523, float %491)
  %525 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 13), align 4, !tbaa !7
  %526 = tail call float @llvm.fmuladd.f32(float %498, float %525, float %493)
  %527 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 14), align 4, !tbaa !7
  %528 = tail call float @llvm.fmuladd.f32(float %498, float %527, float %495)
  %529 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 13, i64 15), align 4, !tbaa !7
  %530 = tail call float @llvm.fmuladd.f32(float %498, float %529, float %497)
  %531 = load float, float* %arrayidx176, align 8, !tbaa !7
  %532 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 0), align 8, !tbaa !7
  %533 = tail call float @llvm.fmuladd.f32(float %531, float %532, float %500)
  %534 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 1), align 4, !tbaa !7
  %535 = tail call float @llvm.fmuladd.f32(float %531, float %534, float %502)
  %536 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 2), align 8, !tbaa !7
  %537 = tail call float @llvm.fmuladd.f32(float %531, float %536, float %504)
  %538 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 3), align 4, !tbaa !7
  %539 = tail call float @llvm.fmuladd.f32(float %531, float %538, float %506)
  %540 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 4), align 8, !tbaa !7
  %541 = tail call float @llvm.fmuladd.f32(float %531, float %540, float %508)
  %542 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 5), align 4, !tbaa !7
  %543 = tail call float @llvm.fmuladd.f32(float %531, float %542, float %510)
  %544 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 6), align 8, !tbaa !7
  %545 = tail call float @llvm.fmuladd.f32(float %531, float %544, float %512)
  %546 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 7), align 4, !tbaa !7
  %547 = tail call float @llvm.fmuladd.f32(float %531, float %546, float %514)
  %548 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 8), align 8, !tbaa !7
  %549 = tail call float @llvm.fmuladd.f32(float %531, float %548, float %516)
  %550 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 9), align 4, !tbaa !7
  %551 = tail call float @llvm.fmuladd.f32(float %531, float %550, float %518)
  %552 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 10), align 8, !tbaa !7
  %553 = tail call float @llvm.fmuladd.f32(float %531, float %552, float %520)
  %554 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 11), align 4, !tbaa !7
  %555 = tail call float @llvm.fmuladd.f32(float %531, float %554, float %522)
  %556 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 12), align 8, !tbaa !7
  %557 = tail call float @llvm.fmuladd.f32(float %531, float %556, float %524)
  %558 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 13), align 4, !tbaa !7
  %559 = tail call float @llvm.fmuladd.f32(float %531, float %558, float %526)
  %560 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 14), align 8, !tbaa !7
  %561 = tail call float @llvm.fmuladd.f32(float %531, float %560, float %528)
  %562 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 14, i64 15), align 4, !tbaa !7
  %563 = tail call float @llvm.fmuladd.f32(float %531, float %562, float %530)
  %564 = load float, float* %arrayidx231, align 4, !tbaa !7
  %565 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 0), align 4, !tbaa !7
  %566 = tail call float @llvm.fmuladd.f32(float %564, float %565, float %533)
  store float %566, float* %arrayidx70, align 16, !tbaa !7
  %567 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 1), align 4, !tbaa !7
  %568 = tail call float @llvm.fmuladd.f32(float %564, float %567, float %535)
  store float %568, float* %arrayidx73, align 4, !tbaa !7
  %569 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 2), align 4, !tbaa !7
  %570 = tail call float @llvm.fmuladd.f32(float %564, float %569, float %537)
  store float %570, float* %arrayidx76, align 8, !tbaa !7
  %571 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 3), align 4, !tbaa !7
  %572 = tail call float @llvm.fmuladd.f32(float %564, float %571, float %539)
  store float %572, float* %arrayidx79, align 4, !tbaa !7
  %573 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 4), align 4, !tbaa !7
  %574 = tail call float @llvm.fmuladd.f32(float %564, float %573, float %541)
  store float %574, float* %arrayidx82, align 16, !tbaa !7
  %575 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 5), align 4, !tbaa !7
  %576 = tail call float @llvm.fmuladd.f32(float %564, float %575, float %543)
  store float %576, float* %arrayidx85, align 4, !tbaa !7
  %577 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 6), align 4, !tbaa !7
  %578 = tail call float @llvm.fmuladd.f32(float %564, float %577, float %545)
  store float %578, float* %arrayidx88, align 8, !tbaa !7
  %579 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 7), align 4, !tbaa !7
  %580 = tail call float @llvm.fmuladd.f32(float %564, float %579, float %547)
  store float %580, float* %arrayidx91, align 4, !tbaa !7
  %581 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 8), align 4, !tbaa !7
  %582 = tail call float @llvm.fmuladd.f32(float %564, float %581, float %549)
  store float %582, float* %arrayidx94, align 16, !tbaa !7
  %583 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 9), align 4, !tbaa !7
  %584 = tail call float @llvm.fmuladd.f32(float %564, float %583, float %551)
  store float %584, float* %arrayidx97, align 4, !tbaa !7
  %585 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 10), align 4, !tbaa !7
  %586 = tail call float @llvm.fmuladd.f32(float %564, float %585, float %553)
  store float %586, float* %arrayidx100, align 8, !tbaa !7
  %587 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 11), align 4, !tbaa !7
  %588 = tail call float @llvm.fmuladd.f32(float %564, float %587, float %555)
  store float %588, float* %arrayidx103, align 4, !tbaa !7
  %589 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 12), align 4, !tbaa !7
  %590 = tail call float @llvm.fmuladd.f32(float %564, float %589, float %557)
  store float %590, float* %arrayidx106, align 16, !tbaa !7
  %591 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 13), align 4, !tbaa !7
  %592 = tail call float @llvm.fmuladd.f32(float %564, float %591, float %559)
  store float %592, float* %arrayidx109, align 4, !tbaa !7
  %593 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 14), align 4, !tbaa !7
  %594 = tail call float @llvm.fmuladd.f32(float %564, float %593, float %561)
  store float %594, float* %arrayidx112, align 8, !tbaa !7
  %595 = load float, float* getelementptr inbounds ([16 x [17 x float]], [16 x [17 x float]]* @A.t, i64 0, i64 15, i64 15), align 4, !tbaa !7
  %596 = tail call float @llvm.fmuladd.f32(float %564, float %595, float %563)
  store float %596, float* %arrayidx115, align 4, !tbaa !7
  %add.ptr938 = getelementptr inbounds float, float* %c.addr.0, i64 16
  %add939 = add nuw nsw i32 %r.0, 16
  tail call void @_Z7barrierj(i32 1) #7
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #6
  %cmp941 = icmp slt i32 %add939, %g
  br i1 %cmp941, label %do.body, label %for.cond945.preheader

for.cond945.preheader:                            ; preds = %do.body
  %idx.ext957 = sext i32 %f to i64
  %597 = load float, float* %add.ptr19, align 4, !tbaa !7
  %mul953 = fmul float %597, %i
  %598 = tail call float @llvm.fmuladd.f32(float %h, float %566, float %mul953)
  store float %598, float* %add.ptr19, align 4, !tbaa !7
  %add.ptr958 = getelementptr inbounds float, float* %add.ptr19, i64 %idx.ext957
  %599 = load float, float* %add.ptr958, align 4, !tbaa !7
  %mul953.1 = fmul float %599, %i
  %600 = tail call float @llvm.fmuladd.f32(float %h, float %568, float %mul953.1)
  store float %600, float* %add.ptr958, align 4, !tbaa !7
  %add.ptr958.1 = getelementptr inbounds float, float* %add.ptr958, i64 %idx.ext957
  %601 = load float, float* %add.ptr958.1, align 4, !tbaa !7
  %mul953.2 = fmul float %601, %i
  %602 = tail call float @llvm.fmuladd.f32(float %h, float %570, float %mul953.2)
  store float %602, float* %add.ptr958.1, align 4, !tbaa !7
  %add.ptr958.2 = getelementptr inbounds float, float* %add.ptr958.1, i64 %idx.ext957
  %603 = load float, float* %add.ptr958.2, align 4, !tbaa !7
  %mul953.3 = fmul float %603, %i
  %604 = tail call float @llvm.fmuladd.f32(float %h, float %572, float %mul953.3)
  store float %604, float* %add.ptr958.2, align 4, !tbaa !7
  %add.ptr958.3 = getelementptr inbounds float, float* %add.ptr958.2, i64 %idx.ext957
  %605 = load float, float* %add.ptr958.3, align 4, !tbaa !7
  %mul953.4 = fmul float %605, %i
  %606 = tail call float @llvm.fmuladd.f32(float %h, float %574, float %mul953.4)
  store float %606, float* %add.ptr958.3, align 4, !tbaa !7
  %add.ptr958.4 = getelementptr inbounds float, float* %add.ptr958.3, i64 %idx.ext957
  %607 = load float, float* %add.ptr958.4, align 4, !tbaa !7
  %mul953.5 = fmul float %607, %i
  %608 = tail call float @llvm.fmuladd.f32(float %h, float %576, float %mul953.5)
  store float %608, float* %add.ptr958.4, align 4, !tbaa !7
  %add.ptr958.5 = getelementptr inbounds float, float* %add.ptr958.4, i64 %idx.ext957
  %609 = load float, float* %add.ptr958.5, align 4, !tbaa !7
  %mul953.6 = fmul float %609, %i
  %610 = tail call float @llvm.fmuladd.f32(float %h, float %578, float %mul953.6)
  store float %610, float* %add.ptr958.5, align 4, !tbaa !7
  %add.ptr958.6 = getelementptr inbounds float, float* %add.ptr958.5, i64 %idx.ext957
  %611 = load float, float* %add.ptr958.6, align 4, !tbaa !7
  %mul953.7 = fmul float %611, %i
  %612 = tail call float @llvm.fmuladd.f32(float %h, float %580, float %mul953.7)
  store float %612, float* %add.ptr958.6, align 4, !tbaa !7
  %add.ptr958.7 = getelementptr inbounds float, float* %add.ptr958.6, i64 %idx.ext957
  %613 = load float, float* %add.ptr958.7, align 4, !tbaa !7
  %mul953.8 = fmul float %613, %i
  %614 = tail call float @llvm.fmuladd.f32(float %h, float %582, float %mul953.8)
  store float %614, float* %add.ptr958.7, align 4, !tbaa !7
  %add.ptr958.8 = getelementptr inbounds float, float* %add.ptr958.7, i64 %idx.ext957
  %615 = load float, float* %add.ptr958.8, align 4, !tbaa !7
  %mul953.9 = fmul float %615, %i
  %616 = tail call float @llvm.fmuladd.f32(float %h, float %584, float %mul953.9)
  store float %616, float* %add.ptr958.8, align 4, !tbaa !7
  %add.ptr958.9 = getelementptr inbounds float, float* %add.ptr958.8, i64 %idx.ext957
  %617 = load float, float* %add.ptr958.9, align 4, !tbaa !7
  %mul953.10 = fmul float %617, %i
  %618 = tail call float @llvm.fmuladd.f32(float %h, float %586, float %mul953.10)
  store float %618, float* %add.ptr958.9, align 4, !tbaa !7
  %add.ptr958.10 = getelementptr inbounds float, float* %add.ptr958.9, i64 %idx.ext957
  %619 = load float, float* %add.ptr958.10, align 4, !tbaa !7
  %mul953.11 = fmul float %619, %i
  %620 = tail call float @llvm.fmuladd.f32(float %h, float %588, float %mul953.11)
  store float %620, float* %add.ptr958.10, align 4, !tbaa !7
  %add.ptr958.11 = getelementptr inbounds float, float* %add.ptr958.10, i64 %idx.ext957
  %621 = load float, float* %add.ptr958.11, align 4, !tbaa !7
  %mul953.12 = fmul float %621, %i
  %622 = tail call float @llvm.fmuladd.f32(float %h, float %590, float %mul953.12)
  store float %622, float* %add.ptr958.11, align 4, !tbaa !7
  %add.ptr958.12 = getelementptr inbounds float, float* %add.ptr958.11, i64 %idx.ext957
  %623 = load float, float* %arrayidx109, align 4, !tbaa !7
  %624 = load float, float* %add.ptr958.12, align 4, !tbaa !7
  %mul953.13 = fmul float %624, %i
  %625 = tail call float @llvm.fmuladd.f32(float %h, float %623, float %mul953.13)
  store float %625, float* %add.ptr958.12, align 4, !tbaa !7
  %add.ptr958.13 = getelementptr inbounds float, float* %add.ptr958.12, i64 %idx.ext957
  %626 = load float, float* %arrayidx112, align 8, !tbaa !7
  %627 = load float, float* %add.ptr958.13, align 4, !tbaa !7
  %mul953.14 = fmul float %627, %i
  %628 = tail call float @llvm.fmuladd.f32(float %h, float %626, float %mul953.14)
  store float %628, float* %add.ptr958.13, align 4, !tbaa !7
  %add.ptr958.14 = getelementptr inbounds float, float* %add.ptr958.13, i64 %idx.ext957
  %629 = load float, float* %arrayidx115, align 4, !tbaa !7
  %630 = load float, float* %add.ptr958.14, align 4, !tbaa !7
  %mul953.15 = fmul float %630, %i
  %631 = tail call float @llvm.fmuladd.f32(float %h, float %629, float %mul953.15)
  store float %631, float* %add.ptr958.14, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6
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
