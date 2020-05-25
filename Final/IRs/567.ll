; ModuleID = 'src/567.src'
source_filename = "src/567.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%opencl.image2d_ro_t = type opaque

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(i16* nocapture %a, i16* nocapture readonly %b, i32 %c, i32 %d, %opencl.image2d_ro_t* nocapture readnone %e) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z12get_local_idj(i32 0) #2
  %div = lshr i64 %call, 5
  %0 = trunc i64 %div to i32
  %conv = and i32 %0, 124
  %div3 = lshr i64 %call, 12
  %conv4 = trunc i64 %div3 to i32
  %call5 = tail call i64 @_Z12get_group_idj(i32 0) #2
  %conv6 = trunc i64 %call5 to i32
  %call7 = tail call i64 @_Z12get_group_idj(i32 1) #2
  %conv8 = trunc i64 %call7 to i32
  %mul = shl nsw i32 %c, 4
  %mul9 = shl nsw i32 %conv6, 7
  %add = or i32 %conv, %mul9
  %shr = ashr exact i32 %add, 2
  %mul10 = shl nsw i32 %conv8, 4
  %add11 = add nsw i32 %mul10, %conv4
  %shr12 = ashr i32 %add11, 2
  %and = and i32 %0, 3
  %cmp = icmp slt i32 %shr, %c
  %cmp19 = icmp slt i32 %shr12, %d
  %or.cond = and i1 %cmp, %cmp19
  br i1 %or.cond, label %if.then, label %if.end79

if.then:                                          ; preds = %entry
  %add21 = or i32 %add, %and
  %shl22 = shl i32 %add21, 2
  %shl25 = shl i32 %add11, 2
  %call.tr = trunc i64 %call to i32
  %1 = shl i32 %call.tr, 3
  %conv32 = and i32 %1, 248
  %mul34 = mul i32 %c, 25600
  %mul36 = mul i32 %mul34, %d
  %mul37 = mul nsw i32 %shr12, %c
  %add38 = add nsw i32 %mul37, %shr
  %mul40 = shl i32 %add38, 14
  %add41 = add nsw i32 %mul40, %mul36
  %mul42 = and i32 %shl25, 12
  %add43 = or i32 %mul42, %and
  %mul44 = shl nuw nsw i32 %add43, 10
  %add45 = add nsw i32 %add41, %mul44
  %idx.ext = sext i32 %add45 to i64
  %add.ptr = getelementptr inbounds i16, i16* %a, i64 %idx.ext
  %2 = icmp ult i32 %conv32, 24
  %3 = select i1 %2, i32 %conv32, i32 24
  %spec.select = add nuw nsw i32 %3, 8
  %cmp49136 = icmp slt i32 %conv32, %spec.select
  br i1 %cmp49136, label %for.cond55.preheader.preheader, label %if.end79

for.cond55.preheader.preheader:                   ; preds = %if.then
  %4 = or i32 %shl25, 3
  %reass.mul.3 = mul i32 %4, %mul
  %add65.3 = add i32 %reass.mul.3, %shl22
  %idxprom.3145 = sext i32 %add65.3 to i64
  %arrayidx.3146 = getelementptr inbounds i16, i16* %b, i64 %idxprom.3145
  %5 = shl i64 %call, 3
  %6 = and i64 %5, 248
  %7 = zext i32 %spec.select to i64
  %reass.mul = mul i32 %shl25, %mul
  %add65 = add i32 %reass.mul, %shl22
  %idxprom = sext i32 %add65 to i64
  %arrayidx = getelementptr inbounds i16, i16* %b, i64 %idxprom
  %add66.1 = or i32 %add65, 1
  %idxprom.1 = sext i32 %add66.1 to i64
  %arrayidx.1 = getelementptr inbounds i16, i16* %b, i64 %idxprom.1
  %add66.2 = or i32 %add65, 2
  %idxprom.2 = sext i32 %add66.2 to i64
  %arrayidx.2 = getelementptr inbounds i16, i16* %b, i64 %idxprom.2
  %add66.3 = or i32 %add65, 3
  %idxprom.3 = sext i32 %add66.3 to i64
  %arrayidx.3 = getelementptr inbounds i16, i16* %b, i64 %idxprom.3
  %8 = or i32 %shl25, 1
  %reass.mul.1 = mul i32 %8, %mul
  %add65.1 = add i32 %reass.mul.1, %shl22
  %idxprom.1139 = sext i32 %add65.1 to i64
  %arrayidx.1140 = getelementptr inbounds i16, i16* %b, i64 %idxprom.1139
  %add66.1.1 = or i32 %add65.1, 1
  %idxprom.1.1 = sext i32 %add66.1.1 to i64
  %arrayidx.1.1 = getelementptr inbounds i16, i16* %b, i64 %idxprom.1.1
  %add66.2.1 = or i32 %add65.1, 2
  %idxprom.2.1 = sext i32 %add66.2.1 to i64
  %arrayidx.2.1 = getelementptr inbounds i16, i16* %b, i64 %idxprom.2.1
  %add66.3.1 = or i32 %add65.1, 3
  %idxprom.3.1 = sext i32 %add66.3.1 to i64
  %arrayidx.3.1 = getelementptr inbounds i16, i16* %b, i64 %idxprom.3.1
  %9 = or i32 %shl25, 2
  %reass.mul.2 = mul i32 %9, %mul
  %add65.2 = add i32 %reass.mul.2, %shl22
  %idxprom.2142 = sext i32 %add65.2 to i64
  %arrayidx.2143 = getelementptr inbounds i16, i16* %b, i64 %idxprom.2142
  %add66.1.2 = or i32 %add65.2, 1
  %idxprom.1.2 = sext i32 %add66.1.2 to i64
  %arrayidx.1.2 = getelementptr inbounds i16, i16* %b, i64 %idxprom.1.2
  %add66.2.2 = or i32 %add65.2, 2
  %idxprom.2.2 = sext i32 %add66.2.2 to i64
  %arrayidx.2.2 = getelementptr inbounds i16, i16* %b, i64 %idxprom.2.2
  %add66.3.2 = or i32 %add65.2, 3
  %idxprom.3.2 = sext i32 %add66.3.2 to i64
  %arrayidx.3.2 = getelementptr inbounds i16, i16* %b, i64 %idxprom.3.2
  %add66.1.3 = or i32 %add65.3, 1
  %idxprom.1.3 = sext i32 %add66.1.3 to i64
  %arrayidx.1.3 = getelementptr inbounds i16, i16* %b, i64 %idxprom.1.3
  %add66.2.3 = or i32 %add65.3, 2
  %idxprom.2.3 = sext i32 %add66.2.3 to i64
  %arrayidx.2.3 = getelementptr inbounds i16, i16* %b, i64 %idxprom.2.3
  %add66.3.3 = or i32 %add65.3, 3
  %idxprom.3.3 = sext i32 %add66.3.3 to i64
  %arrayidx.3.3 = getelementptr inbounds i16, i16* %b, i64 %idxprom.3.3
  br label %for.cond55.preheader

