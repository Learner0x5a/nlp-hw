; ModuleID = 'src/646.src'
source_filename = "src/646.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* readonly %b, float* %c, float* nocapture readonly %d, float %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %arrayidx = getelementptr inbounds float, float* %a, i64 %call
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %mul = fmul float %0, %e
  %mul2 = fmul float %mul, 0x4193D2C640000000
  %div = fdiv float 1.000000e+00, %mul2, !fpmath !11
  %mul3 = fmul float %div, 1.013250e+06
  %add = add i64 %call, 8
  %arrayidx5 = getelementptr inbounds float, float* %d, i64 %add
  %1 = load float, float* %arrayidx5, align 4, !tbaa !7
  %add7 = add i64 %call, 24
  %arrayidx8 = getelementptr inbounds float, float* %d, i64 %add7
  %2 = load float, float* %arrayidx8, align 4, !tbaa !7
  %mul9 = fmul float %1, %2
  %add11 = add i64 %call, 16
  %arrayidx12 = getelementptr inbounds float, float* %d, i64 %add11
  %3 = load float, float* %arrayidx12, align 4, !tbaa !7
  %add14 = add i64 %call, 32
  %arrayidx15 = getelementptr inbounds float, float* %d, i64 %add14
  %4 = load float, float* %arrayidx15, align 4, !tbaa !7
  %mul16 = fmul float %3, %4
  %div17 = fdiv float 1.000000e+00, %mul16, !fpmath !11
  %mul18 = fmul float %mul9, %div17
  %arrayidx21 = getelementptr inbounds float, float* %b, i64 %call
  %5 = load float, float* %arrayidx21, align 4, !tbaa !7
  %call22 = tail call float @_Z4fminff(float %mul18, float 0x4415AF1D80000000) #2
  %mul23 = fmul float %5, %call22
  %arrayidx26 = getelementptr inbounds float, float* %c, i64 %call
  store float %mul23, float* %arrayidx26, align 4, !tbaa !7
  %arrayidx29 = getelementptr inbounds float, float* %d, i64 %call
  %6 = load float, float* %arrayidx29, align 4, !tbaa !7
  %7 = load float, float* %arrayidx12, align 4, !tbaa !7
  %mul33 = fmul float %6, %7
  %8 = load float, float* %arrayidx5, align 4, !tbaa !7
  %9 = load float, float* %arrayidx15, align 4, !tbaa !7
  %mul40 = fmul float %8, %9
  %div41 = fdiv float 1.000000e+00, %mul40, !fpmath !11
  %mul42 = fmul float %mul33, %div41
  %arrayidx45 = getelementptr inbounds float, float* %b, i64 %add
  %10 = load float, float* %arrayidx45, align 4, !tbaa !7
  %call46 = tail call float @_Z4fminff(float %mul42, float 0x4415AF1D80000000) #2
  %mul47 = fmul float %10, %call46
  %arrayidx50 = getelementptr inbounds float, float* %c, i64 %add
  store float %mul47, float* %arrayidx50, align 4, !tbaa !7
  %11 = load float, float* %arrayidx29, align 4, !tbaa !7
  %12 = load float, float* %arrayidx15, align 4, !tbaa !7
  %mul57 = fmul float %11, %12
  %13 = load float, float* %arrayidx5, align 4, !tbaa !7
  %add62 = add i64 %call, 40
  %arrayidx63 = getelementptr inbounds float, float* %d, i64 %add62
  %14 = load float, float* %arrayidx63, align 4, !tbaa !7
  %mul64 = fmul float %13, %14
  %div65 = fdiv float 1.000000e+00, %mul64, !fpmath !11
  %mul66 = fmul float %mul57, %div65
  %arrayidx69 = getelementptr inbounds float, float* %b, i64 %add11
  %15 = load float, float* %arrayidx69, align 4, !tbaa !7
  %call70 = tail call float @_Z4fminff(float %mul66, float 0x4415AF1D80000000) #2
  %mul71 = fmul float %15, %call70
  %arrayidx74 = getelementptr inbounds float, float* %c, i64 %add11
  store float %mul71, float* %arrayidx74, align 4, !tbaa !7
  %16 = load float, float* %arrayidx15, align 4, !tbaa !7
  %mul81 = fmul float %16, %16
  %17 = load float, float* %arrayidx12, align 4, !tbaa !7
  %18 = load float, float* %arrayidx63, align 4, !tbaa !7
  %mul88 = fmul float %17, %18
  %div89 = fdiv float 1.000000e+00, %mul88, !fpmath !11
  %mul90 = fmul float %mul81, %div89
  %arrayidx93 = getelementptr inbounds float, float* %b, i64 %add7
  %19 = load float, float* %arrayidx93, align 4, !tbaa !7
  %call94 = tail call float @_Z4fminff(float %mul90, float 0x4415AF1D80000000) #2
  %mul95 = fmul float %19, %call94
  %arrayidx98 = getelementptr inbounds float, float* %c, i64 %add7
  store float %mul95, float* %arrayidx98, align 4, !tbaa !7
  %20 = load float, float* %arrayidx5, align 4, !tbaa !7
  %mul105 = fmul float %20, %20
  %mul106 = fmul float %mul3, %mul105
  %21 = load float, float* %arrayidx29, align 4, !tbaa !7
  %div110 = fdiv float 1.000000e+00, %21, !fpmath !11
  %mul111 = fmul float %mul106, %div110
  %arrayidx114 = getelementptr inbounds float, float* %b, i64 %add14
  %22 = load float, float* %arrayidx114, align 4, !tbaa !7
  %call115 = tail call float @_Z4fminff(float %mul111, float 0x4415AF1D80000000) #2
  %mul116 = fmul float %22, %call115
  %arrayidx119 = getelementptr inbounds float, float* %c, i64 %add14
  store float %mul116, float* %arrayidx119, align 4, !tbaa !7
  %23 = load float, float* %arrayidx5, align 4, !tbaa !7
  %mul126 = fmul float %23, %23
  %mul127 = fmul float %mul3, %mul126
  %24 = load float, float* %arrayidx29, align 4, !tbaa !7
  %div131 = fdiv float 1.000000e+00, %24, !fpmath !11
  %mul132 = fmul float %mul127, %div131
  %arrayidx135 = getelementptr inbounds float, float* %b, i64 %add62
  %25 = load float, float* %arrayidx135, align 4, !tbaa !7
  %call136 = tail call float @_Z4fminff(float %mul132, float 0x4415AF1D80000000) #2
  %mul137 = fmul float %25, %call136
  %arrayidx140 = getelementptr inbounds float, float* %c, i64 %add62
  store float %mul137, float* %arrayidx140, align 4, !tbaa !7
  %26 = load float, float* %arrayidx5, align 4, !tbaa !7
  %mul147 = fmul float %26, %26
  %mul148 = fmul float %mul3, %mul147
  %27 = load float, float* %arrayidx29, align 4, !tbaa !7
  %div152 = fdiv float 1.000000e+00, %27, !fpmath !11
  %mul153 = fmul float %mul148, %div152
  %add155 = add i64 %call, 48
  %arrayidx156 = getelementptr inbounds float, float* %b, i64 %add155
  %28 = load float, float* %arrayidx156, align 4, !tbaa !7
  %call157 = tail call float @_Z4fminff(float %mul153, float 0x4415AF1D80000000) #2
  %mul158 = fmul float %28, %call157
  %arrayidx161 = getelementptr inbounds float, float* %c, i64 %add155
  store float %mul158, float* %arrayidx161, align 4, !tbaa !7
  %29 = load float, float* %arrayidx5, align 4, !tbaa !7
  %mul168 = fmul float %29, %29
  %mul169 = fmul float %mul3, %mul168
  %30 = load float, float* %arrayidx29, align 4, !tbaa !7
  %div173 = fdiv float 1.000000e+00, %30, !fpmath !11
  %mul174 = fmul float %mul169, %div173
  %add176 = add i64 %call, 56
  %arrayidx177 = getelementptr inbounds float, float* %b, i64 %add176
  %31 = load float, float* %arrayidx177, align 4, !tbaa !7
  %call178 = tail call float @_Z4fminff(float %mul174, float 0x4415AF1D80000000) #2
  %mul179 = fmul float %31, %call178
  %arrayidx182 = getelementptr inbounds float, float* %c, i64 %add176
  store float %mul179, float* %arrayidx182, align 4, !tbaa !7
  %32 = load float, float* %arrayidx5, align 4, !tbaa !7
  %33 = load float, float* %arrayidx15, align 4, !tbaa !7
  %mul189 = fmul float %32, %33
  %mul190 = fmul float %mul3, %mul189
  %34 = load float, float* %arrayidx63, align 4, !tbaa !7
  %div194 = fdiv float 1.000000e+00, %34, !fpmath !11
  %mul195 = fmul float %mul190, %div194
  %add197 = add i64 %call, 64
  %arrayidx198 = getelementptr inbounds float, float* %b, i64 %add197
  %35 = load float, float* %arrayidx198, align 4, !tbaa !7
  %call199 = tail call float @_Z4fminff(float %mul195, float 0x4415AF1D80000000) #2
  %mul200 = fmul float %35, %call199
  %arrayidx203 = getelementptr inbounds float, float* %c, i64 %add197
  store float %mul200, float* %arrayidx203, align 4, !tbaa !7
  %36 = load float, float* %arrayidx5, align 4, !tbaa !7
  %37 = load float, float* %arrayidx12, align 4, !tbaa !7
  %mul210 = fmul float %36, %37
  %mul211 = fmul float %mul3, %mul210
  %38 = load float, float* %arrayidx15, align 4, !tbaa !7
  %div215 = fdiv float 1.000000e+00, %38, !fpmath !11
  %mul216 = fmul float %mul211, %div215
  %add218 = add i64 %call, 72
  %arrayidx219 = getelementptr inbounds float, float* %b, i64 %add218
  %39 = load float, float* %arrayidx219, align 4, !tbaa !7
  %call220 = tail call float @_Z4fminff(float %mul216, float 0x4415AF1D80000000) #2
  %mul221 = fmul float %39, %call220
  %arrayidx224 = getelementptr inbounds float, float* %c, i64 %add218
  store float %mul221, float* %arrayidx224, align 4, !tbaa !7
  %40 = load float, float* %arrayidx12, align 4, !tbaa !7
  %mul231 = fmul float %40, %40
  %mul232 = fmul float %mul3, %mul231
  %41 = load float, float* %arrayidx8, align 4, !tbaa !7
  %div236 = fdiv float 1.000000e+00, %41, !fpmath !11
  %mul237 = fmul float %mul232, %div236
  %add239 = add i64 %call, 80
  %arrayidx240 = getelementptr inbounds float, float* %b, i64 %add239
  %42 = load float, float* %arrayidx240, align 4, !tbaa !7
  %call241 = tail call float @_Z4fminff(float %mul237, float 0x4415AF1D80000000) #2
  %mul242 = fmul float %42, %call241
  %arrayidx245 = getelementptr inbounds float, float* %c, i64 %add239
  store float %mul242, float* %arrayidx245, align 4, !tbaa !7
  %43 = load float, float* %arrayidx5, align 4, !tbaa !7
  %44 = load float, float* %arrayidx8, align 4, !tbaa !7
  %mul252 = fmul float %43, %44
  %mul253 = fmul float %mul3, %mul252
  %arrayidx256 = getelementptr inbounds float, float* %d, i64 %add155
  %45 = load float, float* %arrayidx256, align 4, !tbaa !7
  %div257 = fdiv float 1.000000e+00, %45, !fpmath !11
  %mul258 = fmul float %mul253, %div257
  %add260 = add i64 %call, 88
  %arrayidx261 = getelementptr inbounds float, float* %b, i64 %add260
  %46 = load float, float* %arrayidx261, align 4, !tbaa !7
  %call262 = tail call float @_Z4fminff(float %mul258, float 0x4415AF1D80000000) #2
  %mul263 = fmul float %46, %call262
  %arrayidx266 = getelementptr inbounds float, float* %c, i64 %add260
  store float %mul263, float* %arrayidx266, align 4, !tbaa !7
  %47 = load float, float* %arrayidx5, align 4, !tbaa !7
  %48 = load float, float* %arrayidx8, align 4, !tbaa !7
  %mul273 = fmul float %47, %48
  %mul274 = fmul float %mul3, %mul273
  %49 = load float, float* %arrayidx256, align 4, !tbaa !7
  %div278 = fdiv float 1.000000e+00, %49, !fpmath !11
  %mul279 = fmul float %mul274, %div278
  %add281 = add i64 %call, 96
  %arrayidx282 = getelementptr inbounds float, float* %b, i64 %add281
  %50 = load float, float* %arrayidx282, align 4, !tbaa !7
  %call283 = tail call float @_Z4fminff(float %mul279, float 0x4415AF1D80000000) #2
  %mul284 = fmul float %50, %call283
  %arrayidx287 = getelementptr inbounds float, float* %c, i64 %add281
  store float %mul284, float* %arrayidx287, align 4, !tbaa !7
  %51 = load float, float* %arrayidx5, align 4, !tbaa !7
  %52 = load float, float* %arrayidx8, align 4, !tbaa !7
  %mul294 = fmul float %51, %52
  %mul295 = fmul float %mul3, %mul294
  %53 = load float, float* %arrayidx256, align 4, !tbaa !7
  %div299 = fdiv float 1.000000e+00, %53, !fpmath !11
  %mul300 = fmul float %mul295, %div299
  %add302 = add i64 %call, 104
  %arrayidx303 = getelementptr inbounds float, float* %b, i64 %add302
  %54 = load float, float* %arrayidx303, align 4, !tbaa !7
  %call304 = tail call float @_Z4fminff(float %mul300, float 0x4415AF1D80000000) #2
  %mul305 = fmul float %54, %call304
  %arrayidx308 = getelementptr inbounds float, float* %c, i64 %add302
  store float %mul305, float* %arrayidx308, align 4, !tbaa !7
  %55 = load float, float* %arrayidx5, align 4, !tbaa !7
  %56 = load float, float* %arrayidx8, align 4, !tbaa !7
  %mul315 = fmul float %55, %56
  %mul316 = fmul float %mul3, %mul315
  %57 = load float, float* %arrayidx256, align 4, !tbaa !7
  %div320 = fdiv float 1.000000e+00, %57, !fpmath !11
  %mul321 = fmul float %mul316, %div320
  %add323 = add i64 %call, 112
  %arrayidx324 = getelementptr inbounds float, float* %b, i64 %add323
  %58 = load float, float* %arrayidx324, align 4, !tbaa !7
  %call325 = tail call float @_Z4fminff(float %mul321, float 0x4415AF1D80000000) #2
  %mul326 = fmul float %58, %call325
  %arrayidx329 = getelementptr inbounds float, float* %c, i64 %add323
  store float %mul326, float* %arrayidx329, align 4, !tbaa !7
  %59 = load float, float* %arrayidx15, align 4, !tbaa !7
  %mul336 = fmul float %59, %59
  %mul337 = fmul float %mul3, %mul336
  %arrayidx340 = getelementptr inbounds float, float* %d, i64 %add176
  %60 = load float, float* %arrayidx340, align 4, !tbaa !7
  %div341 = fdiv float 1.000000e+00, %60, !fpmath !11
  %mul342 = fmul float %mul337, %div341
  %add344 = add i64 %call, 120
  %arrayidx345 = getelementptr inbounds float, float* %b, i64 %add344
  %61 = load float, float* %arrayidx345, align 4, !tbaa !7
  %call346 = tail call float @_Z4fminff(float %mul342, float 0x4415AF1D80000000) #2
  %mul347 = fmul float %61, %call346
  %arrayidx350 = getelementptr inbounds float, float* %c, i64 %add344
  store float %mul347, float* %arrayidx350, align 4, !tbaa !7
  %62 = load float, float* %arrayidx5, align 4, !tbaa !7
  %63 = load float, float* %arrayidx256, align 4, !tbaa !7
  %mul357 = fmul float %62, %63
  %64 = load float, float* %arrayidx12, align 4, !tbaa !7
  %65 = load float, float* %arrayidx63, align 4, !tbaa !7
  %mul364 = fmul float %64, %65
  %div365 = fdiv float 1.000000e+00, %mul364, !fpmath !11
  %mul366 = fmul float %mul357, %div365
  %add368 = add i64 %call, 128
  %arrayidx369 = getelementptr inbounds float, float* %b, i64 %add368
  %66 = load float, float* %arrayidx369, align 4, !tbaa !7
  %call370 = tail call float @_Z4fminff(float %mul366, float 0x4415AF1D80000000) #2
  %mul371 = fmul float %66, %call370
  %arrayidx374 = getelementptr inbounds float, float* %c, i64 %add368
  store float %mul371, float* %arrayidx374, align 4, !tbaa !7
  %67 = load float, float* %arrayidx5, align 4, !tbaa !7
  %68 = load float, float* %arrayidx256, align 4, !tbaa !7
  %mul381 = fmul float %67, %68
  %69 = load float, float* %arrayidx29, align 4, !tbaa !7
  %70 = load float, float* %arrayidx8, align 4, !tbaa !7
  %mul388 = fmul float %69, %70
  %div389 = fdiv float 1.000000e+00, %mul388, !fpmath !11
  %mul390 = fmul float %mul381, %div389
  %add392 = add i64 %call, 136
  %arrayidx393 = getelementptr inbounds float, float* %b, i64 %add392
  %71 = load float, float* %arrayidx393, align 4, !tbaa !7
  %call394 = tail call float @_Z4fminff(float %mul390, float 0x4415AF1D80000000) #2
  %mul395 = fmul float %71, %call394
  %arrayidx398 = getelementptr inbounds float, float* %c, i64 %add392
  store float %mul395, float* %arrayidx398, align 4, !tbaa !7
  %72 = load float, float* %arrayidx5, align 4, !tbaa !7
  %73 = load float, float* %arrayidx256, align 4, !tbaa !7
  %mul405 = fmul float %72, %73
  %74 = load float, float* %arrayidx15, align 4, !tbaa !7
  %mul412 = fmul float %74, %74
  %div413 = fdiv float 1.000000e+00, %mul412, !fpmath !11
  %mul414 = fmul float %mul405, %div413
  %add416 = add i64 %call, 144
  %arrayidx417 = getelementptr inbounds float, float* %b, i64 %add416
  %75 = load float, float* %arrayidx417, align 4, !tbaa !7
  %call418 = tail call float @_Z4fminff(float %mul414, float 0x4415AF1D80000000) #2
  %mul419 = fmul float %75, %call418
  %arrayidx422 = getelementptr inbounds float, float* %c, i64 %add416
  store float %mul419, float* %arrayidx422, align 4, !tbaa !7
  %76 = load float, float* %arrayidx12, align 4, !tbaa !7
  %77 = load float, float* %arrayidx256, align 4, !tbaa !7
  %mul429 = fmul float %76, %77
  %78 = load float, float* %arrayidx8, align 4, !tbaa !7
  %79 = load float, float* %arrayidx15, align 4, !tbaa !7
  %mul436 = fmul float %78, %79
  %div437 = fdiv float 1.000000e+00, %mul436, !fpmath !11
  %mul438 = fmul float %mul429, %div437
  %add440 = add i64 %call, 152
  %arrayidx441 = getelementptr inbounds float, float* %b, i64 %add440
  %80 = load float, float* %arrayidx441, align 4, !tbaa !7
  %call442 = tail call float @_Z4fminff(float %mul438, float 0x4415AF1D80000000) #2
  %mul443 = fmul float %80, %call442
  %arrayidx446 = getelementptr inbounds float, float* %c, i64 %add440
  store float %mul443, float* %arrayidx446, align 4, !tbaa !7
  %81 = load float, float* %arrayidx15, align 4, !tbaa !7
  %82 = load float, float* %arrayidx256, align 4, !tbaa !7
  %mul453 = fmul float %81, %82
  %83 = load float, float* %arrayidx8, align 4, !tbaa !7
  %84 = load float, float* %arrayidx63, align 4, !tbaa !7
  %mul460 = fmul float %83, %84
  %div461 = fdiv float 1.000000e+00, %mul460, !fpmath !11
  %mul462 = fmul float %mul453, %div461
  %add464 = add i64 %call, 160
  %arrayidx465 = getelementptr inbounds float, float* %b, i64 %add464
  %85 = load float, float* %arrayidx465, align 4, !tbaa !7
  %call466 = tail call float @_Z4fminff(float %mul462, float 0x4415AF1D80000000) #2
  %mul467 = fmul float %85, %call466
  %arrayidx470 = getelementptr inbounds float, float* %c, i64 %add464
  store float %mul467, float* %arrayidx470, align 4, !tbaa !7
  %86 = load float, float* %arrayidx256, align 4, !tbaa !7
  %mul477 = fmul float %86, %86
  %87 = load float, float* %arrayidx8, align 4, !tbaa !7
  %88 = load float, float* %arrayidx340, align 4, !tbaa !7
  %mul484 = fmul float %87, %88
  %div485 = fdiv float 1.000000e+00, %mul484, !fpmath !11
  %mul486 = fmul float %mul477, %div485
  %add488 = add i64 %call, 168
  %arrayidx489 = getelementptr inbounds float, float* %b, i64 %add488
  %89 = load float, float* %arrayidx489, align 4, !tbaa !7
  %call490 = tail call float @_Z4fminff(float %mul486, float 0x4415AF1D80000000) #2
  %mul491 = fmul float %89, %call490
  %arrayidx494 = getelementptr inbounds float, float* %c, i64 %add488
  store float %mul491, float* %arrayidx494, align 4, !tbaa !7
  %90 = load float, float* %arrayidx256, align 4, !tbaa !7
  %mul501 = fmul float %90, %90
  %91 = load float, float* %arrayidx8, align 4, !tbaa !7
  %92 = load float, float* %arrayidx340, align 4, !tbaa !7
  %mul508 = fmul float %91, %92
  %div509 = fdiv float 1.000000e+00, %mul508, !fpmath !11
  %mul510 = fmul float %mul501, %div509
  %add512 = add i64 %call, 176
  %arrayidx513 = getelementptr inbounds float, float* %b, i64 %add512
  %93 = load float, float* %arrayidx513, align 4, !tbaa !7
  %call514 = tail call float @_Z4fminff(float %mul510, float 0x4415AF1D80000000) #2
  %mul515 = fmul float %93, %call514
  %arrayidx518 = getelementptr inbounds float, float* %c, i64 %add512
  store float %mul515, float* %arrayidx518, align 4, !tbaa !7
  %94 = load float, float* %arrayidx5, align 4, !tbaa !7
  %95 = load float, float* %arrayidx340, align 4, !tbaa !7
  %mul525 = fmul float %94, %95
  %96 = load float, float* %arrayidx29, align 4, !tbaa !7
  %97 = load float, float* %arrayidx256, align 4, !tbaa !7
  %mul532 = fmul float %96, %97
  %div533 = fdiv float 1.000000e+00, %mul532, !fpmath !11
  %mul534 = fmul float %mul525, %div533
  %add536 = add i64 %call, 184
  %arrayidx537 = getelementptr inbounds float, float* %b, i64 %add536
  %98 = load float, float* %arrayidx537, align 4, !tbaa !7
  %call538 = tail call float @_Z4fminff(float %mul534, float 0x4415AF1D80000000) #2
  %mul539 = fmul float %98, %call538
  %arrayidx542 = getelementptr inbounds float, float* %c, i64 %add536
  store float %mul539, float* %arrayidx542, align 4, !tbaa !7
  %99 = load float, float* %arrayidx5, align 4, !tbaa !7
  %100 = load float, float* %arrayidx340, align 4, !tbaa !7
  %mul549 = fmul float %99, %100
  %101 = load float, float* %arrayidx15, align 4, !tbaa !7
  %102 = load float, float* %arrayidx63, align 4, !tbaa !7
  %mul556 = fmul float %101, %102
  %div557 = fdiv float 1.000000e+00, %mul556, !fpmath !11
  %mul558 = fmul float %mul549, %div557
  %add560 = add i64 %call, 192
  %arrayidx561 = getelementptr inbounds float, float* %b, i64 %add560
  %103 = load float, float* %arrayidx561, align 4, !tbaa !7
  %call562 = tail call float @_Z4fminff(float %mul558, float 0x4415AF1D80000000) #2
  %mul563 = fmul float %103, %call562
  %arrayidx566 = getelementptr inbounds float, float* %c, i64 %add560
  store float %mul563, float* %arrayidx566, align 4, !tbaa !7
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local float @_Z4fminff(float, float) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"float*", !"float"}
!6 = !{!"const", !"const", !"", !"const", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{float 2.500000e+00}
