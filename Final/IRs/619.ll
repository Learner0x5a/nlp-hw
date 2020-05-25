; ModuleID = 'src/619.src'
source_filename = "src/619.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture %a, float* nocapture %b, i32 %c, i32 %d) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z12get_local_idj(i32 0) #4
  %conv = trunc i64 %call to i32
  %0 = add i32 %c, 1
  %1 = mul i32 %0, %d
  %2 = sext i32 %1 to i64
  %3 = sext i32 %c to i64
  %sext = shl i64 %call, 32
  %4 = ashr exact i64 %sext, 32
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv193 = phi i64 [ 0, %entry ], [ %indvars.iv.next194.1, %for.body ]
  %indvars.iv190 = phi i64 [ %2, %entry ], [ %indvars.iv.next191.1, %for.body ]
  %5 = add nsw i64 %indvars.iv190, %4
  %arrayidx = getelementptr inbounds float, float* %a, i64 %5
  %6 = bitcast float* %arrayidx to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !7
  %8 = shl nuw nsw i64 %indvars.iv193, 6
  %9 = add nsw i64 %8, %4
  %arrayidx6 = getelementptr inbounds float, float* %b, i64 %9
  %10 = bitcast float* %arrayidx6 to i32*
  store i32 %7, i32* %10, align 4, !tbaa !7
  %indvars.iv.next191 = add nsw i64 %indvars.iv190, %3
  %11 = add nsw i64 %indvars.iv.next191, %4
  %arrayidx.1 = getelementptr inbounds float, float* %a, i64 %11
  %12 = bitcast float* %arrayidx.1 to i32*
  %13 = load i32, i32* %12, align 4, !tbaa !7
  %indvars.iv.next194 = shl i64 %indvars.iv193, 6
  %14 = or i64 %indvars.iv.next194, 64
  %15 = add nsw i64 %14, %4
  %arrayidx6.1 = getelementptr inbounds float, float* %b, i64 %15
  %16 = bitcast float* %arrayidx6.1 to i32*
  store i32 %13, i32* %16, align 4, !tbaa !7
  %indvars.iv.next191.1 = add nsw i64 %indvars.iv.next191, %3
  %indvars.iv.next194.1 = add nuw nsw i64 %indvars.iv193, 2
  %exitcond197.1 = icmp eq i64 %indvars.iv.next194.1, 64
  br i1 %exitcond197.1, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  tail call void @_Z7barrierj(i32 1) #5
  %mul18 = shl i32 %conv, 6
  %17 = sext i32 %mul18 to i64
  br label %for.body11

for.body11:                                       ; preds = %if.end69, %for.end
  %indvars.iv181 = phi i64 [ 0, %for.end ], [ %indvars.iv.next182, %if.end69 ]
  %18 = add nuw i64 %indvars.iv181, 1
  %cmp12 = icmp slt i64 %indvars.iv181, %4
  br i1 %cmp12, label %for.cond14.preheader, label %if.end

for.cond14.preheader:                             ; preds = %for.body11
  %cmp15150 = icmp eq i64 %indvars.iv181, 0
  %.pre199 = add nuw nsw i64 %indvars.iv181, %17
  br i1 %cmp15150, label %for.end33, label %for.body17.lr.ph

for.body17.lr.ph:                                 ; preds = %for.cond14.preheader
  %arrayidx30 = getelementptr inbounds float, float* %b, i64 %.pre199
  %.pre = load float, float* %arrayidx30, align 4, !tbaa !7
  %xtraiter = and i64 %indvars.iv181, 1
  %19 = icmp eq i64 %indvars.iv181, 1
  br i1 %19, label %for.end33.loopexit.unr-lcssa, label %for.body17.lr.ph.new

for.body17.lr.ph.new:                             ; preds = %for.body17.lr.ph
  %unroll_iter = sub nsw i64 %indvars.iv181, %xtraiter
  br label %for.body17

