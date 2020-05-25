; ModuleID = 'src/545.src'
source_filename = "src/545.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture readonly %b, i32 %c, i32 %d, float* nocapture %e, float* nocapture %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z12get_group_idj(i32 0) #4
  %g.062 = trunc i64 %call to i32
  %cmp63 = icmp ult i32 %g.062, %d
  br i1 %cmp63, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %call2 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %j.058 = trunc i64 %call2 to i32
  %cmp559 = icmp ult i32 %j.058, %c
  %arrayidx16 = getelementptr inbounds float, float* %f, i64 %call2
  %cmp18 = icmp eq i64 %call2, 0
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %entry
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %g.066 = phi i32 [ %g.062, %for.body.lr.ph ], [ %g.0, %if.end ]
  %g.0.in64 = phi i64 [ %call, %for.body.lr.ph ], [ %add37, %if.end ]
  %mul = mul i32 %g.066, %c
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds float, float* %a, i64 %idx.ext
  br i1 %cmp559, label %for.body8.lr.ph, label %for.cond.cleanup7

for.body8.lr.ph:                                  ; preds = %for.body
  %call12 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  br label %for.body8

for.cond.cleanup7:                                ; preds = %for.body8, %for.body
  %i.0.lcssa = phi float [ 0.000000e+00, %for.body ], [ %2, %for.body8 ]
  store float %i.0.lcssa, float* %arrayidx16, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %cmp18, label %for.cond20.preheader, label %for.cond.cleanup7.if.end_crit_edge

for.cond.cleanup7.if.end_crit_edge:               ; preds = %for.cond.cleanup7
  %.pre = and i64 %g.0.in64, 4294967295
  br label %if.end

for.cond20.preheader:                             ; preds = %for.cond.cleanup7
  %call22 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  %cmp2367 = icmp eq i64 %call22, 0
  br i1 %cmp2367, label %for.cond.cleanup25, label %for.body26

for.body8:                                        ; preds = %for.body8.lr.ph, %for.body8
  %j.0.in61 = phi i64 [ %call2, %for.body8.lr.ph ], [ %add, %for.body8 ]
  %i.060 = phi float [ 0.000000e+00, %for.body8.lr.ph ], [ %2, %for.body8 ]
  %idxprom = and i64 %j.0.in61, 4294967295
  %arrayidx = getelementptr inbounds float, float* %add.ptr, i64 %idxprom
  %0 = load float, float* %arrayidx, align 4, !tbaa !7
  %arrayidx10 = getelementptr inbounds float, float* %b, i64 %idxprom
  %1 = load float, float* %arrayidx10, align 4, !tbaa !7
  %2 = tail call float @llvm.fmuladd.f32(float %0, float %1, float %i.060)
  %add = add i64 %call12, %idxprom
  %j.0 = trunc i64 %add to i32
  %cmp5 = icmp ult i32 %j.0, %c
  br i1 %cmp5, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup25:                               ; preds = %for.body26, %for.cond20.preheader
  %k.0.lcssa = phi float [ 0.000000e+00, %for.cond20.preheader ], [ %add29, %for.body26 ]
  %idxprom32 = and i64 %g.0.in64, 4294967295
  %arrayidx33 = getelementptr inbounds float, float* %e, i64 %idxprom32
  store float %k.0.lcssa, float* %arrayidx33, align 4, !tbaa !7
  br label %if.end

for.body26:                                       ; preds = %for.cond20.preheader, %for.body26
  %conv2170 = phi i64 [ %conv21, %for.body26 ], [ 0, %for.cond20.preheader ]
  %l.069 = phi i32 [ %inc, %for.body26 ], [ 0, %for.cond20.preheader ]
  %k.068 = phi float [ %add29, %for.body26 ], [ 0.000000e+00, %for.cond20.preheader ]
  %arrayidx28 = getelementptr inbounds float, float* %f, i64 %conv2170
  %3 = load float, float* %arrayidx28, align 4, !tbaa !7
  %add29 = fadd float %k.068, %3
  %inc = add i32 %l.069, 1
  %conv21 = zext i32 %inc to i64
  %cmp23 = icmp ugt i64 %call22, %conv21
  br i1 %cmp23, label %for.body26, label %for.cond.cleanup25

if.end:                                           ; preds = %for.cond.cleanup7.if.end_crit_edge, %for.cond.cleanup25
  %conv36.pre-phi = phi i64 [ %.pre, %for.cond.cleanup7.if.end_crit_edge ], [ %idxprom32, %for.cond.cleanup25 ]
  tail call void @_Z7barrierj(i32 1) #5
  %call35 = tail call i64 @_Z14get_num_groupsj(i32 0) #4
  %add37 = add i64 %call35, %conv36.pre-phi
  %g.0 = trunc i64 %add37 to i32
  %cmp = icmp ult i32 %g.0, %d
  br i1 %cmp, label %for.body, label %for.cond.cleanup
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #3

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_num_groupsj(i32) local_unnamed_addr #1

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
!3 = !{i32 1, i32 1, i32 0, i32 0, i32 1, i32 3}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"uint", !"uint", !"float*", !"float*"}
!6 = !{!"const", !"const", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
