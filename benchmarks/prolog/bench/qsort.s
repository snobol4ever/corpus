  .intel_syntax noprefix
  .text
  .globl proc_partition_α
proc_partition_α:
#=======================================================================================================================
    .global proc_partition_α
    .global proc_partition_β
    .global proc_partition_γ
    .global proc_partition_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_partition_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1936], rax
 pop rsi
proc_partition_α_body:
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
 je proc_partition_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_partition_ω
# IR_VAR_REF local
 xchain0_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1808], rax
 mov qword ptr [r12 + 1816], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n2_α:
 mov qword ptr [r12 + 1920], 1
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [r12 + 1928], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp proc_partition_ω
.Lx5_0:
 .quad .Lx5_0_s
.Lx5_0_s:
 .string "."
# IR_VAR_REF local
 xchain0_n3_α:
 lea rdi, [r12 + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1840], rax
 mov qword ptr [r12 + 1848], rdx
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp proc_partition_ω
# IR_VAR_REF local
 xchain0_n4_α:
 lea rdi, [r12 + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp proc_partition_ω
 xchain0_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1920] -> [r12+1872]
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 1880], rax
# marshal arg1 = producer-box slot [r12+1840] -> [r12+1888]
 mov rax, qword ptr [r12 + 1840]
 mov qword ptr [r12 + 1888], rax
 mov rax, qword ptr [r12 + 1848]
 mov qword ptr [r12 + 1896], rax
# marshal arg2 = producer-box slot [r12+1824] -> [r12+1904]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1904], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1912], rax
  .section .rodata
  .Lrkfn11: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn11]
 lea rsi, [r12 + 1872]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1856], rax
 mov qword ptr [r12 + 1864], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n6_α
 xchain0_n5_β:
 jmp xchain0_n7_α
 xchain0_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1808] -> [r12+1776]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1784], rax
# marshal arg1 = producer-box slot [r12+1856] -> [r12+1792]
 mov rax, qword ptr [r12 + 1856]
 mov qword ptr [r12 + 1792], rax
 mov rax, qword ptr [r12 + 1864]
 mov qword ptr [r12 + 1800], rax
  .section .rodata
  .Lrkfn13: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn13]
 lea rsi, [r12 + 1776]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1760], rax
 mov qword ptr [r12 + 1768], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n7_α
 xchain0_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+1184]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn15: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn15]
 lea rsi, [r12 + 1184]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1168], rax
 mov qword ptr [r12 + 1176], rdx
 cmp eax, 99
 je proc_partition_ω
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp proc_partition_ω
# IR_VAR_REF local
 xchain0_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n20_α
# IR_VAR_REF local
 xchain0_n10_α:
 lea rdi, [r12 + 1984]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1744], rax
 mov qword ptr [r12 + 1752], rdx
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n11_α:
 mov qword ptr [r12 + 1152], 1
 mov rax, qword ptr [rip + .Lx22_0]
 mov qword ptr [r12 + 1160], rax
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp proc_partition_ω
.Lx22_0:
 .quad .Lx22_0_s
.Lx22_0_s:
 .string "."
 xchain0_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn24: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn24]
 lea rsi, [r12 + 1696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1680], rax
 mov qword ptr [r12 + 1688], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n14_α
 xchain0_n12_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n13_α:
 lea rdi, [r12 + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1072], rax
 mov qword ptr [r12 + 1080], rdx
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp proc_partition_ω
# IR_VAR_REF local
 xchain0_n14_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1552], rax
 mov qword ptr [r12 + 1560], rdx
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n15_α:
 lea rdi, [r12 + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp proc_partition_ω
# IR_LIT_STRING
 xchain0_n16_α:
 mov qword ptr [r12 + 1664], 1
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [r12 + 1672], rax
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp proc_partition_ω
.Lx31_0:
 .quad .Lx31_0_s
.Lx31_0_s:
 .string "."
 xchain0_n17_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1152] -> [r12+1104]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1112], rax
# marshal arg1 = producer-box slot [r12+1072] -> [r12+1120]
 mov rax, qword ptr [r12 + 1072]
 mov qword ptr [r12 + 1120], rax
 mov rax, qword ptr [r12 + 1080]
 mov qword ptr [r12 + 1128], rax
# marshal arg2 = producer-box slot [r12+1056] -> [r12+1136]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1136], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1144], rax
  .section .rodata
  .Lrkfn33: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn33]
 lea rsi, [r12 + 1104]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n20_α
# IR_VAR_REF local
 xchain0_n18_α:
 lea rdi, [r12 + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1584], rax
 mov qword ptr [r12 + 1592], rdx
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp proc_partition_ω
 xchain0_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1040] -> [r12+1008]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1016], rax
# marshal arg1 = producer-box slot [r12+1088] -> [r12+1024]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1024], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1032], rax
  .section .rodata
  .Lrkfn37: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn37]
 lea rsi, [r12 + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 992], rax
 mov qword ptr [r12 + 1000], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n20_α
 xchain0_n20_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+496]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 504], rax
  .section .rodata
  .Lrkfn39: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn39]
 lea rsi, [r12 + 496]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je proc_partition_ω
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp proc_partition_ω
# IR_VAR_REF local
 xchain0_n21_α:
 lea rdi, [r12 + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1568], rax
 mov qword ptr [r12 + 1576], rdx
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp proc_partition_ω
# IR_VAR_REF local
 xchain0_n22_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n20_α
# IR_VAR_REF local
 xchain0_n23_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 448], rax
 mov qword ptr [r12 + 456], rdx
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n33_α
 xchain0_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1664] -> [r12+1616]
 mov rax, qword ptr [r12 + 1664]
 mov qword ptr [r12 + 1616], rax
 mov rax, qword ptr [r12 + 1672]
 mov qword ptr [r12 + 1624], rax
# marshal arg1 = producer-box slot [r12+1584] -> [r12+1632]
 mov rax, qword ptr [r12 + 1584]
 mov qword ptr [r12 + 1632], rax
 mov rax, qword ptr [r12 + 1592]
 mov qword ptr [r12 + 1640], rax
# marshal arg2 = producer-box slot [r12+1568] -> [r12+1648]
 mov rax, qword ptr [r12 + 1568]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1576]
 mov qword ptr [r12 + 1656], rax
  .section .rodata
  .Lrkfn47: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn47]
 lea rsi, [r12 + 1616]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1600], rax
 mov qword ptr [r12 + 1608], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n25_α:
 lea rdi, [r12 + 1984]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 976], rax
 mov qword ptr [r12 + 984], rdx
 jmp xchain0_n28_α
 xchain0_n25_β:
 jmp xchain0_n20_α
# IR_LIT_STRING
 xchain0_n26_α:
 mov qword ptr [r12 + 464], 1
 mov rax, qword ptr [rip + .Lx50_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain0_n29_α
 xchain0_n26_β:
 jmp xchain0_n33_α
.Lx50_0:
 .quad .Lx50_0_s
.Lx50_0_s:
 .string "[]"
 xchain0_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1552] -> [r12+1520]
 mov rax, qword ptr [r12 + 1552]
 mov qword ptr [r12 + 1520], rax
 mov rax, qword ptr [r12 + 1560]
 mov qword ptr [r12 + 1528], rax
# marshal arg1 = producer-box slot [r12+1600] -> [r12+1536]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1536], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1544], rax
  .section .rodata
  .Lrkfn52: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn52]
 lea rsi, [r12 + 1520]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1504], rax
 mov qword ptr [r12 + 1512], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n30_α
 xchain0_n27_β:
 jmp xchain0_n7_α
 xchain0_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+960] -> [r12+928]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 928], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 936], rax
# marshal arg1 = producer-box slot [r12+976] -> [r12+944]
 mov rax, qword ptr [r12 + 976]
 mov qword ptr [r12 + 944], rax
 mov rax, qword ptr [r12 + 984]
 mov qword ptr [r12 + 952], rax
  .section .rodata
  .Lrkfn54: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn54]
 lea rsi, [r12 + 928]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 912], rax
 mov qword ptr [r12 + 920], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n31_α
 xchain0_n28_β:
 jmp xchain0_n20_α
 xchain0_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+416]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 424], rax
# marshal arg1 = producer-box slot [r12+464] -> [r12+432]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn56: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn56]
 lea rsi, [r12 + 416]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 400], rax
 mov qword ptr [r12 + 408], rdx
 cmp eax, 99
 je xchain0_n33_α
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp xchain0_n33_α
# IR_VAR_REF local
 xchain0_n30_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1472], rax
 mov qword ptr [r12 + 1480], rdx
 jmp xchain0_n34_α
 xchain0_n30_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n31_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 jmp xchain0_n35_α
 xchain0_n31_β:
 jmp xchain0_n20_α
# IR_VAR_REF local
 xchain0_n32_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 368], rax
 mov qword ptr [r12 + 376], rdx
 jmp xchain0_n36_α
 xchain0_n32_β:
 jmp xchain0_n33_α
 xchain0_n33_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+112] -> [r12+144]
 mov rax, qword ptr [r12 + 112]
 mov qword ptr [r12 + 144], rax
 mov rax, qword ptr [r12 + 120]
 mov qword ptr [r12 + 152], rax
  .section .rodata
  .Lrkfn64: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn64]
 lea rsi, [r12 + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 128], rax
 mov qword ptr [r12 + 136], rdx
 cmp eax, 99
 je proc_partition_ω
 jmp proc_partition_ω
 xchain0_n33_β:
 jmp proc_partition_ω
# IR_VAR_REF local
 xchain0_n34_α:
 lea rdi, [r12 + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1488], rax
 mov qword ptr [r12 + 1496], rdx
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n35_α:
 lea rdi, [r12 + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 896], rax
 mov qword ptr [r12 + 904], rdx
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n20_α
# IR_VAR_REF local
 xchain0_n36_α:
 lea rdi, [r12 + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n33_α
 xchain0_n37_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1472] -> [r12+1440]
 mov rax, qword ptr [r12 + 1472]
 mov qword ptr [r12 + 1440], rax
 mov rax, qword ptr [r12 + 1480]
 mov qword ptr [r12 + 1448], rax
# marshal arg1 = producer-box slot [r12+1488] -> [r12+1456]
 mov rax, qword ptr [r12 + 1488]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1496]
 mov qword ptr [r12 + 1464], rax
  .section .rodata
  .Lrkfn72: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn72]
 lea rsi, [r12 + 1440]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1424], rax
 mov qword ptr [r12 + 1432], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n7_α
 xchain0_n38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+880] -> [r12+848]
 mov rax, qword ptr [r12 + 880]
 mov qword ptr [r12 + 848], rax
 mov rax, qword ptr [r12 + 888]
 mov qword ptr [r12 + 856], rax
# marshal arg1 = producer-box slot [r12+896] -> [r12+864]
 mov rax, qword ptr [r12 + 896]
 mov qword ptr [r12 + 864], rax
 mov rax, qword ptr [r12 + 904]
 mov qword ptr [r12 + 872], rax
  .section .rodata
  .Lrkfn74: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn74]
 lea rsi, [r12 + 848]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n41_α
 xchain0_n38_β:
 jmp xchain0_n20_α
 xchain0_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+368] -> [r12+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
# marshal arg1 = producer-box slot [r12+384] -> [r12+352]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 352], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 360], rax
  .section .rodata
  .Lrkfn76: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn76]
 lea rsi, [r12 + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 320], rax
 mov qword ptr [r12 + 328], rdx
 cmp eax, 99
 je xchain0_n33_α
 jmp xchain0_n42_α
 xchain0_n39_β:
 jmp xchain0_n33_α
# IR_VAR
 xchain0_n40_α:
 mov rax, qword ptr [r12 + 1952]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1960]
 mov qword ptr [r12 + 1400], rax
 jmp xchain0_n43_α
 xchain0_n40_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n41_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain0_n44_α
 xchain0_n41_β:
 jmp xchain0_n20_α
# IR_VAR_REF local
 xchain0_n42_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain0_n45_α
 xchain0_n42_β:
 jmp xchain0_n33_α
# IR_VAR
 xchain0_n43_α:
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1408], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1416], rax
 jmp xchain0_n46_α
 xchain0_n43_β:
 jmp xchain0_n7_α
# IR_LIT_STRING
 xchain0_n44_α:
 mov qword ptr [r12 + 816], 1
 mov rax, qword ptr [rip + .Lx85_0]
 mov qword ptr [r12 + 824], rax
 jmp xchain0_n47_α
 xchain0_n44_β:
 jmp proc_partition_ω
.Lx85_0:
 .quad .Lx85_0_s
.Lx85_0_s:
 .string "."
# IR_LIT_STRING
 xchain0_n45_α:
 mov qword ptr [r12 + 304], 1
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [r12 + 312], rax
 jmp xchain0_n48_α
 xchain0_n45_β:
 jmp xchain0_n33_α
.Lx86_0:
 .quad .Lx86_0_s
.Lx86_0_s:
 .string "[]"
 xchain0_n46_α:
# BOX IR_CALL $cmp_le(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1392] -> [r12+1360]
 mov rax, qword ptr [r12 + 1392]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1400]
 mov qword ptr [r12 + 1368], rax
# marshal arg1 = producer-box slot [r12+1408] -> [r12+1376]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1384], rax
  .section .rodata
  .Lrkfn88: .string "$cmp_le"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn88]
 lea rsi, [r12 + 1360]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je xchain0_n7_α
 jmp xchain0_n49_α
 xchain0_n46_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n47_α:
 lea rdi, [r12 + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 736], rax
 mov qword ptr [r12 + 744], rdx
 jmp xchain0_n50_α
 xchain0_n47_β:
 jmp proc_partition_ω
 xchain0_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+288] -> [r12+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
# marshal arg1 = producer-box slot [r12+304] -> [r12+272]
 mov rax, qword ptr [r12 + 304]
 mov qword ptr [r12 + 272], rax
 mov rax, qword ptr [r12 + 312]
 mov qword ptr [r12 + 280], rax
  .section .rodata
  .Lrkfn92: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn92]
 lea rsi, [r12 + 256]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 240], rax
 mov qword ptr [r12 + 248], rdx
 cmp eax, 99
 je xchain0_n33_α
 jmp xchain0_n51_α
 xchain0_n48_β:
 jmp xchain0_n33_α
 xchain0_n49_α:
# IR_CUT
 jmp xchain0_n52_α
 xchain0_n49_β:
 jmp xchain0_n7_α