for.body17:                                       ; preds = %for.body17, %for.body17.lr.ph.new
  %20 = phi float [ %.pre, %for.body17.lr.ph.new ], [ %32, %for.body17 ]
  %indvars.iv164 = phi i64 [ 0, %for.body17.lr.ph.new ], [ %indvars.iv.next165.1, %for.body17 ]
  %niter = phi i64 [ %unroll_iter, %for.body17.lr.ph.new ], [ %niter.nsub.1, %for.body17 ]
  %21 = add nuw nsw i64 %indvars.iv164, %17
  %arrayidx21 = getelementptr inbounds float, float* %b, i64 %21
  %22 = load float, float* %arrayidx21, align 4, !tbaa !7
  %23 = shl i64 %indvars.iv164, 6
  %24 = add nuw nsw i64 %23, %indvars.iv181
  %arrayidx25 = getelementptr inbounds float, float* %b, i64 %24
  %25 = load float, float* %arrayidx25, align 4, !tbaa !7
  %neg = fsub float -0.000000e+00, %22
  %26 = tail call float @llvm.fmuladd.f32(float %neg, float %25, float %20)
  store float %26, float* %arrayidx30, align 4, !tbaa !7
  %indvars.iv.next165 = or i64 %indvars.iv164, 1
  %27 = add nuw nsw i64 %indvars.iv.next165, %17
  %arrayidx21.1 = getelementptr inbounds float, float* %b, i64 %27
  %28 = load float, float* %arrayidx21.1, align 4, !tbaa !7
  %29 = shl i64 %indvars.iv.next165, 6
  %30 = add nuw nsw i64 %29, %indvars.iv181
  %arrayidx25.1 = getelementptr inbounds float, float* %b, i64 %30
  %31 = load float, float* %arrayidx25.1, align 4, !tbaa !7
  %neg.1 = fsub float -0.000000e+00, %28
  %32 = tail call float @llvm.fmuladd.f32(float %neg.1, float %31, float %26)
  store float %32, float* %arrayidx30, align 4, !tbaa !7
  %indvars.iv.next165.1 = add nuw nsw i64 %indvars.iv164, 2
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %for.end33.loopexit.unr-lcssa, label %for.body17

for.end33.loopexit.unr-lcssa:                     ; preds = %for.body17, %for.body17.lr.ph
  %.unr = phi float [ %.pre, %for.body17.lr.ph ], [ %32, %for.body17 ]
  %indvars.iv164.unr = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next165.1, %for.body17 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.end33, label %for.body17.epil

for.body17.epil:                                  ; preds = %for.end33.loopexit.unr-lcssa
  %33 = add nuw nsw i64 %indvars.iv164.unr, %17
  %arrayidx21.epil = getelementptr inbounds float, float* %b, i64 %33
  %34 = load float, float* %arrayidx21.epil, align 4, !tbaa !7
  %35 = shl i64 %indvars.iv164.unr, 6
  %36 = add nuw nsw i64 %35, %indvars.iv181
  %arrayidx25.epil = getelementptr inbounds float, float* %b, i64 %36
  %37 = load float, float* %arrayidx25.epil, align 4, !tbaa !7
  %neg.epil = fsub float -0.000000e+00, %34
  %38 = tail call float @llvm.fmuladd.f32(float %neg.epil, float %37, float %.unr)
  store float %38, float* %arrayidx30, align 4, !tbaa !7
  br label %for.end33

for.end33:                                        ; preds = %for.body17.epil, %for.end33.loopexit.unr-lcssa, %for.cond14.preheader
  %39 = mul nuw nsw i64 %indvars.iv181, 65
  %arrayidx37 = getelementptr inbounds float, float* %b, i64 %39
  %40 = load float, float* %arrayidx37, align 4, !tbaa !7
  %arrayidx41 = getelementptr inbounds float, float* %b, i64 %.pre199
  %41 = load float, float* %arrayidx41, align 4, !tbaa !7
  %div = fdiv float %41, %40, !fpmath !11
  store float %div, float* %arrayidx41, align 4, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %for.end33, %for.body11
  %cmp12.pr = phi i1 [ true, %for.end33 ], [ false, %for.body11 ]
  tail call void @_Z7barrierj(i32 1) #5
  br i1 %cmp12.pr, label %for.cond45.preheader, label %if.end69

