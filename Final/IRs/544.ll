; ModuleID = 'src/544.src'
source_filename = "src/544.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A.o = internal unnamed_addr global [48 x [40 x float]] undef, align 16

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture %a, float* nocapture readonly %b, float* nocapture readonly %c, i32 %d, i32 %e, i32 %f, i32 %g) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %t = alloca [16 x float], align 16
  %0 = bitcast [16 x float]* %t to i8*
  %u = alloca [16 x float], align 16
  %call = tail call i64 @_Z13get_global_idj(i32 0) #5
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #5
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @_Z12get_local_idj(i32 0) #5
  %call5 = tail call i64 @_Z12get_local_idj(i32 1) #5
  %call7 = tail call i64 @_Z14get_local_sizej(i32 0) #5
  %call9 = tail call i64 @_Z14get_local_sizej(i32 1) #5
  %add = add i32 %d, 32
  %mul12 = shl nsw i32 %add, 4
  %mul16 = mul nsw i32 %add, %conv2
  %add17 = add i32 %mul12, 16
  %add13 = add i32 %add17, %g
  %add14 = add i32 %add13, %conv
  %add18 = add i32 %add14, %mul16
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6
  %1 = bitcast [16 x float]* %u to i8*
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %1) #6
  %cmp22 = icmp slt i32 %conv2, %e
  %idxprom298 = sext i32 %add18 to i64
  %arrayidx299 = getelementptr inbounds float, float* %b, i64 %idxprom298
  %2 = add i32 %e, 32
  %3 = mul i32 %2, %add
  %4 = sext i32 %3 to i64
  %5 = bitcast float* %arrayidx299 to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !7
  %arrayidx29 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 14
  %7 = bitcast float* %arrayidx29 to i32*
  store i32 %6, i32* %7, align 8, !tbaa !7
  %indvars.iv.next326 = add nsw i64 %idxprom298, %4
  %arrayidx = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326
  %8 = bitcast float* %arrayidx to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !7
  %arrayidx29.1 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 13
  %10 = bitcast float* %arrayidx29.1 to i32*
  store i32 %9, i32* %10, align 4, !tbaa !7
  %indvars.iv.next326.1 = add nsw i64 %indvars.iv.next326, %4
  %arrayidx.1 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326.1
  %11 = bitcast float* %arrayidx.1 to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !7
  %arrayidx29.2 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 12
  %13 = bitcast float* %arrayidx29.2 to i32*
  store i32 %12, i32* %13, align 16, !tbaa !7
  %indvars.iv.next326.2 = add nsw i64 %indvars.iv.next326.1, %4
  %arrayidx.2 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326.2
  %14 = bitcast float* %arrayidx.2 to i32*
  %15 = load i32, i32* %14, align 4, !tbaa !7
  %arrayidx29.3 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 11
  %16 = bitcast float* %arrayidx29.3 to i32*
  store i32 %15, i32* %16, align 4, !tbaa !7
  %indvars.iv.next326.3 = add nsw i64 %indvars.iv.next326.2, %4
  %arrayidx.3 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326.3
  %17 = bitcast float* %arrayidx.3 to i32*
  %18 = load i32, i32* %17, align 4, !tbaa !7
  %arrayidx29.4 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 10
  %19 = bitcast float* %arrayidx29.4 to i32*
  store i32 %18, i32* %19, align 8, !tbaa !7
  %indvars.iv.next326.4 = add nsw i64 %indvars.iv.next326.3, %4
  %arrayidx.4 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326.4
  %20 = bitcast float* %arrayidx.4 to i32*
  %21 = load i32, i32* %20, align 4, !tbaa !7
  %arrayidx29.5 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 9
  %22 = bitcast float* %arrayidx29.5 to i32*
  store i32 %21, i32* %22, align 4, !tbaa !7
  %indvars.iv.next326.5 = add nsw i64 %indvars.iv.next326.4, %4
  %arrayidx.5 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326.5
  %23 = bitcast float* %arrayidx.5 to i32*
  %24 = load i32, i32* %23, align 4, !tbaa !7
  %arrayidx29.6 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 8
  %25 = bitcast float* %arrayidx29.6 to i32*
  store i32 %24, i32* %25, align 16, !tbaa !7
  %indvars.iv.next326.6 = add nsw i64 %indvars.iv.next326.5, %4
  %arrayidx.6 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326.6
  %26 = bitcast float* %arrayidx.6 to i32*
  %27 = load i32, i32* %26, align 4, !tbaa !7
  %arrayidx29.7 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 7
  %28 = bitcast float* %arrayidx29.7 to i32*
  store i32 %27, i32* %28, align 4, !tbaa !7
  %indvars.iv.next326.7 = add nsw i64 %indvars.iv.next326.6, %4
  %arrayidx.7 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326.7
  %29 = bitcast float* %arrayidx.7 to i32*
  %30 = load i32, i32* %29, align 4, !tbaa !7
  %arrayidx29.8 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 6
  %31 = bitcast float* %arrayidx29.8 to i32*
  store i32 %30, i32* %31, align 8, !tbaa !7
  %indvars.iv.next326.8 = add nsw i64 %indvars.iv.next326.7, %4
  %arrayidx.8 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326.8
  %32 = bitcast float* %arrayidx.8 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !7
  %arrayidx29.9 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 5
  %34 = bitcast float* %arrayidx29.9 to i32*
  store i32 %33, i32* %34, align 4, !tbaa !7
  %indvars.iv.next326.9 = add nsw i64 %indvars.iv.next326.8, %4
  %arrayidx.9 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326.9
  %35 = bitcast float* %arrayidx.9 to i32*
  %36 = load i32, i32* %35, align 4, !tbaa !7
  %arrayidx29.10 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 4
  %37 = bitcast float* %arrayidx29.10 to i32*
  store i32 %36, i32* %37, align 16, !tbaa !7
  %indvars.iv.next326.10 = add nsw i64 %indvars.iv.next326.9, %4
  %arrayidx.10 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326.10
  %38 = bitcast float* %arrayidx.10 to i32*
  %39 = load i32, i32* %38, align 4, !tbaa !7
  %arrayidx29.11 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 3
  %40 = bitcast float* %arrayidx29.11 to i32*
  store i32 %39, i32* %40, align 4, !tbaa !7
  %indvars.iv.next326.11 = add nsw i64 %indvars.iv.next326.10, %4
  %arrayidx.11 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326.11
  %41 = bitcast float* %arrayidx.11 to i32*
  %42 = load i32, i32* %41, align 4, !tbaa !7
  %arrayidx29.12 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 2
  %43 = bitcast float* %arrayidx29.12 to i32*
  store i32 %42, i32* %43, align 8, !tbaa !7
  %indvars.iv.next326.12 = add nsw i64 %indvars.iv.next326.11, %4
  %arrayidx.12 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326.12
  %44 = bitcast float* %arrayidx.12 to i32*
  %45 = load i32, i32* %44, align 4, !tbaa !7
  %arrayidx29.13 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 1
  %46 = bitcast float* %arrayidx29.13 to i32*
  store i32 %45, i32* %46, align 4, !tbaa !7
  %indvars.iv.next326.13 = add nsw i64 %indvars.iv.next326.12, %4
  %arrayidx.13 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326.13
  %47 = bitcast float* %arrayidx.13 to i32*
  %48 = load i32, i32* %47, align 4, !tbaa !7
  %arrayidx29.14 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 0
  %49 = bitcast [16 x float]* %u to i32*
  store i32 %48, i32* %49, align 16, !tbaa !7
  %indvars.iv.next326.14 = add nsw i64 %indvars.iv.next326.13, %4
  %arrayidx.14 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next326.14
  %cmp = icmp slt i32 %conv, %d
  %h.1 = and i1 %cmp, %cmp22
  %50 = trunc i64 %indvars.iv.next326.14 to i32
  %51 = load float, float* %arrayidx.14, align 4, !tbaa !7
  %52 = add i32 %3, %50
  %53 = sext i32 %52 to i64
  %arrayidx41 = getelementptr inbounds float, float* %b, i64 %53
  %54 = bitcast float* %arrayidx41 to i32*
  %55 = load i32, i32* %54, align 4, !tbaa !7
  %56 = bitcast [16 x float]* %t to i32*
  store i32 %55, i32* %56, align 16, !tbaa !7
  %indvars.iv.next319 = add nsw i64 %53, %4
  %arrayidx41.1 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319
  %57 = bitcast float* %arrayidx41.1 to i32*
  %58 = load i32, i32* %57, align 4, !tbaa !7
  %arrayidx43.1 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 1
  %59 = bitcast float* %arrayidx43.1 to i32*
  store i32 %58, i32* %59, align 4, !tbaa !7
  %indvars.iv.next319.1 = add nsw i64 %indvars.iv.next319, %4
  %arrayidx41.2 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319.1
  %60 = bitcast float* %arrayidx41.2 to i32*
  %61 = load i32, i32* %60, align 4, !tbaa !7
  %arrayidx43.2 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 2
  %62 = bitcast float* %arrayidx43.2 to i32*
  store i32 %61, i32* %62, align 8, !tbaa !7
  %indvars.iv.next319.2 = add nsw i64 %indvars.iv.next319.1, %4
  %arrayidx41.3 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319.2
  %63 = bitcast float* %arrayidx41.3 to i32*
  %64 = load i32, i32* %63, align 4, !tbaa !7
  %arrayidx43.3 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 3
  %65 = bitcast float* %arrayidx43.3 to i32*
  store i32 %64, i32* %65, align 4, !tbaa !7
  %indvars.iv.next319.3 = add nsw i64 %indvars.iv.next319.2, %4
  %arrayidx41.4 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319.3
  %66 = bitcast float* %arrayidx41.4 to i32*
  %67 = load i32, i32* %66, align 4, !tbaa !7
  %arrayidx43.4 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 4
  %68 = bitcast float* %arrayidx43.4 to i32*
  store i32 %67, i32* %68, align 16, !tbaa !7
  %indvars.iv.next319.4 = add nsw i64 %indvars.iv.next319.3, %4
  %arrayidx41.5 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319.4
  %69 = bitcast float* %arrayidx41.5 to i32*
  %70 = load i32, i32* %69, align 4, !tbaa !7
  %arrayidx43.5 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 5
  %71 = bitcast float* %arrayidx43.5 to i32*
  store i32 %70, i32* %71, align 4, !tbaa !7
  %indvars.iv.next319.5 = add nsw i64 %indvars.iv.next319.4, %4
  %arrayidx41.6 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319.5
  %72 = bitcast float* %arrayidx41.6 to i32*
  %73 = load i32, i32* %72, align 4, !tbaa !7
  %arrayidx43.6 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 6
  %74 = bitcast float* %arrayidx43.6 to i32*
  store i32 %73, i32* %74, align 8, !tbaa !7
  %indvars.iv.next319.6 = add nsw i64 %indvars.iv.next319.5, %4
  %arrayidx41.7 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319.6
  %75 = bitcast float* %arrayidx41.7 to i32*
  %76 = load i32, i32* %75, align 4, !tbaa !7
  %arrayidx43.7 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 7
  %77 = bitcast float* %arrayidx43.7 to i32*
  store i32 %76, i32* %77, align 4, !tbaa !7
  %indvars.iv.next319.7 = add nsw i64 %indvars.iv.next319.6, %4
  %arrayidx41.8 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319.7
  %78 = bitcast float* %arrayidx41.8 to i32*
  %79 = load i32, i32* %78, align 4, !tbaa !7
  %arrayidx43.8 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 8
  %80 = bitcast float* %arrayidx43.8 to i32*
  store i32 %79, i32* %80, align 16, !tbaa !7
  %indvars.iv.next319.8 = add nsw i64 %indvars.iv.next319.7, %4
  %arrayidx41.9 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319.8
  %81 = bitcast float* %arrayidx41.9 to i32*
  %82 = load i32, i32* %81, align 4, !tbaa !7
  %arrayidx43.9 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 9
  %83 = bitcast float* %arrayidx43.9 to i32*
  store i32 %82, i32* %83, align 4, !tbaa !7
  %indvars.iv.next319.9 = add nsw i64 %indvars.iv.next319.8, %4
  %arrayidx41.10 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319.9
  %84 = bitcast float* %arrayidx41.10 to i32*
  %85 = load i32, i32* %84, align 4, !tbaa !7
  %arrayidx43.10 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 10
  %86 = bitcast float* %arrayidx43.10 to i32*
  store i32 %85, i32* %86, align 8, !tbaa !7
  %indvars.iv.next319.10 = add nsw i64 %indvars.iv.next319.9, %4
  %arrayidx41.11 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319.10
  %87 = bitcast float* %arrayidx41.11 to i32*
  %88 = load i32, i32* %87, align 4, !tbaa !7
  %arrayidx43.11 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 11
  %89 = bitcast float* %arrayidx43.11 to i32*
  store i32 %88, i32* %89, align 4, !tbaa !7
  %indvars.iv.next319.11 = add nsw i64 %indvars.iv.next319.10, %4
  %arrayidx41.12 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319.11
  %90 = bitcast float* %arrayidx41.12 to i32*
  %91 = load i32, i32* %90, align 4, !tbaa !7
  %arrayidx43.12 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 12
  %92 = bitcast float* %arrayidx43.12 to i32*
  store i32 %91, i32* %92, align 16, !tbaa !7
  %indvars.iv.next319.12 = add nsw i64 %indvars.iv.next319.11, %4
  %arrayidx41.13 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319.12
  %93 = bitcast float* %arrayidx41.13 to i32*
  %94 = load i32, i32* %93, align 4, !tbaa !7
  %arrayidx43.13 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 13
  %95 = bitcast float* %arrayidx43.13 to i32*
  store i32 %94, i32* %95, align 4, !tbaa !7
  %indvars.iv.next319.13 = add nsw i64 %indvars.iv.next319.12, %4
  %arrayidx41.14 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319.13
  %96 = bitcast float* %arrayidx41.14 to i32*
  %97 = load i32, i32* %96, align 4, !tbaa !7
  %arrayidx43.14 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 14
  %98 = bitcast float* %arrayidx43.14 to i32*
  store i32 %97, i32* %98, align 8, !tbaa !7
  %indvars.iv.next319.14 = add nsw i64 %indvars.iv.next319.13, %4
  %arrayidx41.15 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next319.14
  %99 = bitcast float* %arrayidx41.15 to i32*
  %100 = load i32, i32* %99, align 4, !tbaa !7
  %arrayidx43.15 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 15
  %101 = bitcast float* %arrayidx43.15 to i32*
  store i32 %100, i32* %101, align 4, !tbaa !7
  %cmp48290 = icmp sgt i32 %f, 0
  br i1 %cmp48290, label %for.cond53.preheader.lr.ph, label %for.cond.cleanup50