# IR_VAR_REF local
 xchain0_n50_α:
 lea rdi, [r12 + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain0_n53_α
 xchain0_n50_β:
 jmp proc_partition_ω
# IR_VAR_REF local
 xchain0_n51_α:
 lea rdi, [r12 + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain0_n54_α
 xchain0_n51_β:
 jmp xchain0_n33_α
# IR_VAR_REF local
 xchain0_n52_α:
 lea rdi, [r12 + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1280], rax
 mov qword ptr [r12 + 1288], rdx
 jmp xchain0_n55_α
 xchain0_n52_β:
 jmp xchain0_n33_α
 xchain0_n53_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+816] -> [r12+768]
 mov rax, qword ptr [r12 + 816]
 mov qword ptr [r12 + 768], rax
 mov rax, qword ptr [r12 + 824]
 mov qword ptr [r12 + 776], rax
# marshal arg1 = producer-box slot [r12+736] -> [r12+784]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 792], rax
# marshal arg2 = producer-box slot [r12+720] -> [r12+800]
 mov rax, qword ptr [r12 + 720]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 728]
 mov qword ptr [r12 + 808], rax
  .section .rodata
  .Lrkfn101: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn101]
 lea rsi, [r12 + 768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 752], rax
 mov qword ptr [r12 + 760], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n56_α
 xchain0_n53_β:
 jmp xchain0_n20_α
# IR_LIT_STRING
 xchain0_n54_α:
 mov qword ptr [r12 + 224], 1
 mov rax, qword ptr [rip + .Lx102_0]
 mov qword ptr [r12 + 232], rax
 jmp xchain0_n57_α
 xchain0_n54_β:
 jmp xchain0_n33_α
.Lx102_0:
 .quad .Lx102_0_s
.Lx102_0_s:
 .string "[]"
# IR_VAR_REF local
 xchain0_n55_α:
 lea rdi, [r12 + 1984]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1296], rax
 mov qword ptr [r12 + 1304], rdx
 jmp xchain0_n58_α
 xchain0_n55_β:
 jmp xchain0_n33_α
 xchain0_n56_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+704] -> [r12+672]
 mov rax, qword ptr [r12 + 704]
 mov qword ptr [r12 + 672], rax
 mov rax, qword ptr [r12 + 712]
 mov qword ptr [r12 + 680], rax
# marshal arg1 = producer-box slot [r12+752] -> [r12+688]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 696], rax
  .section .rodata
  .Lrkfn106: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn106]
 lea rsi, [r12 + 672]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 656], rax
 mov qword ptr [r12 + 664], rdx
 cmp eax, 99
 je xchain0_n20_α
 jmp xchain0_n59_α
 xchain0_n56_β:
 jmp xchain0_n20_α
 xchain0_n57_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+208] -> [r12+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
# marshal arg1 = producer-box slot [r12+224] -> [r12+192]
 mov rax, qword ptr [r12 + 224]
 mov qword ptr [r12 + 192], rax
 mov rax, qword ptr [r12 + 232]
 mov qword ptr [r12 + 200], rax
  .section .rodata
  .Lrkfn108: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn108]
 lea rsi, [r12 + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 160], rax
 mov qword ptr [r12 + 168], rdx
 cmp eax, 99
 je xchain0_n33_α
 jmp xchain0_n60_α
 xchain0_n57_β:
 jmp xchain0_n33_α
# IR_VAR_REF local
 xchain0_n58_α:
 lea rdi, [r12 + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1312], rax
 mov qword ptr [r12 + 1320], rdx
 jmp xchain0_n61_α
 xchain0_n58_β:
 jmp xchain0_n33_α
# IR_VAR_REF local
 xchain0_n59_α:
 lea rdi, [r12 + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 592], rax
 mov qword ptr [r12 + 600], rdx
 jmp xchain0_n62_α
 xchain0_n59_β:
 jmp xchain0_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n60_α:
 lea rax, [rip + xchain0_n33_α]
 mov qword ptr [r12 + 96], rax
 jmp proc_partition_γ
 xchain0_n60_β:
 jmp proc_partition_ω
# IR_VAR_REF local
 xchain0_n61_α:
 lea rdi, [r12 + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1328], rax
 mov qword ptr [r12 + 1336], rdx
 jmp xchain0_n64_α
 xchain0_n61_β:
 jmp xchain0_n33_α
# IR_VAR_REF local
 xchain0_n62_α:
 lea rdi, [r12 + 1984]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 608], rax
 mov qword ptr [r12 + 616], rdx
 jmp xchain0_n65_α
 xchain0_n62_β:
 jmp xchain0_n20_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain0_n63_α:
 jmp qword ptr [r12 + 96]
 xchain0_n63_β:
 jmp proc_partition_ω
 xchain0_n64_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain0_n65_α:
 lea rdi, [r12 + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 624], rax
 mov qword ptr [r12 + 632], rdx
 jmp xchain0_n67_α
 xchain0_n65_β:
 jmp xchain0_n20_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n66_α:
 lea rax, [rip + xchain0_n7_α]
 mov qword ptr [r12 + 96], rax
 jmp proc_partition_γ
 xchain0_n66_β:
 jmp proc_partition_ω
# IR_VAR_REF local
 xchain0_n67_α:
 lea rdi, [r12 + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 640], rax
 mov qword ptr [r12 + 648], rdx
 jmp xchain0_n68_α
 xchain0_n67_β:
 jmp xchain0_n20_α
 xchain0_n68_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain0_n69_α:
 lea rax, [rip + xchain0_n68_β]
 mov qword ptr [r12 + 96], rax
 jmp proc_partition_γ
 xchain0_n69_β:
 jmp proc_partition_ω
proc_partition_β:
jmp xchain0_n63_α
proc_partition_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1936]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_partition_ω:
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
  .globl proc_qsort_α
proc_qsort_α:
#=======================================================================================================================
    .global proc_qsort_α
    .global proc_qsort_β
    .global proc_qsort_γ
    .global proc_qsort_ω
push r12
  mov r12, rdi
  lea rax, [rip + g_gva_base]
  mov rbx, qword ptr [rax]
  push rbp
  mov rbp, rsp
  sub rsp, 8
  cmp esi, 0
  jne proc_qsort_β
 push rsi
 push rbp
 mov rbp, rsp
 and rsp, -16
 call rt_zls_mark@PLT
 mov rsp, rbp
 pop rbp
 mov qword ptr [r12 + 1216], rax
 pop rsi
proc_qsort_α_body:
 xchain131_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn133: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn133]
 lea rsi, [r12 + 112]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je proc_qsort_ω
 jmp xchain131_n1_α
 xchain131_n0_β:
 jmp proc_qsort_ω
# IR_VAR_REF local
 xchain131_n1_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1088], rax
 mov qword ptr [r12 + 1096], rdx
 jmp xchain131_n2_α
 xchain131_n1_β:
 jmp xchain131_n7_α
# IR_LIT_STRING
 xchain131_n2_α:
 mov qword ptr [r12 + 1200], 1
 mov rax, qword ptr [rip + .Lx136_0]
 mov qword ptr [r12 + 1208], rax
 jmp xchain131_n3_α
 xchain131_n2_β:
 jmp proc_qsort_ω
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
 .string "."
# IR_VAR_REF local
 xchain131_n3_α:
 lea rdi, [r12 + 1280]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1120], rax
 mov qword ptr [r12 + 1128], rdx
 jmp xchain131_n4_α
 xchain131_n3_β:
 jmp proc_qsort_ω
# IR_VAR_REF local
 xchain131_n4_α:
 lea rdi, [r12 + 1328]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1104], rax
 mov qword ptr [r12 + 1112], rdx
 jmp xchain131_n5_α
 xchain131_n4_β:
 jmp proc_qsort_ω
 xchain131_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1200] -> [r12+1152]
 mov rax, qword ptr [r12 + 1200]
 mov qword ptr [r12 + 1152], rax
 mov rax, qword ptr [r12 + 1208]
 mov qword ptr [r12 + 1160], rax
# marshal arg1 = producer-box slot [r12+1120] -> [r12+1168]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1176], rax
# marshal arg2 = producer-box slot [r12+1104] -> [r12+1184]
 mov rax, qword ptr [r12 + 1104]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1112]
 mov qword ptr [r12 + 1192], rax
  .section .rodata
  .Lrkfn142: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn142]
 lea rsi, [r12 + 1152]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1136], rax
 mov qword ptr [r12 + 1144], rdx
 cmp eax, 99
 je xchain131_n7_α
 jmp xchain131_n6_α
 xchain131_n5_β:
 jmp xchain131_n7_α
 xchain131_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1088] -> [r12+1056]
 mov rax, qword ptr [r12 + 1088]
 mov qword ptr [r12 + 1056], rax
 mov rax, qword ptr [r12 + 1096]
 mov qword ptr [r12 + 1064], rax
# marshal arg1 = producer-box slot [r12+1136] -> [r12+1072]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1080], rax
  .section .rodata
  .Lrkfn144: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn144]
 lea rsi, [r12 + 1056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1040], rax
 mov qword ptr [r12 + 1048], rdx
 cmp eax, 99
 je xchain131_n7_α
 jmp xchain131_n8_α
 xchain131_n6_β:
 jmp xchain131_n7_α
 xchain131_n7_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+400]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 408], rax
  .section .rodata
  .Lrkfn146: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn146]
 lea rsi, [r12 + 400]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je proc_qsort_ω
 jmp xchain131_n9_α
 xchain131_n7_β:
 jmp proc_qsort_ω
# IR_VAR_REF local
 xchain131_n8_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1008], rax
 mov qword ptr [r12 + 1016], rdx
 jmp xchain131_n10_α
 xchain131_n8_β:
 jmp xchain131_n7_α
# IR_VAR_REF local
 xchain131_n9_α:
 lea rdi, [r12 + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 352], rax
 mov qword ptr [r12 + 360], rdx
 jmp xchain131_n11_α
 xchain131_n9_β:
 jmp xchain131_n16_α
# IR_VAR_REF local
 xchain131_n10_α:
 lea rdi, [r12 + 1232]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 1024], rax
 mov qword ptr [r12 + 1032], rdx
 jmp xchain131_n12_α
 xchain131_n10_β:
 jmp xchain131_n7_α
# IR_LIT_STRING
 xchain131_n11_α:
 mov qword ptr [r12 + 368], 1
 mov rax, qword ptr [rip + .Lx153_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain131_n13_α
 xchain131_n11_β:
 jmp xchain131_n16_α
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "[]"
 xchain131_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1008] -> [r12+976]
 mov rax, qword ptr [r12 + 1008]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1016]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = producer-box slot [r12+1024] -> [r12+992]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 1000], rax
  .section .rodata
  .Lrkfn155: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn155]
 lea rsi, [r12 + 976]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je xchain131_n7_α
 jmp xchain131_n14_α
 xchain131_n12_β:
 jmp xchain131_n7_α
 xchain131_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+320]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 328], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+336]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn157: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn157]
 lea rsi, [r12 + 320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 304], rax
 mov qword ptr [r12 + 312], rdx
 cmp eax, 99
 je xchain131_n16_α
 jmp xchain131_n15_α
 xchain131_n13_β:
 jmp xchain131_n16_α
# IR_VAR_REF local
 xchain131_n14_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 928], rax
 mov qword ptr [r12 + 936], rdx
 jmp xchain131_n17_α
 xchain131_n14_β:
 jmp xchain131_n7_α
# IR_VAR_REF local
 xchain131_n15_α:
 lea rdi, [r12 + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 272], rax
 mov qword ptr [r12 + 280], rdx
 jmp xchain131_n18_α
 xchain131_n15_β:
 jmp xchain131_n16_α
 xchain131_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+96] -> [r12+128]
 mov rax, qword ptr [r12 + 96]
 mov qword ptr [r12 + 128], rax
 mov rax, qword ptr [r12 + 104]
 mov qword ptr [r12 + 136], rax
  .section .rodata
  .Lrkfn163: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn163]
 lea rsi, [r12 + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 112], rax
 mov qword ptr [r12 + 120], rdx
 cmp eax, 99
 je proc_qsort_ω
 jmp proc_qsort_ω
 xchain131_n16_β:
 jmp proc_qsort_ω
# IR_VAR_REF local
 xchain131_n17_α:
 lea rdi, [r12 + 1312]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 944], rax
 mov qword ptr [r12 + 952], rdx
 jmp xchain131_n19_α
 xchain131_n17_β:
 jmp xchain131_n7_α
# IR_VAR_REF local
 xchain131_n18_α:
 lea rdi, [r12 + 1232]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 jmp xchain131_n20_α
 xchain131_n18_β:
 jmp xchain131_n16_α
 xchain131_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+928] -> [r12+896]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 904], rax
# marshal arg1 = producer-box slot [r12+944] -> [r12+912]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn169: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn169]
 lea rsi, [r12 + 896]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 880], rax
 mov qword ptr [r12 + 888], rdx
 cmp eax, 99
 je xchain131_n7_α
 jmp xchain131_n21_α
 xchain131_n19_β:
 jmp xchain131_n7_α
 xchain131_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+272] -> [r12+240]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 240], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 248], rax
# marshal arg1 = producer-box slot [r12+288] -> [r12+256]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 256], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 264], rax
  .section .rodata
  .Lrkfn171: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn171]
 lea rsi, [r12 + 240]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 224], rax
 mov qword ptr [r12 + 232], rdx
 cmp eax, 99
 je xchain131_n16_α
 jmp xchain131_n22_α
 xchain131_n20_β:
 jmp xchain131_n16_α
# IR_VAR_REF local
 xchain131_n21_α:
 lea rdi, [r12 + 1328]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 816], rax
 mov qword ptr [r12 + 824], rdx
 jmp xchain131_n23_α
 xchain131_n21_β:
 jmp xchain131_n7_α
# IR_VAR_REF local
 xchain131_n22_α:
 lea rdi, [r12 + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 192], rax
 mov qword ptr [r12 + 200], rdx
 jmp xchain131_n24_α
 xchain131_n22_β:
 jmp xchain131_n16_α
# IR_VAR_REF local
 xchain131_n23_α:
 lea rdi, [r12 + 1280]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 832], rax
 mov qword ptr [r12 + 840], rdx
 jmp xchain131_n25_α
 xchain131_n23_β:
 jmp xchain131_n7_α
# IR_VAR_REF local
 xchain131_n24_α:
 lea rdi, [r12 + 1232]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 208], rax
 mov qword ptr [r12 + 216], rdx
 jmp xchain131_n26_α
 xchain131_n24_β:
 jmp xchain131_n16_α
