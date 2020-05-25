; ModuleID = 'src/648.src'
source_filename = "src/648.src"
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
  %add = add i64 %call, 24
  %arrayidx5 = getelementptr inbounds float, float* %d, i64 %add
  %1 = load float, float* %arrayidx5, align 4, !tbaa !7
  %add7 = add i64 %call, 72
  %arrayidx8 = getelementptr inbounds float, float* %d, i64 %add7
  %2 = load float, float* %arrayidx8, align 4, !tbaa !7
  %mul9 = fmul float %1, %2
  %add11 = add i64 %call, 32
  %arrayidx12 = getelementptr inbounds float, float* %d, i64 %add11
  %3 = load float, float* %arrayidx12, align 4, !tbaa !7
  %add14 = add i64 %call, 120
  %arrayidx15 = getelementptr inbounds float, float* %d, i64 %add14
  %4 = load float, float* %arrayidx15, align 4, !tbaa !7
  %mul16 = fmul float %3, %4
  %div17 = fdiv float 1.000000e+00, %mul16, !fpmath !11
  %mul18 = fmul float %mul9, %div17
  %add20 = add i64 %call, 400
  %arrayidx21 = getelementptr inbounds float, float* %b, i64 %add20
  %5 = load float, float* %arrayidx21, align 4, !tbaa !7
  %call22 = tail call float @_Z4fminff(float %mul18, float 0x4415AF1D80000000) #2
  %mul23 = fmul float %5, %call22
  %arrayidx26 = getelementptr inbounds float, float* %c, i64 %add20
  store float %mul23, float* %arrayidx26, align 4, !tbaa !7
  %6 = load float, float* %arrayidx5, align 4, !tbaa !7
  %7 = load float, float* %arrayidx8, align 4, !tbaa !7
  %mul33 = fmul float %6, %7
  %add35 = add i64 %call, 8
  %arrayidx36 = getelementptr inbounds float, float* %d, i64 %add35
  %8 = load float, float* %arrayidx36, align 4, !tbaa !7
  %mul40 = fmul float %8, %8
  %add42 = add i64 %call, 112
  %arrayidx43 = getelementptr inbounds float, float* %d, i64 %add42
  %9 = load float, float* %arrayidx43, align 4, !tbaa !7
  %mul44 = fmul float %mul40, %9
  %mul45 = fmul float %mul3, %mul44
  %div46 = fdiv float 1.000000e+00, %mul45, !fpmath !11
  %mul47 = fmul float %mul33, %div46
  %add49 = add i64 %call, 408
  %arrayidx50 = getelementptr inbounds float, float* %b, i64 %add49
  %10 = load float, float* %arrayidx50, align 4, !tbaa !7
  %call51 = tail call float @_Z4fminff(float %mul47, float 0x4415AF1D80000000) #2
  %mul52 = fmul float %10, %call51
  %arrayidx55 = getelementptr inbounds float, float* %c, i64 %add49
  store float %mul52, float* %arrayidx55, align 4, !tbaa !7
  %11 = load float, float* %arrayidx12, align 4, !tbaa !7
  %12 = load float, float* %arrayidx8, align 4, !tbaa !7
  %mul62 = fmul float %11, %12
  %13 = load float, float* %arrayidx36, align 4, !tbaa !7
  %add67 = add i64 %call, 128
  %arrayidx68 = getelementptr inbounds float, float* %d, i64 %add67
  %14 = load float, float* %arrayidx68, align 4, !tbaa !7
  %mul69 = fmul float %13, %14
  %div70 = fdiv float 1.000000e+00, %mul69, !fpmath !11
  %mul71 = fmul float %mul62, %div70
  %add73 = add i64 %call, 416
  %arrayidx74 = getelementptr inbounds float, float* %b, i64 %add73
  %15 = load float, float* %arrayidx74, align 4, !tbaa !7
  %call75 = tail call float @_Z4fminff(float %mul71, float 0x4415AF1D80000000) #2
  %mul76 = fmul float %15, %call75
  %arrayidx79 = getelementptr inbounds float, float* %c, i64 %add73
  store float %mul76, float* %arrayidx79, align 4, !tbaa !7
  %16 = load float, float* %arrayidx12, align 4, !tbaa !7
  %17 = load float, float* %arrayidx8, align 4, !tbaa !7
  %mul86 = fmul float %16, %17
  %add88 = add i64 %call, 40
  %arrayidx89 = getelementptr inbounds float, float* %d, i64 %add88
  %18 = load float, float* %arrayidx89, align 4, !tbaa !7
  %add91 = add i64 %call, 64
  %arrayidx92 = getelementptr inbounds float, float* %d, i64 %add91
  %19 = load float, float* %arrayidx92, align 4, !tbaa !7
  %mul93 = fmul float %18, %19
  %div94 = fdiv float 1.000000e+00, %mul93, !fpmath !11
  %mul95 = fmul float %mul86, %div94
  %add97 = add i64 %call, 424
  %arrayidx98 = getelementptr inbounds float, float* %b, i64 %add97
  %20 = load float, float* %arrayidx98, align 4, !tbaa !7
  %call99 = tail call float @_Z4fminff(float %mul95, float 0x4415AF1D80000000) #2
  %mul100 = fmul float %20, %call99
  %arrayidx103 = getelementptr inbounds float, float* %c, i64 %add97
  store float %mul100, float* %arrayidx103, align 4, !tbaa !7
  %add105 = add i64 %call, 48
  %arrayidx106 = getelementptr inbounds float, float* %d, i64 %add105
  %21 = load float, float* %arrayidx106, align 4, !tbaa !7
  %22 = load float, float* %arrayidx8, align 4, !tbaa !7
  %mul110 = fmul float %21, %22
  %23 = load float, float* %arrayidx12, align 4, !tbaa !7
  %24 = load float, float* %arrayidx68, align 4, !tbaa !7
  %mul117 = fmul float %23, %24
  %div118 = fdiv float 1.000000e+00, %mul117, !fpmath !11
  %mul119 = fmul float %mul110, %div118
  %add121 = add i64 %call, 432
  %arrayidx122 = getelementptr inbounds float, float* %b, i64 %add121
  %25 = load float, float* %arrayidx122, align 4, !tbaa !7
  %call123 = tail call float @_Z4fminff(float %mul119, float 0x4415AF1D80000000) #2
  %mul124 = fmul float %25, %call123
  %arrayidx127 = getelementptr inbounds float, float* %c, i64 %add121
  store float %mul124, float* %arrayidx127, align 4, !tbaa !7
  %26 = load float, float* %arrayidx8, align 4, !tbaa !7
  %add132 = add i64 %call, 104
  %arrayidx133 = getelementptr inbounds float, float* %d, i64 %add132
  %27 = load float, float* %arrayidx133, align 4, !tbaa !7
  %mul134 = fmul float %26, %27
  %mul135 = fmul float %mul3, %mul134
  %add137 = add i64 %call, 200
  %arrayidx138 = getelementptr inbounds float, float* %d, i64 %add137
  %28 = load float, float* %arrayidx138, align 4, !tbaa !7
  %div139 = fdiv float 1.000000e+00, %28, !fpmath !11
  %mul140 = fmul float %mul135, %div139
  %add142 = add i64 %call, 440
  %arrayidx143 = getelementptr inbounds float, float* %b, i64 %add142
  %29 = load float, float* %arrayidx143, align 4, !tbaa !7
  %call144 = tail call float @_Z4fminff(float %mul140, float 0x4415AF1D80000000) #2
  %mul145 = fmul float %29, %call144
  %arrayidx148 = getelementptr inbounds float, float* %c, i64 %add142
  store float %mul145, float* %arrayidx148, align 4, !tbaa !7
  %30 = load float, float* %arrayidx92, align 4, !tbaa !7
  %31 = load float, float* %arrayidx8, align 4, !tbaa !7
  %mul155 = fmul float %30, %31
  %32 = load float, float* %arrayidx36, align 4, !tbaa !7
  %add160 = add i64 %call, 144
  %arrayidx161 = getelementptr inbounds float, float* %d, i64 %add160
  %33 = load float, float* %arrayidx161, align 4, !tbaa !7
  %mul162 = fmul float %32, %33
  %div163 = fdiv float 1.000000e+00, %mul162, !fpmath !11
  %mul164 = fmul float %mul155, %div163
  %add166 = add i64 %call, 448
  %arrayidx167 = getelementptr inbounds float, float* %b, i64 %add166
  %34 = load float, float* %arrayidx167, align 4, !tbaa !7
  %call168 = tail call float @_Z4fminff(float %mul164, float 0x4415AF1D80000000) #2
  %mul169 = fmul float %34, %call168
  %arrayidx172 = getelementptr inbounds float, float* %c, i64 %add166
  store float %mul169, float* %arrayidx172, align 4, !tbaa !7
  %35 = load float, float* %arrayidx8, align 4, !tbaa !7
  %mul179 = fmul float %35, %35
  %arrayidx182 = getelementptr inbounds float, float* %d, i64 %call
  %36 = load float, float* %arrayidx182, align 4, !tbaa !7
  %37 = load float, float* %arrayidx161, align 4, !tbaa !7
  %mul186 = fmul float %36, %37
  %div187 = fdiv float 1.000000e+00, %mul186, !fpmath !11
  %mul188 = fmul float %mul179, %div187
  %add190 = add i64 %call, 456
  %arrayidx191 = getelementptr inbounds float, float* %b, i64 %add190
  %38 = load float, float* %arrayidx191, align 4, !tbaa !7
  %call192 = tail call float @_Z4fminff(float %mul188, float 0x4415AF1D80000000) #2
  %mul193 = fmul float %38, %call192
  %arrayidx196 = getelementptr inbounds float, float* %c, i64 %add190
  store float %mul193, float* %arrayidx196, align 4, !tbaa !7
  %add198 = add i64 %call, 80
  %arrayidx199 = getelementptr inbounds float, float* %d, i64 %add198
  %39 = load float, float* %arrayidx199, align 4, !tbaa !7
  %40 = load float, float* %arrayidx8, align 4, !tbaa !7
  %div203 = fdiv float 1.000000e+00, %40, !fpmath !11
  %mul204 = fmul float %39, %div203
  %add206 = add i64 %call, 464
  %arrayidx207 = getelementptr inbounds float, float* %b, i64 %add206
  %41 = load float, float* %arrayidx207, align 4, !tbaa !7
  %call208 = tail call float @_Z4fminff(float %mul204, float 0x4415AF1D80000000) #2
  %mul209 = fmul float %41, %call208
  %arrayidx212 = getelementptr inbounds float, float* %c, i64 %add206
  store float %mul209, float* %arrayidx212, align 4, !tbaa !7
  %42 = load float, float* %arrayidx36, align 4, !tbaa !7
  %43 = load float, float* %arrayidx199, align 4, !tbaa !7
  %mul219 = fmul float %42, %43
  %44 = load float, float* %arrayidx182, align 4, !tbaa !7
  %45 = load float, float* %arrayidx92, align 4, !tbaa !7
  %mul226 = fmul float %44, %45
  %div227 = fdiv float 1.000000e+00, %mul226, !fpmath !11
  %mul228 = fmul float %mul219, %div227
  %add230 = add i64 %call, 472
  %arrayidx231 = getelementptr inbounds float, float* %b, i64 %add230
  %46 = load float, float* %arrayidx231, align 4, !tbaa !7
  %call232 = tail call float @_Z4fminff(float %mul228, float 0x4415AF1D80000000) #2
  %mul233 = fmul float %46, %call232
  %arrayidx236 = getelementptr inbounds float, float* %c, i64 %add230
  store float %mul233, float* %arrayidx236, align 4, !tbaa !7
  %add238 = add i64 %call, 16
  %arrayidx239 = getelementptr inbounds float, float* %d, i64 %add238
  %47 = load float, float* %arrayidx239, align 4, !tbaa !7
  %48 = load float, float* %arrayidx199, align 4, !tbaa !7
  %mul243 = fmul float %47, %48
  %49 = load float, float* %arrayidx182, align 4, !tbaa !7
  %50 = load float, float* %arrayidx133, align 4, !tbaa !7
  %mul250 = fmul float %49, %50
  %div251 = fdiv float 1.000000e+00, %mul250, !fpmath !11
  %mul252 = fmul float %mul243, %div251
  %add254 = add i64 %call, 480
  %arrayidx255 = getelementptr inbounds float, float* %b, i64 %add254
  %51 = load float, float* %arrayidx255, align 4, !tbaa !7
  %call256 = tail call float @_Z4fminff(float %mul252, float 0x4415AF1D80000000) #2
  %mul257 = fmul float %51, %call256
  %arrayidx260 = getelementptr inbounds float, float* %c, i64 %add254
  store float %mul257, float* %arrayidx260, align 4, !tbaa !7
  %52 = load float, float* %arrayidx239, align 4, !tbaa !7
  %53 = load float, float* %arrayidx199, align 4, !tbaa !7
  %mul267 = fmul float %52, %53
  %54 = load float, float* %arrayidx36, align 4, !tbaa !7
  %55 = load float, float* %arrayidx15, align 4, !tbaa !7
  %mul274 = fmul float %54, %55
  %div275 = fdiv float 1.000000e+00, %mul274, !fpmath !11
  %mul276 = fmul float %mul267, %div275
  %add278 = add i64 %call, 488
  %arrayidx279 = getelementptr inbounds float, float* %b, i64 %add278
  %56 = load float, float* %arrayidx279, align 4, !tbaa !7
  %call280 = tail call float @_Z4fminff(float %mul276, float 0x4415AF1D80000000) #2
  %mul281 = fmul float %56, %call280
  %arrayidx284 = getelementptr inbounds float, float* %c, i64 %add278
  store float %mul281, float* %arrayidx284, align 4, !tbaa !7
  %57 = load float, float* %arrayidx12, align 4, !tbaa !7
  %58 = load float, float* %arrayidx199, align 4, !tbaa !7
  %mul291 = fmul float %57, %58
  %59 = load float, float* %arrayidx36, align 4, !tbaa !7
  %60 = load float, float* %arrayidx68, align 4, !tbaa !7
  %mul298 = fmul float %59, %60
  %div299 = fdiv float 1.000000e+00, %mul298, !fpmath !11
  %mul300 = fmul float %mul291, %div299
  %add302 = add i64 %call, 496
  %arrayidx303 = getelementptr inbounds float, float* %b, i64 %add302
  %61 = load float, float* %arrayidx303, align 4, !tbaa !7
  %call304 = tail call float @_Z4fminff(float %mul300, float 0x4415AF1D80000000) #2
  %mul305 = fmul float %61, %call304
  %arrayidx308 = getelementptr inbounds float, float* %c, i64 %add302
  store float %mul305, float* %arrayidx308, align 4, !tbaa !7
  %62 = load float, float* %arrayidx182, align 4, !tbaa !7
  %63 = load float, float* %arrayidx199, align 4, !tbaa !7
  %mul315 = fmul float %62, %63
  %64 = load float, float* %arrayidx36, align 4, !tbaa !7
  %add320 = add i64 %call, 88
  %arrayidx321 = getelementptr inbounds float, float* %d, i64 %add320
  %65 = load float, float* %arrayidx321, align 4, !tbaa !7
  %mul322 = fmul float %64, %65
  %div323 = fdiv float 1.000000e+00, %mul322, !fpmath !11
  %mul324 = fmul float %mul315, %div323
  %add326 = add i64 %call, 504
  %arrayidx327 = getelementptr inbounds float, float* %b, i64 %add326
  %66 = load float, float* %arrayidx327, align 4, !tbaa !7
  %call328 = tail call float @_Z4fminff(float %mul324, float 0x4415AF1D80000000) #2
  %mul329 = fmul float %66, %call328
  %arrayidx332 = getelementptr inbounds float, float* %c, i64 %add326
  store float %mul329, float* %arrayidx332, align 4, !tbaa !7
  %67 = load float, float* %arrayidx5, align 4, !tbaa !7
  %68 = load float, float* %arrayidx199, align 4, !tbaa !7
  %mul339 = fmul float %67, %68
  %69 = load float, float* %arrayidx36, align 4, !tbaa !7
  %70 = load float, float* %arrayidx12, align 4, !tbaa !7
  %mul346 = fmul float %69, %70
  %71 = load float, float* %arrayidx133, align 4, !tbaa !7
  %mul350 = fmul float %mul346, %71
  %mul351 = fmul float %mul3, %mul350
  %div352 = fdiv float 1.000000e+00, %mul351, !fpmath !11
  %mul353 = fmul float %mul339, %div352
  %add355 = add i64 %call, 512
  %arrayidx356 = getelementptr inbounds float, float* %b, i64 %add355
  %72 = load float, float* %arrayidx356, align 4, !tbaa !7
  %call357 = tail call float @_Z4fminff(float %mul353, float 0x4415AF1D80000000) #2
  %mul358 = fmul float %72, %call357
  %arrayidx361 = getelementptr inbounds float, float* %c, i64 %add355
  store float %mul358, float* %arrayidx361, align 4, !tbaa !7
  %73 = load float, float* %arrayidx5, align 4, !tbaa !7
  %74 = load float, float* %arrayidx199, align 4, !tbaa !7
  %mul368 = fmul float %73, %74
  %75 = load float, float* %arrayidx89, align 4, !tbaa !7
  %76 = load float, float* %arrayidx133, align 4, !tbaa !7
  %mul375 = fmul float %75, %76
  %div376 = fdiv float 1.000000e+00, %mul375, !fpmath !11
  %mul377 = fmul float %mul368, %div376
  %add379 = add i64 %call, 520
  %arrayidx380 = getelementptr inbounds float, float* %b, i64 %add379
  %77 = load float, float* %arrayidx380, align 4, !tbaa !7
  %call381 = tail call float @_Z4fminff(float %mul377, float 0x4415AF1D80000000) #2
  %mul382 = fmul float %77, %call381
  %arrayidx385 = getelementptr inbounds float, float* %c, i64 %add379
  store float %mul382, float* %arrayidx385, align 4, !tbaa !7
  %78 = load float, float* %arrayidx199, align 4, !tbaa !7
  %79 = load float, float* %arrayidx8, align 4, !tbaa !7
  %div392 = fdiv float 1.000000e+00, %79, !fpmath !11
  %mul393 = fmul float %78, %div392
  %add395 = add i64 %call, 528
  %arrayidx396 = getelementptr inbounds float, float* %b, i64 %add395
  %80 = load float, float* %arrayidx396, align 4, !tbaa !7
  %call397 = tail call float @_Z4fminff(float %mul393, float 0x4415AF1D80000000) #2
  %mul398 = fmul float %80, %call397
  %arrayidx401 = getelementptr inbounds float, float* %c, i64 %add395
  store float %mul398, float* %arrayidx401, align 4, !tbaa !7
  %81 = load float, float* %arrayidx199, align 4, !tbaa !7
  %82 = load float, float* %arrayidx8, align 4, !tbaa !7
  %div408 = fdiv float 1.000000e+00, %82, !fpmath !11
  %mul409 = fmul float %81, %div408
  %add411 = add i64 %call, 536
  %arrayidx412 = getelementptr inbounds float, float* %b, i64 %add411
  %83 = load float, float* %arrayidx412, align 4, !tbaa !7
  %call413 = tail call float @_Z4fminff(float %mul409, float 0x4415AF1D80000000) #2
  %mul414 = fmul float %83, %call413
  %arrayidx417 = getelementptr inbounds float, float* %c, i64 %add411
  store float %mul414, float* %arrayidx417, align 4, !tbaa !7
  %84 = load float, float* %arrayidx199, align 4, !tbaa !7
  %85 = load float, float* %arrayidx8, align 4, !tbaa !7
  %div424 = fdiv float 1.000000e+00, %85, !fpmath !11
  %mul425 = fmul float %84, %div424
  %add427 = add i64 %call, 544
  %arrayidx428 = getelementptr inbounds float, float* %b, i64 %add427
  %86 = load float, float* %arrayidx428, align 4, !tbaa !7
  %call429 = tail call float @_Z4fminff(float %mul425, float 0x4415AF1D80000000) #2
  %mul430 = fmul float %86, %call429
  %arrayidx433 = getelementptr inbounds float, float* %c, i64 %add427
  store float %mul430, float* %arrayidx433, align 4, !tbaa !7
  %87 = load float, float* %arrayidx199, align 4, !tbaa !7
  %88 = load float, float* %arrayidx43, align 4, !tbaa !7
  %mul440 = fmul float %87, %88
  %89 = load float, float* %arrayidx133, align 4, !tbaa !7
  %90 = load float, float* %arrayidx68, align 4, !tbaa !7
  %mul447 = fmul float %89, %90
  %div448 = fdiv float 1.000000e+00, %mul447, !fpmath !11
  %mul449 = fmul float %mul440, %div448
  %add451 = add i64 %call, 552
  %arrayidx452 = getelementptr inbounds float, float* %b, i64 %add451
  %91 = load float, float* %arrayidx452, align 4, !tbaa !7
  %call453 = tail call float @_Z4fminff(float %mul449, float 0x4415AF1D80000000) #2
  %mul454 = fmul float %91, %call453
  %arrayidx457 = getelementptr inbounds float, float* %c, i64 %add451
  store float %mul454, float* %arrayidx457, align 4, !tbaa !7
  %92 = load float, float* %arrayidx36, align 4, !tbaa !7
  %93 = load float, float* %arrayidx68, align 4, !tbaa !7
  %mul464 = fmul float %92, %93
  %mul465 = fmul float %mul3, %mul464
  %add467 = add i64 %call, 136
  %arrayidx468 = getelementptr inbounds float, float* %d, i64 %add467
  %94 = load float, float* %arrayidx468, align 4, !tbaa !7
  %div469 = fdiv float 1.000000e+00, %94, !fpmath !11
  %mul470 = fmul float %mul465, %div469
  %add472 = add i64 %call, 560
  %arrayidx473 = getelementptr inbounds float, float* %b, i64 %add472
  %95 = load float, float* %arrayidx473, align 4, !tbaa !7
  %call474 = tail call float @_Z4fminff(float %mul470, float 0x4415AF1D80000000) #2
  %mul475 = fmul float %95, %call474
  %arrayidx478 = getelementptr inbounds float, float* %c, i64 %add472
  store float %mul475, float* %arrayidx478, align 4, !tbaa !7
  %96 = load float, float* %arrayidx36, align 4, !tbaa !7
  %97 = load float, float* %arrayidx68, align 4, !tbaa !7
  %mul485 = fmul float %96, %97
  %98 = load float, float* %arrayidx182, align 4, !tbaa !7
  %99 = load float, float* %arrayidx15, align 4, !tbaa !7
  %mul492 = fmul float %98, %99
  %div493 = fdiv float 1.000000e+00, %mul492, !fpmath !11
  %mul494 = fmul float %mul485, %div493
  %add496 = add i64 %call, 568
  %arrayidx497 = getelementptr inbounds float, float* %b, i64 %add496
  %100 = load float, float* %arrayidx497, align 4, !tbaa !7
  %call498 = tail call float @_Z4fminff(float %mul494, float 0x4415AF1D80000000) #2
  %mul499 = fmul float %100, %call498
  %arrayidx502 = getelementptr inbounds float, float* %c, i64 %add496
  store float %mul499, float* %arrayidx502, align 4, !tbaa !7
  %101 = load float, float* %arrayidx239, align 4, !tbaa !7
  %102 = load float, float* %arrayidx68, align 4, !tbaa !7
  %mul509 = fmul float %101, %102
  %103 = load float, float* %arrayidx12, align 4, !tbaa !7
  %104 = load float, float* %arrayidx15, align 4, !tbaa !7
  %mul516 = fmul float %103, %104
  %div517 = fdiv float 1.000000e+00, %mul516, !fpmath !11
  %mul518 = fmul float %mul509, %div517
  %add520 = add i64 %call, 576
  %arrayidx521 = getelementptr inbounds float, float* %b, i64 %add520
  %105 = load float, float* %arrayidx521, align 4, !tbaa !7
  %call522 = tail call float @_Z4fminff(float %mul518, float 0x4415AF1D80000000) #2
  %mul523 = fmul float %105, %call522
  %arrayidx526 = getelementptr inbounds float, float* %c, i64 %add520
  store float %mul523, float* %arrayidx526, align 4, !tbaa !7
  %106 = load float, float* %arrayidx12, align 4, !tbaa !7
  %107 = load float, float* %arrayidx68, align 4, !tbaa !7
  %mul533 = fmul float %106, %107
  %108 = load float, float* %arrayidx89, align 4, !tbaa !7
  %109 = load float, float* %arrayidx15, align 4, !tbaa !7
  %mul540 = fmul float %108, %109
  %div541 = fdiv float 1.000000e+00, %mul540, !fpmath !11
  %mul542 = fmul float %mul533, %div541
  %add544 = add i64 %call, 584
  %arrayidx545 = getelementptr inbounds float, float* %b, i64 %add544
  %110 = load float, float* %arrayidx545, align 4, !tbaa !7
  %call546 = tail call float @_Z4fminff(float %mul542, float 0x4415AF1D80000000) #2
  %mul547 = fmul float %110, %call546
  %arrayidx550 = getelementptr inbounds float, float* %c, i64 %add544
  store float %mul547, float* %arrayidx550, align 4, !tbaa !7
  %111 = load float, float* %arrayidx5, align 4, !tbaa !7
  %112 = load float, float* %arrayidx68, align 4, !tbaa !7
  %mul557 = fmul float %111, %112
  %113 = load float, float* %arrayidx106, align 4, !tbaa !7
  %114 = load float, float* %arrayidx15, align 4, !tbaa !7
  %mul564 = fmul float %113, %114
  %div565 = fdiv float 1.000000e+00, %mul564, !fpmath !11
  %mul566 = fmul float %mul557, %div565
  %add568 = add i64 %call, 592
  %arrayidx569 = getelementptr inbounds float, float* %b, i64 %add568
  %115 = load float, float* %arrayidx569, align 4, !tbaa !7
  %call570 = tail call float @_Z4fminff(float %mul566, float 0x4415AF1D80000000) #2
  %mul571 = fmul float %115, %call570
  %arrayidx574 = getelementptr inbounds float, float* %c, i64 %add568
  store float %mul571, float* %arrayidx574, align 4, !tbaa !7
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
