; ModuleID = 'src/655.src'
source_filename = "src/655.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* readonly %a, float* %b) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %arrayidx = getelementptr inbounds float, float* %b, i64 %call
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %add2 = add i64 %call, 8
  %arrayidx3 = getelementptr inbounds float, float* %a, i64 %add2
  %1 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul = fmul float %0, %1
  %add5 = add i64 %call, 24
  %arrayidx6 = getelementptr inbounds float, float* %a, i64 %add5
  %2 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul7 = fmul float %mul, %2
  store float %mul7, float* %arrayidx, align 4, !tbaa !7
  %arrayidx13 = getelementptr inbounds float, float* %b, i64 %add2
  %3 = load float, float* %arrayidx13, align 4, !tbaa !7
  %add15 = add i64 %call, 16
  %arrayidx16 = getelementptr inbounds float, float* %a, i64 %add15
  %4 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul17 = fmul float %3, %4
  %arrayidx20 = getelementptr inbounds float, float* %a, i64 %call
  %5 = load float, float* %arrayidx20, align 4, !tbaa !7
  %mul21 = fmul float %mul17, %5
  store float %mul21, float* %arrayidx13, align 4, !tbaa !7
  %arrayidx27 = getelementptr inbounds float, float* %b, i64 %add15
  %6 = load float, float* %arrayidx27, align 4, !tbaa !7
  %add29 = add i64 %call, 32
  %arrayidx30 = getelementptr inbounds float, float* %a, i64 %add29
  %7 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul31 = fmul float %6, %7
  %8 = load float, float* %arrayidx20, align 4, !tbaa !7
  %mul35 = fmul float %mul31, %8
  store float %mul35, float* %arrayidx27, align 4, !tbaa !7
  %arrayidx41 = getelementptr inbounds float, float* %b, i64 %add5
  %9 = load float, float* %arrayidx41, align 4, !tbaa !7
  %10 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul45 = fmul float %9, %10
  %mul49 = fmul float %10, %mul45
  store float %mul49, float* %arrayidx41, align 4, !tbaa !7
  %add54 = add i64 %call, 40
  %arrayidx55 = getelementptr inbounds float, float* %b, i64 %add54
  %11 = load float, float* %arrayidx55, align 4, !tbaa !7
  %12 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul59 = fmul float %11, %12
  %mul63 = fmul float %12, %mul59
  %13 = load float, float* %arrayidx20, align 4, !tbaa !7
  %mul67 = fmul float %13, %mul63
  store float %mul67, float* %arrayidx55, align 4, !tbaa !7
  %add72 = add i64 %call, 48
  %arrayidx73 = getelementptr inbounds float, float* %b, i64 %add72
  %14 = load float, float* %arrayidx73, align 4, !tbaa !7
  %15 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul77 = fmul float %14, %15
  %mul81 = fmul float %15, %mul77
  %arrayidx84 = getelementptr inbounds float, float* %a, i64 %add54
  %16 = load float, float* %arrayidx84, align 4, !tbaa !7
  %mul85 = fmul float %16, %mul81
  store float %mul85, float* %arrayidx73, align 4, !tbaa !7
  %add90 = add i64 %call, 56
  %arrayidx91 = getelementptr inbounds float, float* %b, i64 %add90
  %17 = load float, float* %arrayidx91, align 4, !tbaa !7
  %18 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul95 = fmul float %17, %18
  %mul99 = fmul float %18, %mul95
  %add101 = add i64 %call, 88
  %arrayidx102 = getelementptr inbounds float, float* %a, i64 %add101
  %19 = load float, float* %arrayidx102, align 4, !tbaa !7
  %mul103 = fmul float %19, %mul99
  store float %mul103, float* %arrayidx91, align 4, !tbaa !7
  %add108 = add i64 %call, 96
  %arrayidx109 = getelementptr inbounds float, float* %b, i64 %add108
  %20 = load float, float* %arrayidx109, align 4, !tbaa !7
  %21 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul113 = fmul float %20, %21
  %22 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul117 = fmul float %mul113, %22
  %mul121 = fmul float %22, %mul117
  store float %mul121, float* %arrayidx109, align 4, !tbaa !7
  %add126 = add i64 %call, 104
  %arrayidx127 = getelementptr inbounds float, float* %b, i64 %add126
  %23 = load float, float* %arrayidx127, align 4, !tbaa !7
  %24 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul131 = fmul float %23, %24
  %25 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul135 = fmul float %mul131, %25
  %26 = load float, float* %arrayidx84, align 4, !tbaa !7
  %mul139 = fmul float %mul135, %26
  store float %mul139, float* %arrayidx127, align 4, !tbaa !7
  %add144 = add i64 %call, 112
  %arrayidx145 = getelementptr inbounds float, float* %b, i64 %add144
  %27 = load float, float* %arrayidx145, align 4, !tbaa !7
  %28 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul149 = fmul float %27, %28
  %29 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul153 = fmul float %mul149, %29
  %add155 = add i64 %call, 168
  %arrayidx156 = getelementptr inbounds float, float* %a, i64 %add155
  %30 = load float, float* %arrayidx156, align 4, !tbaa !7
  %mul157 = fmul float %mul153, %30
  store float %mul157, float* %arrayidx145, align 4, !tbaa !7
  %add162 = add i64 %call, 120
  %arrayidx163 = getelementptr inbounds float, float* %b, i64 %add162
  %31 = load float, float* %arrayidx163, align 4, !tbaa !7
  %32 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul167 = fmul float %31, %32
  %mul171 = fmul float %32, %mul167
  store float %mul171, float* %arrayidx163, align 4, !tbaa !7
  %add176 = add i64 %call, 128
  %arrayidx177 = getelementptr inbounds float, float* %b, i64 %add176
  %33 = load float, float* %arrayidx177, align 4, !tbaa !7
  %arrayidx180 = getelementptr inbounds float, float* %a, i64 %add72
  %34 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul181 = fmul float %33, %34
  %35 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul185 = fmul float %mul181, %35
  store float %mul185, float* %arrayidx177, align 4, !tbaa !7
  %add190 = add i64 %call, 136
  %arrayidx191 = getelementptr inbounds float, float* %b, i64 %add190
  %36 = load float, float* %arrayidx191, align 4, !tbaa !7
  %37 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul195 = fmul float %36, %37
  %38 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul199 = fmul float %mul195, %38
  store float %mul199, float* %arrayidx191, align 4, !tbaa !7
  %add204 = add i64 %call, 144
  %arrayidx205 = getelementptr inbounds float, float* %b, i64 %add204
  %39 = load float, float* %arrayidx205, align 4, !tbaa !7
  %40 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul209 = fmul float %39, %40
  %41 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul213 = fmul float %mul209, %41
  store float %mul213, float* %arrayidx205, align 4, !tbaa !7
  %add218 = add i64 %call, 152
  %arrayidx219 = getelementptr inbounds float, float* %b, i64 %add218
  %42 = load float, float* %arrayidx219, align 4, !tbaa !7
  %43 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul223 = fmul float %42, %43
  %44 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul227 = fmul float %mul223, %44
  store float %mul227, float* %arrayidx219, align 4, !tbaa !7
  %add232 = add i64 %call, 160
  %arrayidx233 = getelementptr inbounds float, float* %b, i64 %add232
  %45 = load float, float* %arrayidx233, align 4, !tbaa !7
  %46 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul237 = fmul float %45, %46
  %47 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul241 = fmul float %mul237, %47
  store float %mul241, float* %arrayidx233, align 4, !tbaa !7
  %arrayidx247 = getelementptr inbounds float, float* %b, i64 %add155
  %48 = load float, float* %arrayidx247, align 4, !tbaa !7
  %49 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul251 = fmul float %48, %49
  %mul255 = fmul float %49, %mul251
  store float %mul255, float* %arrayidx247, align 4, !tbaa !7
  %add260 = add i64 %call, 176
  %arrayidx261 = getelementptr inbounds float, float* %b, i64 %add260
  %50 = load float, float* %arrayidx261, align 4, !tbaa !7
  %51 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul265 = fmul float %50, %51
  %mul269 = fmul float %51, %mul265
  store float %mul269, float* %arrayidx261, align 4, !tbaa !7
  %add274 = add i64 %call, 184
  %arrayidx275 = getelementptr inbounds float, float* %b, i64 %add274
  %52 = load float, float* %arrayidx275, align 4, !tbaa !7
  %arrayidx278 = getelementptr inbounds float, float* %a, i64 %add90
  %53 = load float, float* %arrayidx278, align 4, !tbaa !7
  %mul279 = fmul float %52, %53
  %54 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul283 = fmul float %mul279, %54
  store float %mul283, float* %arrayidx275, align 4, !tbaa !7
  %add288 = add i64 %call, 192
  %arrayidx289 = getelementptr inbounds float, float* %b, i64 %add288
  %55 = load float, float* %arrayidx289, align 4, !tbaa !7
  %56 = load float, float* %arrayidx278, align 4, !tbaa !7
  %mul293 = fmul float %55, %56
  %57 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul297 = fmul float %mul293, %57
  store float %mul297, float* %arrayidx289, align 4, !tbaa !7
  %add302 = add i64 %call, 200
  %arrayidx303 = getelementptr inbounds float, float* %b, i64 %add302
  %58 = load float, float* %arrayidx303, align 4, !tbaa !7
  %59 = load float, float* %arrayidx278, align 4, !tbaa !7
  %mul307 = fmul float %58, %59
  %60 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul311 = fmul float %mul307, %60
  store float %mul311, float* %arrayidx303, align 4, !tbaa !7
  %add316 = add i64 %call, 208
  %arrayidx317 = getelementptr inbounds float, float* %b, i64 %add316
  %61 = load float, float* %arrayidx317, align 4, !tbaa !7
  %62 = load float, float* %arrayidx278, align 4, !tbaa !7
  %mul321 = fmul float %61, %62
  %63 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul325 = fmul float %mul321, %63
  store float %mul325, float* %arrayidx317, align 4, !tbaa !7
  %add330 = add i64 %call, 216
  %arrayidx331 = getelementptr inbounds float, float* %b, i64 %add330
  %64 = load float, float* %arrayidx331, align 4, !tbaa !7
  %65 = load float, float* %arrayidx278, align 4, !tbaa !7
  %mul335 = fmul float %64, %65
  %66 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul339 = fmul float %mul335, %66
  store float %mul339, float* %arrayidx331, align 4, !tbaa !7
  %add344 = add i64 %call, 232
  %arrayidx345 = getelementptr inbounds float, float* %b, i64 %add344
  %67 = load float, float* %arrayidx345, align 4, !tbaa !7
  %add347 = add i64 %call, 80
  %arrayidx348 = getelementptr inbounds float, float* %a, i64 %add347
  %68 = load float, float* %arrayidx348, align 4, !tbaa !7
  %mul349 = fmul float %67, %68
  %69 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul353 = fmul float %mul349, %69
  store float %mul353, float* %arrayidx345, align 4, !tbaa !7
  %add358 = add i64 %call, 240
  %arrayidx359 = getelementptr inbounds float, float* %b, i64 %add358
  %70 = load float, float* %arrayidx359, align 4, !tbaa !7
  %71 = load float, float* %arrayidx348, align 4, !tbaa !7
  %mul363 = fmul float %70, %71
  %72 = load float, float* %arrayidx20, align 4, !tbaa !7
  %mul367 = fmul float %mul363, %72
  store float %mul367, float* %arrayidx359, align 4, !tbaa !7
  %add372 = add i64 %call, 248
  %arrayidx373 = getelementptr inbounds float, float* %b, i64 %add372
  %73 = load float, float* %arrayidx373, align 4, !tbaa !7
  %74 = load float, float* %arrayidx348, align 4, !tbaa !7
  %mul377 = fmul float %73, %74
  %75 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul381 = fmul float %mul377, %75
  store float %mul381, float* %arrayidx373, align 4, !tbaa !7
  %add386 = add i64 %call, 256
  %arrayidx387 = getelementptr inbounds float, float* %b, i64 %add386
  %76 = load float, float* %arrayidx387, align 4, !tbaa !7
  %77 = load float, float* %arrayidx348, align 4, !tbaa !7
  %mul391 = fmul float %76, %77
  %78 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul395 = fmul float %mul391, %78
  store float %mul395, float* %arrayidx387, align 4, !tbaa !7
  %add400 = add i64 %call, 264
  %arrayidx401 = getelementptr inbounds float, float* %b, i64 %add400
  %79 = load float, float* %arrayidx401, align 4, !tbaa !7
  %80 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul405 = fmul float %79, %80
  store float %mul405, float* %arrayidx401, align 4, !tbaa !7
  %add410 = add i64 %call, 272
  %arrayidx411 = getelementptr inbounds float, float* %b, i64 %add410
  %81 = load float, float* %arrayidx411, align 4, !tbaa !7
  %82 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul415 = fmul float %81, %82
  store float %mul415, float* %arrayidx411, align 4, !tbaa !7
  %add420 = add i64 %call, 280
  %arrayidx421 = getelementptr inbounds float, float* %b, i64 %add420
  %83 = load float, float* %arrayidx421, align 4, !tbaa !7
  %84 = load float, float* %arrayidx20, align 4, !tbaa !7
  %mul425 = fmul float %83, %84
  store float %mul425, float* %arrayidx421, align 4, !tbaa !7
  %add430 = add i64 %call, 288
  %arrayidx431 = getelementptr inbounds float, float* %b, i64 %add430
  %85 = load float, float* %arrayidx431, align 4, !tbaa !7
  %86 = load float, float* %arrayidx84, align 4, !tbaa !7
  %mul435 = fmul float %85, %86
  store float %mul435, float* %arrayidx431, align 4, !tbaa !7
  %add440 = add i64 %call, 296
  %arrayidx441 = getelementptr inbounds float, float* %b, i64 %add440
  %87 = load float, float* %arrayidx441, align 4, !tbaa !7
  %88 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul445 = fmul float %87, %88
  store float %mul445, float* %arrayidx441, align 4, !tbaa !7
  %add450 = add i64 %call, 304
  %arrayidx451 = getelementptr inbounds float, float* %b, i64 %add450
  %89 = load float, float* %arrayidx451, align 4, !tbaa !7
  %90 = load float, float* %arrayidx348, align 4, !tbaa !7
  %mul455 = fmul float %89, %90
  store float %mul455, float* %arrayidx451, align 4, !tbaa !7
  %add460 = add i64 %call, 312
  %arrayidx461 = getelementptr inbounds float, float* %b, i64 %add460
  %91 = load float, float* %arrayidx461, align 4, !tbaa !7
  %92 = load float, float* %arrayidx102, align 4, !tbaa !7
  %mul465 = fmul float %91, %92
  store float %mul465, float* %arrayidx461, align 4, !tbaa !7
  %add470 = add i64 %call, 320
  %arrayidx471 = getelementptr inbounds float, float* %b, i64 %add470
  %93 = load float, float* %arrayidx471, align 4, !tbaa !7
  %94 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul475 = fmul float %93, %94
  store float %mul475, float* %arrayidx471, align 4, !tbaa !7
  %add480 = add i64 %call, 328
  %arrayidx481 = getelementptr inbounds float, float* %b, i64 %add480
  %95 = load float, float* %arrayidx481, align 4, !tbaa !7
  %96 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul485 = fmul float %95, %96
  store float %mul485, float* %arrayidx481, align 4, !tbaa !7
  %add490 = add i64 %call, 336
  %arrayidx491 = getelementptr inbounds float, float* %b, i64 %add490
  %97 = load float, float* %arrayidx491, align 4, !tbaa !7
  %98 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul495 = fmul float %97, %98
  store float %mul495, float* %arrayidx491, align 4, !tbaa !7
  %add500 = add i64 %call, 344
  %arrayidx501 = getelementptr inbounds float, float* %b, i64 %add500
  %99 = load float, float* %arrayidx501, align 4, !tbaa !7
  %100 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul505 = fmul float %99, %100
  store float %mul505, float* %arrayidx501, align 4, !tbaa !7
  %add510 = add i64 %call, 352
  %arrayidx511 = getelementptr inbounds float, float* %b, i64 %add510
  %101 = load float, float* %arrayidx511, align 4, !tbaa !7
  %102 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul515 = fmul float %101, %102
  store float %mul515, float* %arrayidx511, align 4, !tbaa !7
  %add520 = add i64 %call, 368
  %arrayidx521 = getelementptr inbounds float, float* %b, i64 %add520
  %103 = load float, float* %arrayidx521, align 4, !tbaa !7
  %104 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul525 = fmul float %103, %104
  store float %mul525, float* %arrayidx521, align 4, !tbaa !7
  %add530 = add i64 %call, 376
  %arrayidx531 = getelementptr inbounds float, float* %b, i64 %add530
  %105 = load float, float* %arrayidx531, align 4, !tbaa !7
  %106 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul535 = fmul float %105, %106
  store float %mul535, float* %arrayidx531, align 4, !tbaa !7
  %add540 = add i64 %call, 384
  %arrayidx541 = getelementptr inbounds float, float* %b, i64 %add540
  %107 = load float, float* %arrayidx541, align 4, !tbaa !7
  %108 = load float, float* %arrayidx20, align 4, !tbaa !7
  %mul545 = fmul float %107, %108
  store float %mul545, float* %arrayidx541, align 4, !tbaa !7
  %add550 = add i64 %call, 392
  %arrayidx551 = getelementptr inbounds float, float* %b, i64 %add550
  %109 = load float, float* %arrayidx551, align 4, !tbaa !7
  %110 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul555 = fmul float %109, %110
  store float %mul555, float* %arrayidx551, align 4, !tbaa !7
  %add560 = add i64 %call, 400
  %arrayidx561 = getelementptr inbounds float, float* %b, i64 %add560
  %111 = load float, float* %arrayidx561, align 4, !tbaa !7
  %112 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul565 = fmul float %111, %112
  store float %mul565, float* %arrayidx561, align 4, !tbaa !7
  %add570 = add i64 %call, 408
  %arrayidx571 = getelementptr inbounds float, float* %b, i64 %add570
  %113 = load float, float* %arrayidx571, align 4, !tbaa !7
  %114 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul575 = fmul float %113, %114
  store float %mul575, float* %arrayidx571, align 4, !tbaa !7
  %add580 = add i64 %call, 416
  %arrayidx581 = getelementptr inbounds float, float* %b, i64 %add580
  %115 = load float, float* %arrayidx581, align 4, !tbaa !7
  %116 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul585 = fmul float %115, %116
  store float %mul585, float* %arrayidx581, align 4, !tbaa !7
  %add590 = add i64 %call, 424
  %arrayidx591 = getelementptr inbounds float, float* %b, i64 %add590
  %117 = load float, float* %arrayidx591, align 4, !tbaa !7
  %118 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul595 = fmul float %117, %118
  store float %mul595, float* %arrayidx591, align 4, !tbaa !7
  %add600 = add i64 %call, 432
  %arrayidx601 = getelementptr inbounds float, float* %b, i64 %add600
  %119 = load float, float* %arrayidx601, align 4, !tbaa !7
  %120 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul605 = fmul float %119, %120
  store float %mul605, float* %arrayidx601, align 4, !tbaa !7
  %add610 = add i64 %call, 440
  %arrayidx611 = getelementptr inbounds float, float* %b, i64 %add610
  %121 = load float, float* %arrayidx611, align 4, !tbaa !7
  %122 = load float, float* %arrayidx348, align 4, !tbaa !7
  %mul615 = fmul float %121, %122
  store float %mul615, float* %arrayidx611, align 4, !tbaa !7
  %add620 = add i64 %call, 464
  %arrayidx621 = getelementptr inbounds float, float* %b, i64 %add620
  %123 = load float, float* %arrayidx621, align 4, !tbaa !7
  %124 = load float, float* %arrayidx156, align 4, !tbaa !7
  %mul625 = fmul float %123, %124
  store float %mul625, float* %arrayidx621, align 4, !tbaa !7
  %add630 = add i64 %call, 472
  %arrayidx631 = getelementptr inbounds float, float* %b, i64 %add630
  %125 = load float, float* %arrayidx631, align 4, !tbaa !7
  %126 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul635 = fmul float %125, %126
  store float %mul635, float* %arrayidx631, align 4, !tbaa !7
  %add640 = add i64 %call, 480
  %arrayidx641 = getelementptr inbounds float, float* %b, i64 %add640
  %127 = load float, float* %arrayidx641, align 4, !tbaa !7
  %128 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul645 = fmul float %127, %128
  store float %mul645, float* %arrayidx641, align 4, !tbaa !7
  %add650 = add i64 %call, 488
  %arrayidx651 = getelementptr inbounds float, float* %b, i64 %add650
  %129 = load float, float* %arrayidx651, align 4, !tbaa !7
  %130 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul655 = fmul float %129, %130
  store float %mul655, float* %arrayidx651, align 4, !tbaa !7
  %add660 = add i64 %call, 496
  %arrayidx661 = getelementptr inbounds float, float* %b, i64 %add660
  %131 = load float, float* %arrayidx661, align 4, !tbaa !7
  %132 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul665 = fmul float %131, %132
  store float %mul665, float* %arrayidx661, align 4, !tbaa !7
  %add670 = add i64 %call, 504
  %arrayidx671 = getelementptr inbounds float, float* %b, i64 %add670
  %133 = load float, float* %arrayidx671, align 4, !tbaa !7
  %134 = load float, float* %arrayidx20, align 4, !tbaa !7
  %mul675 = fmul float %133, %134
  store float %mul675, float* %arrayidx671, align 4, !tbaa !7
  %add680 = add i64 %call, 512
  %arrayidx681 = getelementptr inbounds float, float* %b, i64 %add680
  %135 = load float, float* %arrayidx681, align 4, !tbaa !7
  %136 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul685 = fmul float %135, %136
  store float %mul685, float* %arrayidx681, align 4, !tbaa !7
  %add690 = add i64 %call, 520
  %arrayidx691 = getelementptr inbounds float, float* %b, i64 %add690
  %137 = load float, float* %arrayidx691, align 4, !tbaa !7
  %138 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul695 = fmul float %137, %138
  store float %mul695, float* %arrayidx691, align 4, !tbaa !7
  %add700 = add i64 %call, 528
  %arrayidx701 = getelementptr inbounds float, float* %b, i64 %add700
  %139 = load float, float* %arrayidx701, align 4, !tbaa !7
  %140 = load float, float* %arrayidx84, align 4, !tbaa !7
  %mul705 = fmul float %139, %140
  store float %mul705, float* %arrayidx701, align 4, !tbaa !7
  %add710 = add i64 %call, 536
  %arrayidx711 = getelementptr inbounds float, float* %b, i64 %add710
  %141 = load float, float* %arrayidx711, align 4, !tbaa !7
  %142 = load float, float* %arrayidx348, align 4, !tbaa !7
  %mul715 = fmul float %141, %142
  store float %mul715, float* %arrayidx711, align 4, !tbaa !7
  %add720 = add i64 %call, 544
  %arrayidx721 = getelementptr inbounds float, float* %b, i64 %add720
  %143 = load float, float* %arrayidx721, align 4, !tbaa !7
  %144 = load float, float* %arrayidx102, align 4, !tbaa !7
  %mul725 = fmul float %143, %144
  store float %mul725, float* %arrayidx721, align 4, !tbaa !7
  %add730 = add i64 %call, 552
  %arrayidx731 = getelementptr inbounds float, float* %b, i64 %add730
  %145 = load float, float* %arrayidx731, align 4, !tbaa !7
  %146 = load float, float* %arrayidx102, align 4, !tbaa !7
  %mul735 = fmul float %145, %146
  store float %mul735, float* %arrayidx731, align 4, !tbaa !7
  %add740 = add i64 %call, 560
  %arrayidx741 = getelementptr inbounds float, float* %b, i64 %add740
  %147 = load float, float* %arrayidx741, align 4, !tbaa !7
  %arrayidx744 = getelementptr inbounds float, float* %a, i64 %add108
  %148 = load float, float* %arrayidx744, align 4, !tbaa !7
  %mul745 = fmul float %147, %148
  %149 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul749 = fmul float %mul745, %149
  store float %mul749, float* %arrayidx741, align 4, !tbaa !7
  %add754 = add i64 %call, 568
  %arrayidx755 = getelementptr inbounds float, float* %b, i64 %add754
  %150 = load float, float* %arrayidx755, align 4, !tbaa !7
  %151 = load float, float* %arrayidx744, align 4, !tbaa !7
  %mul759 = fmul float %150, %151
  %152 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul763 = fmul float %mul759, %152
  store float %mul763, float* %arrayidx755, align 4, !tbaa !7
  %add768 = add i64 %call, 576
  %arrayidx769 = getelementptr inbounds float, float* %b, i64 %add768
  %153 = load float, float* %arrayidx769, align 4, !tbaa !7
  %154 = load float, float* %arrayidx744, align 4, !tbaa !7
  %mul773 = fmul float %153, %154
  %155 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul777 = fmul float %mul773, %155
  store float %mul777, float* %arrayidx769, align 4, !tbaa !7
  %add782 = add i64 %call, 584
  %arrayidx783 = getelementptr inbounds float, float* %b, i64 %add782
  %156 = load float, float* %arrayidx783, align 4, !tbaa !7
  %157 = load float, float* %arrayidx744, align 4, !tbaa !7
  %mul787 = fmul float %156, %157
  %158 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul791 = fmul float %mul787, %158
  store float %mul791, float* %arrayidx783, align 4, !tbaa !7
  %add796 = add i64 %call, 592
  %arrayidx797 = getelementptr inbounds float, float* %b, i64 %add796
  %159 = load float, float* %arrayidx797, align 4, !tbaa !7
  %160 = load float, float* %arrayidx744, align 4, !tbaa !7
  %mul801 = fmul float %159, %160
  %161 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul805 = fmul float %mul801, %161
  store float %mul805, float* %arrayidx797, align 4, !tbaa !7
  %add810 = add i64 %call, 600
  %arrayidx811 = getelementptr inbounds float, float* %b, i64 %add810
  %162 = load float, float* %arrayidx811, align 4, !tbaa !7
  %163 = load float, float* %arrayidx744, align 4, !tbaa !7
  %mul815 = fmul float %162, %163
  %164 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul819 = fmul float %mul815, %164
  store float %mul819, float* %arrayidx811, align 4, !tbaa !7
  %add824 = add i64 %call, 608
  %arrayidx825 = getelementptr inbounds float, float* %b, i64 %add824
  %165 = load float, float* %arrayidx825, align 4, !tbaa !7
  %166 = load float, float* %arrayidx744, align 4, !tbaa !7
  %mul829 = fmul float %165, %166
  store float %mul829, float* %arrayidx825, align 4, !tbaa !7
  %add834 = add i64 %call, 616
  %arrayidx835 = getelementptr inbounds float, float* %b, i64 %add834
  %167 = load float, float* %arrayidx835, align 4, !tbaa !7
  %add837 = add i64 %call, 64
  %arrayidx838 = getelementptr inbounds float, float* %a, i64 %add837
  %168 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul839 = fmul float %167, %168
  %169 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul843 = fmul float %mul839, %169
  store float %mul843, float* %arrayidx835, align 4, !tbaa !7
  %add848 = add i64 %call, 624
  %arrayidx849 = getelementptr inbounds float, float* %b, i64 %add848
  %170 = load float, float* %arrayidx849, align 4, !tbaa !7
  %171 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul853 = fmul float %170, %171
  %172 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul857 = fmul float %mul853, %172
  store float %mul857, float* %arrayidx849, align 4, !tbaa !7
  %add862 = add i64 %call, 632
  %arrayidx863 = getelementptr inbounds float, float* %b, i64 %add862
  %173 = load float, float* %arrayidx863, align 4, !tbaa !7
  %174 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul867 = fmul float %173, %174
  %175 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul871 = fmul float %mul867, %175
  store float %mul871, float* %arrayidx863, align 4, !tbaa !7
  %add876 = add i64 %call, 640
  %arrayidx877 = getelementptr inbounds float, float* %b, i64 %add876
  %176 = load float, float* %arrayidx877, align 4, !tbaa !7
  %177 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul881 = fmul float %176, %177
  %178 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul885 = fmul float %mul881, %178
  store float %mul885, float* %arrayidx877, align 4, !tbaa !7
  %add890 = add i64 %call, 648
  %arrayidx891 = getelementptr inbounds float, float* %b, i64 %add890
  %179 = load float, float* %arrayidx891, align 4, !tbaa !7
  %180 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul895 = fmul float %179, %180
  %181 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul899 = fmul float %mul895, %181
  store float %mul899, float* %arrayidx891, align 4, !tbaa !7
  %add904 = add i64 %call, 656
  %arrayidx905 = getelementptr inbounds float, float* %b, i64 %add904
  %182 = load float, float* %arrayidx905, align 4, !tbaa !7
  %183 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul909 = fmul float %182, %183
  %184 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul913 = fmul float %mul909, %184
  store float %mul913, float* %arrayidx905, align 4, !tbaa !7
  %add918 = add i64 %call, 664
  %arrayidx919 = getelementptr inbounds float, float* %b, i64 %add918
  %185 = load float, float* %arrayidx919, align 4, !tbaa !7
  %186 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul923 = fmul float %185, %186
  %187 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul927 = fmul float %mul923, %187
  store float %mul927, float* %arrayidx919, align 4, !tbaa !7
  %add932 = add i64 %call, 672
  %arrayidx933 = getelementptr inbounds float, float* %b, i64 %add932
  %188 = load float, float* %arrayidx933, align 4, !tbaa !7
  %189 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul937 = fmul float %188, %189
  %190 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul941 = fmul float %mul937, %190
  store float %mul941, float* %arrayidx933, align 4, !tbaa !7
  %add946 = add i64 %call, 680
  %arrayidx947 = getelementptr inbounds float, float* %b, i64 %add946
  %191 = load float, float* %arrayidx947, align 4, !tbaa !7
  %192 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul951 = fmul float %191, %192
  %193 = load float, float* %arrayidx278, align 4, !tbaa !7
  %mul955 = fmul float %mul951, %193
  store float %mul955, float* %arrayidx947, align 4, !tbaa !7
  %add960 = add i64 %call, 688
  %arrayidx961 = getelementptr inbounds float, float* %b, i64 %add960
  %194 = load float, float* %arrayidx961, align 4, !tbaa !7
  %195 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul965 = fmul float %194, %195
  store float %mul965, float* %arrayidx961, align 4, !tbaa !7
  %add970 = add i64 %call, 696
  %arrayidx971 = getelementptr inbounds float, float* %b, i64 %add970
  %196 = load float, float* %arrayidx971, align 4, !tbaa !7
  %197 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul975 = fmul float %196, %197
  store float %mul975, float* %arrayidx971, align 4, !tbaa !7
  %add980 = add i64 %call, 704
  %arrayidx981 = getelementptr inbounds float, float* %b, i64 %add980
  %198 = load float, float* %arrayidx981, align 4, !tbaa !7
  %199 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul985 = fmul float %198, %199
  store float %mul985, float* %arrayidx981, align 4, !tbaa !7
  %add990 = add i64 %call, 712
  %arrayidx991 = getelementptr inbounds float, float* %b, i64 %add990
  %200 = load float, float* %arrayidx991, align 4, !tbaa !7
  %201 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul995 = fmul float %200, %201
  %202 = load float, float* %arrayidx744, align 4, !tbaa !7
  %mul999 = fmul float %mul995, %202
  store float %mul999, float* %arrayidx991, align 4, !tbaa !7
  %add1004 = add i64 %call, 720
  %arrayidx1005 = getelementptr inbounds float, float* %b, i64 %add1004
  %203 = load float, float* %arrayidx1005, align 4, !tbaa !7
  %204 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul1009 = fmul float %203, %204
  store float %mul1009, float* %arrayidx1005, align 4, !tbaa !7
  %add1014 = add i64 %call, 728
  %arrayidx1015 = getelementptr inbounds float, float* %b, i64 %add1014
  %205 = load float, float* %arrayidx1015, align 4, !tbaa !7
  %206 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul1019 = fmul float %205, %206
  store float %mul1019, float* %arrayidx1015, align 4, !tbaa !7
  %add1024 = add i64 %call, 736
  %arrayidx1025 = getelementptr inbounds float, float* %b, i64 %add1024
  %207 = load float, float* %arrayidx1025, align 4, !tbaa !7
  %208 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul1029 = fmul float %207, %208
  %mul1033 = fmul float %208, %mul1029
  store float %mul1033, float* %arrayidx1025, align 4, !tbaa !7
  %add1038 = add i64 %call, 744
  %arrayidx1039 = getelementptr inbounds float, float* %b, i64 %add1038
  %209 = load float, float* %arrayidx1039, align 4, !tbaa !7
  %210 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul1043 = fmul float %209, %210
  %mul1047 = fmul float %210, %mul1043
  store float %mul1047, float* %arrayidx1039, align 4, !tbaa !7
  %add1052 = add i64 %call, 752
  %arrayidx1053 = getelementptr inbounds float, float* %b, i64 %add1052
  %211 = load float, float* %arrayidx1053, align 4, !tbaa !7
  %212 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul1057 = fmul float %211, %212
  %arrayidx1060 = getelementptr inbounds float, float* %a, i64 %add176
  %213 = load float, float* %arrayidx1060, align 4, !tbaa !7
  %mul1061 = fmul float %mul1057, %213
  store float %mul1061, float* %arrayidx1053, align 4, !tbaa !7
  %add1066 = add i64 %call, 760
  %arrayidx1067 = getelementptr inbounds float, float* %b, i64 %add1066
  %214 = load float, float* %arrayidx1067, align 4, !tbaa !7
  %215 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1071 = fmul float %214, %215
  store float %mul1071, float* %arrayidx1067, align 4, !tbaa !7
  %add1076 = add i64 %call, 768
  %arrayidx1077 = getelementptr inbounds float, float* %b, i64 %add1076
  %216 = load float, float* %arrayidx1077, align 4, !tbaa !7
  %217 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1081 = fmul float %216, %217
  store float %mul1081, float* %arrayidx1077, align 4, !tbaa !7
  %add1086 = add i64 %call, 776
  %arrayidx1087 = getelementptr inbounds float, float* %b, i64 %add1086
  %218 = load float, float* %arrayidx1087, align 4, !tbaa !7
  %219 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1091 = fmul float %218, %219
  store float %mul1091, float* %arrayidx1087, align 4, !tbaa !7
  %add1096 = add i64 %call, 784
  %arrayidx1097 = getelementptr inbounds float, float* %b, i64 %add1096
  %220 = load float, float* %arrayidx1097, align 4, !tbaa !7
  %221 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1101 = fmul float %220, %221
  store float %mul1101, float* %arrayidx1097, align 4, !tbaa !7
  %add1106 = add i64 %call, 792
  %arrayidx1107 = getelementptr inbounds float, float* %b, i64 %add1106
  %222 = load float, float* %arrayidx1107, align 4, !tbaa !7
  %223 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul1111 = fmul float %222, %223
  store float %mul1111, float* %arrayidx1107, align 4, !tbaa !7
  %add1116 = add i64 %call, 800
  %arrayidx1117 = getelementptr inbounds float, float* %b, i64 %add1116
  %224 = load float, float* %arrayidx1117, align 4, !tbaa !7
  %225 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1121 = fmul float %224, %225
  store float %mul1121, float* %arrayidx1117, align 4, !tbaa !7
  %add1126 = add i64 %call, 808
  %arrayidx1127 = getelementptr inbounds float, float* %b, i64 %add1126
  %226 = load float, float* %arrayidx1127, align 4, !tbaa !7
  %add1129 = add i64 %call, 72
  %arrayidx1130 = getelementptr inbounds float, float* %a, i64 %add1129
  %227 = load float, float* %arrayidx1130, align 4, !tbaa !7
  %mul1131 = fmul float %226, %227
  %228 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1135 = fmul float %mul1131, %228
  store float %mul1135, float* %arrayidx1127, align 4, !tbaa !7
  %add1140 = add i64 %call, 816
  %arrayidx1141 = getelementptr inbounds float, float* %b, i64 %add1140
  %229 = load float, float* %arrayidx1141, align 4, !tbaa !7
  %230 = load float, float* %arrayidx1130, align 4, !tbaa !7
  %mul1145 = fmul float %229, %230
  %231 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1149 = fmul float %mul1145, %231
  store float %mul1149, float* %arrayidx1141, align 4, !tbaa !7
  %add1154 = add i64 %call, 824
  %arrayidx1155 = getelementptr inbounds float, float* %b, i64 %add1154
  %232 = load float, float* %arrayidx1155, align 4, !tbaa !7
  %233 = load float, float* %arrayidx1130, align 4, !tbaa !7
  %mul1159 = fmul float %232, %233
  %234 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul1163 = fmul float %mul1159, %234
  store float %mul1163, float* %arrayidx1155, align 4, !tbaa !7
  %add1168 = add i64 %call, 832
  %arrayidx1169 = getelementptr inbounds float, float* %b, i64 %add1168
  %235 = load float, float* %arrayidx1169, align 4, !tbaa !7
  %236 = load float, float* %arrayidx1130, align 4, !tbaa !7
  %mul1173 = fmul float %235, %236
  store float %mul1173, float* %arrayidx1169, align 4, !tbaa !7
  %add1178 = add i64 %call, 840
  %arrayidx1179 = getelementptr inbounds float, float* %b, i64 %add1178
  %237 = load float, float* %arrayidx1179, align 4, !tbaa !7
  %238 = load float, float* %arrayidx1130, align 4, !tbaa !7
  %mul1183 = fmul float %237, %238
  store float %mul1183, float* %arrayidx1179, align 4, !tbaa !7
  %add1188 = add i64 %call, 848
  %arrayidx1189 = getelementptr inbounds float, float* %b, i64 %add1188
  %239 = load float, float* %arrayidx1189, align 4, !tbaa !7
  %240 = load float, float* %arrayidx1130, align 4, !tbaa !7
  %mul1193 = fmul float %239, %240
  store float %mul1193, float* %arrayidx1189, align 4, !tbaa !7
  %add1198 = add i64 %call, 856
  %arrayidx1199 = getelementptr inbounds float, float* %b, i64 %add1198
  %241 = load float, float* %arrayidx1199, align 4, !tbaa !7
  %242 = load float, float* %arrayidx1060, align 4, !tbaa !7
  %mul1203 = fmul float %241, %242
  %243 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1207 = fmul float %mul1203, %243
  store float %mul1207, float* %arrayidx1199, align 4, !tbaa !7
  %add1212 = add i64 %call, 864
  %arrayidx1213 = getelementptr inbounds float, float* %b, i64 %add1212
  %244 = load float, float* %arrayidx1213, align 4, !tbaa !7
  %245 = load float, float* %arrayidx1060, align 4, !tbaa !7
  %mul1217 = fmul float %244, %245
  %246 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1221 = fmul float %mul1217, %246
  store float %mul1221, float* %arrayidx1213, align 4, !tbaa !7
  %add1226 = add i64 %call, 872
  %arrayidx1227 = getelementptr inbounds float, float* %b, i64 %add1226
  %247 = load float, float* %arrayidx1227, align 4, !tbaa !7
  %248 = load float, float* %arrayidx1060, align 4, !tbaa !7
  %mul1231 = fmul float %247, %248
  %249 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1235 = fmul float %mul1231, %249
  store float %mul1235, float* %arrayidx1227, align 4, !tbaa !7
  %add1240 = add i64 %call, 880
  %arrayidx1241 = getelementptr inbounds float, float* %b, i64 %add1240
  %250 = load float, float* %arrayidx1241, align 4, !tbaa !7
  %251 = load float, float* %arrayidx1060, align 4, !tbaa !7
  %mul1245 = fmul float %250, %251
  store float %mul1245, float* %arrayidx1241, align 4, !tbaa !7
  %add1250 = add i64 %call, 888
  %arrayidx1251 = getelementptr inbounds float, float* %b, i64 %add1250
  %252 = load float, float* %arrayidx1251, align 4, !tbaa !7
  %253 = load float, float* %arrayidx1060, align 4, !tbaa !7
  %mul1255 = fmul float %252, %253
  store float %mul1255, float* %arrayidx1251, align 4, !tbaa !7
  %add1260 = add i64 %call, 896
  %arrayidx1261 = getelementptr inbounds float, float* %b, i64 %add1260
  %254 = load float, float* %arrayidx1261, align 4, !tbaa !7
  %255 = load float, float* %arrayidx1060, align 4, !tbaa !7
  %mul1265 = fmul float %254, %255
  %mul1269 = fmul float %255, %mul1265
  store float %mul1269, float* %arrayidx1261, align 4, !tbaa !7
  %add1274 = add i64 %call, 904
  %arrayidx1275 = getelementptr inbounds float, float* %b, i64 %add1274
  %256 = load float, float* %arrayidx1275, align 4, !tbaa !7
  %arrayidx1278 = getelementptr inbounds float, float* %a, i64 %add126
  %257 = load float, float* %arrayidx1278, align 4, !tbaa !7
  %mul1279 = fmul float %256, %257
  store float %mul1279, float* %arrayidx1275, align 4, !tbaa !7
  %add1284 = add i64 %call, 920
  %arrayidx1285 = getelementptr inbounds float, float* %b, i64 %add1284
  %258 = load float, float* %arrayidx1285, align 4, !tbaa !7
  %259 = load float, float* %arrayidx1278, align 4, !tbaa !7
  %mul1289 = fmul float %258, %259
  %260 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1293 = fmul float %mul1289, %260
  store float %mul1293, float* %arrayidx1285, align 4, !tbaa !7
  %add1298 = add i64 %call, 928
  %arrayidx1299 = getelementptr inbounds float, float* %b, i64 %add1298
  %261 = load float, float* %arrayidx1299, align 4, !tbaa !7
  %262 = load float, float* %arrayidx1278, align 4, !tbaa !7
  %mul1303 = fmul float %261, %262
  %263 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1307 = fmul float %mul1303, %263
  store float %mul1307, float* %arrayidx1299, align 4, !tbaa !7
  %add1312 = add i64 %call, 936
  %arrayidx1313 = getelementptr inbounds float, float* %b, i64 %add1312
  %264 = load float, float* %arrayidx1313, align 4, !tbaa !7
  %265 = load float, float* %arrayidx1278, align 4, !tbaa !7
  %mul1317 = fmul float %264, %265
  %266 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul1321 = fmul float %mul1317, %266
  store float %mul1321, float* %arrayidx1313, align 4, !tbaa !7
  %add1326 = add i64 %call, 944
  %arrayidx1327 = getelementptr inbounds float, float* %b, i64 %add1326
  %267 = load float, float* %arrayidx1327, align 4, !tbaa !7
  %268 = load float, float* %arrayidx1278, align 4, !tbaa !7
  %mul1331 = fmul float %267, %268
  %269 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul1335 = fmul float %mul1331, %269
  store float %mul1335, float* %arrayidx1327, align 4, !tbaa !7
  %add1340 = add i64 %call, 952
  %arrayidx1341 = getelementptr inbounds float, float* %b, i64 %add1340
  %270 = load float, float* %arrayidx1341, align 4, !tbaa !7
  %271 = load float, float* %arrayidx1278, align 4, !tbaa !7
  %mul1345 = fmul float %270, %271
  store float %mul1345, float* %arrayidx1341, align 4, !tbaa !7
  %add1350 = add i64 %call, 968
  %arrayidx1351 = getelementptr inbounds float, float* %b, i64 %add1350
  %272 = load float, float* %arrayidx1351, align 4, !tbaa !7
  %273 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1355 = fmul float %272, %273
  store float %mul1355, float* %arrayidx1351, align 4, !tbaa !7
  %add1360 = add i64 %call, 976
  %arrayidx1361 = getelementptr inbounds float, float* %b, i64 %add1360
  %274 = load float, float* %arrayidx1361, align 4, !tbaa !7
  %275 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1365 = fmul float %274, %275
  store float %mul1365, float* %arrayidx1361, align 4, !tbaa !7
  %add1370 = add i64 %call, 984
  %arrayidx1371 = getelementptr inbounds float, float* %b, i64 %add1370
  %276 = load float, float* %arrayidx1371, align 4, !tbaa !7
  %277 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul1375 = fmul float %276, %277
  store float %mul1375, float* %arrayidx1371, align 4, !tbaa !7
  %add1380 = add i64 %call, 992
  %arrayidx1381 = getelementptr inbounds float, float* %b, i64 %add1380
  %278 = load float, float* %arrayidx1381, align 4, !tbaa !7
  %279 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1385 = fmul float %278, %279
  store float %mul1385, float* %arrayidx1381, align 4, !tbaa !7
  %add1390 = add i64 %call, 1000
  %arrayidx1391 = getelementptr inbounds float, float* %b, i64 %add1390
  %280 = load float, float* %arrayidx1391, align 4, !tbaa !7
  %arrayidx1394 = getelementptr inbounds float, float* %a, i64 %add190
  %281 = load float, float* %arrayidx1394, align 4, !tbaa !7
  %mul1395 = fmul float %280, %281
  %282 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1399 = fmul float %mul1395, %282
  store float %mul1399, float* %arrayidx1391, align 4, !tbaa !7
  %add1404 = add i64 %call, 1008
  %arrayidx1405 = getelementptr inbounds float, float* %b, i64 %add1404
  %283 = load float, float* %arrayidx1405, align 4, !tbaa !7
  %284 = load float, float* %arrayidx1394, align 4, !tbaa !7
  %mul1409 = fmul float %283, %284
  %285 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1413 = fmul float %mul1409, %285
  store float %mul1413, float* %arrayidx1405, align 4, !tbaa !7
  %add1418 = add i64 %call, 1016
  %arrayidx1419 = getelementptr inbounds float, float* %b, i64 %add1418
  %286 = load float, float* %arrayidx1419, align 4, !tbaa !7
  %287 = load float, float* %arrayidx1394, align 4, !tbaa !7
  %mul1423 = fmul float %286, %287
  %288 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1427 = fmul float %mul1423, %288
  store float %mul1427, float* %arrayidx1419, align 4, !tbaa !7
  %add1432 = add i64 %call, 1024
  %arrayidx1433 = getelementptr inbounds float, float* %b, i64 %add1432
  %289 = load float, float* %arrayidx1433, align 4, !tbaa !7
  %290 = load float, float* %arrayidx1394, align 4, !tbaa !7
  %mul1437 = fmul float %289, %290
  %291 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1441 = fmul float %mul1437, %291
  store float %mul1441, float* %arrayidx1433, align 4, !tbaa !7
  %add1446 = add i64 %call, 1032
  %arrayidx1447 = getelementptr inbounds float, float* %b, i64 %add1446
  %292 = load float, float* %arrayidx1447, align 4, !tbaa !7
  %293 = load float, float* %arrayidx1394, align 4, !tbaa !7
  %mul1451 = fmul float %292, %293
  %294 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1455 = fmul float %mul1451, %294
  store float %mul1455, float* %arrayidx1447, align 4, !tbaa !7
  %add1460 = add i64 %call, 1040
  %arrayidx1461 = getelementptr inbounds float, float* %b, i64 %add1460
  %295 = load float, float* %arrayidx1461, align 4, !tbaa !7
  %296 = load float, float* %arrayidx1394, align 4, !tbaa !7
  %mul1465 = fmul float %295, %296
  %297 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul1469 = fmul float %mul1465, %297
  store float %mul1469, float* %arrayidx1461, align 4, !tbaa !7
  %add1474 = add i64 %call, 1048
  %arrayidx1475 = getelementptr inbounds float, float* %b, i64 %add1474
  %298 = load float, float* %arrayidx1475, align 4, !tbaa !7
  %299 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1479 = fmul float %298, %299
  store float %mul1479, float* %arrayidx1475, align 4, !tbaa !7
  %add1484 = add i64 %call, 1056
  %arrayidx1485 = getelementptr inbounds float, float* %b, i64 %add1484
  %300 = load float, float* %arrayidx1485, align 4, !tbaa !7
  %301 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1489 = fmul float %300, %301
  store float %mul1489, float* %arrayidx1485, align 4, !tbaa !7
  %add1494 = add i64 %call, 1064
  %arrayidx1495 = getelementptr inbounds float, float* %b, i64 %add1494
  %302 = load float, float* %arrayidx1495, align 4, !tbaa !7
  %303 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1499 = fmul float %302, %303
  store float %mul1499, float* %arrayidx1495, align 4, !tbaa !7
  %add1504 = add i64 %call, 1072
  %arrayidx1505 = getelementptr inbounds float, float* %b, i64 %add1504
  %304 = load float, float* %arrayidx1505, align 4, !tbaa !7
  %305 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1509 = fmul float %304, %305
  store float %mul1509, float* %arrayidx1505, align 4, !tbaa !7
  %add1514 = add i64 %call, 1080
  %arrayidx1515 = getelementptr inbounds float, float* %b, i64 %add1514
  %306 = load float, float* %arrayidx1515, align 4, !tbaa !7
  %307 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1519 = fmul float %306, %307
  store float %mul1519, float* %arrayidx1515, align 4, !tbaa !7
  %add1524 = add i64 %call, 1088
  %arrayidx1525 = getelementptr inbounds float, float* %b, i64 %add1524
  %308 = load float, float* %arrayidx1525, align 4, !tbaa !7
  %309 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul1529 = fmul float %308, %309
  store float %mul1529, float* %arrayidx1525, align 4, !tbaa !7
  %add1534 = add i64 %call, 1096
  %arrayidx1535 = getelementptr inbounds float, float* %b, i64 %add1534
  %310 = load float, float* %arrayidx1535, align 4, !tbaa !7
  %311 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1539 = fmul float %310, %311
  store float %mul1539, float* %arrayidx1535, align 4, !tbaa !7
  %add1544 = add i64 %call, 1104
  %arrayidx1545 = getelementptr inbounds float, float* %b, i64 %add1544
  %312 = load float, float* %arrayidx1545, align 4, !tbaa !7
  %313 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1549 = fmul float %312, %313
  store float %mul1549, float* %arrayidx1545, align 4, !tbaa !7
  %add1554 = add i64 %call, 1112
  %arrayidx1555 = getelementptr inbounds float, float* %b, i64 %add1554
  %314 = load float, float* %arrayidx1555, align 4, !tbaa !7
  %315 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1559 = fmul float %314, %315
  store float %mul1559, float* %arrayidx1555, align 4, !tbaa !7
  %add1564 = add i64 %call, 1120
  %arrayidx1565 = getelementptr inbounds float, float* %b, i64 %add1564
  %316 = load float, float* %arrayidx1565, align 4, !tbaa !7
  %317 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul1569 = fmul float %316, %317
  store float %mul1569, float* %arrayidx1565, align 4, !tbaa !7
  %add1574 = add i64 %call, 1128
  %arrayidx1575 = getelementptr inbounds float, float* %b, i64 %add1574
  %318 = load float, float* %arrayidx1575, align 4, !tbaa !7
  %319 = load float, float* %arrayidx278, align 4, !tbaa !7
  %mul1579 = fmul float %318, %319
  store float %mul1579, float* %arrayidx1575, align 4, !tbaa !7
  %add1584 = add i64 %call, 1144
  %arrayidx1585 = getelementptr inbounds float, float* %b, i64 %add1584
  %320 = load float, float* %arrayidx1585, align 4, !tbaa !7
  %321 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul1589 = fmul float %320, %321
  store float %mul1589, float* %arrayidx1585, align 4, !tbaa !7
  %add1594 = add i64 %call, 1152
  %arrayidx1595 = getelementptr inbounds float, float* %b, i64 %add1594
  %322 = load float, float* %arrayidx1595, align 4, !tbaa !7
  %323 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul1599 = fmul float %322, %323
  store float %mul1599, float* %arrayidx1595, align 4, !tbaa !7
  %add1604 = add i64 %call, 1160
  %arrayidx1605 = getelementptr inbounds float, float* %b, i64 %add1604
  %324 = load float, float* %arrayidx1605, align 4, !tbaa !7
  %325 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul1609 = fmul float %324, %325
  store float %mul1609, float* %arrayidx1605, align 4, !tbaa !7
  %add1614 = add i64 %call, 1176
  %arrayidx1615 = getelementptr inbounds float, float* %b, i64 %add1614
  %326 = load float, float* %arrayidx1615, align 4, !tbaa !7
  %327 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1619 = fmul float %326, %327
  store float %mul1619, float* %arrayidx1615, align 4, !tbaa !7
  %add1624 = add i64 %call, 1184
  %arrayidx1625 = getelementptr inbounds float, float* %b, i64 %add1624
  %328 = load float, float* %arrayidx1625, align 4, !tbaa !7
  %329 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1629 = fmul float %328, %329
  store float %mul1629, float* %arrayidx1625, align 4, !tbaa !7
  %add1634 = add i64 %call, 1192
  %arrayidx1635 = getelementptr inbounds float, float* %b, i64 %add1634
  %330 = load float, float* %arrayidx1635, align 4, !tbaa !7
  %331 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1639 = fmul float %330, %331
  store float %mul1639, float* %arrayidx1635, align 4, !tbaa !7
  %add1644 = add i64 %call, 1200
  %arrayidx1645 = getelementptr inbounds float, float* %b, i64 %add1644
  %332 = load float, float* %arrayidx1645, align 4, !tbaa !7
  %333 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1649 = fmul float %332, %333
  store float %mul1649, float* %arrayidx1645, align 4, !tbaa !7
  %add1654 = add i64 %call, 1208
  %arrayidx1655 = getelementptr inbounds float, float* %b, i64 %add1654
  %334 = load float, float* %arrayidx1655, align 4, !tbaa !7
  %335 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul1659 = fmul float %334, %335
  store float %mul1659, float* %arrayidx1655, align 4, !tbaa !7
  %add1664 = add i64 %call, 1216
  %arrayidx1665 = getelementptr inbounds float, float* %b, i64 %add1664
  %336 = load float, float* %arrayidx1665, align 4, !tbaa !7
  %337 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1669 = fmul float %336, %337
  store float %mul1669, float* %arrayidx1665, align 4, !tbaa !7
  %add1674 = add i64 %call, 1224
  %arrayidx1675 = getelementptr inbounds float, float* %b, i64 %add1674
  %338 = load float, float* %arrayidx1675, align 4, !tbaa !7
  %339 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1679 = fmul float %338, %339
  store float %mul1679, float* %arrayidx1675, align 4, !tbaa !7
  %add1684 = add i64 %call, 1232
  %arrayidx1685 = getelementptr inbounds float, float* %b, i64 %add1684
  %340 = load float, float* %arrayidx1685, align 4, !tbaa !7
  %arrayidx1688 = getelementptr inbounds float, float* %a, i64 %add144
  %341 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1689 = fmul float %340, %341
  store float %mul1689, float* %arrayidx1685, align 4, !tbaa !7
  %add1694 = add i64 %call, 1240
  %arrayidx1695 = getelementptr inbounds float, float* %b, i64 %add1694
  %342 = load float, float* %arrayidx1695, align 4, !tbaa !7
  %343 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1699 = fmul float %342, %343
  %344 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1703 = fmul float %mul1699, %344
  store float %mul1703, float* %arrayidx1695, align 4, !tbaa !7
  %add1708 = add i64 %call, 1248
  %arrayidx1709 = getelementptr inbounds float, float* %b, i64 %add1708
  %345 = load float, float* %arrayidx1709, align 4, !tbaa !7
  %346 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1713 = fmul float %345, %346
  %347 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1717 = fmul float %mul1713, %347
  store float %mul1717, float* %arrayidx1709, align 4, !tbaa !7
  %add1722 = add i64 %call, 1256
  %arrayidx1723 = getelementptr inbounds float, float* %b, i64 %add1722
  %348 = load float, float* %arrayidx1723, align 4, !tbaa !7
  %349 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1727 = fmul float %348, %349
  %350 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1731 = fmul float %mul1727, %350
  store float %mul1731, float* %arrayidx1723, align 4, !tbaa !7
  %add1736 = add i64 %call, 1264
  %arrayidx1737 = getelementptr inbounds float, float* %b, i64 %add1736
  %351 = load float, float* %arrayidx1737, align 4, !tbaa !7
  %352 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1741 = fmul float %351, %352
  %353 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1745 = fmul float %mul1741, %353
  store float %mul1745, float* %arrayidx1737, align 4, !tbaa !7
  %add1750 = add i64 %call, 1272
  %arrayidx1751 = getelementptr inbounds float, float* %b, i64 %add1750
  %354 = load float, float* %arrayidx1751, align 4, !tbaa !7
  %355 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1755 = fmul float %354, %355
  %356 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1759 = fmul float %mul1755, %356
  store float %mul1759, float* %arrayidx1751, align 4, !tbaa !7
  %add1764 = add i64 %call, 1280
  %arrayidx1765 = getelementptr inbounds float, float* %b, i64 %add1764
  %357 = load float, float* %arrayidx1765, align 4, !tbaa !7
  %358 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1769 = fmul float %357, %358
  %359 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul1773 = fmul float %mul1769, %359
  store float %mul1773, float* %arrayidx1765, align 4, !tbaa !7
  %add1778 = add i64 %call, 1288
  %arrayidx1779 = getelementptr inbounds float, float* %b, i64 %add1778
  %360 = load float, float* %arrayidx1779, align 4, !tbaa !7
  %361 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1783 = fmul float %360, %361
  %362 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1787 = fmul float %mul1783, %362
  store float %mul1787, float* %arrayidx1779, align 4, !tbaa !7
  %add1792 = add i64 %call, 1296
  %arrayidx1793 = getelementptr inbounds float, float* %b, i64 %add1792
  %363 = load float, float* %arrayidx1793, align 4, !tbaa !7
  %364 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1797 = fmul float %363, %364
  %365 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul1801 = fmul float %mul1797, %365
  store float %mul1801, float* %arrayidx1793, align 4, !tbaa !7
  %add1806 = add i64 %call, 1304
  %arrayidx1807 = getelementptr inbounds float, float* %b, i64 %add1806
  %366 = load float, float* %arrayidx1807, align 4, !tbaa !7
  %367 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1811 = fmul float %366, %367
  store float %mul1811, float* %arrayidx1807, align 4, !tbaa !7
  %add1816 = add i64 %call, 1312
  %arrayidx1817 = getelementptr inbounds float, float* %b, i64 %add1816
  %368 = load float, float* %arrayidx1817, align 4, !tbaa !7
  %369 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1821 = fmul float %368, %369
  store float %mul1821, float* %arrayidx1817, align 4, !tbaa !7
  %add1826 = add i64 %call, 1320
  %arrayidx1827 = getelementptr inbounds float, float* %b, i64 %add1826
  %370 = load float, float* %arrayidx1827, align 4, !tbaa !7
  %371 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1831 = fmul float %370, %371
  store float %mul1831, float* %arrayidx1827, align 4, !tbaa !7
  %add1836 = add i64 %call, 1328
  %arrayidx1837 = getelementptr inbounds float, float* %b, i64 %add1836
  %372 = load float, float* %arrayidx1837, align 4, !tbaa !7
  %373 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1841 = fmul float %372, %373
  store float %mul1841, float* %arrayidx1837, align 4, !tbaa !7
  %add1846 = add i64 %call, 1336
  %arrayidx1847 = getelementptr inbounds float, float* %b, i64 %add1846
  %374 = load float, float* %arrayidx1847, align 4, !tbaa !7
  %375 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1851 = fmul float %374, %375
  %376 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul1855 = fmul float %mul1851, %376
  store float %mul1855, float* %arrayidx1847, align 4, !tbaa !7
  %add1860 = add i64 %call, 1344
  %arrayidx1861 = getelementptr inbounds float, float* %b, i64 %add1860
  %377 = load float, float* %arrayidx1861, align 4, !tbaa !7
  %378 = load float, float* %arrayidx1688, align 4, !tbaa !7
  %mul1865 = fmul float %377, %378
  %379 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul1869 = fmul float %mul1865, %379
  store float %mul1869, float* %arrayidx1861, align 4, !tbaa !7
  %add1874 = add i64 %call, 1352
  %arrayidx1875 = getelementptr inbounds float, float* %b, i64 %add1874
  %380 = load float, float* %arrayidx1875, align 4, !tbaa !7
  %381 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1879 = fmul float %380, %381
  store float %mul1879, float* %arrayidx1875, align 4, !tbaa !7
  %add1884 = add i64 %call, 1360
  %arrayidx1885 = getelementptr inbounds float, float* %b, i64 %add1884
  %382 = load float, float* %arrayidx1885, align 4, !tbaa !7
  %383 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1889 = fmul float %382, %383
  store float %mul1889, float* %arrayidx1885, align 4, !tbaa !7
  %add1894 = add i64 %call, 1368
  %arrayidx1895 = getelementptr inbounds float, float* %b, i64 %add1894
  %384 = load float, float* %arrayidx1895, align 4, !tbaa !7
  %385 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1899 = fmul float %384, %385
  store float %mul1899, float* %arrayidx1895, align 4, !tbaa !7
  %add1904 = add i64 %call, 1376
  %arrayidx1905 = getelementptr inbounds float, float* %b, i64 %add1904
  %386 = load float, float* %arrayidx1905, align 4, !tbaa !7
  %387 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1909 = fmul float %386, %387
  store float %mul1909, float* %arrayidx1905, align 4, !tbaa !7
  %add1914 = add i64 %call, 1384
  %arrayidx1915 = getelementptr inbounds float, float* %b, i64 %add1914
  %388 = load float, float* %arrayidx1915, align 4, !tbaa !7
  %389 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul1919 = fmul float %388, %389
  store float %mul1919, float* %arrayidx1915, align 4, !tbaa !7
  %add1924 = add i64 %call, 1392
  %arrayidx1925 = getelementptr inbounds float, float* %b, i64 %add1924
  %390 = load float, float* %arrayidx1925, align 4, !tbaa !7
  %391 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul1929 = fmul float %390, %391
  store float %mul1929, float* %arrayidx1925, align 4, !tbaa !7
  %add1934 = add i64 %call, 1400
  %arrayidx1935 = getelementptr inbounds float, float* %b, i64 %add1934
  %392 = load float, float* %arrayidx1935, align 4, !tbaa !7
  %393 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul1939 = fmul float %392, %393
  store float %mul1939, float* %arrayidx1935, align 4, !tbaa !7
  %add1944 = add i64 %call, 1408
  %arrayidx1945 = getelementptr inbounds float, float* %b, i64 %add1944
  %394 = load float, float* %arrayidx1945, align 4, !tbaa !7
  %395 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul1949 = fmul float %394, %395
  store float %mul1949, float* %arrayidx1945, align 4, !tbaa !7
  %add1954 = add i64 %call, 1416
  %arrayidx1955 = getelementptr inbounds float, float* %b, i64 %add1954
  %396 = load float, float* %arrayidx1955, align 4, !tbaa !7
  %397 = load float, float* %arrayidx278, align 4, !tbaa !7
  %mul1959 = fmul float %396, %397
  store float %mul1959, float* %arrayidx1955, align 4, !tbaa !7
  %add1964 = add i64 %call, 1432
  %arrayidx1965 = getelementptr inbounds float, float* %b, i64 %add1964
  %398 = load float, float* %arrayidx1965, align 4, !tbaa !7
  %arrayidx1968 = getelementptr inbounds float, float* %a, i64 %add162
  %399 = load float, float* %arrayidx1968, align 4, !tbaa !7
  %mul1969 = fmul float %398, %399
  %400 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul1973 = fmul float %mul1969, %400
  store float %mul1973, float* %arrayidx1965, align 4, !tbaa !7
  %add1978 = add i64 %call, 1440
  %arrayidx1979 = getelementptr inbounds float, float* %b, i64 %add1978
  %401 = load float, float* %arrayidx1979, align 4, !tbaa !7
  %402 = load float, float* %arrayidx1968, align 4, !tbaa !7
  %mul1983 = fmul float %401, %402
  %403 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul1987 = fmul float %mul1983, %403
  store float %mul1987, float* %arrayidx1979, align 4, !tbaa !7
  %add1992 = add i64 %call, 1448
  %arrayidx1993 = getelementptr inbounds float, float* %b, i64 %add1992
  %404 = load float, float* %arrayidx1993, align 4, !tbaa !7
  %405 = load float, float* %arrayidx1968, align 4, !tbaa !7
  %mul1997 = fmul float %404, %405
  %406 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul2001 = fmul float %mul1997, %406
  store float %mul2001, float* %arrayidx1993, align 4, !tbaa !7
  %add2006 = add i64 %call, 1456
  %arrayidx2007 = getelementptr inbounds float, float* %b, i64 %add2006
  %407 = load float, float* %arrayidx2007, align 4, !tbaa !7
  %408 = load float, float* %arrayidx1968, align 4, !tbaa !7
  %mul2011 = fmul float %407, %408
  store float %mul2011, float* %arrayidx2007, align 4, !tbaa !7
  %add2016 = add i64 %call, 1464
  %arrayidx2017 = getelementptr inbounds float, float* %b, i64 %add2016
  %409 = load float, float* %arrayidx2017, align 4, !tbaa !7
  %410 = load float, float* %arrayidx1968, align 4, !tbaa !7
  %mul2021 = fmul float %409, %410
  %411 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul2025 = fmul float %mul2021, %411
  store float %mul2025, float* %arrayidx2017, align 4, !tbaa !7
  %add2030 = add i64 %call, 1472
  %arrayidx2031 = getelementptr inbounds float, float* %b, i64 %add2030
  %412 = load float, float* %arrayidx2031, align 4, !tbaa !7
  %arrayidx2034 = getelementptr inbounds float, float* %a, i64 %add218
  %413 = load float, float* %arrayidx2034, align 4, !tbaa !7
  %mul2035 = fmul float %412, %413
  %414 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul2039 = fmul float %mul2035, %414
  store float %mul2039, float* %arrayidx2031, align 4, !tbaa !7
  %add2044 = add i64 %call, 1480
  %arrayidx2045 = getelementptr inbounds float, float* %b, i64 %add2044
  %415 = load float, float* %arrayidx2045, align 4, !tbaa !7
  %416 = load float, float* %arrayidx2034, align 4, !tbaa !7
  %mul2049 = fmul float %415, %416
  %417 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul2053 = fmul float %mul2049, %417
  store float %mul2053, float* %arrayidx2045, align 4, !tbaa !7
  %add2058 = add i64 %call, 1488
  %arrayidx2059 = getelementptr inbounds float, float* %b, i64 %add2058
  %418 = load float, float* %arrayidx2059, align 4, !tbaa !7
  %419 = load float, float* %arrayidx2034, align 4, !tbaa !7
  %mul2063 = fmul float %418, %419
  %420 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul2067 = fmul float %mul2063, %420
  store float %mul2067, float* %arrayidx2059, align 4, !tbaa !7
  %add2072 = add i64 %call, 1496
  %arrayidx2073 = getelementptr inbounds float, float* %b, i64 %add2072
  %421 = load float, float* %arrayidx2073, align 4, !tbaa !7
  %422 = load float, float* %arrayidx2034, align 4, !tbaa !7
  %mul2077 = fmul float %421, %422
  %423 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul2081 = fmul float %mul2077, %423
  store float %mul2081, float* %arrayidx2073, align 4, !tbaa !7
  %add2086 = add i64 %call, 1504
  %arrayidx2087 = getelementptr inbounds float, float* %b, i64 %add2086
  %424 = load float, float* %arrayidx2087, align 4, !tbaa !7
  %425 = load float, float* %arrayidx2034, align 4, !tbaa !7
  %mul2091 = fmul float %424, %425
  store float %mul2091, float* %arrayidx2087, align 4, !tbaa !7
  %add2096 = add i64 %call, 1512
  %arrayidx2097 = getelementptr inbounds float, float* %b, i64 %add2096
  %426 = load float, float* %arrayidx2097, align 4, !tbaa !7
  %arrayidx2100 = getelementptr inbounds float, float* %a, i64 %add232
  %427 = load float, float* %arrayidx2100, align 4, !tbaa !7
  %mul2101 = fmul float %426, %427
  %428 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul2105 = fmul float %mul2101, %428
  store float %mul2105, float* %arrayidx2097, align 4, !tbaa !7
  %add2110 = add i64 %call, 1520
  %arrayidx2111 = getelementptr inbounds float, float* %b, i64 %add2110
  %429 = load float, float* %arrayidx2111, align 4, !tbaa !7
  %430 = load float, float* %arrayidx2100, align 4, !tbaa !7
  %mul2115 = fmul float %429, %430
  %431 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul2119 = fmul float %mul2115, %431
  store float %mul2119, float* %arrayidx2111, align 4, !tbaa !7
  %add2124 = add i64 %call, 1528
  %arrayidx2125 = getelementptr inbounds float, float* %b, i64 %add2124
  %432 = load float, float* %arrayidx2125, align 4, !tbaa !7
  %433 = load float, float* %arrayidx2100, align 4, !tbaa !7
  %mul2129 = fmul float %432, %433
  %434 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul2133 = fmul float %mul2129, %434
  store float %mul2133, float* %arrayidx2125, align 4, !tbaa !7
  %add2138 = add i64 %call, 1536
  %arrayidx2139 = getelementptr inbounds float, float* %b, i64 %add2138
  %435 = load float, float* %arrayidx2139, align 4, !tbaa !7
  %436 = load float, float* %arrayidx2100, align 4, !tbaa !7
  %mul2143 = fmul float %435, %436
  %437 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul2147 = fmul float %mul2143, %437
  store float %mul2147, float* %arrayidx2139, align 4, !tbaa !7
  %add2152 = add i64 %call, 1544
  %arrayidx2153 = getelementptr inbounds float, float* %b, i64 %add2152
  %438 = load float, float* %arrayidx2153, align 4, !tbaa !7
  %439 = load float, float* %arrayidx2100, align 4, !tbaa !7
  %mul2157 = fmul float %438, %439
  %440 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul2161 = fmul float %mul2157, %440
  store float %mul2161, float* %arrayidx2153, align 4, !tbaa !7
  %add2166 = add i64 %call, 1552
  %arrayidx2167 = getelementptr inbounds float, float* %b, i64 %add2166
  %441 = load float, float* %arrayidx2167, align 4, !tbaa !7
  %442 = load float, float* %arrayidx2100, align 4, !tbaa !7
  %mul2171 = fmul float %441, %442
  %443 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul2175 = fmul float %mul2171, %443
  store float %mul2175, float* %arrayidx2167, align 4, !tbaa !7
  %add2180 = add i64 %call, 1560
  %arrayidx2181 = getelementptr inbounds float, float* %b, i64 %add2180
  %444 = load float, float* %arrayidx2181, align 4, !tbaa !7
  %445 = load float, float* %arrayidx2100, align 4, !tbaa !7
  %mul2185 = fmul float %444, %445
  %446 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul2189 = fmul float %mul2185, %446
  store float %mul2189, float* %arrayidx2181, align 4, !tbaa !7
  %add2194 = add i64 %call, 1568
  %arrayidx2195 = getelementptr inbounds float, float* %b, i64 %add2194
  %447 = load float, float* %arrayidx2195, align 4, !tbaa !7
  %448 = load float, float* %arrayidx2100, align 4, !tbaa !7
  %mul2199 = fmul float %447, %448
  %449 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul2203 = fmul float %mul2199, %449
  store float %mul2203, float* %arrayidx2195, align 4, !tbaa !7
  %add2208 = add i64 %call, 1576
  %arrayidx2209 = getelementptr inbounds float, float* %b, i64 %add2208
  %450 = load float, float* %arrayidx2209, align 4, !tbaa !7
  %451 = load float, float* %arrayidx2100, align 4, !tbaa !7
  %mul2213 = fmul float %450, %451
  %452 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul2217 = fmul float %mul2213, %452
  store float %mul2217, float* %arrayidx2209, align 4, !tbaa !7
  %add2222 = add i64 %call, 1584
  %arrayidx2223 = getelementptr inbounds float, float* %b, i64 %add2222
  %453 = load float, float* %arrayidx2223, align 4, !tbaa !7
  %454 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul2227 = fmul float %453, %454
  store float %mul2227, float* %arrayidx2223, align 4, !tbaa !7
  %add2232 = add i64 %call, 1592
  %arrayidx2233 = getelementptr inbounds float, float* %b, i64 %add2232
  %455 = load float, float* %arrayidx2233, align 4, !tbaa !7
  %456 = load float, float* %arrayidx3, align 4, !tbaa !7
  %mul2237 = fmul float %455, %456
  store float %mul2237, float* %arrayidx2233, align 4, !tbaa !7
  %add2242 = add i64 %call, 1600
  %arrayidx2243 = getelementptr inbounds float, float* %b, i64 %add2242
  %457 = load float, float* %arrayidx2243, align 4, !tbaa !7
  %458 = load float, float* %arrayidx16, align 4, !tbaa !7
  %mul2247 = fmul float %457, %458
  store float %mul2247, float* %arrayidx2243, align 4, !tbaa !7
  %add2252 = add i64 %call, 1608
  %arrayidx2253 = getelementptr inbounds float, float* %b, i64 %add2252
  %459 = load float, float* %arrayidx2253, align 4, !tbaa !7
  %460 = load float, float* %arrayidx30, align 4, !tbaa !7
  %mul2257 = fmul float %459, %460
  store float %mul2257, float* %arrayidx2253, align 4, !tbaa !7
  %add2262 = add i64 %call, 1616
  %arrayidx2263 = getelementptr inbounds float, float* %b, i64 %add2262
  %461 = load float, float* %arrayidx2263, align 4, !tbaa !7
  %462 = load float, float* %arrayidx6, align 4, !tbaa !7
  %mul2267 = fmul float %461, %462
  store float %mul2267, float* %arrayidx2263, align 4, !tbaa !7
  %add2272 = add i64 %call, 1624
  %arrayidx2273 = getelementptr inbounds float, float* %b, i64 %add2272
  %463 = load float, float* %arrayidx2273, align 4, !tbaa !7
  %464 = load float, float* %arrayidx180, align 4, !tbaa !7
  %mul2277 = fmul float %463, %464
  store float %mul2277, float* %arrayidx2273, align 4, !tbaa !7
  %add2282 = add i64 %call, 1632
  %arrayidx2283 = getelementptr inbounds float, float* %b, i64 %add2282
  %465 = load float, float* %arrayidx2283, align 4, !tbaa !7
  %466 = load float, float* %arrayidx838, align 4, !tbaa !7
  %mul2287 = fmul float %465, %466
  store float %mul2287, float* %arrayidx2283, align 4, !tbaa !7
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
