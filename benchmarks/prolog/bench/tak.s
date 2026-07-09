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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_tak_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 2080], rax
 pop rsi
proc_tak_α_body:
 xchain0_n0_α:
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
# IR_VAR_REF local
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2048], rax
 mov qword ptr [r12 + 2056], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n2_α:
 lea rdi, [r12 + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 2064], rax
 mov qword ptr [r12 + 2072], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2048] -> [r12+2016]
 mov rax, qword ptr [r12 + 2048]
 mov qword ptr [r12 + 2016], rax
 mov rax, qword ptr [r12 + 2056]
 mov qword ptr [r12 + 2024], rax
# marshal arg1 = producer-box slot [r12+2064] -> [r12+2032]
 mov rax, qword ptr [r12 + 2064]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2072]
 mov qword ptr [r12 + 2040], rax
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn8]
 lea rsi, [r12 + 2016]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2000], rax
 mov qword ptr [r12 + 2008], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n4_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1968], rax
 mov qword ptr [r12 + 1976], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+1584]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn12: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn12]
 lea rsi, [r12 + 1584]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 cmp eax, 99
 je proc_tak_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_tak_ω
# IR_VAR_REF local
 xchain0_n6_α:
 lea rdi, [r12 + 2192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1984], rax
 mov qword ptr [r12 + 1992], rdx
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n7_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1968] -> [r12+1936]
 mov rax, qword ptr [r12 + 1968]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1976]
 mov qword ptr [r12 + 1944], rax
# marshal arg1 = producer-box slot [r12+1984] -> [r12+1952]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1960], rax
  .section .rodata
  .Lrkfn18: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn18]
 lea rsi, [r12 + 1936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n9_α:
 lea rdi, [r12 + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n10_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1888], rax
 mov qword ptr [r12 + 1896], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1536] -> [r12+1504]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1504], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1512], rax
# marshal arg1 = producer-box slot [r12+1552] -> [r12+1520]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1528], rax
  .section .rodata
  .Lrkfn24: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 1504]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n12_α:
 lea rdi, [r12 + 2208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1904], rax
 mov qword ptr [r12 + 1912], rdx
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n13_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1456], rax
 mov qword ptr [r12 + 1464], rdx
 jmp xchain0_n16_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
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
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1888] -> [r12+1856]
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1864], rax
# marshal arg1 = producer-box slot [r12+1904] -> [r12+1872]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1880], rax
  .section .rodata
  .Lrkfn32: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn32]
 lea rsi, [r12 + 1856]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n16_α:
 lea rdi, [r12 + 2192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n17_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n5_α
 xchain0_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1456] -> [r12+1424]
 mov rax, qword ptr [r12 + 1456]
 mov qword ptr [r12 + 1424], rax
 mov rax, qword ptr [r12 + 1464]
 mov qword ptr [r12 + 1432], rax
# marshal arg1 = producer-box slot [r12+1472] -> [r12+1440]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1448], rax
  .section .rodata
  .Lrkfn38: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn38]
 lea rsi, [r12 + 1424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1408], rax
 mov qword ptr [r12 + 1416], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n19_α:
 lea rdi, [r12 + 2144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n20_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1376], rax
 mov qword ptr [r12 + 1384], rdx
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n14_α
 xchain0_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1808] -> [r12+1776]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1784], rax
# marshal arg1 = producer-box slot [r12+1824] -> [r12+1792]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1800], rax
  .section .rodata
  .Lrkfn44: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn44]
 lea rsi, [r12 + 1776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n22_α:
 lea rdi, [r12 + 2208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1392], rax
 mov qword ptr [r12 + 1400], rdx
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n23_α:
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 1728], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 1736], rax
 jmp xchain0_n25_α
 xchain0_n23_β:
 jmp xchain0_n5_α
 xchain0_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1376] -> [r12+1344]
 mov rax, qword ptr [r12 + 1376]
 mov qword ptr [r12 + 1344], rax
 mov rax, qword ptr [r12 + 1384]
 mov qword ptr [r12 + 1352], rax
