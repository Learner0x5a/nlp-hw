; ModuleID = 'src/612.src'
source_filename = "src/612.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A.n = internal unnamed_addr global [64 x [64 x float]] undef, align 16
@A.o = internal unnamed_addr global [64 x [64 x float]] undef, align 16
@A.p = internal unnamed_addr global [64 x [64 x float]] undef, align 16

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(i32 %a, float* nocapture readonly %b, float* nocapture readonly %c, float* nocapture %d, i32 %e, i32 %f, i32 %g, i32 %h, float %i, float %j, float %k, float %l, float %m) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z12get_group_idj(i32 0) #4
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z12get_group_idj(i32 1) #4
  %conv2 = trunc i64 %call1 to i32
  %call3 = tail call i64 @_Z12get_local_idj(i32 0) #4
  %conv4 = trunc i64 %call3 to i32
  %call5 = tail call i64 @_Z12get_local_idj(i32 1) #4
  %conv6 = trunc i64 %call5 to i32
  %div = fdiv float %m, %i, !fpmath !7
  %div7 = fdiv float 1.000000e+00, %j, !fpmath !7
  %div8 = fdiv float 1.000000e+00, %k, !fpmath !7
  %div9 = fdiv float 1.000000e+00, %l, !fpmath !7
  %mul = shl nsw i32 %a, 1
  %sub = sub nsw i32 64, %mul
  %mul12 = mul nsw i32 %sub, %conv2
  %sub13 = sub nsw i32 %mul12, %h
  %mul14 = mul nsw i32 %sub, %conv
  %sub15 = sub nsw i32 %mul14, %g
  %sub16 = add nsw i32 %sub13, 63
  %sub18 = add nsw i32 %sub15, 63
  %add19 = add nsw i32 %sub13, %conv6
  %add20 = add nsw i32 %sub15, %conv4
  %mul21 = mul nsw i32 %add19, %e
  %add22 = add nsw i32 %mul21, %add20
  %cmp = icmp sgt i32 %add19, -1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %cmp25 = icmp slt i32 %add19, %f
  %cmp28 = icmp sgt i32 %add20, -1
  %or.cond = and i1 %cmp28, %cmp25
  %cmp32 = icmp slt i32 %add20, %e
  %or.cond329 = and i1 %cmp32, %or.cond
  br i1 %or.cond329, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %idxprom = sext i32 %add22 to i64
  %arrayidx = getelementptr inbounds float, float* %c, i64 %idxprom
  %0 = bitcast float* %arrayidx to i32*
  %1 = load i32, i32* %0, align 4, !tbaa !8
  %sext325 = shl i64 %call5, 32
  %idxprom34 = ashr exact i64 %sext325, 32
  %sext326 = shl i64 %call3, 32
  %idxprom36 = ashr exact i64 %sext326, 32
  %arrayidx37 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @A.n, i64 0, i64 %idxprom34, i64 %idxprom36
  %2 = bitcast float* %arrayidx37 to i32*
  store i32 %1, i32* %2, align 4, !tbaa !8
  %arrayidx39 = getelementptr inbounds float, float* %b, i64 %idxprom
  %3 = bitcast float* %arrayidx39 to i32*
  %4 = load i32, i32* %3, align 4, !tbaa !8
  %arrayidx43 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @A.o, i64 0, i64 %idxprom34, i64 %idxprom36
  %5 = bitcast float* %arrayidx43 to i32*
  store i32 %4, i32* %5, align 4, !tbaa !8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  tail call void @_Z7barrierj(i32 1) #5
  %cmp44 = icmp slt i32 %sub13, 0
  %sub46 = sub nsw i32 0, %sub13
  %cond = select i1 %cmp44, i32 %sub46, i32 0
  %cmp48 = icmp slt i32 %sub16, %f
  %sub16.neg = sub i32 -63, %sub13
  %sub51327 = add i32 %f, 62
  %sub53 = add i32 %sub51327, %sub16.neg
  %cond56 = select i1 %cmp48, i32 63, i32 %sub53
  %cmp57 = icmp slt i32 %sub15, 0
  %sub60 = sub nsw i32 0, %sub15
  %cond63 = select i1 %cmp57, i32 %sub60, i32 0
  %cmp65 = icmp slt i32 %sub18, %e
  %sub18.neg = sub i32 -63, %sub15
  %sub68328 = add i32 %e, 62
  %sub70 = add i32 %sub68328, %sub18.neg
  %cond73 = select i1 %cmp65, i32 63, i32 %sub70
  %cmp102336 = icmp sgt i32 %a, 0
  br i1 %cmp102336, label %for.body.lr.ph, label %if.then200