for.cond53.preheader.lr.ph:                       ; preds = %entry
  %conv6 = trunc i64 %call5 to i32
  %conv4 = trunc i64 %call3 to i32
  %102 = trunc i64 %indvars.iv.next319.14 to i32
  %103 = add i32 %3, %102
  %arrayidx43 = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 0
  %conv10 = trunc i64 %call9 to i32
  %cmp86 = icmp slt i32 %conv6, 16
  %sext282 = shl i64 %call5, 32
  %idxprom93 = ashr exact i64 %sext282, 32
  %add19 = shl i64 %call3, 32
  %sext344 = add i64 %add19, 68719476736
  %idxprom95 = ashr exact i64 %sext344, 32
  %arrayidx96 = getelementptr inbounds [48 x [40 x float]], [48 x [40 x float]]* @A.o, i64 0, i64 %idxprom93, i64 %idxprom95
  %104 = bitcast float* %arrayidx96 to i32*
  %mul97 = mul nsw i32 %add, %conv10
  %add101 = add i64 %call9, %call5
  %add102 = shl i64 %add101, 32
  %sext283 = add i64 %add102, 68719476736
  %idxprom103 = ashr exact i64 %sext283, 32
  %arrayidx106 = getelementptr inbounds [48 x [40 x float]], [48 x [40 x float]]* @A.o, i64 0, i64 %idxprom103, i64 %idxprom95
  %105 = bitcast float* %arrayidx106 to i32*
  %cmp108 = icmp slt i32 %conv4, 16
  %add20 = shl i64 %call5, 32
  %sext345 = add i64 %add20, 68719476736
  %idxprom114 = ashr exact i64 %sext345, 32
  %sext = shl i64 %call3, 32
  %idxprom116 = ashr exact i64 %sext, 32
  %arrayidx117 = getelementptr inbounds [48 x [40 x float]], [48 x [40 x float]]* @A.o, i64 0, i64 %idxprom114, i64 %idxprom116
  %106 = bitcast float* %arrayidx117 to i32*
  %add123 = add i64 %call7, %call3
  %add124 = shl i64 %add123, 32
  %sext281 = add i64 %add124, 68719476736
  %idxprom125 = ashr exact i64 %sext281, 32
  %arrayidx126 = getelementptr inbounds [48 x [40 x float]], [48 x [40 x float]]* @A.o, i64 0, i64 %idxprom114, i64 %idxprom125
  %107 = bitcast float* %arrayidx126 to i32*
  %arrayidx131 = getelementptr inbounds [48 x [40 x float]], [48 x [40 x float]]* @A.o, i64 0, i64 %idxprom114, i64 %idxprom95
  %108 = sext i32 %103 to i64
  %sext346 = shl i64 %indvars.iv.next326.14, 32
  %109 = ashr exact i64 %sext346, 32
  %110 = sext i32 %mul12 to i64
  %111 = sext i32 %mul97 to i64
  %sext347 = shl i64 %call7, 32
  %112 = ashr exact i64 %sext347, 32
  %.pre = load float, float* %arrayidx43, align 16, !tbaa !7
  %.pre327 = load i32, i32* %59, align 4, !tbaa !7
  %.pre330 = load i32, i32* %7, align 8, !tbaa !7
  %.pre331 = load i32, i32* %10, align 4, !tbaa !7
  %.pre332 = load i32, i32* %13, align 16, !tbaa !7
  %.pre333 = load i32, i32* %16, align 4, !tbaa !7
  %.pre334 = load i32, i32* %19, align 8, !tbaa !7
  %.pre335 = load i32, i32* %22, align 4, !tbaa !7
  %.pre336 = load i32, i32* %25, align 16, !tbaa !7
  %.pre337 = load i32, i32* %28, align 4, !tbaa !7
  %.pre338 = load i32, i32* %31, align 8, !tbaa !7
  %.pre339 = load i32, i32* %34, align 4, !tbaa !7
  %.pre340 = load i32, i32* %37, align 16, !tbaa !7
  %.pre341 = load i32, i32* %40, align 4, !tbaa !7
  %.pre342 = load i32, i32* %43, align 8, !tbaa !7
  %.pre343 = load i32, i32* %46, align 4, !tbaa !7
  %arrayidx61 = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 15
  %113 = bitcast float* %arrayidx61 to i32*
  br label %for.cond53.preheader

