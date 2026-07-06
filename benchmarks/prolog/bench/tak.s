  .intel_syntax noprefix
  .text
  .globl proc_tak_α
proc_tak_α:
#=======================================================================================================================
    .global proc_tak_α
    .global proc_tak_β
    .global proc_tak_γ
    .global proc_tak_ω
push r12
  mov r12, rdi
  cmp esi, 0
  jne proc_tak_β
proc_tak_α_body:
xchain0_n0_α:
bb1_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn2]
 lea rsi, [r12 + 128]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_tak_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_tak_ω
xchain0_n1_α:
# IR_VAR_REF local
bb2_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1952], rax
 mov qword ptr [r12 + 1960], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
xchain0_n2_α:
# IR_VAR_REF local
bb3_α:
 lea rdi, [r12 + 2064]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
xchain0_n3_α:
bb4_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1952] -> [r12+1920]
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1920], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1928], rax
# marshal arg1 = producer-box slot [r12+1968] -> [r12+1936]
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1944], rax
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 1920]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
xchain0_n4_α:
# IR_VAR_REF local
bb5_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1872], rax
 mov qword ptr [r12 + 1880], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
xchain0_n5_α:
bb6_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+1488]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 1496], rax
  .section .rodata
  .Lrkfn12: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 1488]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 cmp eax, 99
 je proc_tak_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_tak_ω
xchain0_n6_α:
# IR_VAR_REF local
bb7_α:
 lea rdi, [r12 + 2080]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
xchain0_n7_α:
# IR_VAR_REF local
bb8_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
xchain0_n8_α:
bb9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1872] -> [r12+1840]
 mov rax, qword ptr [r12 + 1872]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1880]
 mov qword ptr [r12 + 1848], rax
# marshal arg1 = producer-box slot [r12+1888] -> [r12+1856]
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1864], rax
  .section .rodata
  .Lrkfn18: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn18]
 lea rsi, [r12 + 1840]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
xchain0_n9_α:
# IR_VAR_REF local
bb10_α:
 lea rdi, [r12 + 2064]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
xchain0_n10_α:
# IR_VAR_REF local
bb11_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1792], rax
 mov qword ptr [r12 + 1800], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n5_α
xchain0_n11_α:
bb12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1440] -> [r12+1408]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1416], rax
# marshal arg1 = producer-box slot [r12+1456] -> [r12+1424]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1432], rax
  .section .rodata
  .Lrkfn24: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 1408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
xchain0_n12_α:
# IR_VAR_REF local
bb13_α:
 lea rdi, [r12 + 2096]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n5_α
xchain0_n13_α:
# IR_VAR_REF local
bb14_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1360], rax
 mov qword ptr [r12 + 1368], rdx
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n14_α
xchain0_n14_α:
bb15_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn30: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn30]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_tak_ω
 jmp proc_tak_ω
 xchain0_n14_β:
 jmp proc_tak_ω
xchain0_n15_α:
bb16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1792] -> [r12+1760]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1768], rax
# marshal arg1 = producer-box slot [r12+1808] -> [r12+1776]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1784], rax
  .section .rodata
  .Lrkfn32: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 1760]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n5_α
xchain0_n16_α:
# IR_VAR_REF local
bb17_α:
 lea rdi, [r12 + 2080]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n14_α
xchain0_n17_α:
# IR_VAR_REF local
bb18_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1712], rax
 mov qword ptr [r12 + 1720], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n5_α
xchain0_n18_α:
bb19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1360] -> [r12+1328]
 mov rax, qword ptr [r12 + 1360]
 mov qword ptr [r12 + 1328], rax
 mov rax, qword ptr [r12 + 1368]
 mov qword ptr [r12 + 1336], rax
# marshal arg1 = producer-box slot [r12+1376] -> [r12+1344]
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1352], rax
  .section .rodata
  .Lrkfn38: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n14_α
xchain0_n19_α:
# IR_VAR_REF local
bb20_α:
 lea rdi, [r12 + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n5_α
xchain0_n20_α:
# IR_VAR_REF local
bb21_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n14_α
xchain0_n21_α:
bb22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1712] -> [r12+1680]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1688], rax
# marshal arg1 = producer-box slot [r12+1728] -> [r12+1696]
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1704], rax
  .section .rodata
  .Lrkfn44: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [r12 + 1680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n5_α
xchain0_n22_α:
# IR_VAR_REF local
bb23_α:
 lea rdi, [r12 + 2096]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n14_α
xchain0_n23_α:
# IR_VAR
bb24_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 1640], rax
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n5_α
xchain0_n24_α:
bb25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1280] -> [r12+1248]
 mov rax, qword ptr [r12 + 1280]
 mov qword ptr [r12 + 1248], rax
 mov rax, qword ptr [r12 + 1288]
 mov qword ptr [r12 + 1256], rax
