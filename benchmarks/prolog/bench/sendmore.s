  .intel_syntax noprefix
  .text
  .globl proc_sumdigit$5_α
proc_sumdigit$5_α:
#=======================================================================================================================
    .global proc_sumdigit$5_α
    .global proc_sumdigit$5_β
    .global proc_sumdigit$5_γ
    .global proc_sumdigit$5_ω
  sub rsp, 2064
  mov [rsp + 2040], rcx
  mov [rsp + 2048], rdx
  mov [rsp + 2056], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 2032
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1928], rsp
  mov rdi, rsp
  mov esi, 2032
  call rt_jmp_frame_lexprep@PLT
proc_sumdigit$5_α_body:
lea rax, [rip + xchain0_n41_β]
mov qword ptr [rbp + 1904], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn2: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn2]
 lea rsi, [rbp + 144]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_sumdigit$5_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_sumdigit$5_ω
# IR_VAR_REF
 xchain0_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain0_n2_α
 xchain0_n1_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n2_α:
 lea rdi, [rbp + 1984]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain0_n3_α
 xchain0_n2_β:
 jmp xchain0_n5_α
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1792]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1800], rax
# marshal arg1 = producer-box slot [zr+1872] -> [zr+1808]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1816], rax
  .section .rodata
  .Lrkfn8: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn8]
 lea rsi, [rbp + 1792]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain0_n6_α
 xchain0_n4_β:
 jmp xchain0_n5_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+176]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 184], rax
  .section .rodata
  .Lrkfn12: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn12]
 lea rsi, [rbp + 176]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je proc_sumdigit$5_ω
 jmp proc_sumdigit$5_ω
 xchain0_n5_β:
 jmp proc_sumdigit$5_ω
# IR_VAR_REF
 xchain0_n6_α:
 lea rdi, [rbp + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain0_n7_α
 xchain0_n6_β:
 jmp xchain0_n5_α
 xchain0_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1712] -> [zr+1664]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1672], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1680]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1688], rax
  .section .rodata
  .Lrkfn16: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn16]
 lea rsi, [rbp + 1664]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n8_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain0_n9_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n9_α:
 lea rdi, [rbp + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain0_n10_α
 xchain0_n9_β:
 jmp xchain0_n5_α
 xchain0_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1584] -> [zr+1536]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1544], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1552]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1560], rax
  .section .rodata
  .Lrkfn22: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn22]
 lea rsi, [rbp + 1536]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n11_α:
 lea rdi, [rbp + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain0_n12_α
 xchain0_n11_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n12_α:
 lea rdi, [rbp + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain0_n13_α
 xchain0_n12_β:
 jmp xchain0_n5_α
 xchain0_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1408]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1416], rax
# marshal arg1 = producer-box slot [zr+1488] -> [zr+1424]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1432], rax
  .section .rodata
  .Lrkfn28: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn28]
 lea rsi, [rbp + 1408]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n14_α:
 lea rdi, [rbp + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain0_n15_α
 xchain0_n14_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n15_α:
 lea rdi, [rbp + 1936]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain0_n16_α
 xchain0_n15_β:
 jmp xchain0_n5_α
 xchain0_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1280]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1288], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1296]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1304], rax
  .section .rodata
  .Lrkfn34: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn34]
 lea rsi, [rbp + 1280]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n17_α:
 lea rdi, [rbp + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain0_n18_α
 xchain0_n17_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n18_α:
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1176], rax
 jmp xchain0_n19_α
 xchain0_n18_β:
 jmp proc_sumdigit$5_ω
# IR_VAR
 xchain0_n19_α:
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1208], rax
 jmp xchain0_n20_α
 xchain0_n19_β:
 jmp proc_sumdigit$5_ω
 xchain0_n20_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1120]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1200] -> [zr+1136]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1144], rax
  .section .rodata
  .Lrkfn42: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn42]
 lea rsi, [rbp + 1120]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n21_α
 xchain0_n20_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n21_α:
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1240], rax
 jmp xchain0_n22_α
 xchain0_n21_β:
 jmp proc_sumdigit$5_ω
 xchain0_n22_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1056]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1064], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1072]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1080], rax
  .section .rodata
  .Lrkfn46: .string "$ax_add"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn46]
 lea rsi, [rbp + 1056]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n23_α
 xchain0_n22_β:
 jmp xchain0_n5_α
 xchain0_n23_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+960]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+976]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 984], rax
  .section .rodata
  .Lrkfn48: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn48]
 lea rsi, [rbp + 960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n24_α
 xchain0_n23_β:
 jmp xchain0_n5_α
# IR_VAR
 xchain0_n24_α:
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 888], rax
 jmp xchain0_n25_α
 xchain0_n24_β:
 jmp xchain0_n26_α
# IR_LIT_INTEGER
 xchain0_n25_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n26_α
.Lx51_0:
 .quad 10
# IR_VAR_REF
 xchain0_n26_α:
 lea rdi, [rbp + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain0_n28_α
 xchain0_n26_β:
 jmp xchain0_n5_α
 xchain0_n27_α:
# BOX IR_CALL $cmp_lt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+880] -> [zr+832]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 856], rax
  .section .rodata
  .Lrkfn55: .string "$cmp_lt"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn55]
 lea rsi, [rbp + 832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain0_n26_α
 jmp xchain0_n29_α
 xchain0_n27_β:
 jmp xchain0_n26_α
# IR_VAR
 xchain0_n28_α:
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 760], rax
 jmp xchain0_n30_α
 xchain0_n28_β:
 jmp proc_sumdigit$5_ω
# IR_VAR_REF
 xchain0_n29_α:
 lea rdi, [rbp + 1952]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n31_α
 xchain0_n29_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n30_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain0_n32_α
 xchain0_n30_β:
 jmp proc_sumdigit$5_ω
.Lx60_0:
 .quad 10
# IR_VAR_REF
 xchain0_n31_α:
 lea rdi, [rbp + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain0_n33_α
 xchain0_n31_β:
 jmp xchain0_n5_α
 xchain0_n32_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+720]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 728], rax
  .section .rodata
  .Lrkfn64: .string "$ax_sub"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn64]
 lea rsi, [rbp + 704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n34_α
 xchain0_n32_β:
 jmp xchain0_n5_α
 xchain0_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+352]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+368]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn66: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn66]
 lea rsi, [rbp + 352]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n5_α
 xchain0_n34_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+608]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+624]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 632], rax
  .section .rodata
  .Lrkfn68: .string "$is_v"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn68]
 lea rsi, [rbp + 608]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n35_α:
 lea rdi, [rbp + 1936]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n37_α
 xchain0_n35_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n36_α:
 lea rdi, [rbp + 1936]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n38_α
 xchain0_n36_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n37_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp xchain0_n5_α
.Lx73_0:
 .quad 0
# IR_LIT_INTEGER
 xchain0_n38_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain0_n40_α
 xchain0_n38_β:
 jmp xchain0_n5_α
.Lx74_0:
 .quad 1
 xchain0_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+224]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 232], rax
# marshal arg1 = producer-box slot [zr+304] -> [zr+240]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 240], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 248], rax
  .section .rodata
  .Lrkfn76: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn76]
 lea rsi, [rbp + 224]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n41_α
 xchain0_n39_β:
 jmp xchain0_n5_α
 xchain0_n40_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+480]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+496]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 504], rax
  .section .rodata
  .Lrkfn78: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn78]
 lea rsi, [rbp + 480]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n41_α
 xchain0_n40_β:
 jmp xchain0_n5_α
# IR_SUSPEND yield+resume
 xchain0_n41_α:
 lea rax, [rip + xchain0_n41_β]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 8], rax
 jmp proc_sumdigit$5_γ
 xchain0_n41_β:
 jmp xchain0_n5_α
proc_sumdigit$5_res:
add rsp, 8
pop rbp
proc_sumdigit$5_β:
jmp qword ptr [rbp + 1904]
proc_sumdigit$5_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_sumdigit$5_res]
push rax
mov rax, [rbp + 2040]
mov rbp, [rbp + 2056]
jmp rax
proc_sumdigit$5_ω:
mov rax, [rbp + 2048]
lea rsp, [rbp + 2064]
mov rbp, [rbp + 2056]
jmp rax
  .globl proc_digit$1_α
proc_digit$1_α:
#=======================================================================================================================
    .global proc_digit$1_α
    .global proc_digit$1_β
    .global proc_digit$1_γ
    .global proc_digit$1_ω
  sub rsp, 1920
  mov [rsp + 1896], rcx
  mov [rsp + 1904], rdx
  mov [rsp + 1912], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1888
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1880], rsp
  mov rdi, rsp
  mov esi, 1888
  call rt_jmp_frame_lexprep@PLT
proc_digit$1_α_body:
lea rax, [rip + xchain81_n4_β]
mov qword ptr [rbp + 1856], rax
 xchain81_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn83: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn83]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain81_n1_α
 xchain81_n0_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain81_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain81_n2_α
 xchain81_n1_β:
 jmp xchain81_n5_α
# IR_LIT_INTEGER
 xchain81_n2_α:
 mov qword ptr [rbp + 1824], 6
 mov rax, qword ptr [rip + .Lx86_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain81_n3_α
 xchain81_n2_β:
 jmp xchain81_n5_α
.Lx86_0:
 .quad 0
 xchain81_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1824] -> [zr+1760]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1768], rax
  .section .rodata
  .Lrkfn88: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn88]
 lea rsi, [rbp + 1744]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain81_n5_α
 jmp xchain81_n4_α
 xchain81_n3_β:
 jmp xchain81_n5_α
# IR_SUSPEND yield+resume
 xchain81_n4_α:
 lea rax, [rip + xchain81_n4_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain81_n4_β:
 jmp xchain81_n5_α
 xchain81_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1696]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1704], rax
  .section .rodata
  .Lrkfn92: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn92]
 lea rsi, [rbp + 1696]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain81_n6_α
 xchain81_n5_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain81_n6_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain81_n7_α
 xchain81_n6_β:
 jmp xchain81_n10_α
# IR_LIT_INTEGER
 xchain81_n7_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx95_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain81_n8_α
 xchain81_n7_β:
 jmp xchain81_n10_α
.Lx95_0:
 .quad 1
 xchain81_n8_α:
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
  .Lrkfn97: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn97]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain81_n10_α
 jmp xchain81_n9_α
 xchain81_n8_β:
 jmp xchain81_n10_α