# marshal arg1 = producer-box slot [r12+1392] -> [r12+1360]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1368], rax
  .section .rodata
  .Lrkfn50: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn50]
 lea rsi, [r12 + 1344]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n26_α
 xchain0_n24_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n25_α:
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 1752], rax
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n26_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n14_α
 xchain0_n27_α:
# BOX IR_CALL $cmp_le(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1728] -> [r12+1696]
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1696], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1704], rax
# marshal arg1 = producer-box slot [r12+1744] -> [r12+1712]
 mov rax, qword ptr [r12 + 1744]
 mov qword ptr [r12 + 1712], rax
 mov rax, qword ptr [r12 + 1752]
 mov qword ptr [r12 + 1720], rax
  .section .rodata
  .Lrkfn56: .string "$cmp_le"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn56]
 lea rsi, [r12 + 1696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n5_α
# IR_VAR_REF local
 xchain0_n28_α:
 lea rdi, [r12 + 2144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n29_α:
 lea rdi, [r12 + 2208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1648], rax
 mov qword ptr [r12 + 1656], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n5_α
 xchain0_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1296] -> [r12+1264]
 mov rax, qword ptr [r12 + 1296]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1304]
 mov qword ptr [r12 + 1272], rax
# marshal arg1 = producer-box slot [r12+1312] -> [r12+1280]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1288], rax
  .section .rodata
  .Lrkfn62: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn62]
 lea rsi, [r12 + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n31_α:
 lea rdi, [r12 + 2144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1664], rax
 mov qword ptr [r12 + 1672], rdx
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n32_α:
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 1216], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 1224], rax
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n14_α
 xchain0_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1648] -> [r12+1616]
 mov rax, qword ptr [r12 + 1648]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1656]
 mov qword ptr [r12 + 1624], rax
# marshal arg1 = producer-box slot [r12+1664] -> [r12+1632]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1640], rax
  .section .rodata
  .Lrkfn68: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn68]
 lea rsi, [r12 + 1616]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n34_α:
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 1232], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 1240], rax
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n14_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n35_α:
 lea rax, [rip + xchain0_n5_α]
 mov qword ptr [r12 + 96], rax
 jmp proc_tak_γ
 xchain0_n35_β:
 jmp proc_tak_ω
 xchain0_n36_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1216] -> [r12+1184]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1192], rax
# marshal arg1 = producer-box slot [r12+1232] -> [r12+1200]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn74: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn74]
 lea rsi, [r12 + 1184]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n38_α
 xchain0_n36_β:
 jmp xchain0_n14_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n37_α:
 jmp qword ptr [r12 + 96]
 xchain0_n37_β:
 jmp proc_tak_ω
# IR_VAR_REF local
 xchain0_n38_α:
 lea rdi, [r12 + 2240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n39_α:
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 1144], rax
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp proc_tak_ω
# IR_LIT_INTEGER
 xchain0_n40_α:
 mov qword ptr [r12 + 1152], 6
 mov rax, qword ptr [rip + .Lx81_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp proc_tak_ω
.Lx81_0:
 .quad 1
 xchain0_n41_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1136] -> [r12+1104]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = producer-box slot [r12+1152] -> [r12+1120]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1128], rax
  .section .rodata
  .Lrkfn83: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn83]
 lea rsi, [r12 + 1104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n42_α
 xchain0_n41_β:
 jmp xchain0_n14_α
 xchain0_n42_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1072] -> [r12+1040]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1040], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1048], rax
