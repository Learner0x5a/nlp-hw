; ModuleID = 'src/633.src'
source_filename = "src/633.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(<2 x float>* nocapture readonly %a, i32 %b, i32* nocapture %c) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
entry:
  %call = tail call i64 @_Z12get_local_idj(i32 0) #2
  %call1 = tail call i64 @_Z12get_group_idj(i32 0) #2
  %mul = shl i64 %call1, 9
  %add = add i64 %mul, %call
  %sext58 = shl i64 %add, 32
  %idx.ext = ashr exact i64 %sext58, 32
  %add.ptr = getelementptr inbounds <2 x float>, <2 x float>* %a, i64 %idx.ext
  %0 = load <2 x float>, <2 x float>* %add.ptr, align 8, !tbaa !8
  %arrayidx.1 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 64
  %1 = load <2 x float>, <2 x float>* %arrayidx.1, align 8, !tbaa !8
  %arrayidx.2 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 128
  %2 = load <2 x float>, <2 x float>* %arrayidx.2, align 8, !tbaa !8
  %arrayidx.3 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 192
  %3 = load <2 x float>, <2 x float>* %arrayidx.3, align 8, !tbaa !8
  %arrayidx.4 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 256
  %4 = load <2 x float>, <2 x float>* %arrayidx.4, align 8, !tbaa !8
  %arrayidx.5 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 320
  %5 = load <2 x float>, <2 x float>* %arrayidx.5, align 8, !tbaa !8
  %arrayidx.6 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 384
  %6 = load <2 x float>, <2 x float>* %arrayidx.6, align 8, !tbaa !8
  %arrayidx.7 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 448
  %7 = load <2 x float>, <2 x float>* %arrayidx.7, align 8, !tbaa !8
  %8 = sext i32 %b to i64
  %arrayidx15 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 %8
  %9 = load <2 x float>, <2 x float>* %arrayidx15, align 8, !tbaa !8
  %10 = add nsw i64 %8, 64
  %arrayidx15.1 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 %10
  %11 = load <2 x float>, <2 x float>* %arrayidx15.1, align 8, !tbaa !8
  %12 = add nsw i64 %8, 128
  %arrayidx15.2 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 %12
  %13 = load <2 x float>, <2 x float>* %arrayidx15.2, align 8, !tbaa !8
  %14 = add nsw i64 %8, 192
  %arrayidx15.3 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 %14
  %15 = load <2 x float>, <2 x float>* %arrayidx15.3, align 8, !tbaa !8
  %16 = add nsw i64 %8, 256
  %arrayidx15.4 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 %16
  %17 = load <2 x float>, <2 x float>* %arrayidx15.4, align 8, !tbaa !8
  %18 = add nsw i64 %8, 320
  %arrayidx15.5 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 %18
  %19 = load <2 x float>, <2 x float>* %arrayidx15.5, align 8, !tbaa !8
  %20 = add nsw i64 %8, 384
  %arrayidx15.6 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 %20
  %21 = load <2 x float>, <2 x float>* %arrayidx15.6, align 8, !tbaa !8
  %22 = add nsw i64 %8, 448
  %arrayidx15.7 = getelementptr inbounds <2 x float>, <2 x float>* %add.ptr, i64 %22
  %23 = load <2 x float>, <2 x float>* %arrayidx15.7, align 8, !tbaa !8
  %24 = extractelement <2 x float> %0, i64 0
  %25 = extractelement <2 x float> %9, i64 0
  %cmp29 = fcmp une float %24, %25
  br i1 %cmp29, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %26 = extractelement <2 x float> %0, i64 1
  %27 = extractelement <2 x float> %9, i64 1
  %cmp35 = fcmp une float %26, %27
  br i1 %cmp35, label %if.then, label %for.inc37

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, i32* %c, align 4, !tbaa !11
  br label %for.inc37

for.inc37:                                        ; preds = %lor.lhs.false, %if.then
  %28 = extractelement <2 x float> %1, i64 0
  %29 = extractelement <2 x float> %11, i64 0
  %cmp29.1 = fcmp une float %28, %29
  br i1 %cmp29.1, label %if.then.1, label %lor.lhs.false.1

lor.lhs.false.1:                                  ; preds = %for.inc37
  %30 = extractelement <2 x float> %1, i64 1
  %31 = extractelement <2 x float> %11, i64 1
  %cmp35.1 = fcmp une float %30, %31
  br i1 %cmp35.1, label %if.then.1, label %for.inc37.1

if.then.1:                                        ; preds = %lor.lhs.false.1, %for.inc37
  store i32 1, i32* %c, align 4, !tbaa !11
  br label %for.inc37.1