for.cond53.preheader:                             ; preds = %if.end180, %for.cond53.preheader.lr.ph
  %114 = phi i32 [ %.pre343, %for.cond53.preheader.lr.ph ], [ %144, %if.end180 ]
  %115 = phi i32 [ %.pre342, %for.cond53.preheader.lr.ph ], [ %114, %if.end180 ]
  %116 = phi i32 [ %.pre341, %for.cond53.preheader.lr.ph ], [ %115, %if.end180 ]
  %117 = phi i32 [ %.pre340, %for.cond53.preheader.lr.ph ], [ %116, %if.end180 ]
  %118 = phi i32 [ %.pre339, %for.cond53.preheader.lr.ph ], [ %117, %if.end180 ]
  %119 = phi i32 [ %.pre338, %for.cond53.preheader.lr.ph ], [ %118, %if.end180 ]
  %120 = phi i32 [ %.pre337, %for.cond53.preheader.lr.ph ], [ %119, %if.end180 ]
  %121 = phi i32 [ %.pre336, %for.cond53.preheader.lr.ph ], [ %120, %if.end180 ]
  %122 = phi i32 [ %.pre335, %for.cond53.preheader.lr.ph ], [ %121, %if.end180 ]
  %123 = phi i32 [ %.pre334, %for.cond53.preheader.lr.ph ], [ %122, %if.end180 ]
  %124 = phi i32 [ %.pre333, %for.cond53.preheader.lr.ph ], [ %123, %if.end180 ]
  %125 = phi i32 [ %.pre332, %for.cond53.preheader.lr.ph ], [ %124, %if.end180 ]
  %126 = phi i32 [ %.pre331, %for.cond53.preheader.lr.ph ], [ %125, %if.end180 ]
  %127 = phi i32 [ %.pre330, %for.cond53.preheader.lr.ph ], [ %126, %if.end180 ]
  %128 = phi i32 [ %100, %for.cond53.preheader.lr.ph ], [ %146, %if.end180 ]
  %129 = phi i32 [ %97, %for.cond53.preheader.lr.ph ], [ %128, %if.end180 ]
  %130 = phi i32 [ %94, %for.cond53.preheader.lr.ph ], [ %129, %if.end180 ]
  %131 = phi i32 [ %91, %for.cond53.preheader.lr.ph ], [ %130, %if.end180 ]
  %132 = phi i32 [ %88, %for.cond53.preheader.lr.ph ], [ %131, %if.end180 ]
  %133 = phi i32 [ %85, %for.cond53.preheader.lr.ph ], [ %132, %if.end180 ]
  %134 = phi i32 [ %82, %for.cond53.preheader.lr.ph ], [ %133, %if.end180 ]
  %135 = phi i32 [ %79, %for.cond53.preheader.lr.ph ], [ %134, %if.end180 ]
  %136 = phi i32 [ %76, %for.cond53.preheader.lr.ph ], [ %135, %if.end180 ]
  %137 = phi i32 [ %73, %for.cond53.preheader.lr.ph ], [ %136, %if.end180 ]
  %138 = phi i32 [ %70, %for.cond53.preheader.lr.ph ], [ %137, %if.end180 ]
  %139 = phi i32 [ %67, %for.cond53.preheader.lr.ph ], [ %138, %if.end180 ]
  %140 = phi i32 [ %64, %for.cond53.preheader.lr.ph ], [ %139, %if.end180 ]
  %141 = phi i32 [ %61, %for.cond53.preheader.lr.ph ], [ %140, %if.end180 ]
  %142 = phi i32 [ %.pre327, %for.cond53.preheader.lr.ph ], [ %141, %if.end180 ]
  %143 = phi float [ %.pre, %for.cond53.preheader.lr.ph ], [ %147, %if.end180 ]
  %indvars.iv311 = phi i64 [ %109, %for.cond53.preheader.lr.ph ], [ %indvars.iv.next312, %if.end180 ]
  %indvars.iv309 = phi i64 [ %108, %for.cond53.preheader.lr.ph ], [ %indvars.iv.next310, %if.end180 ]
  %z.0294 = phi i32 [ 0, %for.cond53.preheader.lr.ph ], [ %inc182, %if.end180 ]
  %v.0292 = phi float [ %51, %for.cond53.preheader.lr.ph ], [ %143, %if.end180 ]
  store i32 %127, i32* %113, align 4, !tbaa !7
  store i32 %126, i32* %7, align 8, !tbaa !7
  store i32 %125, i32* %10, align 4, !tbaa !7
  store i32 %124, i32* %13, align 16, !tbaa !7
  store i32 %123, i32* %16, align 4, !tbaa !7
  store i32 %122, i32* %19, align 8, !tbaa !7
  store i32 %121, i32* %22, align 4, !tbaa !7
  store i32 %120, i32* %25, align 16, !tbaa !7
  store i32 %119, i32* %28, align 4, !tbaa !7
  store i32 %118, i32* %31, align 8, !tbaa !7
  store i32 %117, i32* %34, align 4, !tbaa !7
  store i32 %116, i32* %37, align 16, !tbaa !7
  store i32 %115, i32* %40, align 4, !tbaa !7
  store i32 %114, i32* %43, align 8, !tbaa !7
  %144 = load i32, i32* %49, align 16, !tbaa !7
  store i32 %144, i32* %46, align 4, !tbaa !7
  store float %v.0292, float* %arrayidx29.14, align 16, !tbaa !7
  store i32 %142, i32* %56, align 16, !tbaa !7
  store i32 %141, i32* %59, align 4, !tbaa !7
  store i32 %140, i32* %62, align 8, !tbaa !7
  store i32 %139, i32* %65, align 4, !tbaa !7
  store i32 %138, i32* %68, align 16, !tbaa !7
  store i32 %137, i32* %71, align 4, !tbaa !7
  store i32 %136, i32* %74, align 8, !tbaa !7
  store i32 %135, i32* %77, align 4, !tbaa !7
  store i32 %134, i32* %80, align 16, !tbaa !7
  store i32 %133, i32* %83, align 4, !tbaa !7
  store i32 %132, i32* %86, align 8, !tbaa !7
  store i32 %131, i32* %89, align 4, !tbaa !7
  store i32 %130, i32* %92, align 16, !tbaa !7
  store i32 %129, i32* %95, align 4, !tbaa !7
  store i32 %128, i32* %98, align 8, !tbaa !7
  %arrayidx82 = getelementptr inbounds float, float* %b, i64 %indvars.iv309
  %145 = bitcast float* %arrayidx82 to i32*
  %146 = load i32, i32* %145, align 4, !tbaa !7
  store i32 %146, i32* %101, align 4, !tbaa !7
  %indvars.iv.next310 = add i64 %indvars.iv309, %4
  %indvars.iv.next312 = add i64 %indvars.iv311, %4
  tail call void @_Z7barrierj(i32 1) #7
  %147 = bitcast i32 %142 to float
  br i1 %cmp86, label %if.then88, label %if.end107

