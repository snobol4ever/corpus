  .intel_syntax noprefix
  .text
  .globl proc_partition$4_α
proc_partition$4_α:
#=======================================================================================================================
    .global proc_partition$4_α
    .global proc_partition$4_β
    .global proc_partition$4_γ
    .global proc_partition$4_ω
  sub rsp, 3312
  mov [rsp + 3288], rcx
  mov [rsp + 3296], rdx
  mov [rsp + 3304], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3176], rsp
  mov rdi, rsp
  mov esi, 3152
  mov edx, 3280
  call rt_jmp_frame_lexprep2@PLT
proc_partition$4_α_body:
lea rax, [rip + xchain0_n66_β]
mov qword ptr [rbp + 3152], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_partition$4_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_partition$4_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3056], rax
 mov qword ptr [rbp + 3064], rdx
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 3088], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 3096], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad 3
# IR_LIT_INTEGER
 xchain0_n3_α:
 mov qword ptr [rbp + 3120], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 3128], rax
 jmp xchain0_n4_α
.Lx5_0:
 .quad 0
 xchain0_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3056] -> [zr+2992]
 mov rax, qword ptr [rbp + 3056]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3064]
 mov qword ptr [rbp + 3000], rax
# marshal arg1 = producer-box slot [zr+3088] -> [zr+3008]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3016], rax
# marshal arg2 = producer-box slot [zr+3120] -> [zr+3024]
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3032], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2992]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain0_n8_α
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3184]
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain0_n9_α
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [rbp + 1888], 6
 mov rax, qword ptr [rip + .Lx13_0]
 mov qword ptr [rbp + 1896], rax
 jmp xchain0_n10_α
.Lx13_0:
 .quad 3
# IR_VAR_REF
 xchain0_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3200]
 mov qword ptr [rbp + 2944], rax
 mov qword ptr [rbp + 2952], rdx
 jmp xchain0_n11_α
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [rbp + 1920], 6
 mov rax, qword ptr [rip + .Lx16_0]
 mov qword ptr [rbp + 1928], rax
 jmp xchain0_n12_α
.Lx16_0:
 .quad 0
 xchain0_n11_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2800] -> [zr+2848]
 mov rax, qword ptr [rbp + 2800]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 2856], rax
# marshal arg1 = producer-box slot [zr+2912] -> [zr+2864]
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2872], rax
# marshal arg2 = producer-box slot [zr+2944] -> [zr+2880]
 mov rax, qword ptr [rbp + 2944]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2952]
 mov qword ptr [rbp + 2888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2848]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
 xchain0_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1856] -> [zr+1792]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1800], rax
# marshal arg1 = producer-box slot [zr+1888] -> [zr+1808]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 1816], rax
# marshal arg2 = producer-box slot [zr+1920] -> [zr+1824]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1832], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1792]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n12_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 jmp xchain0_n17_α
 xchain0_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1968]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1968], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1976], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1968]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 cmp eax, 99
 je proc_partition$4_ω
 jmp xchain0_n6_α
 xchain0_n14_β:
 jmp proc_partition$4_ω
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain0_n18_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain0_n19_α
# IR_VAR_REF
 xchain0_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3216]
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3184]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain0_n21_α
# IR_LIT_INTEGER
 xchain0_n19_α:
 mov qword ptr [rbp + 816], 6
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain0_n22_α
.Lx30_0:
 .quad 2
 xchain0_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2736] -> [zr+2688]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2696], rax
# marshal arg1 = producer-box slot [zr+2768] -> [zr+2704]
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2688]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n23_α
 xchain0_n20_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3200]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain0_n24_α
# IR_LIT_STRING
 xchain0_n22_α:
 mov qword ptr [rbp + 848], 1
 mov rax, qword ptr [rip + .Lx34_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain0_n25_α
.Lx34_0:
 .quad .Lx34_0_s
.Lx34_0_s:
 .string "[]"
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 jmp xchain0_n26_α
 xchain0_n24_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1648]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1656], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1664]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1672], rax
# marshal arg2 = producer-box slot [zr+1744] -> [zr+1680]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1648]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n27_α
 xchain0_n24_β:
 jmp xchain0_n28_α
 xchain0_n25_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+720]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 728], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+736]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 744], rax
# marshal arg2 = producer-box slot [zr+848] -> [zr+752]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
 xchain0_n25_β:
 jmp xchain0_n30_α
# IR_VAR_REF
 xchain0_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3184]
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain0_n31_α
# IR_VAR_REF
 xchain0_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain0_n32_α
 xchain0_n28_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+896]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 896]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je proc_partition$4_ω
 jmp xchain0_n16_α
 xchain0_n28_β:
 jmp proc_partition$4_ω
# IR_VAR_REF
 xchain0_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n33_α
 xchain0_n30_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+160]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 160], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 160]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je proc_partition$4_ω
 jmp proc_partition$4_ω
 xchain0_n30_β:
 jmp proc_partition$4_ω
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3248]
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain0_n34_α
# IR_VAR_REF
 xchain0_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3216]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain0_n35_α
# IR_LIT_STRING
 xchain0_n33_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain0_n36_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "[]"
 xchain0_n34_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2496] -> [zr+2544]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2552], rax
# marshal arg1 = producer-box slot [zr+2608] -> [zr+2560]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2568], rax
# marshal arg2 = producer-box slot [zr+2640] -> [zr+2576]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2544]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n37_α
 xchain0_n34_β:
 jmp xchain0_n14_α
 xchain0_n35_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1488]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1496], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1504]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1488]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n38_α
 xchain0_n35_β:
 jmp xchain0_n28_α
 xchain0_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 592]
 mov rsi, qword ptr [rip + .Lx54_2]
 jmp .Lx54_3
.Lx54_2:
 .quad .Lx54_2_s
.Lx54_2_s:
 .string "[]"
.Lx54_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n30_α
# IR_VAR_REF
 xchain0_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain0_n40_α
# IR_VAR_REF
 xchain0_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain0_n41_α
# IR_VAR_REF
 xchain0_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain0_n42_α
# IR_VAR_REF
 xchain0_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain0_n43_α
# IR_VAR_REF
 xchain0_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3232]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n44_α
# IR_VAR_REF
 xchain0_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3184]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain0_n45_α
 xchain0_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2432] -> [zr+2384]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2392], rax
# marshal arg1 = producer-box slot [zr+2464] -> [zr+2400]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2384]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n46_α
 xchain0_n43_β:
 jmp xchain0_n14_α
 xchain0_n44_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1360]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1368], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1360]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n47_α
 xchain0_n44_β:
 jmp xchain0_n28_α
 xchain0_n45_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+464]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+480]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n48_α
 xchain0_n45_β:
 jmp xchain0_n30_α
# IR_VAR
 xchain0_n46_α:
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 2312], rax
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain0_n50_α
# IR_VAR_REF
 xchain0_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain0_n51_α
# IR_VAR
 xchain0_n49_α:
 mov rax, qword ptr [rbp + 3216]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 3224]
 mov qword ptr [rbp + 2344], rax
 jmp xchain0_n52_α
# IR_VAR_REF
 xchain0_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3184]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain0_n53_α
# IR_LIT_STRING
 xchain0_n51_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx80_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain0_n54_α
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "[]"
 xchain0_n52_α:
# BOX IR_CALL $cmp_le(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2304] -> [zr+2256]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2264], rax
# marshal arg1 = producer-box slot [zr+2336] -> [zr+2272]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2280], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_le (no by-name dispatch)
 lea rdi, [rbp + 2256]
 mov esi, 2
 call rt_pl_dop_cmp_le@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n55_α
 xchain0_n52_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3248]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain0_n56_α
 xchain0_n54_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 336]
 mov rsi, qword ptr [rip + .Lx84_2]
 jmp .Lx84_3
.Lx84_2:
 .quad .Lx84_2_s
.Lx84_2_s:
 .string "[]"
.Lx84_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n57_α
 xchain0_n54_β:
 jmp xchain0_n30_α
 xchain0_n55_α:
# IR_CUT
 jmp xchain0_n58_α
 xchain0_n56_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1216]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg2 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n59_α
 xchain0_n56_β:
 jmp xchain0_n28_α
# IR_VAR_REF
 xchain0_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain0_n60_α
# IR_VAR_REF
 xchain0_n58_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3200]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain0_n61_α
# IR_VAR_REF
 xchain0_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3200]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain0_n62_α
# IR_LIT_STRING
 xchain0_n60_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx93_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain0_n63_α
.Lx93_0:
 .quad .Lx93_0_s
.Lx93_0_s:
 .string "[]"
# IR_VAR_REF
 xchain0_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3216]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain0_n64_α
# IR_VAR_REF
 xchain0_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3216]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain0_n65_α
 xchain0_n63_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+208]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 216], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 208]
 mov rsi, qword ptr [rip + .Lx98_2]
 jmp .Lx98_3
.Lx98_2:
 .quad .Lx98_2_s
.Lx98_2_s:
 .string "[]"
.Lx98_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n66_α
 xchain0_n63_β:
 jmp xchain0_n30_α
# IR_VAR_REF
 xchain0_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3248]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain0_n67_α
# IR_VAR_REF
 xchain0_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3232]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain0_n68_α
# IR_SUSPEND yield+resume
 xchain0_n66_α:
 lea rax, [rip + xchain0_n66_β]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_partition$4_γ
 xchain0_n66_β:
 jmp xchain0_n30_α