# IR_VAR_REF local
 xchain131_n25_α:
 lea rdi, [r12 + 1248]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 848], rax
 mov qword ptr [r12 + 856], rdx
 jmp xchain131_n27_α
 xchain131_n25_β:
 jmp xchain131_n7_α
 xchain131_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+192] -> [r12+160]
 mov rax, qword ptr [r12 + 192]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 200]
 mov qword ptr [r12 + 168], rax
# marshal arg1 = producer-box slot [r12+208] -> [r12+176]
 mov rax, qword ptr [r12 + 208]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 216]
 mov qword ptr [r12 + 184], rax
  .section .rodata
  .Lrkfn183: .string "$unify"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn183]
 lea rsi, [r12 + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain131_n16_α
 jmp xchain131_n28_α
 xchain131_n26_β:
 jmp xchain131_n16_α
# IR_VAR_REF local
 xchain131_n27_α:
 lea rdi, [r12 + 1296]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 jmp xchain131_n29_α
 xchain131_n27_β:
 jmp xchain131_n7_α
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain131_n28_α:
 lea rax, [rip + xchain131_n16_α]
 mov qword ptr [r12 + 80], rax
 jmp proc_qsort_γ
 xchain131_n28_β:
 jmp proc_qsort_ω
 xchain131_n29_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain131_n30_α:
 jmp qword ptr [r12 + 80]
 xchain131_n30_β:
 jmp proc_qsort_ω
# IR_VAR_REF local
 xchain131_n31_α:
 lea rdi, [r12 + 1296]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 688], rax
 mov qword ptr [r12 + 696], rdx
 jmp xchain131_n32_α
 xchain131_n31_β:
 jmp xchain131_n7_α
# IR_VAR_REF local
 xchain131_n32_α:
 lea rdi, [r12 + 1264]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 704], rax
 mov qword ptr [r12 + 712], rdx
 jmp xchain131_n33_α
 xchain131_n32_β:
 jmp xchain131_n7_α
# IR_VAR_REF local
 xchain131_n33_α:
 lea rdi, [r12 + 1312]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 720], rax
 mov qword ptr [r12 + 728], rdx
 jmp xchain131_n34_α
 xchain131_n33_β:
 jmp xchain131_n7_α
 xchain131_n34_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR_REF local
 xchain131_n35_α:
 lea rdi, [r12 + 1248]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 jmp xchain131_n36_α
 xchain131_n35_β:
 jmp xchain131_n7_α
# IR_VAR_REF local
 xchain131_n36_α:
 lea rdi, [r12 + 1232]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 496], rax
 mov qword ptr [r12 + 504], rdx
 jmp xchain131_n37_α
 xchain131_n36_β:
 jmp xchain131_n7_α
# IR_LIT_STRING
 xchain131_n37_α:
 mov qword ptr [r12 + 608], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [r12 + 616], rax
 jmp xchain131_n38_α
 xchain131_n37_β:
 jmp proc_qsort_ω
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "."
# IR_VAR_REF local
 xchain131_n38_α:
 lea rdi, [r12 + 1280]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 528], rax
 mov qword ptr [r12 + 536], rdx
 jmp xchain131_n39_α
 xchain131_n38_β:
 jmp proc_qsort_ω
# IR_VAR_REF local
 xchain131_n39_α:
 lea rdi, [r12 + 1264]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 512], rax
 mov qword ptr [r12 + 520], rdx
 jmp xchain131_n40_α
 xchain131_n39_β:
 jmp proc_qsort_ω
 xchain131_n40_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+608] -> [r12+560]
 mov rax, qword ptr [r12 + 608]
 mov qword ptr [r12 + 560], rax
 mov rax, qword ptr [r12 + 616]
 mov qword ptr [r12 + 568], rax
# marshal arg1 = producer-box slot [r12+528] -> [r12+576]
 mov rax, qword ptr [r12 + 528]
 mov qword ptr [r12 + 576], rax
 mov rax, qword ptr [r12 + 536]
 mov qword ptr [r12 + 584], rax
# marshal arg2 = producer-box slot [r12+512] -> [r12+592]
 mov rax, qword ptr [r12 + 512]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 520]
 mov qword ptr [r12 + 600], rax
  .section .rodata
  .Lrkfn208: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn208]
 lea rsi, [r12 + 560]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 544], rax
 mov qword ptr [r12 + 552], rdx
 cmp eax, 99
 je xchain131_n7_α
 jmp xchain131_n41_α
 xchain131_n40_β:
 jmp xchain131_n7_α
 xchain131_n41_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain131_n42_α:
 lea rax, [rip + xchain131_n29_β]
 mov qword ptr [r12 + 80], rax
 jmp proc_qsort_γ
 xchain131_n42_β:
 jmp proc_qsort_ω
proc_qsort_β:
jmp xchain131_n30_α
proc_qsort_γ:
mov eax, 1
xor edx, edx
mov rsp, rbp
pop rbp
pop r12
ret
 push rbp
 mov rbp, rsp
 and rsp, -16
 mov rdi, qword ptr [r12 + 1216]
 call rt_zls_release_to@PLT
 mov rsp, rbp
 pop rbp
proc_qsort_ω:
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
  .Lstartup_pname0: .string "partition"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_partition_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  .section .rodata
  .Lstartup_pname1: .string "qsort"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_qsort_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
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
 mov qword ptr [r12 + 5104], rax
 pop rsi
