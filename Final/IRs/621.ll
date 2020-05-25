; ModuleID = 'src/621.src'
source_filename = "src/621.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture %a, float* nocapture %b, float* nocapture %c, float* nocapture %d, i32 %e, i32 %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z12get_group_idj(i32 0) #4
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %conv2 = trunc i64 %call1 to i32
  %cmp = icmp slt i32 %conv2, 64
  %sext397 = shl i64 %call1, 32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = ashr exact i64 %sext397, 32
  %1 = add i32 %e, 1
  %2 = mul i32 %1, %f
  %3 = sext i32 %2 to i64
  %4 = sext i32 %e to i64
  br label %for.body

for.cond14.preheader:                             ; preds = %for.body
  %add18 = shl i32 %conv, 6
  %mul19 = add i32 %conv2, 64
  %add20 = add i32 %mul19, %add18
  br label %for.body17

for.body:                                         ; preds = %for.body, %if.then
  %indvars.iv372 = phi i64 [ %3, %if.then ], [ %indvars.iv.next373.1, %for.body ]
  %indvars.iv368 = phi i64 [ 0, %if.then ], [ %indvars.iv.next369.1, %for.body ]
  %5 = add nsw i64 %indvars.iv372, %0
  %arrayidx = getelementptr inbounds float, float* %a, i64 %5
  %6 = bitcast float* %arrayidx to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !7
  %8 = shl nuw nsw i64 %indvars.iv368, 6
  %9 = add nsw i64 %8, %0
  %arrayidx10 = getelementptr inbounds float, float* %b, i64 %9
  %10 = bitcast float* %arrayidx10 to i32*
  store i32 %7, i32* %10, align 4, !tbaa !7
  %indvars.iv.next373 = add nsw i64 %indvars.iv372, %4
  %11 = add nsw i64 %indvars.iv.next373, %0
  %arrayidx.1 = getelementptr inbounds float, float* %a, i64 %11
  %12 = bitcast float* %arrayidx.1 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !7
  %indvars.iv.next369 = shl i64 %indvars.iv368, 6
  %14 = or i64 %indvars.iv.next369, 64
  %15 = add nsw i64 %14, %0
  %arrayidx10.1 = getelementptr inbounds float, float* %b, i64 %15
  %16 = bitcast float* %arrayidx10.1 to i32*
  store i32 %13, i32* %16, align 4, !tbaa !7
  %indvars.iv.next373.1 = add nsw i64 %indvars.iv.next373, %4
  %indvars.iv.next369.1 = add nuw nsw i64 %indvars.iv368, 2
  %exitcond375.1 = icmp eq i64 %indvars.iv.next369.1, 32
  br i1 %exitcond375.1, label %for.cond14.preheader, label %for.body

for.body17:                                       ; preds = %for.body17, %for.cond14.preheader
  %indvars.iv365 = phi i64 [ %3, %for.cond14.preheader ], [ %indvars.iv.next366.1, %for.body17 ]
  %indvars.iv361 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next362.1, %for.body17 ]
  %17 = trunc i64 %indvars.iv365 to i32
  %add21 = add i32 %add20, %17
  %idxprom22 = sext i32 %add21 to i64
  %arrayidx23 = getelementptr inbounds float, float* %a, i64 %idxprom22
  %18 = bitcast float* %arrayidx23 to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !7
  %20 = shl nuw nsw i64 %indvars.iv361, 6
  %21 = add nsw i64 %20, %0
  %arrayidx27 = getelementptr inbounds float, float* %c, i64 %21
  %22 = bitcast float* %arrayidx27 to i32*
  store i32 %19, i32* %22, align 4, !tbaa !7
  %indvars.iv.next366 = add nsw i64 %indvars.iv365, %4
  %23 = trunc i64 %indvars.iv.next366 to i32
  %add21.1 = add i32 %add20, %23
  %idxprom22.1 = sext i32 %add21.1 to i64
  %arrayidx23.1 = getelementptr inbounds float, float* %a, i64 %idxprom22.1
  %24 = bitcast float* %arrayidx23.1 to i32*
  %25 = load i32, i32* %24, align 4, !tbaa !7
  %indvars.iv.next362 = shl i64 %indvars.iv361, 6
  %26 = or i64 %indvars.iv.next362, 64
  %27 = add nsw i64 %26, %0
  %arrayidx27.1 = getelementptr inbounds float, float* %c, i64 %27
  %28 = bitcast float* %arrayidx27.1 to i32*
  store i32 %25, i32* %28, align 4, !tbaa !7
  %indvars.iv.next366.1 = add nsw i64 %indvars.iv.next366, %4
  %indvars.iv.next362.1 = add nuw nsw i64 %indvars.iv361, 2
  %exitcond367.1 = icmp eq i64 %indvars.iv.next362.1, 64
  br i1 %exitcond367.1, label %if.end, label %for.body17