# IR_VAR_REF
 xchain0_n67_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3264]
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain0_n69_α
# IR_VAR_REF
 xchain0_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3248]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain0_n70_α
 xchain0_n69_α:
 mov qword ptr [rbp + 2080], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2112]
 mov rdx, qword ptr [rbp + 2120]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2144]
 mov rdx, qword ptr [rbp + 2152]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 2176]
 mov rdx, qword ptr [rbp + 2184]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 2208]
 mov rdx, qword ptr [rbp + 2216]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx110_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx110_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx110_3]
 lea rdx, [rip + .Lx110_4]
 jmp rax
.Lx110_3:
 mov qword ptr [rbp + 2088], rsp
 mov rax, qword ptr [rbp + 2080]
 test rax, rax
 jne .Lx110_5
 mov qword ptr [rbp + 2080], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx110_2
.Lx110_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx110_2
.Lx110_4:
 mov rax, qword ptr [rbp + 2080]
 test rax, rax
 jne .Lx110_6
 mov qword ptr [rbp + 2080], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx110_2
.Lx110_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx110_2
.Lx110_1:
 call rt_faildescr@PLT
.Lx110_2:
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n71_α
 xchain0_n69_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2088]
 jmp qword ptr [rsp]
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "partition/4"
 xchain0_n70_α:
 mov qword ptr [rbp + 1008], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1040]
 mov rdx, qword ptr [rbp + 1048]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1072]
 mov rdx, qword ptr [rbp + 1080]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1104]
 mov rdx, qword ptr [rbp + 1112]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 1136]
 mov rdx, qword ptr [rbp + 1144]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx112_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx112_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx112_3]
 lea rdx, [rip + .Lx112_4]
 jmp rax
.Lx112_3:
 mov qword ptr [rbp + 1016], rsp
 mov rax, qword ptr [rbp + 1008]
 test rax, rax
 jne .Lx112_5
 mov qword ptr [rbp + 1008], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx112_2
.Lx112_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx112_2
.Lx112_4:
 mov rax, qword ptr [rbp + 1008]
 test rax, rax
 jne .Lx112_6
 mov qword ptr [rbp + 1008], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx112_2
.Lx112_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx112_2
.Lx112_1:
 call rt_faildescr@PLT
.Lx112_2:
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n72_α
 xchain0_n70_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1016]
 jmp qword ptr [rsp]
.Lx112_0:
 .quad .Lx112_0_s
.Lx112_0_s:
 .string "partition/4"
# IR_SUSPEND yield+resume
 xchain0_n71_α:
 lea rax, [rip + xchain0_n71_β]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_partition$4_γ
 xchain0_n71_β:
 jmp xchain0_n69_β
# IR_SUSPEND yield+resume
 xchain0_n72_α:
 lea rax, [rip + xchain0_n72_β]
 mov qword ptr [rbp + 3152], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_partition$4_γ
 xchain0_n72_β:
 jmp xchain0_n70_β
proc_partition$4_res:
add rsp, 8
pop rbp
proc_partition$4_β:
jmp qword ptr [rbp + 3152]
proc_partition$4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_partition$4_res]
push rax
mov rax, [rbp + 3288]
mov rbp, [rbp + 3304]
jmp rax
proc_partition$4_ω:
mov rax, [rbp + 3296]
lea rsp, [rbp + 3312]
mov rbp, [rbp + 3304]
jmp rax
  .globl proc_qsort$3_α
proc_qsort$3_α:
#=======================================================================================================================
    .global proc_qsort$3_α
    .global proc_qsort$3_β
    .global proc_qsort$3_γ
    .global proc_qsort$3_ω
  sub rsp, 2336
  mov [rsp + 2312], rcx
  mov [rsp + 2320], rdx
  mov [rsp + 2328], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2184], rsp
  mov rdi, rsp
  mov esi, 2160
  mov edx, 2304
  call rt_jmp_frame_lexprep2@PLT
proc_qsort$3_α_body:
lea rax, [rip + xchain117_n34_β]
mov qword ptr [rbp + 2160], rax
 xchain117_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_qsort$3_ω
 jmp xchain117_n1_α
 xchain117_n0_β:
 jmp proc_qsort$3_ω
# IR_VAR_REF
 xchain117_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 jmp xchain117_n2_α
# IR_LIT_INTEGER
 xchain117_n2_α:
 mov qword ptr [rbp + 2096], 6
 mov rax, qword ptr [rip + .Lx121_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain117_n3_α
.Lx121_0:
 .quad 3
# IR_LIT_INTEGER
 xchain117_n3_α:
 mov qword ptr [rbp + 2128], 6
 mov rax, qword ptr [rip + .Lx122_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain117_n4_α
.Lx122_0:
 .quad 0
 xchain117_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2064] -> [zr+2000]
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 2008], rax
# marshal arg1 = producer-box slot [zr+2096] -> [zr+2016]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2024], rax
# marshal arg2 = producer-box slot [zr+2128] -> [zr+2032]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2000]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je xchain117_n6_α
 jmp xchain117_n5_α
 xchain117_n4_β:
 jmp xchain117_n6_α
# IR_VAR_REF
 xchain117_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain117_n7_α
# IR_VAR_REF
 xchain117_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain117_n8_α
# IR_VAR_REF
 xchain117_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2240]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain117_n9_α
# IR_LIT_INTEGER
 xchain117_n8_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx130_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain117_n10_α
.Lx130_0:
 .quad 2
# IR_VAR_REF
 xchain117_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2288]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain117_n11_α
# IR_LIT_STRING
 xchain117_n10_α:
 mov qword ptr [rbp + 704], 1
 mov rax, qword ptr [rip + .Lx133_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain117_n12_α
.Lx133_0:
 .quad .Lx133_0_s
.Lx133_0_s:
 .string "[]"
 xchain117_n11_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1856]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1864], rax
# marshal arg1 = producer-box slot [zr+1920] -> [zr+1872]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1880], rax
# marshal arg2 = producer-box slot [zr+1952] -> [zr+1888]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1896], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1856]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je xchain117_n14_α
 jmp xchain117_n13_α
 xchain117_n11_β:
 jmp xchain117_n14_α
 xchain117_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+576]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+592]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 600], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+608]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain117_n16_α
 jmp xchain117_n15_α
 xchain117_n12_β:
 jmp xchain117_n16_α
# IR_VAR_REF
 xchain117_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain117_n17_α
 xchain117_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+752]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je proc_qsort$3_ω
 jmp xchain117_n6_α
 xchain117_n14_β:
 jmp proc_qsort$3_ω
# IR_VAR_REF
 xchain117_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain117_n18_α
 xchain117_n16_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+144]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 152], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 144]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_qsort$3_ω
 jmp proc_qsort$3_ω
 xchain117_n16_β:
 jmp proc_qsort$3_ω
# IR_VAR_REF
 xchain117_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2192]
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain117_n19_α
# IR_LIT_STRING
 xchain117_n18_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx144_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain117_n20_α
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "[]"
 xchain117_n19_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1696]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je xchain117_n14_α
 jmp xchain117_n21_α
 xchain117_n19_β:
 jmp xchain117_n14_α
 xchain117_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 448]
 mov rsi, qword ptr [rip + .Lx146_2]
 jmp .Lx146_3
.Lx146_2:
 .quad .Lx146_2_s
.Lx146_2_s:
 .string "[]"
.Lx146_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain117_n16_α
 jmp xchain117_n22_α
 xchain117_n20_β:
 jmp xchain117_n16_α
# IR_VAR_REF
 xchain117_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain117_n23_α
# IR_VAR_REF
 xchain117_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain117_n24_α
# IR_VAR_REF
 xchain117_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2272]
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 jmp xchain117_n25_α
# IR_VAR_REF
 xchain117_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2192]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain117_n26_α
 xchain117_n25_α:
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
 je xchain117_n14_α
 jmp xchain117_n27_α
 xchain117_n25_β:
 jmp xchain117_n14_α
 xchain117_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+336]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain117_n16_α
 jmp xchain117_n28_α
 xchain117_n26_β:
 jmp xchain117_n16_α
# IR_VAR_REF
 xchain117_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2288]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain117_n29_α
# IR_VAR_REF
 xchain117_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain117_n30_α
# IR_VAR_REF
 xchain117_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2240]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain117_n31_α
# IR_VAR_REF
 xchain117_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2192]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain117_n32_α
# IR_VAR_REF
 xchain117_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2208]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain117_n33_α
 xchain117_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+192]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 200], rax
# marshal arg1 = producer-box slot [zr+272] -> [zr+208]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 192]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain117_n16_α
 jmp xchain117_n34_α
 xchain117_n32_β:
 jmp xchain117_n16_α
# IR_VAR_REF
 xchain117_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2256]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain117_n35_α
# IR_SUSPEND yield+resume
 xchain117_n34_α:
 lea rax, [rip + xchain117_n34_β]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_qsort$3_γ
 xchain117_n34_β:
 jmp xchain117_n16_α
 xchain117_n35_α:
 mov qword ptr [rbp + 1392], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1424]
 mov rdx, qword ptr [rbp + 1432]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1456]
 mov rdx, qword ptr [rbp + 1464]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1488]
 mov rdx, qword ptr [rbp + 1496]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 1520]
 mov rdx, qword ptr [rbp + 1528]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx173_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx173_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx173_3]
 lea rdx, [rip + .Lx173_4]
 jmp rax
