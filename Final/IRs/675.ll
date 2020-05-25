; ModuleID = 'src/675.src'
source_filename = "src/675.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A.l = internal global [128 x float] undef, align 16

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* noalias nocapture readonly %a, float* noalias nocapture readonly %b, i32* noalias nocapture readonly %c, i32* noalias nocapture readonly %d, i32 %e, i32 %f, float* noalias nocapture %g) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z12get_local_idj(i32 0) #4
  %conv = trunc i64 %call to i32
  %sub = add nsw i32 %f, -1
  %and = and i32 %sub, %conv
  %call1 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  %conv2 = sext i32 %f to i64
  %div = udiv i64 %call1, %conv2
  %call4 = tail call i64 @_Z12get_group_idj(i32 0) #4
  %sext = shl i64 %div, 32
  %conv5 = ashr exact i64 %sext, 32
  %mul = mul i64 %conv5, %call4
  %div6 = sdiv i32 %conv, %f
  %0 = trunc i64 %mul to i32
  %conv8 = add i32 %div6, %0
  %sext83 = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext83, 32
  %arrayidx = getelementptr inbounds [128 x float], [128 x float]* @A.l, i64 0, i64 %idxprom
  store volatile float 0.000000e+00, float* %arrayidx, align 4, !tbaa !7
  %cmp = icmp slt i32 %conv8, %e
  br i1 %cmp, label %if.then, label %if.end49

if.then:                                          ; preds = %entry
  %idxprom10 = sext i32 %conv8 to i64
  %arrayidx11 = getelementptr inbounds i32, i32* %d, i64 %idxprom10
  %1 = load i32, i32* %arrayidx11, align 4, !tbaa !11
  %add12 = add nsw i32 %conv8, 1
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds i32, i32* %d, i64 %idxprom13
  %2 = load i32, i32* %arrayidx14, align 4, !tbaa !11
  %add15 = add i32 %1, %and
  %cmp1687 = icmp slt i32 %add15, %2
  br i1 %cmp1687, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %if.then
  %3 = sext i32 %add15 to i64
  %4 = sext i32 %2 to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %if.then
  %o.0.lcssa = phi float [ 0.000000e+00, %if.then ], [ %8, %for.body ]
  store volatile float %o.0.lcssa, float* %arrayidx, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #5
  %cmp2985 = icmp sgt i32 %f, 1
  br i1 %cmp2985, label %while.body, label %while.end

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %3, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %o.089 = phi float [ 0.000000e+00, %for.body.preheader ], [ %8, %for.body ]
  %arrayidx19 = getelementptr inbounds i32, i32* %c, i64 %indvars.iv
  %5 = load i32, i32* %arrayidx19, align 4, !tbaa !11
  %arrayidx21 = getelementptr inbounds float, float* %a, i64 %indvars.iv
  %6 = load float, float* %arrayidx21, align 4, !tbaa !7
  %idxprom22 = sext i32 %5 to i64
  %arrayidx23 = getelementptr inbounds float, float* %b, i64 %idxprom22
  %7 = load float, float* %arrayidx23, align 4, !tbaa !7
  %8 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %o.089)
  %indvars.iv.next = add i64 %indvars.iv, %conv2
  %cmp16 = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp16, label %for.body, label %for.cond.cleanup

while.body:                                       ; preds = %for.cond.cleanup, %if.end
  %r.086.in = phi i32 [ %r.086, %if.end ], [ %f, %for.cond.cleanup ]
  %r.086 = sdiv i32 %r.086.in, 2
  %cmp31 = icmp slt i32 %and, %r.086
  br i1 %cmp31, label %if.then33, label %if.end

if.then33:                                        ; preds = %while.body
  %add34 = add nsw i32 %r.086, %conv
  %idxprom35 = sext i32 %add34 to i64
  %arrayidx36 = getelementptr inbounds [128 x float], [128 x float]* @A.l, i64 0, i64 %idxprom35
  %9 = load volatile float, float* %arrayidx36, align 4, !tbaa !7
  %10 = load volatile float, float* %arrayidx, align 4, !tbaa !7
  %add39 = fadd float %9, %10
  store volatile float %add39, float* %arrayidx, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then33, %while.body
  tail call void @_Z7barrierj(i32 1) #5
  %cmp29 = icmp sgt i32 %r.086.in, 3
  br i1 %cmp29, label %while.body, label %while.end

while.end:                                        ; preds = %if.end, %for.cond.cleanup
  %cmp41 = icmp eq i32 %and, 0
  br i1 %cmp41, label %if.then43, label %if.end49

if.then43:                                        ; preds = %while.end
  %11 = load volatile float, float* %arrayidx, align 4, !tbaa !7
  %arrayidx47 = getelementptr inbounds float, float* %g, i64 %idxprom10
  store float %11, float* %arrayidx47, align 4, !tbaa !7
  br label %if.end49

if.end49:                                         ; preds = %while.end, %if.then43, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #3

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { convergent nounwind readnone }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 1}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"int*", !"int*", !"int", !"int", !"float*"}
!6 = !{!"restrict const", !"restrict const", !"restrict const", !"restrict const", !"", !"", !"restrict"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
