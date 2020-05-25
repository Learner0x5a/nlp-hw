; ModuleID = 'src/553.src'
source_filename = "src/553.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nounwind uwtable
define dso_local spir_kernel void @A(float* nocapture %a, i32* nocapture readonly %b, i32* nocapture readonly %c, i32* nocapture readonly %d, i32* nocapture readonly %e, i32 %f) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %p = alloca [19 x i32], align 16
  %call = tail call i64 @_Z13get_global_idj(i32 0) #3
  %0 = bitcast [19 x i32]* %p to i8*
  call void @llvm.lifetime.start.p0i8(i64 76, i8* nonnull %0) #4
  %sext = shl i64 %call, 32
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i32, i32* %b, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %arrayidx2 = getelementptr inbounds i32, i32* %c, i64 %idxprom
  %2 = load i32, i32* %arrayidx2, align 4, !tbaa !7
  %arrayidx4 = getelementptr inbounds i32, i32* %d, i64 %idxprom
  %3 = load i32, i32* %arrayidx4, align 4, !tbaa !7
  %arrayidx6 = getelementptr inbounds i32, i32* %e, i64 %idxprom
  %4 = load i32, i32* %arrayidx6, align 4, !tbaa !7
  %arrayidx7 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 0
  store i32 %4, i32* %arrayidx7, align 16, !tbaa !7
  %shr = lshr i32 %4, 30
  %xor = xor i32 %shr, %4
  %mul = mul i32 %xor, 1812433253
  %add = add i32 %mul, 1
  %arrayidx15 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 1
  store i32 %add, i32* %arrayidx15, align 4, !tbaa !7
  %shr.1 = lshr i32 %add, 30
  %xor.1 = xor i32 %shr.1, %add
  %mul.1 = mul i32 %xor.1, 1812433253
  %add.1 = add i32 %mul.1, 2
  %arrayidx15.1 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 2
  store i32 %add.1, i32* %arrayidx15.1, align 8, !tbaa !7
  %shr.2 = lshr i32 %add.1, 30
  %xor.2 = xor i32 %shr.2, %add.1
  %mul.2 = mul i32 %xor.2, 1812433253
  %add.2 = add i32 %mul.2, 3
  %arrayidx15.2 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 3
  store i32 %add.2, i32* %arrayidx15.2, align 4, !tbaa !7
  %shr.3 = lshr i32 %add.2, 30
  %xor.3 = xor i32 %shr.3, %add.2
  %mul.3 = mul i32 %xor.3, 1812433253
  %add.3 = add i32 %mul.3, 4
  %arrayidx15.3 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 4
  store i32 %add.3, i32* %arrayidx15.3, align 16, !tbaa !7
  %shr.4 = lshr i32 %add.3, 30
  %xor.4 = xor i32 %shr.4, %add.3
  %mul.4 = mul i32 %xor.4, 1812433253
  %add.4 = add i32 %mul.4, 5
  %arrayidx15.4 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 5
  store i32 %add.4, i32* %arrayidx15.4, align 4, !tbaa !7
  %shr.5 = lshr i32 %add.4, 30
  %xor.5 = xor i32 %shr.5, %add.4
  %mul.5 = mul i32 %xor.5, 1812433253
  %add.5 = add i32 %mul.5, 6
  %arrayidx15.5 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 6
  store i32 %add.5, i32* %arrayidx15.5, align 8, !tbaa !7
  %shr.6 = lshr i32 %add.5, 30
  %xor.6 = xor i32 %shr.6, %add.5
  %mul.6 = mul i32 %xor.6, 1812433253
  %add.6 = add i32 %mul.6, 7
  %arrayidx15.6 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 7
  store i32 %add.6, i32* %arrayidx15.6, align 4, !tbaa !7
  %shr.7 = lshr i32 %add.6, 30
  %xor.7 = xor i32 %shr.7, %add.6
  %mul.7 = mul i32 %xor.7, 1812433253
  %add.7 = add i32 %mul.7, 8
  %arrayidx15.7 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 8
  store i32 %add.7, i32* %arrayidx15.7, align 16, !tbaa !7
  %shr.8 = lshr i32 %add.7, 30
  %xor.8 = xor i32 %shr.8, %add.7
  %mul.8 = mul i32 %xor.8, 1812433253
  %add.8 = add i32 %mul.8, 9
  %arrayidx15.8 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 9
  store i32 %add.8, i32* %arrayidx15.8, align 4, !tbaa !7
  %shr.9 = lshr i32 %add.8, 30
  %xor.9 = xor i32 %shr.9, %add.8
  %mul.9 = mul i32 %xor.9, 1812433253
  %add.9 = add i32 %mul.9, 10
  %arrayidx15.9 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 10
  store i32 %add.9, i32* %arrayidx15.9, align 8, !tbaa !7
  %shr.10 = lshr i32 %add.9, 30
  %xor.10 = xor i32 %shr.10, %add.9
  %mul.10 = mul i32 %xor.10, 1812433253
  %add.10 = add i32 %mul.10, 11
  %arrayidx15.10 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 11
  store i32 %add.10, i32* %arrayidx15.10, align 4, !tbaa !7
  %shr.11 = lshr i32 %add.10, 30
  %xor.11 = xor i32 %shr.11, %add.10
  %mul.11 = mul i32 %xor.11, 1812433253
  %add.11 = add i32 %mul.11, 12
  %arrayidx15.11 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 12
  store i32 %add.11, i32* %arrayidx15.11, align 16, !tbaa !7
  %shr.12 = lshr i32 %add.11, 30
  %xor.12 = xor i32 %shr.12, %add.11
  %mul.12 = mul i32 %xor.12, 1812433253
  %add.12 = add i32 %mul.12, 13
  %arrayidx15.12 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 13
  store i32 %add.12, i32* %arrayidx15.12, align 4, !tbaa !7
  %shr.13 = lshr i32 %add.12, 30
  %xor.13 = xor i32 %shr.13, %add.12
  %mul.13 = mul i32 %xor.13, 1812433253
  %add.13 = add i32 %mul.13, 14
  %arrayidx15.13 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 14
  store i32 %add.13, i32* %arrayidx15.13, align 8, !tbaa !7
  %shr.14 = lshr i32 %add.13, 30
  %xor.14 = xor i32 %shr.14, %add.13
  %mul.14 = mul i32 %xor.14, 1812433253
  %add.14 = add i32 %mul.14, 15
  %arrayidx15.14 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 15
  store i32 %add.14, i32* %arrayidx15.14, align 4, !tbaa !7
  %shr.15 = lshr i32 %add.14, 30
  %xor.15 = xor i32 %shr.15, %add.14
  %mul.15 = mul i32 %xor.15, 1812433253
  %add.15 = add i32 %mul.15, 16
  %arrayidx15.15 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 16
  store i32 %add.15, i32* %arrayidx15.15, align 16, !tbaa !7
  %shr.16 = lshr i32 %add.15, 30
  %xor.16 = xor i32 %shr.16, %add.15
  %mul.16 = mul i32 %xor.16, 1812433253
  %add.16 = add i32 %mul.16, 17
  %arrayidx15.16 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 17
  store i32 %add.16, i32* %arrayidx15.16, align 4, !tbaa !7
  %shr.17 = lshr i32 %add.16, 30
  %xor.17 = xor i32 %shr.17, %add.16
  %mul.17 = mul i32 %xor.17, 1812433253
  %add.17 = add i32 %mul.17, 18
  %arrayidx15.17 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 18
  store i32 %add.17, i32* %arrayidx15.17, align 8, !tbaa !7
  %conv = trunc i64 %call to i32
  %cmp18103 = icmp sgt i32 %f, 0
  br i1 %cmp18103, label %for.body20.preheader, label %for.end59

