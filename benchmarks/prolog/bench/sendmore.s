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
  mov qword ptr [rsp + 1928], rsp
  mov rdi, rsp
  mov esi, 1904
  mov edx, 2032
  call rt_jmp_frame_lexprep2@PLT
proc_sumdigit$5_α_body:
lea rax, [rip + xchain0_n41_β]
mov qword ptr [rbp + 1904], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 144]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_sumdigit$5_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_sumdigit$5_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1984]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain0_n3_α
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1792]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+128] -> [zr+176]
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 176]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je proc_sumdigit$5_ω
 jmp proc_sumdigit$5_ω
 xchain0_n5_β:
 jmp proc_sumdigit$5_ω
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2000]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain0_n7_α
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1664]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n8_α
 xchain0_n7_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain0_n9_α
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2016]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain0_n10_α
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1536]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n11_α
 xchain0_n10_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain0_n12_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1952]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain0_n13_α
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1408]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n14_α
 xchain0_n13_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 80]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain0_n15_α
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1936]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain0_n16_α
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1280]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n17_α
 xchain0_n16_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1968]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain0_n18_α
# IR_VAR
 xchain0_n18_α:
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1176], rax
 jmp xchain0_n19_α
# IR_VAR
 xchain0_n19_α:
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1208], rax
 jmp xchain0_n20_α
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 1120]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 1056]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
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
# IR_LIT_INTEGER
 xchain0_n25_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain0_n27_α
.Lx41_0:
 .quad 10
# IR_VAR_REF
 xchain0_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1952]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain0_n28_α
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_lt (no by-name dispatch)
 lea rdi, [rbp + 832]
 mov esi, 2
 call rt_pl_dop_cmp_lt@PLT
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
# IR_VAR_REF
 xchain0_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1952]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain0_n31_α
# IR_LIT_INTEGER
 xchain0_n30_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain0_n32_α
.Lx49_0:
 .quad 10
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1968]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain0_n33_α
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 704]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 2
 call rt_pl_dop_unify@PLT
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 608]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n36_α
 xchain0_n34_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1936]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n37_α
# IR_VAR_REF
 xchain0_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1936]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain0_n38_α
# IR_LIT_INTEGER
 xchain0_n37_α:
 mov qword ptr [rbp + 304], 6
 mov rax, qword ptr [rip + .Lx59_0]
 mov qword ptr [rbp + 312], rax
 jmp xchain0_n39_α
.Lx59_0:
 .quad 0
# IR_LIT_INTEGER
 xchain0_n38_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx60_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain0_n40_α
.Lx60_0:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 224]
 mov esi, 2
 call rt_pl_dop_unify@PLT
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 2
 call rt_pl_dop_unify@PLT
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
  mov qword ptr [rsp + 1880], rsp
  mov rdi, rsp
  mov esi, 1856
  mov edx, 1888
  call rt_jmp_frame_lexprep2@PLT
proc_digit$1_α_body:
lea rax, [rip + xchain65_n4_β]
mov qword ptr [rbp + 1856], rax
 xchain65_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain65_n1_α
 xchain65_n0_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain65_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain65_n2_α
# IR_LIT_INTEGER
 xchain65_n2_α:
 mov qword ptr [rbp + 1824], 6
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain65_n3_α
.Lx69_0:
 .quad 0
 xchain65_n3_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1744]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain65_n5_α
 jmp xchain65_n4_α
 xchain65_n3_β:
 jmp xchain65_n5_α
# IR_SUSPEND yield+resume
 xchain65_n4_α:
 lea rax, [rip + xchain65_n4_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain65_n4_β:
 jmp xchain65_n5_α
 xchain65_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1696]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1704], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1696]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain65_n6_α
 xchain65_n5_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain65_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain65_n7_α
# IR_LIT_INTEGER
 xchain65_n7_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx76_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain65_n8_α
.Lx76_0:
 .quad 1
 xchain65_n8_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1568]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain65_n10_α
 jmp xchain65_n9_α
 xchain65_n8_β:
 jmp xchain65_n10_α
# IR_SUSPEND yield+resume
 xchain65_n9_α:
 lea rax, [rip + xchain65_n9_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain65_n9_β:
 jmp xchain65_n10_α
 xchain65_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1520]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1520]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain65_n11_α
 xchain65_n10_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain65_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain65_n12_α
# IR_LIT_INTEGER
 xchain65_n12_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain65_n13_α
.Lx83_0:
 .quad 2
 xchain65_n13_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1392]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain65_n15_α
 jmp xchain65_n14_α
 xchain65_n13_β:
 jmp xchain65_n15_α
# IR_SUSPEND yield+resume
 xchain65_n14_α:
 lea rax, [rip + xchain65_n14_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain65_n14_β:
 jmp xchain65_n15_α
 xchain65_n15_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1344]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain65_n16_α
 xchain65_n15_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain65_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain65_n17_α
# IR_LIT_INTEGER
 xchain65_n17_α:
 mov qword ptr [rbp + 1296], 6
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain65_n18_α
.Lx90_0:
 .quad 3
 xchain65_n18_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain65_n20_α
 jmp xchain65_n19_α
 xchain65_n18_β:
 jmp xchain65_n20_α
# IR_SUSPEND yield+resume
 xchain65_n19_α:
 lea rax, [rip + xchain65_n19_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain65_n19_β:
 jmp xchain65_n20_α
 xchain65_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1168]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain65_n21_α
 xchain65_n20_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain65_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain65_n22_α
# IR_LIT_INTEGER
 xchain65_n22_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx97_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain65_n23_α
.Lx97_0:
 .quad 4
 xchain65_n23_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain65_n25_α
 jmp xchain65_n24_α
 xchain65_n23_β:
 jmp xchain65_n25_α
# IR_SUSPEND yield+resume
 xchain65_n24_α:
 lea rax, [rip + xchain65_n24_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain65_n24_β:
 jmp xchain65_n25_α
 xchain65_n25_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+992]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain65_n26_α
 xchain65_n25_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain65_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain65_n27_α
# IR_LIT_INTEGER
 xchain65_n27_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain65_n28_α
.Lx104_0:
 .quad 5
 xchain65_n28_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain65_n30_α
 jmp xchain65_n29_α
 xchain65_n28_β:
 jmp xchain65_n30_α