if.else:                                          ; preds = %entry
  %sext = add i64 %sext397, -274877906944
  %29 = ashr exact i64 %sext, 32
  %30 = add i32 %f, 32
  %31 = mul i32 %30, %e
  %32 = add i32 %31, %f
  %33 = sext i32 %32 to i64
  %34 = sext i32 %e to i64
  br label %for.body38

for.body38:                                       ; preds = %for.body38, %if.else
  %indvars.iv388 = phi i64 [ %33, %if.else ], [ %indvars.iv.next389.1, %for.body38 ]
  %indvars.iv384 = phi i64 [ 32, %if.else ], [ %indvars.iv.next385.1, %for.body38 ]
  %35 = add nsw i64 %indvars.iv388, %29
  %arrayidx41 = getelementptr inbounds float, float* %a, i64 %35
  %36 = bitcast float* %arrayidx41 to i32*
  %37 = load i32, i32* %36, align 4, !tbaa !7
  %38 = shl nuw nsw i64 %indvars.iv384, 6
  %39 = add nsw i64 %38, %29
  %arrayidx45 = getelementptr inbounds float, float* %b, i64 %39
  %40 = bitcast float* %arrayidx45 to i32*
  store i32 %37, i32* %40, align 4, !tbaa !7
  %indvars.iv.next389 = add nsw i64 %indvars.iv388, %34
  %41 = add nsw i64 %indvars.iv.next389, %29
  %arrayidx41.1 = getelementptr inbounds float, float* %a, i64 %41
  %42 = bitcast float* %arrayidx41.1 to i32*
  %43 = load i32, i32* %42, align 4, !tbaa !7
  %indvars.iv.next385 = shl i64 %indvars.iv384, 6
  %44 = or i64 %indvars.iv.next385, 64
  %45 = add nsw i64 %44, %29
  %arrayidx45.1 = getelementptr inbounds float, float* %b, i64 %45
  %46 = bitcast float* %arrayidx45.1 to i32*
  store i32 %43, i32* %46, align 4, !tbaa !7
  %indvars.iv.next389.1 = add nsw i64 %indvars.iv.next389, %34
  %indvars.iv.next385.1 = add nuw nsw i64 %indvars.iv384, 2
  %exitcond391.1 = icmp eq i64 %indvars.iv.next385.1, 64
  br i1 %exitcond391.1, label %for.end49, label %for.body38

for.end49:                                        ; preds = %for.body38
  %add50 = shl i32 %conv, 6
  %mul51 = add i32 %f, 64
  %add52 = add i32 %mul51, %add50
  %47 = mul i32 %add52, %e
  %48 = add i32 %47, %f
  %49 = sext i32 %48 to i64
  br label %for.body58