.Lx173_3:
 mov qword ptr [rbp + 1400], rsp
 mov rax, qword ptr [rbp + 1392]
 test rax, rax
 jne .Lx173_5
 mov qword ptr [rbp + 1392], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx173_2
.Lx173_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx173_2
.Lx173_4:
 mov rax, qword ptr [rbp + 1392]
 test rax, rax
 jne .Lx173_6
 mov qword ptr [rbp + 1392], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx173_2
.Lx173_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx173_2
.Lx173_1:
 call rt_faildescr@PLT
.Lx173_2:
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain117_n14_α
 jmp xchain117_n36_α
 xchain117_n35_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1400]
 jmp qword ptr [rsp]
.Lx173_0:
 .quad .Lx173_0_s
.Lx173_0_s:
 .string "partition/4"
# IR_VAR_REF
 xchain117_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2256]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain117_n37_α
# IR_VAR_REF
 xchain117_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2224]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain117_n38_α
# IR_VAR_REF
 xchain117_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2272]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain117_n39_α
 xchain117_n39_α:
 mov qword ptr [rbp + 1184], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1216]
 mov rdx, qword ptr [rbp + 1224]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1280]
 mov rdx, qword ptr [rbp + 1288]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx181_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx181_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx181_3]
 lea rdx, [rip + .Lx181_4]
 jmp rax
.Lx181_3:
 mov qword ptr [rbp + 1192], rsp
 mov rax, qword ptr [rbp + 1184]
 test rax, rax
 jne .Lx181_5
 mov qword ptr [rbp + 1184], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx181_2
.Lx181_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx181_2
.Lx181_4:
 mov rax, qword ptr [rbp + 1184]
 test rax, rax
 jne .Lx181_6
 mov qword ptr [rbp + 1184], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx181_2
.Lx181_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx181_2
.Lx181_1:
 call rt_faildescr@PLT
.Lx181_2:
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain117_n35_β
 jmp xchain117_n40_α
 xchain117_n39_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1192]
 jmp qword ptr [rsp]
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "qsort/3"
# IR_VAR_REF
 xchain117_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2208]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain117_n41_α
# IR_VAR_REF
 xchain117_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2192]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain117_n42_α
# IR_LIT_STRING
 xchain117_n42_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain117_n43_α
.Lx186_0:
 .quad .Lx186_0_s
.Lx186_0_s:
 .string "."
# IR_VAR_REF
 xchain117_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2240]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain117_n44_α
# IR_VAR_REF
 xchain117_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2224]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain117_n45_α
 xchain117_n45_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1024]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1032], rax
# marshal arg1 = producer-box slot [zr+976] -> [zr+1040]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1048], rax
# marshal arg2 = producer-box slot [zr+944] -> [zr+1056]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1024]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain117_n14_α
 jmp xchain117_n46_α
 xchain117_n45_β:
 jmp xchain117_n14_α
 xchain117_n46_α:
 mov qword ptr [rbp + 848], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 880]
 mov rdx, qword ptr [rbp + 888]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx193_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx193_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx193_3]
 lea rdx, [rip + .Lx193_4]
 jmp rax
.Lx193_3:
 mov qword ptr [rbp + 856], rsp
 mov rax, qword ptr [rbp + 848]
 test rax, rax
 jne .Lx193_5
 mov qword ptr [rbp + 848], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx193_2
.Lx193_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx193_2
.Lx193_4:
 mov rax, qword ptr [rbp + 848]
 test rax, rax
 jne .Lx193_6
 mov qword ptr [rbp + 848], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx193_2
.Lx193_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx193_2
.Lx193_1:
 call rt_faildescr@PLT
.Lx193_2:
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain117_n39_β
 jmp xchain117_n47_α
 xchain117_n46_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 856]
 jmp qword ptr [rsp]
.Lx193_0:
 .quad .Lx193_0_s
.Lx193_0_s:
 .string "qsort/3"
# IR_SUSPEND yield+resume
 xchain117_n47_α:
 lea rax, [rip + xchain117_n47_β]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_qsort$3_γ
 xchain117_n47_β:
 jmp xchain117_n46_β
proc_qsort$3_res:
add rsp, 8
pop rbp
proc_qsort$3_β:
jmp qword ptr [rbp + 2160]
proc_qsort$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_qsort$3_res]
push rax
mov rax, [rbp + 2312]
mov rbp, [rbp + 2328]
jmp rax
proc_qsort$3_ω:
mov rax, [rbp + 2320]
lea rsp, [rbp + 2336]
mov rbp, [rbp + 2328]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "partition/4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_partition$4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3280
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "qsort/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_qsort$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2304
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
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
  mov qword ptr [rsp + 7688], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain196_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n1_α
 xchain196_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain196_n1_α:
 mov qword ptr [rbp + 7584], 1
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [rbp + 7592], rax
 jmp xchain196_n2_α
.Lx198_0:
 .quad .Lx198_0_s
.Lx198_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n2_α:
 mov qword ptr [rbp + 7472], 6
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [rbp + 7480], rax
 jmp xchain196_n3_α
.Lx199_0:
 .quad 27
# IR_LIT_STRING
 xchain196_n3_α:
 mov qword ptr [rbp + 7440], 1
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [rbp + 7448], rax
 jmp xchain196_n4_α
.Lx200_0:
 .quad .Lx200_0_s
.Lx200_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n4_α:
 mov qword ptr [rbp + 7328], 6
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 7336], rax
 jmp xchain196_n5_α
.Lx201_0:
 .quad 74
# IR_LIT_STRING
 xchain196_n5_α:
 mov qword ptr [rbp + 7296], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [rbp + 7304], rax
 jmp xchain196_n6_α
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n6_α:
 mov qword ptr [rbp + 7184], 6
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [rbp + 7192], rax
 jmp xchain196_n7_α
.Lx203_0:
 .quad 17
# IR_LIT_STRING
 xchain196_n7_α:
 mov qword ptr [rbp + 7152], 1
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 7160], rax
 jmp xchain196_n8_α
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n8_α:
 mov qword ptr [rbp + 7040], 6
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 7048], rax
 jmp xchain196_n9_α
.Lx205_0:
 .quad 33
# IR_LIT_STRING
 xchain196_n9_α:
 mov qword ptr [rbp + 7008], 1
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 7016], rax
 jmp xchain196_n10_α
.Lx206_0:
 .quad .Lx206_0_s
.Lx206_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n10_α:
 mov qword ptr [rbp + 6896], 6
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 6904], rax
 jmp xchain196_n11_α
.Lx207_0:
 .quad 94
# IR_LIT_STRING
 xchain196_n11_α:
 mov qword ptr [rbp + 6864], 1
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [rbp + 6872], rax
 jmp xchain196_n12_α
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n12_α:
 mov qword ptr [rbp + 6752], 6
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 6760], rax
 jmp xchain196_n13_α
.Lx209_0:
 .quad 18
# IR_LIT_STRING
 xchain196_n13_α:
 mov qword ptr [rbp + 6720], 1
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [rbp + 6728], rax
 jmp xchain196_n14_α
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n14_α:
 mov qword ptr [rbp + 6608], 6
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 6616], rax
 jmp xchain196_n15_α
.Lx211_0:
 .quad 46
# IR_LIT_STRING
 xchain196_n15_α:
 mov qword ptr [rbp + 6576], 1
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 6584], rax
 jmp xchain196_n16_α
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n16_α:
 mov qword ptr [rbp + 6464], 6
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 6472], rax
 jmp xchain196_n17_α
.Lx213_0:
 .quad 83
# IR_LIT_STRING
 xchain196_n17_α:
 mov qword ptr [rbp + 6432], 1
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [rbp + 6440], rax
 jmp xchain196_n18_α
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n18_α:
 mov qword ptr [rbp + 6320], 6
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [rbp + 6328], rax
 jmp xchain196_n19_α
.Lx215_0:
 .quad 65
# IR_LIT_STRING
 xchain196_n19_α:
 mov qword ptr [rbp + 6288], 1
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 6296], rax
 jmp xchain196_n20_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n20_α:
 mov qword ptr [rbp + 6176], 6
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [rbp + 6184], rax
 jmp xchain196_n21_α
.Lx217_0:
 .quad 2
# IR_LIT_STRING
 xchain196_n21_α:
 mov qword ptr [rbp + 6144], 1
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [rbp + 6152], rax
 jmp xchain196_n22_α
.Lx218_0:
 .quad .Lx218_0_s
.Lx218_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n22_α:
 mov qword ptr [rbp + 6032], 6
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [rbp + 6040], rax
 jmp xchain196_n23_α
.Lx219_0:
 .quad 32
# IR_LIT_STRING
 xchain196_n23_α:
 mov qword ptr [rbp + 6000], 1
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [rbp + 6008], rax
 jmp xchain196_n24_α
.Lx220_0:
 .quad .Lx220_0_s
.Lx220_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n24_α:
 mov qword ptr [rbp + 5888], 6
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 5896], rax
 jmp xchain196_n25_α
.Lx221_0:
 .quad 53
# IR_LIT_STRING
 xchain196_n25_α:
 mov qword ptr [rbp + 5856], 1
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 5864], rax
 jmp xchain196_n26_α
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n26_α:
 mov qword ptr [rbp + 5744], 6
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [rbp + 5752], rax
 jmp xchain196_n27_α
.Lx223_0:
 .quad 28