# IR_SUSPEND yield+resume
 xchain65_n29_α:
 lea rax, [rip + xchain65_n29_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain65_n29_β:
 jmp xchain65_n30_α
 xchain65_n30_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+816]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain65_n31_α
 xchain65_n30_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain65_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain65_n32_α
# IR_LIT_INTEGER
 xchain65_n32_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx111_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain65_n33_α
.Lx111_0:
 .quad 6
 xchain65_n33_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain65_n35_α
 jmp xchain65_n34_α
 xchain65_n33_β:
 jmp xchain65_n35_α
# IR_SUSPEND yield+resume
 xchain65_n34_α:
 lea rax, [rip + xchain65_n34_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain65_n34_β:
 jmp xchain65_n35_α
 xchain65_n35_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+640]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain65_n36_α
 xchain65_n35_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain65_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain65_n37_α
# IR_LIT_INTEGER
 xchain65_n37_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain65_n38_α
.Lx118_0:
 .quad 7
 xchain65_n38_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 512]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain65_n40_α
 jmp xchain65_n39_α
 xchain65_n38_β:
 jmp xchain65_n40_α
# IR_SUSPEND yield+resume
 xchain65_n39_α:
 lea rax, [rip + xchain65_n39_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain65_n39_β:
 jmp xchain65_n40_α
 xchain65_n40_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+464]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain65_n41_α
 xchain65_n40_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain65_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain65_n42_α
# IR_LIT_INTEGER
 xchain65_n42_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx125_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain65_n43_α
.Lx125_0:
 .quad 8
 xchain65_n43_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain65_n45_α
 jmp xchain65_n44_α
 xchain65_n43_β:
 jmp xchain65_n45_α
# IR_SUSPEND yield+resume
 xchain65_n44_α:
 lea rax, [rip + xchain65_n44_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain65_n44_β:
 jmp xchain65_n45_α
 xchain65_n45_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+288]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp xchain65_n46_α
 xchain65_n45_β:
 jmp proc_digit$1_ω
# IR_VAR_REF
 xchain65_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain65_n47_α
# IR_LIT_INTEGER
 xchain65_n47_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx132_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain65_n48_α
.Lx132_0:
 .quad 9
 xchain65_n48_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain65_n50_α
 jmp xchain65_n49_α
 xchain65_n48_β:
 jmp xchain65_n50_α
# IR_SUSPEND yield+resume
 xchain65_n49_α:
 lea rax, [rip + xchain65_n49_β]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_digit$1_γ
 xchain65_n49_β:
 jmp xchain65_n50_α
 xchain65_n50_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_digit$1_ω
 jmp proc_digit$1_ω
 xchain65_n50_β:
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
  mov qword ptr [rsp + 6456], rsp
  mov rdi, rsp
  mov esi, 6432
  mov edx, 6640
  call rt_jmp_frame_lexprep2@PLT
proc_solve$8_α_body:
lea rax, [rip + xchain137_n142_β]
mov qword ptr [rbp + 6432], rax
 xchain137_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 192]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je proc_solve$8_ω
 jmp xchain137_n1_α
 xchain137_n0_β:
 jmp proc_solve$8_ω
# IR_VAR_REF
 xchain137_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6368], rax
 mov qword ptr [rbp + 6376], rdx
 jmp xchain137_n2_α
# IR_VAR_REF
 xchain137_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6480]
 mov qword ptr [rbp + 6400], rax
 mov qword ptr [rbp + 6408], rdx
 jmp xchain137_n3_α
 xchain137_n3_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6320]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6304], rax
 mov qword ptr [rbp + 6312], rdx
 cmp eax, 99
 je xchain137_n5_α
 jmp xchain137_n4_α
 xchain137_n3_β:
 jmp xchain137_n5_α
# IR_VAR_REF
 xchain137_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6240], rax
 mov qword ptr [rbp + 6248], rdx
 jmp xchain137_n6_α
 xchain137_n5_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+224]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 224]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je proc_solve$8_ω
 jmp proc_solve$8_ω
 xchain137_n5_β:
 jmp proc_solve$8_ω
# IR_VAR_REF
 xchain137_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6544]
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 jmp xchain137_n7_α
 xchain137_n7_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6192]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6176], rax
 mov qword ptr [rbp + 6184], rdx
 cmp eax, 99
 je xchain137_n5_α
 jmp xchain137_n8_α
 xchain137_n7_β:
 jmp xchain137_n5_α
# IR_VAR_REF
 xchain137_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 jmp xchain137_n9_α
# IR_VAR_REF
 xchain137_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6576]
 mov qword ptr [rbp + 6144], rax
 mov qword ptr [rbp + 6152], rdx
 jmp xchain137_n10_α
 xchain137_n10_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 6064]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 cmp eax, 99
 je xchain137_n5_α
 jmp xchain137_n11_α
 xchain137_n10_β:
 jmp xchain137_n5_α
# IR_VAR_REF
 xchain137_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 jmp xchain137_n12_α
# IR_VAR_REF
 xchain137_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6528]
 mov qword ptr [rbp + 6016], rax
 mov qword ptr [rbp + 6024], rdx
 jmp xchain137_n13_α
 xchain137_n13_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5936]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 cmp eax, 99
 je xchain137_n5_α
 jmp xchain137_n14_α
 xchain137_n13_β:
 jmp xchain137_n5_α
# IR_VAR_REF
 xchain137_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 80]
 mov qword ptr [rbp + 5856], rax
 mov qword ptr [rbp + 5864], rdx
 jmp xchain137_n15_α
# IR_VAR_REF
 xchain137_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6496]
 mov qword ptr [rbp + 5888], rax
 mov qword ptr [rbp + 5896], rdx
 jmp xchain137_n16_α
 xchain137_n16_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5808]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 cmp eax, 99
 je xchain137_n5_α
 jmp xchain137_n17_α
 xchain137_n16_β:
 jmp xchain137_n5_α
# IR_VAR_REF
 xchain137_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 96]
 mov qword ptr [rbp + 5728], rax
 mov qword ptr [rbp + 5736], rdx
 jmp xchain137_n18_α
# IR_VAR_REF
 xchain137_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6512]
 mov qword ptr [rbp + 5760], rax
 mov qword ptr [rbp + 5768], rdx
 jmp xchain137_n19_α
 xchain137_n19_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5680]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5664], rax
 mov qword ptr [rbp + 5672], rdx
 cmp eax, 99
 je xchain137_n5_α
 jmp xchain137_n20_α
 xchain137_n19_β:
 jmp xchain137_n5_α