for.body58:                                       ; preds = %for.body58, %for.end49
  %indvars.iv380 = phi i64 [ %49, %for.end49 ], [ %indvars.iv.next381.1, %for.body58 ]
  %indvars.iv376 = phi i64 [ 0, %for.end49 ], [ %indvars.iv.next377.1, %for.body58 ]
  %50 = add nsw i64 %indvars.iv380, %29
  %arrayidx61 = getelementptr inbounds float, float* %a, i64 %50
  %51 = bitcast float* %arrayidx61 to i32*
  %52 = load i32, i32* %51, align 4, !tbaa !7
  %53 = shl nuw nsw i64 %indvars.iv376, 6
  %54 = add nsw i64 %53, %29
  %arrayidx65 = getelementptr inbounds float, float* %d, i64 %54
  %55 = bitcast float* %arrayidx65 to i32*
  store i32 %52, i32* %55, align 4, !tbaa !7
  %indvars.iv.next381 = add nsw i64 %indvars.iv380, %34
  %56 = add nsw i64 %indvars.iv.next381, %29
  %arrayidx61.1 = getelementptr inbounds float, float* %a, i64 %56
  %57 = bitcast float* %arrayidx61.1 to i32*
  %58 = load i32, i32* %57, align 4, !tbaa !7
  %indvars.iv.next377 = shl i64 %indvars.iv376, 6
  %59 = or i64 %indvars.iv.next377, 64
  %60 = add nsw i64 %59, %29
  %arrayidx65.1 = getelementptr inbounds float, float* %d, i64 %60
  %61 = bitcast float* %arrayidx65.1 to i32*
  store i32 %58, i32* %61, align 4, !tbaa !7
  %indvars.iv.next381.1 = add nsw i64 %indvars.iv.next381, %34
  %indvars.iv.next377.1 = add nuw nsw i64 %indvars.iv376, 2
  %exitcond383.1 = icmp eq i64 %indvars.iv.next377.1, 64
  br i1 %exitcond383.1, label %if.end, label %for.body58

if.end:                                           ; preds = %for.body58, %for.body17
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %cmp, label %for.cond77.preheader.preheader, label %if.else100

for.cond77.preheader.preheader:                   ; preds = %if.end
  %sext396 = shl i64 %call1, 32
  %62 = ashr exact i64 %sext396, 32
  br label %for.cond77.preheader

for.cond77.preheader:                             ; preds = %for.inc97, %for.cond77.preheader.preheader
  %indvar = phi i64 [ %indvar.next, %for.inc97 ], [ 0, %for.cond77.preheader.preheader ]
  %indvars.iv344 = phi i64 [ %indvars.iv.next345, %for.inc97 ], [ 1, %for.cond77.preheader.preheader ]
  %63 = add i64 %indvar, 1
  %64 = shl nsw i64 %indvars.iv344, 6
  %65 = add nsw i64 %64, %62
  %arrayidx93 = getelementptr inbounds float, float* %c, i64 %65
  %.pre392 = load float, float* %arrayidx93, align 4, !tbaa !7
  %xtraiter = and i64 %63, 1
  %66 = icmp eq i64 %indvar, 0
  br i1 %66, label %for.inc97.unr-lcssa, label %for.cond77.preheader.new

for.cond77.preheader.new:                         ; preds = %for.cond77.preheader
  %unroll_iter = sub i64 %63, %xtraiter
  br label %for.body80