for.body.lr.ph:                                   ; preds = %if.end
  %cmp96 = icmp sgt i32 %cond73, %conv4
  %add77 = add nsw i32 %conv4, 1
  %cond101 = select i1 %cmp96, i32 %add77, i32 %cond73
  %cmp90 = icmp slt i32 %cond63, %conv4
  %sub76 = add nsw i32 %conv4, -1
  %cond95 = select i1 %cmp90, i32 %sub76, i32 %cond63
  %cmp84 = icmp sgt i32 %cond56, %conv6
  %add75 = add nsw i32 %conv6, 1
  %cond89 = select i1 %cmp84, i32 %add75, i32 %cond56
  %cmp78 = icmp slt i32 %cond, %conv6
  %sub74 = add nsw i32 %conv6, -1
  %cond83 = select i1 %cmp78, i32 %sub74, i32 %cond
  %cmp122 = icmp sgt i32 %cond63, %conv4
  %cmp125 = icmp slt i32 %cond73, %conv4
  %cmp128 = icmp sgt i32 %cond, %conv6
  %cmp131 = icmp slt i32 %cond56, %conv6
  %sext323 = shl i64 %call5, 32
  %idxprom134 = ashr exact i64 %sext323, 32
  %sext324 = shl i64 %call3, 32
  %idxprom136 = ashr exact i64 %sext324, 32
  %arrayidx137 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @A.n, i64 0, i64 %idxprom134, i64 %idxprom136
  %arrayidx141 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @A.o, i64 0, i64 %idxprom134, i64 %idxprom136
  %idxprom142 = sext i32 %cond89 to i64
  %arrayidx145 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @A.n, i64 0, i64 %idxprom142, i64 %idxprom136
  %idxprom146 = sext i32 %cond83 to i64
  %arrayidx149 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @A.n, i64 0, i64 %idxprom146, i64 %idxprom136
  %idxprom159 = sext i32 %cond101 to i64
  %arrayidx160 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @A.n, i64 0, i64 %idxprom134, i64 %idxprom159
  %idxprom163 = sext i32 %cond95 to i64
  %arrayidx164 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @A.n, i64 0, i64 %idxprom134, i64 %idxprom163
  %arrayidx182 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @A.p, i64 0, i64 %idxprom134, i64 %idxprom136
  %sub184 = add nsw i32 %a, -1
  %6 = bitcast float* %arrayidx182 to i32*
  %7 = bitcast float* %arrayidx137 to i32*
  br label %for.body

for.body:                                         ; preds = %if.end198, %for.body.lr.ph
  %at.0337 = phi i32 [ 0, %for.body.lr.ph ], [ %add104, %if.end198 ]
  %add104 = add nuw nsw i32 %at.0337, 1
  %cmp105 = icmp slt i32 %at.0337, %conv4
  br i1 %cmp105, label %land.lhs.true107, label %if.end183

land.lhs.true107:                                 ; preds = %for.body
  %sub109 = sub nsw i32 62, %at.0337
  %cmp110 = icmp slt i32 %sub109, %conv4
  %cmp114 = icmp sge i32 %at.0337, %conv6
  %or.cond330.not = or i1 %cmp114, %cmp110
  %cmp119 = icmp slt i32 %sub109, %conv6
  %or.cond331 = or i1 %cmp119, %or.cond330.not
  %or.cond332 = or i1 %cmp122, %or.cond331
  %or.cond333 = or i1 %cmp125, %or.cond332
  %or.cond334 = or i1 %cmp128, %or.cond333
  %or.cond335 = or i1 %cmp131, %or.cond334
  br i1 %or.cond335, label %if.end183, label %if.then133