for.cond.cleanup50:                               ; preds = %if.end180, %entry
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %1) #6
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6
  ret void

if.then88:                                        ; preds = %for.cond53.preheader
  %148 = sub nsw i64 %indvars.iv.next312, %110
  %arrayidx92 = getelementptr inbounds float, float* %b, i64 %148
  %149 = bitcast float* %arrayidx92 to i32*
  %150 = load i32, i32* %149, align 4, !tbaa !7
  store i32 %150, i32* %104, align 4, !tbaa !7
  %151 = add nsw i64 %indvars.iv.next312, %111
  %arrayidx100 = getelementptr inbounds float, float* %b, i64 %151
  %152 = bitcast float* %arrayidx100 to i32*
  %153 = load i32, i32* %152, align 4, !tbaa !7
  store i32 %153, i32* %105, align 4, !tbaa !7
  br label %if.end107

if.end107:                                        ; preds = %if.then88, %for.cond53.preheader
  br i1 %cmp108, label %if.then110, label %if.end127

if.then110:                                       ; preds = %if.end107
  %154 = add nsw i64 %indvars.iv.next312, -16
  %arrayidx113 = getelementptr inbounds float, float* %b, i64 %154
  %155 = bitcast float* %arrayidx113 to i32*
  %156 = load i32, i32* %155, align 4, !tbaa !7
  store i32 %156, i32* %106, align 4, !tbaa !7
  %157 = add nsw i64 %indvars.iv.next312, %112
  %arrayidx120 = getelementptr inbounds float, float* %b, i64 %157
  %158 = bitcast float* %arrayidx120 to i32*
  %159 = load i32, i32* %158, align 4, !tbaa !7
  store i32 %159, i32* %107, align 4, !tbaa !7
  br label %if.end127