# IR_VAR_REF
 xchain137_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 112]
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 jmp xchain137_n21_α
# IR_VAR_REF
 xchain137_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6592]
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 jmp xchain137_n22_α
 xchain137_n22_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5552]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5536], rax
 mov qword ptr [rbp + 5544], rdx
 cmp eax, 99
 je xchain137_n5_α
 jmp xchain137_n23_α
 xchain137_n22_β:
 jmp xchain137_n5_α
# IR_VAR_REF
 xchain137_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 128]
 mov qword ptr [rbp + 5472], rax
 mov qword ptr [rbp + 5480], rdx
 jmp xchain137_n24_α
# IR_VAR_REF
 xchain137_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6560]
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
 jmp xchain137_n25_α
 xchain137_n25_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 5424]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 5408], rax
 mov qword ptr [rbp + 5416], rdx
 cmp eax, 99
 je xchain137_n5_α
 jmp xchain137_n26_α
 xchain137_n25_β:
 jmp xchain137_n5_α
# IR_VAR_REF
 xchain137_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6528]
 mov qword ptr [rbp + 5376], rax
 mov qword ptr [rbp + 5384], rdx
 jmp xchain137_n27_α
 xchain137_n27_α:
 mov qword ptr [rbp + 5344], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 5376]
 mov rdx, qword ptr [rbp + 5384]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx183_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx183_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx183_3]
 lea rdx, [rip + .Lx183_4]
 jmp rax
.Lx183_3:
 mov qword ptr [rbp + 5352], rsp
 mov rax, qword ptr [rbp + 5344]
 test rax, rax
 jne .Lx183_5
 mov qword ptr [rbp + 5344], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx183_2
.Lx183_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx183_2
.Lx183_4:
 mov rax, qword ptr [rbp + 5344]
 test rax, rax
 jne .Lx183_6
 mov qword ptr [rbp + 5344], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx183_2
.Lx183_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx183_2
.Lx183_1:
 call rt_faildescr@PLT
.Lx183_2:
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je xchain137_n5_α
 jmp xchain137_n28_α
 xchain137_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 5352]
 jmp qword ptr [rsp]
.Lx183_0:
 .quad .Lx183_0_s
.Lx183_0_s:
 .string "digit/1"
# IR_VAR_REF
 xchain137_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6544]
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 jmp xchain137_n29_α
 xchain137_n29_α:
 mov qword ptr [rbp + 5248], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 5280]
 mov rdx, qword ptr [rbp + 5288]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx187_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx187_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx187_3]
 lea rdx, [rip + .Lx187_4]
 jmp rax
.Lx187_3:
 mov qword ptr [rbp + 5256], rsp
 mov rax, qword ptr [rbp + 5248]
 test rax, rax
 jne .Lx187_5
 mov qword ptr [rbp + 5248], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx187_2
.Lx187_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx187_2
.Lx187_4:
 mov rax, qword ptr [rbp + 5248]
 test rax, rax
 jne .Lx187_6
 mov qword ptr [rbp + 5248], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx187_2
.Lx187_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx187_2
.Lx187_1:
 call rt_faildescr@PLT
.Lx187_2:
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 cmp eax, 99
 je xchain137_n27_β
 jmp xchain137_n30_α
 xchain137_n29_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 5256]
 jmp qword ptr [rsp]
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "digit/1"
# IR_VAR
 xchain137_n30_α:
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 5152], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 5160], rax
 jmp xchain137_n31_α
# IR_VAR
 xchain137_n31_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 5192], rax
 jmp xchain137_n32_α
 xchain137_n32_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 5104]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 5088], rax
 mov qword ptr [rbp + 5096], rdx
 cmp eax, 99
 je xchain137_n29_β
 jmp xchain137_n33_α
 xchain137_n32_β:
 jmp xchain137_n29_β
# IR_LIT_INTEGER
 xchain137_n33_α:
 mov qword ptr [rbp + 4928], 6
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [rbp + 4936], rax
 jmp xchain137_n34_α
.Lx193_0:
 .quad 0
# IR_VAR_REF
 xchain137_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6528]
 mov qword ptr [rbp + 4960], rax
 mov qword ptr [rbp + 4968], rdx
 jmp xchain137_n35_α
# IR_VAR_REF
 xchain137_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6544]
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 jmp xchain137_n36_α
# IR_VAR_REF
 xchain137_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6560]
 mov qword ptr [rbp + 5024], rax
 mov qword ptr [rbp + 5032], rdx
 jmp xchain137_n37_α
# IR_VAR_REF
 xchain137_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6624]
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 jmp xchain137_n38_α
 xchain137_n38_α:
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
 mov rdi, qword ptr [rip + .Lx203_0]
 mov esi, 5
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx203_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx203_3]
 lea rdx, [rip + .Lx203_4]
 jmp rax
.Lx203_3:
 mov qword ptr [rbp + 4904], rsp
 mov rax, qword ptr [rbp + 4896]
 test rax, rax
 jne .Lx203_5
 mov qword ptr [rbp + 4896], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx203_2
.Lx203_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx203_2
.Lx203_4:
 mov rax, qword ptr [rbp + 4896]
 test rax, rax
 jne .Lx203_6
 mov qword ptr [rbp + 4896], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx203_2
.Lx203_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx203_2
.Lx203_1:
 call rt_faildescr@PLT
.Lx203_2:
 mov qword ptr [rbp + 4800], rax
 mov qword ptr [rbp + 4808], rdx
 cmp eax, 99
 je xchain137_n29_β
 jmp xchain137_n39_α
 xchain137_n38_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4904]
 jmp qword ptr [rsp]
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "sumdigit/5"
# IR_VAR_REF
 xchain137_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6576]
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 jmp xchain137_n40_α
 xchain137_n40_α:
 mov qword ptr [rbp + 4736], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4768]
 mov rdx, qword ptr [rbp + 4776]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx207_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx207_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx207_3]
 lea rdx, [rip + .Lx207_4]
 jmp rax
.Lx207_3:
 mov qword ptr [rbp + 4744], rsp
 mov rax, qword ptr [rbp + 4736]
 test rax, rax
 jne .Lx207_5
 mov qword ptr [rbp + 4736], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx207_2
.Lx207_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx207_2
.Lx207_4:
 mov rax, qword ptr [rbp + 4736]
 test rax, rax
 jne .Lx207_6
 mov qword ptr [rbp + 4736], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx207_2
.Lx207_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx207_2
.Lx207_1:
 call rt_faildescr@PLT
