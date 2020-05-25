; ModuleID = 'src/284.src'
source_filename = "src/284.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture %b, double* nocapture %c, i32 %d, i32 %e, i32 %f, i32 %g, i32 %h) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #5
  %0 = trunc i64 %call to i32
  %call1 = tail call i64 @_Z12get_local_idj(i32 0) #5
  %sext = mul i64 %call1, 21474836480
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds double, double* %c, i64 %idxprom
  %arrayidx156 = bitcast double* %arrayidx to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(40) %arrayidx156, i8 0, i64 40, i1 false)
  %conv = add i32 %0, 1
  %conv2 = trunc i64 %call1 to i32
  %cmp6 = icmp slt i32 %conv, 11
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast double* %a to [13 x [13 x [5 x double]]]*
  %cmp9140 = icmp slt i32 %g, %h
  br i1 %cmp9140, label %for.cond12.preheader.lr.ph, label %if.end

for.cond12.preheader.lr.ph:                       ; preds = %if.then
  %cmp13138 = icmp slt i32 %e, %f
  %idxprom22 = sext i32 %conv to i64
  %2 = sext i32 %e to i64
  %3 = sext i32 %g to i64
  %wide.trip.count151 = sext i32 %h to i64
  %wide.trip.count = sext i32 %f to i64
  %arrayidx21.1 = getelementptr inbounds double, double* %arrayidx, i64 1
  %arrayidx21.2 = getelementptr inbounds double, double* %arrayidx, i64 2
  %arrayidx21.3 = getelementptr inbounds double, double* %arrayidx, i64 3
  %arrayidx21.4 = getelementptr inbounds double, double* %arrayidx, i64 4
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.inc47, %for.cond12.preheader.lr.ph
  %4 = phi double [ 0.000000e+00, %for.cond12.preheader.lr.ph ], [ %24, %for.inc47 ]
  %5 = phi double [ 0.000000e+00, %for.cond12.preheader.lr.ph ], [ %25, %for.inc47 ]
  %6 = phi double [ 0.000000e+00, %for.cond12.preheader.lr.ph ], [ %26, %for.inc47 ]
  %7 = phi double [ 0.000000e+00, %for.cond12.preheader.lr.ph ], [ %27, %for.inc47 ]
  %8 = phi double [ 0.000000e+00, %for.cond12.preheader.lr.ph ], [ %28, %for.inc47 ]
  %indvars.iv149 = phi i64 [ %3, %for.cond12.preheader.lr.ph ], [ %indvars.iv.next150, %for.inc47 ]
  br i1 %cmp13138, label %for.cond16.preheader, label %for.inc47

for.cond16.preheader:                             ; preds = %for.cond12.preheader, %for.cond16.preheader
  %9 = phi double [ %23, %for.cond16.preheader ], [ %4, %for.cond12.preheader ]
  %10 = phi double [ %21, %for.cond16.preheader ], [ %5, %for.cond12.preheader ]
  %11 = phi double [ %19, %for.cond16.preheader ], [ %6, %for.cond12.preheader ]
  %12 = phi double [ %17, %for.cond16.preheader ], [ %7, %for.cond12.preheader ]
  %13 = phi double [ %15, %for.cond16.preheader ], [ %8, %for.cond12.preheader ]
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %for.cond16.preheader ], [ %2, %for.cond12.preheader ]
  %arrayidx29 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom22, i64 %indvars.iv149, i64 %indvars.iv147, i64 0
  %14 = load double, double* %arrayidx29, align 8, !tbaa !7
  %15 = tail call double @llvm.fmuladd.f64(double %14, double %14, double %13)
  store double %15, double* %arrayidx, align 8, !tbaa !7
  %arrayidx29.1 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom22, i64 %indvars.iv149, i64 %indvars.iv147, i64 1
  %16 = load double, double* %arrayidx29.1, align 8, !tbaa !7
  %17 = tail call double @llvm.fmuladd.f64(double %16, double %16, double %12)
  store double %17, double* %arrayidx21.1, align 8, !tbaa !7
  %arrayidx29.2 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom22, i64 %indvars.iv149, i64 %indvars.iv147, i64 2
  %18 = load double, double* %arrayidx29.2, align 8, !tbaa !7
  %19 = tail call double @llvm.fmuladd.f64(double %18, double %18, double %11)
  store double %19, double* %arrayidx21.2, align 8, !tbaa !7
  %arrayidx29.3 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom22, i64 %indvars.iv149, i64 %indvars.iv147, i64 3
  %20 = load double, double* %arrayidx29.3, align 8, !tbaa !7
  %21 = tail call double @llvm.fmuladd.f64(double %20, double %20, double %10)
  store double %21, double* %arrayidx21.3, align 8, !tbaa !7
  %arrayidx29.4 = getelementptr inbounds [13 x [13 x [5 x double]]], [13 x [13 x [5 x double]]]* %1, i64 %idxprom22, i64 %indvars.iv149, i64 %indvars.iv147, i64 4
  %22 = load double, double* %arrayidx29.4, align 8, !tbaa !7
  %23 = tail call double @llvm.fmuladd.f64(double %22, double %22, double %9)
  store double %23, double* %arrayidx21.4, align 8, !tbaa !7
  %indvars.iv.next148 = add nsw i64 %indvars.iv147, 1
  %exitcond = icmp eq i64 %indvars.iv.next148, %wide.trip.count
  br i1 %exitcond, label %for.inc47, label %for.cond16.preheader

