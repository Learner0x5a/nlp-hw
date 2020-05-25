; ModuleID = 'src/592.src'
source_filename = "src/592.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture readonly %b, float* nocapture %c, float %d, float %e, i32 %f, i32 %g, i32 %h) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #3
  %conv2 = trunc i64 %call1 to i32
  %cmp = icmp slt i32 %conv2, %f
  %cmp4 = icmp slt i32 %conv, %g
  %or.cond = and i1 %cmp4, %cmp
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %mul = mul nsw i32 %conv2, %g
  %add = add nsw i32 %mul, %conv
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds float, float* %c, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %mul6 = fmul float %0, %e
  store float %mul6, float* %arrayidx, align 4, !tbaa !7
  %cmp740 = icmp sgt i32 %h, 0
  br i1 %cmp740, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %mul9 = mul nsw i32 %conv2, %h
  %1 = sext i32 %g to i64
  %sext = shl i64 %call, 32
  %2 = ashr exact i64 %sext, 32
  %3 = sext i32 %mul9 to i64
  %wide.trip.count = zext i32 %h to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %4 = icmp eq i32 %h, 1
  br i1 %4, label %if.end.loopexit.unr-lcssa, label %for.body.lr.ph.new

for.body.lr.ph.new:                               ; preds = %for.body.lr.ph
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph.new
  %5 = phi float [ %mul6, %for.body.lr.ph.new ], [ %17, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph.new ], [ %indvars.iv.next.1, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.lr.ph.new ], [ %niter.nsub.1, %for.body ]
  %6 = add nsw i64 %indvars.iv, %3
  %arrayidx12 = getelementptr inbounds float, float* %a, i64 %6
  %7 = load float, float* %arrayidx12, align 4, !tbaa !7
  %mul13 = fmul float %7, %d
  %8 = mul nsw i64 %indvars.iv, %1
  %9 = add nsw i64 %8, %2
  %arrayidx17 = getelementptr inbounds float, float* %b, i64 %9
  %10 = load float, float* %arrayidx17, align 4, !tbaa !7
  %11 = tail call float @llvm.fmuladd.f32(float %mul13, float %10, float %5)
  store float %11, float* %arrayidx, align 4, !tbaa !7
  %indvars.iv.next = or i64 %indvars.iv, 1
  %12 = add nsw i64 %indvars.iv.next, %3
  %arrayidx12.1 = getelementptr inbounds float, float* %a, i64 %12
  %13 = load float, float* %arrayidx12.1, align 4, !tbaa !7
  %mul13.1 = fmul float %13, %d
  %14 = mul nsw i64 %indvars.iv.next, %1
  %15 = add nsw i64 %14, %2
  %arrayidx17.1 = getelementptr inbounds float, float* %b, i64 %15
  %16 = load float, float* %arrayidx17.1, align 4, !tbaa !7
  %17 = tail call float @llvm.fmuladd.f32(float %mul13.1, float %16, float %11)
  store float %17, float* %arrayidx, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %if.end.loopexit.unr-lcssa, label %for.body

if.end.loopexit.unr-lcssa:                        ; preds = %for.body, %for.body.lr.ph
  %.unr = phi float [ %mul6, %for.body.lr.ph ], [ %17, %for.body ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next.1, %for.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %if.end, label %for.body.epil

for.body.epil:                                    ; preds = %if.end.loopexit.unr-lcssa
  %18 = add nsw i64 %indvars.iv.unr, %3
  %arrayidx12.epil = getelementptr inbounds float, float* %a, i64 %18
  %19 = load float, float* %arrayidx12.epil, align 4, !tbaa !7
  %mul13.epil = fmul float %19, %d
  %20 = mul nsw i64 %indvars.iv.unr, %1
  %21 = add nsw i64 %20, %2
  %arrayidx17.epil = getelementptr inbounds float, float* %b, i64 %21
  %22 = load float, float* %arrayidx17.epil, align 4, !tbaa !7
  %23 = tail call float @llvm.fmuladd.f32(float %mul13.epil, float %22, float %.unr)
  store float %23, float* %arrayidx, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %for.body.epil, %if.end.loopexit.unr-lcssa, %if.then, %entry
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
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"float", !"float", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
