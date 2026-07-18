  .intel_syntax noprefix
  .text
  .globl proc_fib$2_α
proc_fib$2_α:
#=======================================================================================================================
    .global proc_fib$2_α
    .global proc_fib$2_β
    .global proc_fib$2_γ
    .global proc_fib$2_ω
  sub rsp, 2272
  mov [rsp + 2248], rcx
  mov [rsp + 2256], rdx
  mov [rsp + 2264], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2240
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2136], rsp
  mov rdi, rsp
  mov esi, 2240
  call rt_jmp_frame_lexprep@PLT
proc_fib$2_α_body:
lea rax, [rip + xchain0_n12_β]
mov qword ptr [rbp + 2112], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2]
 lea rsi, [rbp + 96]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_fib$2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_fib$2_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 2080], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
.Lx5_0:
 .quad 0
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+2000]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2008], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2016]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2024], rax
  .section .rodata
  .Lrkfn7: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn7]
 lea rsi, [rbp + 2000]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1824]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1832], rax
  .section .rodata
  .Lrkfn11: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn11]
 lea rsi, [rbp + 1824]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je proc_fib$2_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_fib$2_ω
# IR_LIT_INTEGER
 xchain0_n6_α:
 mov qword ptr [rbp + 1952], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp xchain0_n5_α
.Lx12_0:
 .quad 1
# IR_VAR_REF
 xchain0_n7_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain0_n9_α
 xchain0_n7_β:
 jmp xchain0_n14_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1920] -> [zr+1872]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1880], rax
# marshal arg1 = producer-box slot [zr+1952] -> [zr+1888]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1896], rax
  .section .rodata
  .Lrkfn16: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn16]
 lea rsi, [rbp + 1872]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [rbp + 1776], 6
 mov rax, qword ptr [rip + .Lx17_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n14_α
.Lx17_0:
 .quad 1
 xchain0_n10_α:
# IR_CUT
 jmp xchain0_n12_α
 xchain0_n10_β:
 jmp xchain0_n5_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1744] -> [zr+1696]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1704], rax
# marshal arg1 = producer-box slot [zr+1776] -> [zr+1712]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1720], rax
  .section .rodata
  .Lrkfn20: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn20]
 lea rsi, [rbp + 1696]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_SUSPEND yield+resume
 xchain0_n12_α:
 lea rax, [rip + xchain0_n12_β]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_fib$2_γ
 xchain0_n12_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n13_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n14_α
 xchain0_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1520]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1528], rax
  .section .rodata
  .Lrkfn26: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn26]
 lea rsi, [rbp + 1520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je proc_fib$2_ω
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp proc_fib$2_ω
# IR_LIT_INTEGER
 xchain0_n15_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain0_n17_α
 xchain0_n15_β:
 jmp xchain0_n14_α
.Lx27_0:
 .quad 1
# IR_VAR_REF
 xchain0_n16_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n18_α
 xchain0_n16_β:
 jmp xchain0_n23_α
 xchain0_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1568]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1576], rax
# marshal arg1 = producer-box slot [zr+1648] -> [zr+1584]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1592], rax
  .section .rodata
  .Lrkfn31: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn31]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n19_α
 xchain0_n17_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n18_α:
 lea rdi, [rbp + 2224]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain0_n20_α
 xchain0_n18_β:
 jmp xchain0_n23_α
 xchain0_n19_α:
# IR_CUT
 jmp xchain0_n21_α
 xchain0_n19_β:
 jmp xchain0_n14_α
 xchain0_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1392]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1400], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1408]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1416], rax
  .section .rodata
  .Lrkfn36: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn36]
 lea rsi, [rbp + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n22_α
 xchain0_n20_β:
 jmp xchain0_n23_α
# IR_SUSPEND yield+resume
 xchain0_n21_α:
 lea rax, [rip + xchain0_n21_β]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_fib$2_γ
 xchain0_n21_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n22_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain0_n24_α
 xchain0_n22_β:
 jmp xchain0_n23_α
 xchain0_n23_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn42: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn42]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_fib$2_ω
 jmp proc_fib$2_ω
 xchain0_n23_β:
 jmp proc_fib$2_ω
# IR_VAR_REF
 xchain0_n24_α:
 lea rdi, [rbp + 2144]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n23_α
 xchain0_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1312] -> [zr+1264]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1272], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+1280]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1288], rax
  .section .rodata
  .Lrkfn46: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn46]
 lea rsi, [rbp + 1264]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n26_α
 xchain0_n25_β:
 jmp xchain0_n23_α
# IR_VAR
 xchain0_n26_α:
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 1192], rax
 jmp xchain0_n27_α
 xchain0_n26_β:
 jmp xchain0_n23_α