# IR_SUSPEND yield+resume
 xchain81_n9_α:
 lea rax, [rip + xchain81_n9_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain81_n9_β:
 jmp xchain81_n10_α
 xchain81_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1520]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1528], rax
  .section .rodata
  .Lrkfn101: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn101]
 lea rsi, [rbp + 1520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain81_n11_α
 xchain81_n10_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain81_n11_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain81_n12_α
 xchain81_n11_β:
 jmp xchain81_n15_α
# IR_LIT_INTEGER
 xchain81_n12_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain81_n13_α
 xchain81_n12_β:
 jmp xchain81_n15_α
.Lx104_0:
 .quad 2
 xchain81_n13_α:
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
  .Lrkfn106: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn106]
 lea rsi, [rbp + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain81_n15_α
 jmp xchain81_n14_α
 xchain81_n13_β:
 jmp xchain81_n15_α
# IR_SUSPEND yield+resume
 xchain81_n14_α:
 lea rax, [rip + xchain81_n14_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain81_n14_β:
 jmp xchain81_n15_α
 xchain81_n15_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1344]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1352], rax
  .section .rodata
  .Lrkfn110: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn110]
 lea rsi, [rbp + 1344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain81_n16_α
 xchain81_n15_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain81_n16_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain81_n17_α
 xchain81_n16_β:
 jmp xchain81_n20_α
# IR_LIT_INTEGER
 xchain81_n17_α:
 mov qword ptr [rbp + 1296], 6
 mov rax, qword ptr [rip + .Lx113_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain81_n18_α
 xchain81_n17_β:
 jmp xchain81_n20_α
.Lx113_0:
 .quad 3
 xchain81_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
  .section .rodata
  .Lrkfn115: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn115]
 lea rsi, [rbp + 1216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain81_n20_α
 jmp xchain81_n19_α
 xchain81_n18_β:
 jmp xchain81_n20_α
# IR_SUSPEND yield+resume
 xchain81_n19_α:
 lea rax, [rip + xchain81_n19_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain81_n19_β:
 jmp xchain81_n20_α
 xchain81_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1168]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1176], rax
  .section .rodata
  .Lrkfn119: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn119]
 lea rsi, [rbp + 1168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain81_n21_α
 xchain81_n20_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain81_n21_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain81_n22_α
 xchain81_n21_β:
 jmp xchain81_n25_α
# IR_LIT_INTEGER
 xchain81_n22_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx122_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain81_n23_α
 xchain81_n22_β:
 jmp xchain81_n25_α
.Lx122_0:
 .quad 4
 xchain81_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1040]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1056]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1064], rax
  .section .rodata
  .Lrkfn124: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn124]
 lea rsi, [rbp + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain81_n25_α
 jmp xchain81_n24_α
 xchain81_n23_β:
 jmp xchain81_n25_α
# IR_SUSPEND yield+resume
 xchain81_n24_α:
 lea rax, [rip + xchain81_n24_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain81_n24_β:
 jmp xchain81_n25_α
 xchain81_n25_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+992]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1000], rax
  .section .rodata
  .Lrkfn128: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn128]
 lea rsi, [rbp + 992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain81_n26_α
 xchain81_n25_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain81_n26_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain81_n27_α
 xchain81_n26_β:
 jmp xchain81_n30_α
# IR_LIT_INTEGER
 xchain81_n27_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain81_n28_α
 xchain81_n27_β:
 jmp xchain81_n30_α
.Lx131_0:
 .quad 5
 xchain81_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
  .section .rodata
  .Lrkfn133: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn133]
 lea rsi, [rbp + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain81_n30_α
 jmp xchain81_n29_α
 xchain81_n28_β:
 jmp xchain81_n30_α
# IR_SUSPEND yield+resume
 xchain81_n29_α:
 lea rax, [rip + xchain81_n29_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain81_n29_β:
 jmp xchain81_n30_α
 xchain81_n30_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+816]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 824], rax
  .section .rodata
  .Lrkfn137: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn137]
 lea rsi, [rbp + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain81_n31_α
 xchain81_n30_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain81_n31_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain81_n32_α
 xchain81_n31_β:
 jmp xchain81_n35_α
# IR_LIT_INTEGER
 xchain81_n32_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx140_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain81_n33_α
 xchain81_n32_β:
 jmp xchain81_n35_α
.Lx140_0:
 .quad 6
 xchain81_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn142: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn142]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain81_n35_α
 jmp xchain81_n34_α
 xchain81_n33_β:
 jmp xchain81_n35_α
# IR_SUSPEND yield+resume
 xchain81_n34_α:
 lea rax, [rip + xchain81_n34_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain81_n34_β:
 jmp xchain81_n35_α
 xchain81_n35_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+640]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn146: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn146]
 lea rsi, [rbp + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain81_n36_α
 xchain81_n35_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain81_n36_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain81_n37_α
 xchain81_n36_β:
 jmp xchain81_n40_α
# IR_LIT_INTEGER
 xchain81_n37_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain81_n38_α
 xchain81_n37_β:
 jmp xchain81_n40_α
.Lx149_0:
 .quad 7
 xchain81_n38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 520], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+528]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 536], rax
  .section .rodata
  .Lrkfn151: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn151]
 lea rsi, [rbp + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain81_n40_α
 jmp xchain81_n39_α
 xchain81_n38_β:
 jmp xchain81_n40_α
# IR_SUSPEND yield+resume
 xchain81_n39_α:
 lea rax, [rip + xchain81_n39_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain81_n39_β:
 jmp xchain81_n40_α
 xchain81_n40_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+464]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 472], rax
  .section .rodata
  .Lrkfn155: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn155]
 lea rsi, [rbp + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain81_n41_α
 xchain81_n40_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain81_n41_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain81_n42_α
 xchain81_n41_β:
 jmp xchain81_n45_α
# IR_LIT_INTEGER
 xchain81_n42_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx158_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain81_n43_α
 xchain81_n42_β:
 jmp xchain81_n45_α
.Lx158_0:
 .quad 8
 xchain81_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+352]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 360], rax
  .section .rodata
  .Lrkfn160: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn160]
 lea rsi, [rbp + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain81_n45_α
 jmp xchain81_n44_α
 xchain81_n43_β:
 jmp xchain81_n45_α
# IR_SUSPEND yield+resume
 xchain81_n44_α:
 lea rax, [rip + xchain81_n44_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain81_n44_β:
 jmp xchain81_n45_α
 xchain81_n45_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+288]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn164: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn164]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain81_n46_α
 xchain81_n45_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain81_n46_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain81_n47_α
 xchain81_n46_β:
 jmp xchain81_n50_α
# IR_LIT_INTEGER
 xchain81_n47_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx167_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain81_n48_α
 xchain81_n47_β:
 jmp xchain81_n50_α
.Lx167_0:
 .quad 9
 xchain81_n48_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
  .section .rodata
  .Lrkfn169: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn169]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain81_n50_α
 jmp xchain81_n49_α
 xchain81_n48_β:
 jmp xchain81_n50_α
# IR_SUSPEND yield+resume
 xchain81_n49_α:
 lea rax, [rip + xchain81_n49_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain81_n49_β:
 jmp xchain81_n50_α
 xchain81_n50_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn173: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn173]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp proc_digit$1_ω
 xchain81_n50_β:
 jmp proc_digit$1_ω
proc_digit$1_res:
add rsp, 8
pop rbp
proc_digit$1_β:
jmp qword ptr [rbp + 1856]
proc_digit$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_digit$1_res]
push rax
mov rax, [rbp + 1896]
mov rbp, [rbp + 1912]
jmp rax
proc_digit$1_ω:
mov rax, [rbp + 1904]
lea rsp, [rbp + 1920]
mov rbp, [rbp + 1912]
jmp rax
  .globl proc_solve$8_α
proc_solve$8_α:
#=======================================================================================================================
    .global proc_solve$8_α
    .global proc_solve$8_β
    .global proc_solve$8_γ
    .global proc_solve$8_ω
  sub rsp, 6672
  mov [rsp + 6648], rcx
  mov [rsp + 6656], rdx
  mov [rsp + 6664], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 6640
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 6456], rsp
  mov rdi, rsp
  mov esi, 6640
  call rt_jmp_frame_lexprep@PLT
proc_solve$8_α_body:
lea rax, [rip + xchain174_n142_β]
mov qword ptr [rbp + 6432], rax
 xchain174_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn176: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn176]
 lea rsi, [rbp + 192]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je proc_solve$8_ω
 jmp xchain174_n1_α
 xchain174_n0_β:
 jmp proc_solve$8_ω
# IR_VAR_REF
 xchain174_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6368], rax
 mov qword ptr [rbp + 6376], rdx
 jmp xchain174_n2_α
 xchain174_n1_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n2_α:
 lea rdi, [rbp + 6480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 jmp xchain174_n3_α
 xchain174_n2_β:
 jmp xchain174_n5_α
 xchain174_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6368] -> [zr+6320]
 mov rax, qword ptr [rbp + 6368]
 mov qword ptr [rbp + 6320], rax
 mov rax, qword ptr [rbp + 6376]
 mov qword ptr [rbp + 6328], rax
# marshal arg1 = producer-box slot [zr+6400] -> [zr+6336]
 mov rax, qword ptr [rbp + 6400]
 mov qword ptr [rbp + 6336], rax
 mov rax, qword ptr [rbp + 6408]
 mov qword ptr [rbp + 6344], rax
  .section .rodata
  .Lrkfn182: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn182]
 lea rsi, [rbp + 6320]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 cmp eax, 99
 je xchain174_n5_α
 jmp xchain174_n4_α
 xchain174_n3_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n4_α:
 lea rdi, [rbp + 32]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain174_n6_α
 xchain174_n4_β:
 jmp xchain174_n5_α
 xchain174_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+224]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn186: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn186]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je proc_solve$8_ω
 jmp proc_solve$8_ω
 xchain174_n5_β:
 jmp proc_solve$8_ω
# IR_VAR_REF
 xchain174_n6_α:
 lea rdi, [rbp + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 jmp xchain174_n7_α
 xchain174_n6_β:
 jmp xchain174_n5_α
 xchain174_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6240] -> [zr+6192]
 mov rax, qword ptr [rbp + 6240]
 mov qword ptr [rbp + 6192], rax
 mov rax, qword ptr [rbp + 6248]
 mov qword ptr [rbp + 6200], rax