.Lx207_2:
 mov qword ptr [rbp + 4704], rax
 mov qword ptr [rbp + 4712], rdx
 cmp eax, 99
 je xchain137_n38_β
 jmp xchain137_n41_α
 xchain137_n40_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4744]
 jmp qword ptr [rsp]
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "digit/1"
# IR_VAR
 xchain137_n41_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 4648], rax
 jmp xchain137_n42_α
# IR_VAR
 xchain137_n42_α:
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 4672], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 4680], rax
 jmp xchain137_n43_α
 xchain137_n43_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 4592]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 4576], rax
 mov qword ptr [rbp + 4584], rdx
 cmp eax, 99
 je xchain137_n40_β
 jmp xchain137_n44_α
 xchain137_n43_β:
 jmp xchain137_n40_β
# IR_VAR
 xchain137_n44_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 4520], rax
 jmp xchain137_n45_α
# IR_VAR
 xchain137_n45_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 4544], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 4552], rax
 jmp xchain137_n46_α
 xchain137_n46_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 4464]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 4448], rax
 mov qword ptr [rbp + 4456], rdx
 cmp eax, 99
 je xchain137_n40_β
 jmp xchain137_n47_α
 xchain137_n46_β:
 jmp xchain137_n40_β
# IR_VAR
 xchain137_n47_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 4384], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 4392], rax
 jmp xchain137_n48_α
# IR_VAR
 xchain137_n48_α:
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 4416], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 4424], rax
 jmp xchain137_n49_α
 xchain137_n49_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 4336]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 cmp eax, 99
 je xchain137_n40_β
 jmp xchain137_n50_α
 xchain137_n49_β:
 jmp xchain137_n40_β
# IR_VAR_REF
 xchain137_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6592]
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 jmp xchain137_n51_α
 xchain137_n51_α:
 mov qword ptr [rbp + 4256], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 4288]
 mov rdx, qword ptr [rbp + 4296]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx226_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx226_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx226_3]
 lea rdx, [rip + .Lx226_4]
 jmp rax
.Lx226_3:
 mov qword ptr [rbp + 4264], rsp
 mov rax, qword ptr [rbp + 4256]
 test rax, rax
 jne .Lx226_5
 mov qword ptr [rbp + 4256], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx226_2
.Lx226_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx226_2
.Lx226_4:
 mov rax, qword ptr [rbp + 4256]
 test rax, rax
 jne .Lx226_6
 mov qword ptr [rbp + 4256], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx226_2
.Lx226_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx226_2
.Lx226_1:
 call rt_faildescr@PLT
.Lx226_2:
 mov qword ptr [rbp + 4224], rax
 mov qword ptr [rbp + 4232], rdx
 cmp eax, 99
 je xchain137_n40_β
 jmp xchain137_n52_α
 xchain137_n51_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 4264]
 jmp qword ptr [rsp]
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string "digit/1"
# IR_VAR
 xchain137_n52_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 4160], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 4168], rax
 jmp xchain137_n53_α
# IR_VAR
 xchain137_n53_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 4192], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 4200], rax
 jmp xchain137_n54_α
 xchain137_n54_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 4112]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 4096], rax
 mov qword ptr [rbp + 4104], rdx
 cmp eax, 99
 je xchain137_n51_β
 jmp xchain137_n55_α
 xchain137_n54_β:
 jmp xchain137_n51_β
# IR_VAR
 xchain137_n55_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 4040], rax
 jmp xchain137_n56_α
# IR_VAR
 xchain137_n56_α:
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 4072], rax
 jmp xchain137_n57_α
 xchain137_n57_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 3984]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 cmp eax, 99
 je xchain137_n51_β
 jmp xchain137_n58_α
 xchain137_n57_β:
 jmp xchain137_n51_β
# IR_VAR
 xchain137_n58_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 3904], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 3912], rax
 jmp xchain137_n59_α
# IR_VAR
 xchain137_n59_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 3944], rax
 jmp xchain137_n60_α
 xchain137_n60_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 3856]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 3840], rax
 mov qword ptr [rbp + 3848], rdx
 cmp eax, 99
 je xchain137_n51_β
 jmp xchain137_n61_α
 xchain137_n60_β:
 jmp xchain137_n51_β
# IR_VAR
 xchain137_n61_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 3784], rax
 jmp xchain137_n62_α
# IR_VAR
 xchain137_n62_α:
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 3808], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 3816], rax
 jmp xchain137_n63_α
 xchain137_n63_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 3728]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 3712], rax
 mov qword ptr [rbp + 3720], rdx
 cmp eax, 99
 je xchain137_n51_β
 jmp xchain137_n64_α
 xchain137_n63_β:
 jmp xchain137_n51_β
# IR_VAR_REF
 xchain137_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6624]
 mov qword ptr [rbp + 3552], rax
 mov qword ptr [rbp + 3560], rdx
 jmp xchain137_n65_α
# IR_VAR_REF
 xchain137_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6576]
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 jmp xchain137_n66_α
# IR_VAR_REF
 xchain137_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6592]
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 jmp xchain137_n67_α
# IR_VAR_REF
 xchain137_n67_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6544]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain137_n68_α
# IR_VAR_REF
 xchain137_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6608]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 jmp xchain137_n69_α
 xchain137_n69_α:
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
 mov rdi, qword ptr [rip + .Lx258_0]
 mov esi, 5
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx258_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx258_3]
 lea rdx, [rip + .Lx258_4]
 jmp rax
.Lx258_3:
 mov qword ptr [rbp + 3528], rsp
 mov rax, qword ptr [rbp + 3520]
 test rax, rax
 jne .Lx258_5
 mov qword ptr [rbp + 3520], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx258_2
.Lx258_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx258_2
.Lx258_4:
 mov rax, qword ptr [rbp + 3520]
 test rax, rax
 jne .Lx258_6
 mov qword ptr [rbp + 3520], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx258_2
.Lx258_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx258_2
.Lx258_1:
 call rt_faildescr@PLT
.Lx258_2:
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 cmp eax, 99
 je xchain137_n51_β
 jmp xchain137_n70_α
 xchain137_n69_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3528]
 jmp qword ptr [rsp]
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "sumdigit/5"
# IR_VAR_REF
 xchain137_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6512]
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain137_n71_α
 xchain137_n71_α:
 mov qword ptr [rbp + 3360], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3392]
 mov rdx, qword ptr [rbp + 3400]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx262_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx262_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx262_3]
 lea rdx, [rip + .Lx262_4]
 jmp rax
