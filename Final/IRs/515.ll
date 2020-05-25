; ModuleID = 'src/515.src'
source_filename = "src/515.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture %b, double* nocapture %c, i32 %d, i32 %e, i32 %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #5
  %0 = trunc i64 %call to i32
  %call1 = tail call i64 @_Z12get_local_idj(i32 0) #5
  %sext = mul i64 %call1, 21474836480
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds double, double* %c, i64 %idxprom
  %arrayidx145 = bitcast double* %arrayidx to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %arrayidx145, i8 0, i64 40, i1 false)
  %conv = add i32 %0, 1
  %conv2 = trunc i64 %call1 to i32
  %cmp6 = icmp sgt i32 %conv, %f
  br i1 %cmp6, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %cmp9129 = icmp slt i32 %e, 1
  br i1 %cmp9129, label %if.end, label %for.cond12.preheader.lr.ph

for.cond12.preheader.lr.ph:                       ; preds = %if.then
  %cmp13127 = icmp slt i32 %d, 1
  %idxprom20 = sext i32 %conv to i64
  %2 = add i32 %d, 1
  %3 = add nuw i32 %e, 1
  %wide.trip.count140 = zext i32 %3 to i64
  %wide.trip.count = zext i32 %2 to i64
  %arrayidx29.1 = getelementptr inbounds double, double* %arrayidx, i64 1
  %arrayidx29.2 = getelementptr inbounds double, double* %arrayidx, i64 2
  %arrayidx29.3 = getelementptr inbounds double, double* %arrayidx, i64 3
  %arrayidx29.4 = getelementptr inbounds double, double* %arrayidx, i64 4
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.inc39, %for.cond12.preheader.lr.ph
  %4 = phi double [ %24, %for.inc39 ], [ 0.000000e+00, %for.cond12.preheader.lr.ph ]
  %5 = phi double [ %25, %for.inc39 ], [ 0.000000e+00, %for.cond12.preheader.lr.ph ]
  %6 = phi double [ %26, %for.inc39 ], [ 0.000000e+00, %for.cond12.preheader.lr.ph ]
  %7 = phi double [ %27, %for.inc39 ], [ 0.000000e+00, %for.cond12.preheader.lr.ph ]
  %8 = phi double [ %28, %for.inc39 ], [ 0.000000e+00, %for.cond12.preheader.lr.ph ]
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %for.inc39 ], [ 1, %for.cond12.preheader.lr.ph ]
  br i1 %cmp13127, label %for.inc39, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond12.preheader, %for.cond16.preheader
  %9 = phi double [ %23, %for.cond16.preheader ], [ %4, %for.cond12.preheader ]
  %10 = phi double [ %21, %for.cond16.preheader ], [ %5, %for.cond12.preheader ]
  %11 = phi double [ %19, %for.cond16.preheader ], [ %6, %for.cond12.preheader ]
  %12 = phi double [ %17, %for.cond16.preheader ], [ %7, %for.cond12.preheader ]
  %13 = phi double [ %15, %for.cond16.preheader ], [ %8, %for.cond12.preheader ]
  %indvars.iv136 = phi i64 [ %indvars.iv.next137, %for.cond16.preheader ], [ 1, %for.cond12.preheader ]
  %arrayidx27 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom20, i64 %indvars.iv138, i64 %indvars.iv136, i64 0
  %14 = load double, double* %arrayidx27, align 8, !tbaa !7
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %13)
  store double %15, double* %arrayidx, align 8, !tbaa !7
  %arrayidx27.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom20, i64 %indvars.iv138, i64 %indvars.iv136, i64 1
  %16 = load double, double* %arrayidx27.1, align 8, !tbaa !7
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %12)
  store double %17, double* %arrayidx29.1, align 8, !tbaa !7
  %arrayidx27.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom20, i64 %indvars.iv138, i64 %indvars.iv136, i64 2
  %18 = load double, double* %arrayidx27.2, align 8, !tbaa !7
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %11)
  store double %19, double* %arrayidx29.2, align 8, !tbaa !7
  %arrayidx27.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom20, i64 %indvars.iv138, i64 %indvars.iv136, i64 3
  %20 = load double, double* %arrayidx27.3, align 8, !tbaa !7
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %20, double %10)
  store double %21, double* %arrayidx29.3, align 8, !tbaa !7
  %arrayidx27.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom20, i64 %indvars.iv138, i64 %indvars.iv136, i64 4
  %22 = load double, double* %arrayidx27.4, align 8, !tbaa !7
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %22, double %9)
  store double %23, double* %arrayidx29.4, align 8, !tbaa !7
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1
  %exitcond = icmp eq i64 %indvars.iv.next137, %wide.trip.count
  br i1 %exitcond, label %for.inc39, label %for.cond16.preheader

for.inc39:                                        ; preds = %for.cond16.preheader, %for.cond12.preheader
  %24 = phi double [ %4, %for.cond12.preheader ], [ %23, %for.cond16.preheader ]
  %25 = phi double [ %5, %for.cond12.preheader ], [ %21, %for.cond16.preheader ]
  %26 = phi double [ %6, %for.cond12.preheader ], [ %19, %for.cond16.preheader ]
  %27 = phi double [ %7, %for.cond12.preheader ], [ %17, %for.cond16.preheader ]
  %28 = phi double [ %8, %for.cond12.preheader ], [ %15, %for.cond16.preheader ]
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  %exitcond141 = icmp eq i64 %indvars.iv.next139, %wide.trip.count140
  br i1 %exitcond141, label %if.end, label %for.cond12.preheader

if.end:                                           ; preds = %for.inc39, %if.then, %entry
  tail call void @_Z7barrierj(i32 1) #6
  %cmp42 = icmp eq i32 %conv2, 0
  br i1 %cmp42, label %for.cond45.preheader, label %if.end83