main_α_body:
 xchain212_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn214: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn214]
 lea rsi, [r12 + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [r12 + 48], rax
 mov qword ptr [r12 + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n1_α
 xchain212_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain212_n1_α:
 mov qword ptr [r12 + 5056], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [r12 + 5064], rax
 jmp xchain212_n2_α
 xchain212_n1_β:
 jmp main_ω
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n2_α:
 mov qword ptr [r12 + 4976], 6
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [r12 + 4984], rax
 jmp xchain212_n3_α
 xchain212_n2_β:
 jmp main_ω
.Lx216_0:
 .quad 27
# IR_LIT_STRING
 xchain212_n3_α:
 mov qword ptr [r12 + 4960], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [r12 + 4968], rax
 jmp xchain212_n4_α
 xchain212_n3_β:
 jmp main_ω
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n4_α:
 mov qword ptr [r12 + 4880], 6
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [r12 + 4888], rax
 jmp xchain212_n5_α
 xchain212_n4_β:
 jmp main_ω
.Lx218_0:
 .quad 74
# IR_LIT_STRING
 xchain212_n5_α:
 mov qword ptr [r12 + 4864], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [r12 + 4872], rax
 jmp xchain212_n6_α
 xchain212_n5_β:
 jmp main_ω
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n6_α:
 mov qword ptr [r12 + 4784], 6
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [r12 + 4792], rax
 jmp xchain212_n7_α
 xchain212_n6_β:
 jmp main_ω
.Lx220_0:
 .quad 17
# IR_LIT_STRING
 xchain212_n7_α:
 mov qword ptr [r12 + 4768], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [r12 + 4776], rax
 jmp xchain212_n8_α
 xchain212_n7_β:
 jmp main_ω
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n8_α:
 mov qword ptr [r12 + 4688], 6
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [r12 + 4696], rax
 jmp xchain212_n9_α
 xchain212_n8_β:
 jmp main_ω
.Lx222_0:
 .quad 33
# IR_LIT_STRING
 xchain212_n9_α:
 mov qword ptr [r12 + 4672], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [r12 + 4680], rax
 jmp xchain212_n10_α
 xchain212_n9_β:
 jmp main_ω
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n10_α:
 mov qword ptr [r12 + 4592], 6
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [r12 + 4600], rax
 jmp xchain212_n11_α
 xchain212_n10_β:
 jmp main_ω
.Lx224_0:
 .quad 94
# IR_LIT_STRING
 xchain212_n11_α:
 mov qword ptr [r12 + 4576], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [r12 + 4584], rax
 jmp xchain212_n12_α
 xchain212_n11_β:
 jmp main_ω
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n12_α:
 mov qword ptr [r12 + 4496], 6
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [r12 + 4504], rax
 jmp xchain212_n13_α
 xchain212_n12_β:
 jmp main_ω
.Lx226_0:
 .quad 18
# IR_LIT_STRING
 xchain212_n13_α:
 mov qword ptr [r12 + 4480], 1
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [r12 + 4488], rax
 jmp xchain212_n14_α
 xchain212_n13_β:
 jmp main_ω
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n14_α:
 mov qword ptr [r12 + 4400], 6
 mov rax, qword ptr [rip + .Lx228_0]
 mov qword ptr [r12 + 4408], rax
 jmp xchain212_n15_α
 xchain212_n14_β:
 jmp main_ω
.Lx228_0:
 .quad 46
# IR_LIT_STRING
 xchain212_n15_α:
 mov qword ptr [r12 + 4384], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [r12 + 4392], rax
 jmp xchain212_n16_α
 xchain212_n15_β:
 jmp main_ω
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n16_α:
 mov qword ptr [r12 + 4304], 6
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [r12 + 4312], rax
 jmp xchain212_n17_α
 xchain212_n16_β:
 jmp main_ω
.Lx230_0:
 .quad 83
# IR_LIT_STRING
 xchain212_n17_α:
 mov qword ptr [r12 + 4288], 1
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [r12 + 4296], rax
 jmp xchain212_n18_α
 xchain212_n17_β:
 jmp main_ω
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n18_α:
 mov qword ptr [r12 + 4208], 6
 mov rax, qword ptr [rip + .Lx232_0]
 mov qword ptr [r12 + 4216], rax
 jmp xchain212_n19_α
 xchain212_n18_β:
 jmp main_ω
.Lx232_0:
 .quad 65
# IR_LIT_STRING
 xchain212_n19_α:
 mov qword ptr [r12 + 4192], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [r12 + 4200], rax
 jmp xchain212_n20_α
 xchain212_n19_β:
 jmp main_ω
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n20_α:
 mov qword ptr [r12 + 4112], 6
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [r12 + 4120], rax
 jmp xchain212_n21_α
 xchain212_n20_β:
 jmp main_ω
.Lx234_0:
 .quad 2
# IR_LIT_STRING
 xchain212_n21_α:
 mov qword ptr [r12 + 4096], 1
 mov rax, qword ptr [rip + .Lx235_0]
 mov qword ptr [r12 + 4104], rax
 jmp xchain212_n22_α
 xchain212_n21_β:
 jmp main_ω
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n22_α:
 mov qword ptr [r12 + 4016], 6
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [r12 + 4024], rax
 jmp xchain212_n23_α
 xchain212_n22_β:
 jmp main_ω
.Lx236_0:
 .quad 32
# IR_LIT_STRING
 xchain212_n23_α:
 mov qword ptr [r12 + 4000], 1
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [r12 + 4008], rax
 jmp xchain212_n24_α
 xchain212_n23_β:
 jmp main_ω
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n24_α:
 mov qword ptr [r12 + 3920], 6
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [r12 + 3928], rax
 jmp xchain212_n25_α
 xchain212_n24_β:
 jmp main_ω
.Lx238_0:
 .quad 53
# IR_LIT_STRING
 xchain212_n25_α:
 mov qword ptr [r12 + 3904], 1
 mov rax, qword ptr [rip + .Lx239_0]
 mov qword ptr [r12 + 3912], rax
 jmp xchain212_n26_α
 xchain212_n25_β:
 jmp main_ω
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n26_α:
 mov qword ptr [r12 + 3824], 6
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [r12 + 3832], rax
 jmp xchain212_n27_α
 xchain212_n26_β:
 jmp main_ω
.Lx240_0:
 .quad 28
# IR_LIT_STRING
 xchain212_n27_α:
 mov qword ptr [r12 + 3808], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [r12 + 3816], rax
 jmp xchain212_n28_α
 xchain212_n27_β:
 jmp main_ω
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n28_α:
 mov qword ptr [r12 + 3728], 6
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [r12 + 3736], rax
 jmp xchain212_n29_α
 xchain212_n28_β:
 jmp main_ω
.Lx242_0:
 .quad 85
# IR_LIT_STRING
 xchain212_n29_α:
 mov qword ptr [r12 + 3712], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [r12 + 3720], rax
 jmp xchain212_n30_α
 xchain212_n29_β:
 jmp main_ω
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n30_α:
 mov qword ptr [r12 + 3632], 6
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [r12 + 3640], rax
 jmp xchain212_n31_α
 xchain212_n30_β:
 jmp main_ω
.Lx244_0:
 .quad 99
# IR_LIT_STRING
 xchain212_n31_α:
 mov qword ptr [r12 + 3616], 1
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [r12 + 3624], rax
 jmp xchain212_n32_α
 xchain212_n31_β:
 jmp main_ω
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n32_α:
 mov qword ptr [r12 + 3536], 6
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [r12 + 3544], rax
 jmp xchain212_n33_α
 xchain212_n32_β:
 jmp main_ω
.Lx246_0:
 .quad 47
# IR_LIT_STRING
 xchain212_n33_α:
 mov qword ptr [r12 + 3520], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [r12 + 3528], rax
 jmp xchain212_n34_α
 xchain212_n33_β:
 jmp main_ω
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n34_α:
 mov qword ptr [r12 + 3440], 6
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [r12 + 3448], rax
 jmp xchain212_n35_α
 xchain212_n34_β:
 jmp main_ω
.Lx248_0:
 .quad 28
# IR_LIT_STRING
 xchain212_n35_α:
 mov qword ptr [r12 + 3424], 1
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [r12 + 3432], rax
 jmp xchain212_n36_α
 xchain212_n35_β:
 jmp main_ω
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n36_α:
 mov qword ptr [r12 + 3344], 6
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [r12 + 3352], rax
 jmp xchain212_n37_α
 xchain212_n36_β:
 jmp main_ω
.Lx250_0:
 .quad 82
# IR_LIT_STRING
 xchain212_n37_α:
 mov qword ptr [r12 + 3328], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [r12 + 3336], rax
 jmp xchain212_n38_α
 xchain212_n37_β:
 jmp main_ω
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n38_α:
 mov qword ptr [r12 + 3248], 6
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [r12 + 3256], rax
 jmp xchain212_n39_α
 xchain212_n38_β:
 jmp main_ω
.Lx252_0:
 .quad 6
# IR_LIT_STRING
 xchain212_n39_α:
 mov qword ptr [r12 + 3232], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [r12 + 3240], rax
 jmp xchain212_n40_α
 xchain212_n39_β:
 jmp main_ω
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n40_α:
 mov qword ptr [r12 + 3152], 6
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [r12 + 3160], rax
 jmp xchain212_n41_α
 xchain212_n40_β:
 jmp main_ω
.Lx254_0:
 .quad 11
# IR_LIT_STRING
 xchain212_n41_α:
 mov qword ptr [r12 + 3136], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [r12 + 3144], rax
 jmp xchain212_n42_α
 xchain212_n41_β:
 jmp main_ω
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n42_α:
 mov qword ptr [r12 + 3056], 6
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [r12 + 3064], rax
 jmp xchain212_n43_α
 xchain212_n42_β:
 jmp main_ω
.Lx256_0:
 .quad 55
# IR_LIT_STRING
 xchain212_n43_α:
 mov qword ptr [r12 + 3040], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [r12 + 3048], rax
 jmp xchain212_n44_α
 xchain212_n43_β:
 jmp main_ω
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n44_α:
 mov qword ptr [r12 + 2960], 6
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [r12 + 2968], rax
 jmp xchain212_n45_α
 xchain212_n44_β:
 jmp main_ω
.Lx258_0:
 .quad 29
# IR_LIT_STRING
 xchain212_n45_α:
 mov qword ptr [r12 + 2944], 1
 mov rax, qword ptr [rip + .Lx259_0]
 mov qword ptr [r12 + 2952], rax
 jmp xchain212_n46_α
 xchain212_n45_β:
 jmp main_ω
.Lx259_0:
 .quad .Lx259_0_s
.Lx259_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n46_α:
 mov qword ptr [r12 + 2864], 6
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [r12 + 2872], rax
 jmp xchain212_n47_α
 xchain212_n46_β:
 jmp main_ω
.Lx260_0:
 .quad 39
# IR_LIT_STRING
 xchain212_n47_α:
 mov qword ptr [r12 + 2848], 1
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [r12 + 2856], rax
 jmp xchain212_n48_α
 xchain212_n47_β:
 jmp main_ω
.Lx261_0:
 .quad .Lx261_0_s
.Lx261_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n48_α:
 mov qword ptr [r12 + 2768], 6
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [r12 + 2776], rax
 jmp xchain212_n49_α
 xchain212_n48_β:
 jmp main_ω
.Lx262_0:
 .quad 81
# IR_LIT_STRING
 xchain212_n49_α:
 mov qword ptr [r12 + 2752], 1
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [r12 + 2760], rax
 jmp xchain212_n50_α
 xchain212_n49_β:
 jmp main_ω
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n50_α:
 mov qword ptr [r12 + 2672], 6
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [r12 + 2680], rax
 jmp xchain212_n51_α
 xchain212_n50_β:
 jmp main_ω
.Lx264_0:
 .quad 90
# IR_LIT_STRING
 xchain212_n51_α:
 mov qword ptr [r12 + 2656], 1
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [r12 + 2664], rax
 jmp xchain212_n52_α
 xchain212_n51_β:
 jmp main_ω
.Lx265_0:
 .quad .Lx265_0_s
.Lx265_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n52_α:
 mov qword ptr [r12 + 2576], 6
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [r12 + 2584], rax
 jmp xchain212_n53_α
 xchain212_n52_β:
 jmp main_ω
.Lx266_0:
 .quad 37
# IR_LIT_STRING
 xchain212_n53_α:
 mov qword ptr [r12 + 2560], 1
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [r12 + 2568], rax
 jmp xchain212_n54_α
 xchain212_n53_β:
 jmp main_ω
.Lx267_0:
 .quad .Lx267_0_s
.Lx267_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n54_α:
 mov qword ptr [r12 + 2480], 6
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [r12 + 2488], rax
 jmp xchain212_n55_α
 xchain212_n54_β:
 jmp main_ω
.Lx268_0:
 .quad 10
# IR_LIT_STRING
 xchain212_n55_α:
 mov qword ptr [r12 + 2464], 1
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [r12 + 2472], rax
 jmp xchain212_n56_α
 xchain212_n55_β:
 jmp main_ω
.Lx269_0:
 .quad .Lx269_0_s
.Lx269_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n56_α:
 mov qword ptr [r12 + 2384], 6
 mov rax, qword ptr [rip + .Lx270_0]
 mov qword ptr [r12 + 2392], rax
 jmp xchain212_n57_α
 xchain212_n56_β:
 jmp main_ω
.Lx270_0:
 .quad 0
# IR_LIT_STRING
 xchain212_n57_α:
 mov qword ptr [r12 + 2368], 1
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [r12 + 2376], rax
 jmp xchain212_n58_α
 xchain212_n57_β:
 jmp main_ω
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n58_α:
 mov qword ptr [r12 + 2288], 6
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [r12 + 2296], rax
 jmp xchain212_n59_α
 xchain212_n58_β:
 jmp main_ω
.Lx272_0:
 .quad 66
# IR_LIT_STRING
 xchain212_n59_α:
 mov qword ptr [r12 + 2272], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [r12 + 2280], rax
 jmp xchain212_n60_α
 xchain212_n59_β:
 jmp main_ω
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n60_α:
 mov qword ptr [r12 + 2192], 6
 mov rax, qword ptr [rip + .Lx274_0]
 mov qword ptr [r12 + 2200], rax
 jmp xchain212_n61_α
 xchain212_n60_β:
 jmp main_ω
.Lx274_0:
 .quad 51
# IR_LIT_STRING
 xchain212_n61_α:
 mov qword ptr [r12 + 2176], 1
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [r12 + 2184], rax
 jmp xchain212_n62_α
 xchain212_n61_β:
 jmp main_ω
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n62_α:
 mov qword ptr [r12 + 2096], 6
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [r12 + 2104], rax
 jmp xchain212_n63_α
 xchain212_n62_β:
 jmp main_ω
.Lx276_0:
 .quad 7
# IR_LIT_STRING
 xchain212_n63_α:
 mov qword ptr [r12 + 2080], 1
 mov rax, qword ptr [rip + .Lx277_0]
 mov qword ptr [r12 + 2088], rax
 jmp xchain212_n64_α
 xchain212_n63_β:
 jmp main_ω
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n64_α:
 mov qword ptr [r12 + 2000], 6
 mov rax, qword ptr [rip + .Lx278_0]
 mov qword ptr [r12 + 2008], rax
 jmp xchain212_n65_α
 xchain212_n64_β:
 jmp main_ω
.Lx278_0:
 .quad 21
# IR_LIT_STRING
 xchain212_n65_α:
 mov qword ptr [r12 + 1984], 1
 mov rax, qword ptr [rip + .Lx279_0]
 mov qword ptr [r12 + 1992], rax
 jmp xchain212_n66_α
 xchain212_n65_β:
 jmp main_ω
.Lx279_0:
 .quad .Lx279_0_s
.Lx279_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n66_α:
 mov qword ptr [r12 + 1904], 6
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [r12 + 1912], rax
 jmp xchain212_n67_α
 xchain212_n66_β:
 jmp main_ω
.Lx280_0:
 .quad 85
# IR_LIT_STRING
 xchain212_n67_α:
 mov qword ptr [r12 + 1888], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [r12 + 1896], rax
 jmp xchain212_n68_α
 xchain212_n67_β:
 jmp main_ω
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n68_α:
 mov qword ptr [r12 + 1808], 6
 mov rax, qword ptr [rip + .Lx282_0]
 mov qword ptr [r12 + 1816], rax
 jmp xchain212_n69_α
 xchain212_n68_β:
 jmp main_ω
.Lx282_0:
 .quad 27
# IR_LIT_STRING
 xchain212_n69_α:
 mov qword ptr [r12 + 1792], 1
 mov rax, qword ptr [rip + .Lx283_0]
 mov qword ptr [r12 + 1800], rax
 jmp xchain212_n70_α
 xchain212_n69_β:
 jmp main_ω
.Lx283_0:
 .quad .Lx283_0_s
.Lx283_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n70_α:
 mov qword ptr [r12 + 1712], 6
 mov rax, qword ptr [rip + .Lx284_0]
 mov qword ptr [r12 + 1720], rax
 jmp xchain212_n71_α
 xchain212_n70_β:
 jmp main_ω
.Lx284_0:
 .quad 31
# IR_LIT_STRING
 xchain212_n71_α:
 mov qword ptr [r12 + 1696], 1
 mov rax, qword ptr [rip + .Lx285_0]
 mov qword ptr [r12 + 1704], rax
 jmp xchain212_n72_α
 xchain212_n71_β:
 jmp main_ω
.Lx285_0:
 .quad .Lx285_0_s
.Lx285_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n72_α:
 mov qword ptr [r12 + 1616], 6
 mov rax, qword ptr [rip + .Lx286_0]
 mov qword ptr [r12 + 1624], rax
 jmp xchain212_n73_α
 xchain212_n72_β:
 jmp main_ω
.Lx286_0:
 .quad 63
# IR_LIT_STRING
 xchain212_n73_α:
 mov qword ptr [r12 + 1600], 1
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [r12 + 1608], rax
 jmp xchain212_n74_α
 xchain212_n73_β:
 jmp main_ω
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n74_α:
 mov qword ptr [r12 + 1520], 6
 mov rax, qword ptr [rip + .Lx288_0]
 mov qword ptr [r12 + 1528], rax
 jmp xchain212_n75_α
 xchain212_n74_β:
 jmp main_ω
.Lx288_0:
 .quad 75
# IR_LIT_STRING
 xchain212_n75_α:
 mov qword ptr [r12 + 1504], 1
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [r12 + 1512], rax
 jmp xchain212_n76_α
 xchain212_n75_β:
 jmp main_ω
.Lx289_0:
 .quad .Lx289_0_s
.Lx289_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n76_α:
 mov qword ptr [r12 + 1424], 6
 mov rax, qword ptr [rip + .Lx290_0]
 mov qword ptr [r12 + 1432], rax
 jmp xchain212_n77_α
 xchain212_n76_β:
 jmp main_ω
.Lx290_0:
 .quad 4
# IR_LIT_STRING
 xchain212_n77_α:
 mov qword ptr [r12 + 1408], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [r12 + 1416], rax
 jmp xchain212_n78_α
 xchain212_n77_β:
 jmp main_ω
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n78_α:
 mov qword ptr [r12 + 1328], 6
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [r12 + 1336], rax
 jmp xchain212_n79_α
 xchain212_n78_β:
 jmp main_ω
.Lx292_0:
 .quad 95
# IR_LIT_STRING
 xchain212_n79_α:
 mov qword ptr [r12 + 1312], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [r12 + 1320], rax
 jmp xchain212_n80_α
 xchain212_n79_β:
 jmp main_ω
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n80_α:
 mov qword ptr [r12 + 1232], 6
 mov rax, qword ptr [rip + .Lx294_0]
 mov qword ptr [r12 + 1240], rax
 jmp xchain212_n81_α
 xchain212_n80_β:
 jmp main_ω
.Lx294_0:
 .quad 99
# IR_LIT_STRING
 xchain212_n81_α:
 mov qword ptr [r12 + 1216], 1
 mov rax, qword ptr [rip + .Lx295_0]
 mov qword ptr [r12 + 1224], rax
 jmp xchain212_n82_α
 xchain212_n81_β:
 jmp main_ω
.Lx295_0:
 .quad .Lx295_0_s
.Lx295_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n82_α:
 mov qword ptr [r12 + 1136], 6
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [r12 + 1144], rax
 jmp xchain212_n83_α
 xchain212_n82_β:
 jmp main_ω
.Lx296_0:
 .quad 11
# IR_LIT_STRING
 xchain212_n83_α:
 mov qword ptr [r12 + 1120], 1
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [r12 + 1128], rax
 jmp xchain212_n84_α
 xchain212_n83_β:
 jmp main_ω
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n84_α:
 mov qword ptr [r12 + 1040], 6
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [r12 + 1048], rax
 jmp xchain212_n85_α
 xchain212_n84_β:
 jmp main_ω
.Lx298_0:
 .quad 28
# IR_LIT_STRING
 xchain212_n85_α:
 mov qword ptr [r12 + 1024], 1
 mov rax, qword ptr [rip + .Lx299_0]
 mov qword ptr [r12 + 1032], rax
 jmp xchain212_n86_α
 xchain212_n85_β:
 jmp main_ω
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n86_α:
 mov qword ptr [r12 + 944], 6
 mov rax, qword ptr [rip + .Lx300_0]
 mov qword ptr [r12 + 952], rax
 jmp xchain212_n87_α
 xchain212_n86_β:
 jmp main_ω
.Lx300_0:
 .quad 61
# IR_LIT_STRING
 xchain212_n87_α:
 mov qword ptr [r12 + 928], 1
 mov rax, qword ptr [rip + .Lx301_0]
 mov qword ptr [r12 + 936], rax
 jmp xchain212_n88_α
 xchain212_n87_β:
 jmp main_ω
.Lx301_0:
 .quad .Lx301_0_s
.Lx301_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n88_α:
 mov qword ptr [r12 + 848], 6
 mov rax, qword ptr [rip + .Lx302_0]
 mov qword ptr [r12 + 856], rax
 jmp xchain212_n89_α
 xchain212_n88_β:
 jmp main_ω
.Lx302_0:
 .quad 74
# IR_LIT_STRING
 xchain212_n89_α:
 mov qword ptr [r12 + 832], 1
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [r12 + 840], rax
 jmp xchain212_n90_α
 xchain212_n89_β:
 jmp main_ω
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n90_α:
 mov qword ptr [r12 + 752], 6
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [r12 + 760], rax
 jmp xchain212_n91_α
 xchain212_n90_β:
 jmp main_ω
.Lx304_0:
 .quad 18
# IR_LIT_STRING
 xchain212_n91_α:
 mov qword ptr [r12 + 736], 1
 mov rax, qword ptr [rip + .Lx305_0]
 mov qword ptr [r12 + 744], rax
 jmp xchain212_n92_α
 xchain212_n91_β:
 jmp main_ω
.Lx305_0:
 .quad .Lx305_0_s
.Lx305_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n92_α:
 mov qword ptr [r12 + 656], 6
 mov rax, qword ptr [rip + .Lx306_0]
 mov qword ptr [r12 + 664], rax
 jmp xchain212_n93_α
 xchain212_n92_β:
 jmp main_ω
.Lx306_0:
 .quad 92
# IR_LIT_STRING
 xchain212_n93_α:
 mov qword ptr [r12 + 640], 1
 mov rax, qword ptr [rip + .Lx307_0]
 mov qword ptr [r12 + 648], rax
 jmp xchain212_n94_α
 xchain212_n93_β:
 jmp main_ω
.Lx307_0:
 .quad .Lx307_0_s
.Lx307_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n94_α:
 mov qword ptr [r12 + 560], 6
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [r12 + 568], rax
 jmp xchain212_n95_α
 xchain212_n94_β:
 jmp main_ω
.Lx308_0:
 .quad 40
# IR_LIT_STRING
 xchain212_n95_α:
 mov qword ptr [r12 + 544], 1
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [r12 + 552], rax
 jmp xchain212_n96_α
 xchain212_n95_β:
 jmp main_ω
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n96_α:
 mov qword ptr [r12 + 464], 6
 mov rax, qword ptr [rip + .Lx310_0]
 mov qword ptr [r12 + 472], rax
 jmp xchain212_n97_α
 xchain212_n96_β:
 jmp main_ω
.Lx310_0:
 .quad 53
# IR_LIT_STRING
 xchain212_n97_α:
 mov qword ptr [r12 + 448], 1
 mov rax, qword ptr [rip + .Lx311_0]
 mov qword ptr [r12 + 456], rax
 jmp xchain212_n98_α
 xchain212_n97_β:
 jmp main_ω
.Lx311_0:
 .quad .Lx311_0_s
.Lx311_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n98_α:
 mov qword ptr [r12 + 368], 6
 mov rax, qword ptr [rip + .Lx312_0]
 mov qword ptr [r12 + 376], rax
 jmp xchain212_n99_α
 xchain212_n98_β:
 jmp main_ω
.Lx312_0:
 .quad 59
# IR_LIT_STRING
 xchain212_n99_α:
 mov qword ptr [r12 + 352], 1
 mov rax, qword ptr [rip + .Lx313_0]
 mov qword ptr [r12 + 360], rax
 jmp xchain212_n100_α
 xchain212_n99_β:
 jmp main_ω
.Lx313_0:
 .quad .Lx313_0_s
.Lx313_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain212_n100_α:
 mov qword ptr [r12 + 272], 6
 mov rax, qword ptr [rip + .Lx314_0]
 mov qword ptr [r12 + 280], rax
 jmp xchain212_n101_α
 xchain212_n100_β:
 jmp main_ω
.Lx314_0:
 .quad 8
# IR_LIT_STRING
 xchain212_n101_α:
 mov qword ptr [r12 + 256], 1
 mov rax, qword ptr [rip + .Lx315_0]
 mov qword ptr [r12 + 264], rax
 jmp xchain212_n102_α
 xchain212_n101_β:
 jmp main_ω
.Lx315_0:
 .quad .Lx315_0_s
.Lx315_0_s:
 .string "[]"
 xchain212_n102_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+352] -> [r12+304]
 mov rax, qword ptr [r12 + 352]
 mov qword ptr [r12 + 304], rax
 mov rax, qword ptr [r12 + 360]
 mov qword ptr [r12 + 312], rax
# marshal arg1 = producer-box slot [r12+272] -> [r12+320]
 mov rax, qword ptr [r12 + 272]
 mov qword ptr [r12 + 320], rax
 mov rax, qword ptr [r12 + 280]
 mov qword ptr [r12 + 328], rax
# marshal arg2 = producer-box slot [r12+256] -> [r12+336]
 mov rax, qword ptr [r12 + 256]
 mov qword ptr [r12 + 336], rax
 mov rax, qword ptr [r12 + 264]
 mov qword ptr [r12 + 344], rax
  .section .rodata
  .Lrkfn317: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn317]
 lea rsi, [r12 + 304]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 288], rax
 mov qword ptr [r12 + 296], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n103_α
 xchain212_n102_β:
 jmp main_ω
 xchain212_n103_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+448] -> [r12+400]
 mov rax, qword ptr [r12 + 448]
 mov qword ptr [r12 + 400], rax
 mov rax, qword ptr [r12 + 456]
 mov qword ptr [r12 + 408], rax