.Lx262_3:
 mov qword ptr [rbp + 3368], rsp
 mov rax, qword ptr [rbp + 3360]
 test rax, rax
 jne .Lx262_5
 mov qword ptr [rbp + 3360], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx262_2
.Lx262_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx262_2
.Lx262_4:
 mov rax, qword ptr [rbp + 3360]
 test rax, rax
 jne .Lx262_6
 mov qword ptr [rbp + 3360], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx262_2
.Lx262_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx262_2
.Lx262_1:
 call rt_faildescr@PLT
.Lx262_2:
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 cmp eax, 99
 je xchain137_n69_β
 jmp xchain137_n72_α
 xchain137_n71_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3368]
 jmp qword ptr [rsp]
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
 .string "digit/1"
# IR_VAR
 xchain137_n72_α:
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 3272], rax
 jmp xchain137_n73_α
# IR_VAR
 xchain137_n73_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 3296], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 3304], rax
 jmp xchain137_n74_α
 xchain137_n74_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 3216]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 cmp eax, 99
 je xchain137_n71_β
 jmp xchain137_n75_α
 xchain137_n74_β:
 jmp xchain137_n71_β
# IR_VAR
 xchain137_n75_α:
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 3144], rax
 jmp xchain137_n76_α
# IR_VAR
 xchain137_n76_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 3176], rax
 jmp xchain137_n77_α
 xchain137_n77_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 3088]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 3072], rax
 mov qword ptr [rbp + 3080], rdx
 cmp eax, 99
 je xchain137_n71_β
 jmp xchain137_n78_α
 xchain137_n77_β:
 jmp xchain137_n71_β
# IR_VAR
 xchain137_n78_α:
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 3016], rax
 jmp xchain137_n79_α
# IR_VAR
 xchain137_n79_α:
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 3048], rax
 jmp xchain137_n80_α
 xchain137_n80_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 2960]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 cmp eax, 99
 je xchain137_n71_β
 jmp xchain137_n81_α
 xchain137_n80_β:
 jmp xchain137_n71_β
# IR_VAR
 xchain137_n81_α:
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 2888], rax
 jmp xchain137_n82_α
# IR_VAR
 xchain137_n82_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 2920], rax
 jmp xchain137_n83_α
 xchain137_n83_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 2832]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je xchain137_n71_β
 jmp xchain137_n84_α
 xchain137_n83_β:
 jmp xchain137_n71_β
# IR_VAR
 xchain137_n84_α:
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 2760], rax
 jmp xchain137_n85_α
# IR_VAR
 xchain137_n85_α:
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 2792], rax
 jmp xchain137_n86_α
 xchain137_n86_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 2704]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 cmp eax, 99
 je xchain137_n71_β
 jmp xchain137_n87_α
 xchain137_n86_β:
 jmp xchain137_n71_β
# IR_VAR_REF
 xchain137_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6608]
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain137_n88_α
# IR_VAR_REF
 xchain137_n88_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6544]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain137_n89_α
# IR_VAR_REF
 xchain137_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6512]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain137_n90_α
# IR_VAR_REF
 xchain137_n90_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6576]
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain137_n91_α
# IR_VAR_REF
 xchain137_n91_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6464]
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain137_n92_α
 xchain137_n92_α:
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
 mov rdi, qword ptr [rip + .Lx299_0]
 mov esi, 5
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx299_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx299_3]
 lea rdx, [rip + .Lx299_4]
 jmp rax
.Lx299_3:
 mov qword ptr [rbp + 2504], rsp
 mov rax, qword ptr [rbp + 2496]
 test rax, rax
 jne .Lx299_5
 mov qword ptr [rbp + 2496], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx299_2
.Lx299_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx299_2
.Lx299_4:
 mov rax, qword ptr [rbp + 2496]
 test rax, rax
 jne .Lx299_6
 mov qword ptr [rbp + 2496], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx299_2
.Lx299_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx299_2
.Lx299_1:
 call rt_faildescr@PLT
.Lx299_2:
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 cmp eax, 99
 je xchain137_n71_β
 jmp xchain137_n93_α
 xchain137_n92_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2504]
 jmp qword ptr [rsp]
.Lx299_0:
 .quad .Lx299_0_s
.Lx299_0_s:
 .string "sumdigit/5"
# IR_VAR_REF
 xchain137_n93_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6480]
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain137_n94_α
 xchain137_n94_α:
 mov qword ptr [rbp + 2336], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2368]
 mov rdx, qword ptr [rbp + 2376]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx303_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx303_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx303_3]
 lea rdx, [rip + .Lx303_4]
 jmp rax
.Lx303_3:
 mov qword ptr [rbp + 2344], rsp
 mov rax, qword ptr [rbp + 2336]
 test rax, rax
 jne .Lx303_5
 mov qword ptr [rbp + 2336], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx303_2
.Lx303_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx303_2
.Lx303_4:
 mov rax, qword ptr [rbp + 2336]
 test rax, rax
 jne .Lx303_6
 mov qword ptr [rbp + 2336], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx303_2
.Lx303_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx303_2
.Lx303_1:
 call rt_faildescr@PLT
.Lx303_2:
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 cmp eax, 99
 je xchain137_n92_β
 jmp xchain137_n95_α
 xchain137_n94_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2344]
 jmp qword ptr [rsp]
.Lx303_0:
 .quad .Lx303_0_s
.Lx303_0_s:
 .string "leftdigit/1"
# IR_VAR
 xchain137_n95_α:
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 2248], rax
 jmp xchain137_n96_α
# IR_VAR
 xchain137_n96_α:
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 2280], rax
 jmp xchain137_n97_α
 xchain137_n97_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 2192]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain137_n94_β
 jmp xchain137_n98_α
 xchain137_n97_β:
 jmp xchain137_n94_β
# IR_VAR
 xchain137_n98_α:
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 2120], rax
 jmp xchain137_n99_α
# IR_VAR
 xchain137_n99_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 2152], rax
 jmp xchain137_n100_α
 xchain137_n100_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 2064]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain137_n94_β
 jmp xchain137_n101_α
 xchain137_n100_β:
 jmp xchain137_n94_β
# IR_VAR
 xchain137_n101_α:
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 1992], rax
 jmp xchain137_n102_α
# IR_VAR
 xchain137_n102_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 2024], rax
 jmp xchain137_n103_α
 xchain137_n103_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1936]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 cmp eax, 99
 je xchain137_n94_β
 jmp xchain137_n104_α
 xchain137_n103_β:
 jmp xchain137_n94_β
# IR_VAR
 xchain137_n104_α:
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 1864], rax
 jmp xchain137_n105_α