for.inc37.1:                                      ; preds = %if.then.1, %lor.lhs.false.1
  %32 = extractelement <2 x float> %2, i64 0
  %33 = extractelement <2 x float> %13, i64 0
  %cmp29.2 = fcmp une float %32, %33
  br i1 %cmp29.2, label %if.then.2, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %for.inc37.1
  %34 = extractelement <2 x float> %2, i64 1
  %35 = extractelement <2 x float> %13, i64 1
  %cmp35.2 = fcmp une float %34, %35
  br i1 %cmp35.2, label %if.then.2, label %for.inc37.2

if.then.2:                                        ; preds = %lor.lhs.false.2, %for.inc37.1
  store i32 1, i32* %c, align 4, !tbaa !11
  br label %for.inc37.2

for.inc37.2:                                      ; preds = %if.then.2, %lor.lhs.false.2
  %36 = extractelement <2 x float> %3, i64 0
  %37 = extractelement <2 x float> %15, i64 0
  %cmp29.3 = fcmp une float %36, %37
  br i1 %cmp29.3, label %if.then.3, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %for.inc37.2
  %38 = extractelement <2 x float> %3, i64 1
  %39 = extractelement <2 x float> %15, i64 1
  %cmp35.3 = fcmp une float %38, %39
  br i1 %cmp35.3, label %if.then.3, label %for.inc37.3

if.then.3:                                        ; preds = %lor.lhs.false.3, %for.inc37.2
  store i32 1, i32* %c, align 4, !tbaa !11
  br label %for.inc37.3

for.inc37.3:                                      ; preds = %if.then.3, %lor.lhs.false.3
  %40 = extractelement <2 x float> %4, i64 0
  %41 = extractelement <2 x float> %17, i64 0
  %cmp29.4 = fcmp une float %40, %41
  br i1 %cmp29.4, label %if.then.4, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %for.inc37.3
  %42 = extractelement <2 x float> %4, i64 1
  %43 = extractelement <2 x float> %17, i64 1
  %cmp35.4 = fcmp une float %42, %43
  br i1 %cmp35.4, label %if.then.4, label %for.inc37.4

if.then.4:                                        ; preds = %lor.lhs.false.4, %for.inc37.3
  store i32 1, i32* %c, align 4, !tbaa !11
  br label %for.inc37.4

for.inc37.4:                                      ; preds = %if.then.4, %lor.lhs.false.4
  %44 = extractelement <2 x float> %5, i64 0
  %45 = extractelement <2 x float> %19, i64 0
  %cmp29.5 = fcmp une float %44, %45
  br i1 %cmp29.5, label %if.then.5, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %for.inc37.4
  %46 = extractelement <2 x float> %5, i64 1
  %47 = extractelement <2 x float> %19, i64 1
  %cmp35.5 = fcmp une float %46, %47
  br i1 %cmp35.5, label %if.then.5, label %for.inc37.5

if.then.5:                                        ; preds = %lor.lhs.false.5, %for.inc37.4
  store i32 1, i32* %c, align 4, !tbaa !11
  br label %for.inc37.5

for.inc37.5:                                      ; preds = %if.then.5, %lor.lhs.false.5
  %48 = extractelement <2 x float> %6, i64 0
  %49 = extractelement <2 x float> %21, i64 0
  %cmp29.6 = fcmp une float %48, %49
  br i1 %cmp29.6, label %if.then.6, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %for.inc37.5
  %50 = extractelement <2 x float> %6, i64 1
  %51 = extractelement <2 x float> %21, i64 1
  %cmp35.6 = fcmp une float %50, %51
  br i1 %cmp35.6, label %if.then.6, label %for.inc37.6

if.then.6:                                        ; preds = %lor.lhs.false.6, %for.inc37.5
  store i32 1, i32* %c, align 4, !tbaa !11
  br label %for.inc37.6

for.inc37.6:                                      ; preds = %if.then.6, %lor.lhs.false.6
  %52 = extractelement <2 x float> %7, i64 0
  %53 = extractelement <2 x float> %23, i64 0
  %cmp29.7 = fcmp une float %52, %53
  br i1 %cmp29.7, label %if.then.7, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %for.inc37.6
  %54 = extractelement <2 x float> %7, i64 1
  %55 = extractelement <2 x float> %23, i64 1
  %cmp35.7 = fcmp une float %54, %55
  br i1 %cmp35.7, label %if.then.7, label %for.inc37.7

if.then.7:                                        ; preds = %lor.lhs.false.7, %for.inc37.6
  store i32 1, i32* %c, align 4, !tbaa !11
  br label %for.inc37.7

for.inc37.7:                                      ; preds = %if.then.7, %lor.lhs.false.7
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 0, i32 1}
!4 = !{!"none", !"none", !"none"}
!5 = !{!"float2*", !"int", !"int*"}
!6 = !{!"float __attribute__((ext_vector_type(2)))*", !"int", !"int*"}
!7 = !{!"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