if.end127:                                        ; preds = %if.then110, %if.end107
  store float %143, float* %arrayidx131, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #7
  %160 = load float, float* %c, align 4, !tbaa !7
  %mul133 = fmul float %143, %160
  br label %for.body139

for.cond.cleanup138:                              ; preds = %for.body139
  br i1 %h.1, label %if.then177, label %if.end180

for.body139:                                      ; preds = %for.body139.for.body139_crit_edge, %if.end127
  %161 = phi float [ %v.0292, %if.end127 ], [ %.pre329, %for.body139.for.body139_crit_edge ]
  %162 = phi float [ %147, %if.end127 ], [ %.pre328, %for.body139.for.body139_crit_edge ]
  %indvars.iv = phi i64 [ 1, %if.end127 ], [ %indvars.iv.next, %for.body139.for.body139_crit_edge ]
  %aa.0288 = phi float [ %mul133, %if.end127 ], [ %172, %for.body139.for.body139_crit_edge ]
  %arrayidx141 = getelementptr inbounds float, float* %c, i64 %indvars.iv
  %163 = load float, float* %arrayidx141, align 4, !tbaa !7
  %add148 = fadd float %162, %161
  %164 = sub nsw i64 %idxprom114, %indvars.iv
  %arrayidx153 = getelementptr inbounds [48 x [40 x float]], [48 x [40 x float]]* @A.o, i64 0, i64 %164, i64 %idxprom95
  %165 = load float, float* %arrayidx153, align 4, !tbaa !7
  %add154 = fadd float %add148, %165
  %166 = add nsw i64 %indvars.iv, %idxprom114
  %arrayidx159 = getelementptr inbounds [48 x [40 x float]], [48 x [40 x float]]* @A.o, i64 0, i64 %166, i64 %idxprom95
  %167 = load float, float* %arrayidx159, align 4, !tbaa !7
  %add160 = fadd float %add154, %167
  %168 = sub nsw i64 %idxprom95, %indvars.iv
  %arrayidx165 = getelementptr inbounds [48 x [40 x float]], [48 x [40 x float]]* @A.o, i64 0, i64 %idxprom114, i64 %168
  %169 = load float, float* %arrayidx165, align 4, !tbaa !7
  %add166 = fadd float %add160, %169
  %170 = add nsw i64 %indvars.iv, %idxprom95
  %arrayidx171 = getelementptr inbounds [48 x [40 x float]], [48 x [40 x float]]* @A.o, i64 0, i64 %idxprom114, i64 %170
  %171 = load float, float* %arrayidx171, align 4, !tbaa !7
  %add172 = fadd float %add166, %171
  %172 = tail call float @llvm.fmuladd.f32(float %163, float %add172, float %aa.0288)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 17
  br i1 %exitcond, label %for.cond.cleanup138, label %for.body139.for.body139_crit_edge

