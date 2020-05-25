; ModuleID = 'src/1.src'
source_filename = "src/1.src"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: convergent nofree nounwind uwtable
define dso_local spir_kernel void @A(i32* nocapture %a, i32 %b, i32 %c, i32 %d) local_unnamed_addr #0 !kernel_arg_addr_space !3 !kernel_arg_access_qual !4 !kernel_arg_type !5 !kernel_arg_base_type !5 !kernel_arg_type_qual !6 {
entry:
  %call = tail call i64 @_Z13get_global_idj(i32 0) #2
  %conv = trunc i64 %call to i32
  %sub = sub i32 %b, %c
  %shl.mask = and i32 %sub, 31
  %shl = shl nuw i32 1, %shl.mask
  %mul = shl i32 %shl, 1
  %0 = add i32 %shl, -1
  %rem = and i32 %0, %conv
  %div = lshr i32 %conv, %shl.mask
  %mul1 = mul i32 %mul, %div
  %add = add i32 %mul1, %rem
  %add2 = add i32 %add, %shl
  %idxprom = zext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, i32* %a, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !7
  %idxprom3 = zext i32 %add2 to i64
  %arrayidx4 = getelementptr inbounds i32, i32* %a, i64 %idxprom3
  %2 = load i32, i32* %arrayidx4, align 4, !tbaa !7
  %shl.mask5 = and i32 %b, 31
  %3 = shl nuw i32 1, %shl.mask5
  %4 = and i32 %3, %conv
  %cmp = icmp eq i32 %4, 0
  %sub10 = sub i32 1, %d
  %spec.select = select i1 %cmp, i32 %d, i32 %sub10
  %cmp11 = icmp ugt i32 %1, %2
  %n.0 = select i1 %cmp11, i32 %1, i32 %2
  %o.0 = select i1 %cmp11, i32 %2, i32 %1
  %tobool = icmp eq i32 %spec.select, 0
  %n.0.o.0 = select i1 %tobool, i32 %n.0, i32 %o.0
  %o.0.n.0 = select i1 %tobool, i32 %o.0, i32 %n.0
  store i32 %n.0.o.0, i32* %arrayidx, align 4, !tbaa !7
  store i32 %o.0.n.0, i32* %arrayidx4, align 4, !tbaa !7
  ret void
}

; Function Attrs: convergent nounwind readnone
declare dso_local i64 @_Z13get_global_idj(i32) local_unnamed_addr #1

attributes #0 = { convergent nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "uniform-work-group-size"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { convergent nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "denorms-are-zero"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { convergent nounwind readnone }

!llvm.module.flags = !{!0}
!opencl.ocl.version = !{!1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 2, i32 0}
!2 = !{!"clang version 10.0.0 "}
!3 = !{i32 1, i32 0, i32 0, i32 0}
!4 = !{!"none", !"none", !"none", !"none"}
!5 = !{!"uint*", !"uint", !"uint", !"uint"}
!6 = !{!"", !"", !"", !""}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
