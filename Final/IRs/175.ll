; ModuleID = 'src/175.src'
source_filename = "src/175.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(i32* nocapture %a, i32* nocapture readonly %b, i32* nocapture readonly %c, i32* nocapture %d, i32* nocapture readonly %e, i32* nocapture readonly %f, i32 %g) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %0 = bitcast i32* %c to [2 x i32]*
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv = trunc i64 %call to i32
  %call1 = tail call i64 @_Z15get_global_sizej(i32 0) #2
  %conv2 = trunc i64 %call1 to i32
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i32, i32* %e, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %cmp = icmp slt i32 %1, %g
  br i1 %cmp, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx5 = getelementptr inbounds i32, i32* %f, i64 %idxprom
  %2 = load i32, i32* %arrayidx5, align 4, !tbaa !7
  %add = add nsw i32 %1, 1
  %cmp7122 = icmp sgt i32 %g, 0
  br i1 %cmp7122, label %for.cond9.preheader.preheader, label %for.end35

for.cond9.preheader.preheader:                    ; preds = %if.end
  %wide.trip.count128 = zext i32 %g to i64
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.inc33, %for.cond9.preheader.preheader
  %indvars.iv126 = phi i64 [ 0, %for.cond9.preheader.preheader ], [ %indvars.iv.next127, %for.inc33 ]
  %arrayidx11 = getelementptr inbounds i32, i32* %b, i64 %indvars.iv126
  %3 = load i32, i32* %arrayidx11, align 4, !tbaa !7
  %cmp12120 = icmp sgt i32 %3, 0
  br i1 %cmp12120, label %for.body14, label %for.inc33

for.body14:                                       ; preds = %for.cond9.preheader, %for.inc
  %4 = phi i32 [ %7, %for.inc ], [ %3, %for.cond9.preheader ]
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.inc ], [ 0, %for.cond9.preheader ]
  %arrayidx18 = getelementptr inbounds [2 x i32], [2 x i32]* %0, i64 %indvars.iv126, i64 %indvars.iv124
  %5 = load i32, i32* %arrayidx18, align 4, !tbaa !7
  %cmp19 = icmp sge i32 %5, %1
  %cmp21 = icmp slt i32 %5, %2
  %or.cond = and i1 %cmp19, %cmp21
  br i1 %or.cond, label %if.then23, label %for.inc

if.then23:                                        ; preds = %for.body14
  %add24 = add nsw i32 %5, 1
  %idxprom25 = sext i32 %add24 to i64
  %arrayidx26 = getelementptr inbounds i32, i32* %a, i64 %idxprom25
  %6 = load i32, i32* %arrayidx26, align 4, !tbaa !7
  %add29 = add nsw i32 %6, %4
  store i32 %add29, i32* %arrayidx26, align 4, !tbaa !7
  %.pre = load i32, i32* %arrayidx11, align 4, !tbaa !7
  br label %for.inc

for.inc:                                          ; preds = %for.body14, %if.then23
  %7 = phi i32 [ %4, %for.body14 ], [ %.pre, %if.then23 ]
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1
  %8 = sext i32 %7 to i64
  %cmp12 = icmp slt i64 %indvars.iv.next125, %8
  br i1 %cmp12, label %for.body14, label %for.inc33

for.inc33:                                        ; preds = %for.inc, %for.cond9.preheader
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %exitcond129 = icmp eq i64 %indvars.iv.next127, %wide.trip.count128
  br i1 %exitcond129, label %for.end35, label %for.cond9.preheader

for.end35:                                        ; preds = %for.inc33, %if.end
  %cmp36 = icmp eq i32 %conv, 0
  br i1 %cmp36, label %if.then38, label %if.end40

if.then38:                                        ; preds = %for.end35
  store i32 0, i32* %a, align 4, !tbaa !7
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %for.end35
  %k.0 = phi i32 [ 0, %if.then38 ], [ %add, %for.end35 ]
  %cmp43117 = icmp slt i32 %k.0, %2
  br i1 %cmp43117, label %for.body45.preheader, label %for.end55