for.body20.preheader:                             ; preds = %entry
  %5 = load i32, i32* %arrayidx7, align 16, !tbaa !7
  %wide.trip.count = zext i32 %f to i64
  br label %for.body20

for.body20:                                       ; preds = %for.body20, %for.body20.preheader
  %indvars.iv = phi i64 [ 0, %for.body20.preheader ], [ %indvars.iv.next, %for.body20 ]
  %h.1106 = phi i32 [ 0, %for.body20.preheader ], [ %spec.select, %for.body20 ]
  %m.0104 = phi i32 [ %5, %for.body20.preheader ], [ %6, %for.body20 ]
  %add22 = add nsw i32 %h.1106, 9
  %cmp23 = icmp sgt i32 %h.1106, 17
  %spec.select.v = select i1 %cmp23, i32 -18, i32 1
  %spec.select = add nsw i32 %spec.select.v, %h.1106
  %cmp26 = icmp sgt i32 %add22, 18
  %sub29 = add nsw i32 %h.1106, -10
  %j.0 = select i1 %cmp26, i32 %sub29, i32 %add22
  %idxprom31 = sext i32 %spec.select to i64
  %arrayidx32 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 %idxprom31
  %6 = load i32, i32* %arrayidx32, align 4, !tbaa !7
  %idxprom33 = sext i32 %j.0 to i64
  %arrayidx34 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 %idxprom33
  %7 = load i32, i32* %arrayidx34, align 4, !tbaa !7
  %and35 = and i32 %6, 1
  %shr36 = lshr i32 %m.0104, 1
  %xor37 = xor i32 %7, %shr36
  %tobool = icmp eq i32 %and35, 0
  %cond = select i1 %tobool, i32 0, i32 %1
  %xor39 = xor i32 %xor37, %cond
  %idxprom40 = sext i32 %h.1106 to i64
  %arrayidx41 = getelementptr inbounds [19 x i32], [19 x i32]* %p, i64 0, i64 %idxprom40
  store i32 %xor39, i32* %arrayidx41, align 4, !tbaa !7
  %shr42 = lshr i32 %xor39, 12
  %xor43 = xor i32 %shr42, %xor39
  %shl = shl i32 %xor43, 7
  %and44 = and i32 %shl, %2
  %xor45 = xor i32 %and44, %xor43
  %shl46 = shl i32 %xor45, 15
  %and47 = and i32 %shl46, %3
  %xor48 = xor i32 %and47, %xor45
  %shr49 = lshr i32 %xor48, 18
  %xor50 = xor i32 %shr49, %xor48
  %conv51 = uitofp i32 %xor50 to float
  %add52 = fadd float %conv51, 1.000000e+00
  %div = fmul float %add52, 0x3DF0000000000000
  %8 = trunc i64 %indvars.iv to i32
  %mul53 = shl i32 %8, 12
  %add54 = add nsw i32 %mul53, %conv
  %idxprom55 = sext i32 %add54 to i64
  %arrayidx56 = getelementptr inbounds float, float* %a, i64 %idxprom55
  store float %div, float* %arrayidx56, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for.end59, label %for.body20

for.end59:                                        ; preds = %for.body20, %entry
  call void @llvm.lifetime.end.p0i8(i64 76, i8* nonnull %0) #4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { convergent nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { convergent nounwind readnone }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 1, i32 1, i32 1, i32 1, i32 0}
!4 = !{!"none", !"none", !"none", !"none", !"none", !"none"}
!5 = !{!"float*", !"uint*", !"uint*", !"uint*", !"uint*", !"int"}
!6 = !{!"", !"", !"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"float", !9, i64 0}