# marshal arg1 = producer-box slot [zr+6272] -> [zr+6208]
 mov rax, qword ptr [rbp + 6272]
 mov qword ptr [rbp + 6208], rax
 mov rax, qword ptr [rbp + 6280]
 mov qword ptr [rbp + 6216], rax
  .section .rodata
  .Lrkfn190: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn190]
 lea rsi, [rbp + 6192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6176], rax
 mov qword ptr [rbp + 6184], rdx
 cmp eax, 99
 je xchain174_n5_α
 jmp xchain174_n8_α
 xchain174_n7_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n8_α:
 lea rdi, [rbp + 48]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 jmp xchain174_n9_α
 xchain174_n8_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n9_α:
 lea rdi, [rbp + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6144], rax
 mov qword ptr [rbp + 6152], rdx
 jmp xchain174_n10_α
 xchain174_n9_β:
 jmp xchain174_n5_α
 xchain174_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6112] -> [zr+6064]
 mov rax, qword ptr [rbp + 6112]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 6120]
 mov qword ptr [rbp + 6072], rax
# marshal arg1 = producer-box slot [zr+6144] -> [zr+6080]
 mov rax, qword ptr [rbp + 6144]
 mov qword ptr [rbp + 6080], rax
 mov rax, qword ptr [rbp + 6152]
 mov qword ptr [rbp + 6088], rax
  .section .rodata
  .Lrkfn196: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn196]
 lea rsi, [rbp + 6064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 cmp eax, 99
 je xchain174_n5_α
 jmp xchain174_n11_α
 xchain174_n10_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n11_α:
 lea rdi, [rbp + 64]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 jmp xchain174_n12_α
 xchain174_n11_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n12_α:
 lea rdi, [rbp + 6528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 6016], rax
 mov qword ptr [rbp + 6024], rdx
 jmp xchain174_n13_α
 xchain174_n12_β:
 jmp xchain174_n5_α
 xchain174_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5984] -> [zr+5936]
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 5944], rax
# marshal arg1 = producer-box slot [zr+6016] -> [zr+5952]
 mov rax, qword ptr [rbp + 6016]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 6024]
 mov qword ptr [rbp + 5960], rax
  .section .rodata
  .Lrkfn202: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn202]
 lea rsi, [rbp + 5936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 cmp eax, 99
 je xchain174_n5_α
 jmp xchain174_n14_α
 xchain174_n13_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n14_α:
 lea rdi, [rbp + 80]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5856], rax
 mov qword ptr [rbp + 5864], rdx
 jmp xchain174_n15_α
 xchain174_n14_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n15_α:
 lea rdi, [rbp + 6496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5888], rax
 mov qword ptr [rbp + 5896], rdx
 jmp xchain174_n16_α
 xchain174_n15_β:
 jmp xchain174_n5_α
 xchain174_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5856] -> [zr+5808]
 mov rax, qword ptr [rbp + 5856]
 mov qword ptr [rbp + 5808], rax
 mov rax, qword ptr [rbp + 5864]
 mov qword ptr [rbp + 5816], rax
# marshal arg1 = producer-box slot [zr+5888] -> [zr+5824]
 mov rax, qword ptr [rbp + 5888]
 mov qword ptr [rbp + 5824], rax
 mov rax, qword ptr [rbp + 5896]
 mov qword ptr [rbp + 5832], rax
  .section .rodata
  .Lrkfn208: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn208]
 lea rsi, [rbp + 5808]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 cmp eax, 99
 je xchain174_n5_α
 jmp xchain174_n17_α
 xchain174_n16_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n17_α:
 lea rdi, [rbp + 96]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 jmp xchain174_n18_α
 xchain174_n17_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n18_α:
 lea rdi, [rbp + 6512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain174_n19_α
 xchain174_n18_β:
 jmp xchain174_n5_α
 xchain174_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5728] -> [zr+5680]
 mov rax, qword ptr [rbp + 5728]
 mov qword ptr [rbp + 5680], rax
 mov rax, qword ptr [rbp + 5736]
 mov qword ptr [rbp + 5688], rax
# marshal arg1 = producer-box slot [zr+5760] -> [zr+5696]
 mov rax, qword ptr [rbp + 5760]
 mov qword ptr [rbp + 5696], rax
 mov rax, qword ptr [rbp + 5768]
 mov qword ptr [rbp + 5704], rax
  .section .rodata
  .Lrkfn214: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn214]
 lea rsi, [rbp + 5680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5664], rax
 mov qword ptr [rbp + 5672], rdx
 cmp eax, 99
 je xchain174_n5_α
 jmp xchain174_n20_α
 xchain174_n19_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n20_α:
 lea rdi, [rbp + 112]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 jmp xchain174_n21_α
 xchain174_n20_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n21_α:
 lea rdi, [rbp + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 jmp xchain174_n22_α
 xchain174_n21_β:
 jmp xchain174_n5_α
 xchain174_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5600] -> [zr+5552]
 mov rax, qword ptr [rbp + 5600]
 mov qword ptr [rbp + 5552], rax
 mov rax, qword ptr [rbp + 5608]
 mov qword ptr [rbp + 5560], rax
# marshal arg1 = producer-box slot [zr+5632] -> [zr+5568]
 mov rax, qword ptr [rbp + 5632]
 mov qword ptr [rbp + 5568], rax
 mov rax, qword ptr [rbp + 5640]
 mov qword ptr [rbp + 5576], rax
  .section .rodata
  .Lrkfn220: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn220]
 lea rsi, [rbp + 5552]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
 cmp eax, 99
 je xchain174_n5_α
 jmp xchain174_n23_α
 xchain174_n22_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n23_α:
 lea rdi, [rbp + 128]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 jmp xchain174_n24_α
 xchain174_n23_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n24_α:
 lea rdi, [rbp + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
 jmp xchain174_n25_α
 xchain174_n24_β:
 jmp xchain174_n5_α
 xchain174_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5472] -> [zr+5424]
 mov rax, qword ptr [rbp + 5472]
 mov qword ptr [rbp + 5424], rax
 mov rax, qword ptr [rbp + 5480]
 mov qword ptr [rbp + 5432], rax
# marshal arg1 = producer-box slot [zr+5504] -> [zr+5440]
 mov rax, qword ptr [rbp + 5504]
 mov qword ptr [rbp + 5440], rax
 mov rax, qword ptr [rbp + 5512]
 mov qword ptr [rbp + 5448], rax
  .section .rodata
  .Lrkfn226: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn226]
 lea rsi, [rbp + 5424]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 cmp eax, 99
 je xchain174_n5_α
 jmp xchain174_n26_α
 xchain174_n25_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n26_α:
 lea rdi, [rbp + 6528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain174_n27_α
 xchain174_n26_β:
 jmp xchain174_n5_α
 xchain174_n27_α:
 mov qword ptr [rbp + 5344], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 5376]
 mov rdx, qword ptr [rbp + 5384]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx230_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx230_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx230_3]
 lea rdx, [rip + .Lx230_4]
 jmp rax
.Lx230_3:
 mov qword ptr [rbp + 5352], rsp
 mov rax, qword ptr [rbp + 5344]
 test rax, rax
 jne .Lx230_5
 mov qword ptr [rbp + 5344], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx230_2
.Lx230_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx230_2
.Lx230_4:
 mov rax, qword ptr [rbp + 5344]
 test rax, rax
 jne .Lx230_6
 mov qword ptr [rbp + 5344], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx230_2
.Lx230_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx230_2
.Lx230_1:
 call rt_faildescr@PLT
.Lx230_2:
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je xchain174_n5_α
 jmp xchain174_n28_α
 xchain174_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 5352]
 jmp qword ptr [rsp]
.Lx230_0:
 .quad .Lx230_0_s
.Lx230_0_s:
 .string "digit/1"
# IR_VAR_REF
 xchain174_n28_α:
 lea rdi, [rbp + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 jmp xchain174_n29_α
 xchain174_n28_β:
 jmp xchain174_n5_α
 xchain174_n29_α:
 mov qword ptr [rbp + 5248], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 5280]
 mov rdx, qword ptr [rbp + 5288]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx234_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx234_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx234_3]
 lea rdx, [rip + .Lx234_4]
 jmp rax
.Lx234_3:
 mov qword ptr [rbp + 5256], rsp
 mov rax, qword ptr [rbp + 5248]
 test rax, rax
 jne .Lx234_5
 mov qword ptr [rbp + 5248], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx234_2
.Lx234_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx234_2
.Lx234_4:
 mov rax, qword ptr [rbp + 5248]
 test rax, rax
 jne .Lx234_6
 mov qword ptr [rbp + 5248], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx234_2
.Lx234_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx234_2
.Lx234_1:
 call rt_faildescr@PLT
.Lx234_2:
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 cmp eax, 99
 je xchain174_n27_β
 jmp xchain174_n30_α
 xchain174_n29_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 5256]
 jmp qword ptr [rsp]
.Lx234_0:
 .quad .Lx234_0_s
.Lx234_0_s:
 .string "digit/1"
# IR_VAR
 xchain174_n30_α:
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 5152], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 5160], rax
 jmp xchain174_n31_α
 xchain174_n30_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n31_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 5192], rax
 jmp xchain174_n32_α
 xchain174_n31_β:
 jmp xchain174_n5_α
 xchain174_n32_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5152] -> [zr+5104]
 mov rax, qword ptr [rbp + 5152]
 mov qword ptr [rbp + 5104], rax
 mov rax, qword ptr [rbp + 5160]
 mov qword ptr [rbp + 5112], rax
# marshal arg1 = producer-box slot [zr+5184] -> [zr+5120]
 mov rax, qword ptr [rbp + 5184]
 mov qword ptr [rbp + 5120], rax
 mov rax, qword ptr [rbp + 5192]
 mov qword ptr [rbp + 5128], rax
  .section .rodata
  .Lrkfn240: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn240]
 lea rsi, [rbp + 5104]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 cmp eax, 99
 je xchain174_n29_β
 jmp xchain174_n33_α
 xchain174_n32_β:
 jmp xchain174_n29_β
# IR_LIT_INTEGER
 xchain174_n33_α:
 mov qword ptr [rbp + 4928], 6
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 4936], rax
 jmp xchain174_n34_α
 xchain174_n33_β:
 jmp xchain174_n5_α
.Lx241_0:
 .quad 0
# IR_VAR_REF
 xchain174_n34_α:
 lea rdi, [rbp + 6528]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain174_n35_α
 xchain174_n34_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n35_α:
 lea rdi, [rbp + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 jmp xchain174_n36_α
 xchain174_n35_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n36_α:
 lea rdi, [rbp + 6560]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 jmp xchain174_n37_α
 xchain174_n36_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n37_α:
 lea rdi, [rbp + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 jmp xchain174_n38_α
 xchain174_n37_β:
 jmp xchain174_n5_α
 xchain174_n38_α:
 mov qword ptr [rbp + 4896], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4928]
 mov rdx, qword ptr [rbp + 4936]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 4960]
 mov rdx, qword ptr [rbp + 4968]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 4992]
 mov rdx, qword ptr [rbp + 5000]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 5024]
 mov rdx, qword ptr [rbp + 5032]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [rbp + 5056]
 mov rdx, qword ptr [rbp + 5064]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx251_0]
 mov esi, 5
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx251_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx251_3]
 lea rdx, [rip + .Lx251_4]
 jmp rax