for.inc47:                                        ; preds = %for.cond16.preheader, %for.cond12.preheader
  %24 = phi double [ %4, %for.cond12.preheader ], [ %23, %for.cond16.preheader ]
  %25 = phi double [ %5, %for.cond12.preheader ], [ %21, %for.cond16.preheader ]
  %26 = phi double [ %6, %for.cond12.preheader ], [ %19, %for.cond16.preheader ]
  %27 = phi double [ %7, %for.cond12.preheader ], [ %17, %for.cond16.preheader ]
  %28 = phi double [ %8, %for.cond12.preheader ], [ %15, %for.cond16.preheader ]
  %indvars.iv.next150 = add nsw i64 %indvars.iv149, 1
  %exitcond152 = icmp eq i64 %indvars.iv.next150, %wide.trip.count151
  br i1 %exitcond152, label %if.end, label %for.cond12.preheader

if.end:                                           ; preds = %for.inc47, %if.then, %entry
  tail call void @_Z7barrierj(i32 1) #6
  %cmp50 = icmp eq i32 %conv2, 0
  br i1 %cmp50, label %for.cond53.preheader, label %if.end91

for.cond53.preheader:                             ; preds = %if.end
  %call55 = tail call i64 @_Z14get_local_sizej(i32 0) #5
  %arrayidx69.1 = getelementptr inbounds double, double* %arrayidx, i64 1
  %arrayidx69.2 = getelementptr inbounds double, double* %arrayidx, i64 2
  %arrayidx69.3 = getelementptr inbounds double, double* %arrayidx, i64 3
  %arrayidx69.4 = getelementptr inbounds double, double* %arrayidx, i64 4
  %cmp56165 = icmp ugt i64 %call55, 1
  br i1 %cmp56165, label %for.body58, label %for.end76