# IR_LIT_STRING
 xchain196_n27_α:
 mov qword ptr [rbp + 5712], 1
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [rbp + 5720], rax
 jmp xchain196_n28_α
.Lx224_0:
 .quad .Lx224_0_s
.Lx224_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n28_α:
 mov qword ptr [rbp + 5600], 6
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [rbp + 5608], rax
 jmp xchain196_n29_α
.Lx225_0:
 .quad 85
# IR_LIT_STRING
 xchain196_n29_α:
 mov qword ptr [rbp + 5568], 1
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 5576], rax
 jmp xchain196_n30_α
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n30_α:
 mov qword ptr [rbp + 5456], 6
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 5464], rax
 jmp xchain196_n31_α
.Lx227_0:
 .quad 99
# IR_LIT_STRING
 xchain196_n31_α:
 mov qword ptr [rbp + 5424], 1
 mov rax, qword ptr [rip + .Lx228_0]
 mov qword ptr [rbp + 5432], rax
 jmp xchain196_n32_α
.Lx228_0:
 .quad .Lx228_0_s
.Lx228_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n32_α:
 mov qword ptr [rbp + 5312], 6
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 5320], rax
 jmp xchain196_n33_α
.Lx229_0:
 .quad 47
# IR_LIT_STRING
 xchain196_n33_α:
 mov qword ptr [rbp + 5280], 1
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 5288], rax
 jmp xchain196_n34_α
.Lx230_0:
 .quad .Lx230_0_s
.Lx230_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n34_α:
 mov qword ptr [rbp + 5168], 6
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [rbp + 5176], rax
 jmp xchain196_n35_α
.Lx231_0:
 .quad 28
# IR_LIT_STRING
 xchain196_n35_α:
 mov qword ptr [rbp + 5136], 1
 mov rax, qword ptr [rip + .Lx232_0]
 mov qword ptr [rbp + 5144], rax
 jmp xchain196_n36_α
.Lx232_0:
 .quad .Lx232_0_s
.Lx232_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n36_α:
 mov qword ptr [rbp + 5024], 6
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [rbp + 5032], rax
 jmp xchain196_n37_α
.Lx233_0:
 .quad 82
# IR_LIT_STRING
 xchain196_n37_α:
 mov qword ptr [rbp + 4992], 1
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [rbp + 5000], rax
 jmp xchain196_n38_α
.Lx234_0:
 .quad .Lx234_0_s
.Lx234_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n38_α:
 mov qword ptr [rbp + 4880], 6
 mov rax, qword ptr [rip + .Lx235_0]
 mov qword ptr [rbp + 4888], rax
 jmp xchain196_n39_α
.Lx235_0:
 .quad 6
# IR_LIT_STRING
 xchain196_n39_α:
 mov qword ptr [rbp + 4848], 1
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 4856], rax
 jmp xchain196_n40_α
.Lx236_0:
 .quad .Lx236_0_s
.Lx236_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n40_α:
 mov qword ptr [rbp + 4736], 6
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [rbp + 4744], rax
 jmp xchain196_n41_α
.Lx237_0:
 .quad 11
# IR_LIT_STRING
 xchain196_n41_α:
 mov qword ptr [rbp + 4704], 1
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [rbp + 4712], rax
 jmp xchain196_n42_α
.Lx238_0:
 .quad .Lx238_0_s
.Lx238_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n42_α:
 mov qword ptr [rbp + 4592], 6
 mov rax, qword ptr [rip + .Lx239_0]
 mov qword ptr [rbp + 4600], rax
 jmp xchain196_n43_α
.Lx239_0:
 .quad 55
# IR_LIT_STRING
 xchain196_n43_α:
 mov qword ptr [rbp + 4560], 1
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [rbp + 4568], rax
 jmp xchain196_n44_α
.Lx240_0:
 .quad .Lx240_0_s
.Lx240_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n44_α:
 mov qword ptr [rbp + 4448], 6
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 4456], rax
 jmp xchain196_n45_α
.Lx241_0:
 .quad 29
# IR_LIT_STRING
 xchain196_n45_α:
 mov qword ptr [rbp + 4416], 1
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [rbp + 4424], rax
 jmp xchain196_n46_α
.Lx242_0:
 .quad .Lx242_0_s
.Lx242_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n46_α:
 mov qword ptr [rbp + 4304], 6
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 4312], rax
 jmp xchain196_n47_α
.Lx243_0:
 .quad 39
# IR_LIT_STRING
 xchain196_n47_α:
 mov qword ptr [rbp + 4272], 1
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 4280], rax
 jmp xchain196_n48_α
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n48_α:
 mov qword ptr [rbp + 4160], 6
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 4168], rax
 jmp xchain196_n49_α
.Lx245_0:
 .quad 81
# IR_LIT_STRING
 xchain196_n49_α:
 mov qword ptr [rbp + 4128], 1
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 4136], rax
 jmp xchain196_n50_α
.Lx246_0:
 .quad .Lx246_0_s
.Lx246_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n50_α:
 mov qword ptr [rbp + 4016], 6
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [rbp + 4024], rax
 jmp xchain196_n51_α
.Lx247_0:
 .quad 90
# IR_LIT_STRING
 xchain196_n51_α:
 mov qword ptr [rbp + 3984], 1
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [rbp + 3992], rax
 jmp xchain196_n52_α
.Lx248_0:
 .quad .Lx248_0_s
.Lx248_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n52_α:
 mov qword ptr [rbp + 3872], 6
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [rbp + 3880], rax
 jmp xchain196_n53_α
.Lx249_0:
 .quad 37
# IR_LIT_STRING
 xchain196_n53_α:
 mov qword ptr [rbp + 3840], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 3848], rax
 jmp xchain196_n54_α
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n54_α:
 mov qword ptr [rbp + 3728], 6
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 3736], rax
 jmp xchain196_n55_α
.Lx251_0:
 .quad 10
# IR_LIT_STRING
 xchain196_n55_α:
 mov qword ptr [rbp + 3696], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 3704], rax
 jmp xchain196_n56_α
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n56_α:
 mov qword ptr [rbp + 3584], 6
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 3592], rax
 jmp xchain196_n57_α
.Lx253_0:
 .quad 0
# IR_LIT_STRING
 xchain196_n57_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain196_n58_α
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n58_α:
 mov qword ptr [rbp + 3440], 6
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 3448], rax
 jmp xchain196_n59_α
.Lx255_0:
 .quad 66
# IR_LIT_STRING
 xchain196_n59_α:
 mov qword ptr [rbp + 3408], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 3416], rax
 jmp xchain196_n60_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n60_α:
 mov qword ptr [rbp + 3296], 6
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 3304], rax
 jmp xchain196_n61_α
.Lx257_0:
 .quad 51
# IR_LIT_STRING
 xchain196_n61_α:
 mov qword ptr [rbp + 3264], 1
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 3272], rax
 jmp xchain196_n62_α
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n62_α:
 mov qword ptr [rbp + 3152], 6
 mov rax, qword ptr [rip + .Lx259_0]
 mov qword ptr [rbp + 3160], rax
 jmp xchain196_n63_α
.Lx259_0:
 .quad 7
# IR_LIT_STRING
 xchain196_n63_α:
 mov qword ptr [rbp + 3120], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [rbp + 3128], rax
 jmp xchain196_n64_α
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n64_α:
 mov qword ptr [rbp + 3008], 6
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [rbp + 3016], rax
 jmp xchain196_n65_α
.Lx261_0:
 .quad 21
# IR_LIT_STRING
 xchain196_n65_α:
 mov qword ptr [rbp + 2976], 1
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [rbp + 2984], rax
 jmp xchain196_n66_α
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n66_α:
 mov qword ptr [rbp + 2864], 6
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [rbp + 2872], rax
 jmp xchain196_n67_α
.Lx263_0:
 .quad 85
# IR_LIT_STRING
 xchain196_n67_α:
 mov qword ptr [rbp + 2832], 1
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 2840], rax
 jmp xchain196_n68_α
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n68_α:
 mov qword ptr [rbp + 2720], 6
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [rbp + 2728], rax
 jmp xchain196_n69_α
.Lx265_0:
 .quad 27
# IR_LIT_STRING
 xchain196_n69_α:
 mov qword ptr [rbp + 2688], 1
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [rbp + 2696], rax
 jmp xchain196_n70_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n70_α:
 mov qword ptr [rbp + 2576], 6
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [rbp + 2584], rax
 jmp xchain196_n71_α
.Lx267_0:
 .quad 31
# IR_LIT_STRING
 xchain196_n71_α:
 mov qword ptr [rbp + 2544], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 2552], rax
 jmp xchain196_n72_α
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n72_α:
 mov qword ptr [rbp + 2432], 6
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 2440], rax
 jmp xchain196_n73_α
.Lx269_0:
 .quad 63