# marshal arg1 = producer-box slot [r12+1296] -> [r12+1264]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1272], rax
  .section .rodata
  .Lrkfn50: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn50]
 lea rsi, [r12 + 1248]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1232], rax
 mov qword ptr [r12 + 1240], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n14_α
xchain0_n25_α:
# IR_VAR
bb26_α:
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 1656], rax
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n5_α
xchain0_n26_α:
# IR_VAR_REF local
bb27_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1200], rax
 mov qword ptr [r12 + 1208], rdx
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n14_α
xchain0_n27_α:
bb28_α:
# BOX IR_CALL $cmp_le(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1632] -> [r12+1600]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1600], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1608], rax
# marshal arg1 = producer-box slot [r12+1648] -> [r12+1616]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1624], rax
  .section .rodata
  .Lrkfn56: .string "$cmp_le"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn56]
 lea rsi, [r12 + 1600]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n5_α
xchain0_n28_α:
# IR_VAR_REF local
bb29_α:
 lea rdi, [r12 + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1216], rax
 mov qword ptr [r12 + 1224], rdx
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n14_α
xchain0_n29_α:
# IR_VAR_REF local
bb30_α:
 lea rdi, [r12 + 2096]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n5_α
xchain0_n30_α:
bb31_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1200] -> [r12+1168]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [r12+1216] -> [r12+1184]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn62: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn62]
 lea rsi, [r12 + 1168]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n14_α
xchain0_n31_α:
# IR_VAR_REF local
bb32_α:
 lea rdi, [r12 + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n5_α
xchain0_n32_α:
# IR_VAR
bb33_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 1128], rax
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n14_α
xchain0_n33_α:
bb34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1552] -> [r12+1520]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1528], rax
# marshal arg1 = producer-box slot [r12+1568] -> [r12+1536]
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1544], rax
  .section .rodata
  .Lrkfn68: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn68]
 lea rsi, [r12 + 1520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n5_α
xchain0_n34_α:
# IR_VAR
bb35_α:
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 1144], rax
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n14_α
xchain0_n35_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb36_α:
 lea rax, [rip + xchain0_n5_α]
 mov qword ptr [r12 + 96], rax
 jmp proc_tak_γ
 xchain0_n35_β:
 jmp proc_tak_ω
xchain0_n36_α:
bb37_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1120] -> [r12+1088]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1096], rax
# marshal arg1 = producer-box slot [r12+1136] -> [r12+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn74: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn74]
 lea rsi, [r12 + 1088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n38_α
 xchain0_n36_β:
 jmp xchain0_n14_α
xchain0_n37_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb38_α:
 jmp qword ptr [r12 + 96]
 xchain0_n37_β:
 jmp proc_tak_ω
xchain0_n38_α:
# IR_VAR_REF local
bb39_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp xchain0_n14_α
xchain0_n39_α:
# IR_VAR
bb40_α:
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 1048], rax
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp xchain0_n14_α
xchain0_n40_α:
# IR_LIT_INTEGER
bb41_α:
 mov qword ptr [r12 + 1056], 6
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [r12 + 1064], rax
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n14_α
.Lx81_0:
 .quad 1
xchain0_n41_α:
bb42_α:
# BOX IR_CALL $is_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1024] -> [r12+976]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = producer-box slot [r12+1040] -> [r12+992]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1000], rax
# marshal arg2 = producer-box slot [r12+1056] -> [r12+1008]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn83: .string "$is_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n14_α
xchain0_n42_α:
# IR_VAR_REF local
bb43_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n14_α
xchain0_n43_α:
# IR_VAR_REF local
bb44_α:
 lea rdi, [r12 + 2080]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n14_α
xchain0_n44_α:
# IR_VAR_REF local
bb45_α:
 lea rdi, [r12 + 2096]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n14_α
xchain0_n45_α:
# IR_VAR_REF local
bb46_α:
 lea rdi, [r12 + 1984]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp xchain0_n14_α
xchain0_n46_α:
bb47_α:
  .section .rodata
  .Lcall47_pname: .string "tak"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 896]
 mov rdx, qword ptr [r12 + 904]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 912]
 mov rdx, qword ptr [r12 + 920]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 928]
 mov rdx, qword ptr [r12 + 936]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 944]
 mov rdx, qword ptr [r12 + 952]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall47_pname]
 mov esi, 4
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n47_α
xchain0_n46_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n47_α
xchain0_n47_α:
# IR_VAR_REF local
bb48_α:
 lea rdi, [r12 + 2112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp xchain0_n14_α
xchain0_n48_α:
# IR_VAR
bb49_α:
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 792], rax
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp xchain0_n14_α
xchain0_n49_α:
# IR_LIT_INTEGER
bb50_α:
 mov qword ptr [r12 + 800], 6
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [r12 + 808], rax
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n14_α
.Lx97_0:
 .quad 1
