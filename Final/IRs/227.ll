; ModuleID = 'src/227.src'
source_filename = "src/227.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture %b, double* nocapture %c, i32 %d, i32 %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %0 = trunc i64 %call to i32
  %conv = add i32 %0, 1
  %call1 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %conv2 = trunc i64 %call1 to i32
  %cmp = icmp slt i32 %conv, 1025
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %rem = srem i32 %conv, 64
  %mul = mul nsw i32 %conv, 3
  %rem4 = srem i32 %mul, 64
  %mul5 = mul nsw i32 %conv, 5
  %rem6 = srem i32 %mul5, 64
  %mul7 = mul nsw i32 %rem6, %e
  %add8 = add nsw i32 %d, 1
  %mul960 = add i32 %mul7, %rem4
  %add12 = mul i32 %mul960, %add8
  %add13 = add nsw i32 %add12, %rem
  %idxprom = sext i32 %add13 to i64
  %arrayidx = getelementptr inbounds double, double* %a, i64 %idxprom
  %1 = bitcast double* %arrayidx to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !7
  %sext61 = shl i64 %call1, 32
  %idxprom14 = ashr exact i64 %sext61, 32
  %arrayidx15 = getelementptr inbounds double, double* %c, i64 %idxprom14
  %3 = bitcast double* %arrayidx15 to i64*
  store i64 %2, i64* %3, align 8, !tbaa !7
  br label %if.end

if.else:                                          ; preds = %entry
  %sext = shl i64 %call1, 32
  %idxprom16 = ashr exact i64 %sext, 32
  %arrayidx17 = getelementptr inbounds double, double* %c, i64 %idxprom16
  store double 0.000000e+00, double* %arrayidx17, align 8, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_Z7barrierj(i32 1) #4
  %call18 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %div = lshr i64 %call18, 1
  %conv19 = trunc i64 %div to i32
  %cmp2063 = icmp sgt i32 %conv19, 0
  br i1 %cmp2063, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %conv25 = sitofp i32 %conv2 to double
  %add27 = fadd double %conv25, %conv25
  %sext59 = shl i64 %call1, 32
  %idxprom28 = ashr exact i64 %sext59, 32
  %arrayidx29 = getelementptr inbounds double, double* %c, i64 %idxprom28
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end30, %if.end
  %cmp31 = icmp eq i32 %conv2, 0
  br i1 %cmp31, label %if.then33, label %if.end37

for.body:                                         ; preds = %if.end30, %for.body.lr.ph
  %k.064 = phi i32 [ %conv19, %for.body.lr.ph ], [ %shr62, %if.end30 ]
  %cmp22 = icmp sgt i32 %k.064, %conv2
  br i1 %cmp22, label %if.then24, label %if.end30

if.then24:                                        ; preds = %for.body
  store double %add27, double* %arrayidx29, align 8, !tbaa !7
  br label %if.end30

if.end30:                                         ; preds = %if.then24, %for.body
  tail call void @_Z7barrierj(i32 1) #4
  %shr62 = lshr i32 %k.064, 1
  %cmp20 = icmp eq i32 %shr62, 0
  br i1 %cmp20, label %for.cond.cleanup, label %for.body

if.then33:                                        ; preds = %for.cond.cleanup
  %4 = bitcast double* %c to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !7
  %call35 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %arrayidx36 = getelementptr inbounds double, double* %b, i64 %call35
  %6 = bitcast double* %arrayidx36 to i64*
  store i64 %5, i64* %6, align 8, !tbaa !7
  br label %if.end37

if.end37:                                         ; preds = %if.then33, %for.cond.cleanup
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

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
!3 = !{i32 1, i32 1, i32 3, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