# IR_LIT_INTEGER
 xchain0_n27_α:
 mov qword ptr [rbp + 1216], 6
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain0_n28_α
 xchain0_n27_β:
 jmp xchain0_n23_α
.Lx49_0:
 .quad 1
 xchain0_n28_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1136]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1144], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+1152]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1160], rax
  .section .rodata
  .Lrkfn51: .string "$cmp_gt"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn51]
 lea rsi, [rbp + 1136]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n29_α
 xchain0_n28_β:
 jmp xchain0_n23_α
# IR_VAR_REF
 xchain0_n29_α:
 lea rdi, [rbp + 2208]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain0_n30_α
 xchain0_n29_β:
 jmp xchain0_n23_α
# IR_VAR
 xchain0_n30_α:
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 1064], rax
 jmp xchain0_n31_α
 xchain0_n30_β:
 jmp proc_fib$2_ω
# IR_LIT_INTEGER
 xchain0_n31_α:
 mov qword ptr [rbp + 1088], 6
 mov rax, qword ptr [rip + .Lx56_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain0_n32_α
 xchain0_n31_β:
 jmp proc_fib$2_ω
.Lx56_0:
 .quad 1
 xchain0_n32_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1056] -> [zr+1008]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1024]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rax
  .section .rodata
  .Lrkfn58: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn58]
 lea rsi, [rbp + 1008]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n33_α
 xchain0_n32_β:
 jmp xchain0_n23_α
 xchain0_n33_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+928]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 936], rax
  .section .rodata
  .Lrkfn60: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn60]
 lea rsi, [rbp + 912]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n34_α
 xchain0_n33_β:
 jmp xchain0_n23_α
# IR_VAR_REF
 xchain0_n34_α:
 lea rdi, [rbp + 2192]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain0_n35_α
 xchain0_n34_β:
 jmp xchain0_n23_α
# IR_VAR
 xchain0_n35_α:
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 840], rax
 jmp xchain0_n36_α
 xchain0_n35_β:
 jmp proc_fib$2_ω
# IR_LIT_INTEGER
 xchain0_n36_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx65_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain0_n37_α
 xchain0_n36_β:
 jmp proc_fib$2_ω
.Lx65_0:
 .quad 2
 xchain0_n37_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn67: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn67]
 lea rsi, [rbp + 784]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n38_α
 xchain0_n37_β:
 jmp xchain0_n23_α
 xchain0_n38_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+768] -> [zr+704]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 712], rax
  .section .rodata
  .Lrkfn69: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn69]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n39_α
 xchain0_n38_β:
 jmp xchain0_n23_α
# IR_VAR_REF
 xchain0_n39_α:
 lea rdi, [rbp + 2208]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain0_n40_α
 xchain0_n39_β:
 jmp xchain0_n23_α
# IR_VAR_REF
 xchain0_n40_α:
 lea rdi, [rbp + 2160]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n23_α
 xchain0_n41_α:
 mov qword ptr [rbp + 576], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx75_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx75_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx75_3]
 lea rdx, [rip + .Lx75_4]
 jmp rax
.Lx75_3:
 mov rax, qword ptr [rbp + 576]
 test rax, rax
 jne .Lx75_5
 mov qword ptr [rbp + 576], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx75_2
.Lx75_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx75_2
.Lx75_4:
 mov rax, qword ptr [rbp + 576]
 test rax, rax
 jne .Lx75_6
 mov qword ptr [rbp + 576], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx75_2
.Lx75_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx75_2
.Lx75_1:
 call rt_faildescr@PLT
.Lx75_2:
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n42_α
 xchain0_n41_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx75_0:
 .quad .Lx75_0_s
.Lx75_0_s:
 .string "fib/2"
# IR_VAR_REF
 xchain0_n42_α:
 lea rdi, [rbp + 2192]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain0_n43_α
 xchain0_n42_β:
 jmp xchain0_n23_α
# IR_VAR_REF
 xchain0_n43_α:
 lea rdi, [rbp + 2176]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n44_α
 xchain0_n43_β:
 jmp xchain0_n23_α
 xchain0_n44_α:
 mov qword ptr [rbp + 432], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx81_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx81_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx81_3]
 lea rdx, [rip + .Lx81_4]
 jmp rax
.Lx81_3:
 mov rax, qword ptr [rbp + 432]
 test rax, rax
 jne .Lx81_5
 mov qword ptr [rbp + 432], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx81_2
.Lx81_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx81_2
.Lx81_4:
 mov rax, qword ptr [rbp + 432]
 test rax, rax
 jne .Lx81_6
 mov qword ptr [rbp + 432], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx81_2
.Lx81_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx81_2
.Lx81_1:
 call rt_faildescr@PLT