xchain0_n50_α:
bb51_α:
# BOX IR_CALL $is_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+768] -> [r12+720]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 728], rax
# marshal arg1 = producer-box slot [r12+784] -> [r12+736]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 736], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 744], rax
# marshal arg2 = producer-box slot [r12+800] -> [r12+752]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 760], rax
  .section .rodata
  .Lrkfn99: .string "$is_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn99]
 lea rsi, [r12 + 720]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 cmp eax, 99
 je xchain0_n46_β
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp xchain0_n46_β
xchain0_n51_α:
# IR_VAR_REF local
bb52_α:
 lea rdi, [r12 + 2112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp xchain0_n14_α
xchain0_n52_α:
# IR_VAR_REF local
bb53_α:
 lea rdi, [r12 + 2096]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n14_α
xchain0_n53_α:
# IR_VAR_REF local
bb54_α:
 lea rdi, [r12 + 2064]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp xchain0_n14_α
xchain0_n54_α:
# IR_VAR_REF local
bb55_α:
 lea rdi, [r12 + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n14_α
xchain0_n55_α:
bb56_α:
  .section .rodata
  .Lcall56_pname: .string "tak"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 640]
 mov rdx, qword ptr [r12 + 648]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 656]
 mov rdx, qword ptr [r12 + 664]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 672]
 mov rdx, qword ptr [r12 + 680]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 688]
 mov rdx, qword ptr [r12 + 696]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall56_pname]
 mov esi, 4
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain0_n46_β
 jmp xchain0_n56_α
xchain0_n55_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 560], rax
 mov qword ptr [r12 + 568], rdx
 cmp eax, 99
 je xchain0_n46_β
 jmp xchain0_n56_α
xchain0_n56_α:
# IR_VAR_REF local
bb57_α:
 lea rdi, [r12 + 2048]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n14_α
xchain0_n57_α:
# IR_VAR
bb58_α:
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 536], rax
 jmp xchain0_n58_α
 xchain0_n57_β:
 jmp xchain0_n14_α
xchain0_n58_α:
# IR_LIT_INTEGER
bb59_α:
 mov qword ptr [r12 + 544], 6
 mov rax, qword ptr [rip + .Lx113_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain0_n59_α
 xchain0_n58_β:
 jmp xchain0_n14_α
.Lx113_0:
 .quad 1
xchain0_n59_α:
bb60_α:
# BOX IR_CALL $is_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+512] -> [r12+464]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [r12+528] -> [r12+480]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 488], rax
# marshal arg2 = producer-box slot [r12+544] -> [r12+496]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn115: .string "$is_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn115]
 lea rsi, [r12 + 464]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain0_n55_β
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp xchain0_n55_β
xchain0_n60_α:
# IR_VAR_REF local
bb61_α:
 lea rdi, [r12 + 2048]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp xchain0_n14_α
xchain0_n61_α:
# IR_VAR_REF local
bb62_α:
 lea rdi, [r12 + 2064]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp xchain0_n14_α
xchain0_n62_α:
# IR_VAR_REF local
bb63_α:
 lea rdi, [r12 + 2080]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp xchain0_n14_α
xchain0_n63_α:
# IR_VAR_REF local
bb64_α:
 lea rdi, [r12 + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n64_α
 xchain0_n63_β:
 jmp xchain0_n14_α
xchain0_n64_α:
bb65_α:
  .section .rodata
  .Lcall65_pname: .string "tak"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 384]
 mov rdx, qword ptr [r12 + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 400]
 mov rdx, qword ptr [r12 + 408]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 416]
 mov rdx, qword ptr [r12 + 424]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 432]
 mov rdx, qword ptr [r12 + 440]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall65_pname]
 mov esi, 4
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain0_n55_β
 jmp xchain0_n65_α
xchain0_n64_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain0_n55_β
 jmp xchain0_n65_α
xchain0_n65_α:
# IR_VAR_REF local
bb66_α:
 lea rdi, [r12 + 1984]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n14_α