.Lx251_3:
 mov qword ptr [rbp + 4904], rsp
 mov rax, qword ptr [rbp + 4896]
 test rax, rax
 jne .Lx251_5
 mov qword ptr [rbp + 4896], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx251_2
.Lx251_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx251_2
.Lx251_4:
 mov rax, qword ptr [rbp + 4896]
 test rax, rax
 jne .Lx251_6
 mov qword ptr [rbp + 4896], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx251_2
.Lx251_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx251_2
.Lx251_1:
 call rt_faildescr@PLT
.Lx251_2:
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 cmp eax, 99
 je xchain174_n29_β
 jmp xchain174_n39_α
 xchain174_n38_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4904]
 jmp qword ptr [rsp]
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "sumdigit/5"
# IR_VAR_REF
 xchain174_n39_α:
 lea rdi, [rbp + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 jmp xchain174_n40_α
 xchain174_n39_β:
 jmp xchain174_n5_α
 xchain174_n40_α:
 mov qword ptr [rbp + 4736], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4768]
 mov rdx, qword ptr [rbp + 4776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx255_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx255_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx255_3]
 lea rdx, [rip + .Lx255_4]
 jmp rax
.Lx255_3:
 mov qword ptr [rbp + 4744], rsp
 mov rax, qword ptr [rbp + 4736]
 test rax, rax
 jne .Lx255_5
 mov qword ptr [rbp + 4736], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx255_2
.Lx255_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx255_2
.Lx255_4:
 mov rax, qword ptr [rbp + 4736]
 test rax, rax
 jne .Lx255_6
 mov qword ptr [rbp + 4736], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx255_2
.Lx255_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx255_2
.Lx255_1:
 call rt_faildescr@PLT
.Lx255_2:
 mov qword ptr [rbp + 4704], rax
 mov qword ptr [rbp + 4712], rdx
 cmp eax, 99
 je xchain174_n38_β
 jmp xchain174_n41_α
 xchain174_n40_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4744]
 jmp qword ptr [rsp]
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "digit/1"
# IR_VAR
 xchain174_n41_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 4648], rax
 jmp xchain174_n42_α
 xchain174_n41_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n42_α:
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 4672], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 4680], rax
 jmp xchain174_n43_α
 xchain174_n42_β:
 jmp xchain174_n5_α
 xchain174_n43_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4640] -> [zr+4592]
 mov rax, qword ptr [rbp + 4640]
 mov qword ptr [rbp + 4592], rax
 mov rax, qword ptr [rbp + 4648]
 mov qword ptr [rbp + 4600], rax
# marshal arg1 = producer-box slot [zr+4672] -> [zr+4608]
 mov rax, qword ptr [rbp + 4672]
 mov qword ptr [rbp + 4608], rax
 mov rax, qword ptr [rbp + 4680]
 mov qword ptr [rbp + 4616], rax
  .section .rodata
  .Lrkfn261: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn261]
 lea rsi, [rbp + 4592]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4576], rax
 mov qword ptr [rbp + 4584], rdx
 cmp eax, 99
 je xchain174_n40_β
 jmp xchain174_n44_α
 xchain174_n43_β:
 jmp xchain174_n40_β
# IR_VAR
 xchain174_n44_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 4520], rax
 jmp xchain174_n45_α
 xchain174_n44_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n45_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 4544], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 4552], rax
 jmp xchain174_n46_α
 xchain174_n45_β:
 jmp xchain174_n5_α
 xchain174_n46_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4512] -> [zr+4464]
 mov rax, qword ptr [rbp + 4512]
 mov qword ptr [rbp + 4464], rax
 mov rax, qword ptr [rbp + 4520]
 mov qword ptr [rbp + 4472], rax
# marshal arg1 = producer-box slot [zr+4544] -> [zr+4480]
 mov rax, qword ptr [rbp + 4544]
 mov qword ptr [rbp + 4480], rax
 mov rax, qword ptr [rbp + 4552]
 mov qword ptr [rbp + 4488], rax
  .section .rodata
  .Lrkfn267: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn267]
 lea rsi, [rbp + 4464]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4448], rax
 mov qword ptr [rbp + 4456], rdx
 cmp eax, 99
 je xchain174_n40_β
 jmp xchain174_n47_α
 xchain174_n46_β:
 jmp xchain174_n40_β
# IR_VAR
 xchain174_n47_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 4384], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 4392], rax
 jmp xchain174_n48_α
 xchain174_n47_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n48_α:
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 4416], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 4424], rax
 jmp xchain174_n49_α
 xchain174_n48_β:
 jmp xchain174_n5_α
 xchain174_n49_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4384] -> [zr+4336]
 mov rax, qword ptr [rbp + 4384]
 mov qword ptr [rbp + 4336], rax
 mov rax, qword ptr [rbp + 4392]
 mov qword ptr [rbp + 4344], rax
# marshal arg1 = producer-box slot [zr+4416] -> [zr+4352]
 mov rax, qword ptr [rbp + 4416]
 mov qword ptr [rbp + 4352], rax
 mov rax, qword ptr [rbp + 4424]
 mov qword ptr [rbp + 4360], rax
  .section .rodata
  .Lrkfn273: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn273]
 lea rsi, [rbp + 4336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 cmp eax, 99
 je xchain174_n40_β
 jmp xchain174_n50_α
 xchain174_n49_β:
 jmp xchain174_n40_β
# IR_VAR_REF
 xchain174_n50_α:
 lea rdi, [rbp + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 jmp xchain174_n51_α
 xchain174_n50_β:
 jmp xchain174_n5_α
 xchain174_n51_α:
 mov qword ptr [rbp + 4256], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4288]
 mov rdx, qword ptr [rbp + 4296]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx277_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx277_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx277_3]
 lea rdx, [rip + .Lx277_4]
 jmp rax
.Lx277_3:
 mov qword ptr [rbp + 4264], rsp
 mov rax, qword ptr [rbp + 4256]
 test rax, rax
 jne .Lx277_5
 mov qword ptr [rbp + 4256], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx277_2
.Lx277_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx277_2
.Lx277_4:
 mov rax, qword ptr [rbp + 4256]
 test rax, rax
 jne .Lx277_6
 mov qword ptr [rbp + 4256], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx277_2
.Lx277_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx277_2
.Lx277_1:
 call rt_faildescr@PLT
.Lx277_2:
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 cmp eax, 99
 je xchain174_n40_β
 jmp xchain174_n52_α
 xchain174_n51_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4264]
 jmp qword ptr [rsp]
.Lx277_0:
 .quad .Lx277_0_s
.Lx277_0_s:
 .string "digit/1"
# IR_VAR
 xchain174_n52_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 4160], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 4168], rax
 jmp xchain174_n53_α
 xchain174_n52_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n53_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 4192], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 4200], rax
 jmp xchain174_n54_α
 xchain174_n53_β:
 jmp xchain174_n5_α
 xchain174_n54_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4160] -> [zr+4112]
 mov rax, qword ptr [rbp + 4160]
 mov qword ptr [rbp + 4112], rax
 mov rax, qword ptr [rbp + 4168]
 mov qword ptr [rbp + 4120], rax
# marshal arg1 = producer-box slot [zr+4192] -> [zr+4128]
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 4128], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 4136], rax
  .section .rodata
  .Lrkfn283: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn283]
 lea rsi, [rbp + 4112]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 cmp eax, 99
 je xchain174_n51_β
 jmp xchain174_n55_α
 xchain174_n54_β:
 jmp xchain174_n51_β
# IR_VAR
 xchain174_n55_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 4040], rax
 jmp xchain174_n56_α
 xchain174_n55_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n56_α:
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 4072], rax
 jmp xchain174_n57_α
 xchain174_n56_β:
 jmp xchain174_n5_α
 xchain174_n57_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4032] -> [zr+3984]
 mov rax, qword ptr [rbp + 4032]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4040]
 mov qword ptr [rbp + 3992], rax
# marshal arg1 = producer-box slot [zr+4064] -> [zr+4000]
 mov rax, qword ptr [rbp + 4064]
 mov qword ptr [rbp + 4000], rax
 mov rax, qword ptr [rbp + 4072]
 mov qword ptr [rbp + 4008], rax
  .section .rodata
  .Lrkfn289: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn289]
 lea rsi, [rbp + 3984]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 cmp eax, 99
 je xchain174_n51_β
 jmp xchain174_n58_α
 xchain174_n57_β:
 jmp xchain174_n51_β
# IR_VAR
 xchain174_n58_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 3904], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 3912], rax
 jmp xchain174_n59_α
 xchain174_n58_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n59_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 3944], rax
 jmp xchain174_n60_α
 xchain174_n59_β:
 jmp xchain174_n5_α
 xchain174_n60_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3856]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 3856], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 3864], rax
# marshal arg1 = producer-box slot [zr+3936] -> [zr+3872]
 mov rax, qword ptr [rbp + 3936]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 3944]
 mov qword ptr [rbp + 3880], rax
  .section .rodata
  .Lrkfn295: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn295]
 lea rsi, [rbp + 3856]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 cmp eax, 99
 je xchain174_n51_β
 jmp xchain174_n61_α
 xchain174_n60_β:
 jmp xchain174_n51_β
# IR_VAR
 xchain174_n61_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 3784], rax
 jmp xchain174_n62_α
 xchain174_n61_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n62_α:
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 3808], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 3816], rax
 jmp xchain174_n63_α
 xchain174_n62_β:
 jmp xchain174_n5_α
 xchain174_n63_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3776] -> [zr+3728]
 mov rax, qword ptr [rbp + 3776]
 mov qword ptr [rbp + 3728], rax
 mov rax, qword ptr [rbp + 3784]
 mov qword ptr [rbp + 3736], rax
# marshal arg1 = producer-box slot [zr+3808] -> [zr+3744]
 mov rax, qword ptr [rbp + 3808]
 mov qword ptr [rbp + 3744], rax
 mov rax, qword ptr [rbp + 3816]
 mov qword ptr [rbp + 3752], rax
  .section .rodata
  .Lrkfn301: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn301]
 lea rsi, [rbp + 3728]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 cmp eax, 99
 je xchain174_n51_β
 jmp xchain174_n64_α
 xchain174_n63_β:
 jmp xchain174_n51_β
