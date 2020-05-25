; ModuleID = 'src/586.src'
source_filename = "src/586.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture %a, float* nocapture readonly %b, float %c, i32 %d, i32 %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %cmp = icmp sgt i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %add2 = add nsw i32 %d, 1
  %cmp3 = icmp sgt i32 %conv, %d
  br i1 %cmp3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %idxprom29 = zext i32 %conv to i64
  %arrayidx = getelementptr inbounds float, float* %a, i64 %idxprom29
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !7
  %cmp630 = icmp slt i32 %e, 1
  br i1 %cmp630, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  %1 = sext i32 %add2 to i64
  %2 = zext i32 %conv to i64
  %3 = zext i32 %e to i64
  %xtraiter = and i64 %3, 1
  %4 = icmp eq i32 %e, 1
  br i1 %4, label %for.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = sub nsw i64 %3, %xtraiter
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %5 = phi float [ 0.000000e+00, %for.body.preheader.new ], [ %add14.1, %for.body ]
  %indvars.iv = phi i64 [ 1, %for.body.preheader.new ], [ %indvars.iv.next.1, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.1, %for.body ]
  %6 = mul nsw i64 %indvars.iv, %1
  %7 = add nsw i64 %6, %2
  %arrayidx11 = getelementptr inbounds float, float* %b, i64 %7
  %8 = load float, float* %arrayidx11, align 4, !tbaa !7
  %add14 = fadd float %8, %5
  store float %add14, float* %arrayidx, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %9 = mul nsw i64 %indvars.iv.next, %1
  %10 = add nsw i64 %9, %2
  %arrayidx11.1 = getelementptr inbounds float, float* %b, i64 %10
  %11 = load float, float* %arrayidx11.1, align 4, !tbaa !7
  %add14.1 = fadd float %11, %add14
  store float %add14.1, float* %arrayidx, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.end.loopexit.unr-lcssa, label %for.body

for.end.loopexit.unr-lcssa:                       ; preds = %for.body, %for.body.preheader
  %add14.lcssa.ph = phi float [ undef, %for.body.preheader ], [ %add14.1, %for.body ]
  %.unr = phi float [ 0.000000e+00, %for.body.preheader ], [ %add14.1, %for.body ]
  %indvars.iv.unr = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next.1, %for.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.end, label %for.body.epil

for.body.epil:                                    ; preds = %for.end.loopexit.unr-lcssa
  %12 = mul nsw i64 %indvars.iv.unr, %1
  %13 = add nsw i64 %12, %2
  %arrayidx11.epil = getelementptr inbounds float, float* %b, i64 %13
  %14 = load float, float* %arrayidx11.epil, align 4, !tbaa !7
  %add14.epil = fadd float %14, %.unr
  store float %add14.epil, float* %arrayidx, align 4, !tbaa !7
  br label %for.end

for.end:                                          ; preds = %for.body.epil, %for.end.loopexit.unr-lcssa, %if.then
  %15 = phi float [ 0.000000e+00, %if.then ], [ %add14.lcssa.ph, %for.end.loopexit.unr-lcssa ], [ %add14.epil, %for.body.epil ]
  %div = fdiv float %15, %c, !fpmath !11
  store float %div, float* %arrayidx, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.end, %entry
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
!3 = !{i32 1, i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{float 2.500000e+00}