for.body58:                                       ; preds = %for.cond53.preheader, %for.body58
  %indvars.iv166 = phi i64 [ %indvars.iv.next, %for.body58 ], [ 1, %for.cond53.preheader ]
  %mul59 = mul i64 %indvars.iv166, 5
  %idxprom60 = and i64 %mul59, 4294967295
  %arrayidx61 = getelementptr inbounds double, double* %c, i64 %idxprom60
  %29 = load double, double* %arrayidx61, align 8, !tbaa !7
  %30 = load double, double* %arrayidx, align 8, !tbaa !7
  %add70 = fadd double %29, %30
  store double %add70, double* %arrayidx, align 8, !tbaa !7
  %arrayidx67.1 = getelementptr inbounds double, double* %arrayidx61, i64 1
  %31 = load double, double* %arrayidx67.1, align 8, !tbaa !7
  %32 = load double, double* %arrayidx69.1, align 8, !tbaa !7
  %add70.1 = fadd double %31, %32
  store double %add70.1, double* %arrayidx69.1, align 8, !tbaa !7
  %arrayidx67.2 = getelementptr inbounds double, double* %arrayidx61, i64 2
  %33 = load double, double* %arrayidx67.2, align 8, !tbaa !7
  %34 = load double, double* %arrayidx69.2, align 8, !tbaa !7
  %add70.2 = fadd double %33, %34
  store double %add70.2, double* %arrayidx69.2, align 8, !tbaa !7
  %arrayidx67.3 = getelementptr inbounds double, double* %arrayidx61, i64 3
  %35 = load double, double* %arrayidx67.3, align 8, !tbaa !7
  %36 = load double, double* %arrayidx69.3, align 8, !tbaa !7
  %add70.3 = fadd double %35, %36
  store double %add70.3, double* %arrayidx69.3, align 8, !tbaa !7
  %arrayidx67.4 = getelementptr inbounds double, double* %arrayidx61, i64 4
  %37 = load double, double* %arrayidx67.4, align 8, !tbaa !7
  %38 = load double, double* %arrayidx69.4, align 8, !tbaa !7
  %add70.4 = fadd double %37, %38
  store double %add70.4, double* %arrayidx69.4, align 8, !tbaa !7
  %indvars.iv.next = add nuw i64 %indvars.iv166, 1
  %cmp56 = icmp ugt i64 %call55, %indvars.iv.next
  br i1 %cmp56, label %for.body58, label %for.end76

for.end76:                                        ; preds = %for.body58, %for.cond53.preheader
  %call77 = tail call i64 @_Z12get_group_idj(i32 0) #5
  %mul78 = mul i64 %call77, 5
  %arrayidx79 = getelementptr inbounds double, double* %b, i64 %mul78
  %39 = bitcast double* %arrayidx to i64*
  %40 = load i64, i64* %39, align 8, !tbaa !7
  %41 = bitcast double* %arrayidx79 to i64*
  store i64 %40, i64* %41, align 8, !tbaa !7
  %arrayidx85.1 = getelementptr inbounds double, double* %arrayidx, i64 1
  %42 = bitcast double* %arrayidx85.1 to i64*
  %43 = load i64, i64* %42, align 8, !tbaa !7
  %arrayidx87.1 = getelementptr inbounds double, double* %arrayidx79, i64 1
  %44 = bitcast double* %arrayidx87.1 to i64*
  store i64 %43, i64* %44, align 8, !tbaa !7
  %arrayidx85.2 = getelementptr inbounds double, double* %arrayidx, i64 2
  %45 = bitcast double* %arrayidx85.2 to i64*
  %46 = load i64, i64* %45, align 8, !tbaa !7
  %arrayidx87.2 = getelementptr inbounds double, double* %arrayidx79, i64 2
  %47 = bitcast double* %arrayidx87.2 to i64*
  store i64 %46, i64* %47, align 8, !tbaa !7
  %arrayidx85.3 = getelementptr inbounds double, double* %arrayidx, i64 3
  %48 = bitcast double* %arrayidx85.3 to i64*
  %49 = load i64, i64* %48, align 8, !tbaa !7
  %arrayidx87.3 = getelementptr inbounds double, double* %arrayidx79, i64 3
  %50 = bitcast double* %arrayidx87.3 to i64*
  store i64 %49, i64* %50, align 8, !tbaa !7
  %arrayidx85.4 = getelementptr inbounds double, double* %arrayidx, i64 4
  %51 = bitcast double* %arrayidx85.4 to i64*
  %52 = load i64, i64* %51, align 8, !tbaa !7
  %arrayidx87.4 = getelementptr inbounds double, double* %arrayidx79, i64 4
  %53 = bitcast double* %arrayidx87.4 to i64*
  store i64 %52, i64* %53, align 8, !tbaa !7
  br label %if.end91

if.end91:                                         ; preds = %for.end76, %if.end
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
!3 = !{i32 1, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"int", !"int", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