# IR_VAR_REF
 xchain174_n64_α:
 lea rdi, [rbp + 6624]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 jmp xchain174_n65_α
 xchain174_n64_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n65_α:
 lea rdi, [rbp + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 jmp xchain174_n66_α
 xchain174_n65_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n66_α:
 lea rdi, [rbp + 6592]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 jmp xchain174_n67_α
 xchain174_n66_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n67_α:
 lea rdi, [rbp + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain174_n68_α
 xchain174_n67_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n68_α:
 lea rdi, [rbp + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 jmp xchain174_n69_α
 xchain174_n68_β:
 jmp xchain174_n5_α
 xchain174_n69_α:
 mov qword ptr [rbp + 3520], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3552]
 mov rdx, qword ptr [rbp + 3560]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3584]
 mov rdx, qword ptr [rbp + 3592]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 3616]
 mov rdx, qword ptr [rbp + 3624]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 3648]
 mov rdx, qword ptr [rbp + 3656]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [rbp + 3680]
 mov rdx, qword ptr [rbp + 3688]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx313_0]
 mov esi, 5
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx313_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx313_3]
 lea rdx, [rip + .Lx313_4]
 jmp rax
.Lx313_3:
 mov qword ptr [rbp + 3528], rsp
 mov rax, qword ptr [rbp + 3520]
 test rax, rax
 jne .Lx313_5
 mov qword ptr [rbp + 3520], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx313_2
.Lx313_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx313_2
.Lx313_4:
 mov rax, qword ptr [rbp + 3520]
 test rax, rax
 jne .Lx313_6
 mov qword ptr [rbp + 3520], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx313_2
.Lx313_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx313_2
.Lx313_1:
 call rt_faildescr@PLT
.Lx313_2:
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 cmp eax, 99
 je xchain174_n51_β
 jmp xchain174_n70_α
 xchain174_n69_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3528]
 jmp qword ptr [rsp]
.Lx313_0:
 .quad .Lx313_0_s
.Lx313_0_s:
 .string "sumdigit/5"
# IR_VAR_REF
 xchain174_n70_α:
 lea rdi, [rbp + 6512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain174_n71_α
 xchain174_n70_β:
 jmp xchain174_n5_α
 xchain174_n71_α:
 mov qword ptr [rbp + 3360], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx317_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx317_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx317_3]
 lea rdx, [rip + .Lx317_4]
 jmp rax
.Lx317_3:
 mov qword ptr [rbp + 3368], rsp
 mov rax, qword ptr [rbp + 3360]
 test rax, rax
 jne .Lx317_5
 mov qword ptr [rbp + 3360], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx317_2
.Lx317_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx317_2
.Lx317_4:
 mov rax, qword ptr [rbp + 3360]
 test rax, rax
 jne .Lx317_6
 mov qword ptr [rbp + 3360], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx317_2
.Lx317_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx317_2
.Lx317_1:
 call rt_faildescr@PLT
.Lx317_2:
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 cmp eax, 99
 je xchain174_n69_β
 jmp xchain174_n72_α
 xchain174_n71_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3368]
 jmp qword ptr [rsp]
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
 .string "digit/1"
# IR_VAR
 xchain174_n72_α:
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 3272], rax
 jmp xchain174_n73_α
 xchain174_n72_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n73_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 3304], rax
 jmp xchain174_n74_α
 xchain174_n73_β:
 jmp xchain174_n5_α
 xchain174_n74_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3264] -> [zr+3216]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3224], rax
# marshal arg1 = producer-box slot [zr+3296] -> [zr+3232]
 mov rax, qword ptr [rbp + 3296]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 3240], rax
  .section .rodata
  .Lrkfn323: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn323]
 lea rsi, [rbp + 3216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 cmp eax, 99
 je xchain174_n71_β
 jmp xchain174_n75_α
 xchain174_n74_β:
 jmp xchain174_n71_β
# IR_VAR
 xchain174_n75_α:
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 3144], rax
 jmp xchain174_n76_α
 xchain174_n75_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n76_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 3176], rax
 jmp xchain174_n77_α
 xchain174_n76_β:
 jmp xchain174_n5_α
 xchain174_n77_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3136] -> [zr+3088]
 mov rax, qword ptr [rbp + 3136]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 3096], rax
# marshal arg1 = producer-box slot [zr+3168] -> [zr+3104]
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3112], rax
  .section .rodata
  .Lrkfn329: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn329]
 lea rsi, [rbp + 3088]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 cmp eax, 99
 je xchain174_n71_β
 jmp xchain174_n78_α
 xchain174_n77_β:
 jmp xchain174_n71_β
# IR_VAR
 xchain174_n78_α:
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 3016], rax
 jmp xchain174_n79_α
 xchain174_n78_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n79_α:
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 3048], rax
 jmp xchain174_n80_α
 xchain174_n79_β:
 jmp xchain174_n5_α
 xchain174_n80_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3008] -> [zr+2960]
 mov rax, qword ptr [rbp + 3008]
 mov qword ptr [rbp + 2960], rax
 mov rax, qword ptr [rbp + 3016]
 mov qword ptr [rbp + 2968], rax
# marshal arg1 = producer-box slot [zr+3040] -> [zr+2976]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 2976], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 2984], rax
  .section .rodata
  .Lrkfn335: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn335]
 lea rsi, [rbp + 2960]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 cmp eax, 99
 je xchain174_n71_β
 jmp xchain174_n81_α
 xchain174_n80_β:
 jmp xchain174_n71_β
# IR_VAR
 xchain174_n81_α:
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 2888], rax
 jmp xchain174_n82_α
 xchain174_n81_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n82_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 2920], rax
 jmp xchain174_n83_α
 xchain174_n82_β:
 jmp xchain174_n5_α
 xchain174_n83_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2880] -> [zr+2832]
 mov rax, qword ptr [rbp + 2880]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2888]
 mov qword ptr [rbp + 2840], rax
# marshal arg1 = producer-box slot [zr+2912] -> [zr+2848]
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2856], rax
  .section .rodata
  .Lrkfn341: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn341]
 lea rsi, [rbp + 2832]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je xchain174_n71_β
 jmp xchain174_n84_α
 xchain174_n83_β:
 jmp xchain174_n71_β
# IR_VAR
 xchain174_n84_α:
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 2760], rax
 jmp xchain174_n85_α
 xchain174_n84_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n85_α:
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 2792], rax
 jmp xchain174_n86_α
 xchain174_n85_β:
 jmp xchain174_n5_α
 xchain174_n86_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2704]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2712], rax
# marshal arg1 = producer-box slot [zr+2784] -> [zr+2720]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2728], rax
  .section .rodata
  .Lrkfn347: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn347]
 lea rsi, [rbp + 2704]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 cmp eax, 99
 je xchain174_n71_β
 jmp xchain174_n87_α
 xchain174_n86_β:
 jmp xchain174_n71_β
# IR_VAR_REF
 xchain174_n87_α:
 lea rdi, [rbp + 6608]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain174_n88_α
 xchain174_n87_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n88_α:
 lea rdi, [rbp + 6544]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain174_n89_α
 xchain174_n88_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n89_α:
 lea rdi, [rbp + 6512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain174_n90_α
 xchain174_n89_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n90_α:
 lea rdi, [rbp + 6576]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain174_n91_α
 xchain174_n90_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n91_α:
 lea rdi, [rbp + 6464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain174_n92_α
 xchain174_n91_β:
 jmp xchain174_n5_α
 xchain174_n92_α:
 mov qword ptr [rbp + 2496], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2528]
 mov rdx, qword ptr [rbp + 2536]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2560]
 mov rdx, qword ptr [rbp + 2568]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 2592]
 mov rdx, qword ptr [rbp + 2600]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 2624]
 mov rdx, qword ptr [rbp + 2632]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [rbp + 2656]
 mov rdx, qword ptr [rbp + 2664]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx359_0]
 mov esi, 5
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx359_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx359_3]
 lea rdx, [rip + .Lx359_4]
 jmp rax
.Lx359_3:
 mov qword ptr [rbp + 2504], rsp
 mov rax, qword ptr [rbp + 2496]
 test rax, rax
 jne .Lx359_5
 mov qword ptr [rbp + 2496], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx359_2
.Lx359_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx359_2
.Lx359_4:
 mov rax, qword ptr [rbp + 2496]
 test rax, rax
 jne .Lx359_6
 mov qword ptr [rbp + 2496], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx359_2
.Lx359_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx359_2
.Lx359_1:
 call rt_faildescr@PLT
.Lx359_2:
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 cmp eax, 99
 je xchain174_n71_β
 jmp xchain174_n93_α
 xchain174_n92_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2504]
 jmp qword ptr [rsp]
.Lx359_0:
 .quad .Lx359_0_s
.Lx359_0_s:
 .string "sumdigit/5"
# IR_VAR_REF
 xchain174_n93_α:
 lea rdi, [rbp + 6480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain174_n94_α
 xchain174_n93_β:
 jmp xchain174_n5_α
 xchain174_n94_α:
 mov qword ptr [rbp + 2336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2368]
 mov rdx, qword ptr [rbp + 2376]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx363_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx363_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx363_3]
 lea rdx, [rip + .Lx363_4]
 jmp rax
.Lx363_3:
 mov qword ptr [rbp + 2344], rsp
 mov rax, qword ptr [rbp + 2336]
 test rax, rax
 jne .Lx363_5
 mov qword ptr [rbp + 2336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx363_2
.Lx363_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx363_2
.Lx363_4:
 mov rax, qword ptr [rbp + 2336]
 test rax, rax
 jne .Lx363_6
 mov qword ptr [rbp + 2336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx363_2
.Lx363_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx363_2
.Lx363_1:
 call rt_faildescr@PLT
.Lx363_2:
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 cmp eax, 99
 je xchain174_n92_β
 jmp xchain174_n95_α
 xchain174_n94_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2344]
 jmp qword ptr [rsp]
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
 .string "leftdigit/1"
# IR_VAR
 xchain174_n95_α:
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 2248], rax
 jmp xchain174_n96_α
 xchain174_n95_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n96_α:
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 2280], rax
 jmp xchain174_n97_α
 xchain174_n96_β:
 jmp xchain174_n5_α
 xchain174_n97_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2240] -> [zr+2192]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2200], rax
# marshal arg1 = producer-box slot [zr+2272] -> [zr+2208]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2216], rax
  .section .rodata
  .Lrkfn369: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn369]
 lea rsi, [rbp + 2192]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain174_n94_β
 jmp xchain174_n98_α
 xchain174_n97_β:
 jmp xchain174_n94_β
