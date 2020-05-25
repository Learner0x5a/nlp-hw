; ModuleID = 'src/616.src'
source_filename = "src/616.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(i32 %a, float* nocapture readonly %b, float* nocapture readonly %c, float* nocapture readonly %d, float* nocapture readonly %e, i32* nocapture readonly %f, i32* nocapture readonly %g, float* nocapture %h, i32 %i, i32 %j) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %mul = mul nsw i32 %j, %i
  %cmp = icmp sgt i32 %mul, %conv
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %div = sdiv i32 %conv, %i
  %add2 = add nsw i32 %div, 22
  %rem = srem i32 %conv, %i
  %add4 = add nsw i32 %rem, 22
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.end, %if.end
  %indvars.iv113 = phi i64 [ 0, %if.end ], [ %indvars.iv.next114, %for.end ]
  %r.0110 = phi float [ 0.000000e+00, %if.end ], [ %r.1, %for.end ]
  %0 = mul nuw nsw i64 %indvars.iv113, 150
  br label %for.body10

for.body10:                                       ; preds = %for.body10, %for.cond7.preheader
  %indvars.iv = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next, %for.body10 ]
  %u.0108 = phi float [ 0.000000e+00, %for.cond7.preheader ], [ %add35, %for.body10 ]
  %t.0107 = phi float [ 0.000000e+00, %for.cond7.preheader ], [ %10, %for.body10 ]
  %s.0106 = phi float [ 0.000000e+00, %for.cond7.preheader ], [ %add31, %for.body10 ]
  %1 = add nuw nsw i64 %indvars.iv, %0
  %arrayidx = getelementptr inbounds i32, i32* %g, i64 %1
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %add13 = add nsw i32 %2, %add4
  %arrayidx17 = getelementptr inbounds i32, i32* %f, i64 %1
  %3 = load i32, i32* %arrayidx17, align 4, !tbaa !7
  %add18 = add nsw i32 %3, %add2
  %mul19 = mul nsw i32 %add18, %a
  %add20 = add nsw i32 %add13, %mul19
  %idxprom21 = sext i32 %add20 to i64
  %arrayidx22 = getelementptr inbounds float, float* %b, i64 %idxprom21
  %4 = load float, float* %arrayidx22, align 4, !tbaa !11
  %arrayidx24 = getelementptr inbounds float, float* %e, i64 %indvars.iv
  %5 = load float, float* %arrayidx24, align 4, !tbaa !11
  %arrayidx27 = getelementptr inbounds float, float* %c, i64 %idxprom21
  %6 = load float, float* %arrayidx27, align 4, !tbaa !11
  %arrayidx29 = getelementptr inbounds float, float* %d, i64 %indvars.iv
  %7 = load float, float* %arrayidx29, align 4, !tbaa !11
  %mul30 = fmul float %6, %7
  %8 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %mul30)
  %add31 = fadd float %s.0106, %8
  %sub = fsub float %8, %u.0108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = trunc i64 %indvars.iv.next to i32
  %conv33 = sitofp i32 %9 to float
  %div34 = fdiv float %sub, %conv33, !fpmath !13
  %add35 = fadd float %u.0108, %div34
  %sub36 = fsub float %8, %add35
  %10 = tail call float @llvm.fmuladd.f32(float %sub, float %sub36, float %t.0107)
  %exitcond = icmp eq i64 %indvars.iv.next, 150
  br i1 %exitcond, label %for.end, label %for.body10

for.end:                                          ; preds = %for.body10
  %div38 = fdiv float %add31, 1.500000e+02, !fpmath !13
  %div39 = fdiv float %10, 1.490000e+02, !fpmath !13
  %mul40 = fmul float %div38, %div38
  %div41 = fdiv float %mul40, %div39, !fpmath !13
  %cmp42 = fcmp ogt float %div41, %r.0110
  %r.1 = select i1 %cmp42, float %div41, float %r.0110
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1
  %exitcond116 = icmp eq i64 %indvars.iv.next114, 7
  br i1 %exitcond116, label %for.end50, label %for.cond7.preheader

for.end50:                                        ; preds = %for.end
  %mul51 = mul nsw i32 %add2, %a
  %add52 = add nsw i32 %mul51, %add4
  %idxprom53 = sext i32 %add52 to i64
  %arrayidx54 = getelementptr inbounds float, float* %h, i64 %idxprom53
  store float %r.1, float* %arrayidx54, align 4, !tbaa !11
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end50
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
!3 = !{i32 0, i32 1, i32 1, i32 2, i32 2, i32 2, i32 2, i32 1, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"int", !"float*", !"float*", !"float*", !"float*", !"int*", !"int*", !"float*", !"int", !"int"}
!6 = !{!"", !"", !"", !"const", !"const", !"const", !"const", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
!13 = !{float 2.500000e+00}