# marshal arg1 = producer-box slot [r12+368] -> [r12+416]
 mov rax, qword ptr [r12 + 368]
 mov qword ptr [r12 + 416], rax
 mov rax, qword ptr [r12 + 376]
 mov qword ptr [r12 + 424], rax
# marshal arg2 = producer-box slot [r12+288] -> [r12+432]
 mov rax, qword ptr [r12 + 288]
 mov qword ptr [r12 + 432], rax
 mov rax, qword ptr [r12 + 296]
 mov qword ptr [r12 + 440], rax
  .section .rodata
  .Lrkfn319: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn319]
 lea rsi, [r12 + 400]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 384], rax
 mov qword ptr [r12 + 392], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n104_α
 xchain212_n103_β:
 jmp main_ω
 xchain212_n104_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+544] -> [r12+496]
 mov rax, qword ptr [r12 + 544]
 mov qword ptr [r12 + 496], rax
 mov rax, qword ptr [r12 + 552]
 mov qword ptr [r12 + 504], rax
# marshal arg1 = producer-box slot [r12+464] -> [r12+512]
 mov rax, qword ptr [r12 + 464]
 mov qword ptr [r12 + 512], rax
 mov rax, qword ptr [r12 + 472]
 mov qword ptr [r12 + 520], rax
# marshal arg2 = producer-box slot [r12+384] -> [r12+528]
 mov rax, qword ptr [r12 + 384]
 mov qword ptr [r12 + 528], rax
 mov rax, qword ptr [r12 + 392]
 mov qword ptr [r12 + 536], rax
  .section .rodata
  .Lrkfn321: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn321]
 lea rsi, [r12 + 496]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 480], rax
 mov qword ptr [r12 + 488], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n105_α
 xchain212_n104_β:
 jmp main_ω
 xchain212_n105_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+640] -> [r12+592]
 mov rax, qword ptr [r12 + 640]
 mov qword ptr [r12 + 592], rax
 mov rax, qword ptr [r12 + 648]
 mov qword ptr [r12 + 600], rax
# marshal arg1 = producer-box slot [r12+560] -> [r12+608]
 mov rax, qword ptr [r12 + 560]
 mov qword ptr [r12 + 608], rax
 mov rax, qword ptr [r12 + 568]
 mov qword ptr [r12 + 616], rax
# marshal arg2 = producer-box slot [r12+480] -> [r12+624]
 mov rax, qword ptr [r12 + 480]
 mov qword ptr [r12 + 624], rax
 mov rax, qword ptr [r12 + 488]
 mov qword ptr [r12 + 632], rax
  .section .rodata
  .Lrkfn323: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn323]
 lea rsi, [r12 + 592]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 576], rax
 mov qword ptr [r12 + 584], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n106_α
 xchain212_n105_β:
 jmp main_ω
 xchain212_n106_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+736] -> [r12+688]
 mov rax, qword ptr [r12 + 736]
 mov qword ptr [r12 + 688], rax
 mov rax, qword ptr [r12 + 744]
 mov qword ptr [r12 + 696], rax
# marshal arg1 = producer-box slot [r12+656] -> [r12+704]
 mov rax, qword ptr [r12 + 656]
 mov qword ptr [r12 + 704], rax
 mov rax, qword ptr [r12 + 664]
 mov qword ptr [r12 + 712], rax
# marshal arg2 = producer-box slot [r12+576] -> [r12+720]
 mov rax, qword ptr [r12 + 576]
 mov qword ptr [r12 + 720], rax
 mov rax, qword ptr [r12 + 584]
 mov qword ptr [r12 + 728], rax
  .section .rodata
  .Lrkfn325: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn325]
 lea rsi, [r12 + 688]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 672], rax
 mov qword ptr [r12 + 680], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n107_α
 xchain212_n106_β:
 jmp main_ω
 xchain212_n107_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+832] -> [r12+784]
 mov rax, qword ptr [r12 + 832]
 mov qword ptr [r12 + 784], rax
 mov rax, qword ptr [r12 + 840]
 mov qword ptr [r12 + 792], rax
# marshal arg1 = producer-box slot [r12+752] -> [r12+800]
 mov rax, qword ptr [r12 + 752]
 mov qword ptr [r12 + 800], rax
 mov rax, qword ptr [r12 + 760]
 mov qword ptr [r12 + 808], rax
# marshal arg2 = producer-box slot [r12+672] -> [r12+816]
 mov rax, qword ptr [r12 + 672]
 mov qword ptr [r12 + 816], rax
 mov rax, qword ptr [r12 + 680]
 mov qword ptr [r12 + 824], rax
  .section .rodata
  .Lrkfn327: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn327]
 lea rsi, [r12 + 784]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 768], rax
 mov qword ptr [r12 + 776], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n108_α
 xchain212_n107_β:
 jmp main_ω
 xchain212_n108_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+928] -> [r12+880]
 mov rax, qword ptr [r12 + 928]
 mov qword ptr [r12 + 880], rax
 mov rax, qword ptr [r12 + 936]
 mov qword ptr [r12 + 888], rax
# marshal arg1 = producer-box slot [r12+848] -> [r12+896]
 mov rax, qword ptr [r12 + 848]
 mov qword ptr [r12 + 896], rax
 mov rax, qword ptr [r12 + 856]
 mov qword ptr [r12 + 904], rax
# marshal arg2 = producer-box slot [r12+768] -> [r12+912]
 mov rax, qword ptr [r12 + 768]
 mov qword ptr [r12 + 912], rax
 mov rax, qword ptr [r12 + 776]
 mov qword ptr [r12 + 920], rax
  .section .rodata
  .Lrkfn329: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn329]
 lea rsi, [r12 + 880]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 864], rax
 mov qword ptr [r12 + 872], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n109_α
 xchain212_n108_β:
 jmp main_ω
 xchain212_n109_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1024] -> [r12+976]
 mov rax, qword ptr [r12 + 1024]
 mov qword ptr [r12 + 976], rax
 mov rax, qword ptr [r12 + 1032]
 mov qword ptr [r12 + 984], rax
# marshal arg1 = producer-box slot [r12+944] -> [r12+992]
 mov rax, qword ptr [r12 + 944]
 mov qword ptr [r12 + 992], rax
 mov rax, qword ptr [r12 + 952]
 mov qword ptr [r12 + 1000], rax
# marshal arg2 = producer-box slot [r12+864] -> [r12+1008]
 mov rax, qword ptr [r12 + 864]
 mov qword ptr [r12 + 1008], rax
 mov rax, qword ptr [r12 + 872]
 mov qword ptr [r12 + 1016], rax
  .section .rodata
  .Lrkfn331: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn331]
 lea rsi, [r12 + 976]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 960], rax
 mov qword ptr [r12 + 968], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n110_α
 xchain212_n109_β:
 jmp main_ω
 xchain212_n110_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1120] -> [r12+1072]
 mov rax, qword ptr [r12 + 1120]
 mov qword ptr [r12 + 1072], rax
 mov rax, qword ptr [r12 + 1128]
 mov qword ptr [r12 + 1080], rax
# marshal arg1 = producer-box slot [r12+1040] -> [r12+1088]
 mov rax, qword ptr [r12 + 1040]
 mov qword ptr [r12 + 1088], rax
 mov rax, qword ptr [r12 + 1048]
 mov qword ptr [r12 + 1096], rax
# marshal arg2 = producer-box slot [r12+960] -> [r12+1104]
 mov rax, qword ptr [r12 + 960]
 mov qword ptr [r12 + 1104], rax
 mov rax, qword ptr [r12 + 968]
 mov qword ptr [r12 + 1112], rax
  .section .rodata
  .Lrkfn333: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn333]
 lea rsi, [r12 + 1072]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1056], rax
 mov qword ptr [r12 + 1064], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n111_α
 xchain212_n110_β:
 jmp main_ω
 xchain212_n111_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1216] -> [r12+1168]
 mov rax, qword ptr [r12 + 1216]
 mov qword ptr [r12 + 1168], rax
 mov rax, qword ptr [r12 + 1224]
 mov qword ptr [r12 + 1176], rax
# marshal arg1 = producer-box slot [r12+1136] -> [r12+1184]
 mov rax, qword ptr [r12 + 1136]
 mov qword ptr [r12 + 1184], rax
 mov rax, qword ptr [r12 + 1144]
 mov qword ptr [r12 + 1192], rax
# marshal arg2 = producer-box slot [r12+1056] -> [r12+1200]
 mov rax, qword ptr [r12 + 1056]
 mov qword ptr [r12 + 1200], rax
 mov rax, qword ptr [r12 + 1064]
 mov qword ptr [r12 + 1208], rax
  .section .rodata
  .Lrkfn335: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn335]
 lea rsi, [r12 + 1168]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1152], rax
 mov qword ptr [r12 + 1160], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n112_α
 xchain212_n111_β:
 jmp main_ω
 xchain212_n112_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1312] -> [r12+1264]
 mov rax, qword ptr [r12 + 1312]
 mov qword ptr [r12 + 1264], rax
 mov rax, qword ptr [r12 + 1320]
 mov qword ptr [r12 + 1272], rax
# marshal arg1 = producer-box slot [r12+1232] -> [r12+1280]
 mov rax, qword ptr [r12 + 1232]
 mov qword ptr [r12 + 1280], rax
 mov rax, qword ptr [r12 + 1240]
 mov qword ptr [r12 + 1288], rax
# marshal arg2 = producer-box slot [r12+1152] -> [r12+1296]
 mov rax, qword ptr [r12 + 1152]
 mov qword ptr [r12 + 1296], rax
 mov rax, qword ptr [r12 + 1160]
 mov qword ptr [r12 + 1304], rax
  .section .rodata
  .Lrkfn337: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn337]
 lea rsi, [r12 + 1264]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1248], rax
 mov qword ptr [r12 + 1256], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n113_α
 xchain212_n112_β:
 jmp main_ω
 xchain212_n113_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1408] -> [r12+1360]
 mov rax, qword ptr [r12 + 1408]
 mov qword ptr [r12 + 1360], rax
 mov rax, qword ptr [r12 + 1416]
 mov qword ptr [r12 + 1368], rax
# marshal arg1 = producer-box slot [r12+1328] -> [r12+1376]
 mov rax, qword ptr [r12 + 1328]
 mov qword ptr [r12 + 1376], rax
 mov rax, qword ptr [r12 + 1336]
 mov qword ptr [r12 + 1384], rax
# marshal arg2 = producer-box slot [r12+1248] -> [r12+1392]
 mov rax, qword ptr [r12 + 1248]
 mov qword ptr [r12 + 1392], rax
 mov rax, qword ptr [r12 + 1256]
 mov qword ptr [r12 + 1400], rax
  .section .rodata
  .Lrkfn339: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn339]
 lea rsi, [r12 + 1360]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1344], rax
 mov qword ptr [r12 + 1352], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n114_α
 xchain212_n113_β:
 jmp main_ω
 xchain212_n114_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1504] -> [r12+1456]
 mov rax, qword ptr [r12 + 1504]
 mov qword ptr [r12 + 1456], rax
 mov rax, qword ptr [r12 + 1512]
 mov qword ptr [r12 + 1464], rax