for.body80:                                       ; preds = %for.body80, %for.cond77.preheader.new
  %67 = phi float [ %.pre392, %for.cond77.preheader.new ], [ %79, %for.body80 ]
  %indvars.iv338 = phi i64 [ 0, %for.cond77.preheader.new ], [ %indvars.iv.next339.1, %for.body80 ]
  %niter = phi i64 [ %unroll_iter, %for.cond77.preheader.new ], [ %niter.nsub.1, %for.body80 ]
  %68 = add nuw nsw i64 %indvars.iv338, %64
  %arrayidx84 = getelementptr inbounds float, float* %b, i64 %68
  %69 = load float, float* %arrayidx84, align 4, !tbaa !7
  %70 = shl i64 %indvars.iv338, 6
  %71 = add nsw i64 %70, %62
  %arrayidx88 = getelementptr inbounds float, float* %c, i64 %71
  %72 = load float, float* %arrayidx88, align 4, !tbaa !7
  %neg = fsub float -0.000000e+00, %69
  %73 = tail call float @llvm.fmuladd.f32(float %neg, float %72, float %67)
  store float %73, float* %arrayidx93, align 4, !tbaa !7
  %indvars.iv.next339 = or i64 %indvars.iv338, 1
  %74 = add nuw nsw i64 %indvars.iv.next339, %64
  %arrayidx84.1 = getelementptr inbounds float, float* %b, i64 %74
  %75 = load float, float* %arrayidx84.1, align 4, !tbaa !7
  %76 = shl i64 %indvars.iv.next339, 6
  %77 = add nsw i64 %76, %62
  %arrayidx88.1 = getelementptr inbounds float, float* %c, i64 %77
  %78 = load float, float* %arrayidx88.1, align 4, !tbaa !7
  %neg.1 = fsub float -0.000000e+00, %75
  %79 = tail call float @llvm.fmuladd.f32(float %neg.1, float %78, float %73)
  store float %79, float* %arrayidx93, align 4, !tbaa !7
  %indvars.iv.next339.1 = add nuw nsw i64 %indvars.iv338, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.inc97.unr-lcssa, label %for.body80

