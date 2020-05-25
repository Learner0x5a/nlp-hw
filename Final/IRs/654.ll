; ModuleID = 'src/654.src'
source_filename = "src/654.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* %b, float %c) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %arrayidx = getelementptr inbounds float, float* %a, i64 %call
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %mul = fmul float %0, %c
  %call1 = tail call float @_Z3logf(float %mul) #3
  %conv2 = fdiv float 1.000000e+00, %mul
  %mul3 = fmul float %conv2, %conv2
  %1 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0BC54DCA0000000, float 0x40400661E0000000)
  %call5 = tail call float @_Z3expf(float %1) #3
  %arrayidx7 = getelementptr inbounds float, float* %b, i64 %call
  store float %call5, float* %arrayidx7, align 4, !tbaa !7
  %2 = tail call float @llvm.fmuladd.f32(float %call1, float 0x40055C2900000000, float 0x4025A3BA00000000)
  %3 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0A8BA7740000000, float %2)
  %call10 = tail call float @_Z3expf(float %3) #3
  %add12 = add i64 %call, 8
  %arrayidx13 = getelementptr inbounds float, float* %b, i64 %add12
  store float %call10, float* %arrayidx13, align 4, !tbaa !7
  %4 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FF828F5C0000000, float 0x403330D780000000)
  %5 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC09AF82200000000, float %4)
  %call16 = tail call float @_Z3expf(float %5) #3
  %add18 = add i64 %call, 16
  %arrayidx19 = getelementptr inbounds float, float* %b, i64 %add18
  store float %call16, float* %arrayidx19, align 4, !tbaa !7
  %6 = tail call float @llvm.fmuladd.f32(float %call1, float 0x4003333340000000, float 0x4024F73F80000000)
  %7 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x4090972600000000, float %6)
  %call22 = tail call float @_Z3expf(float %7) #3
  %add24 = add i64 %call, 24
  %arrayidx25 = getelementptr inbounds float, float* %b, i64 %add24
  store float %call22, float* %arrayidx25, align 4, !tbaa !7
  %conv26 = fpext float %conv2 to double
  %mul27 = fmul double %conv26, 1.000000e+18
  %conv28 = fptrunc double %mul27 to float
  %add30 = add i64 %call, 32
  %arrayidx31 = getelementptr inbounds float, float* %b, i64 %add30
  store float %conv28, float* %arrayidx31, align 4, !tbaa !7
  %8 = tail call float @llvm.fmuladd.f32(float %call1, float 0xBFE3333340000000, float 0x404384F060000000)
  %call33 = tail call float @_Z3expf(float %8) #3
  %add35 = add i64 %call, 40
  %arrayidx36 = getelementptr inbounds float, float* %b, i64 %add35
  store float %call33, float* %arrayidx36, align 4, !tbaa !7
  %9 = tail call float @llvm.fmuladd.f32(float %call1, float -1.250000e+00, float 0x4046C53B60000000)
  %call38 = tail call float @_Z3expf(float %9) #3
  %add40 = add i64 %call, 48
  %arrayidx41 = getelementptr inbounds float, float* %b, i64 %add40
  store float %call38, float* %arrayidx41, align 4, !tbaa !7
  %conv42 = fpext float %mul3 to double
  %mul43 = fmul double %conv42, 5.500000e+20
  %conv44 = fptrunc double %mul43 to float
  %add46 = add i64 %call, 56
  %arrayidx47 = getelementptr inbounds float, float* %b, i64 %add46
  store float %conv44, float* %arrayidx47, align 4, !tbaa !7
  %mul49 = fmul double %conv42, 2.200000e+22
  %conv50 = fptrunc double %mul49 to float
  %add52 = add i64 %call, 64
  %arrayidx53 = getelementptr inbounds float, float* %b, i64 %add52
  store float %conv50, float* %arrayidx53, align 4, !tbaa !7
  %mul55 = fmul double %conv26, 5.000000e+17
  %conv56 = fptrunc double %mul55 to float
  %add58 = add i64 %call, 72
  %arrayidx59 = getelementptr inbounds float, float* %b, i64 %add58
  store float %conv56, float* %arrayidx59, align 4, !tbaa !7
  %mul61 = fmul double %conv26, 1.200000e+17
  %conv62 = fptrunc double %mul61 to float
  %add64 = add i64 %call, 80
  %arrayidx65 = getelementptr inbounds float, float* %b, i64 %add64
  store float %conv62, float* %arrayidx65, align 4, !tbaa !7
  %10 = tail call float @llvm.fmuladd.f32(float %call1, float 0xBFEB851EC0000000, float 0x40453CF280000000)
  %call67 = tail call float @_Z3expf(float %10) #3
  %add69 = add i64 %call, 88
  %arrayidx70 = getelementptr inbounds float, float* %b, i64 %add69
  store float %call67, float* %arrayidx70, align 4, !tbaa !7
  %11 = tail call float @llvm.fmuladd.f32(float %call1, float 0xBFFB851EC0000000, float 0x4047933D80000000)
  %call72 = tail call float @_Z3expf(float %11) #3
  %add74 = add i64 %call, 96
  %arrayidx75 = getelementptr inbounds float, float* %b, i64 %add74
  store float %call72, float* %arrayidx75, align 4, !tbaa !7
  %12 = tail call float @llvm.fmuladd.f32(float %call1, float 0xBFE851EB80000000, float 0x4046202420000000)
  %call77 = tail call float @_Z3expf(float %12) #3
  %add79 = add i64 %call, 104
  %arrayidx80 = getelementptr inbounds float, float* %b, i64 %add79
  store float %call77, float* %arrayidx80, align 4, !tbaa !7
  %13 = tail call float @llvm.fmuladd.f32(float %call1, float 0xBFF3D70A40000000, float 0x40465A3140000000)
  %call82 = tail call float @_Z3expf(float %13) #3
  %add84 = add i64 %call, 112
  %arrayidx85 = getelementptr inbounds float, float* %b, i64 %add84
  store float %call82, float* %arrayidx85, align 4, !tbaa !7
  %14 = tail call float @llvm.fmuladd.f32(float %call1, float 0xBFD7AE1480000000, float 0x403FEF61C0000000)
  %call87 = tail call float @_Z3expf(float %14) #3
  %add89 = add i64 %call, 120
  %arrayidx90 = getelementptr inbounds float, float* %b, i64 %add89
  store float %call87, float* %arrayidx90, align 4, !tbaa !7
  %15 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0751A88C0000000, float 0x403D028160000000)
  %call92 = tail call float @_Z3expf(float %15) #3
  %add94 = add i64 %call, 128
  %arrayidx95 = getelementptr inbounds float, float* %b, i64 %add94
  store float %call92, float* %arrayidx95, align 4, !tbaa !7
  %16 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC079CA33E0000000, float 0x403E70BFA0000000)
  %call97 = tail call float @_Z3expf(float %16) #3
  %add99 = add i64 %call, 136
  %arrayidx100 = getelementptr inbounds float, float* %b, i64 %add99
  store float %call97, float* %arrayidx100, align 4, !tbaa !7
  %17 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC062DEE140000000, float 0x403FE410C0000000)
  %call102 = tail call float @_Z3expf(float %17) #3
  %add104 = add i64 %call, 144
  %arrayidx105 = getelementptr inbounds float, float* %b, i64 %add104
  store float %call102, float* %arrayidx105, align 4, !tbaa !7
  %add107 = add i64 %call, 152
  %arrayidx108 = getelementptr inbounds float, float* %b, i64 %add107
  store float 0x42B2309CE0000000, float* %arrayidx108, align 4, !tbaa !7
  %18 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x406F737780000000, float 0x403F77E3E0000000)
  %call110 = tail call float @_Z3expf(float %18) #3
  %add112 = add i64 %call, 160
  %arrayidx113 = getelementptr inbounds float, float* %b, i64 %add112
  store float %call110, float* %arrayidx113, align 4, !tbaa !7
  %19 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x4089A1F200000000, float 0x4039973EC0000000)
  %call115 = tail call float @_Z3expf(float %19) #3
  %add117 = add i64 %call, 168
  %arrayidx118 = getelementptr inbounds float, float* %b, i64 %add117
  store float %call115, float* %arrayidx118, align 4, !tbaa !7
  %20 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0B79699A0000000, float 0x4040D5EC60000000)
  %call120 = tail call float @_Z3expf(float %20) #3
  %add122 = add i64 %call, 176
  %arrayidx123 = getelementptr inbounds float, float* %b, i64 %add122
  store float %call120, float* %arrayidx123, align 4, !tbaa !7
  %21 = tail call float @llvm.fmuladd.f32(float %call1, float 2.000000e+00, float 0x40304F0800000000)
  %22 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0A4717400000000, float %21)
  %call126 = tail call float @_Z3expf(float %22) #3
  %add128 = add i64 %call, 184
  %arrayidx129 = getelementptr inbounds float, float* %b, i64 %add128
  store float %call126, float* %arrayidx129, align 4, !tbaa !7
  %23 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC09C4E51E0000000, float 0x403DEF00E0000000)
  %call131 = tail call float @_Z3expf(float %23) #3
  %add133 = add i64 %call, 192
  %arrayidx134 = getelementptr inbounds float, float* %b, i64 %add133
  store float %call131, float* %arrayidx134, align 4, !tbaa !7
  %24 = tail call float @llvm.fmuladd.f32(float %call1, float 2.000000e+00, float 0x40301494C0000000)
  %25 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC09F737780000000, float %24)
  %call137 = tail call float @_Z3expf(float %25) #3
  %add139 = add i64 %call, 200
  %arrayidx140 = getelementptr inbounds float, float* %b, i64 %add139
  store float %call137, float* %arrayidx140, align 4, !tbaa !7
  %26 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC06420F040000000, float 0x403C30CDA0000000)
  %call142 = tail call float @_Z3expf(float %26) #3
  %add144 = add i64 %call, 208
  %arrayidx145 = getelementptr inbounds float, float* %b, i64 %add144
  store float %call142, float* %arrayidx145, align 4, !tbaa !7
  %27 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0B2CAC060000000, float 0x4040FF3D00000000)
  %call147 = tail call float @_Z3expf(float %27) #3
  %add149 = add i64 %call, 216
  %arrayidx150 = getelementptr inbounds float, float* %b, i64 %add149
  store float %call147, float* %arrayidx150, align 4, !tbaa !7
  %28 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0979699A0000000, float 0x40410400E0000000)
  %call152 = tail call float @_Z3expf(float %28) #3
  %add154 = add i64 %call, 224
  %arrayidx155 = getelementptr inbounds float, float* %b, i64 %add154
  store float %call152, float* %arrayidx155, align 4, !tbaa !7
  %29 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FF3A5E360000000, float 0x4031ADA7E0000000)
  %30 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0419CD240000000, float %29)
  %call158 = tail call float @_Z3expf(float %30) #3
  %add160 = add i64 %call, 232
  %arrayidx161 = getelementptr inbounds float, float* %b, i64 %add160
  store float %call158, float* %arrayidx161, align 4, !tbaa !7
  %31 = tail call float @llvm.fmuladd.f32(float %call1, float 1.500000e+00, float 0x403193A340000000)
  %32 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0E38F0180000000, float %31)
  %call164 = tail call float @_Z3expf(float %32) #3
  %add166 = add i64 %call, 240
  %arrayidx167 = getelementptr inbounds float, float* %b, i64 %add166
  store float %call164, float* %arrayidx167, align 4, !tbaa !7
  %33 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0D77D7060000000, float 0x403C8C1CA0000000)
  %call169 = tail call float @_Z3expf(float %33) #3
  %add171 = add i64 %call, 248
  %arrayidx172 = getelementptr inbounds float, float* %b, i64 %add171
  store float %call169, float* %arrayidx172, align 4, !tbaa !7
  %34 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0C731F4E0000000, float 0x40405221C0000000)
  %call174 = tail call float @_Z3expf(float %34) #3
  %add176 = add i64 %call, 256
  %arrayidx177 = getelementptr inbounds float, float* %b, i64 %add176
  store float %call174, float* %arrayidx177, align 4, !tbaa !7
  %add179 = add i64 %call, 264
  %arrayidx180 = getelementptr inbounds float, float* %b, i64 %add179
  store float 0x42C9EBAC60000000, float* %arrayidx180, align 4, !tbaa !7
  %add182 = add i64 %call, 272
  %arrayidx183 = getelementptr inbounds float, float* %b, i64 %add182
  store float 0x42BB48EB60000000, float* %arrayidx183, align 4, !tbaa !7
  %35 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FFCA3D700000000, float 0x403285B7C0000000)
  %36 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC08A42F980000000, float %35)
  %call186 = tail call float @_Z3expf(float %36) #3
  %add188 = add i64 %call, 280
  %arrayidx189 = getelementptr inbounds float, float* %b, i64 %add188
  store float %call186, float* %arrayidx189, align 4, !tbaa !7
  %37 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x4077BEDB80000000, float 0x403D5F8CA0000000)
  %call191 = tail call float @_Z3expf(float %37) #3
  %add193 = add i64 %call, 288
  %arrayidx194 = getelementptr inbounds float, float* %b, i64 %add193
  store float %call191, float* %arrayidx194, align 4, !tbaa !7
  %add196 = add i64 %call, 296
  %arrayidx197 = getelementptr inbounds float, float* %b, i64 %add196
  store float 0x42BE036940000000, float* %arrayidx197, align 4, !tbaa !7
  %add199 = add i64 %call, 304
  %arrayidx200 = getelementptr inbounds float, float* %b, i64 %add199
  store float 0x42C6BCC420000000, float* %arrayidx200, align 4, !tbaa !7
  %38 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC075B38320000000, float 0x403CDAD400000000)
  %call202 = tail call float @_Z3expf(float %38) #3
  %add204 = add i64 %call, 312
  %arrayidx205 = getelementptr inbounds float, float* %b, i64 %add204
  store float %call202, float* %arrayidx205, align 4, !tbaa !7
  %39 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FDEB851E0000000, float 0x403BB79A60000000)
  %40 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x40605AC340000000, float %39)
  %call208 = tail call float @_Z3expf(float %40) #3
  %add210 = add i64 %call, 320
  %arrayidx211 = getelementptr inbounds float, float* %b, i64 %add210
  store float %call208, float* %arrayidx211, align 4, !tbaa !7
  %add213 = add i64 %call, 328
  %arrayidx214 = getelementptr inbounds float, float* %b, i64 %add213
  store float 0x42D0B07140000000, float* %arrayidx214, align 4, !tbaa !7
  %add216 = add i64 %call, 336
  %arrayidx217 = getelementptr inbounds float, float* %b, i64 %add216
  store float 0x42BB48EB60000000, float* %arrayidx217, align 4, !tbaa !7
  %add219 = add i64 %call, 344
  %arrayidx220 = getelementptr inbounds float, float* %b, i64 %add219
  store float 0x42BB48EB60000000, float* %arrayidx220, align 4, !tbaa !7
  %add222 = add i64 %call, 352
  %arrayidx223 = getelementptr inbounds float, float* %b, i64 %add222
  store float 0x42C6BCC420000000, float* %arrayidx223, align 4, !tbaa !7
  %41 = tail call float @llvm.fmuladd.f32(float %call1, float -1.000000e+00, float 0x4043E28BA0000000)
  %42 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0C0B55780000000, float %41)
  %call226 = tail call float @_Z3expf(float %42) #3
  %add228 = add i64 %call, 360
  %arrayidx229 = getelementptr inbounds float, float* %b, i64 %add228
  store float %call226, float* %arrayidx229, align 4, !tbaa !7
  %43 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC069292C60000000, float 0x403DA8BF60000000)
  %call231 = tail call float @_Z3expf(float %43) #3
  %add233 = add i64 %call, 368
  %arrayidx234 = getelementptr inbounds float, float* %b, i64 %add233
  store float %call231, float* %arrayidx234, align 4, !tbaa !7
  %44 = tail call float @llvm.fmuladd.f32(float %call1, float 0xBFE99999A0000000, float 0x4042E0FAC0000000)
  %call236 = tail call float @_Z3expf(float %44) #3
  %add238 = add i64 %call, 376
  %arrayidx239 = getelementptr inbounds float, float* %b, i64 %add238
  store float %call236, float* %arrayidx239, align 4, !tbaa !7
  %45 = tail call float @llvm.fmuladd.f32(float %call1, float 2.000000e+00, float 0x402A3EA660000000)
  %46 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0AC6C8360000000, float %45)
  %call242 = tail call float @_Z3expf(float %46) #3
  %add244 = add i64 %call, 384
  %arrayidx245 = getelementptr inbounds float, float* %b, i64 %add244
  store float %call242, float* %arrayidx245, align 4, !tbaa !7
  %add247 = add i64 %call, 392
  %arrayidx248 = getelementptr inbounds float, float* %b, i64 %add247
  store float 0x42D2309CE0000000, float* %arrayidx248, align 4, !tbaa !7
  %mul249 = fmul float %conv2, 0xC0879699A0000000
  %call250 = tail call float @_Z3expf(float %mul249) #3
  %conv251 = fpext float %call250 to double
  %mul252 = fmul double %conv251, 1.056000e+13
  %conv253 = fptrunc double %mul252 to float
  %add255 = add i64 %call, 400
  %arrayidx256 = getelementptr inbounds float, float* %b, i64 %add255
  store float %conv253, float* %arrayidx256, align 4, !tbaa !7
  %mul258 = fmul double %conv251, 2.640000e+12
  %conv259 = fptrunc double %mul258 to float
  %add261 = add i64 %call, 408
  %arrayidx262 = getelementptr inbounds float, float* %b, i64 %add261
  store float %conv259, float* %arrayidx262, align 4, !tbaa !7
  %add264 = add i64 %call, 416
  %arrayidx265 = getelementptr inbounds float, float* %b, i64 %add264
  store float 0x42B2309CE0000000, float* %arrayidx265, align 4, !tbaa !7
  %47 = tail call float @llvm.fmuladd.f32(float %call1, float 2.000000e+00, float 0x40303D8520000000)
  %48 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0979699A0000000, float %47)
  %call268 = tail call float @_Z3expf(float %48) #3
  %add270 = add i64 %call, 424
  %arrayidx271 = getelementptr inbounds float, float* %b, i64 %add270
  store float %call268, float* %arrayidx271, align 4, !tbaa !7
  %add273 = add i64 %call, 432
  %arrayidx274 = getelementptr inbounds float, float* %b, i64 %add273
  store float 0x42B2309CE0000000, float* %arrayidx274, align 4, !tbaa !7
  %49 = tail call float @llvm.fmuladd.f32(float %call1, float 5.000000e-01, float 0x403B6B98C0000000)
  %50 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0A1BB03A0000000, float %49)
  %call277 = tail call float @_Z3expf(float %50) #3
  %add279 = add i64 %call, 440
  %arrayidx280 = getelementptr inbounds float, float* %b, i64 %add279
  store float %call277, float* %arrayidx280, align 4, !tbaa !7
  %add282 = add i64 %call, 448
  %arrayidx283 = getelementptr inbounds float, float* %b, i64 %add282
  store float 0x42C2309CE0000000, float* %arrayidx283, align 4, !tbaa !7
  %add285 = add i64 %call, 456
  %arrayidx286 = getelementptr inbounds float, float* %b, i64 %add285
  store float 0x42BD1A94A0000000, float* %arrayidx286, align 4, !tbaa !7
  %51 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC072DEE140000000, float 0x403E56CD60000000)
  %call288 = tail call float @_Z3expf(float %51) #3
  %add290 = add i64 %call, 464
  %arrayidx291 = getelementptr inbounds float, float* %b, i64 %add290
  store float %call288, float* %arrayidx291, align 4, !tbaa !7
  %add293 = add i64 %call, 472
  %arrayidx294 = getelementptr inbounds float, float* %b, i64 %add293
  store float 0x42BB48EB60000000, float* %arrayidx294, align 4, !tbaa !7
  %add296 = add i64 %call, 480
  %arrayidx297 = getelementptr inbounds float, float* %b, i64 %add296
  store float 0x42AB48EB60000000, float* %arrayidx297, align 4, !tbaa !7
  %add299 = add i64 %call, 488
  %arrayidx300 = getelementptr inbounds float, float* %b, i64 %add299
  store float 0x42AB48EB60000000, float* %arrayidx300, align 4, !tbaa !7
  %add302 = add i64 %call, 496
  %arrayidx303 = getelementptr inbounds float, float* %b, i64 %add302
  store float 0x42BB48EB60000000, float* %arrayidx303, align 4, !tbaa !7
  %add305 = add i64 %call, 504
  %arrayidx306 = getelementptr inbounds float, float* %b, i64 %add305
  store float 0x42CFD512A0000000, float* %arrayidx306, align 4, !tbaa !7
  %add308 = add i64 %call, 512
  %arrayidx309 = getelementptr inbounds float, float* %b, i64 %add308
  store float 0x42B9774200000000, float* %arrayidx309, align 4, !tbaa !7
  %add311 = add i64 %call, 520
  %arrayidx312 = getelementptr inbounds float, float* %b, i64 %add311
  store float 0x42A5D3EF80000000, float* %arrayidx312, align 4, !tbaa !7
  %add314 = add i64 %call, 528
  %arrayidx315 = getelementptr inbounds float, float* %b, i64 %add314
  store float 0x42BB48EB60000000, float* %arrayidx315, align 4, !tbaa !7
  %add317 = add i64 %call, 536
  %arrayidx318 = getelementptr inbounds float, float* %b, i64 %add317
  store float 0x42A05EF3A0000000, float* %arrayidx318, align 4, !tbaa !7
  %add320 = add i64 %call, 544
  %arrayidx321 = getelementptr inbounds float, float* %b, i64 %add320
  store float 0x4299774200000000, float* %arrayidx321, align 4, !tbaa !7
  %add323 = add i64 %call, 552
  %arrayidx324 = getelementptr inbounds float, float* %b, i64 %add323
  store float 0x42A9774200000000, float* %arrayidx324, align 4, !tbaa !7
  %52 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FDD0E5600000000, float 0x403B03CC40000000)
  %53 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC094717400000000, float %52)
  %call327 = tail call float @_Z3expf(float %53) #3
  %add329 = add i64 %call, 560
  %arrayidx330 = getelementptr inbounds float, float* %b, i64 %add329
  store float %call327, float* %arrayidx330, align 4, !tbaa !7
  %54 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FF0CCCCC0000000, float 0x4037DBD7C0000000)
  %55 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC099C02360000000, float %54)
  %call333 = tail call float @_Z3expf(float %55) #3
  %add335 = add i64 %call, 568
  %arrayidx336 = getelementptr inbounds float, float* %b, i64 %add335
  store float %call333, float* %arrayidx336, align 4, !tbaa !7
  %56 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC09BD58C40000000, float 0x403F4B69C0000000)
  %call338 = tail call float @_Z3expf(float %56) #3
  %add340 = add i64 %call, 576
  %arrayidx341 = getelementptr inbounds float, float* %b, i64 %add340
  store float %call338, float* %arrayidx341, align 4, !tbaa !7
  %57 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FF2E147A0000000, float 0x4035F4B100000000)
  %58 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x406C1E02E0000000, float %57)
  %call344 = tail call float @_Z3expf(float %58) #3
  %add346 = add i64 %call, 584
  %arrayidx347 = getelementptr inbounds float, float* %b, i64 %add346
  store float %call344, float* %arrayidx347, align 4, !tbaa !7
  %59 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0D3A82AA0000000, float 0x40401E3B80000000)
  %call349 = tail call float @_Z3expf(float %59) #3
  %add351 = add i64 %call, 592
  %arrayidx352 = getelementptr inbounds float, float* %b, i64 %add351
  store float %call349, float* %arrayidx352, align 4, !tbaa !7
  %mul353 = fmul float %conv2, 0xC0AF737780000000
  %call354 = tail call float @_Z3expf(float %mul353) #3
  %conv355 = fpext float %call354 to double
  %mul356 = fmul double %conv355, 1.000000e+12
  %conv357 = fptrunc double %mul356 to float
  %add359 = add i64 %call, 600
  %arrayidx360 = getelementptr inbounds float, float* %b, i64 %add359
  store float %conv357, float* %arrayidx360, align 4, !tbaa !7
  %mul362 = fmul double %conv355, 5.000000e+13
  %conv363 = fptrunc double %mul362 to float
  %add365 = add i64 %call, 1008
  %arrayidx366 = getelementptr inbounds float, float* %b, i64 %add365
  store float %conv363, float* %arrayidx366, align 4, !tbaa !7
  %mul368 = fmul double %conv355, 1.000000e+13
  %conv369 = fptrunc double %mul368 to float
  %add371 = add i64 %call, 1024
  %arrayidx372 = getelementptr inbounds float, float* %b, i64 %add371
  store float %conv369, float* %arrayidx372, align 4, !tbaa !7
  %60 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x4070328160000000, float 0x4040172080000000)
  %call374 = tail call float @_Z3expf(float %60) #3
  %add376 = add i64 %call, 608
  %arrayidx377 = getelementptr inbounds float, float* %b, i64 %add376
  store float %call374, float* %arrayidx377, align 4, !tbaa !7
  %61 = tail call float @llvm.fmuladd.f32(float %call1, float 0xBFE428F5C0000000, float 0x40428A49E0000000)
  %62 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC068176C60000000, float %61)
  %call380 = tail call float @_Z3expf(float %62) #3
  %add382 = add i64 %call, 616
  %arrayidx383 = getelementptr inbounds float, float* %b, i64 %add382
  store float %call380, float* %arrayidx383, align 4, !tbaa !7
  %add385 = add i64 %call, 624
  %arrayidx386 = getelementptr inbounds float, float* %b, i64 %add385
  store float 0x42D32AE7E0000000, float* %arrayidx386, align 4, !tbaa !7
  %63 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FF99999A0000000, float 0x4031D742C0000000)
  %64 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0A54EDE60000000, float %63)
  %call389 = tail call float @_Z3expf(float %64) #3
  %add391 = add i64 %call, 632
  %arrayidx392 = getelementptr inbounds float, float* %b, i64 %add391
  store float %call389, float* %arrayidx392, align 4, !tbaa !7
  %add394 = add i64 %call, 640
  %arrayidx395 = getelementptr inbounds float, float* %b, i64 %add394
  store float 0x42B6BF1820000000, float* %arrayidx395, align 4, !tbaa !7
  %65 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0CC4E51E0000000, float 0x403F0F3C00000000)
  %call397 = tail call float @_Z3expf(float %65) #3
  %add399 = add i64 %call, 648
  %arrayidx400 = getelementptr inbounds float, float* %b, i64 %add399
  store float %call397, float* %arrayidx400, align 4, !tbaa !7
  %66 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0B192C1C0000000, float 0x40384E8980000000)
  %call402 = tail call float @_Z3expf(float %66) #3
  %add404 = add i64 %call, 656
  %arrayidx405 = getelementptr inbounds float, float* %b, i64 %add404
  store float %call402, float* %arrayidx405, align 4, !tbaa !7
  %add407 = add i64 %call, 664
  %arrayidx408 = getelementptr inbounds float, float* %b, i64 %add407
  store float 0x426D1A94A0000000, float* %arrayidx408, align 4, !tbaa !7
  %add410 = add i64 %call, 672
  %arrayidx411 = getelementptr inbounds float, float* %b, i64 %add410
  store float 0x42A85FDC80000000, float* %arrayidx411, align 4, !tbaa !7
  %67 = tail call float @llvm.fmuladd.f32(float %call1, float 0x4003C28F60000000, float 0x4024367DC0000000)
  %68 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0A45D5320000000, float %67)
  %call414 = tail call float @_Z3expf(float %68) #3
  %add416 = add i64 %call, 680
  %arrayidx417 = getelementptr inbounds float, float* %b, i64 %add416
  store float %call414, float* %arrayidx417, align 4, !tbaa !7
  %add419 = add i64 %call, 688
  %arrayidx420 = getelementptr inbounds float, float* %b, i64 %add419
  store float 0x42BB48EB60000000, float* %arrayidx420, align 4, !tbaa !7
  %add422 = add i64 %call, 696
  %arrayidx423 = getelementptr inbounds float, float* %b, i64 %add422
  store float 0x429ED99D80000000, float* %arrayidx423, align 4, !tbaa !7
  %add425 = add i64 %call, 704
  %arrayidx426 = getelementptr inbounds float, float* %b, i64 %add425
  store float 0x42B05EF3A0000000, float* %arrayidx426, align 4, !tbaa !7
  %69 = tail call float @llvm.fmuladd.f32(float %call1, float 0x40067AE140000000, float 0x4020372720000000)
  %70 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0A709B300000000, float %69)
  %call429 = tail call float @_Z3expf(float %70) #3
  %add431 = add i64 %call, 712
  %arrayidx432 = getelementptr inbounds float, float* %b, i64 %add431
  store float %call429, float* %arrayidx432, align 4, !tbaa !7
  %add434 = add i64 %call, 720
  %arrayidx435 = getelementptr inbounds float, float* %b, i64 %add434
  store float 0x42C2309CE0000000, float* %arrayidx435, align 4, !tbaa !7
  %mul436 = fmul float %conv2, 0x4071ED5600000000
  %call437 = tail call float @_Z3expf(float %mul436) #3
  %conv438 = fpext float %call437 to double
  %mul439 = fmul double %conv438, 1.200000e+13
  %conv440 = fptrunc double %mul439 to float
  %add442 = add i64 %call, 728
  %arrayidx443 = getelementptr inbounds float, float* %b, i64 %add442
  store float %conv440, float* %arrayidx443, align 4, !tbaa !7
  %mul445 = fmul double %conv438, 1.600000e+13
  %conv446 = fptrunc double %mul445 to float
  %add448 = add i64 %call, 848
  %arrayidx449 = getelementptr inbounds float, float* %b, i64 %add448
  store float %conv446, float* %arrayidx449, align 4, !tbaa !7
  %71 = tail call float @llvm.fmuladd.f32(float %call1, float 0xBFEF0A3D80000000, float 0x4042CBE020000000)
  %72 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0737FE8C0000000, float %71)
  %call452 = tail call float @_Z3expf(float %72) #3
  %add454 = add i64 %call, 736
  %arrayidx455 = getelementptr inbounds float, float* %b, i64 %add454
  store float %call452, float* %arrayidx455, align 4, !tbaa !7
  %73 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FB99999A0000000, float 0x403D3D0B80000000)
  %74 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0B4D618C0000000, float %73)
  %call458 = tail call float @_Z3expf(float %74) #3
  %add460 = add i64 %call, 744
  %arrayidx461 = getelementptr inbounds float, float* %b, i64 %add460
  store float %call458, float* %arrayidx461, align 4, !tbaa !7
  %add463 = add i64 %call, 752
  %arrayidx464 = getelementptr inbounds float, float* %b, i64 %add463
  store float 0x42C6BCC420000000, float* %arrayidx464, align 4, !tbaa !7
  %add466 = add i64 %call, 760
  %arrayidx467 = getelementptr inbounds float, float* %b, i64 %add466
  store float 0x42B2309CE0000000, float* %arrayidx467, align 4, !tbaa !7
  %add469 = add i64 %call, 768
  %arrayidx470 = getelementptr inbounds float, float* %b, i64 %add469
  store float 0x42BD1A94A0000000, float* %arrayidx470, align 4, !tbaa !7
  %add472 = add i64 %call, 776
  %arrayidx473 = getelementptr inbounds float, float* %b, i64 %add472
  store float 0x42AD1A94A0000000, float* %arrayidx473, align 4, !tbaa !7
  %add475 = add i64 %call, 784
  %arrayidx476 = getelementptr inbounds float, float* %b, i64 %add475
  store float 0x42A2309CE0000000, float* %arrayidx476, align 4, !tbaa !7
  %add478 = add i64 %call, 792
  %arrayidx479 = getelementptr inbounds float, float* %b, i64 %add478
  store float 0x4292309CE0000000, float* %arrayidx479, align 4, !tbaa !7
  %75 = tail call float @llvm.fmuladd.f32(float %call1, float 0x401E666660000000, float 0xC03C7ACA80000000)
  %76 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x409BC16B60000000, float %75)
  %call482 = tail call float @_Z3expf(float %76) #3
  %add484 = add i64 %call, 800
  %arrayidx485 = getelementptr inbounds float, float* %b, i64 %add484
  store float %call482, float* %arrayidx485, align 4, !tbaa !7
  %77 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FF9EB8520000000, float 0x40344EC8C0000000)
  %78 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0B54EDE60000000, float %77)
  %call488 = tail call float @_Z3expf(float %78) #3
  %add490 = add i64 %call, 808
  %arrayidx491 = getelementptr inbounds float, float* %b, i64 %add490
  store float %call488, float* %arrayidx491, align 4, !tbaa !7
  %79 = tail call float @llvm.fmuladd.f32(float %call1, float 1.500000e+00, float 0x4034BE39C0000000)
  %80 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0B0E7A9E0000000, float %79)
  %call494 = tail call float @_Z3expf(float %80) #3
  %add496 = add i64 %call, 816
  %arrayidx497 = getelementptr inbounds float, float* %b, i64 %add496
  store float %call494, float* %arrayidx497, align 4, !tbaa !7
  %81 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FF99999A0000000, float 0x40326BB1C0000000)
  %82 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0988824E0000000, float %81)
  %call500 = tail call float @_Z3expf(float %82) #3
  %add502 = add i64 %call, 824
  %arrayidx503 = getelementptr inbounds float, float* %b, i64 %add502
  store float %call500, float* %arrayidx503, align 4, !tbaa !7
  %add505 = add i64 %call, 832
  %arrayidx506 = getelementptr inbounds float, float* %b, i64 %add505
  store float 0x42CB48EB60000000, float* %arrayidx506, align 4, !tbaa !7
  %83 = tail call float @llvm.fmuladd.f32(float %call1, float 2.000000e+00, float 0x402D6E6C80000000)
  %84 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0B0419A20000000, float %83)
  %call509 = tail call float @_Z3expf(float %84) #3
  %add511 = add i64 %call, 840
  %arrayidx512 = getelementptr inbounds float, float* %b, i64 %add511
  store float %call509, float* %arrayidx512, align 4, !tbaa !7
  %add514 = add i64 %call, 856
  %arrayidx515 = getelementptr inbounds float, float* %b, i64 %add514
  store float 0x42D6BCC420000000, float* %arrayidx515, align 4, !tbaa !7
  %add517 = add i64 %call, 864
  %arrayidx518 = getelementptr inbounds float, float* %b, i64 %add517
  store float 0x42D6BCC420000000, float* %arrayidx518, align 4, !tbaa !7
  %85 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC07ADBF3E0000000, float 0x403C19DCC0000000)
  %call520 = tail call float @_Z3expf(float %85) #3
  %add522 = add i64 %call, 872
  %arrayidx523 = getelementptr inbounds float, float* %b, i64 %add522
  store float %call520, float* %arrayidx523, align 4, !tbaa !7
  %add525 = add i64 %call, 880
  %arrayidx526 = getelementptr inbounds float, float* %b, i64 %add525
  store float 0x42C6BCC420000000, float* %arrayidx526, align 4, !tbaa !7
  %add528 = add i64 %call, 888
  %arrayidx529 = getelementptr inbounds float, float* %b, i64 %add528
  store float 0x42BB48EB60000000, float* %arrayidx529, align 4, !tbaa !7
  %add531 = add i64 %call, 896
  %arrayidx532 = getelementptr inbounds float, float* %b, i64 %add531
  store float 0x42A2309CE0000000, float* %arrayidx532, align 4, !tbaa !7
  %86 = tail call float @llvm.fmuladd.f32(float %call1, float 0xBFE0A3D700000000, float 0x40412866A0000000)
  %87 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0D8F08FC0000000, float %86)
  %call535 = tail call float @_Z3expf(float %87) #3
  %add537 = add i64 %call, 904
  %arrayidx538 = getelementptr inbounds float, float* %b, i64 %add537
  store float %call535, float* %arrayidx538, align 4, !tbaa !7
  %88 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FF9EB8520000000, float 0x4033C57700000000)
  %89 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0D234D200000000, float %88)
  %call541 = tail call float @_Z3expf(float %89) #3
  %add543 = add i64 %call, 912
  %arrayidx544 = getelementptr inbounds float, float* %b, i64 %add543
  store float %call541, float* %arrayidx544, align 4, !tbaa !7
  %neg = fmul float %conv2, 0xC08DE0E4C0000000
  %90 = tail call float @llvm.fmuladd.f32(float %call1, float 2.000000e+00, float %neg)
  %call547 = tail call float @_Z3expf(float %90) #3
  %conv550 = fmul float %call547, 1.632000e+07
  %add552 = add i64 %call, 920
  %arrayidx553 = getelementptr inbounds float, float* %b, i64 %add552
  store float %conv550, float* %arrayidx553, align 4, !tbaa !7
  %conv556 = fmul float %call547, 4.080000e+06
  %add558 = add i64 %call, 928
  %arrayidx559 = getelementptr inbounds float, float* %b, i64 %add558
  store float %conv556, float* %arrayidx559, align 4, !tbaa !7
  %91 = tail call float @llvm.fmuladd.f32(float %call1, float 4.500000e+00, float 0xC020DCAE20000000)
  %92 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x407F737780000000, float %91)
  %call562 = tail call float @_Z3expf(float %92) #3
  %add564 = add i64 %call, 936
  %arrayidx565 = getelementptr inbounds float, float* %b, i64 %add564
  store float %call562, float* %arrayidx565, align 4, !tbaa !7
  %93 = tail call float @llvm.fmuladd.f32(float %call1, float 4.000000e+00, float 0xC01E8ABEE0000000)
  %94 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x408F737780000000, float %93)
  %call568 = tail call float @_Z3expf(float %94) #3
  %add570 = add i64 %call, 944
  %arrayidx571 = getelementptr inbounds float, float* %b, i64 %add570
  store float %call568, float* %arrayidx571, align 4, !tbaa !7
  %95 = tail call float @llvm.fmuladd.f32(float %call1, float 2.000000e+00, float 0x40301E3B80000000)
  %96 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0A79699A0000000, float %95)
  %call574 = tail call float @_Z3expf(float %96) #3
  %add576 = add i64 %call, 952
  %arrayidx577 = getelementptr inbounds float, float* %b, i64 %add576
  store float %call574, float* %arrayidx577, align 4, !tbaa !7
  %97 = tail call float @llvm.fmuladd.f32(float %call1, float 0xC027A3D700000000, float 0x405FDB8F80000000)
  %98 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0D18EFBA0000000, float %97)
  %call580 = tail call float @_Z3expf(float %98) #3
  %add582 = add i64 %call, 960
  %arrayidx583 = getelementptr inbounds float, float* %b, i64 %add582
  store float %call580, float* %arrayidx583, align 4, !tbaa !7
  %add585 = add i64 %call, 968
  %arrayidx586 = getelementptr inbounds float, float* %b, i64 %add585
  store float 0x42D6BCC420000000, float* %arrayidx586, align 4, !tbaa !7
  %add588 = add i64 %call, 976
  %arrayidx589 = getelementptr inbounds float, float* %b, i64 %add588
  store float 0x42D6BCC420000000, float* %arrayidx589, align 4, !tbaa !7
  %add591 = add i64 %call, 984
  %arrayidx592 = getelementptr inbounds float, float* %b, i64 %add591
  store float 0x42B2309CE0000000, float* %arrayidx592, align 4, !tbaa !7
  %add594 = add i64 %call, 992
  %arrayidx595 = getelementptr inbounds float, float* %b, i64 %add594
  store float 0x42A2309CE0000000, float* %arrayidx595, align 4, !tbaa !7
  %99 = tail call float @llvm.fmuladd.f32(float %call1, float 0xBFAEB851E0000000, float 0x4040B70E00000000)
  %100 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0B0B55780000000, float %99)
  %call598 = tail call float @_Z3expf(float %100) #3
  %add600 = add i64 %call, 1000
  %arrayidx601 = getelementptr inbounds float, float* %b, i64 %add600
  store float %call598, float* %arrayidx601, align 4, !tbaa !7
  %101 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FF6E147A0000000, float 0x403520F480000000)
  %102 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC095269C80000000, float %101)
  %call604 = tail call float @_Z3expf(float %102) #3
  %add606 = add i64 %call, 1016
  %arrayidx607 = getelementptr inbounds float, float* %b, i64 %add606
  store float %call604, float* %arrayidx607, align 4, !tbaa !7
  %103 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0853ABD80000000, float 0x403C30CDA0000000)
  %call609 = tail call float @_Z3expf(float %103) #3
  %add611 = add i64 %call, 1032
  %arrayidx612 = getelementptr inbounds float, float* %b, i64 %add611
  store float %call609, float* %arrayidx612, align 4, !tbaa !7
  %mul613 = fmul float %conv2, 0xC08F737780000000
  %call614 = tail call float @_Z3expf(float %mul613) #3
  %conv615 = fpext float %call614 to double
  %mul616 = fmul double %conv615, 7.500000e+12
  %conv617 = fptrunc double %mul616 to float
  %add619 = add i64 %call, 1040
  %arrayidx620 = getelementptr inbounds float, float* %b, i64 %add619
  store float %conv617, float* %arrayidx620, align 4, !tbaa !7
  %mul622 = fmul double %conv615, 1.000000e+13
  %conv623 = fptrunc double %mul622 to float
  %add625 = add i64 %call, 1208
  %arrayidx626 = getelementptr inbounds float, float* %b, i64 %add625
  store float %conv623, float* %arrayidx626, align 4, !tbaa !7
  %mul628 = fmul double %conv615, 2.000000e+13
  %conv629 = fptrunc double %mul628 to float
  %add631 = add i64 %call, 1480
  %arrayidx632 = getelementptr inbounds float, float* %b, i64 %add631
  store float %conv629, float* %arrayidx632, align 4, !tbaa !7
  %104 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FD147AE20000000, float 0x403D6F9F60000000)
  %105 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0619CD240000000, float %104)
  %call635 = tail call float @_Z3expf(float %105) #3
  %add637 = add i64 %call, 1048
  %arrayidx638 = getelementptr inbounds float, float* %b, i64 %add637
  store float %call635, float* %arrayidx638, align 4, !tbaa !7
  %add640 = add i64 %call, 1056
  %arrayidx641 = getelementptr inbounds float, float* %b, i64 %add640
  store float 0x42BB48EB60000000, float* %arrayidx641, align 4, !tbaa !7
  %add643 = add i64 %call, 1064
  %arrayidx644 = getelementptr inbounds float, float* %b, i64 %add643
  store float 0x42CB48EB60000000, float* %arrayidx644, align 4, !tbaa !7
  %add646 = add i64 %call, 1072
  %arrayidx647 = getelementptr inbounds float, float* %b, i64 %add646
  store float 0x42C5D3EF80000000, float* %arrayidx647, align 4, !tbaa !7
  %add649 = add i64 %call, 1080
  %arrayidx650 = getelementptr inbounds float, float* %b, i64 %add649
  store float 0x42C5D3EF80000000, float* %arrayidx650, align 4, !tbaa !7
  %add652 = add i64 %call, 1088
  %arrayidx653 = getelementptr inbounds float, float* %b, i64 %add652
  store float 0x42BB6287E0000000, float* %arrayidx653, align 4, !tbaa !7
  %106 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FF9C28F60000000, float 0x402C376360000000)
  %107 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x40681DDD60000000, float %106)
  %call656 = tail call float @_Z3expf(float %107) #3
  %add658 = add i64 %call, 1096
  %arrayidx659 = getelementptr inbounds float, float* %b, i64 %add658
  store float %call656, float* %arrayidx659, align 4, !tbaa !7
  %108 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FD28F5C20000000, float 0x403A6D5300000000)
  %109 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC016243B80000000, float %108)
  %call662 = tail call float @_Z3expf(float %109) #3
  %add664 = add i64 %call, 1104
  %arrayidx665 = getelementptr inbounds float, float* %b, i64 %add664
  store float %call662, float* %arrayidx665, align 4, !tbaa !7
  %110 = tail call float @llvm.fmuladd.f32(float %call1, float 0xBFF63D70A0000000, float 0x40432F0780000000)
  %111 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC07FC3FB40000000, float %110)
  %call668 = tail call float @_Z3expf(float %111) #3
  %add670 = add i64 %call, 1112
  %arrayidx671 = getelementptr inbounds float, float* %b, i64 %add670
  store float %call668, float* %arrayidx671, align 4, !tbaa !7
  %add673 = add i64 %call, 1120
  %arrayidx674 = getelementptr inbounds float, float* %b, i64 %add673
  store float 0x42A2309CE0000000, float* %arrayidx674, align 4, !tbaa !7
  %112 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x4072BEACA0000000, float 0x4037376AA0000000)
  %call676 = tail call float @_Z3expf(float %112) #3
  %add678 = add i64 %call, 1128
  %arrayidx679 = getelementptr inbounds float, float* %b, i64 %add678
  store float %call676, float* %arrayidx679, align 4, !tbaa !7
  %add681 = add i64 %call, 1136
  %arrayidx682 = getelementptr inbounds float, float* %b, i64 %add681
  store float 0x42D489E5E0000000, float* %arrayidx682, align 4, !tbaa !7
  %add684 = add i64 %call, 1144
  %arrayidx685 = getelementptr inbounds float, float* %b, i64 %add684
  store float 0x4256D14160000000, float* %arrayidx685, align 4, !tbaa !7
  %add687 = add i64 %call, 1152
  %arrayidx688 = getelementptr inbounds float, float* %b, i64 %add687
  store float 0x42B6BCC420000000, float* %arrayidx688, align 4, !tbaa !7
  %113 = tail call float @llvm.fmuladd.f32(float %call1, float 0xC006A3D700000000, float 0x404BD570E0000000)
  %114 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0C24C71A0000000, float %113)
  %call691 = tail call float @_Z3expf(float %114) #3
  %add693 = add i64 %call, 1160
  %arrayidx694 = getelementptr inbounds float, float* %b, i64 %add693
  store float %call691, float* %arrayidx694, align 4, !tbaa !7
  %115 = tail call float @llvm.fmuladd.f32(float %call1, float 0xC0224B43A0000000, float 0x40581D7280000000)
  %116 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0D70C3720000000, float %115)
  %call697 = tail call float @_Z3expf(float %116) #3
  %add699 = add i64 %call, 1168
  %arrayidx700 = getelementptr inbounds float, float* %b, i64 %add699
  store float %call697, float* %arrayidx700, align 4, !tbaa !7
  %add702 = add i64 %call, 1176
  %arrayidx703 = getelementptr inbounds float, float* %b, i64 %add702
  store float 0x42D6BCC420000000, float* %arrayidx703, align 4, !tbaa !7
  %add705 = add i64 %call, 1184
  %arrayidx706 = getelementptr inbounds float, float* %b, i64 %add705
  store float 0x42D476B080000000, float* %arrayidx706, align 4, !tbaa !7
  %mul707 = fmul float %conv2, 0xC09F737780000000
  %call708 = tail call float @_Z3expf(float %mul707) #3
  %conv709 = fpext float %call708 to double
  %mul710 = fmul double %conv709, 2.000000e+13
  %conv711 = fptrunc double %mul710 to float
  %add713 = add i64 %call, 1192
  %arrayidx714 = getelementptr inbounds float, float* %b, i64 %add713
  store float %conv711, float* %arrayidx714, align 4, !tbaa !7
  %add719 = add i64 %call, 1200
  %arrayidx720 = getelementptr inbounds float, float* %b, i64 %add719
  store float %conv711, float* %arrayidx720, align 4, !tbaa !7
  %add722 = add i64 %call, 1216
  %arrayidx723 = getelementptr inbounds float, float* %b, i64 %add722
  store float 0x42404C5340000000, float* %arrayidx723, align 4, !tbaa !7
  %add725 = add i64 %call, 1224
  %arrayidx726 = getelementptr inbounds float, float* %b, i64 %add725
  store float 0x4210C388C0000000, float* %arrayidx726, align 4, !tbaa !7
  %117 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FDC28F5C0000000, float 0x403DB5E0E0000000)
  %118 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0E5CFD160000000, float %117)
  %call729 = tail call float @_Z3expf(float %118) #3
  %add731 = add i64 %call, 1232
  %arrayidx732 = getelementptr inbounds float, float* %b, i64 %add731
  store float %call729, float* %arrayidx732, align 4, !tbaa !7
  %119 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FDD0E5600000000, float 0x403BB53E60000000)
  %120 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC08C9ED5A0000000, float %119)
  %call735 = tail call float @_Z3expf(float %120) #3
  %add737 = add i64 %call, 1240
  %arrayidx738 = getelementptr inbounds float, float* %b, i64 %add737
  store float %call735, float* %arrayidx738, align 4, !tbaa !7
  %121 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FFEE147A0000000, float 0x4031BDCEC0000000)
  %122 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0B974A7E0000000, float %121)
  %call741 = tail call float @_Z3expf(float %122) #3
  %add743 = add i64 %call, 1248
  %arrayidx744 = getelementptr inbounds float, float* %b, i64 %add743
  store float %call741, float* %arrayidx744, align 4, !tbaa !7
  %123 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FFE8F5C20000000, float 0x403087BB80000000)
  %124 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC09D681F20000000, float %123)
  %call747 = tail call float @_Z3expf(float %124) #3
  %add749 = add i64 %call, 1256
  %arrayidx750 = getelementptr inbounds float, float* %b, i64 %add749
  store float %call747, float* %arrayidx750, align 4, !tbaa !7
  %neg753 = fmul float %conv2, 0xC05BAD4A60000000
  %125 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FFD47AE20000000, float %neg753)
  %call754 = tail call float @_Z3expf(float %125) #3
  %conv757 = fmul float %call754, 1.920000e+07
  %add759 = add i64 %call, 1264
  %arrayidx760 = getelementptr inbounds float, float* %b, i64 %add759
  store float %conv757, float* %arrayidx760, align 4, !tbaa !7
  %conv763 = fmul float %call754, 3.840000e+05
  %add765 = add i64 %call, 1272
  %arrayidx766 = getelementptr inbounds float, float* %b, i64 %add765
  store float %conv763, float* %arrayidx766, align 4, !tbaa !7
  %126 = tail call float @llvm.fmuladd.f32(float %call1, float 2.000000e+00, float 0x402E316120000000)
  %127 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC093A82AA0000000, float %126)
  %call769 = tail call float @_Z3expf(float %127) #3
  %add771 = add i64 %call, 1280
  %arrayidx772 = getelementptr inbounds float, float* %b, i64 %add771
  store float %call769, float* %arrayidx772, align 4, !tbaa !7
  %128 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0DDE0E4C0000000, float 0x403F5F99E0000000)
  %call774 = tail call float @_Z3expf(float %128) #3
  %add776 = add i64 %call, 1288
  %arrayidx777 = getelementptr inbounds float, float* %b, i64 %add776
  store float %call774, float* %arrayidx777, align 4, !tbaa !7
  %129 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0BB850880000000, float 0x403C52FCC0000000)
  %call779 = tail call float @_Z3expf(float %129) #3
  %add781 = add i64 %call, 1296
  %arrayidx782 = getelementptr inbounds float, float* %b, i64 %add781
  store float %call779, float* %arrayidx782, align 4, !tbaa !7
  %130 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0AF737780000000, float %95)
  %call785 = tail call float @_Z3expf(float %130) #3
  %add787 = add i64 %call, 1304
  %arrayidx788 = getelementptr inbounds float, float* %b, i64 %add787
  store float %call785, float* %arrayidx788, align 4, !tbaa !7
  %131 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0A79699A0000000, float 0x403EA072E0000000)
  %call790 = tail call float @_Z3expf(float %131) #3
  %add792 = add i64 %call, 1312
  %arrayidx793 = getelementptr inbounds float, float* %b, i64 %add792
  store float %call790, float* %arrayidx793, align 4, !tbaa !7
  %add795 = add i64 %call, 1320
  %arrayidx796 = getelementptr inbounds float, float* %b, i64 %add795
  store float 0x42C6BCC420000000, float* %arrayidx796, align 4, !tbaa !7
  %add798 = add i64 %call, 1328
  %arrayidx799 = getelementptr inbounds float, float* %b, i64 %add798
  store float 0x42C6BCC420000000, float* %arrayidx799, align 4, !tbaa !7
  %132 = tail call float @llvm.fmuladd.f32(float %call1, float 2.000000e+00, float 0x4028AA5860000000)
  %133 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0B21597E0000000, float %132)
  %call802 = tail call float @_Z3expf(float %133) #3
  %add804 = add i64 %call, 1336
  %arrayidx805 = getelementptr inbounds float, float* %b, i64 %add804
  store float %call802, float* %arrayidx805, align 4, !tbaa !7
  %134 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0AE458960000000, float 0x403A85B940000000)
  %call807 = tail call float @_Z3expf(float %134) #3
  %add809 = add i64 %call, 1344
  %arrayidx810 = getelementptr inbounds float, float* %b, i64 %add809
  store float %call807, float* %arrayidx810, align 4, !tbaa !7
  %135 = tail call float @llvm.fmuladd.f32(float %call1, float 0xBFEFAE1480000000, float 0x404465B300000000)
  %136 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC088D8A8A0000000, float %135)
  %call813 = tail call float @_Z3expf(float %136) #3
  %add815 = add i64 %call, 1352
  %arrayidx816 = getelementptr inbounds float, float* %b, i64 %add815
  store float %call813, float* %arrayidx816, align 4, !tbaa !7
  %add818 = add i64 %call, 1360
  %arrayidx819 = getelementptr inbounds float, float* %b, i64 %add818
  store float 0x427D1A94A0000000, float* %arrayidx819, align 4, !tbaa !7
  %add821 = add i64 %call, 1368
  %arrayidx822 = getelementptr inbounds float, float* %b, i64 %add821
  store float 0x42AD2D3500000000, float* %arrayidx822, align 4, !tbaa !7
  %add824 = add i64 %call, 1376
  %arrayidx825 = getelementptr inbounds float, float* %b, i64 %add824
  store float 0x42D23C4120000000, float* %arrayidx825, align 4, !tbaa !7
  %add827 = add i64 %call, 1384
  %arrayidx828 = getelementptr inbounds float, float* %b, i64 %add827
  store float 2.000000e+10, float* %arrayidx828, align 4, !tbaa !7
  %add830 = add i64 %call, 1392
  %arrayidx831 = getelementptr inbounds float, float* %b, i64 %add830
  store float 0x4251765920000000, float* %arrayidx831, align 4, !tbaa !7
  %add833 = add i64 %call, 1400
  %arrayidx834 = getelementptr inbounds float, float* %b, i64 %add833
  store float 0x4251765920000000, float* %arrayidx834, align 4, !tbaa !7
  %add836 = add i64 %call, 1408
  %arrayidx837 = getelementptr inbounds float, float* %b, i64 %add836
  store float 0x42B5D3EF80000000, float* %arrayidx837, align 4, !tbaa !7
  %137 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC07EA220E0000000, float 0x4036E2F780000000)
  %call839 = tail call float @_Z3expf(float %137) #3
  %add841 = add i64 %call, 1416
  %arrayidx842 = getelementptr inbounds float, float* %b, i64 %add841
  store float %call839, float* %arrayidx842, align 4, !tbaa !7
  %add844 = add i64 %call, 1424
  %arrayidx845 = getelementptr inbounds float, float* %b, i64 %add844
  store float 0x42DB48EB60000000, float* %arrayidx845, align 4, !tbaa !7
  %138 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FFE666660000000, float 0x40328F7920000000)
  %139 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0AD9A7160000000, float %138)
  %call848 = tail call float @_Z3expf(float %139) #3
  %add850 = add i64 %call, 1432
  %arrayidx851 = getelementptr inbounds float, float* %b, i64 %add850
  store float %call848, float* %arrayidx851, align 4, !tbaa !7
  %140 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FFEB851E0000000, float 0x4032502700000000)
  %141 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0A65E9B00000000, float %140)
  %call854 = tail call float @_Z3expf(float %141) #3
  %add856 = add i64 %call, 1440
  %arrayidx857 = getelementptr inbounds float, float* %b, i64 %add856
  store float %call854, float* %arrayidx857, align 4, !tbaa !7
  %142 = tail call float @llvm.fmuladd.f32(float %call1, float 0x4000F5C280000000, float 0x402E28C640000000)
  %143 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC07B5CC6A0000000, float %142)
  %call860 = tail call float @_Z3expf(float %143) #3
  %add862 = add i64 %call, 1448
  %arrayidx863 = getelementptr inbounds float, float* %b, i64 %add862
  store float %call860, float* %arrayidx863, align 4, !tbaa !7
  %144 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x40714C4E80000000, float 0x403F51E500000000)
  %call865 = tail call float @_Z3expf(float %144) #3
  %add867 = add i64 %call, 1456
  %arrayidx868 = getelementptr inbounds float, float* %b, i64 %add867
  store float %call865, float* %arrayidx868, align 4, !tbaa !7
  %145 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FFBD70A40000000, float 0x402F42BB40000000)
  %146 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0B48A9D40000000, float %145)
  %call871 = tail call float @_Z3expf(float %146) #3
  %add873 = add i64 %call, 1464
  %arrayidx874 = getelementptr inbounds float, float* %b, i64 %add873
  store float %call871, float* %arrayidx874, align 4, !tbaa !7
  %add876 = add i64 %call, 1472
  %arrayidx877 = getelementptr inbounds float, float* %b, i64 %add876
  store float 0x42E6BCC420000000, float* %arrayidx877, align 4, !tbaa !7
  %add879 = add i64 %call, 1488
  %arrayidx880 = getelementptr inbounds float, float* %b, i64 %add879
  store float 0x42835AA2E0000000, float* %arrayidx880, align 4, !tbaa !7
  %add882 = add i64 %call, 1496
  %arrayidx883 = getelementptr inbounds float, float* %b, i64 %add882
  store float 0x429802BAA0000000, float* %arrayidx883, align 4, !tbaa !7
  %add885 = add i64 %call, 1504
  %arrayidx886 = getelementptr inbounds float, float* %b, i64 %add885
  store float 0x42CB48EB60000000, float* %arrayidx886, align 4, !tbaa !7
  %147 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC099A35AC0000000, float 0x403E380240000000)
  %call888 = tail call float @_Z3expf(float %147) #3
  %add890 = add i64 %call, 1512
  %arrayidx891 = getelementptr inbounds float, float* %b, i64 %add890
  store float %call888, float* %arrayidx891, align 4, !tbaa !7
  %148 = tail call float @llvm.fmuladd.f32(float %call1, float 0xC0031EB860000000, float 0x4049903D80000000)
  %149 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0B5F9F660000000, float %148)
  %call894 = tail call float @_Z3expf(float %149) #3
  %add896 = add i64 %call, 1520
  %arrayidx897 = getelementptr inbounds float, float* %b, i64 %add896
  store float %call894, float* %arrayidx897, align 4, !tbaa !7
  %150 = tail call float @llvm.fmuladd.f32(float %call1, float 2.500000e+00, float 0x4028164CA0000000)
  %151 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0939409C0000000, float %150)
  %call900 = tail call float @_Z3expf(float %151) #3
  %add902 = add i64 %call, 1528
  %arrayidx903 = getelementptr inbounds float, float* %b, i64 %add902
  store float %call900, float* %arrayidx903, align 4, !tbaa !7
  %152 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FFA666660000000, float 0x40329A5E60000000)
  %153 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC06491A8C0000000, float %152)
  %call906 = tail call float @_Z3expf(float %153) #3
  %add908 = add i64 %call, 1536
  %arrayidx909 = getelementptr inbounds float, float* %b, i64 %add908
  store float %call906, float* %arrayidx909, align 4, !tbaa !7
  %154 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FFA666660000000, float 0x40315EF0A0000000)
  %155 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x407E920680000000, float %154)
  %call912 = tail call float @_Z3expf(float %155) #3
  %add914 = add i64 %call, 1544
  %arrayidx915 = getelementptr inbounds float, float* %b, i64 %add914
  store float %call912, float* %arrayidx915, align 4, !tbaa !7
  %156 = tail call float @llvm.fmuladd.f32(float %call1, float 0x3FE6666660000000, float 0x4039EA8DA0000000)
  %157 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0A71DD400000000, float %156)
  %call918 = tail call float @_Z3expf(float %157) #3
  %add920 = add i64 %call, 1552
  %arrayidx921 = getelementptr inbounds float, float* %b, i64 %add920
  store float %call918, float* %arrayidx921, align 4, !tbaa !7
  %158 = tail call float @llvm.fmuladd.f32(float %call1, float 2.000000e+00, float 0x402DE4D1C0000000)
  %159 = tail call float @llvm.fmuladd.f32(float %conv2, float 0x4062BEACA0000000, float %158)
  %call924 = tail call float @_Z3expf(float %159) #3
  %add926 = add i64 %call, 1560
  %arrayidx927 = getelementptr inbounds float, float* %b, i64 %add926
  store float %call924, float* %arrayidx927, align 4, !tbaa !7
  %160 = tail call float @llvm.fmuladd.f32(float %call1, float 0x4004CCCCC0000000, float 0x402256CB20000000)
  %161 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0BB57BE60000000, float %160)
  %call930 = tail call float @_Z3expf(float %161) #3
  %add932 = add i64 %call, 1568
  %arrayidx933 = getelementptr inbounds float, float* %b, i64 %add932
  store float %call930, float* %arrayidx933, align 4, !tbaa !7
  %162 = tail call float @llvm.fmuladd.f32(float %call1, float 3.500000e+00, float 0x3FE93B0AE0000000)
  %163 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0A64F8260000000, float %162)
  %call936 = tail call float @_Z3expf(float %163) #3
  %add938 = add i64 %call, 1576
  %arrayidx939 = getelementptr inbounds float, float* %b, i64 %add938
  store float %call936, float* %arrayidx939, align 4, !tbaa !7
  %164 = tail call float @llvm.fmuladd.f32(float %call1, float 0xC0075C2900000000, float 0x404C490200000000)
  %165 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0B894B980000000, float %164)
  %call942 = tail call float @_Z3expf(float %165) #3
  %add944 = add i64 %call, 1584
  %arrayidx945 = getelementptr inbounds float, float* %b, i64 %add944
  store float %call942, float* %arrayidx945, align 4, !tbaa !7
  %add947 = add i64 %call, 1592
  %arrayidx948 = getelementptr inbounds float, float* %b, i64 %add947
  store float 0x427A3185C0000000, float* %arrayidx948, align 4, !tbaa !7
  %add950 = add i64 %call, 1600
  %arrayidx951 = getelementptr inbounds float, float* %b, i64 %add950
  store float 0x42D5D3EF80000000, float* %arrayidx951, align 4, !tbaa !7
  %add953 = add i64 %call, 1608
  %arrayidx954 = getelementptr inbounds float, float* %b, i64 %add953
  store float 0x42B5D3EF80000000, float* %arrayidx954, align 4, !tbaa !7
  %add956 = add i64 %call, 1616
  %arrayidx957 = getelementptr inbounds float, float* %b, i64 %add956
  store float 0x4234F46B00000000, float* %arrayidx957, align 4, !tbaa !7
  %add959 = add i64 %call, 1624
  %arrayidx960 = getelementptr inbounds float, float* %b, i64 %add959
  store float 0x42B5D3EF80000000, float* %arrayidx960, align 4, !tbaa !7
  %add962 = add i64 %call, 1632
  %arrayidx963 = getelementptr inbounds float, float* %b, i64 %add962
  store float 0x42A4024620000000, float* %arrayidx963, align 4, !tbaa !7
  %166 = tail call float @llvm.fmuladd.f32(float %call1, float 0xC014E147A0000000, float 0x4052C2CC00000000)
  %167 = tail call float @llvm.fmuladd.f32(float %conv2, float 0xC0C3688280000000, float %166)
  %call966 = tail call float @_Z3expf(float %167) #3
  %add968 = add i64 %call, 1640
  %arrayidx969 = getelementptr inbounds float, float* %b, i64 %add968
  store float %call966, float* %arrayidx969, align 4, !tbaa !7
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local float @_Z3logf(float) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local float @_Z3expf(float) local_unnamed_addr #1

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
!3 = !{i32 1, i32 1, i32 0}
!4 = !{!"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float"}
!6 = !{!"const", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
