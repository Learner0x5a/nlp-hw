; ModuleID = 'src/584.src'
source_filename = "src/584.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture readonly %b, float* nocapture %c, i32 %d, i32 %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %cmp = icmp slt i32 %conv, %e
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds float, float* %c, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !7
  %cmp221 = icmp sgt i32 %d, 0
  br i1 %cmp221, label %for.body.preheader, label %if.end

for.body.preheader:                               ; preds = %if.then
  %0 = sext i32 %e to i64
  %sext25 = shl i64 %call, 32
  %1 = ashr exact i64 %sext25, 32
  %wide.trip.count = zext i32 %d to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %2 = icmp eq i32 %d, 1
  br i1 %2, label %if.end.loopexit.unr-lcssa, label %for.body.preheader.new

for.body.preheader.new:                           ; preds = %for.body.preheader
  %unroll_iter = sub nsw i64 %wide.trip.count, %xtraiter
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader.new
  %3 = phi float [ 0.000000e+00, %for.body.preheader.new ], [ %13, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.preheader.new ], [ %indvars.iv.next.1, %for.body ]
  %niter = phi i64 [ %unroll_iter, %for.body.preheader.new ], [ %niter.nsub.1, %for.body ]
  %4 = mul nsw i64 %indvars.iv, %0
  %5 = add nsw i64 %4, %1
  %arrayidx5 = getelementptr inbounds float, float* %a, i64 %5
  %6 = load float, float* %arrayidx5, align 4, !tbaa !7
  %arrayidx7 = getelementptr inbounds float, float* %b, i64 %indvars.iv
  %7 = load float, float* %arrayidx7, align 4, !tbaa !7
  %8 = tail call float @llvm.fmuladd.f32(float %6, float %7, float %3)
  store float %8, float* %arrayidx, align 4, !tbaa !7
  %indvars.iv.next = or i64 %indvars.iv, 1
  %9 = mul nsw i64 %indvars.iv.next, %0
  %10 = add nsw i64 %9, %1
  %arrayidx5.1 = getelementptr inbounds float, float* %a, i64 %10
  %11 = load float, float* %arrayidx5.1, align 4, !tbaa !7
  %arrayidx7.1 = getelementptr inbounds float, float* %b, i64 %indvars.iv.next
  %12 = load float, float* %arrayidx7.1, align 4, !tbaa !7
  %13 = tail call float @llvm.fmuladd.f32(float %11, float %12, float %8)
  store float %13, float* %arrayidx, align 4, !tbaa !7
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %if.end.loopexit.unr-lcssa, label %for.body

if.end.loopexit.unr-lcssa:                        ; preds = %for.body, %for.body.preheader
  %.unr = phi float [ 0.000000e+00, %for.body.preheader ], [ %13, %for.body ]
  %indvars.iv.unr = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next.1, %for.body ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %if.end, label %for.body.epil

for.body.epil:                                    ; preds = %if.end.loopexit.unr-lcssa
  %14 = mul nsw i64 %indvars.iv.unr, %0
  %15 = add nsw i64 %14, %1
  %arrayidx5.epil = getelementptr inbounds float, float* %a, i64 %15
  %16 = load float, float* %arrayidx5.epil, align 4, !tbaa !7
  %arrayidx7.epil = getelementptr inbounds float, float* %b, i64 %indvars.iv.unr
  %17 = load float, float* %arrayidx7.epil, align 4, !tbaa !7
  %18 = tail call float @llvm.fmuladd.f32(float %16, float %17, float %.unr)
  store float %18, float* %arrayidx, align 4, !tbaa !7
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
!3 = !{i32 1, i32 1, i32 1, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