# marshal arg1 = producer-box slot [r12+1088] -> [r12+1056]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1064], rax
  .section .rodata
  .Lrkfn85: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn85]
 lea rsi, [r12 + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n43_α:
 lea rdi, [r12 + 2240]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n44_α:
 lea rdi, [r12 + 2192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n45_α
 xchain0_n44_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n45_α:
 lea rdi, [r12 + 2208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n46_α:
 lea rdi, [r12 + 2096]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp xchain0_n14_α
 xchain0_n47_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain0_n48_α:
 lea rdi, [r12 + 2224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 784], rax
 mov qword ptr [r12 + 792], rdx
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n49_α:
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 856], rax
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp proc_tak_ω
# IR_LIT_INTEGER
 xchain0_n50_α:
 mov qword ptr [r12 + 864], 6
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [r12 + 872], rax
 jmp xchain0_n51_α
 xchain0_n50_β:
 jmp proc_tak_ω
.Lx99_0:
 .quad 1
 xchain0_n51_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+848] -> [r12+816]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 824], rax
# marshal arg1 = producer-box slot [r12+864] -> [r12+832]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 832], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 840], rax
  .section .rodata
  .Lrkfn101: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn101]
 lea rsi, [r12 + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 800], rax
 mov qword ptr [r12 + 808], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n52_α
 xchain0_n51_β:
 jmp xchain0_n14_α
 xchain0_n52_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+784] -> [r12+752]
 mov rax, qword ptr [r12 + 784]
 mov qword ptr [r12 + 752], rax
 mov rax, qword ptr [r12 + 792]
 mov qword ptr [r12 + 760], rax
# marshal arg1 = producer-box slot [r12+800] -> [r12+768]
 mov rax, qword ptr [r12 + 800]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 808]
 mov qword ptr [r12 + 776], rax
  .section .rodata
  .Lrkfn103: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn103]
 lea rsi, [r12 + 752]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 cmp eax, 99
 je xchain0_n47_β
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n47_β
# IR_VAR_REF local
 xchain0_n53_α:
 lea rdi, [r12 + 2224]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 jmp xchain0_n54_α
 xchain0_n53_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n54_α:
 lea rdi, [r12 + 2208]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain0_n55_α
 xchain0_n54_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n55_α:
 lea rdi, [r12 + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n56_α
 xchain0_n55_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n56_α:
 lea rdi, [r12 + 2112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain0_n57_α
 xchain0_n56_β:
 jmp xchain0_n14_α
 xchain0_n57_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain0_n58_α:
 lea rdi, [r12 + 2160]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain0_n59_α
 xchain0_n58_β:
 jmp xchain0_n14_α
# IR_VAR
 xchain0_n59_α:
 mov rax, qword ptr [r12 + 2208]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 2216]
 mov qword ptr [r12 + 568], rax
 jmp xchain0_n60_α
 xchain0_n59_β:
 jmp proc_tak_ω
# IR_LIT_INTEGER
 xchain0_n60_α:
 mov qword ptr [r12 + 576], 6
 mov rax, qword ptr [rip + .Lx117_0]
 mov qword ptr [r12 + 584], rax
 jmp xchain0_n61_α
 xchain0_n60_β:
 jmp proc_tak_ω
.Lx117_0:
 .quad 1
 xchain0_n61_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+560] -> [r12+528]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 536], rax
# marshal arg1 = producer-box slot [r12+576] -> [r12+544]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 544], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 552], rax
  .section .rodata
  .Lrkfn119: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn119]
 lea rsi, [r12 + 528]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n62_α
 xchain0_n61_β:
 jmp xchain0_n14_α
 xchain0_n62_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+496] -> [r12+464]
 mov rax, qword ptr [r12 + 496]
 mov qword ptr [r12 + 464], rax
 mov rax, qword ptr [r12 + 504]
 mov qword ptr [r12 + 472], rax