# marshal arg1 = producer-box slot [r12+1424] -> [r12+1472]
 mov rax, qword ptr [r12 + 1424]
 mov qword ptr [r12 + 1472], rax
 mov rax, qword ptr [r12 + 1432]
 mov qword ptr [r12 + 1480], rax
# marshal arg2 = producer-box slot [r12+1344] -> [r12+1488]
 mov rax, qword ptr [r12 + 1344]
 mov qword ptr [r12 + 1488], rax
 mov rax, qword ptr [r12 + 1352]
 mov qword ptr [r12 + 1496], rax
  .section .rodata
  .Lrkfn341: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn341]
 lea rsi, [r12 + 1456]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1440], rax
 mov qword ptr [r12 + 1448], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n115_α
 xchain212_n114_β:
 jmp main_ω
 xchain212_n115_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1600] -> [r12+1552]
 mov rax, qword ptr [r12 + 1600]
 mov qword ptr [r12 + 1552], rax
 mov rax, qword ptr [r12 + 1608]
 mov qword ptr [r12 + 1560], rax
# marshal arg1 = producer-box slot [r12+1520] -> [r12+1568]
 mov rax, qword ptr [r12 + 1520]
 mov qword ptr [r12 + 1568], rax
 mov rax, qword ptr [r12 + 1528]
 mov qword ptr [r12 + 1576], rax
# marshal arg2 = producer-box slot [r12+1440] -> [r12+1584]
 mov rax, qword ptr [r12 + 1440]
 mov qword ptr [r12 + 1584], rax
 mov rax, qword ptr [r12 + 1448]
 mov qword ptr [r12 + 1592], rax
  .section .rodata
  .Lrkfn343: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn343]
 lea rsi, [r12 + 1552]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1536], rax
 mov qword ptr [r12 + 1544], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n116_α
 xchain212_n115_β:
 jmp main_ω
 xchain212_n116_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1696] -> [r12+1648]
 mov rax, qword ptr [r12 + 1696]
 mov qword ptr [r12 + 1648], rax
 mov rax, qword ptr [r12 + 1704]
 mov qword ptr [r12 + 1656], rax
# marshal arg1 = producer-box slot [r12+1616] -> [r12+1664]
 mov rax, qword ptr [r12 + 1616]
 mov qword ptr [r12 + 1664], rax
 mov rax, qword ptr [r12 + 1624]
 mov qword ptr [r12 + 1672], rax
# marshal arg2 = producer-box slot [r12+1536] -> [r12+1680]
 mov rax, qword ptr [r12 + 1536]
 mov qword ptr [r12 + 1680], rax
 mov rax, qword ptr [r12 + 1544]
 mov qword ptr [r12 + 1688], rax
  .section .rodata
  .Lrkfn345: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn345]
 lea rsi, [r12 + 1648]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1632], rax
 mov qword ptr [r12 + 1640], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n117_α
 xchain212_n116_β:
 jmp main_ω
 xchain212_n117_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1792] -> [r12+1744]
 mov rax, qword ptr [r12 + 1792]
 mov qword ptr [r12 + 1744], rax
 mov rax, qword ptr [r12 + 1800]
 mov qword ptr [r12 + 1752], rax
# marshal arg1 = producer-box slot [r12+1712] -> [r12+1760]
 mov rax, qword ptr [r12 + 1712]
 mov qword ptr [r12 + 1760], rax
 mov rax, qword ptr [r12 + 1720]
 mov qword ptr [r12 + 1768], rax
# marshal arg2 = producer-box slot [r12+1632] -> [r12+1776]
 mov rax, qword ptr [r12 + 1632]
 mov qword ptr [r12 + 1776], rax
 mov rax, qword ptr [r12 + 1640]
 mov qword ptr [r12 + 1784], rax
  .section .rodata
  .Lrkfn347: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn347]
 lea rsi, [r12 + 1744]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1728], rax
 mov qword ptr [r12 + 1736], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n118_α
 xchain212_n117_β:
 jmp main_ω
 xchain212_n118_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1888] -> [r12+1840]
 mov rax, qword ptr [r12 + 1888]
 mov qword ptr [r12 + 1840], rax
 mov rax, qword ptr [r12 + 1896]
 mov qword ptr [r12 + 1848], rax
# marshal arg1 = producer-box slot [r12+1808] -> [r12+1856]
 mov rax, qword ptr [r12 + 1808]
 mov qword ptr [r12 + 1856], rax
 mov rax, qword ptr [r12 + 1816]
 mov qword ptr [r12 + 1864], rax
# marshal arg2 = producer-box slot [r12+1728] -> [r12+1872]
 mov rax, qword ptr [r12 + 1728]
 mov qword ptr [r12 + 1872], rax
 mov rax, qword ptr [r12 + 1736]
 mov qword ptr [r12 + 1880], rax
  .section .rodata
  .Lrkfn349: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn349]
 lea rsi, [r12 + 1840]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1824], rax
 mov qword ptr [r12 + 1832], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n119_α
 xchain212_n118_β:
 jmp main_ω
 xchain212_n119_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+1984] -> [r12+1936]
 mov rax, qword ptr [r12 + 1984]
 mov qword ptr [r12 + 1936], rax
 mov rax, qword ptr [r12 + 1992]
 mov qword ptr [r12 + 1944], rax
# marshal arg1 = producer-box slot [r12+1904] -> [r12+1952]
 mov rax, qword ptr [r12 + 1904]
 mov qword ptr [r12 + 1952], rax
 mov rax, qword ptr [r12 + 1912]
 mov qword ptr [r12 + 1960], rax
# marshal arg2 = producer-box slot [r12+1824] -> [r12+1968]
 mov rax, qword ptr [r12 + 1824]
 mov qword ptr [r12 + 1968], rax
 mov rax, qword ptr [r12 + 1832]
 mov qword ptr [r12 + 1976], rax
  .section .rodata
  .Lrkfn351: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn351]
 lea rsi, [r12 + 1936]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 1920], rax
 mov qword ptr [r12 + 1928], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n120_α
 xchain212_n119_β:
 jmp main_ω
 xchain212_n120_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2080] -> [r12+2032]
 mov rax, qword ptr [r12 + 2080]
 mov qword ptr [r12 + 2032], rax
 mov rax, qword ptr [r12 + 2088]
 mov qword ptr [r12 + 2040], rax
# marshal arg1 = producer-box slot [r12+2000] -> [r12+2048]
 mov rax, qword ptr [r12 + 2000]
 mov qword ptr [r12 + 2048], rax
 mov rax, qword ptr [r12 + 2008]
 mov qword ptr [r12 + 2056], rax
# marshal arg2 = producer-box slot [r12+1920] -> [r12+2064]
 mov rax, qword ptr [r12 + 1920]
 mov qword ptr [r12 + 2064], rax
 mov rax, qword ptr [r12 + 1928]
 mov qword ptr [r12 + 2072], rax
  .section .rodata
  .Lrkfn353: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn353]
 lea rsi, [r12 + 2032]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2016], rax
 mov qword ptr [r12 + 2024], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n121_α
 xchain212_n120_β:
 jmp main_ω
 xchain212_n121_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2176] -> [r12+2128]
 mov rax, qword ptr [r12 + 2176]
 mov qword ptr [r12 + 2128], rax
 mov rax, qword ptr [r12 + 2184]
 mov qword ptr [r12 + 2136], rax
# marshal arg1 = producer-box slot [r12+2096] -> [r12+2144]
 mov rax, qword ptr [r12 + 2096]
 mov qword ptr [r12 + 2144], rax
 mov rax, qword ptr [r12 + 2104]
 mov qword ptr [r12 + 2152], rax
# marshal arg2 = producer-box slot [r12+2016] -> [r12+2160]
 mov rax, qword ptr [r12 + 2016]
 mov qword ptr [r12 + 2160], rax
 mov rax, qword ptr [r12 + 2024]
 mov qword ptr [r12 + 2168], rax
  .section .rodata
  .Lrkfn355: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn355]
 lea rsi, [r12 + 2128]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2112], rax
 mov qword ptr [r12 + 2120], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n122_α
 xchain212_n121_β:
 jmp main_ω
 xchain212_n122_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2272] -> [r12+2224]
 mov rax, qword ptr [r12 + 2272]
 mov qword ptr [r12 + 2224], rax
 mov rax, qword ptr [r12 + 2280]
 mov qword ptr [r12 + 2232], rax
# marshal arg1 = producer-box slot [r12+2192] -> [r12+2240]
 mov rax, qword ptr [r12 + 2192]
 mov qword ptr [r12 + 2240], rax
 mov rax, qword ptr [r12 + 2200]
 mov qword ptr [r12 + 2248], rax
# marshal arg2 = producer-box slot [r12+2112] -> [r12+2256]
 mov rax, qword ptr [r12 + 2112]
 mov qword ptr [r12 + 2256], rax
 mov rax, qword ptr [r12 + 2120]
 mov qword ptr [r12 + 2264], rax
  .section .rodata
  .Lrkfn357: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn357]
 lea rsi, [r12 + 2224]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2208], rax
 mov qword ptr [r12 + 2216], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n123_α
 xchain212_n122_β:
 jmp main_ω
 xchain212_n123_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2368] -> [r12+2320]
 mov rax, qword ptr [r12 + 2368]
 mov qword ptr [r12 + 2320], rax
 mov rax, qword ptr [r12 + 2376]
 mov qword ptr [r12 + 2328], rax
# marshal arg1 = producer-box slot [r12+2288] -> [r12+2336]
 mov rax, qword ptr [r12 + 2288]
 mov qword ptr [r12 + 2336], rax
 mov rax, qword ptr [r12 + 2296]
 mov qword ptr [r12 + 2344], rax
# marshal arg2 = producer-box slot [r12+2208] -> [r12+2352]
 mov rax, qword ptr [r12 + 2208]
 mov qword ptr [r12 + 2352], rax
 mov rax, qword ptr [r12 + 2216]
 mov qword ptr [r12 + 2360], rax
  .section .rodata
  .Lrkfn359: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn359]
 lea rsi, [r12 + 2320]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2304], rax
 mov qword ptr [r12 + 2312], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n124_α
 xchain212_n123_β:
 jmp main_ω
 xchain212_n124_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2464] -> [r12+2416]
 mov rax, qword ptr [r12 + 2464]
 mov qword ptr [r12 + 2416], rax
 mov rax, qword ptr [r12 + 2472]
 mov qword ptr [r12 + 2424], rax
# marshal arg1 = producer-box slot [r12+2384] -> [r12+2432]
 mov rax, qword ptr [r12 + 2384]
 mov qword ptr [r12 + 2432], rax
 mov rax, qword ptr [r12 + 2392]
 mov qword ptr [r12 + 2440], rax
# marshal arg2 = producer-box slot [r12+2304] -> [r12+2448]
 mov rax, qword ptr [r12 + 2304]
 mov qword ptr [r12 + 2448], rax
 mov rax, qword ptr [r12 + 2312]
 mov qword ptr [r12 + 2456], rax
  .section .rodata
  .Lrkfn361: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn361]
 lea rsi, [r12 + 2416]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2400], rax
 mov qword ptr [r12 + 2408], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n125_α
 xchain212_n124_β:
 jmp main_ω
 xchain212_n125_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2560] -> [r12+2512]
 mov rax, qword ptr [r12 + 2560]
 mov qword ptr [r12 + 2512], rax
 mov rax, qword ptr [r12 + 2568]
 mov qword ptr [r12 + 2520], rax
# marshal arg1 = producer-box slot [r12+2480] -> [r12+2528]
 mov rax, qword ptr [r12 + 2480]
 mov qword ptr [r12 + 2528], rax
 mov rax, qword ptr [r12 + 2488]
 mov qword ptr [r12 + 2536], rax
# marshal arg2 = producer-box slot [r12+2400] -> [r12+2544]
 mov rax, qword ptr [r12 + 2400]
 mov qword ptr [r12 + 2544], rax
 mov rax, qword ptr [r12 + 2408]
 mov qword ptr [r12 + 2552], rax
  .section .rodata
  .Lrkfn363: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn363]
 lea rsi, [r12 + 2512]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2496], rax
 mov qword ptr [r12 + 2504], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n126_α
 xchain212_n125_β:
 jmp main_ω
 xchain212_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2656] -> [r12+2608]
 mov rax, qword ptr [r12 + 2656]
 mov qword ptr [r12 + 2608], rax
 mov rax, qword ptr [r12 + 2664]
 mov qword ptr [r12 + 2616], rax
# marshal arg1 = producer-box slot [r12+2576] -> [r12+2624]
 mov rax, qword ptr [r12 + 2576]
 mov qword ptr [r12 + 2624], rax
 mov rax, qword ptr [r12 + 2584]
 mov qword ptr [r12 + 2632], rax
# marshal arg2 = producer-box slot [r12+2496] -> [r12+2640]
 mov rax, qword ptr [r12 + 2496]
 mov qword ptr [r12 + 2640], rax
 mov rax, qword ptr [r12 + 2504]
 mov qword ptr [r12 + 2648], rax
  .section .rodata
  .Lrkfn365: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn365]
 lea rsi, [r12 + 2608]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2592], rax
 mov qword ptr [r12 + 2600], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n127_α
 xchain212_n126_β:
 jmp main_ω
 xchain212_n127_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2752] -> [r12+2704]
 mov rax, qword ptr [r12 + 2752]
 mov qword ptr [r12 + 2704], rax
 mov rax, qword ptr [r12 + 2760]
 mov qword ptr [r12 + 2712], rax
# marshal arg1 = producer-box slot [r12+2672] -> [r12+2720]
 mov rax, qword ptr [r12 + 2672]
 mov qword ptr [r12 + 2720], rax
 mov rax, qword ptr [r12 + 2680]
 mov qword ptr [r12 + 2728], rax
# marshal arg2 = producer-box slot [r12+2592] -> [r12+2736]
 mov rax, qword ptr [r12 + 2592]
 mov qword ptr [r12 + 2736], rax
 mov rax, qword ptr [r12 + 2600]
 mov qword ptr [r12 + 2744], rax
  .section .rodata
  .Lrkfn367: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn367]
 lea rsi, [r12 + 2704]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2688], rax
 mov qword ptr [r12 + 2696], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n128_α
 xchain212_n127_β:
 jmp main_ω
 xchain212_n128_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2848] -> [r12+2800]
 mov rax, qword ptr [r12 + 2848]
 mov qword ptr [r12 + 2800], rax
 mov rax, qword ptr [r12 + 2856]
 mov qword ptr [r12 + 2808], rax
