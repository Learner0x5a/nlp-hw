; ModuleID = 'src/68.src'
source_filename = "src/68.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable writeonly
define dso_local spir_kernel void @A(double* nocapture %a, i32 %b, i32 %c, i32 %d) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 1) #2
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %cmp = icmp slt i32 %conv, %d
  %conv2 = trunc i64 %call1 to i32
  %cmp4 = icmp slt i32 %conv2, %c
  %or.cond = and i1 %cmp, %cmp4
  br i1 %or.cond, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %0 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %cmp637 = icmp sgt i32 %b, 0
  br i1 %cmp637, label %for.cond8.preheader.lr.ph, label %cleanup

for.cond8.preheader.lr.ph:                        ; preds = %if.end
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %sext35 = shl i64 %call1, 32
  %idxprom12 = ashr exact i64 %sext35, 32
  %wide.trip.count = zext i32 %b to i64
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond8.preheader, %for.cond8.preheader.lr.ph
  %indvars.iv = phi i64 [ 0, %for.cond8.preheader.lr.ph ], [ %indvars.iv.next, %for.cond8.preheader ]
  %arrayidx17 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom12, i64 %indvars.iv, i64 0
  store double 1.000000e+00, double* %arrayidx17, align 8, !tbaa !7
  %arrayidx17.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom12, i64 %indvars.iv, i64 1
  store double 1.000000e+00, double* %arrayidx17.1, align 8, !tbaa !7
  %arrayidx17.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom12, i64 %indvars.iv, i64 2
  store double 1.000000e+00, double* %arrayidx17.2, align 8, !tbaa !7
  %arrayidx17.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom12, i64 %indvars.iv, i64 3
  store double 1.000000e+00, double* %arrayidx17.3, align 8, !tbaa !7
  %arrayidx17.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %0, i64 %idxprom, i64 %idxprom12, i64 %indvars.iv, i64 4
  store double 1.000000e+00, double* %arrayidx17.4, align 8, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %cleanup, label %for.cond8.preheader

cleanup:                                          ; preds = %for.cond8.preheader, %if.end, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable writeonly "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
