; ModuleID = 'src/558.src'
source_filename = "src/558.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(i32* nocapture readonly %a, i32* nocapture %b, <2 x float>* nocapture readonly %c, <2 x float>* nocapture readonly %d, i32* %e, i32* %f, i32* %g, i32 %h, i32 %i, i32 %j, i32* %k, i32* nocapture %l, i32* nocapture %m) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !6 !kernel_arg_type_qual !7 {
entry:
  %call = tail call i64 @_Z12get_local_idj(i32 0) #3
  %cmp = icmp eq i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %k, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @_Z7barrierj(i32 1) #4
  %call1 = tail call i64 @_Z13get_global_idj(i32 0) #3
  %conv = trunc i64 %call1 to i32
  %cmp2 = icmp slt i32 %conv, %h
  br i1 %cmp2, label %if.then4, label %if.end43

if.then4:                                         ; preds = %if.end
  %sext101 = shl i64 %call1, 32
  %idxprom = ashr exact i64 %sext101, 32
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %idxprom
  %0 = load i32, i32* %arrayidx, align 4, !tbaa !8
  %idxprom5 = sext i32 %0 to i64
  %arrayidx6 = getelementptr inbounds i32, i32* %e, i64 %idxprom5
  store i32 16677221, i32* %arrayidx6, align 4, !tbaa !8
  %arrayidx8 = getelementptr inbounds i32, i32* %f, i64 %idxprom5
  %1 = load i32, i32* %arrayidx8, align 4, !tbaa !8
  %arrayidx10 = getelementptr inbounds <2 x float>, <2 x float>* %c, i64 %idxprom5
  %2 = load <2 x float>, <2 x float>* %arrayidx10, align 8, !tbaa !12
  %3 = extractelement <2 x float> %2, i64 0
  %conv11 = fptosi float %3 to i32
  %conv12106 = sitofp i32 %conv11 to float
  %4 = extractelement <2 x float> %2, i64 1
  %add = fadd float %4, %3
  %cmp13107 = fcmp ogt float %add, %conv12106
  br i1 %cmp13107, label %for.body.preheader, label %if.end43

for.body.preheader:                               ; preds = %if.then4
  %5 = sext i32 %conv11 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %if.end42
  %indvars.iv = phi i64 [ %5, %for.body.preheader ], [ %indvars.iv.next, %if.end42 ]
  %arrayidx16 = getelementptr inbounds <2 x float>, <2 x float>* %d, i64 %indvars.iv
  %6 = load <2 x float>, <2 x float>* %arrayidx16, align 8, !tbaa !12
  %7 = extractelement <2 x float> %6, i64 0
  %conv17 = fptosi float %7 to i32
  %8 = extractelement <2 x float> %6, i64 1
  %conv18 = fptosi float %8 to i32
  %add19 = add nsw i32 %1, %conv18
  %idxprom20 = sext i32 %conv17 to i64
  %arrayidx21 = getelementptr inbounds i32, i32* %f, i64 %idxprom20
  %call22 = tail call i32 @_Z8atom_minPU8CLglobalVii(i32* %arrayidx21, i32 %add19) #4
  %cmp23 = icmp sgt i32 %call22, %add19
  br i1 %cmp23, label %if.then25, label %if.end42

if.then25:                                        ; preds = %for.body
  %arrayidx27 = getelementptr inbounds i32, i32* %e, i64 %idxprom20
  %9 = load i32, i32* %arrayidx27, align 4, !tbaa !8
  %cmp28 = icmp sgt i32 %9, 16677216
  br i1 %cmp28, label %if.then30, label %if.end42

if.then30:                                        ; preds = %if.then25
  %call33 = tail call i32 @_Z9atom_xchgPU8CLglobalVii(i32* %arrayidx27, i32 %i) #4
  %cmp34 = icmp eq i32 %call33, %i
  br i1 %cmp34, label %if.end42, label %if.then36

if.then36:                                        ; preds = %if.then30
  %call37 = tail call i32 @_Z8atom_addPU7CLlocalVii(i32* %k, i32 1) #4
  %idxprom38 = sext i32 %call37 to i64
  %arrayidx39 = getelementptr inbounds i32, i32* %l, i64 %idxprom38
  store i32 %conv17, i32* %arrayidx39, align 4, !tbaa !8
  br label %if.end42

if.end42:                                         ; preds = %if.then36, %if.then30, %if.then25, %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1
  %10 = trunc i64 %indvars.iv.next to i32
  %conv12 = sitofp i32 %10 to float
  %cmp13 = fcmp ogt float %add, %conv12
  br i1 %cmp13, label %for.body, label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then4, %if.end
  tail call void @_Z7barrierj(i32 1) #4
  br i1 %cmp, label %if.then47, label %if.end49

if.then47:                                        ; preds = %if.end43
  %11 = load i32, i32* %k, align 4, !tbaa !8
  %call48 = tail call i32 @_Z8atom_addPU8CLglobalVii(i32* %g, i32 %11) #4
  store i32 %call48, i32* %m, align 4, !tbaa !8
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end43
  tail call void @_Z7barrierj(i32 1) #4
  %z.0102 = trunc i64 %call to i32
  %12 = load i32, i32* %k, align 4, !tbaa !8
  %cmp52103 = icmp sgt i32 %12, %z.0102
  br i1 %cmp52103, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %if.end49
  %call59 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %z.0105 = phi i32 [ %z.0102, %while.body.lr.ph ], [ %z.0, %while.body ]
  %z.0.in104 = phi i64 [ %call, %while.body.lr.ph ], [ %add61, %while.body ]
  %sext = shl i64 %z.0.in104, 32
  %idxprom54 = ashr exact i64 %sext, 32
  %arrayidx55 = getelementptr inbounds i32, i32* %l, i64 %idxprom54
  %13 = load i32, i32* %arrayidx55, align 4, !tbaa !8
  %14 = load i32, i32* %m, align 4, !tbaa !8
  %add56 = add nsw i32 %14, %z.0105
  %idxprom57 = sext i32 %add56 to i64
  %arrayidx58 = getelementptr inbounds i32, i32* %b, i64 %idxprom57
  store i32 %13, i32* %arrayidx58, align 4, !tbaa !8
  %add61 = add i64 %call59, %idxprom54
  %z.0 = trunc i64 %add61 to i32
  %15 = load i32, i32* %k, align 4, !tbaa !8
  %cmp52 = icmp sgt i32 %15, %z.0
  br i1 %cmp52, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.end49
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local i32 @_Z8atom_minPU8CLglobalVii(i32*, i32) local_unnamed_addr #2

; Function Attrs: convergent
declare dso_local i32 @_Z9atom_xchgPU8CLglobalVii(i32*, i32) local_unnamed_addr #2

; Function Attrs: convergent
declare dso_local i32 @_Z8atom_addPU7CLlocalVii(i32*, i32) local_unnamed_addr #2

; Function Attrs: convergent
declare dso_local i32 @_Z8atom_addPU8CLglobalVii(i32*, i32) local_unnamed_addr #2

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

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
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 3, i32 3, i32 3}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"int*", !"int*", !"float2*", !"float2*", !"int*", !"int*", !"int*", !"int", !"int", !"int", !"int*", !"int*", !"int*"}
!6 = !{!"int*", !"int*", !"float __attribute__((ext_vector_type(2)))*", !"float __attribute__((ext_vector_type(2)))*", !"int*", !"int*", !"int*", !"int", !"int", !"int", !"int*", !"int*", !"int*"}
!7 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!10, !10, i64 0}