# IR_LIT_STRING
 xchain196_n73_α:
 mov qword ptr [rbp + 2400], 1
 mov rax, qword ptr [rip + .Lx270_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain196_n74_α
.Lx270_0:
 .quad .Lx270_0_s
.Lx270_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n74_α:
 mov qword ptr [rbp + 2288], 6
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain196_n75_α
.Lx271_0:
 .quad 75
# IR_LIT_STRING
 xchain196_n75_α:
 mov qword ptr [rbp + 2256], 1
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [rbp + 2264], rax
 jmp xchain196_n76_α
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n76_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain196_n77_α
.Lx273_0:
 .quad 4
# IR_LIT_STRING
 xchain196_n77_α:
 mov qword ptr [rbp + 2112], 1
 mov rax, qword ptr [rip + .Lx274_0]
 mov qword ptr [rbp + 2120], rax
 jmp xchain196_n78_α
.Lx274_0:
 .quad .Lx274_0_s
.Lx274_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n78_α:
 mov qword ptr [rbp + 2000], 6
 mov rax, qword ptr [rip + .Lx275_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain196_n79_α
.Lx275_0:
 .quad 95
# IR_LIT_STRING
 xchain196_n79_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain196_n80_α
.Lx276_0:
 .quad .Lx276_0_s
.Lx276_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n80_α:
 mov qword ptr [rbp + 1856], 6
 mov rax, qword ptr [rip + .Lx277_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain196_n81_α
.Lx277_0:
 .quad 99
# IR_LIT_STRING
 xchain196_n81_α:
 mov qword ptr [rbp + 1824], 1
 mov rax, qword ptr [rip + .Lx278_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain196_n82_α
.Lx278_0:
 .quad .Lx278_0_s
.Lx278_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n82_α:
 mov qword ptr [rbp + 1712], 6
 mov rax, qword ptr [rip + .Lx279_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain196_n83_α
.Lx279_0:
 .quad 11
# IR_LIT_STRING
 xchain196_n83_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx280_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain196_n84_α
.Lx280_0:
 .quad .Lx280_0_s
.Lx280_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n84_α:
 mov qword ptr [rbp + 1568], 6
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain196_n85_α
.Lx281_0:
 .quad 28
# IR_LIT_STRING
 xchain196_n85_α:
 mov qword ptr [rbp + 1536], 1
 mov rax, qword ptr [rip + .Lx282_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain196_n86_α
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n86_α:
 mov qword ptr [rbp + 1424], 6
 mov rax, qword ptr [rip + .Lx283_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain196_n87_α
.Lx283_0:
 .quad 61
# IR_LIT_STRING
 xchain196_n87_α:
 mov qword ptr [rbp + 1392], 1
 mov rax, qword ptr [rip + .Lx284_0]
 mov qword ptr [rbp + 1400], rax
 jmp xchain196_n88_α
.Lx284_0:
 .quad .Lx284_0_s
.Lx284_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n88_α:
 mov qword ptr [rbp + 1280], 6
 mov rax, qword ptr [rip + .Lx285_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain196_n89_α
.Lx285_0:
 .quad 74
# IR_LIT_STRING
 xchain196_n89_α:
 mov qword ptr [rbp + 1248], 1
 mov rax, qword ptr [rip + .Lx286_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain196_n90_α
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n90_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain196_n91_α
.Lx287_0:
 .quad 18
# IR_LIT_STRING
 xchain196_n91_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx288_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain196_n92_α
.Lx288_0:
 .quad .Lx288_0_s
.Lx288_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n92_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain196_n93_α
.Lx289_0:
 .quad 92
# IR_LIT_STRING
 xchain196_n93_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx290_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain196_n94_α
.Lx290_0:
 .quad .Lx290_0_s
.Lx290_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n94_α:
 mov qword ptr [rbp + 848], 6
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain196_n95_α
.Lx291_0:
 .quad 40
# IR_LIT_STRING
 xchain196_n95_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain196_n96_α
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n96_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain196_n97_α
.Lx293_0:
 .quad 53
# IR_LIT_STRING
 xchain196_n97_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx294_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain196_n98_α
.Lx294_0:
 .quad .Lx294_0_s
.Lx294_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n98_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx295_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain196_n99_α
.Lx295_0:
 .quad 59
# IR_LIT_STRING
 xchain196_n99_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain196_n100_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain196_n100_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain196_n101_α
.Lx297_0:
 .quad 8
# IR_LIT_STRING
 xchain196_n101_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain196_n102_α
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "[]"
 xchain196_n102_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+480]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 488], rax
# marshal arg2 = producer-box slot [zr+384] -> [zr+496]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n103_α
 xchain196_n102_β:
 jmp main_ω
 xchain196_n103_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+608]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 616], rax
# marshal arg1 = producer-box slot [zr+560] -> [zr+624]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 632], rax
# marshal arg2 = producer-box slot [zr+448] -> [zr+640]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 608]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n104_α
 xchain196_n103_β:
 jmp main_ω
 xchain196_n104_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+752]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+768]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 776], rax
# marshal arg2 = producer-box slot [zr+592] -> [zr+784]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n105_α
 xchain196_n104_β:
 jmp main_ω
 xchain196_n105_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+896]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 904], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+912]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 920], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+928]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 896]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n106_α
 xchain196_n105_β:
 jmp main_ω
 xchain196_n106_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1040]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+992] -> [zr+1056]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1064], rax
# marshal arg2 = producer-box slot [zr+880] -> [zr+1072]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n107_α
 xchain196_n106_β:
 jmp main_ω
 xchain196_n107_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1184]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1192], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+1200]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1208], rax
# marshal arg2 = producer-box slot [zr+1024] -> [zr+1216]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1184]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n108_α
 xchain196_n107_β:
 jmp main_ω
 xchain196_n108_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1328]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1344]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1352], rax
# marshal arg2 = producer-box slot [zr+1168] -> [zr+1360]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1328]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n109_α
 xchain196_n108_β:
 jmp main_ω
 xchain196_n109_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1472]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1480], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1488]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1496], rax
# marshal arg2 = producer-box slot [zr+1312] -> [zr+1504]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1472]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n110_α
 xchain196_n109_β:
 jmp main_ω
 xchain196_n110_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1616]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1624], rax
# marshal arg1 = producer-box slot [zr+1568] -> [zr+1632]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1640], rax
# marshal arg2 = producer-box slot [zr+1456] -> [zr+1648]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1616]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n111_α
 xchain196_n110_β:
 jmp main_ω
 xchain196_n111_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1760]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1768], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1776]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1784], rax
# marshal arg2 = producer-box slot [zr+1600] -> [zr+1792]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1760]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n112_α
 xchain196_n111_β:
 jmp main_ω
 xchain196_n112_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1968] -> [zr+1904]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1912], rax
# marshal arg1 = producer-box slot [zr+1856] -> [zr+1920]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1928], rax
# marshal arg2 = producer-box slot [zr+1744] -> [zr+1936]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1944], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1904]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n113_α
 xchain196_n112_β:
 jmp main_ω
 xchain196_n113_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2112] -> [zr+2048]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2056], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+2064]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 2072], rax
# marshal arg2 = producer-box slot [zr+1888] -> [zr+2080]
 mov rax, qword ptr [rbp + 1888]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 1896]
 mov qword ptr [rbp + 2088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2048]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n114_α
 xchain196_n113_β:
 jmp main_ω
 xchain196_n114_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2192]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2200], rax
# marshal arg1 = producer-box slot [zr+2144] -> [zr+2208]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2216], rax
# marshal arg2 = producer-box slot [zr+2032] -> [zr+2224]
 mov rax, qword ptr [rbp + 2032]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2040]
 mov qword ptr [rbp + 2232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2192]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n115_α
 xchain196_n114_β:
 jmp main_ω
 xchain196_n115_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2400] -> [zr+2336]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2344], rax
# marshal arg1 = producer-box slot [zr+2288] -> [zr+2352]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2360], rax
# marshal arg2 = producer-box slot [zr+2176] -> [zr+2368]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2336]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n116_α
 xchain196_n115_β:
 jmp main_ω
 xchain196_n116_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2544] -> [zr+2480]
 mov rax, qword ptr [rbp + 2544]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2552]
 mov qword ptr [rbp + 2488], rax
# marshal arg1 = producer-box slot [zr+2432] -> [zr+2496]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2504], rax
# marshal arg2 = producer-box slot [zr+2320] -> [zr+2512]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2480]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n117_α
 xchain196_n116_β:
 jmp main_ω
 xchain196_n117_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2688] -> [zr+2624]
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 2632], rax
# marshal arg1 = producer-box slot [zr+2576] -> [zr+2640]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2648], rax
# marshal arg2 = producer-box slot [zr+2464] -> [zr+2656]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2624]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n118_α
 xchain196_n117_β:
 jmp main_ω
 xchain196_n118_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2832] -> [zr+2768]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2776], rax
# marshal arg1 = producer-box slot [zr+2720] -> [zr+2784]
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2792], rax
# marshal arg2 = producer-box slot [zr+2608] -> [zr+2800]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2768]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n119_α
 xchain196_n118_β:
 jmp main_ω
 xchain196_n119_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2976] -> [zr+2912]
 mov rax, qword ptr [rbp + 2976]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2984]
 mov qword ptr [rbp + 2920], rax
# marshal arg1 = producer-box slot [zr+2864] -> [zr+2928]
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2936], rax
# marshal arg2 = producer-box slot [zr+2752] -> [zr+2944]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2944], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2912]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n120_α
 xchain196_n119_β:
 jmp main_ω
 xchain196_n120_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3120] -> [zr+3056]
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3064], rax
# marshal arg1 = producer-box slot [zr+3008] -> [zr+3072]
 mov rax, qword ptr [rbp + 3008]
 mov qword ptr [rbp + 3072], rax
 mov rax, qword ptr [rbp + 3016]
 mov qword ptr [rbp + 3080], rax
# marshal arg2 = producer-box slot [zr+2896] -> [zr+3088]
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 3088], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 3096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3056]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n121_α
 xchain196_n120_β:
 jmp main_ω
 xchain196_n121_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3264] -> [zr+3200]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3200], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3208], rax
