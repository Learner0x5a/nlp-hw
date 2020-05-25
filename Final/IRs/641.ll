; ModuleID = 'src/641.src'
source_filename = "src/641.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture readonly %b, float* readonly %c, float* %d, float %e, float %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %arrayidx = getelementptr inbounds float, float* %b, i64 %call
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %mul = fmul float %0, %e
  %arrayidx2 = getelementptr inbounds float, float* %a, i64 %call
  %1 = load float, float* %arrayidx2, align 4, !tbaa !7
  %mul3 = fmul float %1, %f
  %arrayidx5 = getelementptr inbounds float, float* %c, i64 %call
  %2 = load float, float* %arrayidx5, align 4, !tbaa !7
  %mul6 = fmul float %2, 0x3FDFBF39E0000000
  %arrayidx9 = getelementptr inbounds float, float* %d, i64 %call
  store float %mul6, float* %arrayidx9, align 4, !tbaa !7
  %add10 = fadd float %mul6, 0.000000e+00
  %add12 = add i64 %call, 8
  %arrayidx13 = getelementptr inbounds float, float* %c, i64 %add12
  %3 = load float, float* %arrayidx13, align 4, !tbaa !7
  %mul14 = fmul float %3, 0x3FEFBF39E0000000
  %arrayidx17 = getelementptr inbounds float, float* %d, i64 %add12
  store float %mul14, float* %arrayidx17, align 4, !tbaa !7
  %add18 = fadd float %add10, %mul14
  %add20 = add i64 %call, 16
  %arrayidx21 = getelementptr inbounds float, float* %c, i64 %add20
  %4 = load float, float* %arrayidx21, align 4, !tbaa !7
  %mul22 = fmul float %4, 0x3FB0002760000000
  %arrayidx25 = getelementptr inbounds float, float* %d, i64 %add20
  store float %mul22, float* %arrayidx25, align 4, !tbaa !7
  %add26 = fadd float %add18, %mul22
  %add28 = add i64 %call, 24
  %arrayidx29 = getelementptr inbounds float, float* %c, i64 %add28
  %5 = load float, float* %arrayidx29, align 4, !tbaa !7
  %mul30 = fmul float %5, 0x3FA0002740000000
  %arrayidx33 = getelementptr inbounds float, float* %d, i64 %add28
  store float %mul30, float* %arrayidx33, align 4, !tbaa !7
  %add34 = fadd float %add26, %mul30
  %add36 = add i64 %call, 32
  %arrayidx37 = getelementptr inbounds float, float* %c, i64 %add36
  %6 = load float, float* %arrayidx37, align 4, !tbaa !7
  %mul38 = fmul float %6, 0x3FAE1AC6C0000000
  %arrayidx41 = getelementptr inbounds float, float* %d, i64 %add36
  store float %mul38, float* %arrayidx41, align 4, !tbaa !7
  %add42 = fadd float %add34, %mul38
  %add44 = add i64 %call, 40
  %arrayidx45 = getelementptr inbounds float, float* %c, i64 %add44
  %7 = load float, float* %arrayidx45, align 4, !tbaa !7
  %mul46 = fmul float %7, 0x3FAC6B93C0000000
  %arrayidx49 = getelementptr inbounds float, float* %d, i64 %add44
  store float %mul46, float* %arrayidx49, align 4, !tbaa !7
  %add50 = fadd float %add42, %mul46
  %add52 = add i64 %call, 48
  %arrayidx53 = getelementptr inbounds float, float* %c, i64 %add52
  %8 = load float, float* %arrayidx53, align 4, !tbaa !7
  %mul54 = fmul float %8, 0x3F9F0620C0000000
  %arrayidx57 = getelementptr inbounds float, float* %d, i64 %add52
  store float %mul54, float* %arrayidx57, align 4, !tbaa !7
  %add58 = fadd float %add50, %mul54
  %add60 = add i64 %call, 56
  %arrayidx61 = getelementptr inbounds float, float* %c, i64 %add60
  %9 = load float, float* %arrayidx61, align 4, !tbaa !7
  %mul62 = fmul float %9, 0x3F9E1AC6C0000000
  %arrayidx65 = getelementptr inbounds float, float* %d, i64 %add60
  store float %mul62, float* %arrayidx65, align 4, !tbaa !7
  %add66 = fadd float %add58, %mul62
  %add68 = add i64 %call, 64
  %arrayidx69 = getelementptr inbounds float, float* %c, i64 %add68
  %10 = load float, float* %arrayidx69, align 4, !tbaa !7
  %mul70 = fmul float %10, 0x3FB106E0E0000000
  %arrayidx73 = getelementptr inbounds float, float* %d, i64 %add68
  store float %mul70, float* %arrayidx73, align 4, !tbaa !7
  %add74 = fadd float %add66, %mul70
  %add76 = add i64 %call, 72
  %arrayidx77 = getelementptr inbounds float, float* %c, i64 %add76
  %11 = load float, float* %arrayidx77, align 4, !tbaa !7
  %mul78 = fmul float %11, 0x3FAFEA0720000000
  %arrayidx81 = getelementptr inbounds float, float* %d, i64 %add76
  store float %mul78, float* %arrayidx81, align 4, !tbaa !7
  %add82 = fadd float %add74, %mul78
  %add84 = add i64 %call, 80
  %arrayidx85 = getelementptr inbounds float, float* %c, i64 %add84
  %12 = load float, float* %arrayidx85, align 4, !tbaa !7
  %mul86 = fmul float %12, 0x3FA2476140000000
  %arrayidx89 = getelementptr inbounds float, float* %d, i64 %add84
  store float %mul86, float* %arrayidx89, align 4, !tbaa !7
  %add90 = fadd float %add82, %mul86
  %add92 = add i64 %call, 88
  %arrayidx93 = getelementptr inbounds float, float* %c, i64 %add92
  %13 = load float, float* %arrayidx93, align 4, !tbaa !7
  %mul94 = fmul float %13, 0x3F974478A0000000
  %arrayidx97 = getelementptr inbounds float, float* %d, i64 %add92
  store float %mul94, float* %arrayidx97, align 4, !tbaa !7
  %add98 = fadd float %add90, %mul94
  %add100 = add i64 %call, 96
  %arrayidx101 = getelementptr inbounds float, float* %c, i64 %add100
  %14 = load float, float* %arrayidx101, align 4, !tbaa !7
  %mul102 = fmul float %14, 0x3FA10D3640000000
  %arrayidx105 = getelementptr inbounds float, float* %d, i64 %add100
  store float %mul102, float* %arrayidx105, align 4, !tbaa !7
  %add106 = fadd float %add98, %mul102
  %add108 = add i64 %call, 104
  %arrayidx109 = getelementptr inbounds float, float* %c, i64 %add108
  %15 = load float, float* %arrayidx109, align 4, !tbaa !7
  %mul110 = fmul float %15, 0x3FA3A9D3C0000000
  %arrayidx113 = getelementptr inbounds float, float* %d, i64 %add108
  store float %mul110, float* %arrayidx113, align 4, !tbaa !7
  %add114 = fadd float %add106, %mul110
  %add116 = add i64 %call, 112
  %arrayidx117 = getelementptr inbounds float, float* %c, i64 %add116
  %16 = load float, float* %arrayidx117, align 4, !tbaa !7
  %mul118 = fmul float %16, 0x3FA2401A20000000
  %arrayidx121 = getelementptr inbounds float, float* %d, i64 %add116
  store float %mul118, float* %arrayidx121, align 4, !tbaa !7
  %add122 = fadd float %add114, %mul118
  %add124 = add i64 %call, 120
  %arrayidx125 = getelementptr inbounds float, float* %c, i64 %add124
  %17 = load float, float* %arrayidx125, align 4, !tbaa !7
  %mul126 = fmul float %17, 0x3FA106E0E0000000
  %arrayidx129 = getelementptr inbounds float, float* %d, i64 %add124
  store float %mul126, float* %arrayidx129, align 4, !tbaa !7
  %add130 = fadd float %add122, %mul126
  %add132 = add i64 %call, 128
  %arrayidx133 = getelementptr inbounds float, float* %c, i64 %add132
  %18 = load float, float* %arrayidx133, align 4, !tbaa !7
  %mul134 = fmul float %18, 0x3F98F521E0000000
  %arrayidx137 = getelementptr inbounds float, float* %d, i64 %add132
  store float %mul134, float* %arrayidx137, align 4, !tbaa !7
  %add138 = fadd float %add130, %mul134
  %add140 = add i64 %call, 136
  %arrayidx141 = getelementptr inbounds float, float* %c, i64 %add140
  %19 = load float, float* %arrayidx141, align 4, !tbaa !7
  %mul142 = fmul float %19, 0x3F985BEF60000000
  %arrayidx145 = getelementptr inbounds float, float* %d, i64 %add140
  store float %mul142, float* %arrayidx145, align 4, !tbaa !7
  %add146 = fadd float %add138, %mul142
  %add148 = add i64 %call, 144
  %arrayidx149 = getelementptr inbounds float, float* %c, i64 %add148
  %20 = load float, float* %arrayidx149, align 4, !tbaa !7
  %mul150 = fmul float %20, 0x3F973E9260000000
  %arrayidx153 = getelementptr inbounds float, float* %d, i64 %add148
  store float %mul150, float* %arrayidx153, align 4, !tbaa !7
  %add154 = fadd float %add146, %mul150
  %add156 = add i64 %call, 152
  %arrayidx157 = getelementptr inbounds float, float* %c, i64 %add156
  %21 = load float, float* %arrayidx157, align 4, !tbaa !7
  %mul158 = fmul float %21, 0x3F98EE5880000000
  %arrayidx161 = getelementptr inbounds float, float* %d, i64 %add156
  store float %mul158, float* %arrayidx161, align 4, !tbaa !7
  %add162 = fadd float %add154, %mul158
  %add164 = add i64 %call, 160
  %arrayidx165 = getelementptr inbounds float, float* %c, i64 %add164
  %22 = load float, float* %arrayidx165, align 4, !tbaa !7
  %mul166 = fmul float %22, 0x3F98557840000000
  %arrayidx169 = getelementptr inbounds float, float* %d, i64 %add164
  store float %mul166, float* %arrayidx169, align 4, !tbaa !7
  %add170 = fadd float %add162, %mul166
  %add172 = add i64 %call, 168
  %arrayidx173 = getelementptr inbounds float, float* %c, i64 %add172
  %23 = load float, float* %arrayidx173, align 4, !tbaa !7
  %mul174 = fmul float %23, 0x3FA246E760000000
  %arrayidx177 = getelementptr inbounds float, float* %d, i64 %add172
  store float %mul174, float* %arrayidx177, align 4, !tbaa !7
  %add178 = fadd float %add170, %mul174
  %mul179 = fmul float %mul, %add178
  %mul180 = fmul float %mul179, 0x4193D2C640000000
  %div = fdiv float 1.000000e+00, %mul180, !fpmath !11
  %mul181 = fmul float %mul3, %div
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  ret void

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 1, %entry ], [ %indvars.iv.next, %for.body ]
  %24 = shl nuw nsw i64 %indvars.iv, 3
  %25 = add nsw i64 %24, -8
  %add184 = add i64 %call, %25
  %arrayidx185 = getelementptr inbounds float, float* %d, i64 %add184
  %26 = load float, float* %arrayidx185, align 4, !tbaa !7
  %call186 = tail call float @_Z4fmaxff(float %26, float 0x3810000000000000) #2
  %mul187 = fmul float %mul181, %call186
  store float %mul187, float* %arrayidx185, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 23
  br i1 %exitcond, label %for.cond.cleanup, label %for.body
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local float @_Z4fmaxff(float, float) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"float*", !"float", !"float"}
!6 = !{!"const", !"const", !"const", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{float 2.500000e+00}
