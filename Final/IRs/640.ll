; ModuleID = 'src/640.src'
source_filename = "src/640.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture readonly %a, float* nocapture %b, float* nocapture %c, i32 %d) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z12get_local_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %call2 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %mul = shl i64 %call2, 1
  %mul3 = mul i64 %mul, %call1
  %conv4 = and i64 %call, 4294967295
  %add = add i64 %mul3, %call
  %conv5 = trunc i64 %add to i32
  %call8 = tail call i64 @_Z14get_num_groupsj(i32 0) #3
  %mul9 = mul i64 %mul, %call8
  %conv10 = trunc i64 %mul9 to i32
  %conv12 = trunc i64 %call2 to i32
  %arrayidx = getelementptr inbounds float, float* %c, i64 %conv4
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !7
  %cmp67 = icmp ult i32 %conv5, %d
  br i1 %cmp67, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %0 = phi float [ %add22, %while.body ], [ 0.000000e+00, %entry ]
  %f.068 = phi i32 [ %add23, %while.body ], [ %conv5, %entry ]
  %idxprom14 = zext i32 %f.068 to i64
  %arrayidx15 = getelementptr inbounds float, float* %a, i64 %idxprom14
  %1 = load float, float* %arrayidx15, align 4, !tbaa !7
  %add16 = add i32 %f.068, %conv12
  %idxprom17 = zext i32 %add16 to i64
  %arrayidx18 = getelementptr inbounds float, float* %a, i64 %idxprom17
  %2 = load float, float* %arrayidx18, align 4, !tbaa !7
  %add19 = fadd float %1, %2
  %add22 = fadd float %0, %add19
  store float %add22, float* %arrayidx, align 4, !tbaa !7
  %add23 = add i32 %f.068, %conv10
  %cmp = icmp ult i32 %add23, %d
  br i1 %cmp, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %entry
  tail call void @_Z7barrierj(i32 1) #4
  %i.064 = lshr i32 %conv12, 1
  %cmp2465 = icmp eq i32 %i.064, 0
  br i1 %cmp2465, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %while.end
  %cmp34 = icmp eq i32 %conv, 0
  br i1 %cmp34, label %if.then36, label %if.end40

for.body:                                         ; preds = %while.end, %if.end
  %i.066 = phi i32 [ %i.0, %if.end ], [ %i.064, %while.end ]
  %cmp26 = icmp ugt i32 %i.066, %conv
  br i1 %cmp26, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %add28 = add i32 %i.066, %conv
  %idxprom29 = zext i32 %add28 to i64
  %arrayidx30 = getelementptr inbounds float, float* %c, i64 %idxprom29
  %3 = load float, float* %arrayidx30, align 4, !tbaa !7
  %4 = load float, float* %arrayidx, align 4, !tbaa !7
  %add33 = fadd float %3, %4
  store float %add33, float* %arrayidx, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  tail call void @_Z7barrierj(i32 1) #4
  %i.0 = lshr i32 %i.066, 1
  %cmp24 = icmp eq i32 %i.0, 0
  br i1 %cmp24, label %for.cond.cleanup, label %for.body

if.then36:                                        ; preds = %for.cond.cleanup
  %5 = bitcast float* %c to i32*
  %6 = load i32, i32* %5, align 4, !tbaa !7
  %arrayidx39 = getelementptr inbounds float, float* %b, i64 %call1
  %7 = bitcast float* %arrayidx39 to i32*
  store i32 %6, i32* %7, align 4, !tbaa !7
  br label %if.end40

if.end40:                                         ; preds = %if.then36, %for.cond.cleanup
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_num_groupsj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #2

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent nounwind readnone }
attributes #4 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 3, i32 0}
!4 = !{!"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"float*", !"uint"}
!6 = !{!"const", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