# marshal arg1 = producer-box slot [r12+2768] -> [r12+2816]
 mov rax, qword ptr [r12 + 2768]
 mov qword ptr [r12 + 2816], rax
 mov rax, qword ptr [r12 + 2776]
 mov qword ptr [r12 + 2824], rax
# marshal arg2 = producer-box slot [r12+2688] -> [r12+2832]
 mov rax, qword ptr [r12 + 2688]
 mov qword ptr [r12 + 2832], rax
 mov rax, qword ptr [r12 + 2696]
 mov qword ptr [r12 + 2840], rax
  .section .rodata
  .Lrkfn369: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn369]
 lea rsi, [r12 + 2800]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2784], rax
 mov qword ptr [r12 + 2792], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n129_α
 xchain212_n128_β:
 jmp main_ω
 xchain212_n129_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+2944] -> [r12+2896]
 mov rax, qword ptr [r12 + 2944]
 mov qword ptr [r12 + 2896], rax
 mov rax, qword ptr [r12 + 2952]
 mov qword ptr [r12 + 2904], rax
# marshal arg1 = producer-box slot [r12+2864] -> [r12+2912]
 mov rax, qword ptr [r12 + 2864]
 mov qword ptr [r12 + 2912], rax
 mov rax, qword ptr [r12 + 2872]
 mov qword ptr [r12 + 2920], rax
# marshal arg2 = producer-box slot [r12+2784] -> [r12+2928]
 mov rax, qword ptr [r12 + 2784]
 mov qword ptr [r12 + 2928], rax
 mov rax, qword ptr [r12 + 2792]
 mov qword ptr [r12 + 2936], rax
  .section .rodata
  .Lrkfn371: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn371]
 lea rsi, [r12 + 2896]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2880], rax
 mov qword ptr [r12 + 2888], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n130_α
 xchain212_n129_β:
 jmp main_ω
 xchain212_n130_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3040] -> [r12+2992]
 mov rax, qword ptr [r12 + 3040]
 mov qword ptr [r12 + 2992], rax
 mov rax, qword ptr [r12 + 3048]
 mov qword ptr [r12 + 3000], rax
# marshal arg1 = producer-box slot [r12+2960] -> [r12+3008]
 mov rax, qword ptr [r12 + 2960]
 mov qword ptr [r12 + 3008], rax
 mov rax, qword ptr [r12 + 2968]
 mov qword ptr [r12 + 3016], rax
# marshal arg2 = producer-box slot [r12+2880] -> [r12+3024]
 mov rax, qword ptr [r12 + 2880]
 mov qword ptr [r12 + 3024], rax
 mov rax, qword ptr [r12 + 2888]
 mov qword ptr [r12 + 3032], rax
  .section .rodata
  .Lrkfn373: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn373]
 lea rsi, [r12 + 2992]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 2976], rax
 mov qword ptr [r12 + 2984], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n131_α
 xchain212_n130_β:
 jmp main_ω
 xchain212_n131_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3136] -> [r12+3088]
 mov rax, qword ptr [r12 + 3136]
 mov qword ptr [r12 + 3088], rax
 mov rax, qword ptr [r12 + 3144]
 mov qword ptr [r12 + 3096], rax
# marshal arg1 = producer-box slot [r12+3056] -> [r12+3104]
 mov rax, qword ptr [r12 + 3056]
 mov qword ptr [r12 + 3104], rax
 mov rax, qword ptr [r12 + 3064]
 mov qword ptr [r12 + 3112], rax
# marshal arg2 = producer-box slot [r12+2976] -> [r12+3120]
 mov rax, qword ptr [r12 + 2976]
 mov qword ptr [r12 + 3120], rax
 mov rax, qword ptr [r12 + 2984]
 mov qword ptr [r12 + 3128], rax
  .section .rodata
  .Lrkfn375: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn375]
 lea rsi, [r12 + 3088]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3072], rax
 mov qword ptr [r12 + 3080], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n132_α
 xchain212_n131_β:
 jmp main_ω
 xchain212_n132_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3232] -> [r12+3184]
 mov rax, qword ptr [r12 + 3232]
 mov qword ptr [r12 + 3184], rax
 mov rax, qword ptr [r12 + 3240]
 mov qword ptr [r12 + 3192], rax
# marshal arg1 = producer-box slot [r12+3152] -> [r12+3200]
 mov rax, qword ptr [r12 + 3152]
 mov qword ptr [r12 + 3200], rax
 mov rax, qword ptr [r12 + 3160]
 mov qword ptr [r12 + 3208], rax
# marshal arg2 = producer-box slot [r12+3072] -> [r12+3216]
 mov rax, qword ptr [r12 + 3072]
 mov qword ptr [r12 + 3216], rax
 mov rax, qword ptr [r12 + 3080]
 mov qword ptr [r12 + 3224], rax
  .section .rodata
  .Lrkfn377: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn377]
 lea rsi, [r12 + 3184]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3168], rax
 mov qword ptr [r12 + 3176], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n133_α
 xchain212_n132_β:
 jmp main_ω
 xchain212_n133_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3328] -> [r12+3280]
 mov rax, qword ptr [r12 + 3328]
 mov qword ptr [r12 + 3280], rax
 mov rax, qword ptr [r12 + 3336]
 mov qword ptr [r12 + 3288], rax
# marshal arg1 = producer-box slot [r12+3248] -> [r12+3296]
 mov rax, qword ptr [r12 + 3248]
 mov qword ptr [r12 + 3296], rax
 mov rax, qword ptr [r12 + 3256]
 mov qword ptr [r12 + 3304], rax
# marshal arg2 = producer-box slot [r12+3168] -> [r12+3312]
 mov rax, qword ptr [r12 + 3168]
 mov qword ptr [r12 + 3312], rax
 mov rax, qword ptr [r12 + 3176]
 mov qword ptr [r12 + 3320], rax
  .section .rodata
  .Lrkfn379: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn379]
 lea rsi, [r12 + 3280]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3264], rax
 mov qword ptr [r12 + 3272], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n134_α
 xchain212_n133_β:
 jmp main_ω
 xchain212_n134_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3424] -> [r12+3376]
 mov rax, qword ptr [r12 + 3424]
 mov qword ptr [r12 + 3376], rax
 mov rax, qword ptr [r12 + 3432]
 mov qword ptr [r12 + 3384], rax
# marshal arg1 = producer-box slot [r12+3344] -> [r12+3392]
 mov rax, qword ptr [r12 + 3344]
 mov qword ptr [r12 + 3392], rax
 mov rax, qword ptr [r12 + 3352]
 mov qword ptr [r12 + 3400], rax
# marshal arg2 = producer-box slot [r12+3264] -> [r12+3408]
 mov rax, qword ptr [r12 + 3264]
 mov qword ptr [r12 + 3408], rax
 mov rax, qword ptr [r12 + 3272]
 mov qword ptr [r12 + 3416], rax
  .section .rodata
  .Lrkfn381: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn381]
 lea rsi, [r12 + 3376]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3360], rax
 mov qword ptr [r12 + 3368], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n135_α
 xchain212_n134_β:
 jmp main_ω
 xchain212_n135_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3520] -> [r12+3472]
 mov rax, qword ptr [r12 + 3520]
 mov qword ptr [r12 + 3472], rax
 mov rax, qword ptr [r12 + 3528]
 mov qword ptr [r12 + 3480], rax
# marshal arg1 = producer-box slot [r12+3440] -> [r12+3488]
 mov rax, qword ptr [r12 + 3440]
 mov qword ptr [r12 + 3488], rax
 mov rax, qword ptr [r12 + 3448]
 mov qword ptr [r12 + 3496], rax
# marshal arg2 = producer-box slot [r12+3360] -> [r12+3504]
 mov rax, qword ptr [r12 + 3360]
 mov qword ptr [r12 + 3504], rax
 mov rax, qword ptr [r12 + 3368]
 mov qword ptr [r12 + 3512], rax
  .section .rodata
  .Lrkfn383: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn383]
 lea rsi, [r12 + 3472]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3456], rax
 mov qword ptr [r12 + 3464], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n136_α
 xchain212_n135_β:
 jmp main_ω
 xchain212_n136_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3616] -> [r12+3568]
 mov rax, qword ptr [r12 + 3616]
 mov qword ptr [r12 + 3568], rax
 mov rax, qword ptr [r12 + 3624]
 mov qword ptr [r12 + 3576], rax
# marshal arg1 = producer-box slot [r12+3536] -> [r12+3584]
 mov rax, qword ptr [r12 + 3536]
 mov qword ptr [r12 + 3584], rax
 mov rax, qword ptr [r12 + 3544]
 mov qword ptr [r12 + 3592], rax
# marshal arg2 = producer-box slot [r12+3456] -> [r12+3600]
 mov rax, qword ptr [r12 + 3456]
 mov qword ptr [r12 + 3600], rax
 mov rax, qword ptr [r12 + 3464]
 mov qword ptr [r12 + 3608], rax
  .section .rodata
  .Lrkfn385: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn385]
 lea rsi, [r12 + 3568]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3552], rax
 mov qword ptr [r12 + 3560], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n137_α
 xchain212_n136_β:
 jmp main_ω
 xchain212_n137_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3712] -> [r12+3664]
 mov rax, qword ptr [r12 + 3712]
 mov qword ptr [r12 + 3664], rax
 mov rax, qword ptr [r12 + 3720]
 mov qword ptr [r12 + 3672], rax
# marshal arg1 = producer-box slot [r12+3632] -> [r12+3680]
 mov rax, qword ptr [r12 + 3632]
 mov qword ptr [r12 + 3680], rax
 mov rax, qword ptr [r12 + 3640]
 mov qword ptr [r12 + 3688], rax
# marshal arg2 = producer-box slot [r12+3552] -> [r12+3696]
 mov rax, qword ptr [r12 + 3552]
 mov qword ptr [r12 + 3696], rax
 mov rax, qword ptr [r12 + 3560]
 mov qword ptr [r12 + 3704], rax
  .section .rodata
  .Lrkfn387: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn387]
 lea rsi, [r12 + 3664]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3648], rax
 mov qword ptr [r12 + 3656], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n138_α
 xchain212_n137_β:
 jmp main_ω
 xchain212_n138_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3808] -> [r12+3760]
 mov rax, qword ptr [r12 + 3808]
 mov qword ptr [r12 + 3760], rax
 mov rax, qword ptr [r12 + 3816]
 mov qword ptr [r12 + 3768], rax
# marshal arg1 = producer-box slot [r12+3728] -> [r12+3776]
 mov rax, qword ptr [r12 + 3728]
 mov qword ptr [r12 + 3776], rax
 mov rax, qword ptr [r12 + 3736]
 mov qword ptr [r12 + 3784], rax
# marshal arg2 = producer-box slot [r12+3648] -> [r12+3792]
 mov rax, qword ptr [r12 + 3648]
 mov qword ptr [r12 + 3792], rax
 mov rax, qword ptr [r12 + 3656]
 mov qword ptr [r12 + 3800], rax
  .section .rodata
  .Lrkfn389: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn389]
 lea rsi, [r12 + 3760]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3744], rax
 mov qword ptr [r12 + 3752], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n139_α
 xchain212_n138_β:
 jmp main_ω
 xchain212_n139_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+3904] -> [r12+3856]
 mov rax, qword ptr [r12 + 3904]
 mov qword ptr [r12 + 3856], rax
 mov rax, qword ptr [r12 + 3912]
 mov qword ptr [r12 + 3864], rax
# marshal arg1 = producer-box slot [r12+3824] -> [r12+3872]
 mov rax, qword ptr [r12 + 3824]
 mov qword ptr [r12 + 3872], rax
 mov rax, qword ptr [r12 + 3832]
 mov qword ptr [r12 + 3880], rax
# marshal arg2 = producer-box slot [r12+3744] -> [r12+3888]
 mov rax, qword ptr [r12 + 3744]
 mov qword ptr [r12 + 3888], rax
 mov rax, qword ptr [r12 + 3752]
 mov qword ptr [r12 + 3896], rax
  .section .rodata
  .Lrkfn391: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn391]
 lea rsi, [r12 + 3856]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3840], rax
 mov qword ptr [r12 + 3848], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n140_α
 xchain212_n139_β:
 jmp main_ω
 xchain212_n140_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4000] -> [r12+3952]
 mov rax, qword ptr [r12 + 4000]
 mov qword ptr [r12 + 3952], rax
 mov rax, qword ptr [r12 + 4008]
 mov qword ptr [r12 + 3960], rax
# marshal arg1 = producer-box slot [r12+3920] -> [r12+3968]
 mov rax, qword ptr [r12 + 3920]
 mov qword ptr [r12 + 3968], rax
 mov rax, qword ptr [r12 + 3928]
 mov qword ptr [r12 + 3976], rax
# marshal arg2 = producer-box slot [r12+3840] -> [r12+3984]
 mov rax, qword ptr [r12 + 3840]
 mov qword ptr [r12 + 3984], rax
 mov rax, qword ptr [r12 + 3848]
 mov qword ptr [r12 + 3992], rax
  .section .rodata
  .Lrkfn393: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn393]
 lea rsi, [r12 + 3952]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 3936], rax
 mov qword ptr [r12 + 3944], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n141_α
 xchain212_n140_β:
 jmp main_ω
 xchain212_n141_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4096] -> [r12+4048]
 mov rax, qword ptr [r12 + 4096]
 mov qword ptr [r12 + 4048], rax
 mov rax, qword ptr [r12 + 4104]
 mov qword ptr [r12 + 4056], rax
# marshal arg1 = producer-box slot [r12+4016] -> [r12+4064]
 mov rax, qword ptr [r12 + 4016]
 mov qword ptr [r12 + 4064], rax
 mov rax, qword ptr [r12 + 4024]
 mov qword ptr [r12 + 4072], rax