# marshal arg1 = producer-box slot [r12+512] -> [r12+480]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 480], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 488], rax
  .section .rodata
  .Lrkfn121: .string "$is_v"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn121]
 lea rsi, [r12 + 464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 cmp eax, 99
 je xchain0_n57_β
 jmp xchain0_n63_α
 xchain0_n62_β:
 jmp xchain0_n57_β
# IR_VAR_REF local
 xchain0_n63_α:
 lea rdi, [r12 + 2160]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n64_α
 xchain0_n63_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n64_α:
 lea rdi, [r12 + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 jmp xchain0_n65_α
 xchain0_n64_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n65_α:
 lea rdi, [r12 + 2192]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 416], rax
 mov qword ptr [r12 + 424], rdx
 jmp xchain0_n66_α
 xchain0_n65_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n66_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 432], rax
 mov qword ptr [r12 + 440], rdx
 jmp xchain0_n67_α
 xchain0_n66_β:
 jmp xchain0_n14_α
 xchain0_n67_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain0_n68_α:
 lea rdi, [r12 + 2096]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n69_α:
 lea rdi, [r12 + 2112]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 256], rax
 mov qword ptr [r12 + 264], rdx
 jmp xchain0_n70_α
 xchain0_n69_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n70_α:
 lea rdi, [r12 + 2128]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain0_n71_α
 xchain0_n70_β:
 jmp xchain0_n14_α
# IR_VAR_REF local
 xchain0_n71_α:
 lea rdi, [r12 + 2144]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n72_α
 xchain0_n71_β:
 jmp xchain0_n14_α
 xchain0_n72_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n73_α:
 lea rax, [rip + xchain0_n14_α]
 mov qword ptr [r12 + 96], rax
 jmp proc_tak_γ
 xchain0_n73_β:
 jmp proc_tak_ω
proc_tak_β:
jmp xchain0_n37_α
proc_tak_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 2080]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_tak_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
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
  call core_lib_init@PLT
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
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 336], rax
 pop rsi
main_α_body:
 xchain142_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn144: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn144]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain142_n1_α
 xchain142_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain142_n1_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx145_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain142_n2_α
 xchain142_n1_β:
 jmp xchain142_n7_α
.Lx145_0:
 .quad 18
# IR_LIT_INTEGER
 xchain142_n2_α:
 mov qword ptr [r12 + 288], 6
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [r12 + 296], rax
 jmp xchain142_n3_α
 xchain142_n2_β:
 jmp xchain142_n7_α
.Lx146_0:
 .quad 12
# IR_LIT_INTEGER
 xchain142_n3_α:
 mov qword ptr [r12 + 304], 6
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain142_n4_α
 xchain142_n3_β:
 jmp xchain142_n7_α
.Lx147_0:
 .quad 6
# IR_VAR_REF local
 xchain142_n4_α:
 lea rdi, [r12 + 352]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 jmp xchain142_n5_α
 xchain142_n4_β:
 jmp xchain142_n7_α
 xchain142_n5_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR
 xchain142_n6_α:
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 184], rax
 jmp xchain142_n8_α
 xchain142_n6_β:
 jmp xchain142_n7_α
 xchain142_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn154: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn154]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain142_n7_β:
 jmp main_ω
 xchain142_n8_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn156: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn156]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain142_n5_β
 jmp xchain142_n9_α
 xchain142_n8_β:
 jmp xchain142_n5_β
# IR_LIT_STRING
 xchain142_n9_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx157_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain142_n10_α
 xchain142_n9_β:
 jmp xchain142_n7_α
.Lx157_0:
 .quad .Lx157_0_s
.Lx157_0_s:
 .string ""
 xchain142_n10_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn159: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn159]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain142_n5_β
 jmp xchain142_n11_α
 xchain142_n10_β:
 jmp xchain142_n5_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain142_n11_α:
 lea rax, [rip + xchain142_n5_β]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain142_n11_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain142_n12_α:
 jmp qword ptr [r12 + 32]
 xchain142_n12_β:
 jmp main_ω
main_β:
jmp xchain142_n12_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 336]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
main_ω:
# GZ-10 PROC FAIL EXIT: write FAILDESCR to frame[0] so rt_call_proc_descr sees failure
mov dword ptr [r12+0], 99
mov dword ptr [r12+4], 0
mov qword ptr [r12+8], 0
mov eax, 99
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
.section .rodata
.S0: .string "bb_call_proc_staged: generator call on an op kind without a callgen.act ZLS2 handle grant (zeta_storage.c widens only IR_PROC_GEN / IR_CALL_PROC_STAGED)"
.text
