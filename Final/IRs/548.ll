; ModuleID = 'src/548.src'
source_filename = "src/548.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture readonly %b, i32 %c, i32 %d, float* nocapture %e, float* %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z12get_group_idj(i32 0) #4
  %g.0152 = trunc i64 %call to i32
  %cmp153 = icmp ult i32 %g.0152, %d
  br i1 %cmp153, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %call2 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %j.0148 = trunc i64 %call2 to i32
  %cmp5149 = icmp ult i32 %j.0148, %c
  %arrayidx16 = getelementptr inbounds float, float* %f, i64 %call2
  %conv18 = and i32 %j.0148, 31
  %mul24 = shl i64 %call2, 1
  %add.ptr25 = getelementptr inbounds float, float* %f, i64 %mul24
  %idx.ext26 = zext i32 %conv18 to i64
  %idx.neg = sub nsw i64 0, %idx.ext26
  %add.ptr27 = getelementptr inbounds float, float* %add.ptr25, i64 %idx.neg
  %arrayidx28 = getelementptr inbounds float, float* %add.ptr27, i64 32
  %arrayidx31 = getelementptr inbounds float, float* %add.ptr27, i64 16
  %arrayidx34 = getelementptr inbounds float, float* %add.ptr27, i64 8
  %arrayidx37 = getelementptr inbounds float, float* %add.ptr27, i64 4
  %arrayidx40 = getelementptr inbounds float, float* %add.ptr27, i64 2
  %arrayidx43 = getelementptr inbounds float, float* %add.ptr27, i64 1
  %cmp47 = icmp eq i32 %conv18, 0
  %div51 = lshr i64 %call2, 5
  %arrayidx52 = getelementptr inbounds float, float* %f, i64 %div51
  %arrayidx69 = getelementptr inbounds float, float* %arrayidx16, i64 4
  %arrayidx76 = getelementptr inbounds float, float* %arrayidx16, i64 2
  %arrayidx83 = getelementptr inbounds float, float* %arrayidx16, i64 1
  %cmp89 = icmp eq i64 %call2, 0
  %0 = bitcast float* %f to i32*
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end95, %entry
  ret void

for.body:                                         ; preds = %for.body.lr.ph, %if.end95
  %g.0156 = phi i32 [ %g.0152, %for.body.lr.ph ], [ %g.0, %if.end95 ]
  %g.0.in154 = phi i64 [ %call, %for.body.lr.ph ], [ %add99, %if.end95 ]
  %mul = mul i32 %g.0156, %c
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds float, float* %a, i64 %idx.ext
  br i1 %cmp5149, label %for.body8.lr.ph, label %for.cond.cleanup7

for.body8.lr.ph:                                  ; preds = %for.body
  %call12 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  br label %for.body8

for.cond.cleanup7:                                ; preds = %for.body8, %for.body
  %i.0.lcssa = phi float [ 0.000000e+00, %for.body ], [ %3, %for.body8 ]
  store float %i.0.lcssa, float* %arrayidx16, align 4, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #5
  %call20 = tail call i64 @_Z14get_local_sizej(i32 0) #4
  %div = lshr i64 %call20, 1
  %cmp21 = icmp ult i64 %call2, %div
  br i1 %cmp21, label %if.then, label %if.end

for.body8:                                        ; preds = %for.body8.lr.ph, %for.body8
  %i.0151 = phi float [ 0.000000e+00, %for.body8.lr.ph ], [ %3, %for.body8 ]
  %j.0.in150 = phi i64 [ %call2, %for.body8.lr.ph ], [ %add, %for.body8 ]
  %idxprom = and i64 %j.0.in150, 4294967295
  %arrayidx = getelementptr inbounds float, float* %add.ptr, i64 %idxprom
  %1 = load float, float* %arrayidx, align 4, !tbaa !7
  %arrayidx10 = getelementptr inbounds float, float* %b, i64 %idxprom
  %2 = load float, float* %arrayidx10, align 4, !tbaa !7
  %3 = tail call float @llvm.fmuladd.f32(float %1, float %2, float %i.0151)
  %add = add i64 %call12, %idxprom
  %j.0 = trunc i64 %add to i32
  %cmp5 = icmp ult i32 %j.0, %c
  br i1 %cmp5, label %for.body8, label %for.cond.cleanup7