for.cond45.preheader:                             ; preds = %if.end
  %42 = shl i64 %indvars.iv181, 6
  %43 = add nuw nsw i64 %42, 64
  %44 = add nsw i64 %43, %4
  %arrayidx64 = getelementptr inbounds float, float* %b, i64 %44
  %.pre198 = load float, float* %arrayidx64, align 4, !tbaa !7
  %xtraiter200 = and i64 %18, 1
  %45 = icmp eq i64 %indvars.iv181, 0
  br i1 %45, label %if.end69.loopexit.unr-lcssa, label %for.cond45.preheader.new

for.cond45.preheader.new:                         ; preds = %for.cond45.preheader
  %unroll_iter203 = sub nuw i64 %18, %xtraiter200
  br label %for.body49

for.body49:                                       ; preds = %for.body49, %for.cond45.preheader.new
  %46 = phi float [ %.pre198, %for.cond45.preheader.new ], [ %58, %for.body49 ]
  %indvars.iv170 = phi i64 [ 0, %for.cond45.preheader.new ], [ %indvars.iv.next171.1, %for.body49 ]
  %niter204 = phi i64 [ %unroll_iter203, %for.cond45.preheader.new ], [ %niter204.nsub.1, %for.body49 ]
  %47 = add nuw nsw i64 %indvars.iv170, %43
  %arrayidx54 = getelementptr inbounds float, float* %b, i64 %47
  %48 = load float, float* %arrayidx54, align 4, !tbaa !7
  %49 = shl i64 %indvars.iv170, 6
  %50 = add nsw i64 %49, %4
  %arrayidx58 = getelementptr inbounds float, float* %b, i64 %50
  %51 = load float, float* %arrayidx58, align 4, !tbaa !7
  %neg65 = fsub float -0.000000e+00, %48
  %52 = tail call float @llvm.fmuladd.f32(float %neg65, float %51, float %46)
  store float %52, float* %arrayidx64, align 4, !tbaa !7
  %indvars.iv.next171 = or i64 %indvars.iv170, 1
  %53 = add nuw nsw i64 %indvars.iv.next171, %43
  %arrayidx54.1 = getelementptr inbounds float, float* %b, i64 %53
  %54 = load float, float* %arrayidx54.1, align 4, !tbaa !7
  %55 = shl i64 %indvars.iv.next171, 6
  %56 = add nsw i64 %55, %4
  %arrayidx58.1 = getelementptr inbounds float, float* %b, i64 %56
  %57 = load float, float* %arrayidx58.1, align 4, !tbaa !7
  %neg65.1 = fsub float -0.000000e+00, %54
  %58 = tail call float @llvm.fmuladd.f32(float %neg65.1, float %57, float %52)
  store float %58, float* %arrayidx64, align 4, !tbaa !7
  %indvars.iv.next171.1 = add nuw nsw i64 %indvars.iv170, 2
  %niter204.nsub.1 = add i64 %niter204, -2
  %niter204.ncmp.1 = icmp eq i64 %niter204.nsub.1, 0
  br i1 %niter204.ncmp.1, label %if.end69.loopexit.unr-lcssa, label %for.body49

if.end69.loopexit.unr-lcssa:                      ; preds = %for.body49, %for.cond45.preheader
  %.unr201 = phi float [ %.pre198, %for.cond45.preheader ], [ %58, %for.body49 ]
  %indvars.iv170.unr = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next171.1, %for.body49 ]
  %lcmp.mod202 = icmp eq i64 %xtraiter200, 0
  br i1 %lcmp.mod202, label %if.end69, label %for.body49.epil