# marshal arg2 = producer-box slot [r12+3936] -> [r12+4080]
 mov rax, qword ptr [r12 + 3936]
 mov qword ptr [r12 + 4080], rax
 mov rax, qword ptr [r12 + 3944]
 mov qword ptr [r12 + 4088], rax
  .section .rodata
  .Lrkfn395: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn395]
 lea rsi, [r12 + 4048]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4032], rax
 mov qword ptr [r12 + 4040], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n142_α
 xchain212_n141_β:
 jmp main_ω
 xchain212_n142_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4192] -> [r12+4144]
 mov rax, qword ptr [r12 + 4192]
 mov qword ptr [r12 + 4144], rax
 mov rax, qword ptr [r12 + 4200]
 mov qword ptr [r12 + 4152], rax
# marshal arg1 = producer-box slot [r12+4112] -> [r12+4160]
 mov rax, qword ptr [r12 + 4112]
 mov qword ptr [r12 + 4160], rax
 mov rax, qword ptr [r12 + 4120]
 mov qword ptr [r12 + 4168], rax
# marshal arg2 = producer-box slot [r12+4032] -> [r12+4176]
 mov rax, qword ptr [r12 + 4032]
 mov qword ptr [r12 + 4176], rax
 mov rax, qword ptr [r12 + 4040]
 mov qword ptr [r12 + 4184], rax
  .section .rodata
  .Lrkfn397: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn397]
 lea rsi, [r12 + 4144]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4128], rax
 mov qword ptr [r12 + 4136], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n143_α
 xchain212_n142_β:
 jmp main_ω
 xchain212_n143_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4288] -> [r12+4240]
 mov rax, qword ptr [r12 + 4288]
 mov qword ptr [r12 + 4240], rax
 mov rax, qword ptr [r12 + 4296]
 mov qword ptr [r12 + 4248], rax
# marshal arg1 = producer-box slot [r12+4208] -> [r12+4256]
 mov rax, qword ptr [r12 + 4208]
 mov qword ptr [r12 + 4256], rax
 mov rax, qword ptr [r12 + 4216]
 mov qword ptr [r12 + 4264], rax
# marshal arg2 = producer-box slot [r12+4128] -> [r12+4272]
 mov rax, qword ptr [r12 + 4128]
 mov qword ptr [r12 + 4272], rax
 mov rax, qword ptr [r12 + 4136]
 mov qword ptr [r12 + 4280], rax
  .section .rodata
  .Lrkfn399: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn399]
 lea rsi, [r12 + 4240]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4224], rax
 mov qword ptr [r12 + 4232], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n144_α
 xchain212_n143_β:
 jmp main_ω
 xchain212_n144_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4384] -> [r12+4336]
 mov rax, qword ptr [r12 + 4384]
 mov qword ptr [r12 + 4336], rax
 mov rax, qword ptr [r12 + 4392]
 mov qword ptr [r12 + 4344], rax
# marshal arg1 = producer-box slot [r12+4304] -> [r12+4352]
 mov rax, qword ptr [r12 + 4304]
 mov qword ptr [r12 + 4352], rax
 mov rax, qword ptr [r12 + 4312]
 mov qword ptr [r12 + 4360], rax
# marshal arg2 = producer-box slot [r12+4224] -> [r12+4368]
 mov rax, qword ptr [r12 + 4224]
 mov qword ptr [r12 + 4368], rax
 mov rax, qword ptr [r12 + 4232]
 mov qword ptr [r12 + 4376], rax
  .section .rodata
  .Lrkfn401: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn401]
 lea rsi, [r12 + 4336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4320], rax
 mov qword ptr [r12 + 4328], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n145_α
 xchain212_n144_β:
 jmp main_ω
 xchain212_n145_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4480] -> [r12+4432]
 mov rax, qword ptr [r12 + 4480]
 mov qword ptr [r12 + 4432], rax
 mov rax, qword ptr [r12 + 4488]
 mov qword ptr [r12 + 4440], rax
# marshal arg1 = producer-box slot [r12+4400] -> [r12+4448]
 mov rax, qword ptr [r12 + 4400]
 mov qword ptr [r12 + 4448], rax
 mov rax, qword ptr [r12 + 4408]
 mov qword ptr [r12 + 4456], rax
# marshal arg2 = producer-box slot [r12+4320] -> [r12+4464]
 mov rax, qword ptr [r12 + 4320]
 mov qword ptr [r12 + 4464], rax
 mov rax, qword ptr [r12 + 4328]
 mov qword ptr [r12 + 4472], rax
  .section .rodata
  .Lrkfn403: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn403]
 lea rsi, [r12 + 4432]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4416], rax
 mov qword ptr [r12 + 4424], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n146_α
 xchain212_n145_β:
 jmp main_ω
 xchain212_n146_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4576] -> [r12+4528]
 mov rax, qword ptr [r12 + 4576]
 mov qword ptr [r12 + 4528], rax
 mov rax, qword ptr [r12 + 4584]
 mov qword ptr [r12 + 4536], rax
# marshal arg1 = producer-box slot [r12+4496] -> [r12+4544]
 mov rax, qword ptr [r12 + 4496]
 mov qword ptr [r12 + 4544], rax
 mov rax, qword ptr [r12 + 4504]
 mov qword ptr [r12 + 4552], rax
# marshal arg2 = producer-box slot [r12+4416] -> [r12+4560]
 mov rax, qword ptr [r12 + 4416]
 mov qword ptr [r12 + 4560], rax
 mov rax, qword ptr [r12 + 4424]
 mov qword ptr [r12 + 4568], rax
  .section .rodata
  .Lrkfn405: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn405]
 lea rsi, [r12 + 4528]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4512], rax
 mov qword ptr [r12 + 4520], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n147_α
 xchain212_n146_β:
 jmp main_ω
 xchain212_n147_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4672] -> [r12+4624]
 mov rax, qword ptr [r12 + 4672]
 mov qword ptr [r12 + 4624], rax
 mov rax, qword ptr [r12 + 4680]
 mov qword ptr [r12 + 4632], rax
# marshal arg1 = producer-box slot [r12+4592] -> [r12+4640]
 mov rax, qword ptr [r12 + 4592]
 mov qword ptr [r12 + 4640], rax
 mov rax, qword ptr [r12 + 4600]
 mov qword ptr [r12 + 4648], rax
# marshal arg2 = producer-box slot [r12+4512] -> [r12+4656]
 mov rax, qword ptr [r12 + 4512]
 mov qword ptr [r12 + 4656], rax
 mov rax, qword ptr [r12 + 4520]
 mov qword ptr [r12 + 4664], rax
  .section .rodata
  .Lrkfn407: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn407]
 lea rsi, [r12 + 4624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4608], rax
 mov qword ptr [r12 + 4616], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n148_α
 xchain212_n147_β:
 jmp main_ω
 xchain212_n148_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4768] -> [r12+4720]
 mov rax, qword ptr [r12 + 4768]
 mov qword ptr [r12 + 4720], rax
 mov rax, qword ptr [r12 + 4776]
 mov qword ptr [r12 + 4728], rax
# marshal arg1 = producer-box slot [r12+4688] -> [r12+4736]
 mov rax, qword ptr [r12 + 4688]
 mov qword ptr [r12 + 4736], rax
 mov rax, qword ptr [r12 + 4696]
 mov qword ptr [r12 + 4744], rax
# marshal arg2 = producer-box slot [r12+4608] -> [r12+4752]
 mov rax, qword ptr [r12 + 4608]
 mov qword ptr [r12 + 4752], rax
 mov rax, qword ptr [r12 + 4616]
 mov qword ptr [r12 + 4760], rax
  .section .rodata
  .Lrkfn409: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn409]
 lea rsi, [r12 + 4720]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4704], rax
 mov qword ptr [r12 + 4712], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n149_α
 xchain212_n148_β:
 jmp main_ω
 xchain212_n149_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4864] -> [r12+4816]
 mov rax, qword ptr [r12 + 4864]
 mov qword ptr [r12 + 4816], rax
 mov rax, qword ptr [r12 + 4872]
 mov qword ptr [r12 + 4824], rax
# marshal arg1 = producer-box slot [r12+4784] -> [r12+4832]
 mov rax, qword ptr [r12 + 4784]
 mov qword ptr [r12 + 4832], rax
 mov rax, qword ptr [r12 + 4792]
 mov qword ptr [r12 + 4840], rax
# marshal arg2 = producer-box slot [r12+4704] -> [r12+4848]
 mov rax, qword ptr [r12 + 4704]
 mov qword ptr [r12 + 4848], rax
 mov rax, qword ptr [r12 + 4712]
 mov qword ptr [r12 + 4856], rax
  .section .rodata
  .Lrkfn411: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn411]
 lea rsi, [r12 + 4816]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4800], rax
 mov qword ptr [r12 + 4808], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n150_α
 xchain212_n149_β:
 jmp main_ω
 xchain212_n150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+4960] -> [r12+4912]
 mov rax, qword ptr [r12 + 4960]
 mov qword ptr [r12 + 4912], rax
 mov rax, qword ptr [r12 + 4968]
 mov qword ptr [r12 + 4920], rax
# marshal arg1 = producer-box slot [r12+4880] -> [r12+4928]
 mov rax, qword ptr [r12 + 4880]
 mov qword ptr [r12 + 4928], rax
 mov rax, qword ptr [r12 + 4888]
 mov qword ptr [r12 + 4936], rax
# marshal arg2 = producer-box slot [r12+4800] -> [r12+4944]
 mov rax, qword ptr [r12 + 4800]
 mov qword ptr [r12 + 4944], rax
 mov rax, qword ptr [r12 + 4808]
 mov qword ptr [r12 + 4952], rax
  .section .rodata
  .Lrkfn413: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn413]
 lea rsi, [r12 + 4912]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4896], rax
 mov qword ptr [r12 + 4904], rdx
 cmp eax, 99
 je main_ω
 jmp xchain212_n151_α
 xchain212_n150_β:
 jmp main_ω
 xchain212_n151_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+5056] -> [r12+5008]
 mov rax, qword ptr [r12 + 5056]
 mov qword ptr [r12 + 5008], rax
 mov rax, qword ptr [r12 + 5064]
 mov qword ptr [r12 + 5016], rax
# marshal arg1 = producer-box slot [r12+4976] -> [r12+5024]
 mov rax, qword ptr [r12 + 4976]
 mov qword ptr [r12 + 5024], rax
 mov rax, qword ptr [r12 + 4984]
 mov qword ptr [r12 + 5032], rax
# marshal arg2 = producer-box slot [r12+4896] -> [r12+5040]
 mov rax, qword ptr [r12 + 4896]
 mov qword ptr [r12 + 5040], rax
 mov rax, qword ptr [r12 + 4904]
 mov qword ptr [r12 + 5048], rax
  .section .rodata
  .Lrkfn415: .string "$mkc"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn415]
 lea rsi, [r12 + 5008]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [r12 + 4992], rax
 mov qword ptr [r12 + 5000], rdx
 cmp eax, 99
 je xchain212_n153_α
 jmp xchain212_n152_α
 xchain212_n151_β:
 jmp xchain212_n153_α
# IR_VAR_REF local
 xchain212_n152_α:
 lea rdi, [r12 + 5120]
 call rt_var_ref_cell@PLT
 mov qword ptr [r12 + 5072], rax
 mov qword ptr [r12 + 5080], rdx
 jmp xchain212_n154_α
 xchain212_n152_β:
 jmp xchain212_n153_α
 xchain212_n153_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+48] -> [r12+80]
 mov rax, qword ptr [r12 + 48]
 mov qword ptr [r12 + 80], rax
 mov rax, qword ptr [r12 + 56]
 mov qword ptr [r12 + 88], rax
  .section .rodata
  .Lrkfn419: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn419]
 lea rsi, [r12 + 80]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 64], rax
 mov qword ptr [r12 + 72], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain212_n153_β:
 jmp main_ω
# IR_LIT_STRING
 xchain212_n154_α:
 mov qword ptr [r12 + 5088], 1
 mov rax, qword ptr [rip + .Lx420_0]
 mov qword ptr [r12 + 5096], rax
 jmp xchain212_n155_α
 xchain212_n154_β:
 jmp xchain212_n153_α
.Lx420_0:
 .quad .Lx420_0_s
.Lx420_0_s:
 .string "[]"
 xchain212_n155_α:
 lea rdi, [rip + .S0]
 call rt_bomb@PLT
 ud2
# IR_VAR
 xchain212_n156_α:
 mov rax, qword ptr [r12 + 5120]
 mov qword ptr [r12 + 176], rax
 mov rax, qword ptr [r12 + 5128]
 mov qword ptr [r12 + 184], rax
 jmp xchain212_n157_α
 xchain212_n156_β:
 jmp xchain212_n153_α
 xchain212_n157_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+176] -> [r12+160]
 mov rax, qword ptr [r12 + 176]
 mov qword ptr [r12 + 160], rax
 mov rax, qword ptr [r12 + 184]
 mov qword ptr [r12 + 168], rax
  .section .rodata
  .Lrkfn425: .string "$write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn425]
 lea rsi, [r12 + 160]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 144], rax
 mov qword ptr [r12 + 152], rdx
 cmp eax, 99
 je xchain212_n155_β
 jmp xchain212_n158_α
 xchain212_n157_β:
 jmp xchain212_n155_β
# IR_LIT_STRING
 xchain212_n158_α:
 mov qword ptr [r12 + 128], 1
 mov rax, qword ptr [rip + .Lx426_0]
 mov qword ptr [r12 + 136], rax
 jmp xchain212_n159_α
 xchain212_n158_β:
 jmp xchain212_n153_α
.Lx426_0:
 .quad .Lx426_0_s
.Lx426_0_s:
 .string ""
 xchain212_n159_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [r12+128] -> [r12+112]
 mov rax, qword ptr [r12 + 128]
 mov qword ptr [r12 + 112], rax
 mov rax, qword ptr [r12 + 136]
 mov qword ptr [r12 + 120], rax
  .section .rodata
  .Lrkfn428: .string "write"
  .section .text
  .intel_syntax noprefix
   lea rdi, [rip + .Lrkfn428]
 lea rsi, [r12 + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [r12 + 96], rax
 mov qword ptr [r12 + 104], rdx
 cmp eax, 99
 je xchain212_n155_β
 jmp xchain212_n160_α
 xchain212_n159_β:
 jmp xchain212_n155_β
# IR_MOVE_LABEL: shared value := arm value; t := &arm-resume
 xchain212_n160_α:
 lea rax, [rip + xchain212_n155_β]
 mov qword ptr [r12 + 32], rax
 jmp main_γ
 xchain212_n160_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain212_n161_α:
 jmp qword ptr [r12 + 32]
 xchain212_n161_β:
 jmp main_ω
main_β:
jmp xchain212_n161_α
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
 mov rdi, qword ptr [r12 + 5104]
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