if.then133:                                       ; preds = %land.lhs.true107
  %8 = load float, float* %arrayidx137, align 4, !tbaa !8
  %9 = load float, float* %arrayidx141, align 4, !tbaa !8
  %10 = load float, float* %arrayidx145, align 4, !tbaa !8
  %11 = load float, float* %arrayidx149, align 4, !tbaa !8
  %add150 = fadd float %10, %11
  %12 = tail call float @llvm.fmuladd.f32(float %8, float -2.000000e+00, float %add150)
  %13 = tail call float @llvm.fmuladd.f32(float %12, float %div8, float %9)
  %14 = load float, float* %arrayidx160, align 4, !tbaa !8
  %15 = load float, float* %arrayidx164, align 4, !tbaa !8
  %add165 = fadd float %14, %15
  %16 = tail call float @llvm.fmuladd.f32(float %8, float -2.000000e+00, float %add165)
  %17 = tail call float @llvm.fmuladd.f32(float %16, float %div7, float %13)
  %sub176 = fsub float 8.000000e+01, %8
  %18 = tail call float @llvm.fmuladd.f32(float %sub176, float %div9, float %17)
  %19 = tail call float @llvm.fmuladd.f32(float %div, float %18, float %8)
  store float %19, float* %arrayidx182, align 4, !tbaa !8
  br label %if.end183

if.end183:                                        ; preds = %land.lhs.true107, %if.then133, %for.body
  %as.1 = phi i1 [ false, %if.then133 ], [ true, %land.lhs.true107 ], [ true, %for.body ]
  tail call void @_Z7barrierj(i32 1) #5
  %cmp185 = icmp eq i32 %at.0337, %sub184
  br i1 %cmp185, label %cleanup, label %if.end188

if.end188:                                        ; preds = %if.end183
  br i1 %as.1, label %if.end198, label %if.then189

if.then189:                                       ; preds = %if.end188
  %20 = load i32, i32* %6, align 4, !tbaa !8
  store i32 %20, i32* %7, align 4, !tbaa !8
  br label %if.end198

if.end198:                                        ; preds = %if.end188, %if.then189
  tail call void @_Z7barrierj(i32 1) #5
  br label %for.body

cleanup:                                          ; preds = %if.end183
  br i1 %as.1, label %if.end207, label %if.then200

if.then200:                                       ; preds = %if.end, %cleanup
  %sext = shl i64 %call5, 32
  %idxprom201 = ashr exact i64 %sext, 32
  %sext320 = shl i64 %call3, 32
  %idxprom203 = ashr exact i64 %sext320, 32
  %arrayidx204 = getelementptr inbounds [64 x [64 x float]], [64 x [64 x float]]* @A.p, i64 0, i64 %idxprom201, i64 %idxprom203
  %21 = bitcast float* %arrayidx204 to i32*
  %22 = load i32, i32* %21, align 4, !tbaa !8
  %idxprom205 = sext i32 %add22 to i64
  %arrayidx206 = getelementptr inbounds float, float* %d, i64 %idxprom205
  %23 = bitcast float* %arrayidx206 to i32*
  store i32 %22, i32* %23, align 4, !tbaa !8
  br label %if.end207

if.end207:                                        ; preds = %cleanup, %if.then200
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fmuladd.f32(float, float, float) #3

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { convergent nounwind readnone }
attributes #5 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"int", !"float*", !"float*", !"float*", !"int", !"int", !"int", !"int", !"float", !"float", !"float", !"float", !"float"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{float 2.500000e+00}
!8 = !{!9, !9, i64 0}
!9 = !{!"float", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