# IR_VAR
 xchain174_n98_α:
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 2120], rax
 jmp xchain174_n99_α
 xchain174_n98_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n99_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 2152], rax
 jmp xchain174_n100_α
 xchain174_n99_β:
 jmp xchain174_n5_α
 xchain174_n100_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2112] -> [zr+2064]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2072], rax
# marshal arg1 = producer-box slot [zr+2144] -> [zr+2080]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2088], rax
  .section .rodata
  .Lrkfn375: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn375]
 lea rsi, [rbp + 2064]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain174_n94_β
 jmp xchain174_n101_α
 xchain174_n100_β:
 jmp xchain174_n94_β
# IR_VAR
 xchain174_n101_α:
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 1992], rax
 jmp xchain174_n102_α
 xchain174_n101_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n102_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 2024], rax
 jmp xchain174_n103_α
 xchain174_n102_β:
 jmp xchain174_n5_α
 xchain174_n103_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1936]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1944], rax
# marshal arg1 = producer-box slot [zr+2016] -> [zr+1952]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1960], rax
  .section .rodata
  .Lrkfn381: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn381]
 lea rsi, [rbp + 1936]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 cmp eax, 99
 je xchain174_n94_β
 jmp xchain174_n104_α
 xchain174_n103_β:
 jmp xchain174_n94_β
# IR_VAR
 xchain174_n104_α:
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 1864], rax
 jmp xchain174_n105_α
 xchain174_n104_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n105_α:
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 1896], rax
 jmp xchain174_n106_α
 xchain174_n105_β:
 jmp xchain174_n5_α
 xchain174_n106_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1856] -> [zr+1808]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1816], rax
# marshal arg1 = producer-box slot [zr+1888] -> [zr+1824]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1832], rax
  .section .rodata
  .Lrkfn387: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn387]
 lea rsi, [rbp + 1808]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain174_n94_β
 jmp xchain174_n107_α
 xchain174_n106_β:
 jmp xchain174_n94_β
# IR_VAR
 xchain174_n107_α:
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 1736], rax
 jmp xchain174_n108_α
 xchain174_n107_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n108_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 1768], rax
 jmp xchain174_n109_α
 xchain174_n108_β:
 jmp xchain174_n5_α
 xchain174_n109_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1728] -> [zr+1680]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1688], rax
# marshal arg1 = producer-box slot [zr+1760] -> [zr+1696]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1704], rax
  .section .rodata
  .Lrkfn393: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn393]
 lea rsi, [rbp + 1680]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 cmp eax, 99
 je xchain174_n94_β
 jmp xchain174_n110_α
 xchain174_n109_β:
 jmp xchain174_n94_β
# IR_VAR
 xchain174_n110_α:
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 1608], rax
 jmp xchain174_n111_α
 xchain174_n110_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n111_α:
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 1640], rax
 jmp xchain174_n112_α
 xchain174_n111_β:
 jmp xchain174_n5_α
 xchain174_n112_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1552]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1560], rax
# marshal arg1 = producer-box slot [zr+1632] -> [zr+1568]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1576], rax
  .section .rodata
  .Lrkfn399: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn399]
 lea rsi, [rbp + 1552]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain174_n94_β
 jmp xchain174_n113_α
 xchain174_n112_β:
 jmp xchain174_n94_β
# IR_VAR_REF
 xchain174_n113_α:
 lea rdi, [rbp + 6496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain174_n114_α
 xchain174_n113_β:
 jmp xchain174_n5_α
 xchain174_n114_α:
 mov qword ptr [rbp + 1472], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1504]
 mov rdx, qword ptr [rbp + 1512]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx403_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx403_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx403_3]
 lea rdx, [rip + .Lx403_4]
 jmp rax
.Lx403_3:
 mov qword ptr [rbp + 1480], rsp
 mov rax, qword ptr [rbp + 1472]
 test rax, rax
 jne .Lx403_5
 mov qword ptr [rbp + 1472], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx403_2
.Lx403_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx403_2
.Lx403_4:
 mov rax, qword ptr [rbp + 1472]
 test rax, rax
 jne .Lx403_6
 mov qword ptr [rbp + 1472], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx403_2
.Lx403_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx403_2
.Lx403_1:
 call rt_faildescr@PLT
.Lx403_2:
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain174_n94_β
 jmp xchain174_n115_α
 xchain174_n114_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1480]
 jmp qword ptr [rsp]
.Lx403_0:
 .quad .Lx403_0_s
.Lx403_0_s:
 .string "leftdigit/1"
# IR_VAR
 xchain174_n115_α:
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 1384], rax
 jmp xchain174_n116_α
 xchain174_n115_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n116_α:
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 1416], rax
 jmp xchain174_n117_α
 xchain174_n116_β:
 jmp xchain174_n5_α
 xchain174_n117_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1328]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
  .section .rodata
  .Lrkfn409: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn409]
 lea rsi, [rbp + 1328]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain174_n114_β
 jmp xchain174_n118_α
 xchain174_n117_β:
 jmp xchain174_n114_β
# IR_VAR
 xchain174_n118_α:
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 1256], rax
 jmp xchain174_n119_α
 xchain174_n118_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n119_α:
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 1288], rax
 jmp xchain174_n120_α
 xchain174_n119_β:
 jmp xchain174_n5_α
 xchain174_n120_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1200]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1208], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1216]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1224], rax
  .section .rodata
  .Lrkfn415: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn415]
 lea rsi, [rbp + 1200]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain174_n114_β
 jmp xchain174_n121_α
 xchain174_n120_β:
 jmp xchain174_n114_β
# IR_VAR
 xchain174_n121_α:
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 1128], rax
 jmp xchain174_n122_α
 xchain174_n121_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n122_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 1160], rax
 jmp xchain174_n123_α
 xchain174_n122_β:
 jmp xchain174_n5_α
 xchain174_n123_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1072]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1088]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1096], rax
  .section .rodata
  .Lrkfn421: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn421]
 lea rsi, [rbp + 1072]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain174_n114_β
 jmp xchain174_n124_α
 xchain174_n123_β:
 jmp xchain174_n114_β
# IR_VAR
 xchain174_n124_α:
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 1000], rax
 jmp xchain174_n125_α
 xchain174_n124_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n125_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 1032], rax
 jmp xchain174_n126_α
 xchain174_n125_β:
 jmp xchain174_n5_α
 xchain174_n126_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+944]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+960]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 968], rax
  .section .rodata
  .Lrkfn427: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn427]
 lea rsi, [rbp + 944]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain174_n114_β
 jmp xchain174_n127_α
 xchain174_n126_β:
 jmp xchain174_n114_β
# IR_VAR
 xchain174_n127_α:
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 872], rax
 jmp xchain174_n128_α
 xchain174_n127_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n128_α:
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 904], rax
 jmp xchain174_n129_α
 xchain174_n128_β:
 jmp xchain174_n5_α
 xchain174_n129_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+832]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 840], rax
  .section .rodata
  .Lrkfn433: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn433]
 lea rsi, [rbp + 816]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain174_n114_β
 jmp xchain174_n130_α
 xchain174_n129_β:
 jmp xchain174_n114_β
# IR_VAR
 xchain174_n130_α:
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 744], rax
 jmp xchain174_n131_α
 xchain174_n130_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n131_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 776], rax
 jmp xchain174_n132_α
 xchain174_n131_β:
 jmp xchain174_n5_α
 xchain174_n132_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn439: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn439]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain174_n114_β
 jmp xchain174_n133_α
 xchain174_n132_β:
 jmp xchain174_n114_β
# IR_VAR
 xchain174_n133_α:
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 616], rax
 jmp xchain174_n134_α
 xchain174_n133_β:
 jmp xchain174_n5_α
# IR_VAR
 xchain174_n134_α:
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 648], rax
 jmp xchain174_n135_α
 xchain174_n134_β:
 jmp xchain174_n5_α
 xchain174_n135_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+560]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+576]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 584], rax
  .section .rodata
  .Lrkfn445: .string "$cmp_ne"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn445]
 lea rsi, [rbp + 560]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain174_n114_β
 jmp xchain174_n136_α
 xchain174_n135_β:
 jmp xchain174_n114_β
# IR_VAR_REF
 xchain174_n136_α:
 lea rdi, [rbp + 6464]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain174_n137_α
 xchain174_n136_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n137_α:
 lea rdi, [rbp + 6480]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain174_n138_α
 xchain174_n137_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n138_α:
 lea rdi, [rbp + 6496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain174_n139_α
 xchain174_n138_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n139_α:
 lea rdi, [rbp + 6512]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain174_n140_α
 xchain174_n139_β:
 jmp xchain174_n5_α
# IR_VAR_REF
 xchain174_n140_α:
 lea rdi, [rbp + 6496]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain174_n141_α
 xchain174_n140_β:
 jmp xchain174_n5_α
 xchain174_n141_α:
 mov qword ptr [rbp + 352], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx457_0]
 mov esi, 5
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx457_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx457_3]
 lea rdx, [rip + .Lx457_4]
 jmp rax
.Lx457_3:
 mov qword ptr [rbp + 360], rsp
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx457_5
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx457_2
.Lx457_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx457_2
.Lx457_4:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx457_6
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx457_2
.Lx457_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx457_2
.Lx457_1:
 call rt_faildescr@PLT
.Lx457_2:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain174_n114_β
 jmp xchain174_n142_α
 xchain174_n141_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 360]
 jmp qword ptr [rsp]
.Lx457_0:
 .quad .Lx457_0_s
.Lx457_0_s:
 .string "sumdigit/5"
# IR_SUSPEND yield+resume
 xchain174_n142_α:
 lea rax, [rip + xchain174_n142_β]
 mov qword ptr [rbp + 6432], rax
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 8], rax
 jmp proc_solve$8_γ
 xchain174_n142_β:
 jmp xchain174_n141_β
proc_solve$8_res:
add rsp, 8
pop rbp
proc_solve$8_β:
jmp qword ptr [rbp + 6432]
proc_solve$8_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_solve$8_res]
push rax
mov rax, [rbp + 6648]
mov rbp, [rbp + 6664]
jmp rax
proc_solve$8_ω:
mov rax, [rbp + 6656]
lea rsp, [rbp + 6672]
mov rbp, [rbp + 6664]
jmp rax
  .globl proc_leftdigit$1_α
proc_leftdigit$1_α:
#=======================================================================================================================
    .global proc_leftdigit$1_α
    .global proc_leftdigit$1_β
    .global proc_leftdigit$1_γ
    .global proc_leftdigit$1_ω
  sub rsp, 1744
  mov [rsp + 1720], rcx
  mov [rsp + 1728], rdx
  mov [rsp + 1736], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1712
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1704], rsp
  mov rdi, rsp
  mov esi, 1712
  call rt_jmp_frame_lexprep@PLT