# IR_VAR
 xchain137_n105_α:
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 1896], rax
 jmp xchain137_n106_α
 xchain137_n106_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1808]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain137_n94_β
 jmp xchain137_n107_α
 xchain137_n106_β:
 jmp xchain137_n94_β
# IR_VAR
 xchain137_n107_α:
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 1736], rax
 jmp xchain137_n108_α
# IR_VAR
 xchain137_n108_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 1768], rax
 jmp xchain137_n109_α
 xchain137_n109_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1680]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 cmp eax, 99
 je xchain137_n94_β
 jmp xchain137_n110_α
 xchain137_n109_β:
 jmp xchain137_n94_β
# IR_VAR
 xchain137_n110_α:
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 1608], rax
 jmp xchain137_n111_α
# IR_VAR
 xchain137_n111_α:
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 1640], rax
 jmp xchain137_n112_α
 xchain137_n112_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1552]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain137_n94_β
 jmp xchain137_n113_α
 xchain137_n112_β:
 jmp xchain137_n94_β
# IR_VAR_REF
 xchain137_n113_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6496]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain137_n114_α
 xchain137_n114_α:
 mov qword ptr [rbp + 1472], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1504]
 mov rdx, qword ptr [rbp + 1512]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx337_0]
 mov esi, 1
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx337_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx337_3]
 lea rdx, [rip + .Lx337_4]
 jmp rax
.Lx337_3:
 mov qword ptr [rbp + 1480], rsp
 mov rax, qword ptr [rbp + 1472]
 test rax, rax
 jne .Lx337_5
 mov qword ptr [rbp + 1472], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx337_2
.Lx337_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx337_2
.Lx337_4:
 mov rax, qword ptr [rbp + 1472]
 test rax, rax
 jne .Lx337_6
 mov qword ptr [rbp + 1472], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx337_2
.Lx337_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx337_2
.Lx337_1:
 call rt_faildescr@PLT
.Lx337_2:
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain137_n94_β
 jmp xchain137_n115_α
 xchain137_n114_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1480]
 jmp qword ptr [rsp]
.Lx337_0:
 .quad .Lx337_0_s
.Lx337_0_s:
 .string "leftdigit/1"
# IR_VAR
 xchain137_n115_α:
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 1384], rax
 jmp xchain137_n116_α
# IR_VAR
 xchain137_n116_α:
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 1416], rax
 jmp xchain137_n117_α
 xchain137_n117_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1328]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain137_n114_β
 jmp xchain137_n118_α
 xchain137_n117_β:
 jmp xchain137_n114_β
# IR_VAR
 xchain137_n118_α:
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 1256], rax
 jmp xchain137_n119_α
# IR_VAR
 xchain137_n119_α:
 mov rax, qword ptr [rbp + 6512]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 6520]
 mov qword ptr [rbp + 1288], rax
 jmp xchain137_n120_α
 xchain137_n120_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1200]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain137_n114_β
 jmp xchain137_n121_α
 xchain137_n120_β:
 jmp xchain137_n114_β
# IR_VAR
 xchain137_n121_α:
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 1128], rax
 jmp xchain137_n122_α
# IR_VAR
 xchain137_n122_α:
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 1160], rax
 jmp xchain137_n123_α
 xchain137_n123_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain137_n114_β
 jmp xchain137_n124_α
 xchain137_n123_β:
 jmp xchain137_n114_β
# IR_VAR
 xchain137_n124_α:
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 1000], rax
 jmp xchain137_n125_α
# IR_VAR
 xchain137_n125_α:
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 1032], rax
 jmp xchain137_n126_α
 xchain137_n126_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain137_n114_β
 jmp xchain137_n127_α
 xchain137_n126_β:
 jmp xchain137_n114_β
# IR_VAR
 xchain137_n127_α:
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 872], rax
 jmp xchain137_n128_α
# IR_VAR
 xchain137_n128_α:
 mov rax, qword ptr [rbp + 6560]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 6568]
 mov qword ptr [rbp + 904], rax
 jmp xchain137_n129_α
 xchain137_n129_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain137_n114_β
 jmp xchain137_n130_α
 xchain137_n129_β:
 jmp xchain137_n114_β
# IR_VAR
 xchain137_n130_α:
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 744], rax
 jmp xchain137_n131_α
# IR_VAR
 xchain137_n131_α:
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 776], rax
 jmp xchain137_n132_α
 xchain137_n132_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain137_n114_β
 jmp xchain137_n133_α
 xchain137_n132_β:
 jmp xchain137_n114_β
# IR_VAR
 xchain137_n133_α:
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 616], rax
 jmp xchain137_n134_α
# IR_VAR
 xchain137_n134_α:
 mov rax, qword ptr [rbp + 6528]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 6536]
 mov qword ptr [rbp + 648], rax
 jmp xchain137_n135_α
 xchain137_n135_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain137_n114_β
 jmp xchain137_n136_α
 xchain137_n135_β:
 jmp xchain137_n114_β
# IR_VAR_REF
 xchain137_n136_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6464]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain137_n137_α
# IR_VAR_REF
 xchain137_n137_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6480]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain137_n138_α
# IR_VAR_REF
 xchain137_n138_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6496]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain137_n139_α
# IR_VAR_REF
 xchain137_n139_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6512]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain137_n140_α
# IR_VAR_REF
 xchain137_n140_α:
 mov rax, 4294967305
 lea rdx, [rbp + 6496]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain137_n141_α
 xchain137_n141_α:
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
 mov rdi, qword ptr [rip + .Lx384_0]
 mov esi, 5
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx384_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx384_3]
 lea rdx, [rip + .Lx384_4]
 jmp rax
.Lx384_3:
 mov qword ptr [rbp + 360], rsp
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx384_5
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx384_2
.Lx384_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx384_2
.Lx384_4:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx384_6
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx384_2
.Lx384_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx384_2
.Lx384_1:
 call rt_faildescr@PLT
.Lx384_2:
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 cmp eax, 99
 je xchain137_n114_β
 jmp xchain137_n142_α
 xchain137_n141_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 360]
 jmp qword ptr [rsp]
.Lx384_0:
 .quad .Lx384_0_s
.Lx384_0_s:
 .string "sumdigit/5"
# IR_SUSPEND yield+resume
 xchain137_n142_α:
 lea rax, [rip + xchain137_n142_β]
 mov qword ptr [rbp + 6432], rax
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 8], rax
 jmp proc_solve$8_γ
 xchain137_n142_β:
 jmp xchain137_n141_β
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
  mov qword ptr [rsp + 1704], rsp
  mov rdi, rsp
  mov esi, 1680
  mov edx, 1712
  call rt_jmp_frame_lexprep2@PLT