# marshal arg1 = producer-box slot [zr+3152] -> [zr+3216]
 mov rax, qword ptr [rbp + 3152]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3160]
 mov qword ptr [rbp + 3224], rax
# marshal arg2 = producer-box slot [zr+3040] -> [zr+3232]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 3232], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3200]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3184], rax
 mov qword ptr [rbp + 3192], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n122_α
 xchain196_n121_β:
 jmp main_ω
 xchain196_n122_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3408] -> [zr+3344]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3352], rax
# marshal arg1 = producer-box slot [zr+3296] -> [zr+3360]
 mov rax, qword ptr [rbp + 3296]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 3368], rax
# marshal arg2 = producer-box slot [zr+3184] -> [zr+3376]
 mov rax, qword ptr [rbp + 3184]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 3192]
 mov qword ptr [rbp + 3384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3344]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n123_α
 xchain196_n122_β:
 jmp main_ω
 xchain196_n123_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3552] -> [zr+3488]
 mov rax, qword ptr [rbp + 3552]
 mov qword ptr [rbp + 3488], rax
 mov rax, qword ptr [rbp + 3560]
 mov qword ptr [rbp + 3496], rax
# marshal arg1 = producer-box slot [zr+3440] -> [zr+3504]
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 3512], rax
# marshal arg2 = producer-box slot [zr+3328] -> [zr+3520]
 mov rax, qword ptr [rbp + 3328]
 mov qword ptr [rbp + 3520], rax
 mov rax, qword ptr [rbp + 3336]
 mov qword ptr [rbp + 3528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3488]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n124_α
 xchain196_n123_β:
 jmp main_ω
 xchain196_n124_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3696] -> [zr+3632]
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 3632], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 3640], rax
# marshal arg1 = producer-box slot [zr+3584] -> [zr+3648]
 mov rax, qword ptr [rbp + 3584]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3592]
 mov qword ptr [rbp + 3656], rax
# marshal arg2 = producer-box slot [zr+3472] -> [zr+3664]
 mov rax, qword ptr [rbp + 3472]
 mov qword ptr [rbp + 3664], rax
 mov rax, qword ptr [rbp + 3480]
 mov qword ptr [rbp + 3672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3632]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n125_α
 xchain196_n124_β:
 jmp main_ω
 xchain196_n125_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3840] -> [zr+3776]
 mov rax, qword ptr [rbp + 3840]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 3848]
 mov qword ptr [rbp + 3784], rax
# marshal arg1 = producer-box slot [zr+3728] -> [zr+3792]
 mov rax, qword ptr [rbp + 3728]
 mov qword ptr [rbp + 3792], rax
 mov rax, qword ptr [rbp + 3736]
 mov qword ptr [rbp + 3800], rax
# marshal arg2 = producer-box slot [zr+3616] -> [zr+3808]
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3808], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3776]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n126_α
 xchain196_n125_β:
 jmp main_ω
 xchain196_n126_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3984] -> [zr+3920]
 mov rax, qword ptr [rbp + 3984]
 mov qword ptr [rbp + 3920], rax
 mov rax, qword ptr [rbp + 3992]
 mov qword ptr [rbp + 3928], rax
# marshal arg1 = producer-box slot [zr+3872] -> [zr+3936]
 mov rax, qword ptr [rbp + 3872]
 mov qword ptr [rbp + 3936], rax
 mov rax, qword ptr [rbp + 3880]
 mov qword ptr [rbp + 3944], rax
# marshal arg2 = producer-box slot [zr+3760] -> [zr+3952]
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 3952], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 3960], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 3920]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n127_α
 xchain196_n126_β:
 jmp main_ω
 xchain196_n127_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4128] -> [zr+4064]
 mov rax, qword ptr [rbp + 4128]
 mov qword ptr [rbp + 4064], rax
 mov rax, qword ptr [rbp + 4136]
 mov qword ptr [rbp + 4072], rax
# marshal arg1 = producer-box slot [zr+4016] -> [zr+4080]
 mov rax, qword ptr [rbp + 4016]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 4024]
 mov qword ptr [rbp + 4088], rax
# marshal arg2 = producer-box slot [zr+3904] -> [zr+4096]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 4096], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 4104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4064]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4048], rax
 mov qword ptr [rbp + 4056], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n128_α
 xchain196_n127_β:
 jmp main_ω
 xchain196_n128_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4272] -> [zr+4208]
 mov rax, qword ptr [rbp + 4272]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 4280]
 mov qword ptr [rbp + 4216], rax
# marshal arg1 = producer-box slot [zr+4160] -> [zr+4224]
 mov rax, qword ptr [rbp + 4160]
 mov qword ptr [rbp + 4224], rax
 mov rax, qword ptr [rbp + 4168]
 mov qword ptr [rbp + 4232], rax
# marshal arg2 = producer-box slot [zr+4048] -> [zr+4240]
 mov rax, qword ptr [rbp + 4048]
 mov qword ptr [rbp + 4240], rax
 mov rax, qword ptr [rbp + 4056]
 mov qword ptr [rbp + 4248], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4208]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n129_α
 xchain196_n128_β:
 jmp main_ω
 xchain196_n129_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4416] -> [zr+4352]
 mov rax, qword ptr [rbp + 4416]
 mov qword ptr [rbp + 4352], rax
 mov rax, qword ptr [rbp + 4424]
 mov qword ptr [rbp + 4360], rax
# marshal arg1 = producer-box slot [zr+4304] -> [zr+4368]
 mov rax, qword ptr [rbp + 4304]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 4312]
 mov qword ptr [rbp + 4376], rax
# marshal arg2 = producer-box slot [zr+4192] -> [zr+4384]
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 4384], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 4392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4352]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4336], rax
 mov qword ptr [rbp + 4344], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n130_α
 xchain196_n129_β:
 jmp main_ω
 xchain196_n130_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4560] -> [zr+4496]
 mov rax, qword ptr [rbp + 4560]
 mov qword ptr [rbp + 4496], rax
 mov rax, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 4504], rax
# marshal arg1 = producer-box slot [zr+4448] -> [zr+4512]
 mov rax, qword ptr [rbp + 4448]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 4456]
 mov qword ptr [rbp + 4520], rax
# marshal arg2 = producer-box slot [zr+4336] -> [zr+4528]
 mov rax, qword ptr [rbp + 4336]
 mov qword ptr [rbp + 4528], rax
 mov rax, qword ptr [rbp + 4344]
 mov qword ptr [rbp + 4536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4496]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4480], rax
 mov qword ptr [rbp + 4488], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n131_α
 xchain196_n130_β:
 jmp main_ω
 xchain196_n131_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4704] -> [zr+4640]
 mov rax, qword ptr [rbp + 4704]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 4712]
 mov qword ptr [rbp + 4648], rax
# marshal arg1 = producer-box slot [zr+4592] -> [zr+4656]
 mov rax, qword ptr [rbp + 4592]
 mov qword ptr [rbp + 4656], rax
 mov rax, qword ptr [rbp + 4600]
 mov qword ptr [rbp + 4664], rax
# marshal arg2 = producer-box slot [zr+4480] -> [zr+4672]
 mov rax, qword ptr [rbp + 4480]
 mov qword ptr [rbp + 4672], rax
 mov rax, qword ptr [rbp + 4488]
 mov qword ptr [rbp + 4680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4640]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n132_α
 xchain196_n131_β:
 jmp main_ω
 xchain196_n132_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4848] -> [zr+4784]
 mov rax, qword ptr [rbp + 4848]
 mov qword ptr [rbp + 4784], rax
 mov rax, qword ptr [rbp + 4856]
 mov qword ptr [rbp + 4792], rax
# marshal arg1 = producer-box slot [zr+4736] -> [zr+4800]
 mov rax, qword ptr [rbp + 4736]
 mov qword ptr [rbp + 4800], rax
 mov rax, qword ptr [rbp + 4744]
 mov qword ptr [rbp + 4808], rax
# marshal arg2 = producer-box slot [zr+4624] -> [zr+4816]
 mov rax, qword ptr [rbp + 4624]
 mov qword ptr [rbp + 4816], rax
 mov rax, qword ptr [rbp + 4632]
 mov qword ptr [rbp + 4824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4784]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4768], rax
 mov qword ptr [rbp + 4776], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n133_α
 xchain196_n132_β:
 jmp main_ω
 xchain196_n133_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4992] -> [zr+4928]
 mov rax, qword ptr [rbp + 4992]
 mov qword ptr [rbp + 4928], rax
 mov rax, qword ptr [rbp + 5000]
 mov qword ptr [rbp + 4936], rax
# marshal arg1 = producer-box slot [zr+4880] -> [zr+4944]
 mov rax, qword ptr [rbp + 4880]
 mov qword ptr [rbp + 4944], rax
 mov rax, qword ptr [rbp + 4888]
 mov qword ptr [rbp + 4952], rax
# marshal arg2 = producer-box slot [zr+4768] -> [zr+4960]
 mov rax, qword ptr [rbp + 4768]
 mov qword ptr [rbp + 4960], rax
 mov rax, qword ptr [rbp + 4776]
 mov qword ptr [rbp + 4968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 4928]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 4912], rax
 mov qword ptr [rbp + 4920], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n134_α
 xchain196_n133_β:
 jmp main_ω
 xchain196_n134_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5136] -> [zr+5072]
 mov rax, qword ptr [rbp + 5136]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 5144]
 mov qword ptr [rbp + 5080], rax
