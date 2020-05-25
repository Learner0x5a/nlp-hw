; ModuleID = 'src/303.src'
source_filename = "src/303.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(double* nocapture readonly %a, double* nocapture readonly %b, double* nocapture %c, double* nocapture %d, i32 %e, i32 %f, i32 %g, i32 %h) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %0 = trunc i64 %call to i32
  %conv1 = add i32 %0, %g
  %call2 = tail call i64 @_Z12get_local_idj(i32 0) #3
  %conv3 = trunc i64 %call2 to i32
  %cmp = icmp slt i32 %conv1, %h
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = bitcast double* %a to [14 x double]*
  %2 = bitcast double* %b to [14 x double]*
  %cmp5111 = icmp slt i32 %e, %f
  br i1 %cmp5111, label %for.body.lr.ph, label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %idxprom = sext i32 %conv1 to i64
  %add15 = add nsw i32 %conv1, 1
  %idxprom16 = sext i32 %add15 to i64
  %3 = sext i32 %e to i64
  %wide.trip.count = sext i32 %f to i64
  %arrayidx8.phi.trans.insert = getelementptr inbounds [14 x double], [14 x double]* %1, i64 %idxprom, i64 %3
  %.pre = load double, double* %arrayidx8.phi.trans.insert, align 8, !tbaa !7
  %arrayidx19.phi.trans.insert = getelementptr inbounds [14 x double], [14 x double]* %1, i64 %idxprom16, i64 %3
  %.pre116 = load double, double* %arrayidx19.phi.trans.insert, align 8, !tbaa !7
  %arrayidx31.phi.trans.insert = getelementptr inbounds [14 x double], [14 x double]* %2, i64 %idxprom, i64 %3
  %.pre117 = load double, double* %arrayidx31.phi.trans.insert, align 8, !tbaa !7
  %arrayidx43.phi.trans.insert = getelementptr inbounds [14 x double], [14 x double]* %2, i64 %idxprom16, i64 %3
  %.pre118 = load double, double* %arrayidx43.phi.trans.insert, align 8, !tbaa !7
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %4 = phi double [ %.pre118, %for.body.lr.ph ], [ %11, %for.body ]
  %5 = phi double [ %.pre117, %for.body.lr.ph ], [ %10, %for.body ]
  %6 = phi double [ %.pre116, %for.body.lr.ph ], [ %9, %for.body ]
  %7 = phi double [ %.pre, %for.body.lr.ph ], [ %8, %for.body ]
  %indvars.iv114 = phi i64 [ %3, %for.body.lr.ph ], [ %indvars.iv.next115, %for.body ]
  %l.0112 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add52, %for.body ]
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1
  %arrayidx13 = getelementptr inbounds [14 x double], [14 x double]* %1, i64 %idxprom, i64 %indvars.iv.next115
  %8 = load double, double* %arrayidx13, align 8, !tbaa !7
  %add14 = fadd double %7, %8
  %add20 = fadd double %add14, %6
  %arrayidx26 = getelementptr inbounds [14 x double], [14 x double]* %1, i64 %idxprom16, i64 %indvars.iv.next115
  %9 = load double, double* %arrayidx26, align 8, !tbaa !7
  %add27 = fadd double %add20, %9
  %add32 = fadd double %add27, %5
  %arrayidx37 = getelementptr inbounds [14 x double], [14 x double]* %2, i64 %idxprom, i64 %indvars.iv.next115
  %10 = load double, double* %arrayidx37, align 8, !tbaa !7
  %add38 = fadd double %add32, %10
  %add44 = fadd double %add38, %4
  %arrayidx50 = getelementptr inbounds [14 x double], [14 x double]* %2, i64 %idxprom16, i64 %indvars.iv.next115
  %11 = load double, double* %arrayidx50, align 8, !tbaa !7
  %add51 = fadd double %add44, %11
  %add52 = fadd double %l.0112, %add51
  %exitcond = icmp eq i64 %indvars.iv.next115, %wide.trip.count
  br i1 %exitcond, label %if.end, label %for.body

if.end:                                           ; preds = %for.body, %if.then, %entry
  %l.1 = phi double [ 0.000000e+00, %entry ], [ 0.000000e+00, %if.then ], [ %add52, %for.body ]
  %sext = shl i64 %call2, 32
  %idxprom53 = ashr exact i64 %sext, 32
  %arrayidx54 = getelementptr inbounds double, double* %d, i64 %idxprom53
  store double %l.1, double* %arrayidx54, align 8, !tbaa !7
  tail call void @_Z7barrierj(i32 1) #4
  %cmp55 = icmp eq i32 %conv3, 0
  br i1 %cmp55, label %for.cond58.preheader, label %if.end72

for.cond58.preheader:                             ; preds = %if.end
  %call60 = tail call i64 @_Z14get_local_sizej(i32 0) #3
  %cmp61119 = icmp ugt i64 %call60, 1
  br i1 %cmp61119, label %for.body63.preheader, label %for.end69

for.body63.preheader:                             ; preds = %for.cond58.preheader
  %12 = add i64 %call60, -1
  %13 = add i64 %call60, -2
  %xtraiter = and i64 %12, 7
  %14 = icmp ult i64 %13, 7
  br i1 %14, label %for.end69.loopexit.unr-lcssa, label %for.body63.preheader.new

for.body63.preheader.new:                         ; preds = %for.body63.preheader
  %unroll_iter = sub i64 %12, %xtraiter
  br label %for.body63

