declare {i64, i1} @llvm.sadd.with.overflow.i64 (i64, i64)
declare {i64, i1} @llvm.smul.with.overflow.i64 (i64, i64)
declare void @_Bio__println (i64)
declare void @_bal_panic (i64)
define void @_B_main () {
  %_0 = alloca i64, align 8
  %_1 = alloca i64, align 8
  %_2 = alloca i1, align 8
  %_3 = alloca i64, align 8
  %_4 = alloca i64, align 8
  %_5 = alloca i1, align 8
  %_6 = alloca i64, align 8
  %_7 = alloca i64, align 8
  %_8 = alloca i64, align 8
  %_9 = alloca i1, align 8
  %_10 = alloca i1, align 8
  %_11 = alloca i64, align 8
  %_12 = alloca i1, align 8
  %_13 = alloca i1, align 8
  %_14 = alloca i64, align 8
  %_15 = alloca i1, align 8
  %_16 = alloca i1, align 8
  %_17 = alloca i1, align 8
  %_18 = alloca i1, align 8
  %_19 = alloca i1, align 8
  %_20 = alloca i1, align 8
  %_21 = alloca i1, align 8
  %_22 = alloca i64, align 8
  %_23 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 -2, i64 5)
  %_24 = extractvalue {i64, i1} %_23, 1
  br i1 %_24, label %L3, label %L2
L1:
  %_47 = load i64, i64* %_22, align 8
  call void @_bal_panic (i64 %_47)
  unreachable
L2:
  %_25 = extractvalue {i64, i1} %_23, 0
  store i64 %_25, i64* %_1, align 8
  %_26 = load i64, i64* %_1, align 8
  call void @_Bio__println (i64 %_26)
  store i1 0, i1* %_2, align 8
  %_27 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 5, i64 -2)
  %_28 = extractvalue {i64, i1} %_27, 1
  br i1 %_28, label %L5, label %L4
L3:
  store i64 1, i64* %_22, align 8
  br label %L1
L4:
  %_29 = extractvalue {i64, i1} %_27, 0
  store i64 %_29, i64* %_4, align 8
  %_30 = load i64, i64* %_4, align 8
  call void @_Bio__println (i64 %_30)
  store i1 0, i1* %_5, align 8
  %_31 = call {i64, i1} @llvm.smul.with.overflow.i64 (i64 -2, i64 3)
  %_32 = extractvalue {i64, i1} %_31, 1
  br i1 %_32, label %L7, label %L6
L5:
  store i64 1, i64* %_22, align 8
  br label %L1
L6:
  %_33 = extractvalue {i64, i1} %_31, 0
  store i64 %_33, i64* %_7, align 8
  %_34 = load i64, i64* %_7, align 8
  %_35 = call {i64, i1} @llvm.sadd.with.overflow.i64 (i64 5, i64 %_34)
  %_36 = extractvalue {i64, i1} %_35, 1
  br i1 %_36, label %L9, label %L8
L7:
  store i64 1, i64* %_22, align 8
  br label %L1
L8:
  %_37 = extractvalue {i64, i1} %_35, 0
  store i64 %_37, i64* %_8, align 8
  %_38 = load i64, i64* %_8, align 8
  call void @_Bio__println (i64 %_38)
  store i1 0, i1* %_9, align 8
  %_39 = icmp slt i64 -5, 2
  store i1 %_39, i1* %_10, align 8
  %_40 = load i1, i1* %_10, align 8
  call void @_B_printBoolean (i1 %_40)
  store i1 0, i1* %_12, align 8
  %_41 = icmp sge i64 2, -5
  store i1 %_41, i1* %_13, align 8
  %_42 = load i1, i1* %_13, align 8
  call void @_B_printBoolean (i1 %_42)
  store i1 0, i1* %_15, align 8
  %_43 = icmp uge i1 1, 0
  store i1 %_43, i1* %_16, align 8
  %_44 = load i1, i1* %_16, align 8
  call void @_B_printBoolean (i1 %_44)
  store i1 0, i1* %_18, align 8
  %_45 = icmp ule i1 0, 1
  store i1 %_45, i1* %_19, align 8
  %_46 = load i1, i1* %_19, align 8
  call void @_B_printBoolean (i1 %_46)
  store i1 0, i1* %_21, align 8
  ret void
L9:
  store i64 1, i64* %_22, align 8
  br label %L1
}
define internal void @_B_printBoolean (i1 %_0) {
  %x = alloca i1, align 8
  %_1 = alloca i1, align 8
  %_2 = alloca i1, align 8
  store i1 %_0, i1* %x, align 8
  %_3 = load i1, i1* %x, align 8
  br i1 %_3, label %L1, label %L2
L1:
  call void @_Bio__println (i64 1)
  store i1 0, i1* %_1, align 8
  br label %L3
L2:
  call void @_Bio__println (i64 0)
  store i1 0, i1* %_2, align 8
  br label %L3
L3:
  ret void
}