# marshal arg1 = producer-box slot [zr+5024] -> [zr+5088]
 mov rax, qword ptr [rbp + 5024]
 mov qword ptr [rbp + 5088], rax
 mov rax, qword ptr [rbp + 5032]
 mov qword ptr [rbp + 5096], rax
# marshal arg2 = producer-box slot [zr+4912] -> [zr+5104]
 mov rax, qword ptr [rbp + 4912]
 mov qword ptr [rbp + 5104], rax
 mov rax, qword ptr [rbp + 4920]
 mov qword ptr [rbp + 5112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5072]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n135_α
 xchain196_n134_β:
 jmp main_ω
 xchain196_n135_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5280] -> [zr+5216]
 mov rax, qword ptr [rbp + 5280]
 mov qword ptr [rbp + 5216], rax
 mov rax, qword ptr [rbp + 5288]
 mov qword ptr [rbp + 5224], rax
# marshal arg1 = producer-box slot [zr+5168] -> [zr+5232]
 mov rax, qword ptr [rbp + 5168]
 mov qword ptr [rbp + 5232], rax
 mov rax, qword ptr [rbp + 5176]
 mov qword ptr [rbp + 5240], rax
# marshal arg2 = producer-box slot [zr+5056] -> [zr+5248]
 mov rax, qword ptr [rbp + 5056]
 mov qword ptr [rbp + 5248], rax
 mov rax, qword ptr [rbp + 5064]
 mov qword ptr [rbp + 5256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5216]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5200], rax
 mov qword ptr [rbp + 5208], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n136_α
 xchain196_n135_β:
 jmp main_ω
 xchain196_n136_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5424] -> [zr+5360]
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 5360], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 5368], rax
# marshal arg1 = producer-box slot [zr+5312] -> [zr+5376]
 mov rax, qword ptr [rbp + 5312]
 mov qword ptr [rbp + 5376], rax
 mov rax, qword ptr [rbp + 5320]
 mov qword ptr [rbp + 5384], rax
# marshal arg2 = producer-box slot [zr+5200] -> [zr+5392]
 mov rax, qword ptr [rbp + 5200]
 mov qword ptr [rbp + 5392], rax
 mov rax, qword ptr [rbp + 5208]
 mov qword ptr [rbp + 5400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5360]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5344], rax
 mov qword ptr [rbp + 5352], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n137_α
 xchain196_n136_β:
 jmp main_ω
 xchain196_n137_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5568] -> [zr+5504]
 mov rax, qword ptr [rbp + 5568]
 mov qword ptr [rbp + 5504], rax
 mov rax, qword ptr [rbp + 5576]
 mov qword ptr [rbp + 5512], rax
# marshal arg1 = producer-box slot [zr+5456] -> [zr+5520]
 mov rax, qword ptr [rbp + 5456]
 mov qword ptr [rbp + 5520], rax
 mov rax, qword ptr [rbp + 5464]
 mov qword ptr [rbp + 5528], rax
# marshal arg2 = producer-box slot [zr+5344] -> [zr+5536]
 mov rax, qword ptr [rbp + 5344]
 mov qword ptr [rbp + 5536], rax
 mov rax, qword ptr [rbp + 5352]
 mov qword ptr [rbp + 5544], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5504]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5488], rax
 mov qword ptr [rbp + 5496], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n138_α
 xchain196_n137_β:
 jmp main_ω
 xchain196_n138_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5712] -> [zr+5648]
 mov rax, qword ptr [rbp + 5712]
 mov qword ptr [rbp + 5648], rax
 mov rax, qword ptr [rbp + 5720]
 mov qword ptr [rbp + 5656], rax
# marshal arg1 = producer-box slot [zr+5600] -> [zr+5664]
 mov rax, qword ptr [rbp + 5600]
 mov qword ptr [rbp + 5664], rax
 mov rax, qword ptr [rbp + 5608]
 mov qword ptr [rbp + 5672], rax
# marshal arg2 = producer-box slot [zr+5488] -> [zr+5680]
 mov rax, qword ptr [rbp + 5488]
 mov qword ptr [rbp + 5680], rax
 mov rax, qword ptr [rbp + 5496]
 mov qword ptr [rbp + 5688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5648]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5632], rax
 mov qword ptr [rbp + 5640], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n139_α
 xchain196_n138_β:
 jmp main_ω
 xchain196_n139_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5856] -> [zr+5792]
 mov rax, qword ptr [rbp + 5856]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 5864]
 mov qword ptr [rbp + 5800], rax
# marshal arg1 = producer-box slot [zr+5744] -> [zr+5808]
 mov rax, qword ptr [rbp + 5744]
 mov qword ptr [rbp + 5808], rax
 mov rax, qword ptr [rbp + 5752]
 mov qword ptr [rbp + 5816], rax
# marshal arg2 = producer-box slot [zr+5632] -> [zr+5824]
 mov rax, qword ptr [rbp + 5632]
 mov qword ptr [rbp + 5824], rax
 mov rax, qword ptr [rbp + 5640]
 mov qword ptr [rbp + 5832], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5792]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5776], rax
 mov qword ptr [rbp + 5784], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n140_α
 xchain196_n139_β:
 jmp main_ω
 xchain196_n140_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6000] -> [zr+5936]
 mov rax, qword ptr [rbp + 6000]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 6008]
 mov qword ptr [rbp + 5944], rax
# marshal arg1 = producer-box slot [zr+5888] -> [zr+5952]
 mov rax, qword ptr [rbp + 5888]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 5896]
 mov qword ptr [rbp + 5960], rax
# marshal arg2 = producer-box slot [zr+5776] -> [zr+5968]
 mov rax, qword ptr [rbp + 5776]
 mov qword ptr [rbp + 5968], rax
 mov rax, qword ptr [rbp + 5784]
 mov qword ptr [rbp + 5976], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 5936]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n141_α
 xchain196_n140_β:
 jmp main_ω
 xchain196_n141_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6144] -> [zr+6080]
 mov rax, qword ptr [rbp + 6144]
 mov qword ptr [rbp + 6080], rax
 mov rax, qword ptr [rbp + 6152]
 mov qword ptr [rbp + 6088], rax
# marshal arg1 = producer-box slot [zr+6032] -> [zr+6096]
 mov rax, qword ptr [rbp + 6032]
 mov qword ptr [rbp + 6096], rax
 mov rax, qword ptr [rbp + 6040]
 mov qword ptr [rbp + 6104], rax
# marshal arg2 = producer-box slot [zr+5920] -> [zr+6112]
 mov rax, qword ptr [rbp + 5920]
 mov qword ptr [rbp + 6112], rax
 mov rax, qword ptr [rbp + 5928]
 mov qword ptr [rbp + 6120], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6080]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6064], rax
 mov qword ptr [rbp + 6072], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n142_α
 xchain196_n141_β:
 jmp main_ω
 xchain196_n142_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6288] -> [zr+6224]
 mov rax, qword ptr [rbp + 6288]
 mov qword ptr [rbp + 6224], rax
 mov rax, qword ptr [rbp + 6296]
 mov qword ptr [rbp + 6232], rax
# marshal arg1 = producer-box slot [zr+6176] -> [zr+6240]
 mov rax, qword ptr [rbp + 6176]
 mov qword ptr [rbp + 6240], rax
 mov rax, qword ptr [rbp + 6184]
 mov qword ptr [rbp + 6248], rax
# marshal arg2 = producer-box slot [zr+6064] -> [zr+6256]
 mov rax, qword ptr [rbp + 6064]
 mov qword ptr [rbp + 6256], rax
 mov rax, qword ptr [rbp + 6072]
 mov qword ptr [rbp + 6264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6224]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6208], rax
 mov qword ptr [rbp + 6216], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n143_α
 xchain196_n142_β:
 jmp main_ω
 xchain196_n143_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6432] -> [zr+6368]
 mov rax, qword ptr [rbp + 6432]
 mov qword ptr [rbp + 6368], rax
 mov rax, qword ptr [rbp + 6440]
 mov qword ptr [rbp + 6376], rax
# marshal arg1 = producer-box slot [zr+6320] -> [zr+6384]
 mov rax, qword ptr [rbp + 6320]
 mov qword ptr [rbp + 6384], rax
 mov rax, qword ptr [rbp + 6328]
 mov qword ptr [rbp + 6392], rax
# marshal arg2 = producer-box slot [zr+6208] -> [zr+6400]
 mov rax, qword ptr [rbp + 6208]
 mov qword ptr [rbp + 6400], rax
 mov rax, qword ptr [rbp + 6216]
 mov qword ptr [rbp + 6408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6368]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n144_α
 xchain196_n143_β:
 jmp main_ω
 xchain196_n144_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6576] -> [zr+6512]
 mov rax, qword ptr [rbp + 6576]
 mov qword ptr [rbp + 6512], rax
 mov rax, qword ptr [rbp + 6584]
 mov qword ptr [rbp + 6520], rax
# marshal arg1 = producer-box slot [zr+6464] -> [zr+6528]
 mov rax, qword ptr [rbp + 6464]
 mov qword ptr [rbp + 6528], rax
 mov rax, qword ptr [rbp + 6472]
 mov qword ptr [rbp + 6536], rax