for.body63:                                       ; preds = %for.body63, %for.body63.preheader.new
  %l.2121 = phi double [ %l.1, %for.body63.preheader.new ], [ %add66.7, %for.body63 ]
  %indvars.iv120 = phi i64 [ 1, %for.body63.preheader.new ], [ %indvars.iv.next.7, %for.body63 ]
  %niter = phi i64 [ %unroll_iter, %for.body63.preheader.new ], [ %niter.nsub.7, %for.body63 ]
  %arrayidx65 = getelementptr inbounds double, double* %d, i64 %indvars.iv120
  %15 = load double, double* %arrayidx65, align 8, !tbaa !7
  %add66 = fadd double %l.2121, %15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv120, 1
  %arrayidx65.1 = getelementptr inbounds double, double* %d, i64 %indvars.iv.next
  %16 = load double, double* %arrayidx65.1, align 8, !tbaa !7
  %add66.1 = fadd double %add66, %16
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv120, 2
  %arrayidx65.2 = getelementptr inbounds double, double* %d, i64 %indvars.iv.next.1
  %17 = load double, double* %arrayidx65.2, align 8, !tbaa !7
  %add66.2 = fadd double %add66.1, %17
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv120, 3
  %arrayidx65.3 = getelementptr inbounds double, double* %d, i64 %indvars.iv.next.2
  %18 = load double, double* %arrayidx65.3, align 8, !tbaa !7
  %add66.3 = fadd double %add66.2, %18
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv120, 4
  %arrayidx65.4 = getelementptr inbounds double, double* %d, i64 %indvars.iv.next.3
  %19 = load double, double* %arrayidx65.4, align 8, !tbaa !7
  %add66.4 = fadd double %add66.3, %19
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv120, 5
  %arrayidx65.5 = getelementptr inbounds double, double* %d, i64 %indvars.iv.next.4
  %20 = load double, double* %arrayidx65.5, align 8, !tbaa !7
  %add66.5 = fadd double %add66.4, %20
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv120, 6
  %arrayidx65.6 = getelementptr inbounds double, double* %d, i64 %indvars.iv.next.5
  %21 = load double, double* %arrayidx65.6, align 8, !tbaa !7
  %add66.6 = fadd double %add66.5, %21
  %indvars.iv.next.6 = add nuw i64 %indvars.iv120, 7
  %arrayidx65.7 = getelementptr inbounds double, double* %d, i64 %indvars.iv.next.6
  %22 = load double, double* %arrayidx65.7, align 8, !tbaa !7
  %add66.7 = fadd double %add66.6, %22
  %indvars.iv.next.7 = add nuw i64 %indvars.iv120, 8
  %niter.nsub.7 = add i64 %niter, -8
  %niter.ncmp.7 = icmp eq i64 %niter.nsub.7, 0
  br i1 %niter.ncmp.7, label %for.end69.loopexit.unr-lcssa, label %for.body63

for.end69.loopexit.unr-lcssa:                     ; preds = %for.body63, %for.body63.preheader
  %add66.lcssa.ph = phi double [ undef, %for.body63.preheader ], [ %add66.7, %for.body63 ]
  %l.2121.unr = phi double [ %l.1, %for.body63.preheader ], [ %add66.7, %for.body63 ]
  %indvars.iv120.unr = phi i64 [ 1, %for.body63.preheader ], [ %indvars.iv.next.7, %for.body63 ]
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.end69, label %for.body63.epil

for.body63.epil:                                  ; preds = %for.end69.loopexit.unr-lcssa, %for.body63.epil
  %l.2121.epil = phi double [ %add66.epil, %for.body63.epil ], [ %l.2121.unr, %for.end69.loopexit.unr-lcssa ]
  %indvars.iv120.epil = phi i64 [ %indvars.iv.next.epil, %for.body63.epil ], [ %indvars.iv120.unr, %for.end69.loopexit.unr-lcssa ]
  %epil.iter = phi i64 [ %epil.iter.sub, %for.body63.epil ], [ %xtraiter, %for.end69.loopexit.unr-lcssa ]
  %arrayidx65.epil = getelementptr inbounds double, double* %d, i64 %indvars.iv120.epil
  %23 = load double, double* %arrayidx65.epil, align 8, !tbaa !7
  %add66.epil = fadd double %l.2121.epil, %23
  %indvars.iv.next.epil = add nuw i64 %indvars.iv120.epil, 1
  %epil.iter.sub = add i64 %epil.iter, -1
  %epil.iter.cmp = icmp eq i64 %epil.iter.sub, 0
  br i1 %epil.iter.cmp, label %for.end69, label %for.body63.epil, !llvm.loop !11

for.end69:                                        ; preds = %for.end69.loopexit.unr-lcssa, %for.body63.epil, %for.cond58.preheader
  %l.2.lcssa = phi double [ %l.1, %for.cond58.preheader ], [ %add66.lcssa.ph, %for.end69.loopexit.unr-lcssa ], [ %add66.epil, %for.body63.epil ]
  %call70 = tail call i64 @_Z12get_group_idj(i32 0) #3
  %arrayidx71 = getelementptr inbounds double, double* %c, i64 %call70
  store double %l.2.lcssa, double* %arrayidx71, align 8, !tbaa !7
  br label %if.end72

if.end72:                                         ; preds = %for.end69, %if.end
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
!3 = !{i32 1, i32 1, i32 1, i32 3, i32 0, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"double*", !"double*", !"double*", !"double*", !"int", !"int", !"int", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"double", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