proc_leftdigit$1_α_body:
lea rax, [rip + xchain460_n4_β]
mov qword ptr [rbp + 1680], rax
 xchain460_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn462: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn462]
 lea rsi, [rbp + 80]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain460_n1_α
 xchain460_n0_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain460_n1_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain460_n2_α
 xchain460_n1_β:
 jmp xchain460_n5_α
# IR_LIT_INTEGER
 xchain460_n2_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx465_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain460_n3_α
 xchain460_n2_β:
 jmp xchain460_n5_α
.Lx465_0:
 .quad 1
 xchain460_n3_α:
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
  .Lrkfn467: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn467]
 lea rsi, [rbp + 1568]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain460_n5_α
 jmp xchain460_n4_α
 xchain460_n3_β:
 jmp xchain460_n5_α
# IR_SUSPEND yield+resume
 xchain460_n4_α:
 lea rax, [rip + xchain460_n4_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain460_n4_β:
 jmp xchain460_n5_α
 xchain460_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1520]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1528], rax
  .section .rodata
  .Lrkfn471: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn471]
 lea rsi, [rbp + 1520]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain460_n6_α
 xchain460_n5_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain460_n6_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain460_n7_α
 xchain460_n6_β:
 jmp xchain460_n10_α
# IR_LIT_INTEGER
 xchain460_n7_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx474_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain460_n8_α
 xchain460_n7_β:
 jmp xchain460_n10_α
.Lx474_0:
 .quad 2
 xchain460_n8_α:
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
  .Lrkfn476: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn476]
 lea rsi, [rbp + 1392]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain460_n10_α
 jmp xchain460_n9_α
 xchain460_n8_β:
 jmp xchain460_n10_α
# IR_SUSPEND yield+resume
 xchain460_n9_α:
 lea rax, [rip + xchain460_n9_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain460_n9_β:
 jmp xchain460_n10_α
 xchain460_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1344]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1352], rax
  .section .rodata
  .Lrkfn480: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn480]
 lea rsi, [rbp + 1344]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain460_n11_α
 xchain460_n10_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain460_n11_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain460_n12_α
 xchain460_n11_β:
 jmp xchain460_n15_α
# IR_LIT_INTEGER
 xchain460_n12_α:
 mov qword ptr [rbp + 1296], 6
 mov rax, qword ptr [rip + .Lx483_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain460_n13_α
 xchain460_n12_β:
 jmp xchain460_n15_α
.Lx483_0:
 .quad 3
 xchain460_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1216]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
  .section .rodata
  .Lrkfn485: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn485]
 lea rsi, [rbp + 1216]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain460_n15_α
 jmp xchain460_n14_α
 xchain460_n13_β:
 jmp xchain460_n15_α
# IR_SUSPEND yield+resume
 xchain460_n14_α:
 lea rax, [rip + xchain460_n14_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain460_n14_β:
 jmp xchain460_n15_α
 xchain460_n15_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1168]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1176], rax
  .section .rodata
  .Lrkfn489: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn489]
 lea rsi, [rbp + 1168]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain460_n16_α
 xchain460_n15_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain460_n16_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain460_n17_α
 xchain460_n16_β:
 jmp xchain460_n20_α
# IR_LIT_INTEGER
 xchain460_n17_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx492_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain460_n18_α
 xchain460_n17_β:
 jmp xchain460_n20_α
.Lx492_0:
 .quad 4
 xchain460_n18_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1040]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+1120] -> [zr+1056]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1064], rax
  .section .rodata
  .Lrkfn494: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn494]
 lea rsi, [rbp + 1040]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain460_n20_α
 jmp xchain460_n19_α
 xchain460_n18_β:
 jmp xchain460_n20_α
# IR_SUSPEND yield+resume
 xchain460_n19_α:
 lea rax, [rip + xchain460_n19_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain460_n19_β:
 jmp xchain460_n20_α
 xchain460_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+992]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1000], rax
  .section .rodata
  .Lrkfn498: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn498]
 lea rsi, [rbp + 992]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain460_n21_α
 xchain460_n20_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain460_n21_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain460_n22_α
 xchain460_n21_β:
 jmp xchain460_n25_α
# IR_LIT_INTEGER
 xchain460_n22_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx501_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain460_n23_α
 xchain460_n22_β:
 jmp xchain460_n25_α
.Lx501_0:
 .quad 5
 xchain460_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+864]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
  .section .rodata
  .Lrkfn503: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn503]
 lea rsi, [rbp + 864]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain460_n25_α
 jmp xchain460_n24_α
 xchain460_n23_β:
 jmp xchain460_n25_α
# IR_SUSPEND yield+resume
 xchain460_n24_α:
 lea rax, [rip + xchain460_n24_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain460_n24_β:
 jmp xchain460_n25_α
 xchain460_n25_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+816]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 824], rax
  .section .rodata
  .Lrkfn507: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn507]
 lea rsi, [rbp + 816]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain460_n26_α
 xchain460_n25_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain460_n26_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain460_n27_α
 xchain460_n26_β:
 jmp xchain460_n30_α
# IR_LIT_INTEGER
 xchain460_n27_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx510_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain460_n28_α
 xchain460_n27_β:
 jmp xchain460_n30_α
.Lx510_0:
 .quad 6
 xchain460_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
  .Lrkfn512: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn512]
 lea rsi, [rbp + 688]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain460_n30_α
 jmp xchain460_n29_α
 xchain460_n28_β:
 jmp xchain460_n30_α
# IR_SUSPEND yield+resume
 xchain460_n29_α:
 lea rax, [rip + xchain460_n29_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain460_n29_β:
 jmp xchain460_n30_α
 xchain460_n30_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+640]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 648], rax
  .section .rodata
  .Lrkfn516: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn516]
 lea rsi, [rbp + 640]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain460_n31_α
 xchain460_n30_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain460_n31_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain460_n32_α
 xchain460_n31_β:
 jmp xchain460_n35_α
# IR_LIT_INTEGER
 xchain460_n32_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx519_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain460_n33_α
 xchain460_n32_β:
 jmp xchain460_n35_α
.Lx519_0:
 .quad 7
 xchain460_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+512]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 520], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+528]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 536], rax
  .section .rodata
  .Lrkfn521: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn521]
 lea rsi, [rbp + 512]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain460_n35_α
 jmp xchain460_n34_α
 xchain460_n33_β:
 jmp xchain460_n35_α
# IR_SUSPEND yield+resume
 xchain460_n34_α:
 lea rax, [rip + xchain460_n34_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain460_n34_β:
 jmp xchain460_n35_α
 xchain460_n35_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+464]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 472], rax
  .section .rodata
  .Lrkfn525: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn525]
 lea rsi, [rbp + 464]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain460_n36_α
 xchain460_n35_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain460_n36_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain460_n37_α
 xchain460_n36_β:
 jmp xchain460_n40_α
# IR_LIT_INTEGER
 xchain460_n37_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx528_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain460_n38_α
 xchain460_n37_β:
 jmp xchain460_n40_α
.Lx528_0:
 .quad 8
 xchain460_n38_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+352]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 360], rax
  .section .rodata
  .Lrkfn530: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn530]
 lea rsi, [rbp + 336]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain460_n40_α
 jmp xchain460_n39_α
 xchain460_n38_β:
 jmp xchain460_n40_α
# IR_SUSPEND yield+resume
 xchain460_n39_α:
 lea rax, [rip + xchain460_n39_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain460_n39_β:
 jmp xchain460_n40_α
 xchain460_n40_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+288]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 296], rax
  .section .rodata
  .Lrkfn534: .string "$unwind_nothrow"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn534]
 lea rsi, [rbp + 288]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain460_n41_α
 xchain460_n40_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain460_n41_α:
 lea rdi, [rbp + 16]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain460_n42_α
 xchain460_n41_β:
 jmp xchain460_n45_α
# IR_LIT_INTEGER
 xchain460_n42_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx537_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain460_n43_α
 xchain460_n42_β:
 jmp xchain460_n45_α
.Lx537_0:
 .quad 9
 xchain460_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+160]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 168], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+176]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 184], rax
  .section .rodata
  .Lrkfn539: .string "$unify"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn539]
 lea rsi, [rbp + 160]
 mov edx, 2
 call rt_call_arr@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain460_n45_α
 jmp xchain460_n44_α
 xchain460_n43_β:
 jmp xchain460_n45_α
# IR_SUSPEND yield+resume
 xchain460_n44_α:
 lea rax, [rip + xchain460_n44_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain460_n44_β:
 jmp xchain460_n45_α
 xchain460_n45_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
  .section .rodata
  .Lrkfn543: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn543]
 lea rsi, [rbp + 112]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp proc_leftdigit$1_ω
 xchain460_n45_β:
 jmp proc_leftdigit$1_ω
proc_leftdigit$1_res:
add rsp, 8
pop rbp
proc_leftdigit$1_β:
jmp qword ptr [rbp + 1680]
proc_leftdigit$1_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_leftdigit$1_res]
push rax
mov rax, [rbp + 1720]
mov rbp, [rbp + 1736]
jmp rax
proc_leftdigit$1_ω:
mov rax, [rbp + 1728]
lea rsp, [rbp + 1744]
mov rbp, [rbp + 1736]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "sumdigit/5"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_sumdigit$5_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 5
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2032
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "digit/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_digit$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1888
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "solve/8"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_solve$8_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 8
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 6640
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "leftdigit/1"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_leftdigit$1_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1712
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
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
  mov qword ptr [rsp + 1960], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain544_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
  .section .rodata
  .Lrkfn546: .string "$trail_mark"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn546]
 lea rsi, [rbp + 64]
 mov edx, 0
 call rt_call_arr@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain544_n1_α
 xchain544_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain544_n1_α:
 lea rdi, [rbp + 2080]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain544_n2_α
 xchain544_n1_β:
 jmp xchain544_n11_α
# IR_VAR_REF
 xchain544_n2_α:
 lea rdi, [rbp + 2064]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain544_n3_α
 xchain544_n2_β:
 jmp xchain544_n11_α
# IR_VAR_REF
 xchain544_n3_α:
 lea rdi, [rbp + 2048]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain544_n4_α
 xchain544_n3_β:
 jmp xchain544_n11_α
