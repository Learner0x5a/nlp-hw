; ModuleID = 'src/8.src'
source_filename = "src/8.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(<4 x i32>* nocapture readonly %a, <4 x i32>* nocapture %b, <4 x i32>* nocapture %c) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
entry:
  %call = tail call i64 @_Z12get_local_idj(i32 0) #3
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %call3 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv4 = trunc i64 %call3 to i32
  %call5 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %conv6 = trunc i64 %call5 to i32
  %mul = shl i32 %conv4, 1
  %idxprom = zext i32 %mul to i64
  %arrayidx = getelementptr inbounds <4 x i32>, <4 x i32>* %a, i64 %idxprom
  %0 = load <4 x i32>, <4 x i32>* %arrayidx, align 16, !tbaa !8
  %add = or i32 %mul, 1
  %idxprom7 = zext i32 %add to i64
  %arrayidx8 = getelementptr inbounds <4 x i32>, <4 x i32>* %a, i64 %idxprom7
  %1 = load <4 x i32>, <4 x i32>* %arrayidx8, align 16, !tbaa !8
  %add9 = add <4 x i32> %1, %0
  %idxprom10 = and i64 %call, 4294967295
  %arrayidx11 = getelementptr inbounds <4 x i32>, <4 x i32>* %c, i64 %idxprom10
  store <4 x i32> %add9, <4 x i32>* %arrayidx11, align 16, !tbaa !8
  tail call void @_Z7barrierj(i32 1) #4
  %i.047 = lshr i32 %conv6, 1
  %cmp48 = icmp eq i32 %i.047, 0
  br i1 %cmp48, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %entry
  %cmp22 = icmp eq i32 %conv, 0
  br i1 %cmp22, label %if.then24, label %if.end28

for.body:                                         ; preds = %entry, %if.end
  %i.049 = phi i32 [ %i.0, %if.end ], [ %i.047, %entry ]
  %cmp13 = icmp ugt i32 %i.049, %conv
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %add15 = add i32 %i.049, %conv
  %idxprom16 = zext i32 %add15 to i64
  %arrayidx17 = getelementptr inbounds <4 x i32>, <4 x i32>* %c, i64 %idxprom16
  %2 = load <4 x i32>, <4 x i32>* %arrayidx17, align 16, !tbaa !8
  %3 = load <4 x i32>, <4 x i32>* %arrayidx11, align 16, !tbaa !8
  %add20 = add <4 x i32> %3, %2
  store <4 x i32> %add20, <4 x i32>* %arrayidx11, align 16, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  tail call void @_Z7barrierj(i32 1) #4
  %i.0 = lshr i32 %i.049, 1
  %cmp = icmp eq i32 %i.0, 0
  br i1 %cmp, label %for.cond.cleanup, label %for.body

if.then24:                                        ; preds = %for.cond.cleanup
  %4 = load <4 x i32>, <4 x i32>* %c, align 16, !tbaa !8
  %idxprom26 = and i64 %call1, 4294967295
  %arrayidx27 = getelementptr inbounds <4 x i32>, <4 x i32>* %b, i64 %idxprom26
  store <4 x i32> %4, <4 x i32>* %arrayidx27, align 16, !tbaa !8
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %for.cond.cleanup
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

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
!3 = !{i32 1, i32 1, i32 3}
!4 = !{!"none", !"none", !"none"}
!5 = !{!"uint4*", !"uint4*", !"uint4*"}
!6 = !{!"uint __attribute__((ext_vector_type(4)))*", !"uint __attribute__((ext_vector_type(4)))*", !"uint __attribute__((ext_vector_type(4)))*"}
!7 = !{!"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