proc_leftdigit$1_α_body:
lea rax, [rip + xchain387_n4_β]
mov qword ptr [rbp + 1680], rax
 xchain387_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 80]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 64], rax
 mov qword ptr [rbp + 72], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain387_n1_α
 xchain387_n0_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain387_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain387_n2_α
# IR_LIT_INTEGER
 xchain387_n2_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx391_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain387_n3_α
.Lx391_0:
 .quad 1
 xchain387_n3_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1568]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain387_n5_α
 jmp xchain387_n4_α
 xchain387_n3_β:
 jmp xchain387_n5_α
# IR_SUSPEND yield+resume
 xchain387_n4_α:
 lea rax, [rip + xchain387_n4_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain387_n4_β:
 jmp xchain387_n5_α
 xchain387_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1520]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1520]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain387_n6_α
 xchain387_n5_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain387_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain387_n7_α
# IR_LIT_INTEGER
 xchain387_n7_α:
 mov qword ptr [rbp + 1472], 6
 mov rax, qword ptr [rip + .Lx398_0]
 mov qword ptr [rbp + 1480], rax
 jmp xchain387_n8_α
.Lx398_0:
 .quad 2
 xchain387_n8_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1392]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain387_n10_α
 jmp xchain387_n9_α
 xchain387_n8_β:
 jmp xchain387_n10_α
# IR_SUSPEND yield+resume
 xchain387_n9_α:
 lea rax, [rip + xchain387_n9_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain387_n9_β:
 jmp xchain387_n10_α
 xchain387_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1344]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain387_n11_α
 xchain387_n10_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain387_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain387_n12_α
# IR_LIT_INTEGER
 xchain387_n12_α:
 mov qword ptr [rbp + 1296], 6
 mov rax, qword ptr [rip + .Lx405_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain387_n13_α
.Lx405_0:
 .quad 3
 xchain387_n13_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain387_n15_α
 jmp xchain387_n14_α
 xchain387_n13_β:
 jmp xchain387_n15_α
# IR_SUSPEND yield+resume
 xchain387_n14_α:
 lea rax, [rip + xchain387_n14_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain387_n14_β:
 jmp xchain387_n15_α
 xchain387_n15_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+1168]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain387_n16_α
 xchain387_n15_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain387_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain387_n17_α
# IR_LIT_INTEGER
 xchain387_n17_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain387_n18_α
.Lx412_0:
 .quad 4
 xchain387_n18_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain387_n20_α
 jmp xchain387_n19_α
 xchain387_n18_β:
 jmp xchain387_n20_α
# IR_SUSPEND yield+resume
 xchain387_n19_α:
 lea rax, [rip + xchain387_n19_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain387_n19_β:
 jmp xchain387_n20_α
 xchain387_n20_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+992]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain387_n21_α
 xchain387_n20_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain387_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain387_n22_α
# IR_LIT_INTEGER
 xchain387_n22_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx419_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain387_n23_α
.Lx419_0:
 .quad 5
 xchain387_n23_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain387_n25_α
 jmp xchain387_n24_α
 xchain387_n23_β:
 jmp xchain387_n25_α
# IR_SUSPEND yield+resume
 xchain387_n24_α:
 lea rax, [rip + xchain387_n24_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain387_n24_β:
 jmp xchain387_n25_α
 xchain387_n25_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+816]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain387_n26_α
 xchain387_n25_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain387_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain387_n27_α
# IR_LIT_INTEGER
 xchain387_n27_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx426_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain387_n28_α
.Lx426_0:
 .quad 6
 xchain387_n28_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain387_n30_α
 jmp xchain387_n29_α
 xchain387_n28_β:
 jmp xchain387_n30_α
# IR_SUSPEND yield+resume
 xchain387_n29_α:
 lea rax, [rip + xchain387_n29_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain387_n29_β:
 jmp xchain387_n30_α
 xchain387_n30_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+640]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain387_n31_α
 xchain387_n30_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain387_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain387_n32_α
# IR_LIT_INTEGER
 xchain387_n32_α:
 mov qword ptr [rbp + 592], 6
 mov rax, qword ptr [rip + .Lx433_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain387_n33_α
.Lx433_0:
 .quad 7
 xchain387_n33_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 512]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 cmp eax, 99
 je xchain387_n35_α
 jmp xchain387_n34_α
 xchain387_n33_β:
 jmp xchain387_n35_α
# IR_SUSPEND yield+resume
 xchain387_n34_α:
 lea rax, [rip + xchain387_n34_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain387_n34_β:
 jmp xchain387_n35_α
 xchain387_n35_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+464]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain387_n36_α
 xchain387_n35_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain387_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain387_n37_α
# IR_LIT_INTEGER
 xchain387_n37_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx440_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain387_n38_α
.Lx440_0:
 .quad 8
 xchain387_n38_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain387_n40_α
 jmp xchain387_n39_α
 xchain387_n38_β:
 jmp xchain387_n40_α
# IR_SUSPEND yield+resume
 xchain387_n39_α:
 lea rax, [rip + xchain387_n39_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain387_n39_β:
 jmp xchain387_n40_α
 xchain387_n40_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+288]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp xchain387_n41_α
 xchain387_n40_β:
 jmp proc_leftdigit$1_ω
# IR_VAR_REF
 xchain387_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain387_n42_α
# IR_LIT_INTEGER
 xchain387_n42_α:
 mov qword ptr [rbp + 240], 6
 mov rax, qword ptr [rip + .Lx447_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain387_n43_α
.Lx447_0:
 .quad 9
 xchain387_n43_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain387_n45_α
 jmp xchain387_n44_α
 xchain387_n43_β:
 jmp xchain387_n45_α
# IR_SUSPEND yield+resume
 xchain387_n44_α:
 lea rax, [rip + xchain387_n44_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 8], rax
 jmp proc_leftdigit$1_γ
 xchain387_n44_β:
 jmp xchain387_n45_α
 xchain387_n45_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+64] -> [zr+112]
 mov rax, qword ptr [rbp + 64]
 mov qword ptr [rbp + 112], rax
 mov rax, qword ptr [rbp + 72]
 mov qword ptr [rbp + 120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_leftdigit$1_ω
 jmp proc_leftdigit$1_ω
 xchain387_n45_β:
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
 xchain452_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain452_n1_α
 xchain452_n0_β:
 jmp main_ω
# IR_VAR_REF
 xchain452_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2080]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain452_n2_α
# IR_VAR_REF
 xchain452_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2064]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain452_n3_α
