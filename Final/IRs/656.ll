; ModuleID = 'src/656.src'
source_filename = "src/656.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* readonly %a, float* %b) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %arrayidx = getelementptr inbounds float, float* %b, i64 %call
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %add2 = add i64 %call, 16
  %arrayidx3 = getelementptr inbounds float, float* %a, i64 %add2
  %1 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul = fmul float %0, %1
  %add5 = add i64 %call, 32
  %arrayidx6 = getelementptr inbounds float, float* %a, i64 %add5
  %2 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul7 = fmul float %mul, %2
  store float %mul7, float* %arrayidx, align 4, !tbaa !7
  %add12 = add i64 %call, 8
  %arrayidx13 = getelementptr inbounds float, float* %b, i64 %add12
  %3 = load float, float* %arrayidx13, align 4, !tbaa !7
  %arrayidx16 = getelementptr inbounds float, float* %a, i64 %add12
  %4 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul17 = fmul float %3, %4
  %5 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul21 = fmul float %mul17, %5
  store float %mul21, float* %arrayidx13, align 4, !tbaa !7
  %arrayidx27 = getelementptr inbounds float, float* %b, i64 %add2
  %6 = load float, float* %arrayidx27, align 4, !tbaa !7
  %7 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul31 = fmul float %6, %7
  %add33 = add i64 %call, 40
  %arrayidx34 = getelementptr inbounds float, float* %a, i64 %add33
  %8 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul35 = fmul float %mul31, %8
  store float %mul35, float* %arrayidx27, align 4, !tbaa !7
  %add40 = add i64 %call, 24
  %arrayidx41 = getelementptr inbounds float, float* %b, i64 %add40
  %9 = load float, float* %arrayidx41, align 4, !tbaa !7
  %10 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul45 = fmul float %9, %10
  %11 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul49 = fmul float %mul45, %11
  store float %mul49, float* %arrayidx41, align 4, !tbaa !7
  %arrayidx55 = getelementptr inbounds float, float* %b, i64 %add33
  %12 = load float, float* %arrayidx55, align 4, !tbaa !7
  %arrayidx58 = getelementptr inbounds float, float* %a, i64 %call
  %13 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul59 = fmul float %12, %13
  %mul63 = fmul float %13, %mul59
  store float %mul63, float* %arrayidx55, align 4, !tbaa !7
  %add68 = add i64 %call, 48
  %arrayidx69 = getelementptr inbounds float, float* %b, i64 %add68
  %14 = load float, float* %arrayidx69, align 4, !tbaa !7
  %15 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul73 = fmul float %14, %15
  %16 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul77 = fmul float %mul73, %16
  store float %mul77, float* %arrayidx69, align 4, !tbaa !7
  %add82 = add i64 %call, 56
  %arrayidx83 = getelementptr inbounds float, float* %b, i64 %add82
  %17 = load float, float* %arrayidx83, align 4, !tbaa !7
  %18 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul87 = fmul float %17, %18
  %add89 = add i64 %call, 88
  %arrayidx90 = getelementptr inbounds float, float* %a, i64 %add89
  %19 = load float, float* %arrayidx90, align 4, !tbaa !7
  %mul91 = fmul float %mul87, %19
  store float %mul91, float* %arrayidx83, align 4, !tbaa !7
  %add96 = add i64 %call, 96
  %arrayidx97 = getelementptr inbounds float, float* %b, i64 %add96
  %20 = load float, float* %arrayidx97, align 4, !tbaa !7
  %arrayidx100 = getelementptr inbounds float, float* %a, i64 %add68
  %21 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul101 = fmul float %20, %21
  %arrayidx104 = getelementptr inbounds float, float* %a, i64 %add40
  %22 = load float, float* %arrayidx104, align 4, !tbaa !7
  %mul105 = fmul float %mul101, %22
  store float %mul105, float* %arrayidx97, align 4, !tbaa !7
  %add110 = add i64 %call, 104
  %arrayidx111 = getelementptr inbounds float, float* %b, i64 %add110
  %23 = load float, float* %arrayidx111, align 4, !tbaa !7
  %24 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul115 = fmul float %23, %24
  %25 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul119 = fmul float %mul115, %25
  store float %mul119, float* %arrayidx111, align 4, !tbaa !7
  %add124 = add i64 %call, 112
  %arrayidx125 = getelementptr inbounds float, float* %b, i64 %add124
  %26 = load float, float* %arrayidx125, align 4, !tbaa !7
  %27 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul129 = fmul float %26, %27
  %add131 = add i64 %call, 168
  %arrayidx132 = getelementptr inbounds float, float* %a, i64 %add131
  %28 = load float, float* %arrayidx132, align 4, !tbaa !7
  %mul133 = fmul float %mul129, %28
  store float %mul133, float* %arrayidx125, align 4, !tbaa !7
  %add138 = add i64 %call, 120
  %arrayidx139 = getelementptr inbounds float, float* %b, i64 %add138
  %29 = load float, float* %arrayidx139, align 4, !tbaa !7
  %arrayidx142 = getelementptr inbounds float, float* %a, i64 %add82
  %30 = load float, float* %arrayidx142, align 4, !tbaa !7
  %mul143 = fmul float %29, %30
  store float %mul143, float* %arrayidx139, align 4, !tbaa !7
  %add148 = add i64 %call, 128
  %arrayidx149 = getelementptr inbounds float, float* %b, i64 %add148
  %31 = load float, float* %arrayidx149, align 4, !tbaa !7
  %32 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul153 = fmul float %31, %32
  %33 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul157 = fmul float %mul153, %33
  store float %mul157, float* %arrayidx149, align 4, !tbaa !7
  %add162 = add i64 %call, 136
  %arrayidx163 = getelementptr inbounds float, float* %b, i64 %add162
  %34 = load float, float* %arrayidx163, align 4, !tbaa !7
  %35 = load float, float* %arrayidx104, align 4, !tbaa !7
  %mul167 = fmul float %34, %35
  %36 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul171 = fmul float %mul167, %36
  store float %mul171, float* %arrayidx163, align 4, !tbaa !7
  %add176 = add i64 %call, 144
  %arrayidx177 = getelementptr inbounds float, float* %b, i64 %add176
  %37 = load float, float* %arrayidx177, align 4, !tbaa !7
  %38 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul181 = fmul float %37, %38
  %mul185 = fmul float %38, %mul181
  store float %mul185, float* %arrayidx177, align 4, !tbaa !7
  %add190 = add i64 %call, 152
  %arrayidx191 = getelementptr inbounds float, float* %b, i64 %add190
  %39 = load float, float* %arrayidx191, align 4, !tbaa !7
  %40 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul195 = fmul float %39, %40
  %41 = load float, float* %arrayidx104, align 4, !tbaa !7
  %mul199 = fmul float %mul195, %41
  store float %mul199, float* %arrayidx191, align 4, !tbaa !7
  %add204 = add i64 %call, 160
  %arrayidx205 = getelementptr inbounds float, float* %b, i64 %add204
  %42 = load float, float* %arrayidx205, align 4, !tbaa !7
  %43 = load float, float* %arrayidx104, align 4, !tbaa !7
  %mul209 = fmul float %42, %43
  %44 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul213 = fmul float %mul209, %44
  store float %mul213, float* %arrayidx205, align 4, !tbaa !7
  %arrayidx219 = getelementptr inbounds float, float* %b, i64 %add131
  %45 = load float, float* %arrayidx219, align 4, !tbaa !7
  %46 = load float, float* %arrayidx104, align 4, !tbaa !7
  %mul223 = fmul float %45, %46
  %47 = load float, float* %arrayidx142, align 4, !tbaa !7
  %mul227 = fmul float %mul223, %47
  store float %mul227, float* %arrayidx219, align 4, !tbaa !7
  %add232 = add i64 %call, 176
  %arrayidx233 = getelementptr inbounds float, float* %b, i64 %add232
  %48 = load float, float* %arrayidx233, align 4, !tbaa !7
  %49 = load float, float* %arrayidx104, align 4, !tbaa !7
  %mul237 = fmul float %48, %49
  %50 = load float, float* %arrayidx142, align 4, !tbaa !7
  %mul241 = fmul float %mul237, %50
  store float %mul241, float* %arrayidx233, align 4, !tbaa !7
  %add246 = add i64 %call, 184
  %arrayidx247 = getelementptr inbounds float, float* %b, i64 %add246
  %51 = load float, float* %arrayidx247, align 4, !tbaa !7
  %52 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul251 = fmul float %51, %52
  %53 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul255 = fmul float %mul251, %53
  store float %mul255, float* %arrayidx247, align 4, !tbaa !7
  %add260 = add i64 %call, 192
  %arrayidx261 = getelementptr inbounds float, float* %b, i64 %add260
  %54 = load float, float* %arrayidx261, align 4, !tbaa !7
  %55 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul265 = fmul float %54, %55
  %56 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul269 = fmul float %mul265, %56
  store float %mul269, float* %arrayidx261, align 4, !tbaa !7
  %add274 = add i64 %call, 200
  %arrayidx275 = getelementptr inbounds float, float* %b, i64 %add274
  %57 = load float, float* %arrayidx275, align 4, !tbaa !7
  %58 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul279 = fmul float %57, %58
  %59 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul283 = fmul float %mul279, %59
  store float %mul283, float* %arrayidx275, align 4, !tbaa !7
  %add288 = add i64 %call, 208
  %arrayidx289 = getelementptr inbounds float, float* %b, i64 %add288
  %60 = load float, float* %arrayidx289, align 4, !tbaa !7
  %61 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul293 = fmul float %60, %61
  %62 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul297 = fmul float %mul293, %62
  store float %mul297, float* %arrayidx289, align 4, !tbaa !7
  %add302 = add i64 %call, 216
  %arrayidx303 = getelementptr inbounds float, float* %b, i64 %add302
  %63 = load float, float* %arrayidx303, align 4, !tbaa !7
  %64 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul307 = fmul float %63, %64
  %65 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul311 = fmul float %mul307, %65
  store float %mul311, float* %arrayidx303, align 4, !tbaa !7
  %add316 = add i64 %call, 232
  %arrayidx317 = getelementptr inbounds float, float* %b, i64 %add316
  %66 = load float, float* %arrayidx317, align 4, !tbaa !7
  %67 = load float, float* %arrayidx90, align 4, !tbaa !7
  %mul321 = fmul float %66, %67
  %68 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul325 = fmul float %mul321, %68
  store float %mul325, float* %arrayidx317, align 4, !tbaa !7
  %add330 = add i64 %call, 240
  %arrayidx331 = getelementptr inbounds float, float* %b, i64 %add330
  %69 = load float, float* %arrayidx331, align 4, !tbaa !7
  %arrayidx334 = getelementptr inbounds float, float* %a, i64 %add96
  %70 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul335 = fmul float %69, %70
  store float %mul335, float* %arrayidx331, align 4, !tbaa !7
  %add340 = add i64 %call, 248
  %arrayidx341 = getelementptr inbounds float, float* %b, i64 %add340
  %71 = load float, float* %arrayidx341, align 4, !tbaa !7
  %72 = load float, float* %arrayidx90, align 4, !tbaa !7
  %mul345 = fmul float %71, %72
  %73 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul349 = fmul float %mul345, %73
  store float %mul349, float* %arrayidx341, align 4, !tbaa !7
  %add354 = add i64 %call, 256
  %arrayidx355 = getelementptr inbounds float, float* %b, i64 %add354
  %74 = load float, float* %arrayidx355, align 4, !tbaa !7
  %75 = load float, float* %arrayidx90, align 4, !tbaa !7
  %mul359 = fmul float %74, %75
  %76 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul363 = fmul float %mul359, %76
  store float %mul363, float* %arrayidx355, align 4, !tbaa !7
  %add368 = add i64 %call, 264
  %arrayidx369 = getelementptr inbounds float, float* %b, i64 %add368
  %77 = load float, float* %arrayidx369, align 4, !tbaa !7
  %add371 = add i64 %call, 80
  %arrayidx372 = getelementptr inbounds float, float* %a, i64 %add371
  %78 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul373 = fmul float %77, %78
  %79 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul377 = fmul float %mul373, %79
  store float %mul377, float* %arrayidx369, align 4, !tbaa !7
  %add382 = add i64 %call, 272
  %arrayidx383 = getelementptr inbounds float, float* %b, i64 %add382
  %80 = load float, float* %arrayidx383, align 4, !tbaa !7
  %81 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul387 = fmul float %80, %81
  store float %mul387, float* %arrayidx383, align 4, !tbaa !7
  %add392 = add i64 %call, 280
  %arrayidx393 = getelementptr inbounds float, float* %b, i64 %add392
  %82 = load float, float* %arrayidx393, align 4, !tbaa !7
  %83 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul397 = fmul float %82, %83
  store float %mul397, float* %arrayidx393, align 4, !tbaa !7
  %add402 = add i64 %call, 288
  %arrayidx403 = getelementptr inbounds float, float* %b, i64 %add402
  %84 = load float, float* %arrayidx403, align 4, !tbaa !7
  %85 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul407 = fmul float %84, %85
  %86 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul411 = fmul float %mul407, %86
  store float %mul411, float* %arrayidx403, align 4, !tbaa !7
  %add416 = add i64 %call, 296
  %arrayidx417 = getelementptr inbounds float, float* %b, i64 %add416
  %87 = load float, float* %arrayidx417, align 4, !tbaa !7
  %88 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul421 = fmul float %87, %88
  store float %mul421, float* %arrayidx417, align 4, !tbaa !7
  %add426 = add i64 %call, 304
  %arrayidx427 = getelementptr inbounds float, float* %b, i64 %add426
  %89 = load float, float* %arrayidx427, align 4, !tbaa !7
  %arrayidx430 = getelementptr inbounds float, float* %a, i64 %add148
  %90 = load float, float* %arrayidx430, align 4, !tbaa !7
  %mul431 = fmul float %89, %90
  store float %mul431, float* %arrayidx427, align 4, !tbaa !7
  %add436 = add i64 %call, 312
  %arrayidx437 = getelementptr inbounds float, float* %b, i64 %add436
  %91 = load float, float* %arrayidx437, align 4, !tbaa !7
  %92 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul441 = fmul float %91, %92
  store float %mul441, float* %arrayidx437, align 4, !tbaa !7
  %add446 = add i64 %call, 320
  %arrayidx447 = getelementptr inbounds float, float* %b, i64 %add446
  %93 = load float, float* %arrayidx447, align 4, !tbaa !7
  %94 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul451 = fmul float %93, %94
  store float %mul451, float* %arrayidx447, align 4, !tbaa !7
  %add456 = add i64 %call, 328
  %arrayidx457 = getelementptr inbounds float, float* %b, i64 %add456
  %95 = load float, float* %arrayidx457, align 4, !tbaa !7
  %96 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul461 = fmul float %95, %96
  %97 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul465 = fmul float %mul461, %97
  store float %mul465, float* %arrayidx457, align 4, !tbaa !7
  %add470 = add i64 %call, 336
  %arrayidx471 = getelementptr inbounds float, float* %b, i64 %add470
  %98 = load float, float* %arrayidx471, align 4, !tbaa !7
  %99 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul475 = fmul float %98, %99
  %100 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul479 = fmul float %mul475, %100
  store float %mul479, float* %arrayidx471, align 4, !tbaa !7
  %add484 = add i64 %call, 344
  %arrayidx485 = getelementptr inbounds float, float* %b, i64 %add484
  %101 = load float, float* %arrayidx485, align 4, !tbaa !7
  %102 = load float, float* %arrayidx90, align 4, !tbaa !7
  %mul489 = fmul float %101, %102
  %103 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul493 = fmul float %mul489, %103
  store float %mul493, float* %arrayidx485, align 4, !tbaa !7
  %add498 = add i64 %call, 352
  %arrayidx499 = getelementptr inbounds float, float* %b, i64 %add498
  %104 = load float, float* %arrayidx499, align 4, !tbaa !7
  %105 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul503 = fmul float %104, %105
  %106 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul507 = fmul float %mul503, %106
  store float %mul507, float* %arrayidx499, align 4, !tbaa !7
  %add512 = add i64 %call, 368
  %arrayidx513 = getelementptr inbounds float, float* %b, i64 %add512
  %107 = load float, float* %arrayidx513, align 4, !tbaa !7
  %108 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul517 = fmul float %107, %108
  %109 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul521 = fmul float %mul517, %109
  store float %mul521, float* %arrayidx513, align 4, !tbaa !7
  %add526 = add i64 %call, 376
  %arrayidx527 = getelementptr inbounds float, float* %b, i64 %add526
  %110 = load float, float* %arrayidx527, align 4, !tbaa !7
  %add529 = add i64 %call, 64
  %arrayidx530 = getelementptr inbounds float, float* %a, i64 %add529
  %111 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul531 = fmul float %110, %111
  store float %mul531, float* %arrayidx527, align 4, !tbaa !7
  %add536 = add i64 %call, 384
  %arrayidx537 = getelementptr inbounds float, float* %b, i64 %add536
  %112 = load float, float* %arrayidx537, align 4, !tbaa !7
  %113 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul541 = fmul float %112, %113
  %114 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul545 = fmul float %mul541, %114
  store float %mul545, float* %arrayidx537, align 4, !tbaa !7
  %add550 = add i64 %call, 392
  %arrayidx551 = getelementptr inbounds float, float* %b, i64 %add550
  %115 = load float, float* %arrayidx551, align 4, !tbaa !7
  %116 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul555 = fmul float %115, %116
  store float %mul555, float* %arrayidx551, align 4, !tbaa !7
  %add560 = add i64 %call, 400
  %arrayidx561 = getelementptr inbounds float, float* %b, i64 %add560
  %117 = load float, float* %arrayidx561, align 4, !tbaa !7
  %118 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul565 = fmul float %117, %118
  store float %mul565, float* %arrayidx561, align 4, !tbaa !7
  %add570 = add i64 %call, 408
  %arrayidx571 = getelementptr inbounds float, float* %b, i64 %add570
  %119 = load float, float* %arrayidx571, align 4, !tbaa !7
  %120 = load float, float* %arrayidx90, align 4, !tbaa !7
  %mul575 = fmul float %119, %120
  %121 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul579 = fmul float %mul575, %121
  %mul583 = fmul float %121, %mul579
  store float %mul583, float* %arrayidx571, align 4, !tbaa !7
  %add588 = add i64 %call, 416
  %arrayidx589 = getelementptr inbounds float, float* %b, i64 %add588
  %122 = load float, float* %arrayidx589, align 4, !tbaa !7
  %123 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul593 = fmul float %122, %123
  %124 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul597 = fmul float %mul593, %124
  store float %mul597, float* %arrayidx589, align 4, !tbaa !7
  %add602 = add i64 %call, 424
  %arrayidx603 = getelementptr inbounds float, float* %b, i64 %add602
  %125 = load float, float* %arrayidx603, align 4, !tbaa !7
  %126 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul607 = fmul float %125, %126
  store float %mul607, float* %arrayidx603, align 4, !tbaa !7
  %add612 = add i64 %call, 432
  %arrayidx613 = getelementptr inbounds float, float* %b, i64 %add612
  %127 = load float, float* %arrayidx613, align 4, !tbaa !7
  %128 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul617 = fmul float %127, %128
  %129 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul621 = fmul float %mul617, %129
  store float %mul621, float* %arrayidx613, align 4, !tbaa !7
  %add626 = add i64 %call, 440
  %arrayidx627 = getelementptr inbounds float, float* %b, i64 %add626
  %130 = load float, float* %arrayidx627, align 4, !tbaa !7
  %arrayidx630 = getelementptr inbounds float, float* %a, i64 %add162
  %131 = load float, float* %arrayidx630, align 4, !tbaa !7
  %mul631 = fmul float %130, %131
  store float %mul631, float* %arrayidx627, align 4, !tbaa !7
  %add636 = add i64 %call, 448
  %arrayidx637 = getelementptr inbounds float, float* %b, i64 %add636
  %132 = load float, float* %arrayidx637, align 4, !tbaa !7
  %arrayidx640 = getelementptr inbounds float, float* %a, i64 %add110
  %133 = load float, float* %arrayidx640, align 4, !tbaa !7
  %mul641 = fmul float %132, %133
  %134 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul645 = fmul float %mul641, %134
  store float %mul645, float* %arrayidx637, align 4, !tbaa !7
  %add650 = add i64 %call, 456
  %arrayidx651 = getelementptr inbounds float, float* %b, i64 %add650
  %135 = load float, float* %arrayidx651, align 4, !tbaa !7
  %136 = load float, float* %arrayidx640, align 4, !tbaa !7
  %mul655 = fmul float %135, %136
  %137 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul659 = fmul float %mul655, %137
  store float %mul659, float* %arrayidx651, align 4, !tbaa !7
  %add664 = add i64 %call, 464
  %arrayidx665 = getelementptr inbounds float, float* %b, i64 %add664
  %138 = load float, float* %arrayidx665, align 4, !tbaa !7
  %139 = load float, float* %arrayidx132, align 4, !tbaa !7
  %mul669 = fmul float %138, %139
  store float %mul669, float* %arrayidx665, align 4, !tbaa !7
  %add674 = add i64 %call, 472
  %arrayidx675 = getelementptr inbounds float, float* %b, i64 %add674
  %140 = load float, float* %arrayidx675, align 4, !tbaa !7
  %141 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul679 = fmul float %140, %141
  store float %mul679, float* %arrayidx675, align 4, !tbaa !7
  %add684 = add i64 %call, 480
  %arrayidx685 = getelementptr inbounds float, float* %b, i64 %add684
  %142 = load float, float* %arrayidx685, align 4, !tbaa !7
  %143 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul689 = fmul float %142, %143
  %144 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul693 = fmul float %mul689, %144
  store float %mul693, float* %arrayidx685, align 4, !tbaa !7
  %add698 = add i64 %call, 488
  %arrayidx699 = getelementptr inbounds float, float* %b, i64 %add698
  %145 = load float, float* %arrayidx699, align 4, !tbaa !7
  %146 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul703 = fmul float %145, %146
  store float %mul703, float* %arrayidx699, align 4, !tbaa !7
  %add708 = add i64 %call, 496
  %arrayidx709 = getelementptr inbounds float, float* %b, i64 %add708
  %147 = load float, float* %arrayidx709, align 4, !tbaa !7
  %148 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul713 = fmul float %147, %148
  %149 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul717 = fmul float %mul713, %149
  store float %mul717, float* %arrayidx709, align 4, !tbaa !7
  %add722 = add i64 %call, 504
  %arrayidx723 = getelementptr inbounds float, float* %b, i64 %add722
  %150 = load float, float* %arrayidx723, align 4, !tbaa !7
  %151 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul727 = fmul float %150, %151
  %152 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul731 = fmul float %mul727, %152
  store float %mul731, float* %arrayidx723, align 4, !tbaa !7
  %add736 = add i64 %call, 512
  %arrayidx737 = getelementptr inbounds float, float* %b, i64 %add736
  %153 = load float, float* %arrayidx737, align 4, !tbaa !7
  %154 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul741 = fmul float %153, %154
  %155 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul745 = fmul float %mul741, %155
  %156 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul749 = fmul float %mul745, %156
  store float %mul749, float* %arrayidx737, align 4, !tbaa !7
  %add754 = add i64 %call, 520
  %arrayidx755 = getelementptr inbounds float, float* %b, i64 %add754
  %157 = load float, float* %arrayidx755, align 4, !tbaa !7
  %158 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul759 = fmul float %157, %158
  %159 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul763 = fmul float %mul759, %159
  store float %mul763, float* %arrayidx755, align 4, !tbaa !7
  %add768 = add i64 %call, 528
  %arrayidx769 = getelementptr inbounds float, float* %b, i64 %add768
  %160 = load float, float* %arrayidx769, align 4, !tbaa !7
  %161 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul773 = fmul float %160, %161
  store float %mul773, float* %arrayidx769, align 4, !tbaa !7
  %add778 = add i64 %call, 536
  %arrayidx779 = getelementptr inbounds float, float* %b, i64 %add778
  %162 = load float, float* %arrayidx779, align 4, !tbaa !7
  %163 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul783 = fmul float %162, %163
  store float %mul783, float* %arrayidx779, align 4, !tbaa !7
  %add788 = add i64 %call, 544
  %arrayidx789 = getelementptr inbounds float, float* %b, i64 %add788
  %164 = load float, float* %arrayidx789, align 4, !tbaa !7
  %165 = load float, float* %arrayidx90, align 4, !tbaa !7
  %mul793 = fmul float %164, %165
  store float %mul793, float* %arrayidx789, align 4, !tbaa !7
  %add798 = add i64 %call, 552
  %arrayidx799 = getelementptr inbounds float, float* %b, i64 %add798
  %166 = load float, float* %arrayidx799, align 4, !tbaa !7
  %167 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul803 = fmul float %166, %167
  %168 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul807 = fmul float %mul803, %168
  store float %mul807, float* %arrayidx799, align 4, !tbaa !7
  %add812 = add i64 %call, 568
  %arrayidx813 = getelementptr inbounds float, float* %b, i64 %add812
  %169 = load float, float* %arrayidx813, align 4, !tbaa !7
  %170 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul817 = fmul float %169, %170
  store float %mul817, float* %arrayidx813, align 4, !tbaa !7
  %add822 = add i64 %call, 576
  %arrayidx823 = getelementptr inbounds float, float* %b, i64 %add822
  %171 = load float, float* %arrayidx823, align 4, !tbaa !7
  %172 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul827 = fmul float %171, %172
  store float %mul827, float* %arrayidx823, align 4, !tbaa !7
  %add832 = add i64 %call, 584
  %arrayidx833 = getelementptr inbounds float, float* %b, i64 %add832
  %173 = load float, float* %arrayidx833, align 4, !tbaa !7
  %174 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul837 = fmul float %173, %174
  store float %mul837, float* %arrayidx833, align 4, !tbaa !7
  %add842 = add i64 %call, 592
  %arrayidx843 = getelementptr inbounds float, float* %b, i64 %add842
  %175 = load float, float* %arrayidx843, align 4, !tbaa !7
  %176 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul847 = fmul float %175, %176
  store float %mul847, float* %arrayidx843, align 4, !tbaa !7
  %add852 = add i64 %call, 600
  %arrayidx853 = getelementptr inbounds float, float* %b, i64 %add852
  %177 = load float, float* %arrayidx853, align 4, !tbaa !7
  %178 = load float, float* %arrayidx142, align 4, !tbaa !7
  %mul857 = fmul float %177, %178
  store float %mul857, float* %arrayidx853, align 4, !tbaa !7
  %add862 = add i64 %call, 608
  %arrayidx863 = getelementptr inbounds float, float* %b, i64 %add862
  %179 = load float, float* %arrayidx863, align 4, !tbaa !7
  %180 = load float, float* %arrayidx630, align 4, !tbaa !7
  %mul867 = fmul float %179, %180
  %181 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul871 = fmul float %mul867, %181
  store float %mul871, float* %arrayidx863, align 4, !tbaa !7
  %add876 = add i64 %call, 616
  %arrayidx877 = getelementptr inbounds float, float* %b, i64 %add876
  %182 = load float, float* %arrayidx877, align 4, !tbaa !7
  %add879 = add i64 %call, 72
  %arrayidx880 = getelementptr inbounds float, float* %a, i64 %add879
  %183 = load float, float* %arrayidx880, align 4, !tbaa !7
  %mul881 = fmul float %182, %183
  store float %mul881, float* %arrayidx877, align 4, !tbaa !7
  %add886 = add i64 %call, 624
  %arrayidx887 = getelementptr inbounds float, float* %b, i64 %add886
  %184 = load float, float* %arrayidx887, align 4, !tbaa !7
  %185 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul891 = fmul float %184, %185
  %186 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul895 = fmul float %mul891, %186
  store float %mul895, float* %arrayidx887, align 4, !tbaa !7
  %add900 = add i64 %call, 632
  %arrayidx901 = getelementptr inbounds float, float* %b, i64 %add900
  %187 = load float, float* %arrayidx901, align 4, !tbaa !7
  %188 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul905 = fmul float %187, %188
  store float %mul905, float* %arrayidx901, align 4, !tbaa !7
  %add910 = add i64 %call, 640
  %arrayidx911 = getelementptr inbounds float, float* %b, i64 %add910
  %189 = load float, float* %arrayidx911, align 4, !tbaa !7
  %190 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul915 = fmul float %189, %190
  store float %mul915, float* %arrayidx911, align 4, !tbaa !7
  %add920 = add i64 %call, 648
  %arrayidx921 = getelementptr inbounds float, float* %b, i64 %add920
  %191 = load float, float* %arrayidx921, align 4, !tbaa !7
  %192 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul925 = fmul float %191, %192
  store float %mul925, float* %arrayidx921, align 4, !tbaa !7
  %add930 = add i64 %call, 656
  %arrayidx931 = getelementptr inbounds float, float* %b, i64 %add930
  %193 = load float, float* %arrayidx931, align 4, !tbaa !7
  %194 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul935 = fmul float %193, %194
  %195 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul939 = fmul float %mul935, %195
  store float %mul939, float* %arrayidx931, align 4, !tbaa !7
  %add944 = add i64 %call, 664
  %arrayidx945 = getelementptr inbounds float, float* %b, i64 %add944
  %196 = load float, float* %arrayidx945, align 4, !tbaa !7
  %197 = load float, float* %arrayidx880, align 4, !tbaa !7
  %mul949 = fmul float %196, %197
  %198 = load float, float* %arrayidx104, align 4, !tbaa !7
  %mul953 = fmul float %mul949, %198
  store float %mul953, float* %arrayidx945, align 4, !tbaa !7
  %add958 = add i64 %call, 672
  %arrayidx959 = getelementptr inbounds float, float* %b, i64 %add958
  %199 = load float, float* %arrayidx959, align 4, !tbaa !7
  %200 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul963 = fmul float %199, %200
  store float %mul963, float* %arrayidx959, align 4, !tbaa !7
  %add968 = add i64 %call, 680
  %arrayidx969 = getelementptr inbounds float, float* %b, i64 %add968
  %201 = load float, float* %arrayidx969, align 4, !tbaa !7
  %202 = load float, float* %arrayidx880, align 4, !tbaa !7
  %mul973 = fmul float %201, %202
  %203 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul977 = fmul float %mul973, %203
  store float %mul977, float* %arrayidx969, align 4, !tbaa !7
  %add982 = add i64 %call, 688
  %arrayidx983 = getelementptr inbounds float, float* %b, i64 %add982
  %204 = load float, float* %arrayidx983, align 4, !tbaa !7
  %205 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul987 = fmul float %204, %205
  store float %mul987, float* %arrayidx983, align 4, !tbaa !7
  %add992 = add i64 %call, 696
  %arrayidx993 = getelementptr inbounds float, float* %b, i64 %add992
  %206 = load float, float* %arrayidx993, align 4, !tbaa !7
  %207 = load float, float* %arrayidx880, align 4, !tbaa !7
  %mul997 = fmul float %206, %207
  %208 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1001 = fmul float %mul997, %208
  store float %mul1001, float* %arrayidx993, align 4, !tbaa !7
  %add1006 = add i64 %call, 704
  %arrayidx1007 = getelementptr inbounds float, float* %b, i64 %add1006
  %209 = load float, float* %arrayidx1007, align 4, !tbaa !7
  %arrayidx1010 = getelementptr inbounds float, float* %a, i64 %add176
  %210 = load float, float* %arrayidx1010, align 4, !tbaa !7
  %mul1011 = fmul float %209, %210
  store float %mul1011, float* %arrayidx1007, align 4, !tbaa !7
  %add1016 = add i64 %call, 712
  %arrayidx1017 = getelementptr inbounds float, float* %b, i64 %add1016
  %211 = load float, float* %arrayidx1017, align 4, !tbaa !7
  %212 = load float, float* %arrayidx880, align 4, !tbaa !7
  %mul1021 = fmul float %211, %212
  store float %mul1021, float* %arrayidx1017, align 4, !tbaa !7
  %add1026 = add i64 %call, 720
  %arrayidx1027 = getelementptr inbounds float, float* %b, i64 %add1026
  %213 = load float, float* %arrayidx1027, align 4, !tbaa !7
  %arrayidx1030 = getelementptr inbounds float, float* %a, i64 %add124
  %214 = load float, float* %arrayidx1030, align 4, !tbaa !7
  %mul1031 = fmul float %213, %214
  %215 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1035 = fmul float %mul1031, %215
  store float %mul1035, float* %arrayidx1027, align 4, !tbaa !7
  %add1040 = add i64 %call, 728
  %arrayidx1041 = getelementptr inbounds float, float* %b, i64 %add1040
  %216 = load float, float* %arrayidx1041, align 4, !tbaa !7
  %217 = load float, float* %arrayidx1030, align 4, !tbaa !7
  %mul1045 = fmul float %216, %217
  %218 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1049 = fmul float %mul1045, %218
  store float %mul1049, float* %arrayidx1041, align 4, !tbaa !7
  %add1054 = add i64 %call, 736
  %arrayidx1055 = getelementptr inbounds float, float* %b, i64 %add1054
  %219 = load float, float* %arrayidx1055, align 4, !tbaa !7
  %arrayidx1058 = getelementptr inbounds float, float* %a, i64 %add138
  %220 = load float, float* %arrayidx1058, align 4, !tbaa !7
  %mul1059 = fmul float %219, %220
  store float %mul1059, float* %arrayidx1055, align 4, !tbaa !7
  %add1064 = add i64 %call, 744
  %arrayidx1065 = getelementptr inbounds float, float* %b, i64 %add1064
  %221 = load float, float* %arrayidx1065, align 4, !tbaa !7
  %222 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1069 = fmul float %221, %222
  store float %mul1069, float* %arrayidx1065, align 4, !tbaa !7
  %add1074 = add i64 %call, 752
  %arrayidx1075 = getelementptr inbounds float, float* %b, i64 %add1074
  %223 = load float, float* %arrayidx1075, align 4, !tbaa !7
  %224 = load float, float* %arrayidx1030, align 4, !tbaa !7
  %mul1079 = fmul float %223, %224
  %225 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1083 = fmul float %mul1079, %225
  store float %mul1083, float* %arrayidx1075, align 4, !tbaa !7
  %add1088 = add i64 %call, 760
  %arrayidx1089 = getelementptr inbounds float, float* %b, i64 %add1088
  %226 = load float, float* %arrayidx1089, align 4, !tbaa !7
  %227 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul1093 = fmul float %226, %227
  %228 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul1097 = fmul float %mul1093, %228
  store float %mul1097, float* %arrayidx1089, align 4, !tbaa !7
  %add1102 = add i64 %call, 768
  %arrayidx1103 = getelementptr inbounds float, float* %b, i64 %add1102
  %229 = load float, float* %arrayidx1103, align 4, !tbaa !7
  %230 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul1107 = fmul float %229, %230
  %231 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1111 = fmul float %mul1107, %231
  store float %mul1111, float* %arrayidx1103, align 4, !tbaa !7
  %add1116 = add i64 %call, 776
  %arrayidx1117 = getelementptr inbounds float, float* %b, i64 %add1116
  %232 = load float, float* %arrayidx1117, align 4, !tbaa !7
  %233 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul1121 = fmul float %232, %233
  store float %mul1121, float* %arrayidx1117, align 4, !tbaa !7
  %add1126 = add i64 %call, 784
  %arrayidx1127 = getelementptr inbounds float, float* %b, i64 %add1126
  %234 = load float, float* %arrayidx1127, align 4, !tbaa !7
  %235 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul1131 = fmul float %234, %235
  %236 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1135 = fmul float %mul1131, %236
  store float %mul1135, float* %arrayidx1127, align 4, !tbaa !7
  %add1140 = add i64 %call, 792
  %arrayidx1141 = getelementptr inbounds float, float* %b, i64 %add1140
  %237 = load float, float* %arrayidx1141, align 4, !tbaa !7
  %238 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul1145 = fmul float %237, %238
  %239 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul1149 = fmul float %mul1145, %239
  store float %mul1149, float* %arrayidx1141, align 4, !tbaa !7
  %add1154 = add i64 %call, 800
  %arrayidx1155 = getelementptr inbounds float, float* %b, i64 %add1154
  %240 = load float, float* %arrayidx1155, align 4, !tbaa !7
  %241 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul1159 = fmul float %240, %241
  %242 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul1163 = fmul float %mul1159, %242
  store float %mul1163, float* %arrayidx1155, align 4, !tbaa !7
  %add1168 = add i64 %call, 808
  %arrayidx1169 = getelementptr inbounds float, float* %b, i64 %add1168
  %243 = load float, float* %arrayidx1169, align 4, !tbaa !7
  %244 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul1173 = fmul float %243, %244
  %245 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul1177 = fmul float %mul1173, %245
  store float %mul1177, float* %arrayidx1169, align 4, !tbaa !7
  %add1182 = add i64 %call, 816
  %arrayidx1183 = getelementptr inbounds float, float* %b, i64 %add1182
  %246 = load float, float* %arrayidx1183, align 4, !tbaa !7
  %247 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul1187 = fmul float %246, %247
  %248 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1191 = fmul float %mul1187, %248
  store float %mul1191, float* %arrayidx1183, align 4, !tbaa !7
  %add1196 = add i64 %call, 824
  %arrayidx1197 = getelementptr inbounds float, float* %b, i64 %add1196
  %249 = load float, float* %arrayidx1197, align 4, !tbaa !7
  %250 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul1201 = fmul float %249, %250
  %251 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul1205 = fmul float %mul1201, %251
  store float %mul1205, float* %arrayidx1197, align 4, !tbaa !7
  %add1210 = add i64 %call, 832
  %arrayidx1211 = getelementptr inbounds float, float* %b, i64 %add1210
  %252 = load float, float* %arrayidx1211, align 4, !tbaa !7
  %253 = load float, float* %arrayidx1030, align 4, !tbaa !7
  %mul1215 = fmul float %252, %253
  %254 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1219 = fmul float %mul1215, %254
  store float %mul1219, float* %arrayidx1211, align 4, !tbaa !7
  %add1224 = add i64 %call, 840
  %arrayidx1225 = getelementptr inbounds float, float* %b, i64 %add1224
  %255 = load float, float* %arrayidx1225, align 4, !tbaa !7
  %256 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul1229 = fmul float %255, %256
  %mul1233 = fmul float %256, %mul1229
  store float %mul1233, float* %arrayidx1225, align 4, !tbaa !7
  %add1238 = add i64 %call, 848
  %arrayidx1239 = getelementptr inbounds float, float* %b, i64 %add1238
  %257 = load float, float* %arrayidx1239, align 4, !tbaa !7
  %258 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul1243 = fmul float %257, %258
  %mul1247 = fmul float %258, %mul1243
  store float %mul1247, float* %arrayidx1239, align 4, !tbaa !7
  %add1252 = add i64 %call, 856
  %arrayidx1253 = getelementptr inbounds float, float* %b, i64 %add1252
  %259 = load float, float* %arrayidx1253, align 4, !tbaa !7
  %260 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1257 = fmul float %259, %260
  store float %mul1257, float* %arrayidx1253, align 4, !tbaa !7
  %add1262 = add i64 %call, 864
  %arrayidx1263 = getelementptr inbounds float, float* %b, i64 %add1262
  %261 = load float, float* %arrayidx1263, align 4, !tbaa !7
  %262 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1267 = fmul float %261, %262
  %263 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1271 = fmul float %mul1267, %263
  %mul1275 = fmul float %263, %mul1271
  store float %mul1275, float* %arrayidx1263, align 4, !tbaa !7
  %add1280 = add i64 %call, 872
  %arrayidx1281 = getelementptr inbounds float, float* %b, i64 %add1280
  %264 = load float, float* %arrayidx1281, align 4, !tbaa !7
  %265 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1285 = fmul float %264, %265
  %266 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1289 = fmul float %mul1285, %266
  %mul1293 = fmul float %266, %mul1289
  store float %mul1293, float* %arrayidx1281, align 4, !tbaa !7
  %add1298 = add i64 %call, 880
  %arrayidx1299 = getelementptr inbounds float, float* %b, i64 %add1298
  %267 = load float, float* %arrayidx1299, align 4, !tbaa !7
  %268 = load float, float* %arrayidx640, align 4, !tbaa !7
  %mul1303 = fmul float %267, %268
  %269 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1307 = fmul float %mul1303, %269
  store float %mul1307, float* %arrayidx1299, align 4, !tbaa !7
  %add1312 = add i64 %call, 888
  %arrayidx1313 = getelementptr inbounds float, float* %b, i64 %add1312
  %270 = load float, float* %arrayidx1313, align 4, !tbaa !7
  %271 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1317 = fmul float %270, %271
  store float %mul1317, float* %arrayidx1313, align 4, !tbaa !7
  %add1322 = add i64 %call, 896
  %arrayidx1323 = getelementptr inbounds float, float* %b, i64 %add1322
  %272 = load float, float* %arrayidx1323, align 4, !tbaa !7
  %273 = load float, float* %arrayidx640, align 4, !tbaa !7
  %mul1327 = fmul float %272, %273
  %274 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1331 = fmul float %mul1327, %274
  %mul1335 = fmul float %274, %mul1331
  store float %mul1335, float* %arrayidx1323, align 4, !tbaa !7
  %add1340 = add i64 %call, 912
  %arrayidx1341 = getelementptr inbounds float, float* %b, i64 %add1340
  %275 = load float, float* %arrayidx1341, align 4, !tbaa !7
  %276 = load float, float* %arrayidx640, align 4, !tbaa !7
  %mul1345 = fmul float %275, %276
  %277 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1349 = fmul float %mul1345, %277
  store float %mul1349, float* %arrayidx1341, align 4, !tbaa !7
  %add1354 = add i64 %call, 920
  %arrayidx1355 = getelementptr inbounds float, float* %b, i64 %add1354
  %278 = load float, float* %arrayidx1355, align 4, !tbaa !7
  %279 = load float, float* %arrayidx430, align 4, !tbaa !7
  %mul1359 = fmul float %278, %279
  %280 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1363 = fmul float %mul1359, %280
  store float %mul1363, float* %arrayidx1355, align 4, !tbaa !7
  %add1368 = add i64 %call, 928
  %arrayidx1369 = getelementptr inbounds float, float* %b, i64 %add1368
  %281 = load float, float* %arrayidx1369, align 4, !tbaa !7
  %282 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1373 = fmul float %281, %282
  store float %mul1373, float* %arrayidx1369, align 4, !tbaa !7
  %add1378 = add i64 %call, 936
  %arrayidx1379 = getelementptr inbounds float, float* %b, i64 %add1378
  %283 = load float, float* %arrayidx1379, align 4, !tbaa !7
  %284 = load float, float* %arrayidx630, align 4, !tbaa !7
  %mul1383 = fmul float %283, %284
  %285 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1387 = fmul float %mul1383, %285
  store float %mul1387, float* %arrayidx1379, align 4, !tbaa !7
  %add1392 = add i64 %call, 944
  %arrayidx1393 = getelementptr inbounds float, float* %b, i64 %add1392
  %286 = load float, float* %arrayidx1393, align 4, !tbaa !7
  %287 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul1397 = fmul float %286, %287
  %288 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1401 = fmul float %mul1397, %288
  store float %mul1401, float* %arrayidx1393, align 4, !tbaa !7
  %add1406 = add i64 %call, 952
  %arrayidx1407 = getelementptr inbounds float, float* %b, i64 %add1406
  %289 = load float, float* %arrayidx1407, align 4, !tbaa !7
  %290 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1411 = fmul float %289, %290
  store float %mul1411, float* %arrayidx1407, align 4, !tbaa !7
  %add1416 = add i64 %call, 968
  %arrayidx1417 = getelementptr inbounds float, float* %b, i64 %add1416
  %291 = load float, float* %arrayidx1417, align 4, !tbaa !7
  %292 = load float, float* %arrayidx640, align 4, !tbaa !7
  %mul1421 = fmul float %291, %292
  %293 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1425 = fmul float %mul1421, %293
  store float %mul1425, float* %arrayidx1417, align 4, !tbaa !7
  %add1430 = add i64 %call, 976
  %arrayidx1431 = getelementptr inbounds float, float* %b, i64 %add1430
  %294 = load float, float* %arrayidx1431, align 4, !tbaa !7
  %295 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1435 = fmul float %294, %295
  store float %mul1435, float* %arrayidx1431, align 4, !tbaa !7
  %add1440 = add i64 %call, 984
  %arrayidx1441 = getelementptr inbounds float, float* %b, i64 %add1440
  %296 = load float, float* %arrayidx1441, align 4, !tbaa !7
  %297 = load float, float* %arrayidx630, align 4, !tbaa !7
  %mul1445 = fmul float %296, %297
  %298 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1449 = fmul float %mul1445, %298
  store float %mul1449, float* %arrayidx1441, align 4, !tbaa !7
  %add1454 = add i64 %call, 992
  %arrayidx1455 = getelementptr inbounds float, float* %b, i64 %add1454
  %299 = load float, float* %arrayidx1455, align 4, !tbaa !7
  %300 = load float, float* %arrayidx90, align 4, !tbaa !7
  %mul1459 = fmul float %299, %300
  store float %mul1459, float* %arrayidx1455, align 4, !tbaa !7
  %add1464 = add i64 %call, 1008
  %arrayidx1465 = getelementptr inbounds float, float* %b, i64 %add1464
  %301 = load float, float* %arrayidx1465, align 4, !tbaa !7
  %302 = load float, float* %arrayidx430, align 4, !tbaa !7
  %mul1469 = fmul float %301, %302
  %303 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul1473 = fmul float %mul1469, %303
  store float %mul1473, float* %arrayidx1465, align 4, !tbaa !7
  %add1478 = add i64 %call, 1016
  %arrayidx1479 = getelementptr inbounds float, float* %b, i64 %add1478
  %304 = load float, float* %arrayidx1479, align 4, !tbaa !7
  %305 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul1483 = fmul float %304, %305
  %306 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1487 = fmul float %mul1483, %306
  store float %mul1487, float* %arrayidx1479, align 4, !tbaa !7
  %add1492 = add i64 %call, 1024
  %arrayidx1493 = getelementptr inbounds float, float* %b, i64 %add1492
  %307 = load float, float* %arrayidx1493, align 4, !tbaa !7
  %308 = load float, float* %arrayidx430, align 4, !tbaa !7
  %mul1497 = fmul float %307, %308
  %309 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1501 = fmul float %mul1497, %309
  store float %mul1501, float* %arrayidx1493, align 4, !tbaa !7
  %add1506 = add i64 %call, 1032
  %arrayidx1507 = getelementptr inbounds float, float* %b, i64 %add1506
  %310 = load float, float* %arrayidx1507, align 4, !tbaa !7
  %311 = load float, float* %arrayidx90, align 4, !tbaa !7
  %mul1511 = fmul float %310, %311
  store float %mul1511, float* %arrayidx1507, align 4, !tbaa !7
  %add1516 = add i64 %call, 1040
  %arrayidx1517 = getelementptr inbounds float, float* %b, i64 %add1516
  %312 = load float, float* %arrayidx1517, align 4, !tbaa !7
  %313 = load float, float* %arrayidx430, align 4, !tbaa !7
  %mul1521 = fmul float %312, %313
  %314 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul1525 = fmul float %mul1521, %314
  store float %mul1525, float* %arrayidx1517, align 4, !tbaa !7
  %add1530 = add i64 %call, 1048
  %arrayidx1531 = getelementptr inbounds float, float* %b, i64 %add1530
  %315 = load float, float* %arrayidx1531, align 4, !tbaa !7
  %316 = load float, float* %arrayidx1030, align 4, !tbaa !7
  %mul1535 = fmul float %315, %316
  store float %mul1535, float* %arrayidx1531, align 4, !tbaa !7
  %add1540 = add i64 %call, 1056
  %arrayidx1541 = getelementptr inbounds float, float* %b, i64 %add1540
  %317 = load float, float* %arrayidx1541, align 4, !tbaa !7
  %318 = load float, float* %arrayidx640, align 4, !tbaa !7
  %mul1545 = fmul float %317, %318
  %319 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul1549 = fmul float %mul1545, %319
  store float %mul1549, float* %arrayidx1541, align 4, !tbaa !7
  %add1554 = add i64 %call, 1064
  %arrayidx1555 = getelementptr inbounds float, float* %b, i64 %add1554
  %320 = load float, float* %arrayidx1555, align 4, !tbaa !7
  %321 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul1559 = fmul float %320, %321
  store float %mul1559, float* %arrayidx1555, align 4, !tbaa !7
  %add1564 = add i64 %call, 1072
  %arrayidx1565 = getelementptr inbounds float, float* %b, i64 %add1564
  %322 = load float, float* %arrayidx1565, align 4, !tbaa !7
  %323 = load float, float* %arrayidx630, align 4, !tbaa !7
  %mul1569 = fmul float %322, %323
  %324 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1573 = fmul float %mul1569, %324
  store float %mul1573, float* %arrayidx1565, align 4, !tbaa !7
  %add1578 = add i64 %call, 1080
  %arrayidx1579 = getelementptr inbounds float, float* %b, i64 %add1578
  %325 = load float, float* %arrayidx1579, align 4, !tbaa !7
  %326 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul1583 = fmul float %325, %326
  %327 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1587 = fmul float %mul1583, %327
  store float %mul1587, float* %arrayidx1579, align 4, !tbaa !7
  %add1592 = add i64 %call, 1088
  %arrayidx1593 = getelementptr inbounds float, float* %b, i64 %add1592
  %328 = load float, float* %arrayidx1593, align 4, !tbaa !7
  %329 = load float, float* %arrayidx640, align 4, !tbaa !7
  %mul1597 = fmul float %328, %329
  %330 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul1601 = fmul float %mul1597, %330
  store float %mul1601, float* %arrayidx1593, align 4, !tbaa !7
  %add1606 = add i64 %call, 1096
  %arrayidx1607 = getelementptr inbounds float, float* %b, i64 %add1606
  %331 = load float, float* %arrayidx1607, align 4, !tbaa !7
  %332 = load float, float* %arrayidx640, align 4, !tbaa !7
  %mul1611 = fmul float %331, %332
  %333 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul1615 = fmul float %mul1611, %333
  store float %mul1615, float* %arrayidx1607, align 4, !tbaa !7
  %add1620 = add i64 %call, 1104
  %arrayidx1621 = getelementptr inbounds float, float* %b, i64 %add1620
  %334 = load float, float* %arrayidx1621, align 4, !tbaa !7
  %335 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1625 = fmul float %334, %335
  store float %mul1625, float* %arrayidx1621, align 4, !tbaa !7
  %add1630 = add i64 %call, 1112
  %arrayidx1631 = getelementptr inbounds float, float* %b, i64 %add1630
  %336 = load float, float* %arrayidx1631, align 4, !tbaa !7
  %337 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul1635 = fmul float %336, %337
  store float %mul1635, float* %arrayidx1631, align 4, !tbaa !7
  %add1640 = add i64 %call, 1120
  %arrayidx1641 = getelementptr inbounds float, float* %b, i64 %add1640
  %338 = load float, float* %arrayidx1641, align 4, !tbaa !7
  %339 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1645 = fmul float %338, %339
  store float %mul1645, float* %arrayidx1641, align 4, !tbaa !7
  %add1650 = add i64 %call, 1128
  %arrayidx1651 = getelementptr inbounds float, float* %b, i64 %add1650
  %340 = load float, float* %arrayidx1651, align 4, !tbaa !7
  %341 = load float, float* %arrayidx1030, align 4, !tbaa !7
  %mul1655 = fmul float %340, %341
  %342 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul1659 = fmul float %mul1655, %342
  store float %mul1659, float* %arrayidx1651, align 4, !tbaa !7
  %add1664 = add i64 %call, 1136
  %arrayidx1665 = getelementptr inbounds float, float* %b, i64 %add1664
  %343 = load float, float* %arrayidx1665, align 4, !tbaa !7
  %344 = load float, float* %arrayidx1030, align 4, !tbaa !7
  %mul1669 = fmul float %343, %344
  %345 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1673 = fmul float %mul1669, %345
  store float %mul1673, float* %arrayidx1665, align 4, !tbaa !7
  %add1678 = add i64 %call, 1144
  %arrayidx1679 = getelementptr inbounds float, float* %b, i64 %add1678
  %346 = load float, float* %arrayidx1679, align 4, !tbaa !7
  %347 = load float, float* %arrayidx640, align 4, !tbaa !7
  %mul1683 = fmul float %346, %347
  %348 = load float, float* %arrayidx880, align 4, !tbaa !7
  %mul1687 = fmul float %mul1683, %348
  store float %mul1687, float* %arrayidx1679, align 4, !tbaa !7
  %add1692 = add i64 %call, 1152
  %arrayidx1693 = getelementptr inbounds float, float* %b, i64 %add1692
  %349 = load float, float* %arrayidx1693, align 4, !tbaa !7
  %arrayidx1696 = getelementptr inbounds float, float* %a, i64 %add204
  %350 = load float, float* %arrayidx1696, align 4, !tbaa !7
  %mul1697 = fmul float %349, %350
  store float %mul1697, float* %arrayidx1693, align 4, !tbaa !7
  %add1702 = add i64 %call, 1160
  %arrayidx1703 = getelementptr inbounds float, float* %b, i64 %add1702
  %351 = load float, float* %arrayidx1703, align 4, !tbaa !7
  %arrayidx1706 = getelementptr inbounds float, float* %a, i64 %add190
  %352 = load float, float* %arrayidx1706, align 4, !tbaa !7
  %mul1707 = fmul float %351, %352
  %353 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1711 = fmul float %mul1707, %353
  store float %mul1711, float* %arrayidx1703, align 4, !tbaa !7
  %add1716 = add i64 %call, 1168
  %arrayidx1717 = getelementptr inbounds float, float* %b, i64 %add1716
  %354 = load float, float* %arrayidx1717, align 4, !tbaa !7
  %355 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul1721 = fmul float %354, %355
  %356 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1725 = fmul float %mul1721, %356
  store float %mul1725, float* %arrayidx1717, align 4, !tbaa !7
  %add1730 = add i64 %call, 1176
  %arrayidx1731 = getelementptr inbounds float, float* %b, i64 %add1730
  %357 = load float, float* %arrayidx1731, align 4, !tbaa !7
  %358 = load float, float* %arrayidx1010, align 4, !tbaa !7
  %mul1735 = fmul float %357, %358
  store float %mul1735, float* %arrayidx1731, align 4, !tbaa !7
  %add1740 = add i64 %call, 1184
  %arrayidx1741 = getelementptr inbounds float, float* %b, i64 %add1740
  %359 = load float, float* %arrayidx1741, align 4, !tbaa !7
  %360 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul1745 = fmul float %359, %360
  store float %mul1745, float* %arrayidx1741, align 4, !tbaa !7
  %add1750 = add i64 %call, 1192
  %arrayidx1751 = getelementptr inbounds float, float* %b, i64 %add1750
  %361 = load float, float* %arrayidx1751, align 4, !tbaa !7
  %362 = load float, float* %arrayidx630, align 4, !tbaa !7
  %mul1755 = fmul float %361, %362
  %363 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul1759 = fmul float %mul1755, %363
  store float %mul1759, float* %arrayidx1751, align 4, !tbaa !7
  %add1764 = add i64 %call, 1200
  %arrayidx1765 = getelementptr inbounds float, float* %b, i64 %add1764
  %364 = load float, float* %arrayidx1765, align 4, !tbaa !7
  %365 = load float, float* %arrayidx630, align 4, !tbaa !7
  %mul1769 = fmul float %364, %365
  %366 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1773 = fmul float %mul1769, %366
  store float %mul1773, float* %arrayidx1765, align 4, !tbaa !7
  %add1778 = add i64 %call, 1208
  %arrayidx1779 = getelementptr inbounds float, float* %b, i64 %add1778
  %367 = load float, float* %arrayidx1779, align 4, !tbaa !7
  %368 = load float, float* %arrayidx630, align 4, !tbaa !7
  %mul1783 = fmul float %367, %368
  %369 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul1787 = fmul float %mul1783, %369
  store float %mul1787, float* %arrayidx1779, align 4, !tbaa !7
  %add1792 = add i64 %call, 1216
  %arrayidx1793 = getelementptr inbounds float, float* %b, i64 %add1792
  %370 = load float, float* %arrayidx1793, align 4, !tbaa !7
  %371 = load float, float* %arrayidx630, align 4, !tbaa !7
  %mul1797 = fmul float %370, %371
  %372 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul1801 = fmul float %mul1797, %372
  store float %mul1801, float* %arrayidx1793, align 4, !tbaa !7
  %add1806 = add i64 %call, 1224
  %arrayidx1807 = getelementptr inbounds float, float* %b, i64 %add1806
  %373 = load float, float* %arrayidx1807, align 4, !tbaa !7
  %374 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul1811 = fmul float %373, %374
  %375 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1815 = fmul float %mul1811, %375
  %376 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1819 = fmul float %mul1815, %376
  store float %mul1819, float* %arrayidx1807, align 4, !tbaa !7
  %add1824 = add i64 %call, 1232
  %arrayidx1825 = getelementptr inbounds float, float* %b, i64 %add1824
  %377 = load float, float* %arrayidx1825, align 4, !tbaa !7
  %378 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul1829 = fmul float %377, %378
  store float %mul1829, float* %arrayidx1825, align 4, !tbaa !7
  %add1834 = add i64 %call, 1248
  %arrayidx1835 = getelementptr inbounds float, float* %b, i64 %add1834
  %379 = load float, float* %arrayidx1835, align 4, !tbaa !7
  %380 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul1839 = fmul float %379, %380
  store float %mul1839, float* %arrayidx1835, align 4, !tbaa !7
  %add1844 = add i64 %call, 1256
  %arrayidx1845 = getelementptr inbounds float, float* %b, i64 %add1844
  %381 = load float, float* %arrayidx1845, align 4, !tbaa !7
  %382 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1849 = fmul float %381, %382
  store float %mul1849, float* %arrayidx1845, align 4, !tbaa !7
  %add1854 = add i64 %call, 1264
  %arrayidx1855 = getelementptr inbounds float, float* %b, i64 %add1854
  %383 = load float, float* %arrayidx1855, align 4, !tbaa !7
  %384 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul1859 = fmul float %383, %384
  store float %mul1859, float* %arrayidx1855, align 4, !tbaa !7
  %add1864 = add i64 %call, 1272
  %arrayidx1865 = getelementptr inbounds float, float* %b, i64 %add1864
  %385 = load float, float* %arrayidx1865, align 4, !tbaa !7
  %386 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul1869 = fmul float %385, %386
  store float %mul1869, float* %arrayidx1865, align 4, !tbaa !7
  %add1874 = add i64 %call, 1280
  %arrayidx1875 = getelementptr inbounds float, float* %b, i64 %add1874
  %387 = load float, float* %arrayidx1875, align 4, !tbaa !7
  %388 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul1879 = fmul float %387, %388
  store float %mul1879, float* %arrayidx1875, align 4, !tbaa !7
  %add1884 = add i64 %call, 1288
  %arrayidx1885 = getelementptr inbounds float, float* %b, i64 %add1884
  %389 = load float, float* %arrayidx1885, align 4, !tbaa !7
  %390 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul1889 = fmul float %389, %390
  store float %mul1889, float* %arrayidx1885, align 4, !tbaa !7
  %add1894 = add i64 %call, 1296
  %arrayidx1895 = getelementptr inbounds float, float* %b, i64 %add1894
  %391 = load float, float* %arrayidx1895, align 4, !tbaa !7
  %392 = load float, float* %arrayidx1010, align 4, !tbaa !7
  %mul1899 = fmul float %391, %392
  %393 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1903 = fmul float %mul1899, %393
  store float %mul1903, float* %arrayidx1895, align 4, !tbaa !7
  %add1908 = add i64 %call, 1304
  %arrayidx1909 = getelementptr inbounds float, float* %b, i64 %add1908
  %394 = load float, float* %arrayidx1909, align 4, !tbaa !7
  %395 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul1913 = fmul float %394, %395
  store float %mul1913, float* %arrayidx1909, align 4, !tbaa !7
  %add1918 = add i64 %call, 1312
  %arrayidx1919 = getelementptr inbounds float, float* %b, i64 %add1918
  %396 = load float, float* %arrayidx1919, align 4, !tbaa !7
  %397 = load float, float* %arrayidx1706, align 4, !tbaa !7
  %mul1923 = fmul float %396, %397
  %398 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1927 = fmul float %mul1923, %398
  store float %mul1927, float* %arrayidx1919, align 4, !tbaa !7
  %add1932 = add i64 %call, 1320
  %arrayidx1933 = getelementptr inbounds float, float* %b, i64 %add1932
  %399 = load float, float* %arrayidx1933, align 4, !tbaa !7
  %400 = load float, float* %arrayidx880, align 4, !tbaa !7
  %mul1937 = fmul float %399, %400
  store float %mul1937, float* %arrayidx1933, align 4, !tbaa !7
  %add1942 = add i64 %call, 1328
  %arrayidx1943 = getelementptr inbounds float, float* %b, i64 %add1942
  %401 = load float, float* %arrayidx1943, align 4, !tbaa !7
  %402 = load float, float* %arrayidx1706, align 4, !tbaa !7
  %mul1947 = fmul float %401, %402
  %403 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1951 = fmul float %mul1947, %403
  store float %mul1951, float* %arrayidx1943, align 4, !tbaa !7
  %add1956 = add i64 %call, 1336
  %arrayidx1957 = getelementptr inbounds float, float* %b, i64 %add1956
  %404 = load float, float* %arrayidx1957, align 4, !tbaa !7
  %405 = load float, float* %arrayidx880, align 4, !tbaa !7
  %mul1961 = fmul float %404, %405
  store float %mul1961, float* %arrayidx1957, align 4, !tbaa !7
  %add1966 = add i64 %call, 1352
  %arrayidx1967 = getelementptr inbounds float, float* %b, i64 %add1966
  %406 = load float, float* %arrayidx1967, align 4, !tbaa !7
  %407 = load float, float* %arrayidx1058, align 4, !tbaa !7
  %mul1971 = fmul float %406, %407
  store float %mul1971, float* %arrayidx1967, align 4, !tbaa !7
  %add1976 = add i64 %call, 1360
  %arrayidx1977 = getelementptr inbounds float, float* %b, i64 %add1976
  %408 = load float, float* %arrayidx1977, align 4, !tbaa !7
  %409 = load float, float* %arrayidx1030, align 4, !tbaa !7
  %mul1981 = fmul float %408, %409
  %410 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul1985 = fmul float %mul1981, %410
  store float %mul1985, float* %arrayidx1977, align 4, !tbaa !7
  %add1990 = add i64 %call, 1368
  %arrayidx1991 = getelementptr inbounds float, float* %b, i64 %add1990
  %411 = load float, float* %arrayidx1991, align 4, !tbaa !7
  %412 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul1995 = fmul float %411, %412
  %413 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul1999 = fmul float %mul1995, %413
  store float %mul1999, float* %arrayidx1991, align 4, !tbaa !7
  %add2004 = add i64 %call, 1376
  %arrayidx2005 = getelementptr inbounds float, float* %b, i64 %add2004
  %414 = load float, float* %arrayidx2005, align 4, !tbaa !7
  %415 = load float, float* %arrayidx1010, align 4, !tbaa !7
  %mul2009 = fmul float %414, %415
  %416 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul2013 = fmul float %mul2009, %416
  store float %mul2013, float* %arrayidx2005, align 4, !tbaa !7
  %add2018 = add i64 %call, 1384
  %arrayidx2019 = getelementptr inbounds float, float* %b, i64 %add2018
  %417 = load float, float* %arrayidx2019, align 4, !tbaa !7
  %418 = load float, float* %arrayidx1030, align 4, !tbaa !7
  %mul2023 = fmul float %417, %418
  %419 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul2027 = fmul float %mul2023, %419
  store float %mul2027, float* %arrayidx2019, align 4, !tbaa !7
  %add2032 = add i64 %call, 1392
  %arrayidx2033 = getelementptr inbounds float, float* %b, i64 %add2032
  %420 = load float, float* %arrayidx2033, align 4, !tbaa !7
  %421 = load float, float* %arrayidx1058, align 4, !tbaa !7
  %mul2037 = fmul float %420, %421
  %422 = load float, float* %arrayidx104, align 4, !tbaa !7
  %mul2041 = fmul float %mul2037, %422
  store float %mul2041, float* %arrayidx2033, align 4, !tbaa !7
  %add2046 = add i64 %call, 1400
  %arrayidx2047 = getelementptr inbounds float, float* %b, i64 %add2046
  %423 = load float, float* %arrayidx2047, align 4, !tbaa !7
  %424 = load float, float* %arrayidx1030, align 4, !tbaa !7
  %mul2051 = fmul float %423, %424
  %425 = load float, float* %arrayidx142, align 4, !tbaa !7
  %mul2055 = fmul float %mul2051, %425
  store float %mul2055, float* %arrayidx2047, align 4, !tbaa !7
  %add2060 = add i64 %call, 1408
  %arrayidx2061 = getelementptr inbounds float, float* %b, i64 %add2060
  %426 = load float, float* %arrayidx2061, align 4, !tbaa !7
  %427 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul2065 = fmul float %426, %427
  %428 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul2069 = fmul float %mul2065, %428
  %429 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul2073 = fmul float %mul2069, %429
  store float %mul2073, float* %arrayidx2061, align 4, !tbaa !7
  %add2078 = add i64 %call, 1416
  %arrayidx2079 = getelementptr inbounds float, float* %b, i64 %add2078
  %430 = load float, float* %arrayidx2079, align 4, !tbaa !7
  %431 = load float, float* %arrayidx1058, align 4, !tbaa !7
  %mul2083 = fmul float %430, %431
  %432 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul2087 = fmul float %mul2083, %432
  store float %mul2087, float* %arrayidx2079, align 4, !tbaa !7
  %add2092 = add i64 %call, 1424
  %arrayidx2093 = getelementptr inbounds float, float* %b, i64 %add2092
  %433 = load float, float* %arrayidx2093, align 4, !tbaa !7
  %434 = load float, float* %arrayidx1058, align 4, !tbaa !7
  %mul2097 = fmul float %433, %434
  %435 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul2101 = fmul float %mul2097, %435
  store float %mul2101, float* %arrayidx2093, align 4, !tbaa !7
  %add2106 = add i64 %call, 1432
  %arrayidx2107 = getelementptr inbounds float, float* %b, i64 %add2106
  %436 = load float, float* %arrayidx2107, align 4, !tbaa !7
  %437 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul2111 = fmul float %436, %437
  store float %mul2111, float* %arrayidx2107, align 4, !tbaa !7
  %add2116 = add i64 %call, 1440
  %arrayidx2117 = getelementptr inbounds float, float* %b, i64 %add2116
  %438 = load float, float* %arrayidx2117, align 4, !tbaa !7
  %439 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul2121 = fmul float %438, %439
  store float %mul2121, float* %arrayidx2117, align 4, !tbaa !7
  %add2126 = add i64 %call, 1448
  %arrayidx2127 = getelementptr inbounds float, float* %b, i64 %add2126
  %440 = load float, float* %arrayidx2127, align 4, !tbaa !7
  %441 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul2131 = fmul float %440, %441
  store float %mul2131, float* %arrayidx2127, align 4, !tbaa !7
  %add2136 = add i64 %call, 1456
  %arrayidx2137 = getelementptr inbounds float, float* %b, i64 %add2136
  %442 = load float, float* %arrayidx2137, align 4, !tbaa !7
  %443 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul2141 = fmul float %442, %443
  store float %mul2141, float* %arrayidx2137, align 4, !tbaa !7
  %add2146 = add i64 %call, 1464
  %arrayidx2147 = getelementptr inbounds float, float* %b, i64 %add2146
  %444 = load float, float* %arrayidx2147, align 4, !tbaa !7
  %445 = load float, float* %arrayidx880, align 4, !tbaa !7
  %mul2151 = fmul float %444, %445
  store float %mul2151, float* %arrayidx2147, align 4, !tbaa !7
  %add2156 = add i64 %call, 1472
  %arrayidx2157 = getelementptr inbounds float, float* %b, i64 %add2156
  %446 = load float, float* %arrayidx2157, align 4, !tbaa !7
  %447 = load float, float* %arrayidx1696, align 4, !tbaa !7
  %mul2161 = fmul float %446, %447
  store float %mul2161, float* %arrayidx2157, align 4, !tbaa !7
  %add2166 = add i64 %call, 1480
  %arrayidx2167 = getelementptr inbounds float, float* %b, i64 %add2166
  %448 = load float, float* %arrayidx2167, align 4, !tbaa !7
  %449 = load float, float* %arrayidx880, align 4, !tbaa !7
  %mul2171 = fmul float %448, %449
  store float %mul2171, float* %arrayidx2167, align 4, !tbaa !7
  %add2176 = add i64 %call, 1488
  %arrayidx2177 = getelementptr inbounds float, float* %b, i64 %add2176
  %450 = load float, float* %arrayidx2177, align 4, !tbaa !7
  %451 = load float, float* %arrayidx1696, align 4, !tbaa !7
  %mul2181 = fmul float %450, %451
  %452 = load float, float* %arrayidx104, align 4, !tbaa !7
  %mul2185 = fmul float %mul2181, %452
  store float %mul2185, float* %arrayidx2177, align 4, !tbaa !7
  %add2190 = add i64 %call, 1496
  %arrayidx2191 = getelementptr inbounds float, float* %b, i64 %add2190
  %453 = load float, float* %arrayidx2191, align 4, !tbaa !7
  %454 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul2195 = fmul float %453, %454
  %455 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul2199 = fmul float %mul2195, %455
  store float %mul2199, float* %arrayidx2191, align 4, !tbaa !7
  %add2204 = add i64 %call, 1504
  %arrayidx2205 = getelementptr inbounds float, float* %b, i64 %add2204
  %456 = load float, float* %arrayidx2205, align 4, !tbaa !7
  %457 = load float, float* %arrayidx1696, align 4, !tbaa !7
  %mul2209 = fmul float %456, %457
  %458 = load float, float* %arrayidx372, align 4, !tbaa !7
  %mul2213 = fmul float %mul2209, %458
  store float %mul2213, float* %arrayidx2205, align 4, !tbaa !7
  %add2218 = add i64 %call, 1520
  %arrayidx2219 = getelementptr inbounds float, float* %b, i64 %add2218
  %459 = load float, float* %arrayidx2219, align 4, !tbaa !7
  %460 = load float, float* %arrayidx1030, align 4, !tbaa !7
  %mul2223 = fmul float %459, %460
  %461 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul2227 = fmul float %mul2223, %461
  store float %mul2227, float* %arrayidx2219, align 4, !tbaa !7
  %add2232 = add i64 %call, 1528
  %arrayidx2233 = getelementptr inbounds float, float* %b, i64 %add2232
  %462 = load float, float* %arrayidx2233, align 4, !tbaa !7
  %463 = load float, float* %arrayidx1706, align 4, !tbaa !7
  %mul2237 = fmul float %462, %463
  %464 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul2241 = fmul float %mul2237, %464
  store float %mul2241, float* %arrayidx2233, align 4, !tbaa !7
  %add2246 = add i64 %call, 1536
  %arrayidx2247 = getelementptr inbounds float, float* %b, i64 %add2246
  %465 = load float, float* %arrayidx2247, align 4, !tbaa !7
  %466 = load float, float* %arrayidx630, align 4, !tbaa !7
  %mul2251 = fmul float %465, %466
  %467 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul2255 = fmul float %mul2251, %467
  %468 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul2259 = fmul float %mul2255, %468
  store float %mul2259, float* %arrayidx2247, align 4, !tbaa !7
  %add2264 = add i64 %call, 1552
  %arrayidx2265 = getelementptr inbounds float, float* %b, i64 %add2264
  %469 = load float, float* %arrayidx2265, align 4, !tbaa !7
  %470 = load float, float* %arrayidx1706, align 4, !tbaa !7
  %mul2269 = fmul float %469, %470
  %471 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul2273 = fmul float %mul2269, %471
  store float %mul2273, float* %arrayidx2265, align 4, !tbaa !7
  %add2278 = add i64 %call, 1560
  %arrayidx2279 = getelementptr inbounds float, float* %b, i64 %add2278
  %472 = load float, float* %arrayidx2279, align 4, !tbaa !7
  %473 = load float, float* %arrayidx1706, align 4, !tbaa !7
  %mul2283 = fmul float %472, %473
  %474 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul2287 = fmul float %mul2283, %474
  store float %mul2287, float* %arrayidx2279, align 4, !tbaa !7
  %add2292 = add i64 %call, 1568
  %arrayidx2293 = getelementptr inbounds float, float* %b, i64 %add2292
  %475 = load float, float* %arrayidx2293, align 4, !tbaa !7
  %476 = load float, float* %arrayidx1706, align 4, !tbaa !7
  %mul2297 = fmul float %475, %476
  %477 = load float, float* %arrayidx142, align 4, !tbaa !7
  %mul2301 = fmul float %mul2297, %477
  store float %mul2301, float* %arrayidx2293, align 4, !tbaa !7
  %add2306 = add i64 %call, 1576
  %arrayidx2307 = getelementptr inbounds float, float* %b, i64 %add2306
  %478 = load float, float* %arrayidx2307, align 4, !tbaa !7
  %479 = load float, float* %arrayidx1706, align 4, !tbaa !7
  %mul2311 = fmul float %478, %479
  %480 = load float, float* %arrayidx880, align 4, !tbaa !7
  %mul2315 = fmul float %mul2311, %480
  store float %mul2315, float* %arrayidx2307, align 4, !tbaa !7
  %add2320 = add i64 %call, 1584
  %arrayidx2321 = getelementptr inbounds float, float* %b, i64 %add2320
  %481 = load float, float* %arrayidx2321, align 4, !tbaa !7
  %482 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul2325 = fmul float %481, %482
  store float %mul2325, float* %arrayidx2321, align 4, !tbaa !7
  %add2330 = add i64 %call, 1592
  %arrayidx2331 = getelementptr inbounds float, float* %b, i64 %add2330
  %483 = load float, float* %arrayidx2331, align 4, !tbaa !7
  %484 = load float, float* %arrayidx1696, align 4, !tbaa !7
  %mul2335 = fmul float %483, %484
  %485 = load float, float* %arrayidx58, align 4, !tbaa !7
  %mul2339 = fmul float %mul2335, %485
  store float %mul2339, float* %arrayidx2331, align 4, !tbaa !7
  %add2344 = add i64 %call, 1600
  %arrayidx2345 = getelementptr inbounds float, float* %b, i64 %add2344
  %486 = load float, float* %arrayidx2345, align 4, !tbaa !7
  %487 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul2349 = fmul float %486, %487
  store float %mul2349, float* %arrayidx2345, align 4, !tbaa !7
  %add2354 = add i64 %call, 1608
  %arrayidx2355 = getelementptr inbounds float, float* %b, i64 %add2354
  %488 = load float, float* %arrayidx2355, align 4, !tbaa !7
  %489 = load float, float* %arrayidx1696, align 4, !tbaa !7
  %mul2359 = fmul float %488, %489
  %490 = load float, float* %arrayidx34, align 4, !tbaa !7
  %mul2363 = fmul float %mul2359, %490
  store float %mul2363, float* %arrayidx2355, align 4, !tbaa !7
  %add2368 = add i64 %call, 1616
  %arrayidx2369 = getelementptr inbounds float, float* %b, i64 %add2368
  %491 = load float, float* %arrayidx2369, align 4, !tbaa !7
  %492 = load float, float* %arrayidx1696, align 4, !tbaa !7
  %mul2373 = fmul float %491, %492
  %493 = load float, float* %arrayidx100, align 4, !tbaa !7
  %mul2377 = fmul float %mul2373, %493
  store float %mul2377, float* %arrayidx2369, align 4, !tbaa !7
  %add2382 = add i64 %call, 1624
  %arrayidx2383 = getelementptr inbounds float, float* %b, i64 %add2382
  %494 = load float, float* %arrayidx2383, align 4, !tbaa !7
  %495 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul2387 = fmul float %494, %495
  %496 = load float, float* %arrayidx334, align 4, !tbaa !7
  %mul2391 = fmul float %mul2387, %496
  store float %mul2391, float* %arrayidx2383, align 4, !tbaa !7
  %add2396 = add i64 %call, 1632
  %arrayidx2397 = getelementptr inbounds float, float* %b, i64 %add2396
  %497 = load float, float* %arrayidx2397, align 4, !tbaa !7
  %498 = load float, float* %arrayidx880, align 4, !tbaa !7
  %mul2401 = fmul float %497, %498
  %499 = load float, float* %arrayidx1696, align 4, !tbaa !7
  %mul2405 = fmul float %mul2401, %499
  store float %mul2405, float* %arrayidx2397, align 4, !tbaa !7
  %add2410 = add i64 %call, 1640
  %arrayidx2411 = getelementptr inbounds float, float* %b, i64 %add2410
  %500 = load float, float* %arrayidx2411, align 4, !tbaa !7
  %501 = load float, float* %arrayidx1706, align 4, !tbaa !7
  %mul2415 = fmul float %500, %501
  %502 = load float, float* %arrayidx530, align 4, !tbaa !7
  %mul2419 = fmul float %mul2415, %502
  store float %mul2419, float* %arrayidx2411, align 4, !tbaa !7
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1}
!4 = !{!"none", !"none"}
!5 = !{!"float*", !"float*"}
!6 = !{!"const", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