xchain0_n66_α:
# IR_VAR_REF local
bb67_α:
 lea rdi, [r12 + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n67_α
 xchain0_n66_β:
 jmp xchain0_n14_α
xchain0_n67_α:
# IR_VAR_REF local
bb68_α:
 lea rdi, [r12 + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n14_α
xchain0_n68_α:
# IR_VAR_REF local
bb69_α:
 lea rdi, [r12 + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n14_α
xchain0_n69_α:
bb70_α:
  .section .rodata
  .Lcall70_pname: .string "tak"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 240]
 mov rdx, qword ptr [r12 + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 256]
 mov rdx, qword ptr [r12 + 264]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall70_pname]
 mov esi, 4
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain0_n64_β
 jmp xchain0_n70_α
xchain0_n69_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain0_n64_β
 jmp xchain0_n70_α
xchain0_n70_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb71_α:
 lea rax, [rip + xchain0_n14_α]
 mov qword ptr [r12 + 96], rax
 jmp proc_tak_γ
 xchain0_n70_β:
 jmp proc_tak_ω
proc_tak_β:
jmp xchain0_n37_α
proc_tak_γ:
mov eax, 1
xor edx, edx
pop r12
ret
proc_tak_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
proc_startup:
  push rbp
  mov rbp, rsp
  .section .rodata
  .Lstartup_pname0: .string "tak"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_tak_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  pop rbp
  ret
  .globl main
main:
  push rbp
  mov rbp, rsp
  push rdi
  push rsi
  call proc_startup
  call rt_frame@PLT
  mov rdi, rax
  xor esi, esi
  call main_α
  xor eax, eax
  mov rsp, rbp
  pop rbp
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
push r12
  mov r12, rdi
main_α_body:
xchain136_n0_α:
bb72_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn138: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn138]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain136_n1_α
 xchain136_n0_β:
 jmp main_ω
xchain136_n1_α:
# IR_LIT_INTEGER
bb73_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx139_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain136_n2_α
 xchain136_n1_β:
 jmp xchain136_n7_α
.Lx139_0:
 .quad 18
xchain136_n2_α:
# IR_LIT_INTEGER
bb74_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain136_n3_α
 xchain136_n2_β:
 jmp xchain136_n7_α
.Lx140_0:
 .quad 12
xchain136_n3_α:
# IR_LIT_INTEGER
bb75_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx141_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain136_n4_α
 xchain136_n3_β:
 jmp xchain136_n7_α
.Lx141_0:
 .quad 6
xchain136_n4_α:
# IR_VAR_REF local
bb76_α:
 lea rdi, [r12 + 336]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain136_n5_α
 xchain136_n4_β:
 jmp xchain136_n7_α
xchain136_n5_α:
bb77_α:
  .section .rodata
  .Lcall77_pname: .string "tak"
  .section .text
  .intel_syntax noprefix
 mov edi, 0
 mov rsi, qword ptr [r12 + 272]
 mov rdx, qword ptr [r12 + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [r12 + 288]
 mov rdx, qword ptr [r12 + 296]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [r12 + 304]
 mov rdx, qword ptr [r12 + 312]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [r12 + 320]
 mov rdx, qword ptr [r12 + 328]
 call rt_arg_stage@PLT
   lea rdi, [rip + .Lcall77_pname]
 mov esi, 4
 call rt_proc_call_gen@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain136_n7_α
 jmp xchain136_n6_α
xchain136_n5_β:
 call rt_proc_resume_gen@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 cmp eax, 99
 je xchain136_n7_α
 jmp xchain136_n6_α
xchain136_n6_α:
# IR_VAR
bb78_α:
 mov rax, qword ptr [r12 + 336]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 344]
 mov qword ptr [r12 + 184], rax
 jmp xchain136_n8_α
 xchain136_n6_β:
 jmp xchain136_n7_α
xchain136_n7_α:
bb79_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn148: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn148]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain136_n7_β:
 jmp main_ω
xchain136_n8_α:
bb80_α:
# BOX IR_CALL writes(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn150: .string "writes"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn150]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain136_n5_β
 jmp xchain136_n9_α
 xchain136_n8_β:
 jmp xchain136_n5_β
xchain136_n9_α:
# IR_LIT_STRING
bb81_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx151_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain136_n10_α
 xchain136_n9_β:
 jmp xchain136_n7_α
.Lx151_0:
 .quad .Lx151_0_s
.Lx151_0_s:
 .string ""
xchain136_n10_α:
bb82_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn153: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn153]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain136_n5_β
 jmp xchain136_n11_α
 xchain136_n10_β:
 jmp xchain136_n5_β
xchain136_n11_α:
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
bb83_α:
 lea rax, [rip + xchain136_n5_β]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain136_n11_β:
 jmp main_ω
xchain136_n12_α:
# IR_INDIRECT_GOTO alt-resume: jmp *t
bb84_α:
 jmp qword ptr [r12 + 32]
 xchain136_n12_β:
 jmp main_ω
main_β:
jmp xchain136_n12_α
main_γ:
mov eax, 1
xor edx, edx
pop r12
ret
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
pop r12
ret
