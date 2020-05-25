; ModuleID = 'src/118.src'
source_filename = "src/118.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable writeonly
define dso_local spir_kernel void @A(double* nocapture %a, i32 %b, i32 %c, i32 %d) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 2) #2
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z13get_global_idj(i32 1) #2
  %1 = trunc i64 %call1 to i32
  %sub = add nsw i32 %d, -2
  %cmp = icmp sgt i32 %conv, %sub
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %conv3 = add i32 %1, 1
  %sub5 = add nsw i32 %b, -2
  %cmp6 = icmp sgt i32 %conv3, %sub5
  br i1 %cmp6, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %call8 = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv9 = trunc i64 %call8 to i32
  %cmp10 = icmp eq i32 %conv9, 1
  %sub13 = add nsw i32 %c, -1
  %spec.select = select i1 %cmp10, i32 %sub13, i32 %conv9
  %mul = mul nsw i32 %sub5, %0
  %add18 = add nsw i32 %mul, %1
  %mul22 = mul i32 %add18, 975
  %idxprom = sext i32 %mul22 to i64
  %arrayidx = getelementptr inbounds double, double* %a, i64 %idxprom
  %2 = bitcast double* %arrayidx to [3 x [5 x [5 x double]]]*
  %idxprom29 = sext i32 %spec.select to i64
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.cond25.preheader, %if.end
  %indvar = phi i64 [ 0, %if.end ], [ %indvar.next, %for.cond25.preheader ]
  %arrayidx35 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvar, i64 0
  store double 0.000000e+00, double* %arrayidx35, align 8, !tbaa !7
  %arrayidx42 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvar, i64 0
  store double 0.000000e+00, double* %arrayidx42, align 8, !tbaa !7
  %arrayidx49 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvar, i64 0
  store double 0.000000e+00, double* %arrayidx49, align 8, !tbaa !7
  %arrayidx35.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvar, i64 1
  store double 0.000000e+00, double* %arrayidx35.1, align 8, !tbaa !7
  %arrayidx42.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvar, i64 1
  store double 0.000000e+00, double* %arrayidx42.1, align 8, !tbaa !7
  %arrayidx49.1 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvar, i64 1
  store double 0.000000e+00, double* %arrayidx49.1, align 8, !tbaa !7
  %arrayidx35.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvar, i64 2
  store double 0.000000e+00, double* %arrayidx35.2, align 8, !tbaa !7
  %arrayidx42.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvar, i64 2
  store double 0.000000e+00, double* %arrayidx42.2, align 8, !tbaa !7
  %arrayidx49.2 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvar, i64 2
  store double 0.000000e+00, double* %arrayidx49.2, align 8, !tbaa !7
  %arrayidx35.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvar, i64 3
  store double 0.000000e+00, double* %arrayidx35.3, align 8, !tbaa !7
  %arrayidx42.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvar, i64 3
  store double 0.000000e+00, double* %arrayidx42.3, align 8, !tbaa !7
  %arrayidx49.3 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvar, i64 3
  store double 0.000000e+00, double* %arrayidx49.3, align 8, !tbaa !7
  %arrayidx35.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 0, i64 %indvar, i64 4
  store double 0.000000e+00, double* %arrayidx35.4, align 8, !tbaa !7
  %arrayidx42.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvar, i64 4
  store double 0.000000e+00, double* %arrayidx42.4, align 8, !tbaa !7
  %arrayidx49.4 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 2, i64 %indvar, i64 4
  store double 0.000000e+00, double* %arrayidx49.4, align 8, !tbaa !7
  %arrayidx56 = getelementptr inbounds [3 x [5 x [5 x double]]], [3 x [5 x [5 x double]]]* %2, i64 %idxprom29, i64 1, i64 %indvar, i64 %indvar
  store double 1.000000e+00, double* %arrayidx56, align 8, !tbaa !7
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond = icmp eq i64 %indvar.next, 5
  br i1 %exitcond, label %cleanup, label %for.cond25.preheader

cleanup:                                          ; preds = %for.cond25.preheader, %entry, %lor.lhs.false
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