for.body45.preheader:                             ; preds = %if.end40
  %9 = sext i32 %k.0 to i64
  %wide.trip.count = sext i32 %2 to i64
  %arrayidx49.phi.trans.insert = getelementptr inbounds i32, i32* %a, i64 %9
  %.pre130 = load i32, i32* %arrayidx49.phi.trans.insert, align 4, !tbaa !7
  %10 = sub nsw i64 %wide.trip.count, %9
  %11 = xor i64 %9, -1
  %12 = add nsw i64 %11, %wide.trip.count
  %xtraiter = and i64 %10, 3
  %lcmp.mod = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod, label %for.body45.prol.loopexit, label %for.body45.prol

for.body45.prol:                                  ; preds = %for.body45.preheader, %for.body45.prol
  %13 = phi i32 [ %add50.prol, %for.body45.prol ], [ %.pre130, %for.body45.preheader ]
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %for.body45.prol ], [ %9, %for.body45.preheader ]
  %prol.iter = phi i64 [ %prol.iter.sub, %for.body45.prol ], [ %xtraiter, %for.body45.preheader ]
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1
  %arrayidx47.prol = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.prol
  %14 = load i32, i32* %arrayidx47.prol, align 4, !tbaa !7
  %add50.prol = add nsw i32 %13, %14
  store i32 %add50.prol, i32* %arrayidx47.prol, align 4, !tbaa !7
  %prol.iter.sub = add i64 %prol.iter, -1
  %prol.iter.cmp = icmp eq i64 %prol.iter.sub, 0
  br i1 %prol.iter.cmp, label %for.body45.prol.loopexit, label %for.body45.prol, !llvm.loop !11

for.body45.prol.loopexit:                         ; preds = %for.body45.prol, %for.body45.preheader
  %.unr = phi i32 [ %.pre130, %for.body45.preheader ], [ %add50.prol, %for.body45.prol ]
  %indvars.iv.unr = phi i64 [ %9, %for.body45.preheader ], [ %indvars.iv.next.prol, %for.body45.prol ]
  %15 = icmp ult i64 %12, 3
  br i1 %15, label %for.end55, label %for.body45

for.body45:                                       ; preds = %for.body45.prol.loopexit, %for.body45
  %16 = phi i32 [ %add50.3, %for.body45 ], [ %.unr, %for.body45.prol.loopexit ]
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %for.body45 ], [ %indvars.iv.unr, %for.body45.prol.loopexit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %arrayidx47 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next
  %17 = load i32, i32* %arrayidx47, align 4, !tbaa !7
  %add50 = add nsw i32 %16, %17
  store i32 %add50, i32* %arrayidx47, align 4, !tbaa !7
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2
  %arrayidx47.1 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.1
  %18 = load i32, i32* %arrayidx47.1, align 4, !tbaa !7
  %add50.1 = add nsw i32 %add50, %18
  store i32 %add50.1, i32* %arrayidx47.1, align 4, !tbaa !7
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3
  %arrayidx47.2 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.2
  %19 = load i32, i32* %arrayidx47.2, align 4, !tbaa !7
  %add50.2 = add nsw i32 %add50.1, %19
  store i32 %add50.2, i32* %arrayidx47.2, align 4, !tbaa !7
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4
  %arrayidx47.3 = getelementptr inbounds i32, i32* %a, i64 %indvars.iv.next.3
  %20 = load i32, i32* %arrayidx47.3, align 4, !tbaa !7
  %add50.3 = add nsw i32 %add50.2, %20
  store i32 %add50.3, i32* %arrayidx47.3, align 4, !tbaa !7
  %exitcond.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.3, label %for.end55, label %for.body45

for.end55:                                        ; preds = %for.body45.prol.loopexit, %for.body45, %if.end40
  %cmp56 = icmp slt i32 %conv, %conv2
  br i1 %cmp56, label %if.then58, label %cleanup

if.then58:                                        ; preds = %for.end55
  %idxprom60 = sext i32 %2 to i64
  %arrayidx61 = getelementptr inbounds i32, i32* %a, i64 %idxprom60
  %21 = load i32, i32* %arrayidx61, align 4, !tbaa !7
  %arrayidx63 = getelementptr inbounds i32, i32* %d, i64 %idxprom
  store i32 %21, i32* %arrayidx63, align 4, !tbaa !7
  br label %cleanup

cleanup:                                          ; preds = %for.end55, %if.then58, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z15get_global_sizej(i32) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"int*", !"int*", !"int*", !"int*", !"int*", !"int*", !"int"}
!6 = !{!"", !"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