for.body49.epil:                                  ; preds = %if.end69.loopexit.unr-lcssa
  %59 = add nuw nsw i64 %indvars.iv170.unr, %43
  %arrayidx54.epil = getelementptr inbounds float, float* %b, i64 %59
  %60 = load float, float* %arrayidx54.epil, align 4, !tbaa !7
  %61 = shl i64 %indvars.iv170.unr, 6
  %62 = add nsw i64 %61, %4
  %arrayidx58.epil = getelementptr inbounds float, float* %b, i64 %62
  %63 = load float, float* %arrayidx58.epil, align 4, !tbaa !7
  %neg65.epil = fsub float -0.000000e+00, %60
  %64 = tail call float @llvm.fmuladd.f32(float %neg65.epil, float %63, float %.unr201)
  store float %64, float* %arrayidx64, align 4, !tbaa !7
  br label %if.end69

if.end69:                                         ; preds = %for.body49.epil, %if.end69.loopexit.unr-lcssa, %if.end
  tail call void @_Z7barrierj(i32 1) #5
  %indvars.iv.next182 = add nuw nsw i64 %indvars.iv181, 1
  %exitcond189 = icmp eq i64 %indvars.iv.next182, 63
  br i1 %exitcond189, label %for.end72, label %for.body11

for.end72:                                        ; preds = %if.end69
  %65 = add i32 %d, 1
  %66 = mul i32 %65, %c
  %67 = add i32 %66, %d
  %68 = sext i32 %67 to i64
  br label %for.body79

for.body79:                                       ; preds = %for.body79, %for.end72
  %indvars.iv160 = phi i64 [ 1, %for.end72 ], [ %indvars.iv.next161.2, %for.body79 ]
  %indvars.iv = phi i64 [ %68, %for.end72 ], [ %indvars.iv.next.2, %for.body79 ]
  %69 = shl nuw nsw i64 %indvars.iv160, 6
  %70 = add nsw i64 %69, %4
  %arrayidx83 = getelementptr inbounds float, float* %b, i64 %70
  %71 = bitcast float* %arrayidx83 to i32*
  %72 = load i32, i32* %71, align 4, !tbaa !7
  %73 = add nsw i64 %indvars.iv, %4
  %arrayidx86 = getelementptr inbounds float, float* %a, i64 %73
  %74 = bitcast float* %arrayidx86 to i32*
  store i32 %72, i32* %74, align 4, !tbaa !7
  %indvars.iv.next = add nsw i64 %indvars.iv, %3
  %indvars.iv.next161 = shl i64 %indvars.iv160, 6
  %75 = add i64 %indvars.iv.next161, 64
  %76 = add nsw i64 %75, %4
  %arrayidx83.1 = getelementptr inbounds float, float* %b, i64 %76
  %77 = bitcast float* %arrayidx83.1 to i32*
  %78 = load i32, i32* %77, align 4, !tbaa !7
  %79 = add nsw i64 %indvars.iv.next, %4
  %arrayidx86.1 = getelementptr inbounds float, float* %a, i64 %79
  %80 = bitcast float* %arrayidx86.1 to i32*
  store i32 %78, i32* %80, align 4, !tbaa !7
  %indvars.iv.next.1 = add nsw i64 %indvars.iv.next, %3
  %indvars.iv.next161.1 = shl i64 %indvars.iv160, 6
  %81 = add i64 %indvars.iv.next161.1, 128
  %82 = add nsw i64 %81, %4
  %arrayidx83.2 = getelementptr inbounds float, float* %b, i64 %82
  %83 = bitcast float* %arrayidx83.2 to i32*
  %84 = load i32, i32* %83, align 4, !tbaa !7
  %85 = add nsw i64 %indvars.iv.next.1, %4
  %arrayidx86.2 = getelementptr inbounds float, float* %a, i64 %85
  %86 = bitcast float* %arrayidx86.2 to i32*
  store i32 %84, i32* %86, align 4, !tbaa !7
  %indvars.iv.next.2 = add nsw i64 %indvars.iv.next.1, %3
  %indvars.iv.next161.2 = add nuw nsw i64 %indvars.iv160, 3
  %exitcond.2 = icmp eq i64 %indvars.iv.next161.2, 64
  br i1 %exitcond.2, label %for.end90, label %for.body79

for.end90:                                        ; preds = %for.body79
  ret void
}

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
!3 = !{i32 1, i32 3, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"float*", !"int", !"int"}
!6 = !{!"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{float 2.500000e+00}