# IR_VAR_REF
 xchain452_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2048]
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain452_n4_α
# IR_VAR_REF
 xchain452_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2032]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain452_n5_α
# IR_VAR_REF
 xchain452_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2016]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain452_n6_α
# IR_VAR_REF
 xchain452_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2000]
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain452_n7_α
# IR_VAR_REF
 xchain452_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1984]
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 jmp xchain452_n8_α
# IR_VAR_REF
 xchain452_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1968]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain452_n9_α
 xchain452_n9_α:
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
 mov rdi, qword ptr [rip + .Lx471_0]
 mov esi, 8
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx471_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx471_3]
 lea rdx, [rip + .Lx471_4]
 jmp rax
.Lx471_3:
 mov qword ptr [rbp + 1672], rsp
 mov rax, qword ptr [rbp + 1664]
 test rax, rax
 jne .Lx471_5
 mov qword ptr [rbp + 1664], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx471_2
.Lx471_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx471_2
.Lx471_4:
 mov rax, qword ptr [rbp + 1664]
 test rax, rax
 jne .Lx471_6
 mov qword ptr [rbp + 1664], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx471_2
.Lx471_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx471_2
.Lx471_1:
 call rt_faildescr@PLT
.Lx471_2:
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain452_n11_α
 jmp xchain452_n10_α
 xchain452_n9_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1672]
 jmp qword ptr [rsp]
.Lx471_0:
 .quad .Lx471_0_s
.Lx471_0_s:
 .string "solve/8"
# IR_LIT_STRING
 xchain452_n10_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx472_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain452_n12_α
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "."
# IR_LIT_STRING
 xchain452_n11_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx473_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain452_n13_α
.Lx473_0:
 .quad .Lx473_0_s
.Lx473_0_s:
 .string "none"
# IR_VAR_REF
 xchain452_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2080]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain452_n14_α
 xchain452_n13_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1464], rax
  .section .rodata
  .Lrkfn477: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn477]
 lea rsi, [rbp + 1456]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain452_n16_α
 jmp xchain452_n15_α
 xchain452_n13_β:
 jmp xchain452_n16_α
# IR_LIT_STRING
 xchain452_n14_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx478_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain452_n17_α
.Lx478_0:
 .quad .Lx478_0_s
.Lx478_0_s:
 .string "."
# IR_LIT_STRING
 xchain452_n15_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx479_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain452_n18_α
.Lx479_0:
 .quad .Lx479_0_s
.Lx479_0_s:
 .string ""
 xchain452_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+48] -> [zr+96]
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 96], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je main_ω
 jmp main_ω
 xchain452_n16_β:
 jmp main_ω
# IR_VAR_REF
 xchain452_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2064]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain452_n19_α
 xchain452_n18_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn484: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn484]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain452_n16_α
 jmp xchain452_n20_α
 xchain452_n18_β:
 jmp xchain452_n16_α
# IR_LIT_STRING
 xchain452_n19_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx485_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain452_n21_α
.Lx485_0:
 .quad .Lx485_0_s
.Lx485_0_s:
 .string "."
# IR_MOVE_LABEL
 xchain452_n20_α:
 lea rax, [rip + xchain452_n16_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_VAR_REF
 xchain452_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2048]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain452_n23_α
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain452_n22_α:
 jmp qword ptr [rbp + 32]
 xchain452_n22_β:
 jmp main_ω
# IR_LIT_STRING
 xchain452_n23_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx492_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain452_n24_α
.Lx492_0:
 .quad .Lx492_0_s
.Lx492_0_s:
 .string "."
# IR_VAR_REF
 xchain452_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2032]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain452_n25_α
# IR_LIT_STRING
 xchain452_n25_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx495_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain452_n26_α
.Lx495_0:
 .quad .Lx495_0_s
.Lx495_0_s:
 .string "."
# IR_VAR_REF
 xchain452_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2016]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain452_n27_α
# IR_LIT_STRING
 xchain452_n27_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx498_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain452_n28_α
.Lx498_0:
 .quad .Lx498_0_s
.Lx498_0_s:
 .string "."
# IR_VAR_REF
 xchain452_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2000]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain452_n29_α
# IR_LIT_STRING
 xchain452_n29_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx501_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain452_n30_α
.Lx501_0:
 .quad .Lx501_0_s
.Lx501_0_s:
 .string "."
# IR_VAR_REF
 xchain452_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1984]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain452_n31_α
# IR_LIT_STRING
 xchain452_n31_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx504_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain452_n32_α
.Lx504_0:
 .quad .Lx504_0_s
.Lx504_0_s:
 .string "."
# IR_VAR_REF
 xchain452_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1968]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain452_n33_α
# IR_LIT_STRING
 xchain452_n33_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx507_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain452_n34_α
.Lx507_0:
 .quad .Lx507_0_s
.Lx507_0_s:
 .string "[]"
 xchain452_n34_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je main_ω
 jmp xchain452_n35_α
 xchain452_n34_β:
 jmp main_ω
 xchain452_n35_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je main_ω
 jmp xchain452_n36_α
 xchain452_n35_β:
 jmp main_ω
 xchain452_n36_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je main_ω
 jmp xchain452_n37_α
 xchain452_n36_β:
 jmp main_ω
 xchain452_n37_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 768]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je main_ω
 jmp xchain452_n38_α
 xchain452_n37_β:
 jmp main_ω
 xchain452_n38_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je main_ω
 jmp xchain452_n39_α
 xchain452_n38_β:
 jmp main_ω
 xchain452_n39_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1056]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je main_ω
 jmp xchain452_n40_α
 xchain452_n39_β:
 jmp main_ω
 xchain452_n40_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1200]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je main_ω
 jmp xchain452_n41_α
 xchain452_n40_β:
 jmp main_ω
 xchain452_n41_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain452_n16_α
 jmp xchain452_n42_α
 xchain452_n41_β:
 jmp xchain452_n16_α
 xchain452_n42_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+224]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn517: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn517]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain452_n16_α
 jmp xchain452_n15_α
 xchain452_n42_β:
 jmp xchain452_n16_α
main_β:
jmp xchain452_n22_α
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
