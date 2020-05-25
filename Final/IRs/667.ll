; ModuleID = 'src/667.src'
source_filename = "src/667.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* readonly %a, float* readonly %b, float* nocapture %c, float %d, float* nocapture readonly %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %add = add i64 %call, 32
  %arrayidx = getelementptr inbounds float, float* %a, i64 %add
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %arrayidx3 = getelementptr inbounds float, float* %b, i64 %add
  %1 = load float, float* %arrayidx3, align 4, !tbaa !7
  %sub = fsub float %0, %1
  %add5 = add i64 %call, 40
  %arrayidx6 = getelementptr inbounds float, float* %a, i64 %add5
  %2 = load float, float* %arrayidx6, align 4, !tbaa !7
  %arrayidx9 = getelementptr inbounds float, float* %b, i64 %add5
  %3 = load float, float* %arrayidx9, align 4, !tbaa !7
  %sub10 = fsub float %2, %3
  %add11 = fadd float %sub, %sub10
  %add13 = add i64 %call, 48
  %arrayidx14 = getelementptr inbounds float, float* %a, i64 %add13
  %4 = load float, float* %arrayidx14, align 4, !tbaa !7
  %arrayidx17 = getelementptr inbounds float, float* %b, i64 %add13
  %5 = load float, float* %arrayidx17, align 4, !tbaa !7
  %sub18 = fsub float %4, %5
  %add19 = fadd float %add11, %sub18
  %add21 = add i64 %call, 56
  %arrayidx22 = getelementptr inbounds float, float* %a, i64 %add21
  %6 = load float, float* %arrayidx22, align 4, !tbaa !7
  %arrayidx25 = getelementptr inbounds float, float* %b, i64 %add21
  %7 = load float, float* %arrayidx25, align 4, !tbaa !7
  %sub26 = fsub float %6, %7
  %add27 = fadd float %add19, %sub26
  %add29 = add i64 %call, 88
  %arrayidx30 = getelementptr inbounds float, float* %a, i64 %add29
  %8 = load float, float* %arrayidx30, align 4, !tbaa !7
  %arrayidx33 = getelementptr inbounds float, float* %b, i64 %add29
  %9 = load float, float* %arrayidx33, align 4, !tbaa !7
  %sub34 = fsub float %8, %9
  %add36 = add i64 %call, 96
  %arrayidx37 = getelementptr inbounds float, float* %a, i64 %add36
  %10 = load float, float* %arrayidx37, align 4, !tbaa !7
  %arrayidx40 = getelementptr inbounds float, float* %b, i64 %add36
  %11 = load float, float* %arrayidx40, align 4, !tbaa !7
  %sub41 = fsub float %10, %11
  %add42 = fadd float %sub34, %sub41
  %add44 = add i64 %call, 104
  %arrayidx45 = getelementptr inbounds float, float* %a, i64 %add44
  %12 = load float, float* %arrayidx45, align 4, !tbaa !7
  %arrayidx48 = getelementptr inbounds float, float* %b, i64 %add44
  %13 = load float, float* %arrayidx48, align 4, !tbaa !7
  %sub49 = fsub float %12, %13
  %add50 = fadd float %add42, %sub49
  %add52 = add i64 %call, 112
  %arrayidx53 = getelementptr inbounds float, float* %a, i64 %add52
  %14 = load float, float* %arrayidx53, align 4, !tbaa !7
  %arrayidx56 = getelementptr inbounds float, float* %b, i64 %add52
  %15 = load float, float* %arrayidx56, align 4, !tbaa !7
  %sub57 = fsub float %14, %15
  %add58 = fadd float %add50, %sub57
  %arrayidx61 = getelementptr inbounds float, float* %a, i64 %call
  %16 = load float, float* %arrayidx61, align 4, !tbaa !7
  %arrayidx64 = getelementptr inbounds float, float* %b, i64 %call
  %17 = load float, float* %arrayidx64, align 4, !tbaa !7
  %sub65 = fsub float %16, %17
  %add67 = add i64 %call, 8
  %arrayidx68 = getelementptr inbounds float, float* %a, i64 %add67
  %18 = load float, float* %arrayidx68, align 4, !tbaa !7
  %arrayidx71 = getelementptr inbounds float, float* %b, i64 %add67
  %19 = load float, float* %arrayidx71, align 4, !tbaa !7
  %sub72 = fsub float %18, %19
  %add73 = fsub float %sub72, %sub65
  %add75 = add i64 %call, 16
  %arrayidx76 = getelementptr inbounds float, float* %a, i64 %add75
  %20 = load float, float* %arrayidx76, align 4, !tbaa !7
  %arrayidx79 = getelementptr inbounds float, float* %b, i64 %add75
  %21 = load float, float* %arrayidx79, align 4, !tbaa !7
  %sub80 = fsub float %20, %21
  %add81 = fadd float %add73, %sub80
  %sub82 = fsub float %add81, %add27
  %sub83 = fsub float %sub82, %add27
  %add85 = add i64 %call, 64
  %arrayidx86 = getelementptr inbounds float, float* %a, i64 %add85
  %22 = load float, float* %arrayidx86, align 4, !tbaa !7
  %arrayidx89 = getelementptr inbounds float, float* %b, i64 %add85
  %23 = load float, float* %arrayidx89, align 4, !tbaa !7
  %sub90 = fsub float %22, %23
  %sub91 = fsub float %sub83, %sub90
  %add93 = add i64 %call, 72
  %arrayidx94 = getelementptr inbounds float, float* %a, i64 %add93
  %24 = load float, float* %arrayidx94, align 4, !tbaa !7
  %arrayidx97 = getelementptr inbounds float, float* %b, i64 %add93
  %25 = load float, float* %arrayidx97, align 4, !tbaa !7
  %sub98 = fsub float %24, %25
  %sub99 = fsub float %sub91, %sub98
  %sub100 = fsub float %sub99, %add58
  %add102 = add i64 %call, 128
  %arrayidx103 = getelementptr inbounds float, float* %a, i64 %add102
  %26 = load float, float* %arrayidx103, align 4, !tbaa !7
  %arrayidx106 = getelementptr inbounds float, float* %b, i64 %add102
  %27 = load float, float* %arrayidx106, align 4, !tbaa !7
  %sub107 = fsub float %26, %27
  %sub108 = fsub float %sub100, %sub107
  %add110 = add i64 %call, 136
  %arrayidx111 = getelementptr inbounds float, float* %a, i64 %add110
  %28 = load float, float* %arrayidx111, align 4, !tbaa !7
  %arrayidx114 = getelementptr inbounds float, float* %b, i64 %add110
  %29 = load float, float* %arrayidx114, align 4, !tbaa !7
  %sub115 = fsub float %28, %29
  %sub116 = fsub float %sub108, %sub115
  %add118 = add i64 %call, 144
  %arrayidx119 = getelementptr inbounds float, float* %a, i64 %add118
  %30 = load float, float* %arrayidx119, align 4, !tbaa !7
  %arrayidx122 = getelementptr inbounds float, float* %b, i64 %add118
  %31 = load float, float* %arrayidx122, align 4, !tbaa !7
  %sub123 = fsub float %30, %31
  %sub124 = fsub float %sub116, %sub123
  %add126 = add i64 %call, 184
  %arrayidx127 = getelementptr inbounds float, float* %a, i64 %add126
  %32 = load float, float* %arrayidx127, align 4, !tbaa !7
  %arrayidx130 = getelementptr inbounds float, float* %b, i64 %add126
  %33 = load float, float* %arrayidx130, align 4, !tbaa !7
  %sub131 = fsub float %32, %33
  %sub132 = fsub float %sub124, %sub131
  %add134 = add i64 %call, 192
  %arrayidx135 = getelementptr inbounds float, float* %a, i64 %add134
  %34 = load float, float* %arrayidx135, align 4, !tbaa !7
  %arrayidx138 = getelementptr inbounds float, float* %b, i64 %add134
  %35 = load float, float* %arrayidx138, align 4, !tbaa !7
  %sub139 = fsub float %34, %35
  %sub140 = fsub float %sub132, %sub139
  %add142 = add i64 %call, 232
  %arrayidx143 = getelementptr inbounds float, float* %a, i64 %add142
  %36 = load float, float* %arrayidx143, align 4, !tbaa !7
  %arrayidx146 = getelementptr inbounds float, float* %b, i64 %add142
  %37 = load float, float* %arrayidx146, align 4, !tbaa !7
  %sub147 = fsub float %36, %37
  %add148 = fadd float %sub140, %sub147
  %add150 = add i64 %call, 264
  %arrayidx151 = getelementptr inbounds float, float* %a, i64 %add150
  %38 = load float, float* %arrayidx151, align 4, !tbaa !7
  %arrayidx154 = getelementptr inbounds float, float* %b, i64 %add150
  %39 = load float, float* %arrayidx154, align 4, !tbaa !7
  %sub155 = fsub float %38, %39
  %add156 = fadd float %add148, %sub155
  %add158 = add i64 %call, 272
  %arrayidx159 = getelementptr inbounds float, float* %a, i64 %add158
  %40 = load float, float* %arrayidx159, align 4, !tbaa !7
  %arrayidx162 = getelementptr inbounds float, float* %b, i64 %add158
  %41 = load float, float* %arrayidx162, align 4, !tbaa !7
  %sub163 = fsub float %40, %41
  %add164 = fadd float %add156, %sub163
  %add166 = add i64 %call, 280
  %arrayidx167 = getelementptr inbounds float, float* %a, i64 %add166
  %42 = load float, float* %arrayidx167, align 4, !tbaa !7
  %arrayidx170 = getelementptr inbounds float, float* %b, i64 %add166
  %43 = load float, float* %arrayidx170, align 4, !tbaa !7
  %sub171 = fsub float %42, %43
  %add172 = fadd float %add164, %sub171
  %add174 = add i64 %call, 288
  %arrayidx175 = getelementptr inbounds float, float* %a, i64 %add174
  %44 = load float, float* %arrayidx175, align 4, !tbaa !7
  %arrayidx178 = getelementptr inbounds float, float* %b, i64 %add174
  %45 = load float, float* %arrayidx178, align 4, !tbaa !7
  %sub179 = fsub float %44, %45
  %add180 = fadd float %add172, %sub179
  %add182 = add i64 %call, 320
  %arrayidx183 = getelementptr inbounds float, float* %a, i64 %add182
  %46 = load float, float* %arrayidx183, align 4, !tbaa !7
  %arrayidx186 = getelementptr inbounds float, float* %b, i64 %add182
  %47 = load float, float* %arrayidx186, align 4, !tbaa !7
  %sub187 = fsub float %46, %47
  %sub188 = fsub float %add180, %sub187
  %add190 = add i64 %call, 328
  %arrayidx191 = getelementptr inbounds float, float* %a, i64 %add190
  %48 = load float, float* %arrayidx191, align 4, !tbaa !7
  %arrayidx194 = getelementptr inbounds float, float* %b, i64 %add190
  %49 = load float, float* %arrayidx194, align 4, !tbaa !7
  %sub195 = fsub float %48, %49
  %sub196 = fsub float %sub188, %sub195
  %add198 = add i64 %call, 344
  %arrayidx199 = getelementptr inbounds float, float* %a, i64 %add198
  %50 = load float, float* %arrayidx199, align 4, !tbaa !7
  %arrayidx202 = getelementptr inbounds float, float* %b, i64 %add198
  %51 = load float, float* %arrayidx202, align 4, !tbaa !7
  %sub203 = fsub float %50, %51
  %add204 = fadd float %sub196, %sub203
  %add206 = add i64 %call, 360
  %arrayidx207 = getelementptr inbounds float, float* %a, i64 %add206
  %52 = load float, float* %arrayidx207, align 4, !tbaa !7
  %arrayidx210 = getelementptr inbounds float, float* %b, i64 %add206
  %53 = load float, float* %arrayidx210, align 4, !tbaa !7
  %sub211 = fsub float %52, %53
  %add212 = fadd float %add204, %sub211
  %add214 = add i64 %call, 376
  %arrayidx215 = getelementptr inbounds float, float* %a, i64 %add214
  %54 = load float, float* %arrayidx215, align 4, !tbaa !7
  %arrayidx218 = getelementptr inbounds float, float* %b, i64 %add214
  %55 = load float, float* %arrayidx218, align 4, !tbaa !7
  %sub219 = fsub float %54, %55
  %sub220 = fsub float %add212, %sub219
  %add222 = add i64 %call, 384
  %arrayidx223 = getelementptr inbounds float, float* %a, i64 %add222
  %56 = load float, float* %arrayidx223, align 4, !tbaa !7
  %arrayidx226 = getelementptr inbounds float, float* %b, i64 %add222
  %57 = load float, float* %arrayidx226, align 4, !tbaa !7
  %sub227 = fsub float %56, %57
  %add228 = fadd float %sub220, %sub227
  %add230 = add i64 %call, 392
  %arrayidx231 = getelementptr inbounds float, float* %a, i64 %add230
  %58 = load float, float* %arrayidx231, align 4, !tbaa !7
  %arrayidx234 = getelementptr inbounds float, float* %b, i64 %add230
  %59 = load float, float* %arrayidx234, align 4, !tbaa !7
  %sub235 = fsub float %58, %59
  %add236 = fadd float %add228, %sub235
  %add238 = add i64 %call, 408
  %arrayidx239 = getelementptr inbounds float, float* %a, i64 %add238
  %60 = load float, float* %arrayidx239, align 4, !tbaa !7
  %arrayidx242 = getelementptr inbounds float, float* %b, i64 %add238
  %61 = load float, float* %arrayidx242, align 4, !tbaa !7
  %sub243 = fsub float %60, %61
  %add244 = fadd float %add236, %sub243
  %add252 = fadd float %sub243, %add244
  %add254 = add i64 %call, 416
  %arrayidx255 = getelementptr inbounds float, float* %a, i64 %add254
  %62 = load float, float* %arrayidx255, align 4, !tbaa !7
  %arrayidx258 = getelementptr inbounds float, float* %b, i64 %add254
  %63 = load float, float* %arrayidx258, align 4, !tbaa !7
  %sub259 = fsub float %62, %63
  %add260 = fadd float %add252, %sub259
  %add262 = add i64 %call, 448
  %arrayidx263 = getelementptr inbounds float, float* %a, i64 %add262
  %64 = load float, float* %arrayidx263, align 4, !tbaa !7
  %arrayidx266 = getelementptr inbounds float, float* %b, i64 %add262
  %65 = load float, float* %arrayidx266, align 4, !tbaa !7
  %sub267 = fsub float %64, %65
  %add268 = fadd float %add260, %sub267
  %add270 = add i64 %call, 472
  %arrayidx271 = getelementptr inbounds float, float* %a, i64 %add270
  %66 = load float, float* %arrayidx271, align 4, !tbaa !7
  %arrayidx274 = getelementptr inbounds float, float* %b, i64 %add270
  %67 = load float, float* %arrayidx274, align 4, !tbaa !7
  %sub275 = fsub float %66, %67
  %sub276 = fsub float %add268, %sub275
  %add278 = add i64 %call, 488
  %arrayidx279 = getelementptr inbounds float, float* %a, i64 %add278
  %68 = load float, float* %arrayidx279, align 4, !tbaa !7
  %arrayidx282 = getelementptr inbounds float, float* %b, i64 %add278
  %69 = load float, float* %arrayidx282, align 4, !tbaa !7
  %sub283 = fsub float %68, %69
  %add284 = fadd float %sub276, %sub283
  %add286 = add i64 %call, 496
  %arrayidx287 = getelementptr inbounds float, float* %a, i64 %add286
  %70 = load float, float* %arrayidx287, align 4, !tbaa !7
  %arrayidx290 = getelementptr inbounds float, float* %b, i64 %add286
  %71 = load float, float* %arrayidx290, align 4, !tbaa !7
  %sub291 = fsub float %70, %71
  %add292 = fadd float %add284, %sub291
  %add294 = add i64 %call, 504
  %arrayidx295 = getelementptr inbounds float, float* %a, i64 %add294
  %72 = load float, float* %arrayidx295, align 4, !tbaa !7
  %arrayidx298 = getelementptr inbounds float, float* %b, i64 %add294
  %73 = load float, float* %arrayidx298, align 4, !tbaa !7
  %sub299 = fsub float %72, %73
  %add300 = fadd float %add292, %sub299
  %add302 = add i64 %call, 512
  %arrayidx303 = getelementptr inbounds float, float* %a, i64 %add302
  %74 = load float, float* %arrayidx303, align 4, !tbaa !7
  %arrayidx306 = getelementptr inbounds float, float* %b, i64 %add302
  %75 = load float, float* %arrayidx306, align 4, !tbaa !7
  %sub307 = fsub float %74, %75
  %add308 = fadd float %add300, %sub307
  %add310 = add i64 %call, 560
  %arrayidx311 = getelementptr inbounds float, float* %a, i64 %add310
  %76 = load float, float* %arrayidx311, align 4, !tbaa !7
  %arrayidx314 = getelementptr inbounds float, float* %b, i64 %add310
  %77 = load float, float* %arrayidx314, align 4, !tbaa !7
  %sub315 = fsub float %76, %77
  %sub316 = fsub float %add308, %sub315
  %add318 = add i64 %call, 568
  %arrayidx319 = getelementptr inbounds float, float* %a, i64 %add318
  %78 = load float, float* %arrayidx319, align 4, !tbaa !7
  %arrayidx322 = getelementptr inbounds float, float* %b, i64 %add318
  %79 = load float, float* %arrayidx322, align 4, !tbaa !7
  %sub323 = fsub float %78, %79
  %sub324 = fsub float %sub316, %sub323
  %add326 = add i64 %call, 608
  %arrayidx327 = getelementptr inbounds float, float* %a, i64 %add326
  %80 = load float, float* %arrayidx327, align 4, !tbaa !7
  %arrayidx330 = getelementptr inbounds float, float* %b, i64 %add326
  %81 = load float, float* %arrayidx330, align 4, !tbaa !7
  %sub331 = fsub float %80, %81
  %add332 = fadd float %sub324, %sub331
  %add334 = add i64 %call, 616
  %arrayidx335 = getelementptr inbounds float, float* %a, i64 %add334
  %82 = load float, float* %arrayidx335, align 4, !tbaa !7
  %arrayidx338 = getelementptr inbounds float, float* %b, i64 %add334
  %83 = load float, float* %arrayidx338, align 4, !tbaa !7
  %sub339 = fsub float %82, %83
  %sub340 = fsub float %add332, %sub339
  %add342 = add i64 %call, 624
  %arrayidx343 = getelementptr inbounds float, float* %a, i64 %add342
  %84 = load float, float* %arrayidx343, align 4, !tbaa !7
  %arrayidx346 = getelementptr inbounds float, float* %b, i64 %add342
  %85 = load float, float* %arrayidx346, align 4, !tbaa !7
  %sub347 = fsub float %84, %85
  %add348 = fadd float %sub340, %sub347
  %add350 = add i64 %call, 688
  %arrayidx351 = getelementptr inbounds float, float* %a, i64 %add350
  %86 = load float, float* %arrayidx351, align 4, !tbaa !7
  %arrayidx354 = getelementptr inbounds float, float* %b, i64 %add350
  %87 = load float, float* %arrayidx354, align 4, !tbaa !7
  %sub355 = fsub float %86, %87
  %add356 = fadd float %add348, %sub355
  %add358 = add i64 %call, 720
  %arrayidx359 = getelementptr inbounds float, float* %a, i64 %add358
  %88 = load float, float* %arrayidx359, align 4, !tbaa !7
  %arrayidx362 = getelementptr inbounds float, float* %b, i64 %add358
  %89 = load float, float* %arrayidx362, align 4, !tbaa !7
  %sub363 = fsub float %88, %89
  %add364 = fadd float %add356, %sub363
  %add366 = add i64 %call, 728
  %arrayidx367 = getelementptr inbounds float, float* %a, i64 %add366
  %90 = load float, float* %arrayidx367, align 4, !tbaa !7
  %arrayidx370 = getelementptr inbounds float, float* %b, i64 %add366
  %91 = load float, float* %arrayidx370, align 4, !tbaa !7
  %sub371 = fsub float %90, %91
  %add372 = fadd float %add364, %sub371
  %add374 = add i64 %call, 744
  %arrayidx375 = getelementptr inbounds float, float* %a, i64 %add374
  %92 = load float, float* %arrayidx375, align 4, !tbaa !7
  %arrayidx378 = getelementptr inbounds float, float* %b, i64 %add374
  %93 = load float, float* %arrayidx378, align 4, !tbaa !7
  %sub379 = fsub float %92, %93
  %add380 = fadd float %add372, %sub379
  %add382 = add i64 %call, 760
  %arrayidx383 = getelementptr inbounds float, float* %a, i64 %add382
  %94 = load float, float* %arrayidx383, align 4, !tbaa !7
  %arrayidx386 = getelementptr inbounds float, float* %b, i64 %add382
  %95 = load float, float* %arrayidx386, align 4, !tbaa !7
  %sub387 = fsub float %94, %95
  %sub388 = fsub float %add380, %sub387
  %add390 = add i64 %call, 768
  %arrayidx391 = getelementptr inbounds float, float* %a, i64 %add390
  %96 = load float, float* %arrayidx391, align 4, !tbaa !7
  %arrayidx394 = getelementptr inbounds float, float* %b, i64 %add390
  %97 = load float, float* %arrayidx394, align 4, !tbaa !7
  %sub395 = fsub float %96, %97
  %sub396 = fsub float %sub388, %sub395
  %add398 = add i64 %call, 776
  %arrayidx399 = getelementptr inbounds float, float* %a, i64 %add398
  %98 = load float, float* %arrayidx399, align 4, !tbaa !7
  %arrayidx402 = getelementptr inbounds float, float* %b, i64 %add398
  %99 = load float, float* %arrayidx402, align 4, !tbaa !7
  %sub403 = fsub float %98, %99
  %sub404 = fsub float %sub396, %sub403
  %add406 = add i64 %call, 808
  %arrayidx407 = getelementptr inbounds float, float* %a, i64 %add406
  %100 = load float, float* %arrayidx407, align 4, !tbaa !7
  %arrayidx410 = getelementptr inbounds float, float* %b, i64 %add406
  %101 = load float, float* %arrayidx410, align 4, !tbaa !7
  %sub411 = fsub float %100, %101
  %sub412 = fsub float %sub404, %sub411
  %add414 = add i64 %call, 832
  %arrayidx415 = getelementptr inbounds float, float* %a, i64 %add414
  %102 = load float, float* %arrayidx415, align 4, !tbaa !7
  %arrayidx418 = getelementptr inbounds float, float* %b, i64 %add414
  %103 = load float, float* %arrayidx418, align 4, !tbaa !7
  %sub419 = fsub float %102, %103
  %add420 = fadd float %sub412, %sub419
  %add422 = add i64 %call, 856
  %arrayidx423 = getelementptr inbounds float, float* %a, i64 %add422
  %104 = load float, float* %arrayidx423, align 4, !tbaa !7
  %arrayidx426 = getelementptr inbounds float, float* %b, i64 %add422
  %105 = load float, float* %arrayidx426, align 4, !tbaa !7
  %sub427 = fsub float %104, %105
  %sub428 = fsub float %add420, %sub427
  %add430 = add i64 %call, 864
  %arrayidx431 = getelementptr inbounds float, float* %a, i64 %add430
  %106 = load float, float* %arrayidx431, align 4, !tbaa !7
  %arrayidx434 = getelementptr inbounds float, float* %b, i64 %add430
  %107 = load float, float* %arrayidx434, align 4, !tbaa !7
  %sub435 = fsub float %106, %107
  %add436 = fadd float %sub428, %sub435
  %add438 = add i64 %call, 912
  %arrayidx439 = getelementptr inbounds float, float* %a, i64 %add438
  %108 = load float, float* %arrayidx439, align 4, !tbaa !7
  %arrayidx442 = getelementptr inbounds float, float* %b, i64 %add438
  %109 = load float, float* %arrayidx442, align 4, !tbaa !7
  %sub443 = fsub float %108, %109
  %add444 = fadd float %add436, %sub443
  %add446 = add i64 %call, 920
  %arrayidx447 = getelementptr inbounds float, float* %a, i64 %add446
  %110 = load float, float* %arrayidx447, align 4, !tbaa !7
  %arrayidx450 = getelementptr inbounds float, float* %b, i64 %add446
  %111 = load float, float* %arrayidx450, align 4, !tbaa !7
  %sub451 = fsub float %110, %111
  %add452 = fadd float %add444, %sub451
  %add454 = add i64 %call, 936
  %arrayidx455 = getelementptr inbounds float, float* %a, i64 %add454
  %112 = load float, float* %arrayidx455, align 4, !tbaa !7
  %arrayidx458 = getelementptr inbounds float, float* %b, i64 %add454
  %113 = load float, float* %arrayidx458, align 4, !tbaa !7
  %sub459 = fsub float %112, %113
  %add460 = fadd float %add452, %sub459
  %add462 = add i64 %call, 984
  %arrayidx463 = getelementptr inbounds float, float* %a, i64 %add462
  %114 = load float, float* %arrayidx463, align 4, !tbaa !7
  %arrayidx466 = getelementptr inbounds float, float* %b, i64 %add462
  %115 = load float, float* %arrayidx466, align 4, !tbaa !7
  %sub467 = fsub float %114, %115
  %add468 = fadd float %add460, %sub467
  %add470 = add i64 %call, 1000
  %arrayidx471 = getelementptr inbounds float, float* %a, i64 %add470
  %116 = load float, float* %arrayidx471, align 4, !tbaa !7
  %arrayidx474 = getelementptr inbounds float, float* %b, i64 %add470
  %117 = load float, float* %arrayidx474, align 4, !tbaa !7
  %sub475 = fsub float %116, %117
  %sub476 = fsub float %add468, %sub475
  %add478 = add i64 %call, 1008
  %arrayidx479 = getelementptr inbounds float, float* %a, i64 %add478
  %118 = load float, float* %arrayidx479, align 4, !tbaa !7
  %arrayidx482 = getelementptr inbounds float, float* %b, i64 %add478
  %119 = load float, float* %arrayidx482, align 4, !tbaa !7
  %sub483 = fsub float %118, %119
  %sub484 = fsub float %sub476, %sub483
  %add486 = add i64 %call, 1016
  %arrayidx487 = getelementptr inbounds float, float* %a, i64 %add486
  %120 = load float, float* %arrayidx487, align 4, !tbaa !7
  %arrayidx490 = getelementptr inbounds float, float* %b, i64 %add486
  %121 = load float, float* %arrayidx490, align 4, !tbaa !7
  %sub491 = fsub float %120, %121
  %sub492 = fsub float %sub484, %sub491
  %add494 = add i64 %call, 1048
  %arrayidx495 = getelementptr inbounds float, float* %a, i64 %add494
  %122 = load float, float* %arrayidx495, align 4, !tbaa !7
  %arrayidx498 = getelementptr inbounds float, float* %b, i64 %add494
  %123 = load float, float* %arrayidx498, align 4, !tbaa !7
  %sub499 = fsub float %122, %123
  %sub500 = fsub float %sub492, %sub499
  %add502 = add i64 %call, 1056
  %arrayidx503 = getelementptr inbounds float, float* %a, i64 %add502
  %124 = load float, float* %arrayidx503, align 4, !tbaa !7
  %arrayidx506 = getelementptr inbounds float, float* %b, i64 %add502
  %125 = load float, float* %arrayidx506, align 4, !tbaa !7
  %sub507 = fsub float %124, %125
  %sub508 = fsub float %sub500, %sub507
  %add510 = add i64 %call, 1064
  %arrayidx511 = getelementptr inbounds float, float* %a, i64 %add510
  %126 = load float, float* %arrayidx511, align 4, !tbaa !7
  %arrayidx514 = getelementptr inbounds float, float* %b, i64 %add510
  %127 = load float, float* %arrayidx514, align 4, !tbaa !7
  %sub515 = fsub float %126, %127
  %sub516 = fsub float %sub508, %sub515
  %add518 = add i64 %call, 1072
  %arrayidx519 = getelementptr inbounds float, float* %a, i64 %add518
  %128 = load float, float* %arrayidx519, align 4, !tbaa !7
  %arrayidx522 = getelementptr inbounds float, float* %b, i64 %add518
  %129 = load float, float* %arrayidx522, align 4, !tbaa !7
  %sub523 = fsub float %128, %129
  %add524 = fadd float %sub516, %sub523
  %add526 = add i64 %call, 1160
  %arrayidx527 = getelementptr inbounds float, float* %a, i64 %add526
  %130 = load float, float* %arrayidx527, align 4, !tbaa !7
  %arrayidx530 = getelementptr inbounds float, float* %b, i64 %add526
  %131 = load float, float* %arrayidx530, align 4, !tbaa !7
  %sub531 = fsub float %130, %131
  %add532 = fadd float %add524, %sub531
  %add534 = add i64 %call, 1176
  %arrayidx535 = getelementptr inbounds float, float* %a, i64 %add534
  %132 = load float, float* %arrayidx535, align 4, !tbaa !7
  %arrayidx538 = getelementptr inbounds float, float* %b, i64 %add534
  %133 = load float, float* %arrayidx538, align 4, !tbaa !7
  %sub539 = fsub float %132, %133
  %sub540 = fsub float %add532, %sub539
  %add542 = add i64 %call, 1184
  %arrayidx543 = getelementptr inbounds float, float* %a, i64 %add542
  %134 = load float, float* %arrayidx543, align 4, !tbaa !7
  %arrayidx546 = getelementptr inbounds float, float* %b, i64 %add542
  %135 = load float, float* %arrayidx546, align 4, !tbaa !7
  %sub547 = fsub float %134, %135
  %sub548 = fsub float %sub540, %sub547
  %add550 = add i64 %call, 1192
  %arrayidx551 = getelementptr inbounds float, float* %a, i64 %add550
  %136 = load float, float* %arrayidx551, align 4, !tbaa !7
  %arrayidx554 = getelementptr inbounds float, float* %b, i64 %add550
  %137 = load float, float* %arrayidx554, align 4, !tbaa !7
  %sub555 = fsub float %136, %137
  %sub556 = fsub float %sub548, %sub555
  %add558 = add i64 %call, 1240
  %arrayidx559 = getelementptr inbounds float, float* %a, i64 %add558
  %138 = load float, float* %arrayidx559, align 4, !tbaa !7
  %arrayidx562 = getelementptr inbounds float, float* %b, i64 %add558
  %139 = load float, float* %arrayidx562, align 4, !tbaa !7
  %sub563 = fsub float %138, %139
  %sub564 = fsub float %sub556, %sub563
  %add566 = add i64 %call, 1248
  %arrayidx567 = getelementptr inbounds float, float* %a, i64 %add566
  %140 = load float, float* %arrayidx567, align 4, !tbaa !7
  %arrayidx570 = getelementptr inbounds float, float* %b, i64 %add566
  %141 = load float, float* %arrayidx570, align 4, !tbaa !7
  %sub571 = fsub float %140, %141
  %sub572 = fsub float %sub564, %sub571
  %add574 = add i64 %call, 1312
  %arrayidx575 = getelementptr inbounds float, float* %a, i64 %add574
  %142 = load float, float* %arrayidx575, align 4, !tbaa !7
  %arrayidx578 = getelementptr inbounds float, float* %b, i64 %add574
  %143 = load float, float* %arrayidx578, align 4, !tbaa !7
  %sub579 = fsub float %142, %143
  %add580 = fadd float %sub572, %sub579
  %add582 = add i64 %call, 1328
  %arrayidx583 = getelementptr inbounds float, float* %a, i64 %add582
  %144 = load float, float* %arrayidx583, align 4, !tbaa !7
  %arrayidx586 = getelementptr inbounds float, float* %b, i64 %add582
  %145 = load float, float* %arrayidx586, align 4, !tbaa !7
  %sub587 = fsub float %144, %145
  %add588 = fadd float %add580, %sub587
  %add590 = add i64 %call, 1352
  %arrayidx591 = getelementptr inbounds float, float* %a, i64 %add590
  %146 = load float, float* %arrayidx591, align 4, !tbaa !7
  %arrayidx594 = getelementptr inbounds float, float* %b, i64 %add590
  %147 = load float, float* %arrayidx594, align 4, !tbaa !7
  %sub595 = fsub float %146, %147
  %sub596 = fsub float %add588, %sub595
  %add598 = add i64 %call, 1360
  %arrayidx599 = getelementptr inbounds float, float* %a, i64 %add598
  %148 = load float, float* %arrayidx599, align 4, !tbaa !7
  %arrayidx602 = getelementptr inbounds float, float* %b, i64 %add598
  %149 = load float, float* %arrayidx602, align 4, !tbaa !7
  %sub603 = fsub float %148, %149
  %sub604 = fsub float %sub596, %sub603
  %add606 = add i64 %call, 1376
  %arrayidx607 = getelementptr inbounds float, float* %a, i64 %add606
  %150 = load float, float* %arrayidx607, align 4, !tbaa !7
  %arrayidx610 = getelementptr inbounds float, float* %b, i64 %add606
  %151 = load float, float* %arrayidx610, align 4, !tbaa !7
  %sub611 = fsub float %150, %151
  %add612 = fadd float %sub604, %sub611
  %add614 = add i64 %call, 1432
  %arrayidx615 = getelementptr inbounds float, float* %a, i64 %add614
  %152 = load float, float* %arrayidx615, align 4, !tbaa !7
  %arrayidx618 = getelementptr inbounds float, float* %b, i64 %add614
  %153 = load float, float* %arrayidx618, align 4, !tbaa !7
  %sub619 = fsub float %152, %153
  %sub620 = fsub float %add612, %sub619
  %add622 = add i64 %call, 1472
  %arrayidx623 = getelementptr inbounds float, float* %a, i64 %add622
  %154 = load float, float* %arrayidx623, align 4, !tbaa !7
  %arrayidx626 = getelementptr inbounds float, float* %b, i64 %add622
  %155 = load float, float* %arrayidx626, align 4, !tbaa !7
  %sub627 = fsub float %154, %155
  %sub628 = fsub float %sub620, %sub627
  %add630 = add i64 %call, 1480
  %arrayidx631 = getelementptr inbounds float, float* %a, i64 %add630
  %156 = load float, float* %arrayidx631, align 4, !tbaa !7
  %arrayidx634 = getelementptr inbounds float, float* %b, i64 %add630
  %157 = load float, float* %arrayidx634, align 4, !tbaa !7
  %sub635 = fsub float %156, %157
  %sub636 = fsub float %sub628, %sub635
  %add638 = add i64 %call, 1512
  %arrayidx639 = getelementptr inbounds float, float* %a, i64 %add638
  %158 = load float, float* %arrayidx639, align 4, !tbaa !7
  %arrayidx642 = getelementptr inbounds float, float* %b, i64 %add638
  %159 = load float, float* %arrayidx642, align 4, !tbaa !7
  %sub643 = fsub float %158, %159
  %sub644 = fsub float %sub636, %sub643
  %add646 = add i64 %call, 1520
  %arrayidx647 = getelementptr inbounds float, float* %a, i64 %add646
  %160 = load float, float* %arrayidx647, align 4, !tbaa !7
  %arrayidx650 = getelementptr inbounds float, float* %b, i64 %add646
  %161 = load float, float* %arrayidx650, align 4, !tbaa !7
  %sub651 = fsub float %160, %161
  %sub652 = fsub float %sub644, %sub651
  %add654 = add i64 %call, 1528
  %arrayidx655 = getelementptr inbounds float, float* %a, i64 %add654
  %162 = load float, float* %arrayidx655, align 4, !tbaa !7
  %arrayidx658 = getelementptr inbounds float, float* %b, i64 %add654
  %163 = load float, float* %arrayidx658, align 4, !tbaa !7
  %sub659 = fsub float %162, %163
  %sub660 = fsub float %sub652, %sub659
  %add662 = add i64 %call, 1536
  %arrayidx663 = getelementptr inbounds float, float* %a, i64 %add662
  %164 = load float, float* %arrayidx663, align 4, !tbaa !7
  %arrayidx666 = getelementptr inbounds float, float* %b, i64 %add662
  %165 = load float, float* %arrayidx666, align 4, !tbaa !7
  %sub667 = fsub float %164, %165
  %add668 = fadd float %sub660, %sub667
  %add670 = add i64 %call, 1584
  %arrayidx671 = getelementptr inbounds float, float* %a, i64 %add670
  %166 = load float, float* %arrayidx671, align 4, !tbaa !7
  %arrayidx674 = getelementptr inbounds float, float* %b, i64 %add670
  %167 = load float, float* %arrayidx674, align 4, !tbaa !7
  %sub675 = fsub float %166, %167
  %sub676 = fsub float %add668, %sub675
  %add678 = add i64 %call, 1592
  %arrayidx679 = getelementptr inbounds float, float* %a, i64 %add678
  %168 = load float, float* %arrayidx679, align 4, !tbaa !7
  %arrayidx682 = getelementptr inbounds float, float* %b, i64 %add678
  %169 = load float, float* %arrayidx682, align 4, !tbaa !7
  %sub683 = fsub float %168, %169
  %sub684 = fsub float %sub676, %sub683
  %mul = fmul float %sub684, %d
  %arrayidx685 = getelementptr inbounds float, float* %e, i64 1
  %170 = load float, float* %arrayidx685, align 4, !tbaa !7
  %mul686 = fmul float %170, %mul
  %arrayidx689 = getelementptr inbounds float, float* %c, i64 %add67
  store float %mul686, float* %arrayidx689, align 4, !tbaa !7
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
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 1}
!4 = !{!"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"float", !"float*"}
!6 = !{!"const", !"const", !"", !"", !"const"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