if.then:                                          ; preds = %for.cond.cleanup7
  %4 = load volatile float, float* %arrayidx28, align 4, !tbaa !7
  %5 = load volatile float, float* %add.ptr27, align 4, !tbaa !7
  %add30 = fadd float %4, %5
  store volatile float %add30, float* %add.ptr27, align 4, !tbaa !7
  %6 = load volatile float, float* %arrayidx31, align 4, !tbaa !7
  %7 = load volatile float, float* %add.ptr27, align 4, !tbaa !7
  %add33 = fadd float %6, %7
  store volatile float %add33, float* %add.ptr27, align 4, !tbaa !7
  %8 = load volatile float, float* %arrayidx34, align 4, !tbaa !7
  %9 = load volatile float, float* %add.ptr27, align 4, !tbaa !7
  %add36 = fadd float %8, %9
  store volatile float %add36, float* %add.ptr27, align 4, !tbaa !7
  %10 = load volatile float, float* %arrayidx37, align 4, !tbaa !7
  %11 = load volatile float, float* %add.ptr27, align 4, !tbaa !7
  %add39 = fadd float %10, %11
  store volatile float %add39, float* %add.ptr27, align 4, !tbaa !7
  %12 = load volatile float, float* %arrayidx40, align 4, !tbaa !7
  %13 = load volatile float, float* %add.ptr27, align 4, !tbaa !7
  %add42 = fadd float %12, %13
  store volatile float %add42, float* %add.ptr27, align 4, !tbaa !7
  %14 = load volatile float, float* %arrayidx43, align 4, !tbaa !7
  %15 = load volatile float, float* %add.ptr27, align 4, !tbaa !7
  %add45 = fadd float %14, %15
  store volatile float %add45, float* %add.ptr27, align 4, !tbaa !7
  %16 = load volatile float, float* %add.ptr27, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.cond.cleanup7
  %l.0 = phi float [ %16, %if.then ], [ 0.000000e+00, %for.cond.cleanup7 ]
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %cmp47, label %if.then49, label %if.end53

if.then49:                                        ; preds = %if.end
  store float %l.0, float* %arrayidx52, align 4, !tbaa !7
  br label %if.end53

if.end53:                                         ; preds = %if.then49, %if.end
  tail call void @_Z7barrierj(i32 1) #5
  %div55 = lshr i64 %call20, 6
  %conv56 = trunc i64 %div55 to i32
  %div58144 = lshr i64 %call20, 7
  %div58 = and i64 %div58144, 2147483647
  %cmp60 = icmp ult i64 %call2, %div58
  br i1 %cmp60, label %if.then62, label %if.end87

if.then62:                                        ; preds = %if.end53
  %cmp66 = icmp ugt i32 %conv56, 7
  br i1 %cmp66, label %if.end72.thread, label %if.end72

if.end72.thread:                                  ; preds = %if.then62
  %17 = load volatile float, float* %arrayidx69, align 4, !tbaa !7
  %18 = load volatile float, float* %arrayidx16, align 4, !tbaa !7
  %add71 = fadd float %17, %18
  store volatile float %add71, float* %arrayidx16, align 4, !tbaa !7
  br label %if.end79.thread

if.end72:                                         ; preds = %if.then62
  %cmp73 = icmp ugt i32 %conv56, 3
  br i1 %cmp73, label %if.end79.thread, label %if.end79

if.end79.thread:                                  ; preds = %if.end72, %if.end72.thread
  %19 = load volatile float, float* %arrayidx76, align 4, !tbaa !7
  %20 = load volatile float, float* %arrayidx16, align 4, !tbaa !7
  %add78 = fadd float %19, %20
  store volatile float %add78, float* %arrayidx16, align 4, !tbaa !7
  br label %if.then82

if.end79:                                         ; preds = %if.end72
  %cmp80 = icmp ugt i32 %conv56, 1
  br i1 %cmp80, label %if.then82, label %if.end87

if.then82:                                        ; preds = %if.end79.thread, %if.end79
  %21 = load volatile float, float* %arrayidx83, align 4, !tbaa !7
  %22 = load volatile float, float* %arrayidx16, align 4, !tbaa !7
  %add85 = fadd float %21, %22
  store volatile float %add85, float* %arrayidx16, align 4, !tbaa !7
  br label %if.end87

if.end87:                                         ; preds = %if.end79, %if.then82, %if.end53
  br i1 %cmp89, label %if.then91, label %if.end87.if.end95_crit_edge

if.end87.if.end95_crit_edge:                      ; preds = %if.end87
  %.pre = and i64 %g.0.in154, 4294967295
  br label %if.end95

if.then91:                                        ; preds = %if.end87
  %23 = load i32, i32* %0, align 4, !tbaa !7
  %idxprom93 = and i64 %g.0.in154, 4294967295
  %arrayidx94 = getelementptr inbounds float, float* %e, i64 %idxprom93
  %24 = bitcast float* %arrayidx94 to i32*
  store i32 %23, i32* %24, align 4, !tbaa !7
  br label %if.end95

if.end95:                                         ; preds = %if.end87.if.end95_crit_edge, %if.then91
  %conv98.pre-phi = phi i64 [ %.pre, %if.end87.if.end95_crit_edge ], [ %idxprom93, %if.then91 ]
  tail call void @_Z7barrierj(i32 1) #5
  %call97 = tail call i64 @_Z14get_num_groupsj(i32 0) #4
  %add99 = add i64 %call97, %conv98.pre-phi
  %g.0 = trunc i64 %add99 to i32
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