for.body139.for.body139_crit_edge:                ; preds = %for.body139
  %arrayidx144.phi.trans.insert = getelementptr inbounds [16 x float], [16 x float]* %t, i64 0, i64 %indvars.iv
  %.pre328 = load float, float* %arrayidx144.phi.trans.insert, align 4, !tbaa !7
  %arrayidx147.phi.trans.insert = getelementptr inbounds [16 x float], [16 x float]* %u, i64 0, i64 %indvars.iv
  %.pre329 = load float, float* %arrayidx147.phi.trans.insert, align 4, !tbaa !7
  br label %for.body139

if.then177:                                       ; preds = %for.cond.cleanup138
  %arrayidx179 = getelementptr inbounds float, float* %a, i64 %indvars.iv.next312
  store float %172, float* %arrayidx179, align 4, !tbaa !7
  br label %if.end180

if.end180:                                        ; preds = %if.then177, %for.cond.cleanup138
  %inc182 = add nuw nsw i32 %z.0294, 1
  %exitcond317 = icmp eq i32 %inc182, %f
  br i1 %exitcond317, label %for.cond.cleanup50, label %for.cond53.preheader
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_local_sizej(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #4

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
!3 = !{i32 1, i32 1, i32 2, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"int", !"int", !"int", !"int"}
!6 = !{!"", !"const", !"const", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
