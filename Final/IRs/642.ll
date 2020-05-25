; ModuleID = 'src/642.src'
source_filename = "src/642.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* %a, float* %b, float* readonly %c) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %add = add i64 %call, 344
  %arrayidx = getelementptr inbounds float, float* %c, i64 %add
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %add2 = add i64 %call, 256
  %arrayidx3 = getelementptr inbounds float, float* %c, i64 %add2
  %1 = load float, float* %arrayidx3, align 4, !tbaa !7
  %add5 = add i64 %call, 288
  %arrayidx6 = getelementptr inbounds float, float* %c, i64 %add5
  %2 = load float, float* %arrayidx6, align 4, !tbaa !7
  %3 = tail call float @llvm.fmuladd.f32(float %2, float %0, float %1)
  %add8 = add i64 %call, 608
  %arrayidx9 = getelementptr inbounds float, float* %c, i64 %add8
  %4 = load float, float* %arrayidx9, align 4, !tbaa !7
  %add11 = add i64 %call, 640
  %arrayidx12 = getelementptr inbounds float, float* %c, i64 %add11
  %5 = load float, float* %arrayidx12, align 4, !tbaa !7
  %6 = tail call float @llvm.fmuladd.f32(float %5, float %0, float %4)
  %add14 = add i64 %call, 632
  %arrayidx15 = getelementptr inbounds float, float* %c, i64 %add14
  %7 = load float, float* %arrayidx15, align 4, !tbaa !7
  %8 = tail call float @llvm.fmuladd.f32(float %7, float %3, float %6)
  %add17 = add i64 %call, 168
  %arrayidx18 = getelementptr inbounds float, float* %c, i64 %add17
  %9 = load float, float* %arrayidx18, align 4, !tbaa !7
  %add20 = add i64 %call, 200
  %arrayidx21 = getelementptr inbounds float, float* %c, i64 %add20
  %10 = load float, float* %arrayidx21, align 4, !tbaa !7
  %11 = tail call float @llvm.fmuladd.f32(float %10, float %0, float %9)
  %add23 = add i64 %call, 192
  %arrayidx24 = getelementptr inbounds float, float* %c, i64 %add23
  %12 = load float, float* %arrayidx24, align 4, !tbaa !7
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %3, float %11)
  %add26 = add i64 %call, 224
  %arrayidx27 = getelementptr inbounds float, float* %c, i64 %add26
  %14 = load float, float* %arrayidx27, align 4, !tbaa !7
  %15 = tail call float @llvm.fmuladd.f32(float %14, float %8, float %13)
  %add29 = add i64 %call, 80
  %arrayidx30 = getelementptr inbounds float, float* %c, i64 %add29
  %16 = load float, float* %arrayidx30, align 4, !tbaa !7
  %add32 = add i64 %call, 112
  %arrayidx33 = getelementptr inbounds float, float* %c, i64 %add32
  %17 = load float, float* %arrayidx33, align 4, !tbaa !7
  %18 = tail call float @llvm.fmuladd.f32(float %17, float %0, float %16)
  %add35 = add i64 %call, 104
  %arrayidx36 = getelementptr inbounds float, float* %c, i64 %add35
  %19 = load float, float* %arrayidx36, align 4, !tbaa !7
  %20 = tail call float @llvm.fmuladd.f32(float %19, float %3, float %18)
  %add38 = add i64 %call, 136
  %arrayidx39 = getelementptr inbounds float, float* %c, i64 %add38
  %21 = load float, float* %arrayidx39, align 4, !tbaa !7
  %22 = tail call float @llvm.fmuladd.f32(float %21, float %8, float %20)
  %add41 = add i64 %call, 96
  %arrayidx42 = getelementptr inbounds float, float* %c, i64 %add41
  %23 = load float, float* %arrayidx42, align 4, !tbaa !7
  %24 = tail call float @llvm.fmuladd.f32(float %23, float %15, float %22)
  %add44 = add i64 %call, 696
  %arrayidx45 = getelementptr inbounds float, float* %c, i64 %add44
  %25 = load float, float* %arrayidx45, align 4, !tbaa !7
  %add47 = add i64 %call, 728
  %arrayidx48 = getelementptr inbounds float, float* %c, i64 %add47
  %26 = load float, float* %arrayidx48, align 4, !tbaa !7
  %27 = tail call float @llvm.fmuladd.f32(float %26, float %0, float %25)
  %add50 = add i64 %call, 720
  %arrayidx51 = getelementptr inbounds float, float* %c, i64 %add50
  %28 = load float, float* %arrayidx51, align 4, !tbaa !7
  %29 = tail call float @llvm.fmuladd.f32(float %28, float %3, float %27)
  %add53 = add i64 %call, 520
  %arrayidx54 = getelementptr inbounds float, float* %c, i64 %add53
  %30 = load float, float* %arrayidx54, align 4, !tbaa !7
  %add56 = add i64 %call, 544
  %arrayidx57 = getelementptr inbounds float, float* %c, i64 %add56
  %31 = load float, float* %arrayidx57, align 4, !tbaa !7
  %32 = tail call float @llvm.fmuladd.f32(float %31, float %3, float %30)
  %add59 = add i64 %call, 576
  %arrayidx60 = getelementptr inbounds float, float* %c, i64 %add59
  %33 = load float, float* %arrayidx60, align 4, !tbaa !7
  %34 = tail call float @llvm.fmuladd.f32(float %33, float %8, float %32)
  %add62 = add i64 %call, 536
  %arrayidx63 = getelementptr inbounds float, float* %c, i64 %add62
  %35 = load float, float* %arrayidx63, align 4, !tbaa !7
  %36 = tail call float @llvm.fmuladd.f32(float %35, float %15, float %34)
  %add65 = add i64 %call, 784
  %arrayidx66 = getelementptr inbounds float, float* %c, i64 %add65
  %37 = load float, float* %arrayidx66, align 4, !tbaa !7
  %add68 = add i64 %call, 816
  %arrayidx69 = getelementptr inbounds float, float* %c, i64 %add68
  %38 = load float, float* %arrayidx69, align 4, !tbaa !7
  %39 = tail call float @llvm.fmuladd.f32(float %38, float %0, float %37)
  %add71 = add i64 %call, 840
  %arrayidx72 = getelementptr inbounds float, float* %c, i64 %add71
  %40 = load float, float* %arrayidx72, align 4, !tbaa !7
  %41 = tail call float @llvm.fmuladd.f32(float %40, float %8, float %39)
  %add74 = add i64 %call, 432
  %arrayidx75 = getelementptr inbounds float, float* %c, i64 %add74
  %42 = load float, float* %arrayidx75, align 4, !tbaa !7
  %add77 = add i64 %call, 456
  %arrayidx78 = getelementptr inbounds float, float* %c, i64 %add77
  %43 = load float, float* %arrayidx78, align 4, !tbaa !7
  %44 = tail call float @llvm.fmuladd.f32(float %43, float %3, float %42)
  %add80 = add i64 %call, 872
  %arrayidx81 = getelementptr inbounds float, float* %c, i64 %add80
  %45 = load float, float* %arrayidx81, align 4, !tbaa !7
  %add83 = add i64 %call, 936
  %arrayidx84 = getelementptr inbounds float, float* %c, i64 %add83
  %46 = load float, float* %arrayidx84, align 4, !tbaa !7
  %47 = tail call float @llvm.fmuladd.f32(float %46, float %29, float %45)
  %add86 = add i64 %call, 264
  %arrayidx87 = getelementptr inbounds float, float* %a, i64 %add86
  %48 = load float, float* %arrayidx87, align 4, !tbaa !7
  %mul = fmul float %24, %48
  store float %mul, float* %arrayidx87, align 4, !tbaa !7
  %add92 = add i64 %call, 272
  %arrayidx93 = getelementptr inbounds float, float* %a, i64 %add92
  %49 = load float, float* %arrayidx93, align 4, !tbaa !7
  %mul94 = fmul float %24, %49
  store float %mul94, float* %arrayidx93, align 4, !tbaa !7
  %arrayidx100 = getelementptr inbounds float, float* %b, i64 %add92
  %50 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul101 = fmul float %0, %50
  store float %mul101, float* %arrayidx100, align 4, !tbaa !7
  %add106 = add i64 %call, 280
  %arrayidx107 = getelementptr inbounds float, float* %a, i64 %add106
  %51 = load float, float* %arrayidx107, align 4, !tbaa !7
  %mul108 = fmul float %24, %51
  store float %mul108, float* %arrayidx107, align 4, !tbaa !7
  %arrayidx114 = getelementptr inbounds float, float* %b, i64 %add106
  %52 = load float, float* %arrayidx114, align 4, !tbaa !7
  %mul115 = fmul float %15, %52
  store float %mul115, float* %arrayidx114, align 4, !tbaa !7
  %arrayidx121 = getelementptr inbounds float, float* %a, i64 %add5
  %53 = load float, float* %arrayidx121, align 4, !tbaa !7
  %mul122 = fmul float %24, %53
  store float %mul122, float* %arrayidx121, align 4, !tbaa !7
  %add127 = add i64 %call, 296
  %arrayidx128 = getelementptr inbounds float, float* %a, i64 %add127
  %54 = load float, float* %arrayidx128, align 4, !tbaa !7
  %mul129 = fmul float %24, %54
  store float %mul129, float* %arrayidx128, align 4, !tbaa !7
  %arrayidx135 = getelementptr inbounds float, float* %b, i64 %add127
  %55 = load float, float* %arrayidx135, align 4, !tbaa !7
  %mul136 = fmul float %0, %55
  store float %mul136, float* %arrayidx135, align 4, !tbaa !7
  %add141 = add i64 %call, 304
  %arrayidx142 = getelementptr inbounds float, float* %a, i64 %add141
  %56 = load float, float* %arrayidx142, align 4, !tbaa !7
  %mul143 = fmul float %24, %56
  store float %mul143, float* %arrayidx142, align 4, !tbaa !7
  %add148 = add i64 %call, 312
  %arrayidx149 = getelementptr inbounds float, float* %a, i64 %add148
  %57 = load float, float* %arrayidx149, align 4, !tbaa !7
  %mul150 = fmul float %24, %57
  store float %mul150, float* %arrayidx149, align 4, !tbaa !7
  %arrayidx156 = getelementptr inbounds float, float* %b, i64 %add148
  %58 = load float, float* %arrayidx156, align 4, !tbaa !7
  %mul157 = fmul float %0, %58
  store float %mul157, float* %arrayidx156, align 4, !tbaa !7
  %add162 = add i64 %call, 320
  %arrayidx163 = getelementptr inbounds float, float* %a, i64 %add162
  %59 = load float, float* %arrayidx163, align 4, !tbaa !7
  %mul164 = fmul float %0, %59
  store float %mul164, float* %arrayidx163, align 4, !tbaa !7
  %add169 = add i64 %call, 328
  %arrayidx170 = getelementptr inbounds float, float* %a, i64 %add169
  %60 = load float, float* %arrayidx170, align 4, !tbaa !7
  %mul171 = fmul float %0, %60
  store float %mul171, float* %arrayidx170, align 4, !tbaa !7
  %add176 = add i64 %call, 336
  %arrayidx177 = getelementptr inbounds float, float* %a, i64 %add176
  %61 = load float, float* %arrayidx177, align 4, !tbaa !7
  %mul178 = fmul float %0, %61
  store float %mul178, float* %arrayidx177, align 4, !tbaa !7
  %arrayidx184 = getelementptr inbounds float, float* %a, i64 %add
  %62 = load float, float* %arrayidx184, align 4, !tbaa !7
  %mul185 = fmul float %0, %62
  store float %mul185, float* %arrayidx184, align 4, !tbaa !7
  %add190 = add i64 %call, 352
  %arrayidx191 = getelementptr inbounds float, float* %a, i64 %add190
  %63 = load float, float* %arrayidx191, align 4, !tbaa !7
  %mul192 = fmul float %0, %63
  store float %mul192, float* %arrayidx191, align 4, !tbaa !7
  %add197 = add i64 %call, 360
  %arrayidx198 = getelementptr inbounds float, float* %a, i64 %add197
  %64 = load float, float* %arrayidx198, align 4, !tbaa !7
  %mul199 = fmul float %0, %64
  store float %mul199, float* %arrayidx198, align 4, !tbaa !7
  %add204 = add i64 %call, 368
  %arrayidx205 = getelementptr inbounds float, float* %a, i64 %add204
  %65 = load float, float* %arrayidx205, align 4, !tbaa !7
  %mul206 = fmul float %0, %65
  store float %mul206, float* %arrayidx205, align 4, !tbaa !7
  %add211 = add i64 %call, 376
  %arrayidx212 = getelementptr inbounds float, float* %a, i64 %add211
  %66 = load float, float* %arrayidx212, align 4, !tbaa !7
  %mul213 = fmul float %15, %66
  store float %mul213, float* %arrayidx212, align 4, !tbaa !7
  %add218 = add i64 %call, 384
  %arrayidx219 = getelementptr inbounds float, float* %a, i64 %add218
  %67 = load float, float* %arrayidx219, align 4, !tbaa !7
  %mul220 = fmul float %15, %67
  store float %mul220, float* %arrayidx219, align 4, !tbaa !7
  %add225 = add i64 %call, 392
  %arrayidx226 = getelementptr inbounds float, float* %a, i64 %add225
  %68 = load float, float* %arrayidx226, align 4, !tbaa !7
  %mul227 = fmul float %15, %68
  store float %mul227, float* %arrayidx226, align 4, !tbaa !7
  %arrayidx233 = getelementptr inbounds float, float* %b, i64 %add225
  %69 = load float, float* %arrayidx233, align 4, !tbaa !7
  %mul234 = fmul float %0, %69
  store float %mul234, float* %arrayidx233, align 4, !tbaa !7
  %add239 = add i64 %call, 400
  %arrayidx240 = getelementptr inbounds float, float* %a, i64 %add239
  %70 = load float, float* %arrayidx240, align 4, !tbaa !7
  %mul241 = fmul float %15, %70
  store float %mul241, float* %arrayidx240, align 4, !tbaa !7
  %arrayidx247 = getelementptr inbounds float, float* %b, i64 %add239
  %71 = load float, float* %arrayidx247, align 4, !tbaa !7
  %mul248 = fmul float %0, %71
  store float %mul248, float* %arrayidx247, align 4, !tbaa !7
  %add253 = add i64 %call, 408
  %arrayidx254 = getelementptr inbounds float, float* %a, i64 %add253
  %72 = load float, float* %arrayidx254, align 4, !tbaa !7
  %mul255 = fmul float %15, %72
  store float %mul255, float* %arrayidx254, align 4, !tbaa !7
  %add260 = add i64 %call, 416
  %arrayidx261 = getelementptr inbounds float, float* %a, i64 %add260
  %73 = load float, float* %arrayidx261, align 4, !tbaa !7
  %mul262 = fmul float %15, %73
  store float %mul262, float* %arrayidx261, align 4, !tbaa !7
  %add267 = add i64 %call, 424
  %arrayidx268 = getelementptr inbounds float, float* %a, i64 %add267
  %74 = load float, float* %arrayidx268, align 4, !tbaa !7
  %mul269 = fmul float %15, %74
  store float %mul269, float* %arrayidx268, align 4, !tbaa !7
  %arrayidx275 = getelementptr inbounds float, float* %b, i64 %add267
  %75 = load float, float* %arrayidx275, align 4, !tbaa !7
  %mul276 = fmul float %24, %75
  store float %mul276, float* %arrayidx275, align 4, !tbaa !7
  %arrayidx282 = getelementptr inbounds float, float* %a, i64 %add74
  %76 = load float, float* %arrayidx282, align 4, !tbaa !7
  %mul283 = fmul float %15, %76
  store float %mul283, float* %arrayidx282, align 4, !tbaa !7
  %add288 = add i64 %call, 440
  %arrayidx289 = getelementptr inbounds float, float* %a, i64 %add288
  %77 = load float, float* %arrayidx289, align 4, !tbaa !7
  %mul290 = fmul float %15, %77
  store float %mul290, float* %arrayidx289, align 4, !tbaa !7
  %add295 = add i64 %call, 464
  %arrayidx296 = getelementptr inbounds float, float* %a, i64 %add295
  %78 = load float, float* %arrayidx296, align 4, !tbaa !7
  %mul297 = fmul float %3, %78
  store float %mul297, float* %arrayidx296, align 4, !tbaa !7
  %arrayidx303 = getelementptr inbounds float, float* %b, i64 %add295
  %79 = load float, float* %arrayidx303, align 4, !tbaa !7
  %mul304 = fmul float %15, %79
  store float %mul304, float* %arrayidx303, align 4, !tbaa !7
  %add309 = add i64 %call, 472
  %arrayidx310 = getelementptr inbounds float, float* %a, i64 %add309
  %80 = load float, float* %arrayidx310, align 4, !tbaa !7
  %mul311 = fmul float %3, %80
  store float %mul311, float* %arrayidx310, align 4, !tbaa !7
  %arrayidx317 = getelementptr inbounds float, float* %b, i64 %add309
  %81 = load float, float* %arrayidx317, align 4, !tbaa !7
  %mul318 = fmul float %24, %81
  store float %mul318, float* %arrayidx317, align 4, !tbaa !7
  %add323 = add i64 %call, 480
  %arrayidx324 = getelementptr inbounds float, float* %a, i64 %add323
  %82 = load float, float* %arrayidx324, align 4, !tbaa !7
  %mul325 = fmul float %3, %82
  store float %mul325, float* %arrayidx324, align 4, !tbaa !7
  %add330 = add i64 %call, 488
  %arrayidx331 = getelementptr inbounds float, float* %a, i64 %add330
  %83 = load float, float* %arrayidx331, align 4, !tbaa !7
  %mul332 = fmul float %3, %83
  store float %mul332, float* %arrayidx331, align 4, !tbaa !7
  %arrayidx338 = getelementptr inbounds float, float* %b, i64 %add330
  %84 = load float, float* %arrayidx338, align 4, !tbaa !7
  %mul339 = fmul float %0, %84
  store float %mul339, float* %arrayidx338, align 4, !tbaa !7
  %add344 = add i64 %call, 496
  %arrayidx345 = getelementptr inbounds float, float* %a, i64 %add344
  %85 = load float, float* %arrayidx345, align 4, !tbaa !7
  %mul346 = fmul float %3, %85
  store float %mul346, float* %arrayidx345, align 4, !tbaa !7
  %add351 = add i64 %call, 504
  %arrayidx352 = getelementptr inbounds float, float* %a, i64 %add351
  %86 = load float, float* %arrayidx352, align 4, !tbaa !7
  %mul353 = fmul float %3, %86
  store float %mul353, float* %arrayidx352, align 4, !tbaa !7
  %add358 = add i64 %call, 512
  %arrayidx359 = getelementptr inbounds float, float* %a, i64 %add358
  %87 = load float, float* %arrayidx359, align 4, !tbaa !7
  %mul360 = fmul float %3, %87
  store float %mul360, float* %arrayidx359, align 4, !tbaa !7
  %arrayidx366 = getelementptr inbounds float, float* %a, i64 %add53
  %88 = load float, float* %arrayidx366, align 4, !tbaa !7
  %mul367 = fmul float %3, %88
  store float %mul367, float* %arrayidx366, align 4, !tbaa !7
  %add372 = add i64 %call, 528
  %arrayidx373 = getelementptr inbounds float, float* %a, i64 %add372
  %89 = load float, float* %arrayidx373, align 4, !tbaa !7
  %mul374 = fmul float %3, %89
  store float %mul374, float* %arrayidx373, align 4, !tbaa !7
  %arrayidx380 = getelementptr inbounds float, float* %b, i64 %add372
  %90 = load float, float* %arrayidx380, align 4, !tbaa !7
  %mul381 = fmul float %15, %90
  store float %mul381, float* %arrayidx380, align 4, !tbaa !7
  %arrayidx387 = getelementptr inbounds float, float* %a, i64 %add62
  %91 = load float, float* %arrayidx387, align 4, !tbaa !7
  %mul388 = fmul float %3, %91
  store float %mul388, float* %arrayidx387, align 4, !tbaa !7
  %arrayidx394 = getelementptr inbounds float, float* %b, i64 %add62
  %92 = load float, float* %arrayidx394, align 4, !tbaa !7
  %mul395 = fmul float %15, %92
  store float %mul395, float* %arrayidx394, align 4, !tbaa !7
  %arrayidx401 = getelementptr inbounds float, float* %a, i64 %add56
  %93 = load float, float* %arrayidx401, align 4, !tbaa !7
  %mul402 = fmul float %3, %93
  store float %mul402, float* %arrayidx401, align 4, !tbaa !7
  %arrayidx408 = getelementptr inbounds float, float* %b, i64 %add56
  %94 = load float, float* %arrayidx408, align 4, !tbaa !7
  %mul409 = fmul float %15, %94
  store float %mul409, float* %arrayidx408, align 4, !tbaa !7
  %add414 = add i64 %call, 552
  %arrayidx415 = getelementptr inbounds float, float* %a, i64 %add414
  %95 = load float, float* %arrayidx415, align 4, !tbaa !7
  %mul416 = fmul float %3, %95
  store float %mul416, float* %arrayidx415, align 4, !tbaa !7
  %add421 = add i64 %call, 560
  %arrayidx422 = getelementptr inbounds float, float* %b, i64 %add421
  %96 = load float, float* %arrayidx422, align 4, !tbaa !7
  %mul423 = fmul float %44, %96
  store float %mul423, float* %arrayidx422, align 4, !tbaa !7
  %add428 = add i64 %call, 568
  %arrayidx429 = getelementptr inbounds float, float* %b, i64 %add428
  %97 = load float, float* %arrayidx429, align 4, !tbaa !7
  %mul430 = fmul float %0, %97
  store float %mul430, float* %arrayidx429, align 4, !tbaa !7
  %arrayidx436 = getelementptr inbounds float, float* %b, i64 %add59
  %98 = load float, float* %arrayidx436, align 4, !tbaa !7
  %mul437 = fmul float %0, %98
  store float %mul437, float* %arrayidx436, align 4, !tbaa !7
  %add442 = add i64 %call, 584
  %arrayidx443 = getelementptr inbounds float, float* %b, i64 %add442
  %99 = load float, float* %arrayidx443, align 4, !tbaa !7
  %mul444 = fmul float %0, %99
  store float %mul444, float* %arrayidx443, align 4, !tbaa !7
  %add449 = add i64 %call, 592
  %arrayidx450 = getelementptr inbounds float, float* %b, i64 %add449
  %100 = load float, float* %arrayidx450, align 4, !tbaa !7
  %mul451 = fmul float %0, %100
  store float %mul451, float* %arrayidx450, align 4, !tbaa !7
  %add456 = add i64 %call, 600
  %arrayidx457 = getelementptr inbounds float, float* %b, i64 %add456
  %101 = load float, float* %arrayidx457, align 4, !tbaa !7
  %mul458 = fmul float %0, %101
  store float %mul458, float* %arrayidx457, align 4, !tbaa !7
  %arrayidx464 = getelementptr inbounds float, float* %a, i64 %add8
  %102 = load float, float* %arrayidx464, align 4, !tbaa !7
  %mul465 = fmul float %24, %102
  store float %mul465, float* %arrayidx464, align 4, !tbaa !7
  %arrayidx471 = getelementptr inbounds float, float* %b, i64 %add14
  %103 = load float, float* %arrayidx471, align 4, !tbaa !7
  %mul472 = fmul float %15, %103
  store float %mul472, float* %arrayidx471, align 4, !tbaa !7
  %arrayidx478 = getelementptr inbounds float, float* %b, i64 %add11
  %104 = load float, float* %arrayidx478, align 4, !tbaa !7
  %mul479 = fmul float %3, %104
  store float %mul479, float* %arrayidx478, align 4, !tbaa !7
  %add484 = add i64 %call, 648
  %arrayidx485 = getelementptr inbounds float, float* %b, i64 %add484
  %105 = load float, float* %arrayidx485, align 4, !tbaa !7
  %mul486 = fmul float %44, %105
  store float %mul486, float* %arrayidx485, align 4, !tbaa !7
  %add491 = add i64 %call, 672
  %arrayidx492 = getelementptr inbounds float, float* %b, i64 %add491
  %106 = load float, float* %arrayidx492, align 4, !tbaa !7
  %mul493 = fmul float %44, %106
  store float %mul493, float* %arrayidx492, align 4, !tbaa !7
  %add498 = add i64 %call, 688
  %arrayidx499 = getelementptr inbounds float, float* %a, i64 %add498
  %107 = load float, float* %arrayidx499, align 4, !tbaa !7
  %mul500 = fmul float %24, %107
  store float %mul500, float* %arrayidx499, align 4, !tbaa !7
  %arrayidx506 = getelementptr inbounds float, float* %b, i64 %add498
  %108 = load float, float* %arrayidx506, align 4, !tbaa !7
  %mul507 = fmul float %8, %108
  store float %mul507, float* %arrayidx506, align 4, !tbaa !7
  %arrayidx513 = getelementptr inbounds float, float* %a, i64 %add44
  %109 = load float, float* %arrayidx513, align 4, !tbaa !7
  %mul514 = fmul float %0, %109
  store float %mul514, float* %arrayidx513, align 4, !tbaa !7
  %add519 = add i64 %call, 704
  %arrayidx520 = getelementptr inbounds float, float* %a, i64 %add519
  %110 = load float, float* %arrayidx520, align 4, !tbaa !7
  %mul521 = fmul float %0, %110
  store float %mul521, float* %arrayidx520, align 4, !tbaa !7
  %add526 = add i64 %call, 712
  %arrayidx527 = getelementptr inbounds float, float* %b, i64 %add526
  %111 = load float, float* %arrayidx527, align 4, !tbaa !7
  %mul528 = fmul float %0, %111
  store float %mul528, float* %arrayidx527, align 4, !tbaa !7
  %arrayidx534 = getelementptr inbounds float, float* %a, i64 %add50
  %112 = load float, float* %arrayidx534, align 4, !tbaa !7
  %mul535 = fmul float %15, %112
  store float %mul535, float* %arrayidx534, align 4, !tbaa !7
  %arrayidx541 = getelementptr inbounds float, float* %a, i64 %add47
  %113 = load float, float* %arrayidx541, align 4, !tbaa !7
  %mul542 = fmul float %3, %113
  store float %mul542, float* %arrayidx541, align 4, !tbaa !7
  %add547 = add i64 %call, 744
  %arrayidx548 = getelementptr inbounds float, float* %b, i64 %add547
  %114 = load float, float* %arrayidx548, align 4, !tbaa !7
  %mul549 = fmul float %29, %114
  store float %mul549, float* %arrayidx548, align 4, !tbaa !7
  %add554 = add i64 %call, 760
  %arrayidx555 = getelementptr inbounds float, float* %a, i64 %add554
  %115 = load float, float* %arrayidx555, align 4, !tbaa !7
  %mul556 = fmul float %44, %115
  store float %mul556, float* %arrayidx555, align 4, !tbaa !7
  %add561 = add i64 %call, 768
  %arrayidx562 = getelementptr inbounds float, float* %a, i64 %add561
  %116 = load float, float* %arrayidx562, align 4, !tbaa !7
  %mul563 = fmul float %44, %116
  store float %mul563, float* %arrayidx562, align 4, !tbaa !7
  %add568 = add i64 %call, 776
  %arrayidx569 = getelementptr inbounds float, float* %a, i64 %add568
  %117 = load float, float* %arrayidx569, align 4, !tbaa !7
  %mul570 = fmul float %44, %117
  store float %mul570, float* %arrayidx569, align 4, !tbaa !7
  %arrayidx576 = getelementptr inbounds float, float* %b, i64 %add568
  %118 = load float, float* %arrayidx576, align 4, !tbaa !7
  %mul577 = fmul float %3, %118
  store float %mul577, float* %arrayidx576, align 4, !tbaa !7
  %arrayidx583 = getelementptr inbounds float, float* %a, i64 %add65
  %119 = load float, float* %arrayidx583, align 4, !tbaa !7
  %mul584 = fmul float %44, %119
  store float %mul584, float* %arrayidx583, align 4, !tbaa !7
  %add589 = add i64 %call, 792
  %arrayidx590 = getelementptr inbounds float, float* %a, i64 %add589
  %120 = load float, float* %arrayidx590, align 4, !tbaa !7
  %mul591 = fmul float %44, %120
  store float %mul591, float* %arrayidx590, align 4, !tbaa !7
  %add596 = add i64 %call, 800
  %arrayidx597 = getelementptr inbounds float, float* %a, i64 %add596
  %121 = load float, float* %arrayidx597, align 4, !tbaa !7
  %mul598 = fmul float %44, %121
  store float %mul598, float* %arrayidx597, align 4, !tbaa !7
  %add603 = add i64 %call, 832
  %arrayidx604 = getelementptr inbounds float, float* %a, i64 %add603
  %122 = load float, float* %arrayidx604, align 4, !tbaa !7
  %mul605 = fmul float %24, %122
  store float %mul605, float* %arrayidx604, align 4, !tbaa !7
  %arrayidx611 = getelementptr inbounds float, float* %a, i64 %add71
  %123 = load float, float* %arrayidx611, align 4, !tbaa !7
  %mul612 = fmul float %15, %123
  store float %mul612, float* %arrayidx611, align 4, !tbaa !7
  %add617 = add i64 %call, 848
  %arrayidx618 = getelementptr inbounds float, float* %a, i64 %add617
  %124 = load float, float* %arrayidx618, align 4, !tbaa !7
  %mul619 = fmul float %3, %124
  store float %mul619, float* %arrayidx618, align 4, !tbaa !7
  %add624 = add i64 %call, 856
  %arrayidx625 = getelementptr inbounds float, float* %b, i64 %add624
  %125 = load float, float* %arrayidx625, align 4, !tbaa !7
  %mul626 = fmul float %3, %125
  store float %mul626, float* %arrayidx625, align 4, !tbaa !7
  %add631 = add i64 %call, 880
  %arrayidx632 = getelementptr inbounds float, float* %a, i64 %add631
  %126 = load float, float* %arrayidx632, align 4, !tbaa !7
  %mul633 = fmul float %24, %126
  store float %mul633, float* %arrayidx632, align 4, !tbaa !7
  %add638 = add i64 %call, 888
  %arrayidx639 = getelementptr inbounds float, float* %a, i64 %add638
  %127 = load float, float* %arrayidx639, align 4, !tbaa !7
  %mul640 = fmul float %15, %127
  store float %mul640, float* %arrayidx639, align 4, !tbaa !7
  %arrayidx646 = getelementptr inbounds float, float* %b, i64 %add638
  %128 = load float, float* %arrayidx646, align 4, !tbaa !7
  %mul647 = fmul float %8, %128
  store float %mul647, float* %arrayidx646, align 4, !tbaa !7
  %add652 = add i64 %call, 904
  %arrayidx653 = getelementptr inbounds float, float* %b, i64 %add652
  %129 = load float, float* %arrayidx653, align 4, !tbaa !7
  %mul654 = fmul float %36, %129
  store float %mul654, float* %arrayidx653, align 4, !tbaa !7
  %add659 = add i64 %call, 912
  %arrayidx660 = getelementptr inbounds float, float* %a, i64 %add659
  %130 = load float, float* %arrayidx660, align 4, !tbaa !7
  %mul661 = fmul float %8, %130
  store float %mul661, float* %arrayidx660, align 4, !tbaa !7
  %add666 = add i64 %call, 928
  %arrayidx667 = getelementptr inbounds float, float* %b, i64 %add666
  %131 = load float, float* %arrayidx667, align 4, !tbaa !7
  %mul668 = fmul float %15, %131
  store float %mul668, float* %arrayidx667, align 4, !tbaa !7
  %add673 = add i64 %call, 952
  %arrayidx674 = getelementptr inbounds float, float* %a, i64 %add673
  %132 = load float, float* %arrayidx674, align 4, !tbaa !7
  %mul675 = fmul float %0, %132
  store float %mul675, float* %arrayidx674, align 4, !tbaa !7
  %arrayidx681 = getelementptr inbounds float, float* %b, i64 %add673
  %133 = load float, float* %arrayidx681, align 4, !tbaa !7
  %mul682 = fmul float %8, %133
  store float %mul682, float* %arrayidx681, align 4, !tbaa !7
  %add687 = add i64 %call, 968
  %arrayidx688 = getelementptr inbounds float, float* %a, i64 %add687
  %134 = load float, float* %arrayidx688, align 4, !tbaa !7
  %mul689 = fmul float %36, %134
  store float %mul689, float* %arrayidx688, align 4, !tbaa !7
  %add694 = add i64 %call, 976
  %arrayidx695 = getelementptr inbounds float, float* %a, i64 %add694
  %135 = load float, float* %arrayidx695, align 4, !tbaa !7
  %mul696 = fmul float %36, %135
  store float %mul696, float* %arrayidx695, align 4, !tbaa !7
  %arrayidx702 = getelementptr inbounds float, float* %b, i64 %add694
  %136 = load float, float* %arrayidx702, align 4, !tbaa !7
  %mul703 = fmul float %15, %136
  store float %mul703, float* %arrayidx702, align 4, !tbaa !7
  %add708 = add i64 %call, 984
  %arrayidx709 = getelementptr inbounds float, float* %a, i64 %add708
  %137 = load float, float* %arrayidx709, align 4, !tbaa !7
  %mul710 = fmul float %36, %137
  store float %mul710, float* %arrayidx709, align 4, !tbaa !7
  %add715 = add i64 %call, 992
  %arrayidx716 = getelementptr inbounds float, float* %a, i64 %add715
  %138 = load float, float* %arrayidx716, align 4, !tbaa !7
  %mul717 = fmul float %36, %138
  store float %mul717, float* %arrayidx716, align 4, !tbaa !7
  %arrayidx723 = getelementptr inbounds float, float* %b, i64 %add715
  %139 = load float, float* %arrayidx723, align 4, !tbaa !7
  %mul724 = fmul float %15, %139
  store float %mul724, float* %arrayidx723, align 4, !tbaa !7
  %add729 = add i64 %call, 1000
  %arrayidx730 = getelementptr inbounds float, float* %b, i64 %add729
  %140 = load float, float* %arrayidx730, align 4, !tbaa !7
  %mul731 = fmul float %41, %140
  store float %mul731, float* %arrayidx730, align 4, !tbaa !7
  %add736 = add i64 %call, 1032
  %arrayidx737 = getelementptr inbounds float, float* %b, i64 %add736
  %141 = load float, float* %arrayidx737, align 4, !tbaa !7
  %mul738 = fmul float %15, %141
  store float %mul738, float* %arrayidx737, align 4, !tbaa !7
  %add743 = add i64 %call, 1048
  %arrayidx744 = getelementptr inbounds float, float* %a, i64 %add743
  %142 = load float, float* %arrayidx744, align 4, !tbaa !7
  %mul745 = fmul float %8, %142
  store float %mul745, float* %arrayidx744, align 4, !tbaa !7
  %add750 = add i64 %call, 1056
  %arrayidx751 = getelementptr inbounds float, float* %a, i64 %add750
  %143 = load float, float* %arrayidx751, align 4, !tbaa !7
  %mul752 = fmul float %8, %143
  store float %mul752, float* %arrayidx751, align 4, !tbaa !7
  %add757 = add i64 %call, 1064
  %arrayidx758 = getelementptr inbounds float, float* %a, i64 %add757
  %144 = load float, float* %arrayidx758, align 4, !tbaa !7
  %mul759 = fmul float %8, %144
  store float %mul759, float* %arrayidx758, align 4, !tbaa !7
  %arrayidx765 = getelementptr inbounds float, float* %b, i64 %add757
  %145 = load float, float* %arrayidx765, align 4, !tbaa !7
  %mul766 = fmul float %36, %145
  store float %mul766, float* %arrayidx765, align 4, !tbaa !7
  %add771 = add i64 %call, 1072
  %arrayidx772 = getelementptr inbounds float, float* %a, i64 %add771
  %146 = load float, float* %arrayidx772, align 4, !tbaa !7
  %mul773 = fmul float %8, %146
  store float %mul773, float* %arrayidx772, align 4, !tbaa !7
  %add778 = add i64 %call, 1080
  %arrayidx779 = getelementptr inbounds float, float* %a, i64 %add778
  %147 = load float, float* %arrayidx779, align 4, !tbaa !7
  %mul780 = fmul float %8, %147
  store float %mul780, float* %arrayidx779, align 4, !tbaa !7
  %add785 = add i64 %call, 1088
  %arrayidx786 = getelementptr inbounds float, float* %a, i64 %add785
  %148 = load float, float* %arrayidx786, align 4, !tbaa !7
  %mul787 = fmul float %8, %148
  store float %mul787, float* %arrayidx786, align 4, !tbaa !7
  %add792 = add i64 %call, 1096
  %arrayidx793 = getelementptr inbounds float, float* %a, i64 %add792
  %149 = load float, float* %arrayidx793, align 4, !tbaa !7
  %mul794 = fmul float %8, %149
  store float %mul794, float* %arrayidx793, align 4, !tbaa !7
  %add799 = add i64 %call, 1104
  %arrayidx800 = getelementptr inbounds float, float* %a, i64 %add799
  %150 = load float, float* %arrayidx800, align 4, !tbaa !7
  %mul801 = fmul float %8, %150
  store float %mul801, float* %arrayidx800, align 4, !tbaa !7
  %arrayidx807 = getelementptr inbounds float, float* %b, i64 %add799
  %151 = load float, float* %arrayidx807, align 4, !tbaa !7
  %mul808 = fmul float %41, %151
  store float %mul808, float* %arrayidx807, align 4, !tbaa !7
  %add813 = add i64 %call, 1112
  %arrayidx814 = getelementptr inbounds float, float* %a, i64 %add813
  %152 = load float, float* %arrayidx814, align 4, !tbaa !7
  %mul815 = fmul float %8, %152
  store float %mul815, float* %arrayidx814, align 4, !tbaa !7
  %arrayidx821 = getelementptr inbounds float, float* %b, i64 %add813
  %153 = load float, float* %arrayidx821, align 4, !tbaa !7
  %mul822 = fmul float %0, %153
  store float %mul822, float* %arrayidx821, align 4, !tbaa !7
  %add827 = add i64 %call, 1120
  %arrayidx828 = getelementptr inbounds float, float* %a, i64 %add827
  %154 = load float, float* %arrayidx828, align 4, !tbaa !7
  %mul829 = fmul float %8, %154
  store float %mul829, float* %arrayidx828, align 4, !tbaa !7
  %arrayidx835 = getelementptr inbounds float, float* %b, i64 %add827
  %155 = load float, float* %arrayidx835, align 4, !tbaa !7
  %mul836 = fmul float %41, %155
  store float %mul836, float* %arrayidx835, align 4, !tbaa !7
  %add841 = add i64 %call, 1128
  %arrayidx842 = getelementptr inbounds float, float* %a, i64 %add841
  %156 = load float, float* %arrayidx842, align 4, !tbaa !7
  %mul843 = fmul float %8, %156
  store float %mul843, float* %arrayidx842, align 4, !tbaa !7
  %add848 = add i64 %call, 1144
  %arrayidx849 = getelementptr inbounds float, float* %a, i64 %add848
  %157 = load float, float* %arrayidx849, align 4, !tbaa !7
  %mul850 = fmul float %8, %157
  store float %mul850, float* %arrayidx849, align 4, !tbaa !7
  %add855 = add i64 %call, 1152
  %arrayidx856 = getelementptr inbounds float, float* %a, i64 %add855
  %158 = load float, float* %arrayidx856, align 4, !tbaa !7
  %mul857 = fmul float %8, %158
  store float %mul857, float* %arrayidx856, align 4, !tbaa !7
  %add862 = add i64 %call, 1160
  %arrayidx863 = getelementptr inbounds float, float* %a, i64 %add862
  %159 = load float, float* %arrayidx863, align 4, !tbaa !7
  %mul864 = fmul float %8, %159
  store float %mul864, float* %arrayidx863, align 4, !tbaa !7
  %add869 = add i64 %call, 1168
  %arrayidx870 = getelementptr inbounds float, float* %a, i64 %add869
  %160 = load float, float* %arrayidx870, align 4, !tbaa !7
  %mul871 = fmul float %41, %160
  store float %mul871, float* %arrayidx870, align 4, !tbaa !7
  %add876 = add i64 %call, 1176
  %arrayidx877 = getelementptr inbounds float, float* %a, i64 %add876
  %161 = load float, float* %arrayidx877, align 4, !tbaa !7
  %mul878 = fmul float %41, %161
  store float %mul878, float* %arrayidx877, align 4, !tbaa !7
  %add883 = add i64 %call, 1184
  %arrayidx884 = getelementptr inbounds float, float* %a, i64 %add883
  %162 = load float, float* %arrayidx884, align 4, !tbaa !7
  %mul885 = fmul float %41, %162
  store float %mul885, float* %arrayidx884, align 4, !tbaa !7
  %arrayidx891 = getelementptr inbounds float, float* %b, i64 %add883
  %163 = load float, float* %arrayidx891, align 4, !tbaa !7
  %mul892 = fmul float %0, %163
  store float %mul892, float* %arrayidx891, align 4, !tbaa !7
  %add897 = add i64 %call, 1192
  %arrayidx898 = getelementptr inbounds float, float* %a, i64 %add897
  %164 = load float, float* %arrayidx898, align 4, !tbaa !7
  %mul899 = fmul float %41, %164
  store float %mul899, float* %arrayidx898, align 4, !tbaa !7
  %add904 = add i64 %call, 1200
  %arrayidx905 = getelementptr inbounds float, float* %a, i64 %add904
  %165 = load float, float* %arrayidx905, align 4, !tbaa !7
  %mul906 = fmul float %41, %165
  store float %mul906, float* %arrayidx905, align 4, !tbaa !7
  %add911 = add i64 %call, 1208
  %arrayidx912 = getelementptr inbounds float, float* %a, i64 %add911
  %166 = load float, float* %arrayidx912, align 4, !tbaa !7
  %mul913 = fmul float %41, %166
  store float %mul913, float* %arrayidx912, align 4, !tbaa !7
  %add918 = add i64 %call, 1216
  %arrayidx919 = getelementptr inbounds float, float* %a, i64 %add918
  %167 = load float, float* %arrayidx919, align 4, !tbaa !7
  %mul920 = fmul float %41, %167
  store float %mul920, float* %arrayidx919, align 4, !tbaa !7
  %add925 = add i64 %call, 1224
  %arrayidx926 = getelementptr inbounds float, float* %a, i64 %add925
  %168 = load float, float* %arrayidx926, align 4, !tbaa !7
  %mul927 = fmul float %41, %168
  store float %mul927, float* %arrayidx926, align 4, !tbaa !7
  %add932 = add i64 %call, 1232
  %arrayidx933 = getelementptr inbounds float, float* %b, i64 %add932
  %169 = load float, float* %arrayidx933, align 4, !tbaa !7
  %mul934 = fmul float %36, %169
  store float %mul934, float* %arrayidx933, align 4, !tbaa !7
  %add939 = add i64 %call, 1240
  %arrayidx940 = getelementptr inbounds float, float* %b, i64 %add939
  %170 = load float, float* %arrayidx940, align 4, !tbaa !7
  %mul941 = fmul float %29, %170
  store float %mul941, float* %arrayidx940, align 4, !tbaa !7
  %add946 = add i64 %call, 1248
  %arrayidx947 = getelementptr inbounds float, float* %b, i64 %add946
  %171 = load float, float* %arrayidx947, align 4, !tbaa !7
  %mul948 = fmul float %8, %171
  store float %mul948, float* %arrayidx947, align 4, !tbaa !7
  %add953 = add i64 %call, 1256
  %arrayidx954 = getelementptr inbounds float, float* %b, i64 %add953
  %172 = load float, float* %arrayidx954, align 4, !tbaa !7
  %mul955 = fmul float %8, %172
  store float %mul955, float* %arrayidx954, align 4, !tbaa !7
  %add960 = add i64 %call, 1264
  %arrayidx961 = getelementptr inbounds float, float* %b, i64 %add960
  %173 = load float, float* %arrayidx961, align 4, !tbaa !7
  %mul962 = fmul float %0, %173
  store float %mul962, float* %arrayidx961, align 4, !tbaa !7
  %add967 = add i64 %call, 1272
  %arrayidx968 = getelementptr inbounds float, float* %b, i64 %add967
  %174 = load float, float* %arrayidx968, align 4, !tbaa !7
  %mul969 = fmul float %15, %174
  store float %mul969, float* %arrayidx968, align 4, !tbaa !7
  %add974 = add i64 %call, 1280
  %arrayidx975 = getelementptr inbounds float, float* %b, i64 %add974
  %175 = load float, float* %arrayidx975, align 4, !tbaa !7
  %mul976 = fmul float %8, %175
  store float %mul976, float* %arrayidx975, align 4, !tbaa !7
  %add981 = add i64 %call, 1288
  %arrayidx982 = getelementptr inbounds float, float* %b, i64 %add981
  %176 = load float, float* %arrayidx982, align 4, !tbaa !7
  %mul983 = fmul float %8, %176
  store float %mul983, float* %arrayidx982, align 4, !tbaa !7
  %add988 = add i64 %call, 1304
  %arrayidx989 = getelementptr inbounds float, float* %a, i64 %add988
  %177 = load float, float* %arrayidx989, align 4, !tbaa !7
  %mul990 = fmul float %0, %177
  store float %mul990, float* %arrayidx989, align 4, !tbaa !7
  %arrayidx996 = getelementptr inbounds float, float* %b, i64 %add988
  %178 = load float, float* %arrayidx996, align 4, !tbaa !7
  %mul997 = fmul float %29, %178
  store float %mul997, float* %arrayidx996, align 4, !tbaa !7
  %add1002 = add i64 %call, 1312
  %arrayidx1003 = getelementptr inbounds float, float* %a, i64 %add1002
  %179 = load float, float* %arrayidx1003, align 4, !tbaa !7
  %mul1004 = fmul float %15, %179
  store float %mul1004, float* %arrayidx1003, align 4, !tbaa !7
  %add1009 = add i64 %call, 1320
  %arrayidx1010 = getelementptr inbounds float, float* %a, i64 %add1009
  %180 = load float, float* %arrayidx1010, align 4, !tbaa !7
  %mul1011 = fmul float %3, %180
  store float %mul1011, float* %arrayidx1010, align 4, !tbaa !7
  %arrayidx1017 = getelementptr inbounds float, float* %b, i64 %add1009
  %181 = load float, float* %arrayidx1017, align 4, !tbaa !7
  %mul1018 = fmul float %36, %181
  store float %mul1018, float* %arrayidx1017, align 4, !tbaa !7
  %add1023 = add i64 %call, 1328
  %arrayidx1024 = getelementptr inbounds float, float* %a, i64 %add1023
  %182 = load float, float* %arrayidx1024, align 4, !tbaa !7
  %mul1025 = fmul float %3, %182
  store float %mul1025, float* %arrayidx1024, align 4, !tbaa !7
  %add1030 = add i64 %call, 1336
  %arrayidx1031 = getelementptr inbounds float, float* %b, i64 %add1030
  %183 = load float, float* %arrayidx1031, align 4, !tbaa !7
  %mul1032 = fmul float %8, %183
  store float %mul1032, float* %arrayidx1031, align 4, !tbaa !7
  %add1037 = add i64 %call, 1344
  %arrayidx1038 = getelementptr inbounds float, float* %b, i64 %add1037
  %184 = load float, float* %arrayidx1038, align 4, !tbaa !7
  %mul1039 = fmul float %47, %184
  store float %mul1039, float* %arrayidx1038, align 4, !tbaa !7
  %add1044 = add i64 %call, 1352
  %arrayidx1045 = getelementptr inbounds float, float* %a, i64 %add1044
  %185 = load float, float* %arrayidx1045, align 4, !tbaa !7
  %mul1046 = fmul float %29, %185
  store float %mul1046, float* %arrayidx1045, align 4, !tbaa !7
  %add1051 = add i64 %call, 1360
  %arrayidx1052 = getelementptr inbounds float, float* %a, i64 %add1051
  %186 = load float, float* %arrayidx1052, align 4, !tbaa !7
  %mul1053 = fmul float %29, %186
  store float %mul1053, float* %arrayidx1052, align 4, !tbaa !7
  %add1058 = add i64 %call, 1368
  %arrayidx1059 = getelementptr inbounds float, float* %a, i64 %add1058
  %187 = load float, float* %arrayidx1059, align 4, !tbaa !7
  %mul1060 = fmul float %29, %187
  store float %mul1060, float* %arrayidx1059, align 4, !tbaa !7
  %add1065 = add i64 %call, 1376
  %arrayidx1066 = getelementptr inbounds float, float* %a, i64 %add1065
  %188 = load float, float* %arrayidx1066, align 4, !tbaa !7
  %mul1067 = fmul float %29, %188
  store float %mul1067, float* %arrayidx1066, align 4, !tbaa !7
  %add1072 = add i64 %call, 1384
  %arrayidx1073 = getelementptr inbounds float, float* %a, i64 %add1072
  %189 = load float, float* %arrayidx1073, align 4, !tbaa !7
  %mul1074 = fmul float %29, %189
  store float %mul1074, float* %arrayidx1073, align 4, !tbaa !7
  %add1079 = add i64 %call, 1392
  %arrayidx1080 = getelementptr inbounds float, float* %a, i64 %add1079
  %190 = load float, float* %arrayidx1080, align 4, !tbaa !7
  %mul1081 = fmul float %29, %190
  store float %mul1081, float* %arrayidx1080, align 4, !tbaa !7
  %add1086 = add i64 %call, 1400
  %arrayidx1087 = getelementptr inbounds float, float* %a, i64 %add1086
  %191 = load float, float* %arrayidx1087, align 4, !tbaa !7
  %mul1088 = fmul float %29, %191
  store float %mul1088, float* %arrayidx1087, align 4, !tbaa !7
  %add1093 = add i64 %call, 1408
  %arrayidx1094 = getelementptr inbounds float, float* %a, i64 %add1093
  %192 = load float, float* %arrayidx1094, align 4, !tbaa !7
  %mul1095 = fmul float %29, %192
  store float %mul1095, float* %arrayidx1094, align 4, !tbaa !7
  %add1100 = add i64 %call, 1416
  %arrayidx1101 = getelementptr inbounds float, float* %a, i64 %add1100
  %193 = load float, float* %arrayidx1101, align 4, !tbaa !7
  %mul1102 = fmul float %29, %193
  store float %mul1102, float* %arrayidx1101, align 4, !tbaa !7
  %add1107 = add i64 %call, 1432
  %arrayidx1108 = getelementptr inbounds float, float* %b, i64 %add1107
  %194 = load float, float* %arrayidx1108, align 4, !tbaa !7
  %mul1109 = fmul float %29, %194
  store float %mul1109, float* %arrayidx1108, align 4, !tbaa !7
  %add1114 = add i64 %call, 1440
  %arrayidx1115 = getelementptr inbounds float, float* %b, i64 %add1114
  %195 = load float, float* %arrayidx1115, align 4, !tbaa !7
  %mul1116 = fmul float %29, %195
  store float %mul1116, float* %arrayidx1115, align 4, !tbaa !7
  %add1121 = add i64 %call, 1448
  %arrayidx1122 = getelementptr inbounds float, float* %b, i64 %add1121
  %196 = load float, float* %arrayidx1122, align 4, !tbaa !7
  %mul1123 = fmul float %29, %196
  store float %mul1123, float* %arrayidx1122, align 4, !tbaa !7
  %add1128 = add i64 %call, 1456
  %arrayidx1129 = getelementptr inbounds float, float* %a, i64 %add1128
  %197 = load float, float* %arrayidx1129, align 4, !tbaa !7
  %mul1130 = fmul float %3, %197
  store float %mul1130, float* %arrayidx1129, align 4, !tbaa !7
  %arrayidx1136 = getelementptr inbounds float, float* %b, i64 %add1128
  %198 = load float, float* %arrayidx1136, align 4, !tbaa !7
  %mul1137 = fmul float %29, %198
  store float %mul1137, float* %arrayidx1136, align 4, !tbaa !7
  %add1142 = add i64 %call, 1464
  %arrayidx1143 = getelementptr inbounds float, float* %b, i64 %add1142
  %199 = load float, float* %arrayidx1143, align 4, !tbaa !7
  %mul1144 = fmul float %29, %199
  store float %mul1144, float* %arrayidx1143, align 4, !tbaa !7
  %add1149 = add i64 %call, 1480
  %arrayidx1150 = getelementptr inbounds float, float* %b, i64 %add1149
  %200 = load float, float* %arrayidx1150, align 4, !tbaa !7
  %mul1151 = fmul float %36, %200
  store float %mul1151, float* %arrayidx1150, align 4, !tbaa !7
  %add1156 = add i64 %call, 1496
  %arrayidx1157 = getelementptr inbounds float, float* %b, i64 %add1156
  %201 = load float, float* %arrayidx1157, align 4, !tbaa !7
  %mul1158 = fmul float %8, %201
  store float %mul1158, float* %arrayidx1157, align 4, !tbaa !7
  %add1163 = add i64 %call, 1504
  %arrayidx1164 = getelementptr inbounds float, float* %a, i64 %add1163
  %202 = load float, float* %arrayidx1164, align 4, !tbaa !7
  %mul1165 = fmul float %0, %202
  store float %mul1165, float* %arrayidx1164, align 4, !tbaa !7
  %add1170 = add i64 %call, 1512
  %arrayidx1171 = getelementptr inbounds float, float* %b, i64 %add1170
  %203 = load float, float* %arrayidx1171, align 4, !tbaa !7
  %mul1172 = fmul float %47, %203
  store float %mul1172, float* %arrayidx1171, align 4, !tbaa !7
  %add1177 = add i64 %call, 1584
  %arrayidx1178 = getelementptr inbounds float, float* %a, i64 %add1177
  %204 = load float, float* %arrayidx1178, align 4, !tbaa !7
  %mul1179 = fmul float %47, %204
  store float %mul1179, float* %arrayidx1178, align 4, !tbaa !7
  %arrayidx1185 = getelementptr inbounds float, float* %b, i64 %add1177
  %205 = load float, float* %arrayidx1185, align 4, !tbaa !7
  %mul1186 = fmul float %29, %205
  store float %mul1186, float* %arrayidx1185, align 4, !tbaa !7
  %add1191 = add i64 %call, 1592
  %arrayidx1192 = getelementptr inbounds float, float* %a, i64 %add1191
  %206 = load float, float* %arrayidx1192, align 4, !tbaa !7
  %mul1193 = fmul float %47, %206
  store float %mul1193, float* %arrayidx1192, align 4, !tbaa !7
  %add1198 = add i64 %call, 1600
  %arrayidx1199 = getelementptr inbounds float, float* %a, i64 %add1198
  %207 = load float, float* %arrayidx1199, align 4, !tbaa !7
  %mul1200 = fmul float %47, %207
  store float %mul1200, float* %arrayidx1199, align 4, !tbaa !7
  %arrayidx1206 = getelementptr inbounds float, float* %b, i64 %add1198
  %208 = load float, float* %arrayidx1206, align 4, !tbaa !7
  %mul1207 = fmul float %29, %208
  store float %mul1207, float* %arrayidx1206, align 4, !tbaa !7
  %add1212 = add i64 %call, 1608
  %arrayidx1213 = getelementptr inbounds float, float* %a, i64 %add1212
  %209 = load float, float* %arrayidx1213, align 4, !tbaa !7
  %mul1214 = fmul float %47, %209
  store float %mul1214, float* %arrayidx1213, align 4, !tbaa !7
  %add1219 = add i64 %call, 1616
  %arrayidx1220 = getelementptr inbounds float, float* %a, i64 %add1219
  %210 = load float, float* %arrayidx1220, align 4, !tbaa !7
  %mul1221 = fmul float %47, %210
  store float %mul1221, float* %arrayidx1220, align 4, !tbaa !7
  %add1226 = add i64 %call, 1624
  %arrayidx1227 = getelementptr inbounds float, float* %a, i64 %add1226
  %211 = load float, float* %arrayidx1227, align 4, !tbaa !7
  %mul1228 = fmul float %47, %211
  store float %mul1228, float* %arrayidx1227, align 4, !tbaa !7
  %arrayidx1234 = getelementptr inbounds float, float* %b, i64 %add1226
  %212 = load float, float* %arrayidx1234, align 4, !tbaa !7
  %mul1235 = fmul float %29, %212
  store float %mul1235, float* %arrayidx1234, align 4, !tbaa !7
  %add1240 = add i64 %call, 1632
  %arrayidx1241 = getelementptr inbounds float, float* %a, i64 %add1240
  %213 = load float, float* %arrayidx1241, align 4, !tbaa !7
  %mul1242 = fmul float %47, %213
  store float %mul1242, float* %arrayidx1241, align 4, !tbaa !7
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1}
!4 = !{!"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*"}
!6 = !{!"", !"", !"const"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