# marshal arg2 = producer-box slot [zr+6352] -> [zr+6544]
 mov rax, qword ptr [rbp + 6352]
 mov qword ptr [rbp + 6544], rax
 mov rax, qword ptr [rbp + 6360]
 mov qword ptr [rbp + 6552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6512]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6496], rax
 mov qword ptr [rbp + 6504], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n145_α
 xchain196_n144_β:
 jmp main_ω
 xchain196_n145_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6720] -> [zr+6656]
 mov rax, qword ptr [rbp + 6720]
 mov qword ptr [rbp + 6656], rax
 mov rax, qword ptr [rbp + 6728]
 mov qword ptr [rbp + 6664], rax
# marshal arg1 = producer-box slot [zr+6608] -> [zr+6672]
 mov rax, qword ptr [rbp + 6608]
 mov qword ptr [rbp + 6672], rax
 mov rax, qword ptr [rbp + 6616]
 mov qword ptr [rbp + 6680], rax
# marshal arg2 = producer-box slot [zr+6496] -> [zr+6688]
 mov rax, qword ptr [rbp + 6496]
 mov qword ptr [rbp + 6688], rax
 mov rax, qword ptr [rbp + 6504]
 mov qword ptr [rbp + 6696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6656]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6640], rax
 mov qword ptr [rbp + 6648], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n146_α
 xchain196_n145_β:
 jmp main_ω
 xchain196_n146_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6864] -> [zr+6800]
 mov rax, qword ptr [rbp + 6864]
 mov qword ptr [rbp + 6800], rax
 mov rax, qword ptr [rbp + 6872]
 mov qword ptr [rbp + 6808], rax
# marshal arg1 = producer-box slot [zr+6752] -> [zr+6816]
 mov rax, qword ptr [rbp + 6752]
 mov qword ptr [rbp + 6816], rax
 mov rax, qword ptr [rbp + 6760]
 mov qword ptr [rbp + 6824], rax
# marshal arg2 = producer-box slot [zr+6640] -> [zr+6832]
 mov rax, qword ptr [rbp + 6640]
 mov qword ptr [rbp + 6832], rax
 mov rax, qword ptr [rbp + 6648]
 mov qword ptr [rbp + 6840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6800]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n147_α
 xchain196_n146_β:
 jmp main_ω
 xchain196_n147_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7008] -> [zr+6944]
 mov rax, qword ptr [rbp + 7008]
 mov qword ptr [rbp + 6944], rax
 mov rax, qword ptr [rbp + 7016]
 mov qword ptr [rbp + 6952], rax
# marshal arg1 = producer-box slot [zr+6896] -> [zr+6960]
 mov rax, qword ptr [rbp + 6896]
 mov qword ptr [rbp + 6960], rax
 mov rax, qword ptr [rbp + 6904]
 mov qword ptr [rbp + 6968], rax
# marshal arg2 = producer-box slot [zr+6784] -> [zr+6976]
 mov rax, qword ptr [rbp + 6784]
 mov qword ptr [rbp + 6976], rax
 mov rax, qword ptr [rbp + 6792]
 mov qword ptr [rbp + 6984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 6944]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 6928], rax
 mov qword ptr [rbp + 6936], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n148_α
 xchain196_n147_β:
 jmp main_ω
 xchain196_n148_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7152] -> [zr+7088]
 mov rax, qword ptr [rbp + 7152]
 mov qword ptr [rbp + 7088], rax
 mov rax, qword ptr [rbp + 7160]
 mov qword ptr [rbp + 7096], rax
# marshal arg1 = producer-box slot [zr+7040] -> [zr+7104]
 mov rax, qword ptr [rbp + 7040]
 mov qword ptr [rbp + 7104], rax
 mov rax, qword ptr [rbp + 7048]
 mov qword ptr [rbp + 7112], rax
# marshal arg2 = producer-box slot [zr+6928] -> [zr+7120]
 mov rax, qword ptr [rbp + 6928]
 mov qword ptr [rbp + 7120], rax
 mov rax, qword ptr [rbp + 6936]
 mov qword ptr [rbp + 7128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7088]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7072], rax
 mov qword ptr [rbp + 7080], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n149_α
 xchain196_n148_β:
 jmp main_ω
 xchain196_n149_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7296] -> [zr+7232]
 mov rax, qword ptr [rbp + 7296]
 mov qword ptr [rbp + 7232], rax
 mov rax, qword ptr [rbp + 7304]
 mov qword ptr [rbp + 7240], rax
# marshal arg1 = producer-box slot [zr+7184] -> [zr+7248]
 mov rax, qword ptr [rbp + 7184]
 mov qword ptr [rbp + 7248], rax
 mov rax, qword ptr [rbp + 7192]
 mov qword ptr [rbp + 7256], rax
# marshal arg2 = producer-box slot [zr+7072] -> [zr+7264]
 mov rax, qword ptr [rbp + 7072]
 mov qword ptr [rbp + 7264], rax
 mov rax, qword ptr [rbp + 7080]
 mov qword ptr [rbp + 7272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7232]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n150_α
 xchain196_n149_β:
 jmp main_ω
 xchain196_n150_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7440] -> [zr+7376]
 mov rax, qword ptr [rbp + 7440]
 mov qword ptr [rbp + 7376], rax
 mov rax, qword ptr [rbp + 7448]
 mov qword ptr [rbp + 7384], rax
# marshal arg1 = producer-box slot [zr+7328] -> [zr+7392]
 mov rax, qword ptr [rbp + 7328]
 mov qword ptr [rbp + 7392], rax
 mov rax, qword ptr [rbp + 7336]
 mov qword ptr [rbp + 7400], rax
# marshal arg2 = producer-box slot [zr+7216] -> [zr+7408]
 mov rax, qword ptr [rbp + 7216]
 mov qword ptr [rbp + 7408], rax
 mov rax, qword ptr [rbp + 7224]
 mov qword ptr [rbp + 7416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7376]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 cmp eax, 99
 je main_ω
 jmp xchain196_n151_α
 xchain196_n150_β:
 jmp main_ω
 xchain196_n151_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7584] -> [zr+7520]
 mov rax, qword ptr [rbp + 7584]
 mov qword ptr [rbp + 7520], rax
 mov rax, qword ptr [rbp + 7592]
 mov qword ptr [rbp + 7528], rax
# marshal arg1 = producer-box slot [zr+7472] -> [zr+7536]
 mov rax, qword ptr [rbp + 7472]
 mov qword ptr [rbp + 7536], rax
 mov rax, qword ptr [rbp + 7480]
 mov qword ptr [rbp + 7544], rax
# marshal arg2 = producer-box slot [zr+7360] -> [zr+7552]
 mov rax, qword ptr [rbp + 7360]
 mov qword ptr [rbp + 7552], rax
 mov rax, qword ptr [rbp + 7368]
 mov qword ptr [rbp + 7560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 7520]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 7504], rax
 mov qword ptr [rbp + 7512], rdx
 cmp eax, 99
 je xchain196_n153_α
 jmp xchain196_n152_α
 xchain196_n151_β:
 jmp xchain196_n153_α
# IR_VAR_REF
 xchain196_n152_α:
 mov rax, 4294967305
 lea rdx, [rbp + 7696]
 mov qword ptr [rbp + 7616], rax
 mov qword ptr [rbp + 7624], rdx
 jmp xchain196_n154_α
 xchain196_n153_α:
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
 xchain196_n153_β:
 jmp main_ω
# IR_LIT_STRING
 xchain196_n154_α:
 mov qword ptr [rbp + 7648], 1
 mov rax, qword ptr [rip + .Lx352_0]
 mov qword ptr [rbp + 7656], rax
 jmp xchain196_n155_α
.Lx352_0:
 .quad .Lx352_0_s
.Lx352_0_s:
 .string "[]"
 xchain196_n155_α:
 mov qword ptr [rbp + 352], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 7504]
 mov rdx, qword ptr [rbp + 7512]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 7616]
 mov rdx, qword ptr [rbp + 7624]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 7648]
 mov rdx, qword ptr [rbp + 7656]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx354_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx354_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx354_3]
 lea rdx, [rip + .Lx354_4]
 jmp rax
.Lx354_3:
 mov qword ptr [rbp + 360], rsp
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx354_5
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx354_2
.Lx354_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx354_2
.Lx354_4:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx354_6
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx354_2
.Lx354_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx354_2
.Lx354_1:
 call rt_faildescr@PLT
.Lx354_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain196_n153_α
 jmp xchain196_n156_α
 xchain196_n155_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 360]
 jmp qword ptr [rsp]
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
 .string "qsort/3"
# IR_VAR
 xchain196_n156_α:
 mov rax, qword ptr [rbp + 7696]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 7704]
 mov qword ptr [rbp + 264], rax
 jmp xchain196_n157_α
 xchain196_n157_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn358: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn358]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain196_n155_β
 jmp xchain196_n158_α
 xchain196_n157_β:
 jmp xchain196_n155_β
# IR_LIT_STRING
 xchain196_n158_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx359_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain196_n159_α
.Lx359_0:
 .quad .Lx359_0_s
.Lx359_0_s:
 .string ""
 xchain196_n159_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn361: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn361]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain196_n155_β
 jmp xchain196_n160_α
 xchain196_n159_β:
 jmp xchain196_n155_β
# IR_MOVE_LABEL
 xchain196_n160_α:
 lea rax, [rip + xchain196_n155_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain196_n161_α:
 jmp qword ptr [rbp + 32]
 xchain196_n161_β:
 jmp main_ω
main_β:
jmp xchain196_n161_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 7688]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 7688]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