for.cond45.preheader:                             ; preds = %if.end
  %call47 = tail call i64 @_Z14get_local_sizej(i32 0) #5
  %arrayidx61.1 = getelementptr inbounds double, double* %arrayidx, i64 1
  %arrayidx61.2 = getelementptr inbounds double, double* %arrayidx, i64 2
  %arrayidx61.3 = getelementptr inbounds double, double* %arrayidx, i64 3
  %arrayidx61.4 = getelementptr inbounds double, double* %arrayidx, i64 4
  %cmp48154 = icmp ugt i64 %call47, 1
  br i1 %cmp48154, label %for.body50, label %for.end68

for.body50:                                       ; preds = %for.cond45.preheader, %for.body50
  %indvars.iv155 = phi i64 [ %indvars.iv.next, %for.body50 ], [ 1, %for.cond45.preheader ]
  %mul51 = mul i64 %indvars.iv155, 5
  %idxprom52 = and i64 %mul51, 4294967295
  %arrayidx53 = getelementptr inbounds double, double* %c, i64 %idxprom52
  %29 = load double, double* %arrayidx53, align 8, !tbaa !7
  %30 = load double, double* %arrayidx, align 8, !tbaa !7
  %add62 = fadd double %29, %30
  store double %add62, double* %arrayidx, align 8, !tbaa !7
  %arrayidx59.1 = getelementptr inbounds double, double* %arrayidx53, i64 1
  %31 = load double, double* %arrayidx59.1, align 8, !tbaa !7
  %32 = load double, double* %arrayidx61.1, align 8, !tbaa !7
  %add62.1 = fadd double %31, %32
  store double %add62.1, double* %arrayidx61.1, align 8, !tbaa !7
  %arrayidx59.2 = getelementptr inbounds double, double* %arrayidx53, i64 2
  %33 = load double, double* %arrayidx59.2, align 8, !tbaa !7
  %34 = load double, double* %arrayidx61.2, align 8, !tbaa !7
  %add62.2 = fadd double %33, %34
  store double %add62.2, double* %arrayidx61.2, align 8, !tbaa !7
  %arrayidx59.3 = getelementptr inbounds double, double* %arrayidx53, i64 3
  %35 = load double, double* %arrayidx59.3, align 8, !tbaa !7
  %36 = load double, double* %arrayidx61.3, align 8, !tbaa !7
  %add62.3 = fadd double %35, %36
  store double %add62.3, double* %arrayidx61.3, align 8, !tbaa !7
  %arrayidx59.4 = getelementptr inbounds double, double* %arrayidx53, i64 4
  %37 = load double, double* %arrayidx59.4, align 8, !tbaa !7
  %38 = load double, double* %arrayidx61.4, align 8, !tbaa !7
  %add62.4 = fadd double %37, %38
  store double %add62.4, double* %arrayidx61.4, align 8, !tbaa !7
  %indvars.iv.next = add nuw i64 %indvars.iv155, 1
  %cmp48 = icmp ugt i64 %call47, %indvars.iv.next
  br i1 %cmp48, label %for.body50, label %for.end68

for.end68:                                        ; preds = %for.body50, %for.cond45.preheader
  %call69 = tail call i64 @_Z12get_group_idj(i32 0) #5
  %mul70 = mul i64 %call69, 5
  %arrayidx71 = getelementptr inbounds double, double* %b, i64 %mul70
  %39 = bitcast double* %arrayidx to i64*
  %40 = load i64, i64* %39, align 8, !tbaa !7
  %41 = bitcast double* %arrayidx71 to i64*
  store i64 %40, i64* %41, align 8, !tbaa !7
  %arrayidx77.1 = getelementptr inbounds double, double* %arrayidx, i64 1
  %42 = bitcast double* %arrayidx77.1 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !7
  %arrayidx79.1 = getelementptr inbounds double, double* %arrayidx71, i64 1
  %44 = bitcast double* %arrayidx79.1 to i64*
  store i64 %43, i64* %44, align 8, !tbaa !7
  %arrayidx77.2 = getelementptr inbounds double, double* %arrayidx, i64 2
  %45 = bitcast double* %arrayidx77.2 to i64*
  %46 = load i64, i64* %45, align 8, !tbaa !7
  %arrayidx79.2 = getelementptr inbounds double, double* %arrayidx71, i64 2
  %47 = bitcast double* %arrayidx79.2 to i64*
  store i64 %46, i64* %47, align 8, !tbaa !7
  %arrayidx77.3 = getelementptr inbounds double, double* %arrayidx, i64 3
  %48 = bitcast double* %arrayidx77.3 to i64*
  %49 = load i64, i64* %48, align 8, !tbaa !7
  %arrayidx79.3 = getelementptr inbounds double, double* %arrayidx71, i64 3
  %50 = bitcast double* %arrayidx79.3 to i64*
  store i64 %49, i64* %50, align 8, !tbaa !7
  %arrayidx77.4 = getelementptr inbounds double, double* %arrayidx, i64 4
  %51 = bitcast double* %arrayidx77.4 to i64*
  %52 = load i64, i64* %51, align 8, !tbaa !7
  %arrayidx79.4 = getelementptr inbounds double, double* %arrayidx71, i64 4
  %53 = bitcast double* %arrayidx79.4 to i64*
  store i64 %52, i64* %53, align 8, !tbaa !7
  br label %if.end83

if.end83:                                         ; preds = %for.end68, %if.end
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: convergent
declare dso_local void @_Z7barrierj(i32) local_unnamed_addr #3

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z14get_local_sizej(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { convergent "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { convergent nounwind readnone }
attributes #6 = { convergent nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 3, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