.Lx81_2:
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain0_n41_β
 jmp xchain0_n45_α
 xchain0_n44_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx81_0:
 .quad .Lx81_0_s
.Lx81_0_s:
 .string "fib/2"
# IR_VAR_REF
 xchain0_n45_α:
 lea rdi, [rbp + 2144]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain0_n46_α
 xchain0_n45_β:
 jmp xchain0_n23_α
# IR_VAR
 xchain0_n46_α:
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 328], rax
 jmp xchain0_n47_α
 xchain0_n46_β:
 jmp proc_fib$2_ω
# IR_VAR
 xchain0_n47_α:
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 360], rax
 jmp xchain0_n48_α
 xchain0_n47_β:
 jmp proc_fib$2_ω
 xchain0_n48_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+272]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 272], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 280], rax
# marshal arg1 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn89: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn89]
 lea rsi, [rbp + 272]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain0_n23_α
 jmp xchain0_n49_α
 xchain0_n48_β:
 jmp xchain0_n23_α
 xchain0_n49_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 184], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+192]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn91: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn91]
 lea rsi, [rbp + 176]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n44_β
 jmp xchain0_n50_α
 xchain0_n49_β:
 jmp xchain0_n44_β
# IR_SUSPEND yield+resume
 xchain0_n50_α:
 lea rax, [rip + xchain0_n50_β]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_fib$2_γ
 xchain0_n50_β:
 jmp xchain0_n44_β
proc_fib$2_res:
add rsp, 8
pop rbp
proc_fib$2_β:
jmp qword ptr [rbp + 2112]
proc_fib$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_fib$2_res]
push rax
mov rax, [rbp + 2248]
mov rbp, [rbp + 2264]
jmp rax
proc_fib$2_ω:
mov rax, [rbp + 2256]
lea rsp, [rbp + 2272]
mov rbp, [rbp + 2264]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "fib/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_fib$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2240
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  add rsp, 8
  ret
  .globl main
main:
  sub rsp, 8
  push rdi
  push rsi
  call core_lib_init@PLT
  call proc_startup
  xor esi, esi
  call main_α
  xor eax, eax
  add rsp, 24
  ret
main_α:
#=======================================================================================================================
    .global main_α
    .global main_β
    .global main_γ
    .global main_ω
  sub rsp, 65544
  mov rdi, rsp
  mov ecx, 65544
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 440], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain94_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn96: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn96]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain94_n1_α
 xchain94_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain94_n1_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain94_n2_α
 xchain94_n1_β:
 jmp xchain94_n5_α
.Lx97_0:
 .quad 20
# IR_VAR_REF
 xchain94_n2_α:
 lea rdi, [rbp + 448]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain94_n3_α
 xchain94_n2_β:
 jmp xchain94_n5_α
 xchain94_n3_α:
 mov qword ptr [rbp + 336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx101_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx101_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx101_3]
 lea rdx, [rip + .Lx101_4]
 jmp rax
.Lx101_3:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx101_5
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx101_2
.Lx101_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx101_2
.Lx101_4:
 mov rax, qword ptr [rbp + 336]
 test rax, rax
 jne .Lx101_6
 mov qword ptr [rbp + 336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx101_2
.Lx101_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx101_2
.Lx101_1:
 call rt_faildescr@PLT
.Lx101_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain94_n5_α
 jmp xchain94_n4_α
 xchain94_n3_β:
 call rt_gen_spine_resume_enter@PLT
 jmp qword ptr [rsp]
.Lx101_0:
 .quad .Lx101_0_s
.Lx101_0_s:
 .string "fib/2"
# IR_VAR
 xchain94_n4_α:
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 264], rax
 jmp xchain94_n6_α
 xchain94_n4_β:
 jmp xchain94_n5_α
 xchain94_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn105: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn105]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain94_n5_β:
 jmp main_ω
 xchain94_n6_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn107: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn107]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain94_n3_β
 jmp xchain94_n7_α
 xchain94_n6_β:
 jmp xchain94_n3_β
# IR_LIT_STRING
 xchain94_n7_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx108_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain94_n8_α
 xchain94_n7_β:
 jmp xchain94_n5_α
.Lx108_0:
 .quad .Lx108_0_s
.Lx108_0_s:
 .string ""
 xchain94_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn110: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn110]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain94_n3_β
 jmp xchain94_n9_α
 xchain94_n8_β:
 jmp xchain94_n3_β
# IR_MOVE_LABEL
 xchain94_n9_α:
 lea rax, [rip + xchain94_n3_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain94_n9_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain94_n10_α:
 jmp qword ptr [rbp + 32]
 xchain94_n10_β:
 jmp main_ω
main_β:
jmp xchain94_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 440]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 440]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