# IR_VAR_REF
 xchain544_n4_α:
 lea rdi, [rbp + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain544_n5_α
 xchain544_n4_β:
 jmp xchain544_n11_α
# IR_VAR_REF
 xchain544_n5_α:
 lea rdi, [rbp + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain544_n6_α
 xchain544_n5_β:
 jmp xchain544_n11_α
# IR_VAR_REF
 xchain544_n6_α:
 lea rdi, [rbp + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain544_n7_α
 xchain544_n6_β:
 jmp xchain544_n11_α
# IR_VAR_REF
 xchain544_n7_α:
 lea rdi, [rbp + 1984]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain544_n8_α
 xchain544_n7_β:
 jmp xchain544_n11_α
# IR_VAR_REF
 xchain544_n8_α:
 lea rdi, [rbp + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain544_n9_α
 xchain544_n8_β:
 jmp xchain544_n11_α
 xchain544_n9_α:
 mov qword ptr [rbp + 1664], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1696]
 mov rdx, qword ptr [rbp + 1704]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1728]
 mov rdx, qword ptr [rbp + 1736]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1760]
 mov rdx, qword ptr [rbp + 1768]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [rbp + 1824]
 mov rdx, qword ptr [rbp + 1832]
 call rt_arg_stage@PLT
 mov edi, 5
 mov rsi, qword ptr [rbp + 1856]
 mov rdx, qword ptr [rbp + 1864]
 call rt_arg_stage@PLT
 mov edi, 6
 mov rsi, qword ptr [rbp + 1888]
 mov rdx, qword ptr [rbp + 1896]
 call rt_arg_stage@PLT
 mov edi, 7
 mov rsi, qword ptr [rbp + 1920]
 mov rdx, qword ptr [rbp + 1928]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx564_0]
 mov esi, 8
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx564_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx564_3]
 lea rdx, [rip + .Lx564_4]
 jmp rax
.Lx564_3:
 mov qword ptr [rbp + 1672], rsp
 mov rax, qword ptr [rbp + 1664]
 test rax, rax
 jne .Lx564_5
 mov qword ptr [rbp + 1664], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx564_2
.Lx564_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx564_2
.Lx564_4:
 mov rax, qword ptr [rbp + 1664]
 test rax, rax
 jne .Lx564_6
 mov qword ptr [rbp + 1664], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx564_2
.Lx564_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx564_2
.Lx564_1:
 call rt_faildescr@PLT
.Lx564_2:
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain544_n11_α
 jmp xchain544_n10_α
 xchain544_n9_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1672]
 jmp qword ptr [rsp]
.Lx564_0:
 .quad .Lx564_0_s
.Lx564_0_s:
 .string "solve/8"
# IR_LIT_STRING
 xchain544_n10_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx565_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain544_n12_α
 xchain544_n10_β:
 jmp main_ω
.Lx565_0:
 .quad .Lx565_0_s
.Lx565_0_s:
 .string "."
# IR_LIT_STRING
 xchain544_n11_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx566_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain544_n13_α
 xchain544_n11_β:
 jmp xchain544_n16_α
.Lx566_0:
 .quad .Lx566_0_s
.Lx566_0_s:
 .string "none"
# IR_VAR_REF
 xchain544_n12_α:
 lea rdi, [rbp + 2080]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain544_n14_α
 xchain544_n12_β:
 jmp main_ω
 xchain544_n13_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1464], rax
  .section .rodata
  .Lrkfn570: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn570]
 lea rsi, [rbp + 1456]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain544_n16_α
 jmp xchain544_n15_α
 xchain544_n13_β:
 jmp xchain544_n16_α
# IR_LIT_STRING
 xchain544_n14_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain544_n17_α
 xchain544_n14_β:
 jmp main_ω
.Lx571_0:
 .quad .Lx571_0_s
.Lx571_0_s:
 .string "."
# IR_LIT_STRING
 xchain544_n15_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx572_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain544_n18_α
 xchain544_n15_β:
 jmp xchain544_n16_α
.Lx572_0:
 .quad .Lx572_0_s
.Lx572_0_s:
 .string ""
 xchain544_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
  .section .rodata
  .Lrkfn574: .string "$trail_unwind"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn574]
 lea rsi, [rbp + 96]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain544_n16_β:
 jmp main_ω
# IR_VAR_REF
 xchain544_n17_α:
 lea rdi, [rbp + 2064]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain544_n19_α
 xchain544_n17_β:
 jmp main_ω
 xchain544_n18_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn578: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn578]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain544_n16_α
 jmp xchain544_n20_α
 xchain544_n18_β:
 jmp xchain544_n16_α
# IR_LIT_STRING
 xchain544_n19_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx579_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain544_n21_α
 xchain544_n19_β:
 jmp main_ω
.Lx579_0:
 .quad .Lx579_0_s
.Lx579_0_s:
 .string "."
# IR_MOVE_LABEL
 xchain544_n20_α:
 lea rax, [rip + xchain544_n16_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
 xchain544_n20_β:
 jmp main_ω
# IR_VAR_REF
 xchain544_n21_α:
 lea rdi, [rbp + 2048]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain544_n23_α
 xchain544_n21_β:
 jmp main_ω
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain544_n22_α:
 jmp qword ptr [rbp + 32]
 xchain544_n22_β:
 jmp main_ω
# IR_LIT_STRING
 xchain544_n23_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain544_n24_α
 xchain544_n23_β:
 jmp main_ω
.Lx586_0:
 .quad .Lx586_0_s
.Lx586_0_s:
 .string "."
# IR_VAR_REF
 xchain544_n24_α:
 lea rdi, [rbp + 2032]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain544_n25_α
 xchain544_n24_β:
 jmp main_ω
# IR_LIT_STRING
 xchain544_n25_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx589_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain544_n26_α
 xchain544_n25_β:
 jmp main_ω
.Lx589_0:
 .quad .Lx589_0_s
.Lx589_0_s:
 .string "."
# IR_VAR_REF
 xchain544_n26_α:
 lea rdi, [rbp + 2016]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain544_n27_α
 xchain544_n26_β:
 jmp main_ω
# IR_LIT_STRING
 xchain544_n27_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx592_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain544_n28_α
 xchain544_n27_β:
 jmp main_ω
.Lx592_0:
 .quad .Lx592_0_s
.Lx592_0_s:
 .string "."
# IR_VAR_REF
 xchain544_n28_α:
 lea rdi, [rbp + 2000]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain544_n29_α
 xchain544_n28_β:
 jmp main_ω
# IR_LIT_STRING
 xchain544_n29_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx595_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain544_n30_α
 xchain544_n29_β:
 jmp main_ω
.Lx595_0:
 .quad .Lx595_0_s
.Lx595_0_s:
 .string "."
# IR_VAR_REF
 xchain544_n30_α:
 lea rdi, [rbp + 1984]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain544_n31_α
 xchain544_n30_β:
 jmp main_ω
# IR_LIT_STRING
 xchain544_n31_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx598_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain544_n32_α
 xchain544_n31_β:
 jmp main_ω
.Lx598_0:
 .quad .Lx598_0_s
.Lx598_0_s:
 .string "."
# IR_VAR_REF
 xchain544_n32_α:
 lea rdi, [rbp + 1968]
 call rt_var_ref_cell@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain544_n33_α
 xchain544_n32_β:
 jmp main_ω
# IR_LIT_STRING
 xchain544_n33_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx601_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain544_n34_α
 xchain544_n33_β:
 jmp main_ω
.Lx601_0:
 .quad .Lx601_0_s
.Lx601_0_s:
 .string "[]"
 xchain544_n34_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+400] -> [zr+336]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+288] -> [zr+352]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 360], rax
# marshal arg2 = producer-box slot [zr+256] -> [zr+368]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 376], rax
  .section .rodata
  .Lrkfn603: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn603]
 lea rsi, [rbp + 336]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je main_ω
 jmp xchain544_n35_α
 xchain544_n34_β:
 jmp main_ω
 xchain544_n35_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+496]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 504], rax
# marshal arg2 = producer-box slot [zr+320] -> [zr+512]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 520], rax
  .section .rodata
  .Lrkfn605: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn605]
 lea rsi, [rbp + 480]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je main_ω
 jmp xchain544_n36_α
 xchain544_n35_β:
 jmp main_ω
 xchain544_n36_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+624]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+576] -> [zr+640]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+656]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 664], rax
  .section .rodata
  .Lrkfn607: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn607]
 lea rsi, [rbp + 624]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je main_ω
 jmp xchain544_n37_α
 xchain544_n36_β:
 jmp main_ω
 xchain544_n37_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+768]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 776], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+784]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 792], rax
# marshal arg2 = producer-box slot [zr+608] -> [zr+800]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 808], rax
  .section .rodata
  .Lrkfn609: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn609]
 lea rsi, [rbp + 768]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je main_ω
 jmp xchain544_n38_α
 xchain544_n37_β:
 jmp main_ω
 xchain544_n38_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+912]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+864] -> [zr+928]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 936], rax
# marshal arg2 = producer-box slot [zr+752] -> [zr+944]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 952], rax
  .section .rodata
  .Lrkfn611: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn611]
 lea rsi, [rbp + 912]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je main_ω
 jmp xchain544_n39_α
 xchain544_n38_β:
 jmp main_ω
 xchain544_n39_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1120] -> [zr+1056]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1064], rax
# marshal arg1 = producer-box slot [zr+1008] -> [zr+1072]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1080], rax
# marshal arg2 = producer-box slot [zr+896] -> [zr+1088]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 1096], rax
  .section .rodata
  .Lrkfn613: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn613]
 lea rsi, [rbp + 1056]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je main_ω
 jmp xchain544_n40_α
 xchain544_n39_β:
 jmp main_ω
 xchain544_n40_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1200]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1208], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+1216]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1224], rax
# marshal arg2 = producer-box slot [zr+1040] -> [zr+1232]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1240], rax
  .section .rodata
  .Lrkfn615: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn615]
 lea rsi, [rbp + 1200]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je main_ω
 jmp xchain544_n41_α
 xchain544_n40_β:
 jmp main_ω
 xchain544_n41_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1344]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1296] -> [zr+1360]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1368], rax
# marshal arg2 = producer-box slot [zr+1184] -> [zr+1376]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1384], rax
  .section .rodata
  .Lrkfn617: .string "$mkc"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn617]
 lea rsi, [rbp + 1344]
 mov edx, 3
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain544_n16_α
 jmp xchain544_n42_α
 xchain544_n41_β:
 jmp xchain544_n16_α
 xchain544_n42_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+224]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn619: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn619]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain544_n16_α
 jmp xchain544_n15_α
 xchain544_n42_β:
 jmp xchain544_n16_α
main_β:
jmp xchain544_n22_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 1960]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 1960]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