for.inc97.unr-lcssa:                              ; preds = %for.body80, %for.cond77.preheader
  %.unr = phi float [ %.pre392, %for.cond77.preheader ], [ %79, %for.body80 ]
  %indvars.iv338.unr = phi i64 [ 0, %for.cond77.preheader ], [ %indvars.iv.next339.1, %for.body80 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.inc97, label %for.body80.epil

for.body80.epil:                                  ; preds = %for.inc97.unr-lcssa
  %80 = add nuw nsw i64 %indvars.iv338.unr, %64
  %arrayidx84.epil = getelementptr inbounds float, float* %b, i64 %80
  %81 = load float, float* %arrayidx84.epil, align 4, !tbaa !7
  %82 = shl i64 %indvars.iv338.unr, 6
  %83 = add nsw i64 %82, %62
  %arrayidx88.epil = getelementptr inbounds float, float* %c, i64 %83
  %84 = load float, float* %arrayidx88.epil, align 4, !tbaa !7
  %neg.epil = fsub float -0.000000e+00, %81
  %85 = tail call float @llvm.fmuladd.f32(float %neg.epil, float %84, float %.unr)
  store float %85, float* %arrayidx93, align 4, !tbaa !7
  br label %for.inc97

for.inc97:                                        ; preds = %for.inc97.unr-lcssa, %for.body80.epil
  %indvars.iv.next345 = add nuw nsw i64 %indvars.iv344, 1
  %exitcond348 = icmp eq i64 %indvars.iv.next345, 64
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond348, label %if.end138, label %for.cond77.preheader

if.else100:                                       ; preds = %if.end
  %sub101 = shl i32 %conv2, 6
  %mul110 = add i32 %sub101, -4096
  %86 = sext i32 %mul110 to i64
  br label %for.cond106.preheader

for.cond106.preheader:                            ; preds = %for.end126, %if.else100
  %indvars.iv355 = phi i64 [ 0, %if.else100 ], [ %indvars.iv.next356, %for.end126 ]
  %cmp107311 = icmp eq i64 %indvars.iv355, 0
  %.pre393 = add nuw nsw i64 %indvars.iv355, %86
  br i1 %cmp107311, label %for.end126, label %for.body109.lr.ph

for.body109.lr.ph:                                ; preds = %for.cond106.preheader
  %arrayidx122 = getelementptr inbounds float, float* %d, i64 %.pre393
  %.pre = load float, float* %arrayidx122, align 4, !tbaa !7
  %xtraiter407 = and i64 %indvars.iv355, 1
  %87 = icmp eq i64 %indvars.iv355, 1
  br i1 %87, label %for.end126.loopexit.unr-lcssa, label %for.body109.lr.ph.new

for.body109.lr.ph.new:                            ; preds = %for.body109.lr.ph
  %unroll_iter410 = sub nsw i64 %indvars.iv355, %xtraiter407
  br label %for.body109

for.body109:                                      ; preds = %for.body109, %for.body109.lr.ph.new
  %88 = phi float [ %.pre, %for.body109.lr.ph.new ], [ %100, %for.body109 ]
  %indvars.iv349 = phi i64 [ 0, %for.body109.lr.ph.new ], [ %indvars.iv.next350.1, %for.body109 ]
  %niter411 = phi i64 [ %unroll_iter410, %for.body109.lr.ph.new ], [ %niter411.nsub.1, %for.body109 ]
  %89 = add nuw nsw i64 %indvars.iv349, %86
  %arrayidx113 = getelementptr inbounds float, float* %d, i64 %89
  %90 = load float, float* %arrayidx113, align 4, !tbaa !7
  %91 = shl i64 %indvars.iv349, 6
  %92 = add nuw nsw i64 %91, %indvars.iv355
  %arrayidx117 = getelementptr inbounds float, float* %b, i64 %92
  %93 = load float, float* %arrayidx117, align 4, !tbaa !7
  %neg123 = fsub float -0.000000e+00, %90
  %94 = tail call float @llvm.fmuladd.f32(float %neg123, float %93, float %88)
  store float %94, float* %arrayidx122, align 4, !tbaa !7
  %indvars.iv.next350 = or i64 %indvars.iv349, 1
  %95 = add nuw nsw i64 %indvars.iv.next350, %86
  %arrayidx113.1 = getelementptr inbounds float, float* %d, i64 %95
  %96 = load float, float* %arrayidx113.1, align 4, !tbaa !7
  %97 = shl i64 %indvars.iv.next350, 6
  %98 = add nuw nsw i64 %97, %indvars.iv355
  %arrayidx117.1 = getelementptr inbounds float, float* %b, i64 %98
  %99 = load float, float* %arrayidx117.1, align 4, !tbaa !7
  %neg123.1 = fsub float -0.000000e+00, %96
  %100 = tail call float @llvm.fmuladd.f32(float %neg123.1, float %99, float %94)
  store float %100, float* %arrayidx122, align 4, !tbaa !7
  %indvars.iv.next350.1 = add nuw nsw i64 %indvars.iv349, 2
  %niter411.nsub.1 = add i64 %niter411, -2
  %niter411.ncmp.1 = icmp eq i64 %niter411.nsub.1, 0
  br i1 %niter411.ncmp.1, label %for.end126.loopexit.unr-lcssa, label %for.body109

for.end126.loopexit.unr-lcssa:                    ; preds = %for.body109, %for.body109.lr.ph
  %.unr408 = phi float [ %.pre, %for.body109.lr.ph ], [ %100, %for.body109 ]
  %indvars.iv349.unr = phi i64 [ 0, %for.body109.lr.ph ], [ %indvars.iv.next350.1, %for.body109 ]
  %lcmp.mod409 = icmp eq i64 %xtraiter407, 0
  br i1 %lcmp.mod409, label %for.end126, label %for.body109.epil

for.body109.epil:                                 ; preds = %for.end126.loopexit.unr-lcssa
  %101 = add nuw nsw i64 %indvars.iv349.unr, %86
  %arrayidx113.epil = getelementptr inbounds float, float* %d, i64 %101
  %102 = load float, float* %arrayidx113.epil, align 4, !tbaa !7
  %103 = shl i64 %indvars.iv349.unr, 6
  %104 = add nuw nsw i64 %103, %indvars.iv355
  %arrayidx117.epil = getelementptr inbounds float, float* %b, i64 %104
  %105 = load float, float* %arrayidx117.epil, align 4, !tbaa !7
  %neg123.epil = fsub float -0.000000e+00, %102
  %106 = tail call float @llvm.fmuladd.f32(float %neg123.epil, float %105, float %.unr408)
  store float %106, float* %arrayidx122, align 4, !tbaa !7
  br label %for.end126

for.end126:                                       ; preds = %for.body109.epil, %for.end126.loopexit.unr-lcssa, %for.cond106.preheader
  %107 = mul nuw nsw i64 %indvars.iv355, 65
  %arrayidx130 = getelementptr inbounds float, float* %b, i64 %107
  %108 = load float, float* %arrayidx130, align 4, !tbaa !7
  %arrayidx134 = getelementptr inbounds float, float* %d, i64 %.pre393
  %109 = load float, float* %arrayidx134, align 4, !tbaa !7
  %div = fdiv float %109, %108, !fpmath !11
  store float %div, float* %arrayidx134, align 4, !tbaa !7
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1
  %exitcond360 = icmp eq i64 %indvars.iv.next356, 64
  br i1 %exitcond360, label %if.end138, label %for.cond106.preheader

if.end138:                                        ; preds = %for.end126, %for.inc97
  tail call void @_Z7barrierj(i32 1) #5
  %add153 = shl i32 %conv, 6
  br i1 %cmp, label %if.then141, label %if.else163

if.then141:                                       ; preds = %if.end138
  %mul154 = add nsw i32 %conv2, 64
  %add155 = add i32 %mul154, %add153
  %sext395 = shl i64 %call1, 32
  %110 = ashr exact i64 %sext395, 32
  %111 = add i32 %f, 1
  %112 = mul i32 %111, %e
  %113 = add i32 %112, %f
  %114 = sext i32 %113 to i64
  %115 = sext i32 %e to i64
  br label %for.body148

for.body148:                                      ; preds = %for.body148, %if.then141
  %indvars.iv328 = phi i64 [ %114, %if.then141 ], [ %indvars.iv.next329.2, %for.body148 ]
  %indvars.iv = phi i64 [ 1, %if.then141 ], [ %indvars.iv.next.2, %for.body148 ]
  %116 = shl nuw nsw i64 %indvars.iv, 6
  %117 = add nsw i64 %116, %110
  %arrayidx152 = getelementptr inbounds float, float* %c, i64 %117
  %118 = bitcast float* %arrayidx152 to i32*
  %119 = load i32, i32* %118, align 4, !tbaa !7
  %120 = trunc i64 %indvars.iv328 to i32
  %add156 = add i32 %add155, %120
  %idxprom157 = sext i32 %add156 to i64
  %arrayidx158 = getelementptr inbounds float, float* %a, i64 %idxprom157
  %121 = bitcast float* %arrayidx158 to i32*
  store i32 %119, i32* %121, align 4, !tbaa !7
  %indvars.iv.next329 = add nsw i64 %indvars.iv328, %115
  %indvars.iv.next = shl i64 %indvars.iv, 6
  %122 = add i64 %indvars.iv.next, 64
  %123 = add nsw i64 %122, %110
  %arrayidx152.1 = getelementptr inbounds float, float* %c, i64 %123
  %124 = bitcast float* %arrayidx152.1 to i32*
  %125 = load i32, i32* %124, align 4, !tbaa !7
  %126 = trunc i64 %indvars.iv.next329 to i32
  %add156.1 = add i32 %add155, %126
  %idxprom157.1 = sext i32 %add156.1 to i64
  %arrayidx158.1 = getelementptr inbounds float, float* %a, i64 %idxprom157.1
  %127 = bitcast float* %arrayidx158.1 to i32*
  store i32 %125, i32* %127, align 4, !tbaa !7
  %indvars.iv.next329.1 = add nsw i64 %indvars.iv.next329, %115
  %indvars.iv.next.1 = shl i64 %indvars.iv, 6
  %128 = add i64 %indvars.iv.next.1, 128
  %129 = add nsw i64 %128, %110
  %arrayidx152.2 = getelementptr inbounds float, float* %c, i64 %129
  %130 = bitcast float* %arrayidx152.2 to i32*
  %131 = load i32, i32* %130, align 4, !tbaa !7
  %132 = trunc i64 %indvars.iv.next329.1 to i32
  %add156.2 = add i32 %add155, %132
  %idxprom157.2 = sext i32 %add156.2 to i64
  %arrayidx158.2 = getelementptr inbounds float, float* %a, i64 %idxprom157.2
  %133 = bitcast float* %arrayidx158.2 to i32*
  store i32 %131, i32* %133, align 4, !tbaa !7
  %indvars.iv.next329.2 = add nsw i64 %indvars.iv.next329.1, %115
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %exitcond.2 = icmp eq i64 %indvars.iv.next.2, 64
  br i1 %exitcond.2, label %if.end185, label %for.body148

if.else163:                                       ; preds = %if.end138
  %mul166 = add i32 %f, 64
  %add167 = add i32 %mul166, %add153
  %sub164 = shl i64 %call1, 32
  %sext394 = add i64 %sub164, -274877906944
  %134 = ashr exact i64 %sext394, 32
  %135 = mul i32 %add167, %e
  %136 = add i32 %135, %f
  %137 = sext i32 %136 to i64
  %138 = sext i32 %e to i64
  br label %for.body173

for.body173:                                      ; preds = %for.body173, %if.else163
  %indvars.iv334 = phi i64 [ %137, %if.else163 ], [ %indvars.iv.next335.1, %for.body173 ]
  %indvars.iv330 = phi i64 [ 0, %if.else163 ], [ %indvars.iv.next331.1, %for.body173 ]
  %139 = shl nuw nsw i64 %indvars.iv330, 6
  %140 = add nsw i64 %139, %134
  %arrayidx177 = getelementptr inbounds float, float* %d, i64 %140
  %141 = bitcast float* %arrayidx177 to i32*
  %142 = load i32, i32* %141, align 4, !tbaa !7
  %143 = add nsw i64 %indvars.iv334, %134
  %arrayidx180 = getelementptr inbounds float, float* %a, i64 %143
  %144 = bitcast float* %arrayidx180 to i32*
  store i32 %142, i32* %144, align 4, !tbaa !7
  %indvars.iv.next335 = add nsw i64 %indvars.iv334, %138
  %indvars.iv.next331 = shl i64 %indvars.iv330, 6
  %145 = or i64 %indvars.iv.next331, 64
  %146 = add nsw i64 %145, %134
  %arrayidx177.1 = getelementptr inbounds float, float* %d, i64 %146
  %147 = bitcast float* %arrayidx177.1 to i32*
  %148 = load i32, i32* %147, align 4, !tbaa !7
  %149 = add nsw i64 %indvars.iv.next335, %134
  %arrayidx180.1 = getelementptr inbounds float, float* %a, i64 %149
  %150 = bitcast float* %arrayidx180.1 to i32*
  store i32 %148, i32* %150, align 4, !tbaa !7
  %indvars.iv.next335.1 = add nsw i64 %indvars.iv.next335, %138
  %indvars.iv.next331.1 = add nuw nsw i64 %indvars.iv330, 2
  %exitcond337.1 = icmp eq i64 %indvars.iv.next331.1, 64
  br i1 %exitcond337.1, label %if.end185, label %for.body173

if.end185:                                        ; preds = %for.body173, %for.body148
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { convergent nounwind readnone }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 3, i32 3, i32 3, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"float*", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{float 2.500000e+00}