for.cond55.preheader:                             ; preds = %for.cond55.preheader.preheader, %for.cond55.preheader
  %indvars.iv = phi i64 [ %6, %for.cond55.preheader.preheader ], [ %indvars.iv.next, %for.cond55.preheader ]
  %10 = load i16, i16* %arrayidx, align 2, !tbaa !7
  %11 = load i16, i16* %arrayidx.1, align 2, !tbaa !7
  %add69.1 = add i16 %11, %10
  %12 = load i16, i16* %arrayidx.2, align 2, !tbaa !7
  %add69.2 = add i16 %12, %add69.1
  %13 = load i16, i16* %arrayidx.3, align 2, !tbaa !7
  %add69.3 = add i16 %13, %add69.2
  %14 = load i16, i16* %arrayidx.1140, align 2, !tbaa !7
  %add69.1141 = add i16 %14, %add69.3
  %15 = load i16, i16* %arrayidx.1.1, align 2, !tbaa !7
  %add69.1.1 = add i16 %15, %add69.1141
  %16 = load i16, i16* %arrayidx.2.1, align 2, !tbaa !7
  %add69.2.1 = add i16 %16, %add69.1.1
  %17 = load i16, i16* %arrayidx.3.1, align 2, !tbaa !7
  %add69.3.1 = add i16 %17, %add69.2.1
  %18 = load i16, i16* %arrayidx.2143, align 2, !tbaa !7
  %add69.2144 = add i16 %18, %add69.3.1
  %19 = load i16, i16* %arrayidx.1.2, align 2, !tbaa !7
  %add69.1.2 = add i16 %19, %add69.2144
  %20 = load i16, i16* %arrayidx.2.2, align 2, !tbaa !7
  %add69.2.2 = add i16 %20, %add69.1.2
  %21 = load i16, i16* %arrayidx.3.2, align 2, !tbaa !7
  %add69.3.2 = add i16 %21, %add69.2.2
  %22 = load i16, i16* %arrayidx.3146, align 2, !tbaa !7
  %add69.3147 = add i16 %22, %add69.3.2
  %23 = load i16, i16* %arrayidx.1.3, align 2, !tbaa !7
  %add69.1.3 = add i16 %23, %add69.3147
  %24 = load i16, i16* %arrayidx.2.3, align 2, !tbaa !7
  %add69.2.3 = add i16 %24, %add69.1.3
  %25 = load i16, i16* %arrayidx.3.3, align 2, !tbaa !7
  %add69.3.3 = add i16 %25, %add69.2.3
  %arrayidx75 = getelementptr inbounds i16, i16* %add.ptr, i64 %indvars.iv
  store i16 %add69.3.3, i16* %arrayidx75, align 2, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp49 = icmp ult i64 %indvars.iv.next, %7
  br i1 %cmp49, label %for.cond55.preheader, label %if.end79

if.end79:                                         ; preds = %for.cond55.preheader, %if.then, %entry
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_local_idj(i32) local_unnamed_addr #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z12get_group_idj(i32) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 0, i32 0, i32 1}
!4 = !{!"none", !"none", !"none", !"none", !"read_only"}
!5 = !{!"ushort*", !"ushort*", !"int", !"int", !"image2d_t"}
!6 = !{!"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"short", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
