  .intel_syntax noprefix
  .text
  .globl proc_dow$2F2_α
proc_dow$2F2_α:
#=======================================================================================================================
    .global proc_dow$2F2_α
    .global proc_dow$2F2_β
    .global proc_dow$2F2_γ
    .global proc_dow$2F2_ω
  sub rsp, 3200
  mov [rsp + 3176], rcx
  mov [rsp + 3184], rdx
  mov [rsp + 3192], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3160], rsp
  mov rdi, rsp
  mov esi, 3136
  mov edx, 3168
  call rt_jmp_frame_lexprep2@PLT
proc_dow$2F2_α_body:
lea rax, [rip + xchain0_n20_β]
mov qword ptr [rbp + 3136], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_dow$2F2_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_dow$2F2_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 3072], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 3080], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n3_α:
 mov qword ptr [rbp + 3104], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 3112], rax
 jmp xchain0_n4_α
.Lx5_0:
 .quad 0
 xchain0_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3040] -> [zr+2992]
 mov rax, qword ptr [rbp + 3040]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3048]
 mov qword ptr [rbp + 3000], rax
# marshal arg1 = producer-box slot [zr+3072] -> [zr+3008]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3016], rax
# marshal arg2 = producer-box slot [zr+3104] -> [zr+3024]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3024], rax
 mov rax, qword ptr [rbp + 3112]
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
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2608], rax
 mov qword ptr [rbp + 2616], rdx
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n7_α:
 mov qword ptr [rbp + 2944], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain0_n9_α
.Lx11_0:
 .quad 0
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [rbp + 2640], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rbp + 2648], rax
 jmp xchain0_n10_α
.Lx12_0:
 .quad 1
 xchain0_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2912] -> [zr+2880]
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2888], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2880]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [rbp + 2672], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain0_n13_α
.Lx14_0:
 .quad 1
# IR_VAR_REF
 xchain0_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2800], rax
 mov qword ptr [rbp + 2808], rdx
 jmp xchain0_n14_α
 xchain0_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2720]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2720]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 cmp eax, 99
 je proc_dow$2F2_ω
 jmp xchain0_n6_α
 xchain0_n12_β:
 jmp proc_dow$2F2_ω
 xchain0_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2608] -> [zr+2560]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2568], rax
# marshal arg1 = producer-box slot [zr+2640] -> [zr+2576]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2584], rax
# marshal arg2 = producer-box slot [zr+2672] -> [zr+2592]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2592], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2560]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n16_α
# IR_LIT_STRING
 xchain0_n14_α:
 mov qword ptr [rbp + 2832], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [rbp + 2840], rax
 jmp xchain0_n17_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "sun"
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain0_n18_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain0_n19_α
 xchain0_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2800] -> [zr+2768]
 mov rax, qword ptr [rbp + 2800]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2808]
 mov qword ptr [rbp + 2776], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2768]
 mov rsi, qword ptr [rip + .Lx24_2]
 jmp .Lx24_3
.Lx24_2:
 .quad .Lx24_2_s
.Lx24_2_s:
 .string "sun"
.Lx24_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n18_α:
 mov qword ptr [rbp + 2512], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [rbp + 2520], rax
 jmp xchain0_n21_α
.Lx25_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n19_α:
 mov qword ptr [rbp + 2208], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain0_n22_α
.Lx26_0:
 .quad 1
# IR_SUSPEND yield+resume
 xchain0_n20_α:
 lea rax, [rip + xchain0_n20_β]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2F2_γ
 xchain0_n20_β:
 jmp xchain0_n12_α
 xchain0_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+2448]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2456], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2448]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n24_α
# IR_LIT_INTEGER
 xchain0_n22_α:
 mov qword ptr [rbp + 2240], 6
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain0_n25_α
.Lx30_0:
 .quad 2
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain0_n26_α
 xchain0_n24_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2288]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2288]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je proc_dow$2F2_ω
 jmp xchain0_n16_α
 xchain0_n24_β:
 jmp proc_dow$2F2_ω
 xchain0_n25_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2176] -> [zr+2128]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2136], rax
# marshal arg1 = producer-box slot [zr+2208] -> [zr+2144]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2152], rax
# marshal arg2 = producer-box slot [zr+2240] -> [zr+2160]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2128]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n28_α
# IR_LIT_STRING
 xchain0_n26_α:
 mov qword ptr [rbp + 2400], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain0_n29_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "mon"
# IR_VAR_REF
 xchain0_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain0_n30_α
# IR_VAR_REF
 xchain0_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain0_n31_α
 xchain0_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2336]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2344], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2336]
 mov rsi, qword ptr [rip + .Lx40_2]
 jmp .Lx40_3
.Lx40_2:
 .quad .Lx40_2_s
.Lx40_2_s:
 .string "mon"
.Lx40_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp xchain0_n24_α
# IR_LIT_INTEGER
 xchain0_n30_α:
 mov qword ptr [rbp + 2080], 6
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain0_n33_α
.Lx41_0:
 .quad 2
# IR_LIT_INTEGER
 xchain0_n31_α:
 mov qword ptr [rbp + 1776], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [rbp + 1784], rax
 jmp xchain0_n34_α
.Lx42_0:
 .quad 1
# IR_SUSPEND yield+resume
 xchain0_n32_α:
 lea rax, [rip + xchain0_n32_β]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2F2_γ
 xchain0_n32_β:
 jmp xchain0_n24_α
 xchain0_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+2016]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 2024], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2016]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je xchain0_n36_α
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n36_α
# IR_LIT_INTEGER
 xchain0_n34_α:
 mov qword ptr [rbp + 1808], 6
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain0_n37_α
.Lx46_0:
 .quad 3
# IR_VAR_REF
 xchain0_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain0_n38_α
 xchain0_n36_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1856]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1856]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je proc_dow$2F2_ω
 jmp xchain0_n28_α
 xchain0_n36_β:
 jmp proc_dow$2F2_ω
 xchain0_n37_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+1808] -> [zr+1728]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1696]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 cmp eax, 99
 je xchain0_n40_α
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp xchain0_n40_α
# IR_LIT_STRING
 xchain0_n38_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain0_n41_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "tue"
# IR_VAR_REF
 xchain0_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain0_n42_α
# IR_VAR_REF
 xchain0_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain0_n43_α
 xchain0_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1936] -> [zr+1904]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1912], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1904]
 mov rsi, qword ptr [rip + .Lx56_2]
 jmp .Lx56_3
.Lx56_2:
 .quad .Lx56_2_s
.Lx56_2_s:
 .string "tue"
.Lx56_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain0_n36_α
 jmp xchain0_n44_α
 xchain0_n41_β:
 jmp xchain0_n36_α
# IR_LIT_INTEGER
 xchain0_n42_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain0_n45_α
.Lx57_0:
 .quad 3
# IR_LIT_INTEGER
 xchain0_n43_α:
 mov qword ptr [rbp + 1344], 6
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain0_n46_α
.Lx58_0:
 .quad 1
# IR_SUSPEND yield+resume
 xchain0_n44_α:
 lea rax, [rip + xchain0_n44_β]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2F2_γ
 xchain0_n44_β:
 jmp xchain0_n36_α
 xchain0_n45_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1616] -> [zr+1584]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1592], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1584]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 cmp eax, 99
 je xchain0_n48_α
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n48_α
# IR_LIT_INTEGER
 xchain0_n46_α:
 mov qword ptr [rbp + 1376], 6
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain0_n49_α
.Lx62_0:
 .quad 4
# IR_VAR_REF
 xchain0_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain0_n50_α
 xchain0_n48_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1424]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1432], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1424]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je proc_dow$2F2_ω
 jmp xchain0_n40_α
 xchain0_n48_β:
 jmp proc_dow$2F2_ω
 xchain0_n49_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+1376] -> [zr+1296]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1264]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain0_n52_α
 jmp xchain0_n51_α
 xchain0_n49_β:
 jmp xchain0_n52_α
# IR_LIT_STRING
 xchain0_n50_α:
 mov qword ptr [rbp + 1536], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain0_n53_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "wed"
# IR_VAR_REF
 xchain0_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n54_α
# IR_VAR_REF
 xchain0_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 jmp xchain0_n55_α
 xchain0_n53_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1472]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1480], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1472]
 mov rsi, qword ptr [rip + .Lx72_2]
 jmp .Lx72_3
.Lx72_2:
 .quad .Lx72_2_s
.Lx72_2_s:
 .string "wed"
.Lx72_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain0_n48_α
 jmp xchain0_n56_α
 xchain0_n53_β:
 jmp xchain0_n48_α
# IR_LIT_INTEGER
 xchain0_n54_α:
 mov qword ptr [rbp + 1216], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain0_n57_α
.Lx73_0:
 .quad 4
# IR_LIT_INTEGER
 xchain0_n55_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain0_n58_α
.Lx74_0:
 .quad 1
# IR_SUSPEND yield+resume
 xchain0_n56_α:
 lea rax, [rip + xchain0_n56_β]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2F2_γ
 xchain0_n56_β:
 jmp xchain0_n48_α
 xchain0_n57_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1152]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1160], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1152]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain0_n60_α
 jmp xchain0_n59_α
 xchain0_n57_β:
 jmp xchain0_n60_α
# IR_LIT_INTEGER
 xchain0_n58_α:
 mov qword ptr [rbp + 944], 6
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain0_n61_α
.Lx78_0:
 .quad 5
# IR_VAR_REF
 xchain0_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain0_n62_α
 xchain0_n60_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+992]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je proc_dow$2F2_ω
 jmp xchain0_n52_α
 xchain0_n60_β:
 jmp proc_dow$2F2_ω
 xchain0_n61_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+944] -> [zr+864]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 832]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain0_n64_α
 jmp xchain0_n63_α
 xchain0_n61_β:
 jmp xchain0_n64_α
# IR_LIT_STRING
 xchain0_n62_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain0_n65_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "thu"
# IR_VAR_REF
 xchain0_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain0_n66_α
# IR_VAR_REF
 xchain0_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain0_n67_α
 xchain0_n65_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1040]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1048], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1040]
 mov rsi, qword ptr [rip + .Lx88_2]
 jmp .Lx88_3
.Lx88_2:
 .quad .Lx88_2_s
.Lx88_2_s:
 .string "thu"
.Lx88_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain0_n60_α
 jmp xchain0_n68_α
 xchain0_n65_β:
 jmp xchain0_n60_α
# IR_LIT_INTEGER
 xchain0_n66_α:
 mov qword ptr [rbp + 784], 6
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain0_n69_α
.Lx89_0:
 .quad 5
# IR_LIT_INTEGER
 xchain0_n67_α:
 mov qword ptr [rbp + 480], 6
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain0_n70_α
.Lx90_0:
 .quad 1
# IR_SUSPEND yield+resume
 xchain0_n68_α:
 lea rax, [rip + xchain0_n68_β]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2F2_γ
 xchain0_n68_β:
 jmp xchain0_n60_α
 xchain0_n69_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+752] -> [zr+720]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 728], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 720]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain0_n72_α
 jmp xchain0_n71_α
 xchain0_n69_β:
 jmp xchain0_n72_α
# IR_LIT_INTEGER
 xchain0_n70_α:
 mov qword ptr [rbp + 512], 6
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain0_n73_α
.Lx94_0:
 .quad 6
# IR_VAR_REF
 xchain0_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n74_α
 xchain0_n72_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+560]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je proc_dow$2F2_ω
 jmp xchain0_n64_α
 xchain0_n72_β:
 jmp proc_dow$2F2_ω
 xchain0_n73_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+400]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+416]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 424], rax
# marshal arg2 = producer-box slot [zr+512] -> [zr+432]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 400]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain0_n76_α
 jmp xchain0_n75_α
 xchain0_n73_β:
 jmp xchain0_n76_α
# IR_LIT_STRING
 xchain0_n74_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain0_n77_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "fri"
# IR_VAR_REF
 xchain0_n75_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain0_n78_α
 xchain0_n76_α:
# BOX IR_CALL $trail_unwind(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+128]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_unwind (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 1
 call rt_pl_dop_trail_unwind@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_dow$2F2_ω
 jmp proc_dow$2F2_ω
 xchain0_n76_β:
 jmp proc_dow$2F2_ω
 xchain0_n77_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+608]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 608]
 mov rsi, qword ptr [rip + .Lx103_2]
 jmp .Lx103_3
.Lx103_2:
 .quad .Lx103_2_s
.Lx103_2_s:
 .string "fri"
.Lx103_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je xchain0_n72_α
 jmp xchain0_n79_α
 xchain0_n77_β:
 jmp xchain0_n72_α
# IR_LIT_INTEGER
 xchain0_n78_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain0_n80_α
.Lx104_0:
 .quad 6
# IR_SUSPEND yield+resume
 xchain0_n79_α:
 lea rax, [rip + xchain0_n79_β]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2F2_γ
 xchain0_n79_β:
 jmp xchain0_n72_α
 xchain0_n80_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+320] -> [zr+288]
 mov rax, qword ptr [rbp + 320]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 328]
 mov qword ptr [rbp + 296], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 288]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je xchain0_n76_α
 jmp xchain0_n81_α
 xchain0_n80_β:
 jmp xchain0_n76_α
# IR_VAR_REF
 xchain0_n81_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 jmp xchain0_n82_α
# IR_LIT_STRING
 xchain0_n82_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain0_n83_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "sat"
 xchain0_n83_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+176]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 176]
 mov rsi, qword ptr [rip + .Lx111_2]
 jmp .Lx111_3
.Lx111_2:
 .quad .Lx111_2_s
.Lx111_2_s:
 .string "sat"
.Lx111_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n76_α
 jmp xchain0_n84_α
 xchain0_n83_β:
 jmp xchain0_n76_α
# IR_SUSPEND yield+resume
 xchain0_n84_α:
 lea rax, [rip + xchain0_n84_β]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2F2_γ
 xchain0_n84_β:
 jmp xchain0_n76_α
proc_dow$2F2_res:
add rsp, 8
pop rbp
proc_dow$2F2_β:
jmp qword ptr [rbp + 3136]
proc_dow$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_dow$2F2_res]
push rax
mov rax, [rbp + 3176]
mov rbp, [rbp + 3192]
jmp rax
proc_dow$2F2_ω:
mov rax, [rbp + 3184]
lea rsp, [rbp + 3200]
mov rbp, [rbp + 3192]
jmp rax
  .globl proc_day_of_week$2F4_α
proc_day_of_week$2F4_α:
#=======================================================================================================================
    .global proc_day_of_week$2F4_α
    .global proc_day_of_week$2F4_β
    .global proc_day_of_week$2F4_γ
    .global proc_day_of_week$2F4_ω
  sub rsp, 1264
  mov [rsp + 1240], rcx
  mov [rsp + 1248], rdx
  mov [rsp + 1256], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1128], rsp
  mov rdi, rsp
  mov esi, 1104
  mov edx, 1232
  call rt_jmp_frame_lexprep2@PLT
proc_day_of_week$2F4_α_body:
lea rax, [rip + xchain114_n24_β]
mov qword ptr [rbp + 1104], rax
 xchain114_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_day_of_week$2F4_ω
 jmp xchain114_n1_α
 xchain114_n0_β:
 jmp proc_day_of_week$2F4_ω
# IR_VAR_REF
 xchain114_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain114_n2_α
# IR_VAR_REF
 xchain114_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1136]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain114_n3_α
 xchain114_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+1008]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1024]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1032], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1008]
 lea r8, [rbp + 1008]
.Lx120_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx120_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx120_41
 cmp esi, 1
 jne .Lx120_55
 mov r8, rax
 jmp .Lx120_40
.Lx120_55:
 cmp esi, 2
 jne .Lx120_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx120_41
 mov r8, rax
 jmp .Lx120_40
.Lx120_56:
 cmp eax, 13
 jne .Lx120_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx120_41
 cmp rax, r8
 je .Lx120_41
 mov r8, rax
 jmp .Lx120_40
.Lx120_41:
 lea r9, [rbp + 1024]
.Lx120_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx120_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx120_43
 cmp esi, 1
 jne .Lx120_57
 mov r9, rax
 jmp .Lx120_42
.Lx120_57:
 cmp esi, 2
 jne .Lx120_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx120_43
 mov r9, rax
 jmp .Lx120_42
.Lx120_58:
 cmp eax, 13
 jne .Lx120_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx120_43
 cmp rax, r9
 je .Lx120_43
 mov r9, rax
 jmp .Lx120_42
.Lx120_43:
 cmp r8, r9
 je .Lx120_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx120_44
 cmp eax, 99
 je .Lx120_44
 cmp eax, 13
 jne .Lx120_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx120_44
 jmp .Lx120_45
.Lx120_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx120_53
 cmp eax, 99
 je .Lx120_53
 cmp eax, 13
 jne .Lx120_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx120_53
 jmp .Lx120_46
.Lx120_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx120_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx120_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx120_51
.Lx120_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx120_47
 cmp eax, 99
 je .Lx120_47
 cmp eax, 13
 jne .Lx120_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx120_47
 jmp .Lx120_48
.Lx120_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx120_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx120_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx120_51
.Lx120_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx120_49
 cmp edx, 14
 je .Lx120_53
 jmp .Lx120_52
.Lx120_49:
 cmp edx, 14
 je .Lx120_52
 cmp ecx, 7
 je .Lx120_53
 cmp edx, 7
 je .Lx120_53
 cmp ecx, 6
 jne .Lx120_50
 cmp edx, 6
 jne .Lx120_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx120_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx120_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx120_51
 jmp .Lx120_52
.Lx120_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx120_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx120_53
.Lx120_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx120_54
.Lx120_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx120_54
.Lx120_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx120_54:
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain114_n5_α
 jmp xchain114_n4_α
 xchain114_n3_β:
 jmp xchain114_n5_α
# IR_VAR_REF
 xchain114_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain114_n6_α
 xchain114_n5_α:
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
 je proc_day_of_week$2F4_ω
 jmp proc_day_of_week$2F4_ω
 xchain114_n5_β:
 jmp proc_day_of_week$2F4_ω
# IR_VAR_REF
 xchain114_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1216]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain114_n7_α
 xchain114_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+896]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 904], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 896]
 lea r8, [rbp + 896]
.Lx126_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx126_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx126_41
 cmp esi, 1
 jne .Lx126_55
 mov r8, rax
 jmp .Lx126_40
.Lx126_55:
 cmp esi, 2
 jne .Lx126_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx126_41
 mov r8, rax
 jmp .Lx126_40
.Lx126_56:
 cmp eax, 13
 jne .Lx126_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx126_41
 cmp rax, r8
 je .Lx126_41
 mov r8, rax
 jmp .Lx126_40
.Lx126_41:
 lea r9, [rbp + 912]
.Lx126_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx126_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx126_43
 cmp esi, 1
 jne .Lx126_57
 mov r9, rax
 jmp .Lx126_42
.Lx126_57:
 cmp esi, 2
 jne .Lx126_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx126_43
 mov r9, rax
 jmp .Lx126_42
.Lx126_58:
 cmp eax, 13
 jne .Lx126_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx126_43
 cmp rax, r9
 je .Lx126_43
 mov r9, rax
 jmp .Lx126_42
.Lx126_43:
 cmp r8, r9
 je .Lx126_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx126_44
 cmp eax, 99
 je .Lx126_44
 cmp eax, 13
 jne .Lx126_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx126_44
 jmp .Lx126_45
.Lx126_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx126_53
 cmp eax, 99
 je .Lx126_53
 cmp eax, 13
 jne .Lx126_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx126_53
 jmp .Lx126_46
.Lx126_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx126_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx126_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx126_51
.Lx126_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx126_47
 cmp eax, 99
 je .Lx126_47
 cmp eax, 13
 jne .Lx126_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx126_47
 jmp .Lx126_48
.Lx126_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx126_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx126_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx126_51
.Lx126_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx126_49
 cmp edx, 14
 je .Lx126_53
 jmp .Lx126_52
.Lx126_49:
 cmp edx, 14
 je .Lx126_52
 cmp ecx, 7
 je .Lx126_53
 cmp edx, 7
 je .Lx126_53
 cmp ecx, 6
 jne .Lx126_50
 cmp edx, 6
 jne .Lx126_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx126_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx126_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx126_51
 jmp .Lx126_52
.Lx126_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx126_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx126_53
.Lx126_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx126_54
.Lx126_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx126_54
.Lx126_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx126_54:
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain114_n5_α
 jmp xchain114_n8_α
 xchain114_n7_β:
 jmp xchain114_n5_α
# IR_VAR_REF
 xchain114_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain114_n9_α
# IR_VAR_REF
 xchain114_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1152]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain114_n10_α
 xchain114_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+784]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 808], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 784]
 lea r8, [rbp + 784]
.Lx131_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx131_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx131_41
 cmp esi, 1
 jne .Lx131_55
 mov r8, rax
 jmp .Lx131_40
.Lx131_55:
 cmp esi, 2
 jne .Lx131_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx131_41
 mov r8, rax
 jmp .Lx131_40
.Lx131_56:
 cmp eax, 13
 jne .Lx131_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx131_41
 cmp rax, r8
 je .Lx131_41
 mov r8, rax
 jmp .Lx131_40
.Lx131_41:
 lea r9, [rbp + 800]
.Lx131_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx131_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx131_43
 cmp esi, 1
 jne .Lx131_57
 mov r9, rax
 jmp .Lx131_42
.Lx131_57:
 cmp esi, 2
 jne .Lx131_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx131_43
 mov r9, rax
 jmp .Lx131_42
.Lx131_58:
 cmp eax, 13
 jne .Lx131_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx131_43
 cmp rax, r9
 je .Lx131_43
 mov r9, rax
 jmp .Lx131_42
.Lx131_43:
 cmp r8, r9
 je .Lx131_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx131_44
 cmp eax, 99
 je .Lx131_44
 cmp eax, 13
 jne .Lx131_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx131_44
 jmp .Lx131_45
.Lx131_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx131_53
 cmp eax, 99
 je .Lx131_53
 cmp eax, 13
 jne .Lx131_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx131_53
 jmp .Lx131_46
.Lx131_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx131_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx131_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx131_51
.Lx131_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx131_47
 cmp eax, 99
 je .Lx131_47
 cmp eax, 13
 jne .Lx131_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx131_47
 jmp .Lx131_48
.Lx131_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx131_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx131_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx131_51
.Lx131_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx131_49
 cmp edx, 14
 je .Lx131_53
 jmp .Lx131_52
.Lx131_49:
 cmp edx, 14
 je .Lx131_52
 cmp ecx, 7
 je .Lx131_53
 cmp edx, 7
 je .Lx131_53
 cmp ecx, 6
 jne .Lx131_50
 cmp edx, 6
 jne .Lx131_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx131_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx131_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx131_51
 jmp .Lx131_52
.Lx131_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx131_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx131_53
.Lx131_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx131_54
.Lx131_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx131_54
.Lx131_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx131_54:
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain114_n5_α
 jmp xchain114_n11_α
 xchain114_n10_β:
 jmp xchain114_n5_α
# IR_VAR_REF
 xchain114_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain114_n12_α
# IR_VAR_REF
 xchain114_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1200]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain114_n13_α
 xchain114_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+672]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 672]
 lea r8, [rbp + 672]
.Lx136_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx136_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx136_41
 cmp esi, 1
 jne .Lx136_55
 mov r8, rax
 jmp .Lx136_40
.Lx136_55:
 cmp esi, 2
 jne .Lx136_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx136_41
 mov r8, rax
 jmp .Lx136_40
.Lx136_56:
 cmp eax, 13
 jne .Lx136_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx136_41
 cmp rax, r8
 je .Lx136_41
 mov r8, rax
 jmp .Lx136_40
.Lx136_41:
 lea r9, [rbp + 688]
.Lx136_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx136_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx136_43
 cmp esi, 1
 jne .Lx136_57
 mov r9, rax
 jmp .Lx136_42
.Lx136_57:
 cmp esi, 2
 jne .Lx136_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx136_43
 mov r9, rax
 jmp .Lx136_42
.Lx136_58:
 cmp eax, 13
 jne .Lx136_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx136_43
 cmp rax, r9
 je .Lx136_43
 mov r9, rax
 jmp .Lx136_42
.Lx136_43:
 cmp r8, r9
 je .Lx136_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx136_44
 cmp eax, 99
 je .Lx136_44
 cmp eax, 13
 jne .Lx136_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx136_44
 jmp .Lx136_45
.Lx136_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx136_53
 cmp eax, 99
 je .Lx136_53
 cmp eax, 13
 jne .Lx136_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx136_53
 jmp .Lx136_46
.Lx136_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx136_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx136_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx136_51
.Lx136_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx136_47
 cmp eax, 99
 je .Lx136_47
 cmp eax, 13
 jne .Lx136_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx136_47
 jmp .Lx136_48
.Lx136_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx136_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx136_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx136_51
.Lx136_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx136_49
 cmp edx, 14
 je .Lx136_53
 jmp .Lx136_52
.Lx136_49:
 cmp edx, 14
 je .Lx136_52
 cmp ecx, 7
 je .Lx136_53
 cmp edx, 7
 je .Lx136_53
 cmp ecx, 6
 jne .Lx136_50
 cmp edx, 6
 jne .Lx136_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx136_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx136_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx136_51
 jmp .Lx136_52
.Lx136_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx136_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx136_53
.Lx136_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx136_54
.Lx136_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx136_54
.Lx136_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx136_54:
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain114_n5_α
 jmp xchain114_n14_α
 xchain114_n13_β:
 jmp xchain114_n5_α
# IR_VAR_REF
 xchain114_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1216]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain114_n15_α
# IR_VAR_REF
 xchain114_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1168]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain114_n16_α
# IR_VAR_REF
 xchain114_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain114_n17_α
 xchain114_n17_α:
 mov qword ptr [rbp + 528], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx144_20
 mov rax, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx144_21
.Lx144_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 560]
 mov rdx, qword ptr [rbp + 568]
 call rt_arg_stage@PLT
.Lx144_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx144_22
 mov rax, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx144_23
.Lx144_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 592]
 mov rdx, qword ptr [rbp + 600]
 call rt_arg_stage@PLT
.Lx144_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx144_24
 mov rax, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx144_25
.Lx144_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 624]
 mov rdx, qword ptr [rbp + 632]
 call rt_arg_stage@PLT
.Lx144_25:
 mov rdi, qword ptr [rip + .Lx144_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx144_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx144_3]
 lea rdx, [rip + .Lx144_4]
 jmp rax
.Lx144_3:
 mov qword ptr [rbp + 536], rsp
 mov rax, qword ptr [rbp + 528]
 test rax, rax
 jne .Lx144_5
 mov qword ptr [rbp + 528], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx144_2
.Lx144_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx144_2
.Lx144_4:
 mov rax, qword ptr [rbp + 528]
 test rax, rax
 jne .Lx144_6
 mov qword ptr [rbp + 528], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx144_2
.Lx144_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx144_2
.Lx144_1:
 call rt_faildescr@PLT
.Lx144_2:
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain114_n5_α
 jmp xchain114_n18_α
 xchain114_n17_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 536]
 jmp qword ptr [rsp]
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "cal_key/3"
# IR_VAR_REF
 xchain114_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1136]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain114_n19_α
# IR_VAR_REF
 xchain114_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1152]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain114_n20_α
# IR_VAR_REF
 xchain114_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1168]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain114_n21_α
# IR_VAR_REF
 xchain114_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1184]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain114_n22_α
# IR_VAR_REF
 xchain114_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1200]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 jmp xchain114_n23_α
 xchain114_n23_α:
 mov qword ptr [rbp + 272], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx156_20
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx156_21
.Lx156_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
.Lx156_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx156_22
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx156_23
.Lx156_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
.Lx156_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx156_24
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx156_25
.Lx156_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
.Lx156_25:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx156_26
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 48], rax
 mov qword ptr [r10 + 56], rdx
 jmp .Lx156_27
.Lx156_26:
 mov edi, 3
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
.Lx156_27:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx156_28
 mov rax, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 64], rax
 mov qword ptr [r10 + 72], rdx
 jmp .Lx156_29
.Lx156_28:
 mov edi, 4
 mov rsi, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 call rt_arg_stage@PLT
.Lx156_29:
 mov rdi, qword ptr [rip + .Lx156_0]
 mov esi, 5
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx156_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx156_3]
 lea rdx, [rip + .Lx156_4]
 jmp rax
.Lx156_3:
 mov qword ptr [rbp + 280], rsp
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx156_5
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx156_2
.Lx156_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx156_2
.Lx156_4:
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx156_6
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx156_2
.Lx156_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx156_2
.Lx156_1:
 call rt_faildescr@PLT
.Lx156_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain114_n17_β
 jmp xchain114_n24_α
 xchain114_n23_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 280]
 jmp qword ptr [rsp]
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "compute_it/5"
# IR_SUSPEND yield+resume
 xchain114_n24_α:
 lea rax, [rip + xchain114_n24_β]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_day_of_week$2F4_γ
 xchain114_n24_β:
 jmp xchain114_n23_β
proc_day_of_week$2F4_res:
add rsp, 8
pop rbp
proc_day_of_week$2F4_β:
jmp qword ptr [rbp + 1104]
proc_day_of_week$2F4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_day_of_week$2F4_res]
push rax
mov rax, [rbp + 1240]
mov rbp, [rbp + 1256]
jmp rax
proc_day_of_week$2F4_ω:
mov rax, [rbp + 1248]
lea rsp, [rbp + 1264]
mov rbp, [rbp + 1256]
jmp rax
  .globl proc_cal_key$2F3_α
proc_cal_key$2F3_α:
#=======================================================================================================================
    .global proc_cal_key$2F3_α
    .global proc_cal_key$2F3_β
    .global proc_cal_key$2F3_γ
    .global proc_cal_key$2F3_ω
  sub rsp, 15936
  mov [rsp + 15912], rcx
  mov [rsp + 15920], rdx
  mov [rsp + 15928], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 15896], rsp
  mov rdi, rsp
  mov esi, 15872
  mov edx, 15904
  call rt_jmp_frame_lexprep2@PLT
proc_cal_key$2F3_α_body:
lea rax, [rip + xchain159_n31_β]
mov qword ptr [rbp + 15872], rax
 xchain159_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n1_α
 xchain159_n0_β:
 jmp proc_cal_key$2F3_ω
# IR_VAR_REF
 xchain159_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 15776], rax
 mov qword ptr [rbp + 15784], rdx
 jmp xchain159_n2_α
# IR_LIT_INTEGER
 xchain159_n2_α:
 mov qword ptr [rbp + 15808], 6
 mov rax, qword ptr [rip + .Lx163_0]
 mov qword ptr [rbp + 15816], rax
 jmp xchain159_n3_α
.Lx163_0:
 .quad 1
# IR_LIT_INTEGER
 xchain159_n3_α:
 mov qword ptr [rbp + 15840], 6
 mov rax, qword ptr [rip + .Lx164_0]
 mov qword ptr [rbp + 15848], rax
 jmp xchain159_n4_α
.Lx164_0:
 .quad 1
 xchain159_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15776] -> [zr+15728]
 mov rax, qword ptr [rbp + 15776]
 mov qword ptr [rbp + 15728], rax
 mov rax, qword ptr [rbp + 15784]
 mov qword ptr [rbp + 15736], rax
# marshal arg1 = producer-box slot [zr+15808] -> [zr+15744]
 mov rax, qword ptr [rbp + 15808]
 mov qword ptr [rbp + 15744], rax
 mov rax, qword ptr [rbp + 15816]
 mov qword ptr [rbp + 15752], rax
# marshal arg2 = producer-box slot [zr+15840] -> [zr+15760]
 mov rax, qword ptr [rbp + 15840]
 mov qword ptr [rbp + 15760], rax
 mov rax, qword ptr [rbp + 15848]
 mov qword ptr [rbp + 15768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 15728]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 15712], rax
 mov qword ptr [rbp + 15720], rdx
 cmp eax, 99
 je xchain159_n6_α
 jmp xchain159_n5_α
 xchain159_n4_β:
 jmp xchain159_n6_α
# IR_VAR_REF
 xchain159_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 15648], rax
 mov qword ptr [rbp + 15656], rdx
 jmp xchain159_n7_α
# IR_VAR_REF
 xchain159_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 15232], rax
 mov qword ptr [rbp + 15240], rdx
 jmp xchain159_n8_α
# IR_LIT_INTEGER
 xchain159_n7_α:
 mov qword ptr [rbp + 15680], 6
 mov rax, qword ptr [rip + .Lx170_0]
 mov qword ptr [rbp + 15688], rax
 jmp xchain159_n9_α
.Lx170_0:
 .quad 1
# IR_LIT_INTEGER
 xchain159_n8_α:
 mov qword ptr [rbp + 15264], 6
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [rbp + 15272], rax
 jmp xchain159_n10_α
.Lx171_0:
 .quad 1
 xchain159_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15648] -> [zr+15616]
 mov rax, qword ptr [rbp + 15648]
 mov qword ptr [rbp + 15616], rax
 mov rax, qword ptr [rbp + 15656]
 mov qword ptr [rbp + 15624], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 15616]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 15600], rax
 mov qword ptr [rbp + 15608], rdx
 cmp eax, 99
 je xchain159_n12_α
 jmp xchain159_n11_α
 xchain159_n9_β:
 jmp xchain159_n12_α
# IR_LIT_INTEGER
 xchain159_n10_α:
 mov qword ptr [rbp + 15296], 6
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [rbp + 15304], rax
 jmp xchain159_n13_α
.Lx173_0:
 .quad 2
# IR_VAR_REF
 xchain159_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 15536], rax
 mov qword ptr [rbp + 15544], rdx
 jmp xchain159_n14_α
 xchain159_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+15344]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 15344], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 15352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 15344]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 15328], rax
 mov qword ptr [rbp + 15336], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n6_α
 xchain159_n12_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15232] -> [zr+15184]
 mov rax, qword ptr [rbp + 15232]
 mov qword ptr [rbp + 15184], rax
 mov rax, qword ptr [rbp + 15240]
 mov qword ptr [rbp + 15192], rax
# marshal arg1 = producer-box slot [zr+15264] -> [zr+15200]
 mov rax, qword ptr [rbp + 15264]
 mov qword ptr [rbp + 15200], rax
 mov rax, qword ptr [rbp + 15272]
 mov qword ptr [rbp + 15208], rax
# marshal arg2 = producer-box slot [zr+15296] -> [zr+15216]
 mov rax, qword ptr [rbp + 15296]
 mov qword ptr [rbp + 15216], rax
 mov rax, qword ptr [rbp + 15304]
 mov qword ptr [rbp + 15224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 15184]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 15168], rax
 mov qword ptr [rbp + 15176], rdx
 cmp eax, 99
 je xchain159_n16_α
 jmp xchain159_n15_α
 xchain159_n13_β:
 jmp xchain159_n16_α
# IR_LIT_INTEGER
 xchain159_n14_α:
 mov qword ptr [rbp + 15568], 6
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [rbp + 15576], rax
 jmp xchain159_n17_α
.Lx178_0:
 .quad 6
# IR_VAR_REF
 xchain159_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 15104], rax
 mov qword ptr [rbp + 15112], rdx
 jmp xchain159_n18_α
# IR_VAR_REF
 xchain159_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 14688], rax
 mov qword ptr [rbp + 14696], rdx
 jmp xchain159_n19_α
 xchain159_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15536] -> [zr+15504]
 mov rax, qword ptr [rbp + 15536]
 mov qword ptr [rbp + 15504], rax
 mov rax, qword ptr [rbp + 15544]
 mov qword ptr [rbp + 15512], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 15504]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 15488], rax
 mov qword ptr [rbp + 15496], rdx
 cmp eax, 99
 je xchain159_n12_α
 jmp xchain159_n20_α
 xchain159_n17_β:
 jmp xchain159_n12_α
# IR_LIT_INTEGER
 xchain159_n18_α:
 mov qword ptr [rbp + 15136], 6
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [rbp + 15144], rax
 jmp xchain159_n21_α
.Lx184_0:
 .quad 2
# IR_LIT_INTEGER
 xchain159_n19_α:
 mov qword ptr [rbp + 14720], 6
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [rbp + 14728], rax
 jmp xchain159_n22_α
.Lx185_0:
 .quad 1
# IR_VAR_REF
 xchain159_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 15424], rax
 mov qword ptr [rbp + 15432], rdx
 jmp xchain159_n23_α
 xchain159_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15104] -> [zr+15072]
 mov rax, qword ptr [rbp + 15104]
 mov qword ptr [rbp + 15072], rax
 mov rax, qword ptr [rbp + 15112]
 mov qword ptr [rbp + 15080], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 15072]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 15056], rax
 mov qword ptr [rbp + 15064], rdx
 cmp eax, 99
 je xchain159_n25_α
 jmp xchain159_n24_α
 xchain159_n21_β:
 jmp xchain159_n25_α
# IR_LIT_INTEGER
 xchain159_n22_α:
 mov qword ptr [rbp + 14752], 6
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [rbp + 14760], rax
 jmp xchain159_n26_α
.Lx189_0:
 .quad 3
# IR_LIT_INTEGER
 xchain159_n23_α:
 mov qword ptr [rbp + 15456], 6
 mov rax, qword ptr [rip + .Lx190_0]
 mov qword ptr [rbp + 15464], rax
 jmp xchain159_n27_α
.Lx190_0:
 .quad 1
# IR_VAR_REF
 xchain159_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 14992], rax
 mov qword ptr [rbp + 15000], rdx
 jmp xchain159_n28_α
 xchain159_n25_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+14800]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 14800], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 14808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 14800]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 14784], rax
 mov qword ptr [rbp + 14792], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n16_α
 xchain159_n25_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n26_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14688] -> [zr+14640]
 mov rax, qword ptr [rbp + 14688]
 mov qword ptr [rbp + 14640], rax
 mov rax, qword ptr [rbp + 14696]
 mov qword ptr [rbp + 14648], rax
# marshal arg1 = producer-box slot [zr+14720] -> [zr+14656]
 mov rax, qword ptr [rbp + 14720]
 mov qword ptr [rbp + 14656], rax
 mov rax, qword ptr [rbp + 14728]
 mov qword ptr [rbp + 14664], rax
# marshal arg2 = producer-box slot [zr+14752] -> [zr+14672]
 mov rax, qword ptr [rbp + 14752]
 mov qword ptr [rbp + 14672], rax
 mov rax, qword ptr [rbp + 14760]
 mov qword ptr [rbp + 14680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 14640]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 14624], rax
 mov qword ptr [rbp + 14632], rdx
 cmp eax, 99
 je xchain159_n30_α
 jmp xchain159_n29_α
 xchain159_n26_β:
 jmp xchain159_n30_α
 xchain159_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15424] -> [zr+15392]
 mov rax, qword ptr [rbp + 15424]
 mov qword ptr [rbp + 15392], rax
 mov rax, qword ptr [rbp + 15432]
 mov qword ptr [rbp + 15400], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 15392]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 15376], rax
 mov qword ptr [rbp + 15384], rdx
 cmp eax, 99
 je xchain159_n12_α
 jmp xchain159_n31_α
 xchain159_n27_β:
 jmp xchain159_n12_α
# IR_LIT_INTEGER
 xchain159_n28_α:
 mov qword ptr [rbp + 15024], 6
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [rbp + 15032], rax
 jmp xchain159_n32_α
.Lx196_0:
 .quad 2
# IR_VAR_REF
 xchain159_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 14560], rax
 mov qword ptr [rbp + 14568], rdx
 jmp xchain159_n33_α
# IR_VAR_REF
 xchain159_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 14144], rax
 mov qword ptr [rbp + 14152], rdx
 jmp xchain159_n34_α
# IR_SUSPEND yield+resume
 xchain159_n31_α:
 lea rax, [rip + xchain159_n31_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n31_β:
 jmp xchain159_n12_α
 xchain159_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14992] -> [zr+14960]
 mov rax, qword ptr [rbp + 14992]
 mov qword ptr [rbp + 14960], rax
 mov rax, qword ptr [rbp + 15000]
 mov qword ptr [rbp + 14968], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14960]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14944], rax
 mov qword ptr [rbp + 14952], rdx
 cmp eax, 99
 je xchain159_n25_α
 jmp xchain159_n35_α
 xchain159_n32_β:
 jmp xchain159_n25_α
# IR_LIT_INTEGER
 xchain159_n33_α:
 mov qword ptr [rbp + 14592], 6
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 14600], rax
 jmp xchain159_n36_α
.Lx204_0:
 .quad 3
# IR_LIT_INTEGER
 xchain159_n34_α:
 mov qword ptr [rbp + 14176], 6
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 14184], rax
 jmp xchain159_n37_α
.Lx205_0:
 .quad 1
# IR_VAR_REF
 xchain159_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 14880], rax
 mov qword ptr [rbp + 14888], rdx
 jmp xchain159_n38_α
 xchain159_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14560] -> [zr+14528]
 mov rax, qword ptr [rbp + 14560]
 mov qword ptr [rbp + 14528], rax
 mov rax, qword ptr [rbp + 14568]
 mov qword ptr [rbp + 14536], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14528]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14512], rax
 mov qword ptr [rbp + 14520], rdx
 cmp eax, 99
 je xchain159_n40_α
 jmp xchain159_n39_α
 xchain159_n36_β:
 jmp xchain159_n40_α
# IR_LIT_INTEGER
 xchain159_n37_α:
 mov qword ptr [rbp + 14208], 6
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 14216], rax
 jmp xchain159_n41_α
.Lx209_0:
 .quad 4
# IR_LIT_INTEGER
 xchain159_n38_α:
 mov qword ptr [rbp + 14912], 6
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [rbp + 14920], rax
 jmp xchain159_n42_α
.Lx210_0:
 .quad 1
# IR_VAR_REF
 xchain159_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 14448], rax
 mov qword ptr [rbp + 14456], rdx
 jmp xchain159_n43_α
 xchain159_n40_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+14256]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 14256], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 14264], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 14256]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 14240], rax
 mov qword ptr [rbp + 14248], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n30_α
 xchain159_n40_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n41_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14144] -> [zr+14096]
 mov rax, qword ptr [rbp + 14144]
 mov qword ptr [rbp + 14096], rax
 mov rax, qword ptr [rbp + 14152]
 mov qword ptr [rbp + 14104], rax
# marshal arg1 = producer-box slot [zr+14176] -> [zr+14112]
 mov rax, qword ptr [rbp + 14176]
 mov qword ptr [rbp + 14112], rax
 mov rax, qword ptr [rbp + 14184]
 mov qword ptr [rbp + 14120], rax
# marshal arg2 = producer-box slot [zr+14208] -> [zr+14128]
 mov rax, qword ptr [rbp + 14208]
 mov qword ptr [rbp + 14128], rax
 mov rax, qword ptr [rbp + 14216]
 mov qword ptr [rbp + 14136], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 14096]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 14080], rax
 mov qword ptr [rbp + 14088], rdx
 cmp eax, 99
 je xchain159_n45_α
 jmp xchain159_n44_α
 xchain159_n41_β:
 jmp xchain159_n45_α
 xchain159_n42_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14880] -> [zr+14848]
 mov rax, qword ptr [rbp + 14880]
 mov qword ptr [rbp + 14848], rax
 mov rax, qword ptr [rbp + 14888]
 mov qword ptr [rbp + 14856], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14848]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14832], rax
 mov qword ptr [rbp + 14840], rdx
 cmp eax, 99
 je xchain159_n25_α
 jmp xchain159_n46_α
 xchain159_n42_β:
 jmp xchain159_n25_α
# IR_LIT_INTEGER
 xchain159_n43_α:
 mov qword ptr [rbp + 14480], 6
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 14488], rax
 jmp xchain159_n47_α
.Lx216_0:
 .quad 2
# IR_VAR_REF
 xchain159_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 14016], rax
 mov qword ptr [rbp + 14024], rdx
 jmp xchain159_n48_α
# IR_VAR_REF
 xchain159_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13600], rax
 mov qword ptr [rbp + 13608], rdx
 jmp xchain159_n49_α
# IR_SUSPEND yield+resume
 xchain159_n46_α:
 lea rax, [rip + xchain159_n46_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n46_β:
 jmp xchain159_n25_α
 xchain159_n47_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14448] -> [zr+14416]
 mov rax, qword ptr [rbp + 14448]
 mov qword ptr [rbp + 14416], rax
 mov rax, qword ptr [rbp + 14456]
 mov qword ptr [rbp + 14424], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14416]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14400], rax
 mov qword ptr [rbp + 14408], rdx
 cmp eax, 99
 je xchain159_n40_α
 jmp xchain159_n50_α
 xchain159_n47_β:
 jmp xchain159_n40_α
# IR_LIT_INTEGER
 xchain159_n48_α:
 mov qword ptr [rbp + 14048], 6
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [rbp + 14056], rax
 jmp xchain159_n51_α
.Lx224_0:
 .quad 4
# IR_LIT_INTEGER
 xchain159_n49_α:
 mov qword ptr [rbp + 13632], 6
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [rbp + 13640], rax
 jmp xchain159_n52_α
.Lx225_0:
 .quad 1
# IR_VAR_REF
 xchain159_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 14336], rax
 mov qword ptr [rbp + 14344], rdx
 jmp xchain159_n53_α
 xchain159_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14016] -> [zr+13984]
 mov rax, qword ptr [rbp + 14016]
 mov qword ptr [rbp + 13984], rax
 mov rax, qword ptr [rbp + 14024]
 mov qword ptr [rbp + 13992], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13984]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13968], rax
 mov qword ptr [rbp + 13976], rdx
 cmp eax, 99
 je xchain159_n55_α
 jmp xchain159_n54_α
 xchain159_n51_β:
 jmp xchain159_n55_α
# IR_LIT_INTEGER
 xchain159_n52_α:
 mov qword ptr [rbp + 13664], 6
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 13672], rax
 jmp xchain159_n56_α
.Lx229_0:
 .quad 5
# IR_LIT_INTEGER
 xchain159_n53_α:
 mov qword ptr [rbp + 14368], 6
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 14376], rax
 jmp xchain159_n57_α
.Lx230_0:
 .quad 0
# IR_VAR_REF
 xchain159_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 13904], rax
 mov qword ptr [rbp + 13912], rdx
 jmp xchain159_n58_α
 xchain159_n55_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+13712]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 13712], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 13720], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 13712]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 13696], rax
 mov qword ptr [rbp + 13704], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n45_α
 xchain159_n55_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n56_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13600] -> [zr+13552]
 mov rax, qword ptr [rbp + 13600]
 mov qword ptr [rbp + 13552], rax
 mov rax, qword ptr [rbp + 13608]
 mov qword ptr [rbp + 13560], rax
# marshal arg1 = producer-box slot [zr+13632] -> [zr+13568]
 mov rax, qword ptr [rbp + 13632]
 mov qword ptr [rbp + 13568], rax
 mov rax, qword ptr [rbp + 13640]
 mov qword ptr [rbp + 13576], rax
# marshal arg2 = producer-box slot [zr+13664] -> [zr+13584]
 mov rax, qword ptr [rbp + 13664]
 mov qword ptr [rbp + 13584], rax
 mov rax, qword ptr [rbp + 13672]
 mov qword ptr [rbp + 13592], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 13552]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 13536], rax
 mov qword ptr [rbp + 13544], rdx
 cmp eax, 99
 je xchain159_n60_α
 jmp xchain159_n59_α
 xchain159_n56_β:
 jmp xchain159_n60_α
 xchain159_n57_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14336] -> [zr+14304]
 mov rax, qword ptr [rbp + 14336]
 mov qword ptr [rbp + 14304], rax
 mov rax, qword ptr [rbp + 14344]
 mov qword ptr [rbp + 14312], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14304]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14288], rax
 mov qword ptr [rbp + 14296], rdx
 cmp eax, 99
 je xchain159_n40_α
 jmp xchain159_n61_α
 xchain159_n57_β:
 jmp xchain159_n40_α
# IR_LIT_INTEGER
 xchain159_n58_α:
 mov qword ptr [rbp + 13936], 6
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 13944], rax
 jmp xchain159_n62_α
.Lx236_0:
 .quad 5
# IR_VAR_REF
 xchain159_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13472], rax
 mov qword ptr [rbp + 13480], rdx
 jmp xchain159_n63_α
# IR_VAR_REF
 xchain159_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13056], rax
 mov qword ptr [rbp + 13064], rdx
 jmp xchain159_n64_α
# IR_SUSPEND yield+resume
 xchain159_n61_α:
 lea rax, [rip + xchain159_n61_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n61_β:
 jmp xchain159_n40_α
 xchain159_n62_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13904] -> [zr+13872]
 mov rax, qword ptr [rbp + 13904]
 mov qword ptr [rbp + 13872], rax
 mov rax, qword ptr [rbp + 13912]
 mov qword ptr [rbp + 13880], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13872]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13856], rax
 mov qword ptr [rbp + 13864], rdx
 cmp eax, 99
 je xchain159_n55_α
 jmp xchain159_n65_α
 xchain159_n62_β:
 jmp xchain159_n55_α
# IR_LIT_INTEGER
 xchain159_n63_α:
 mov qword ptr [rbp + 13504], 6
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 13512], rax
 jmp xchain159_n66_α
.Lx244_0:
 .quad 5
# IR_LIT_INTEGER
 xchain159_n64_α:
 mov qword ptr [rbp + 13088], 6
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 13096], rax
 jmp xchain159_n67_α
.Lx245_0:
 .quad 1
# IR_VAR_REF
 xchain159_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 13792], rax
 mov qword ptr [rbp + 13800], rdx
 jmp xchain159_n68_α
 xchain159_n66_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13472] -> [zr+13440]
 mov rax, qword ptr [rbp + 13472]
 mov qword ptr [rbp + 13440], rax
 mov rax, qword ptr [rbp + 13480]
 mov qword ptr [rbp + 13448], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13440]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13424], rax
 mov qword ptr [rbp + 13432], rdx
 cmp eax, 99
 je xchain159_n70_α
 jmp xchain159_n69_α
 xchain159_n66_β:
 jmp xchain159_n70_α
# IR_LIT_INTEGER
 xchain159_n67_α:
 mov qword ptr [rbp + 13120], 6
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [rbp + 13128], rax
 jmp xchain159_n71_α
.Lx249_0:
 .quad 6
# IR_LIT_INTEGER
 xchain159_n68_α:
 mov qword ptr [rbp + 13824], 6
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 13832], rax
 jmp xchain159_n72_α
.Lx250_0:
 .quad 0
# IR_VAR_REF
 xchain159_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 13360], rax
 mov qword ptr [rbp + 13368], rdx
 jmp xchain159_n73_α
 xchain159_n70_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+13168]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 13168], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 13176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 13168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 13152], rax
 mov qword ptr [rbp + 13160], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n60_α
 xchain159_n70_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n71_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13056] -> [zr+13008]
 mov rax, qword ptr [rbp + 13056]
 mov qword ptr [rbp + 13008], rax
 mov rax, qword ptr [rbp + 13064]
 mov qword ptr [rbp + 13016], rax
# marshal arg1 = producer-box slot [zr+13088] -> [zr+13024]
 mov rax, qword ptr [rbp + 13088]
 mov qword ptr [rbp + 13024], rax
 mov rax, qword ptr [rbp + 13096]
 mov qword ptr [rbp + 13032], rax
# marshal arg2 = producer-box slot [zr+13120] -> [zr+13040]
 mov rax, qword ptr [rbp + 13120]
 mov qword ptr [rbp + 13040], rax
 mov rax, qword ptr [rbp + 13128]
 mov qword ptr [rbp + 13048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 13008]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 12992], rax
 mov qword ptr [rbp + 13000], rdx
 cmp eax, 99
 je xchain159_n75_α
 jmp xchain159_n74_α
 xchain159_n71_β:
 jmp xchain159_n75_α
 xchain159_n72_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13792] -> [zr+13760]
 mov rax, qword ptr [rbp + 13792]
 mov qword ptr [rbp + 13760], rax
 mov rax, qword ptr [rbp + 13800]
 mov qword ptr [rbp + 13768], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13760]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13744], rax
 mov qword ptr [rbp + 13752], rdx
 cmp eax, 99
 je xchain159_n55_α
 jmp xchain159_n76_α
 xchain159_n72_β:
 jmp xchain159_n55_α
# IR_LIT_INTEGER
 xchain159_n73_α:
 mov qword ptr [rbp + 13392], 6
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 13400], rax
 jmp xchain159_n77_α
.Lx256_0:
 .quad 0
# IR_VAR_REF
 xchain159_n74_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 12928], rax
 mov qword ptr [rbp + 12936], rdx
 jmp xchain159_n78_α
# IR_VAR_REF
 xchain159_n75_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 12512], rax
 mov qword ptr [rbp + 12520], rdx
 jmp xchain159_n79_α
# IR_SUSPEND yield+resume
 xchain159_n76_α:
 lea rax, [rip + xchain159_n76_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n76_β:
 jmp xchain159_n55_α
 xchain159_n77_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13360] -> [zr+13328]
 mov rax, qword ptr [rbp + 13360]
 mov qword ptr [rbp + 13328], rax
 mov rax, qword ptr [rbp + 13368]
 mov qword ptr [rbp + 13336], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13328]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13312], rax
 mov qword ptr [rbp + 13320], rdx
 cmp eax, 99
 je xchain159_n70_α
 jmp xchain159_n80_α
 xchain159_n77_β:
 jmp xchain159_n70_α
# IR_LIT_INTEGER
 xchain159_n78_α:
 mov qword ptr [rbp + 12960], 6
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 12968], rax
 jmp xchain159_n81_α
.Lx264_0:
 .quad 6
# IR_LIT_INTEGER
 xchain159_n79_α:
 mov qword ptr [rbp + 12544], 6
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [rbp + 12552], rax
 jmp xchain159_n82_α
.Lx265_0:
 .quad 1
# IR_VAR_REF
 xchain159_n80_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 13248], rax
 mov qword ptr [rbp + 13256], rdx
 jmp xchain159_n83_α
 xchain159_n81_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12928] -> [zr+12896]
 mov rax, qword ptr [rbp + 12928]
 mov qword ptr [rbp + 12896], rax
 mov rax, qword ptr [rbp + 12936]
 mov qword ptr [rbp + 12904], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12896]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12880], rax
 mov qword ptr [rbp + 12888], rdx
 cmp eax, 99
 je xchain159_n85_α
 jmp xchain159_n84_α
 xchain159_n81_β:
 jmp xchain159_n85_α
# IR_LIT_INTEGER
 xchain159_n82_α:
 mov qword ptr [rbp + 12576], 6
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 12584], rax
 jmp xchain159_n86_α
.Lx269_0:
 .quad 7
# IR_LIT_INTEGER
 xchain159_n83_α:
 mov qword ptr [rbp + 13280], 6
 mov rax, qword ptr [rip + .Lx270_0]
 mov qword ptr [rbp + 13288], rax
 jmp xchain159_n87_α
.Lx270_0:
 .quad 0
# IR_VAR_REF
 xchain159_n84_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 12816], rax
 mov qword ptr [rbp + 12824], rdx
 jmp xchain159_n88_α
 xchain159_n85_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+12624]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 12624], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 12632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 12624]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 12608], rax
 mov qword ptr [rbp + 12616], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n75_α
 xchain159_n85_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n86_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12512] -> [zr+12464]
 mov rax, qword ptr [rbp + 12512]
 mov qword ptr [rbp + 12464], rax
 mov rax, qword ptr [rbp + 12520]
 mov qword ptr [rbp + 12472], rax
# marshal arg1 = producer-box slot [zr+12544] -> [zr+12480]
 mov rax, qword ptr [rbp + 12544]
 mov qword ptr [rbp + 12480], rax
 mov rax, qword ptr [rbp + 12552]
 mov qword ptr [rbp + 12488], rax
# marshal arg2 = producer-box slot [zr+12576] -> [zr+12496]
 mov rax, qword ptr [rbp + 12576]
 mov qword ptr [rbp + 12496], rax
 mov rax, qword ptr [rbp + 12584]
 mov qword ptr [rbp + 12504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 12464]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 12448], rax
 mov qword ptr [rbp + 12456], rdx
 cmp eax, 99
 je xchain159_n90_α
 jmp xchain159_n89_α
 xchain159_n86_β:
 jmp xchain159_n90_α
 xchain159_n87_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13248] -> [zr+13216]
 mov rax, qword ptr [rbp + 13248]
 mov qword ptr [rbp + 13216], rax
 mov rax, qword ptr [rbp + 13256]
 mov qword ptr [rbp + 13224], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13216]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13200], rax
 mov qword ptr [rbp + 13208], rdx
 cmp eax, 99
 je xchain159_n70_α
 jmp xchain159_n91_α
 xchain159_n87_β:
 jmp xchain159_n70_α
# IR_LIT_INTEGER
 xchain159_n88_α:
 mov qword ptr [rbp + 12848], 6
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [rbp + 12856], rax
 jmp xchain159_n92_α
.Lx276_0:
 .quad 3
# IR_VAR_REF
 xchain159_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 12384], rax
 mov qword ptr [rbp + 12392], rdx
 jmp xchain159_n93_α
# IR_VAR_REF
 xchain159_n90_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11968], rax
 mov qword ptr [rbp + 11976], rdx
 jmp xchain159_n94_α
# IR_SUSPEND yield+resume
 xchain159_n91_α:
 lea rax, [rip + xchain159_n91_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n91_β:
 jmp xchain159_n70_α
 xchain159_n92_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12816] -> [zr+12784]
 mov rax, qword ptr [rbp + 12816]
 mov qword ptr [rbp + 12784], rax
 mov rax, qword ptr [rbp + 12824]
 mov qword ptr [rbp + 12792], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12784]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12768], rax
 mov qword ptr [rbp + 12776], rdx
 cmp eax, 99
 je xchain159_n85_α
 jmp xchain159_n95_α
 xchain159_n92_β:
 jmp xchain159_n85_α
# IR_LIT_INTEGER
 xchain159_n93_α:
 mov qword ptr [rbp + 12416], 6
 mov rax, qword ptr [rip + .Lx284_0]
 mov qword ptr [rbp + 12424], rax
 jmp xchain159_n96_α
.Lx284_0:
 .quad 7
# IR_LIT_INTEGER
 xchain159_n94_α:
 mov qword ptr [rbp + 12000], 6
 mov rax, qword ptr [rip + .Lx285_0]
 mov qword ptr [rbp + 12008], rax
 jmp xchain159_n97_α
.Lx285_0:
 .quad 1
# IR_VAR_REF
 xchain159_n95_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 12704], rax
 mov qword ptr [rbp + 12712], rdx
 jmp xchain159_n98_α
 xchain159_n96_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12384] -> [zr+12352]
 mov rax, qword ptr [rbp + 12384]
 mov qword ptr [rbp + 12352], rax
 mov rax, qword ptr [rbp + 12392]
 mov qword ptr [rbp + 12360], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12352]
 movabs rsi, 7
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12336], rax
 mov qword ptr [rbp + 12344], rdx
 cmp eax, 99
 je xchain159_n100_α
 jmp xchain159_n99_α
 xchain159_n96_β:
 jmp xchain159_n100_α
# IR_LIT_INTEGER
 xchain159_n97_α:
 mov qword ptr [rbp + 12032], 6
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [rbp + 12040], rax
 jmp xchain159_n101_α
.Lx289_0:
 .quad 8
# IR_LIT_INTEGER
 xchain159_n98_α:
 mov qword ptr [rbp + 12736], 6
 mov rax, qword ptr [rip + .Lx290_0]
 mov qword ptr [rbp + 12744], rax
 jmp xchain159_n102_α
.Lx290_0:
 .quad 0
# IR_VAR_REF
 xchain159_n99_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 12272], rax
 mov qword ptr [rbp + 12280], rdx
 jmp xchain159_n103_α
 xchain159_n100_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+12080]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 12080], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 12088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 12080]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 12064], rax
 mov qword ptr [rbp + 12072], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n90_α
 xchain159_n100_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n101_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11968] -> [zr+11920]
 mov rax, qword ptr [rbp + 11968]
 mov qword ptr [rbp + 11920], rax
 mov rax, qword ptr [rbp + 11976]
 mov qword ptr [rbp + 11928], rax
# marshal arg1 = producer-box slot [zr+12000] -> [zr+11936]
 mov rax, qword ptr [rbp + 12000]
 mov qword ptr [rbp + 11936], rax
 mov rax, qword ptr [rbp + 12008]
 mov qword ptr [rbp + 11944], rax
# marshal arg2 = producer-box slot [zr+12032] -> [zr+11952]
 mov rax, qword ptr [rbp + 12032]
 mov qword ptr [rbp + 11952], rax
 mov rax, qword ptr [rbp + 12040]
 mov qword ptr [rbp + 11960], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 11920]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 11904], rax
 mov qword ptr [rbp + 11912], rdx
 cmp eax, 99
 je xchain159_n105_α
 jmp xchain159_n104_α
 xchain159_n101_β:
 jmp xchain159_n105_α
 xchain159_n102_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12704] -> [zr+12672]
 mov rax, qword ptr [rbp + 12704]
 mov qword ptr [rbp + 12672], rax
 mov rax, qword ptr [rbp + 12712]
 mov qword ptr [rbp + 12680], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12672]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12656], rax
 mov qword ptr [rbp + 12664], rdx
 cmp eax, 99
 je xchain159_n85_α
 jmp xchain159_n106_α
 xchain159_n102_β:
 jmp xchain159_n85_α
# IR_LIT_INTEGER
 xchain159_n103_α:
 mov qword ptr [rbp + 12304], 6
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 12312], rax
 jmp xchain159_n107_α
.Lx296_0:
 .quad 5
# IR_VAR_REF
 xchain159_n104_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11840], rax
 mov qword ptr [rbp + 11848], rdx
 jmp xchain159_n108_α
# IR_VAR_REF
 xchain159_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11424], rax
 mov qword ptr [rbp + 11432], rdx
 jmp xchain159_n109_α
# IR_SUSPEND yield+resume
 xchain159_n106_α:
 lea rax, [rip + xchain159_n106_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n106_β:
 jmp xchain159_n85_α
 xchain159_n107_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12272] -> [zr+12240]
 mov rax, qword ptr [rbp + 12272]
 mov qword ptr [rbp + 12240], rax
 mov rax, qword ptr [rbp + 12280]
 mov qword ptr [rbp + 12248], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12240]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12224], rax
 mov qword ptr [rbp + 12232], rdx
 cmp eax, 99
 je xchain159_n100_α
 jmp xchain159_n110_α
 xchain159_n107_β:
 jmp xchain159_n100_α
# IR_LIT_INTEGER
 xchain159_n108_α:
 mov qword ptr [rbp + 11872], 6
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [rbp + 11880], rax
 jmp xchain159_n111_α
.Lx304_0:
 .quad 8
# IR_LIT_INTEGER
 xchain159_n109_α:
 mov qword ptr [rbp + 11456], 6
 mov rax, qword ptr [rip + .Lx305_0]
 mov qword ptr [rbp + 11464], rax
 jmp xchain159_n112_α
.Lx305_0:
 .quad 1
# IR_VAR_REF
 xchain159_n110_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 12160], rax
 mov qword ptr [rbp + 12168], rdx
 jmp xchain159_n113_α
 xchain159_n111_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11840] -> [zr+11808]
 mov rax, qword ptr [rbp + 11840]
 mov qword ptr [rbp + 11808], rax
 mov rax, qword ptr [rbp + 11848]
 mov qword ptr [rbp + 11816], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11808]
 movabs rsi, 8
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11792], rax
 mov qword ptr [rbp + 11800], rdx
 cmp eax, 99
 je xchain159_n115_α
 jmp xchain159_n114_α
 xchain159_n111_β:
 jmp xchain159_n115_α
# IR_LIT_INTEGER
 xchain159_n112_α:
 mov qword ptr [rbp + 11488], 6
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [rbp + 11496], rax
 jmp xchain159_n116_α
.Lx309_0:
 .quad 9
# IR_LIT_INTEGER
 xchain159_n113_α:
 mov qword ptr [rbp + 12192], 6
 mov rax, qword ptr [rip + .Lx310_0]
 mov qword ptr [rbp + 12200], rax
 jmp xchain159_n117_α
.Lx310_0:
 .quad 0
# IR_VAR_REF
 xchain159_n114_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 11728], rax
 mov qword ptr [rbp + 11736], rdx
 jmp xchain159_n118_α
 xchain159_n115_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+11536]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 11536], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 11544], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 11536]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 11520], rax
 mov qword ptr [rbp + 11528], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n105_α
 xchain159_n115_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n116_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11424] -> [zr+11376]
 mov rax, qword ptr [rbp + 11424]
 mov qword ptr [rbp + 11376], rax
 mov rax, qword ptr [rbp + 11432]
 mov qword ptr [rbp + 11384], rax
# marshal arg1 = producer-box slot [zr+11456] -> [zr+11392]
 mov rax, qword ptr [rbp + 11456]
 mov qword ptr [rbp + 11392], rax
 mov rax, qword ptr [rbp + 11464]
 mov qword ptr [rbp + 11400], rax
# marshal arg2 = producer-box slot [zr+11488] -> [zr+11408]
 mov rax, qword ptr [rbp + 11488]
 mov qword ptr [rbp + 11408], rax
 mov rax, qword ptr [rbp + 11496]
 mov qword ptr [rbp + 11416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 11376]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 11360], rax
 mov qword ptr [rbp + 11368], rdx
 cmp eax, 99
 je xchain159_n120_α
 jmp xchain159_n119_α
 xchain159_n116_β:
 jmp xchain159_n120_α
 xchain159_n117_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12160] -> [zr+12128]
 mov rax, qword ptr [rbp + 12160]
 mov qword ptr [rbp + 12128], rax
 mov rax, qword ptr [rbp + 12168]
 mov qword ptr [rbp + 12136], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12128]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12112], rax
 mov qword ptr [rbp + 12120], rdx
 cmp eax, 99
 je xchain159_n100_α
 jmp xchain159_n121_α
 xchain159_n117_β:
 jmp xchain159_n100_α
# IR_LIT_INTEGER
 xchain159_n118_α:
 mov qword ptr [rbp + 11760], 6
 mov rax, qword ptr [rip + .Lx316_0]
 mov qword ptr [rbp + 11768], rax
 jmp xchain159_n122_α
.Lx316_0:
 .quad 1
# IR_VAR_REF
 xchain159_n119_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11296], rax
 mov qword ptr [rbp + 11304], rdx
 jmp xchain159_n123_α
# IR_VAR_REF
 xchain159_n120_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10880], rax
 mov qword ptr [rbp + 10888], rdx
 jmp xchain159_n124_α
# IR_SUSPEND yield+resume
 xchain159_n121_α:
 lea rax, [rip + xchain159_n121_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n121_β:
 jmp xchain159_n100_α
 xchain159_n122_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11728] -> [zr+11696]
 mov rax, qword ptr [rbp + 11728]
 mov qword ptr [rbp + 11696], rax
 mov rax, qword ptr [rbp + 11736]
 mov qword ptr [rbp + 11704], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11696]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11680], rax
 mov qword ptr [rbp + 11688], rdx
 cmp eax, 99
 je xchain159_n115_α
 jmp xchain159_n125_α
 xchain159_n122_β:
 jmp xchain159_n115_α
# IR_LIT_INTEGER
 xchain159_n123_α:
 mov qword ptr [rbp + 11328], 6
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [rbp + 11336], rax
 jmp xchain159_n126_α
.Lx324_0:
 .quad 9
# IR_LIT_INTEGER
 xchain159_n124_α:
 mov qword ptr [rbp + 10912], 6
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [rbp + 10920], rax
 jmp xchain159_n127_α
.Lx325_0:
 .quad 1
# IR_VAR_REF
 xchain159_n125_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 11616], rax
 mov qword ptr [rbp + 11624], rdx
 jmp xchain159_n128_α
 xchain159_n126_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11296] -> [zr+11264]
 mov rax, qword ptr [rbp + 11296]
 mov qword ptr [rbp + 11264], rax
 mov rax, qword ptr [rbp + 11304]
 mov qword ptr [rbp + 11272], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11264]
 movabs rsi, 9
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11248], rax
 mov qword ptr [rbp + 11256], rdx
 cmp eax, 99
 je xchain159_n130_α
 jmp xchain159_n129_α
 xchain159_n126_β:
 jmp xchain159_n130_α
# IR_LIT_INTEGER
 xchain159_n127_α:
 mov qword ptr [rbp + 10944], 6
 mov rax, qword ptr [rip + .Lx329_0]
 mov qword ptr [rbp + 10952], rax
 jmp xchain159_n131_α
.Lx329_0:
 .quad 10
# IR_LIT_INTEGER
 xchain159_n128_α:
 mov qword ptr [rbp + 11648], 6
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [rbp + 11656], rax
 jmp xchain159_n132_α
.Lx330_0:
 .quad 0
# IR_VAR_REF
 xchain159_n129_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 11184], rax
 mov qword ptr [rbp + 11192], rdx
 jmp xchain159_n133_α
 xchain159_n130_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+10992]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 10992], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 11000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 10992]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 10976], rax
 mov qword ptr [rbp + 10984], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n120_α
 xchain159_n130_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n131_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10880] -> [zr+10832]
 mov rax, qword ptr [rbp + 10880]
 mov qword ptr [rbp + 10832], rax
 mov rax, qword ptr [rbp + 10888]
 mov qword ptr [rbp + 10840], rax
# marshal arg1 = producer-box slot [zr+10912] -> [zr+10848]
 mov rax, qword ptr [rbp + 10912]
 mov qword ptr [rbp + 10848], rax
 mov rax, qword ptr [rbp + 10920]
 mov qword ptr [rbp + 10856], rax
# marshal arg2 = producer-box slot [zr+10944] -> [zr+10864]
 mov rax, qword ptr [rbp + 10944]
 mov qword ptr [rbp + 10864], rax
 mov rax, qword ptr [rbp + 10952]
 mov qword ptr [rbp + 10872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 10832]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 10816], rax
 mov qword ptr [rbp + 10824], rdx
 cmp eax, 99
 je xchain159_n135_α
 jmp xchain159_n134_α
 xchain159_n131_β:
 jmp xchain159_n135_α
 xchain159_n132_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11616] -> [zr+11584]
 mov rax, qword ptr [rbp + 11616]
 mov qword ptr [rbp + 11584], rax
 mov rax, qword ptr [rbp + 11624]
 mov qword ptr [rbp + 11592], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11584]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11568], rax
 mov qword ptr [rbp + 11576], rdx
 cmp eax, 99
 je xchain159_n115_α
 jmp xchain159_n136_α
 xchain159_n132_β:
 jmp xchain159_n115_α
# IR_LIT_INTEGER
 xchain159_n133_α:
 mov qword ptr [rbp + 11216], 6
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [rbp + 11224], rax
 jmp xchain159_n137_α
.Lx336_0:
 .quad 4
# IR_VAR_REF
 xchain159_n134_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10752], rax
 mov qword ptr [rbp + 10760], rdx
 jmp xchain159_n138_α
# IR_VAR_REF
 xchain159_n135_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10336], rax
 mov qword ptr [rbp + 10344], rdx
 jmp xchain159_n139_α
# IR_SUSPEND yield+resume
 xchain159_n136_α:
 lea rax, [rip + xchain159_n136_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n136_β:
 jmp xchain159_n115_α
 xchain159_n137_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11184] -> [zr+11152]
 mov rax, qword ptr [rbp + 11184]
 mov qword ptr [rbp + 11152], rax
 mov rax, qword ptr [rbp + 11192]
 mov qword ptr [rbp + 11160], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11152]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11136], rax
 mov qword ptr [rbp + 11144], rdx
 cmp eax, 99
 je xchain159_n130_α
 jmp xchain159_n140_α
 xchain159_n137_β:
 jmp xchain159_n130_α
# IR_LIT_INTEGER
 xchain159_n138_α:
 mov qword ptr [rbp + 10784], 6
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [rbp + 10792], rax
 jmp xchain159_n141_α
.Lx344_0:
 .quad 10
# IR_LIT_INTEGER
 xchain159_n139_α:
 mov qword ptr [rbp + 10368], 6
 mov rax, qword ptr [rip + .Lx345_0]
 mov qword ptr [rbp + 10376], rax
 jmp xchain159_n142_α
.Lx345_0:
 .quad 1
# IR_VAR_REF
 xchain159_n140_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 11072], rax
 mov qword ptr [rbp + 11080], rdx
 jmp xchain159_n143_α
 xchain159_n141_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10752] -> [zr+10720]
 mov rax, qword ptr [rbp + 10752]
 mov qword ptr [rbp + 10720], rax
 mov rax, qword ptr [rbp + 10760]
 mov qword ptr [rbp + 10728], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10720]
 movabs rsi, 10
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10704], rax
 mov qword ptr [rbp + 10712], rdx
 cmp eax, 99
 je xchain159_n145_α
 jmp xchain159_n144_α
 xchain159_n141_β:
 jmp xchain159_n145_α
# IR_LIT_INTEGER
 xchain159_n142_α:
 mov qword ptr [rbp + 10400], 6
 mov rax, qword ptr [rip + .Lx349_0]
 mov qword ptr [rbp + 10408], rax
 jmp xchain159_n146_α
.Lx349_0:
 .quad 11
# IR_LIT_INTEGER
 xchain159_n143_α:
 mov qword ptr [rbp + 11104], 6
 mov rax, qword ptr [rip + .Lx350_0]
 mov qword ptr [rbp + 11112], rax
 jmp xchain159_n147_α
.Lx350_0:
 .quad 0
# IR_VAR_REF
 xchain159_n144_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 10640], rax
 mov qword ptr [rbp + 10648], rdx
 jmp xchain159_n148_α
 xchain159_n145_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+10448]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 10448], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 10456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 10448]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 10432], rax
 mov qword ptr [rbp + 10440], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n135_α
 xchain159_n145_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n146_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10336] -> [zr+10288]
 mov rax, qword ptr [rbp + 10336]
 mov qword ptr [rbp + 10288], rax
 mov rax, qword ptr [rbp + 10344]
 mov qword ptr [rbp + 10296], rax
# marshal arg1 = producer-box slot [zr+10368] -> [zr+10304]
 mov rax, qword ptr [rbp + 10368]
 mov qword ptr [rbp + 10304], rax
 mov rax, qword ptr [rbp + 10376]
 mov qword ptr [rbp + 10312], rax
# marshal arg2 = producer-box slot [zr+10400] -> [zr+10320]
 mov rax, qword ptr [rbp + 10400]
 mov qword ptr [rbp + 10320], rax
 mov rax, qword ptr [rbp + 10408]
 mov qword ptr [rbp + 10328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 10288]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 10272], rax
 mov qword ptr [rbp + 10280], rdx
 cmp eax, 99
 je xchain159_n150_α
 jmp xchain159_n149_α
 xchain159_n146_β:
 jmp xchain159_n150_α
 xchain159_n147_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11072] -> [zr+11040]
 mov rax, qword ptr [rbp + 11072]
 mov qword ptr [rbp + 11040], rax
 mov rax, qword ptr [rbp + 11080]
 mov qword ptr [rbp + 11048], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11040]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11024], rax
 mov qword ptr [rbp + 11032], rdx
 cmp eax, 99
 je xchain159_n130_α
 jmp xchain159_n151_α
 xchain159_n147_β:
 jmp xchain159_n130_α
# IR_LIT_INTEGER
 xchain159_n148_α:
 mov qword ptr [rbp + 10672], 6
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [rbp + 10680], rax
 jmp xchain159_n152_α
.Lx356_0:
 .quad 6
# IR_VAR_REF
 xchain159_n149_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10208], rax
 mov qword ptr [rbp + 10216], rdx
 jmp xchain159_n153_α
# IR_VAR_REF
 xchain159_n150_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9792], rax
 mov qword ptr [rbp + 9800], rdx
 jmp xchain159_n154_α
# IR_SUSPEND yield+resume
 xchain159_n151_α:
 lea rax, [rip + xchain159_n151_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n151_β:
 jmp xchain159_n130_α
 xchain159_n152_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10640] -> [zr+10608]
 mov rax, qword ptr [rbp + 10640]
 mov qword ptr [rbp + 10608], rax
 mov rax, qword ptr [rbp + 10648]
 mov qword ptr [rbp + 10616], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10608]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10592], rax
 mov qword ptr [rbp + 10600], rdx
 cmp eax, 99
 je xchain159_n145_α
 jmp xchain159_n155_α
 xchain159_n152_β:
 jmp xchain159_n145_α
# IR_LIT_INTEGER
 xchain159_n153_α:
 mov qword ptr [rbp + 10240], 6
 mov rax, qword ptr [rip + .Lx364_0]
 mov qword ptr [rbp + 10248], rax
 jmp xchain159_n156_α
.Lx364_0:
 .quad 11
# IR_LIT_INTEGER
 xchain159_n154_α:
 mov qword ptr [rbp + 9824], 6
 mov rax, qword ptr [rip + .Lx365_0]
 mov qword ptr [rbp + 9832], rax
 jmp xchain159_n157_α
.Lx365_0:
 .quad 1
# IR_VAR_REF
 xchain159_n155_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 10528], rax
 mov qword ptr [rbp + 10536], rdx
 jmp xchain159_n158_α
 xchain159_n156_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10208] -> [zr+10176]
 mov rax, qword ptr [rbp + 10208]
 mov qword ptr [rbp + 10176], rax
 mov rax, qword ptr [rbp + 10216]
 mov qword ptr [rbp + 10184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10176]
 movabs rsi, 11
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10160], rax
 mov qword ptr [rbp + 10168], rdx
 cmp eax, 99
 je xchain159_n160_α
 jmp xchain159_n159_α
 xchain159_n156_β:
 jmp xchain159_n160_α
# IR_LIT_INTEGER
 xchain159_n157_α:
 mov qword ptr [rbp + 9856], 6
 mov rax, qword ptr [rip + .Lx369_0]
 mov qword ptr [rbp + 9864], rax
 jmp xchain159_n161_α
.Lx369_0:
 .quad 12
# IR_LIT_INTEGER
 xchain159_n158_α:
 mov qword ptr [rbp + 10560], 6
 mov rax, qword ptr [rip + .Lx370_0]
 mov qword ptr [rbp + 10568], rax
 jmp xchain159_n162_α
.Lx370_0:
 .quad 0
# IR_VAR_REF
 xchain159_n159_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 10096], rax
 mov qword ptr [rbp + 10104], rdx
 jmp xchain159_n163_α
 xchain159_n160_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+9904]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 9904], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 9912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 9904]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 9888], rax
 mov qword ptr [rbp + 9896], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n150_α
 xchain159_n160_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n161_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9792] -> [zr+9744]
 mov rax, qword ptr [rbp + 9792]
 mov qword ptr [rbp + 9744], rax
 mov rax, qword ptr [rbp + 9800]
 mov qword ptr [rbp + 9752], rax
# marshal arg1 = producer-box slot [zr+9824] -> [zr+9760]
 mov rax, qword ptr [rbp + 9824]
 mov qword ptr [rbp + 9760], rax
 mov rax, qword ptr [rbp + 9832]
 mov qword ptr [rbp + 9768], rax
# marshal arg2 = producer-box slot [zr+9856] -> [zr+9776]
 mov rax, qword ptr [rbp + 9856]
 mov qword ptr [rbp + 9776], rax
 mov rax, qword ptr [rbp + 9864]
 mov qword ptr [rbp + 9784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 9744]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 9728], rax
 mov qword ptr [rbp + 9736], rdx
 cmp eax, 99
 je xchain159_n165_α
 jmp xchain159_n164_α
 xchain159_n161_β:
 jmp xchain159_n165_α
 xchain159_n162_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10528] -> [zr+10496]
 mov rax, qword ptr [rbp + 10528]
 mov qword ptr [rbp + 10496], rax
 mov rax, qword ptr [rbp + 10536]
 mov qword ptr [rbp + 10504], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10496]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10480], rax
 mov qword ptr [rbp + 10488], rdx
 cmp eax, 99
 je xchain159_n145_α
 jmp xchain159_n166_α
 xchain159_n162_β:
 jmp xchain159_n145_α
# IR_LIT_INTEGER
 xchain159_n163_α:
 mov qword ptr [rbp + 10128], 6
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [rbp + 10136], rax
 jmp xchain159_n167_α
.Lx376_0:
 .quad 2
# IR_VAR_REF
 xchain159_n164_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9664], rax
 mov qword ptr [rbp + 9672], rdx
 jmp xchain159_n168_α
# IR_VAR_REF
 xchain159_n165_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9280], rax
 mov qword ptr [rbp + 9288], rdx
 jmp xchain159_n169_α
# IR_SUSPEND yield+resume
 xchain159_n166_α:
 lea rax, [rip + xchain159_n166_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n166_β:
 jmp xchain159_n145_α
 xchain159_n167_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10096] -> [zr+10064]
 mov rax, qword ptr [rbp + 10096]
 mov qword ptr [rbp + 10064], rax
 mov rax, qword ptr [rbp + 10104]
 mov qword ptr [rbp + 10072], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10064]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10048], rax
 mov qword ptr [rbp + 10056], rdx
 cmp eax, 99
 je xchain159_n160_α
 jmp xchain159_n170_α
 xchain159_n167_β:
 jmp xchain159_n160_α
# IR_LIT_INTEGER
 xchain159_n168_α:
 mov qword ptr [rbp + 9696], 6
 mov rax, qword ptr [rip + .Lx384_0]
 mov qword ptr [rbp + 9704], rax
 jmp xchain159_n171_α
.Lx384_0:
 .quad 12
# IR_LIT_STRING
 xchain159_n169_α:
 mov qword ptr [rbp + 9312], 1
 mov rax, qword ptr [rip + .Lx385_0]
 mov qword ptr [rbp + 9320], rax
 jmp xchain159_n172_α
.Lx385_0:
 .quad .Lx385_0_s
.Lx385_0_s:
 .string "jan"
# IR_VAR_REF
 xchain159_n170_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 9984], rax
 mov qword ptr [rbp + 9992], rdx
 jmp xchain159_n173_α
 xchain159_n171_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9664] -> [zr+9632]
 mov rax, qword ptr [rbp + 9664]
 mov qword ptr [rbp + 9632], rax
 mov rax, qword ptr [rbp + 9672]
 mov qword ptr [rbp + 9640], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 9632]
 movabs rsi, 12
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 9616], rax
 mov qword ptr [rbp + 9624], rdx
 cmp eax, 99
 je xchain159_n175_α
 jmp xchain159_n174_α
 xchain159_n171_β:
 jmp xchain159_n175_α
 xchain159_n172_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9280] -> [zr+9248]
 mov rax, qword ptr [rbp + 9280]
 mov qword ptr [rbp + 9248], rax
 mov rax, qword ptr [rbp + 9288]
 mov qword ptr [rbp + 9256], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 9248]
 mov rsi, qword ptr [rip + .Lx389_2]
 jmp .Lx389_3
.Lx389_2:
 .quad .Lx389_2_s
.Lx389_2_s:
 .string "jan"
.Lx389_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 9232], rax
 mov qword ptr [rbp + 9240], rdx
 cmp eax, 99
 je xchain159_n177_α
 jmp xchain159_n176_α
 xchain159_n172_β:
 jmp xchain159_n177_α
# IR_LIT_INTEGER
 xchain159_n173_α:
 mov qword ptr [rbp + 10016], 6
 mov rax, qword ptr [rip + .Lx390_0]
 mov qword ptr [rbp + 10024], rax
 jmp xchain159_n178_α
.Lx390_0:
 .quad 0
# IR_VAR_REF
 xchain159_n174_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9552], rax
 mov qword ptr [rbp + 9560], rdx
 jmp xchain159_n179_α
 xchain159_n175_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+9360]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 9360], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 9368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 9360]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 9344], rax
 mov qword ptr [rbp + 9352], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n165_α
 xchain159_n175_β:
 jmp proc_cal_key$2F3_ω
# IR_VAR_REF
 xchain159_n176_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9168], rax
 mov qword ptr [rbp + 9176], rdx
 jmp xchain159_n180_α
 xchain159_n177_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+8976]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 8976], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8976]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8960], rax
 mov qword ptr [rbp + 8968], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n181_α
 xchain159_n177_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n178_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9984] -> [zr+9952]
 mov rax, qword ptr [rbp + 9984]
 mov qword ptr [rbp + 9952], rax
 mov rax, qword ptr [rbp + 9992]
 mov qword ptr [rbp + 9960], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 9952]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 9936], rax
 mov qword ptr [rbp + 9944], rdx
 cmp eax, 99
 je xchain159_n160_α
 jmp xchain159_n182_α
 xchain159_n178_β:
 jmp xchain159_n160_α
# IR_LIT_INTEGER
 xchain159_n179_α:
 mov qword ptr [rbp + 9584], 6
 mov rax, qword ptr [rip + .Lx398_0]
 mov qword ptr [rbp + 9592], rax
 jmp xchain159_n183_α
.Lx398_0:
 .quad 4
# IR_LIT_INTEGER
 xchain159_n180_α:
 mov qword ptr [rbp + 9200], 6
 mov rax, qword ptr [rip + .Lx399_0]
 mov qword ptr [rbp + 9208], rax
 jmp xchain159_n184_α
.Lx399_0:
 .quad 6
# IR_VAR_REF
 xchain159_n181_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8896], rax
 mov qword ptr [rbp + 8904], rdx
 jmp xchain159_n185_α
# IR_SUSPEND yield+resume
 xchain159_n182_α:
 lea rax, [rip + xchain159_n182_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n182_β:
 jmp xchain159_n160_α
 xchain159_n183_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9552] -> [zr+9520]
 mov rax, qword ptr [rbp + 9552]
 mov qword ptr [rbp + 9520], rax
 mov rax, qword ptr [rbp + 9560]
 mov qword ptr [rbp + 9528], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 9520]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 9504], rax
 mov qword ptr [rbp + 9512], rdx
 cmp eax, 99
 je xchain159_n175_α
 jmp xchain159_n186_α
 xchain159_n183_β:
 jmp xchain159_n175_α
 xchain159_n184_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9168] -> [zr+9136]
 mov rax, qword ptr [rbp + 9168]
 mov qword ptr [rbp + 9136], rax
 mov rax, qword ptr [rbp + 9176]
 mov qword ptr [rbp + 9144], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 9136]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 9120], rax
 mov qword ptr [rbp + 9128], rdx
 cmp eax, 99
 je xchain159_n177_α
 jmp xchain159_n187_α
 xchain159_n184_β:
 jmp xchain159_n177_α
# IR_LIT_STRING
 xchain159_n185_α:
 mov qword ptr [rbp + 8928], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [rbp + 8936], rax
 jmp xchain159_n188_α
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "feb"
# IR_VAR_REF
 xchain159_n186_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 9440], rax
 mov qword ptr [rbp + 9448], rdx
 jmp xchain159_n189_α
# IR_VAR_REF
 xchain159_n187_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 9056], rax
 mov qword ptr [rbp + 9064], rdx
 jmp xchain159_n190_α
 xchain159_n188_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8896] -> [zr+8864]
 mov rax, qword ptr [rbp + 8896]
 mov qword ptr [rbp + 8864], rax
 mov rax, qword ptr [rbp + 8904]
 mov qword ptr [rbp + 8872], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 8864]
 mov rsi, qword ptr [rip + .Lx411_2]
 jmp .Lx411_3
.Lx411_2:
 .quad .Lx411_2_s
.Lx411_2_s:
 .string "feb"
.Lx411_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 8848], rax
 mov qword ptr [rbp + 8856], rdx
 cmp eax, 99
 je xchain159_n192_α
 jmp xchain159_n191_α
 xchain159_n188_β:
 jmp xchain159_n192_α
# IR_LIT_INTEGER
 xchain159_n189_α:
 mov qword ptr [rbp + 9472], 6
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [rbp + 9480], rax
 jmp xchain159_n193_α
.Lx412_0:
 .quad 0
# IR_LIT_INTEGER
 xchain159_n190_α:
 mov qword ptr [rbp + 9088], 6
 mov rax, qword ptr [rip + .Lx413_0]
 mov qword ptr [rbp + 9096], rax
 jmp xchain159_n194_α
.Lx413_0:
 .quad 1
# IR_VAR_REF
 xchain159_n191_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8784], rax
 mov qword ptr [rbp + 8792], rdx
 jmp xchain159_n195_α
 xchain159_n192_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+8592]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 8592], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8592]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8576], rax
 mov qword ptr [rbp + 8584], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n196_α
 xchain159_n192_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n193_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9440] -> [zr+9408]
 mov rax, qword ptr [rbp + 9440]
 mov qword ptr [rbp + 9408], rax
 mov rax, qword ptr [rbp + 9448]
 mov qword ptr [rbp + 9416], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 9408]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 9392], rax
 mov qword ptr [rbp + 9400], rdx
 cmp eax, 99
 je xchain159_n175_α
 jmp xchain159_n197_α
 xchain159_n193_β:
 jmp xchain159_n175_α
 xchain159_n194_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9056] -> [zr+9024]
 mov rax, qword ptr [rbp + 9056]
 mov qword ptr [rbp + 9024], rax
 mov rax, qword ptr [rbp + 9064]
 mov qword ptr [rbp + 9032], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 9024]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 9008], rax
 mov qword ptr [rbp + 9016], rdx
 cmp eax, 99
 je xchain159_n177_α
 jmp xchain159_n198_α
 xchain159_n194_β:
 jmp xchain159_n177_α
# IR_LIT_INTEGER
 xchain159_n195_α:
 mov qword ptr [rbp + 8816], 6
 mov rax, qword ptr [rip + .Lx419_0]
 mov qword ptr [rbp + 8824], rax
 jmp xchain159_n199_α
.Lx419_0:
 .quad 2
# IR_VAR_REF
 xchain159_n196_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8512], rax
 mov qword ptr [rbp + 8520], rdx
 jmp xchain159_n200_α
# IR_SUSPEND yield+resume
 xchain159_n197_α:
 lea rax, [rip + xchain159_n197_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n197_β:
 jmp xchain159_n175_α
# IR_SUSPEND yield+resume
 xchain159_n198_α:
 lea rax, [rip + xchain159_n198_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n198_β:
 jmp xchain159_n177_α
 xchain159_n199_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8784] -> [zr+8752]
 mov rax, qword ptr [rbp + 8784]
 mov qword ptr [rbp + 8752], rax
 mov rax, qword ptr [rbp + 8792]
 mov qword ptr [rbp + 8760], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 8752]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 8736], rax
 mov qword ptr [rbp + 8744], rdx
 cmp eax, 99
 je xchain159_n192_α
 jmp xchain159_n201_α
 xchain159_n199_β:
 jmp xchain159_n192_α
# IR_LIT_STRING
 xchain159_n200_α:
 mov qword ptr [rbp + 8544], 1
 mov rax, qword ptr [rip + .Lx427_0]
 mov qword ptr [rbp + 8552], rax
 jmp xchain159_n202_α
.Lx427_0:
 .quad .Lx427_0_s
.Lx427_0_s:
 .string "mar"
# IR_VAR_REF
 xchain159_n201_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8672], rax
 mov qword ptr [rbp + 8680], rdx
 jmp xchain159_n203_α
 xchain159_n202_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8512] -> [zr+8480]
 mov rax, qword ptr [rbp + 8512]
 mov qword ptr [rbp + 8480], rax
 mov rax, qword ptr [rbp + 8520]
 mov qword ptr [rbp + 8488], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 8480]
 mov rsi, qword ptr [rip + .Lx430_2]
 jmp .Lx430_3
.Lx430_2:
 .quad .Lx430_2_s
.Lx430_2_s:
 .string "mar"
.Lx430_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 8464], rax
 mov qword ptr [rbp + 8472], rdx
 cmp eax, 99
 je xchain159_n205_α
 jmp xchain159_n204_α
 xchain159_n202_β:
 jmp xchain159_n205_α
# IR_LIT_INTEGER
 xchain159_n203_α:
 mov qword ptr [rbp + 8704], 6
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [rbp + 8712], rax
 jmp xchain159_n206_α
.Lx431_0:
 .quad 1
# IR_VAR_REF
 xchain159_n204_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8400], rax
 mov qword ptr [rbp + 8408], rdx
 jmp xchain159_n207_α
 xchain159_n205_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+8208]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 8208], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8216], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8208]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8192], rax
 mov qword ptr [rbp + 8200], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n208_α
 xchain159_n205_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n206_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8672] -> [zr+8640]
 mov rax, qword ptr [rbp + 8672]
 mov qword ptr [rbp + 8640], rax
 mov rax, qword ptr [rbp + 8680]
 mov qword ptr [rbp + 8648], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 8640]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 8624], rax
 mov qword ptr [rbp + 8632], rdx
 cmp eax, 99
 je xchain159_n192_α
 jmp xchain159_n209_α
 xchain159_n206_β:
 jmp xchain159_n192_α
# IR_LIT_INTEGER
 xchain159_n207_α:
 mov qword ptr [rbp + 8432], 6
 mov rax, qword ptr [rip + .Lx436_0]
 mov qword ptr [rbp + 8440], rax
 jmp xchain159_n210_α
.Lx436_0:
 .quad 2
# IR_VAR_REF
 xchain159_n208_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8128], rax
 mov qword ptr [rbp + 8136], rdx
 jmp xchain159_n211_α
# IR_SUSPEND yield+resume
 xchain159_n209_α:
 lea rax, [rip + xchain159_n209_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n209_β:
 jmp xchain159_n192_α
 xchain159_n210_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8400] -> [zr+8368]
 mov rax, qword ptr [rbp + 8400]
 mov qword ptr [rbp + 8368], rax
 mov rax, qword ptr [rbp + 8408]
 mov qword ptr [rbp + 8376], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 8368]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 8352], rax
 mov qword ptr [rbp + 8360], rdx
 cmp eax, 99
 je xchain159_n205_α
 jmp xchain159_n212_α
 xchain159_n210_β:
 jmp xchain159_n205_α
# IR_LIT_STRING
 xchain159_n211_α:
 mov qword ptr [rbp + 8160], 1
 mov rax, qword ptr [rip + .Lx442_0]
 mov qword ptr [rbp + 8168], rax
 jmp xchain159_n213_α
.Lx442_0:
 .quad .Lx442_0_s
.Lx442_0_s:
 .string "apr"
# IR_VAR_REF
 xchain159_n212_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8288], rax
 mov qword ptr [rbp + 8296], rdx
 jmp xchain159_n214_α
 xchain159_n213_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8128] -> [zr+8096]
 mov rax, qword ptr [rbp + 8128]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 8136]
 mov qword ptr [rbp + 8104], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 8096]
 mov rsi, qword ptr [rip + .Lx445_2]
 jmp .Lx445_3
.Lx445_2:
 .quad .Lx445_2_s
.Lx445_2_s:
 .string "apr"
.Lx445_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je xchain159_n216_α
 jmp xchain159_n215_α
 xchain159_n213_β:
 jmp xchain159_n216_α
# IR_LIT_INTEGER
 xchain159_n214_α:
 mov qword ptr [rbp + 8320], 6
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [rbp + 8328], rax
 jmp xchain159_n217_α
.Lx446_0:
 .quad 0
# IR_VAR_REF
 xchain159_n215_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8016], rax
 mov qword ptr [rbp + 8024], rdx
 jmp xchain159_n218_α
 xchain159_n216_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+7824]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 7824], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 7832], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 7824]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 7808], rax
 mov qword ptr [rbp + 7816], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n219_α
 xchain159_n216_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n217_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8288] -> [zr+8256]
 mov rax, qword ptr [rbp + 8288]
 mov qword ptr [rbp + 8256], rax
 mov rax, qword ptr [rbp + 8296]
 mov qword ptr [rbp + 8264], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 8256]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 8240], rax
 mov qword ptr [rbp + 8248], rdx
 cmp eax, 99
 je xchain159_n205_α
 jmp xchain159_n220_α
 xchain159_n217_β:
 jmp xchain159_n205_α
# IR_LIT_INTEGER
 xchain159_n218_α:
 mov qword ptr [rbp + 8048], 6
 mov rax, qword ptr [rip + .Lx451_0]
 mov qword ptr [rbp + 8056], rax
 jmp xchain159_n221_α
.Lx451_0:
 .quad 5
# IR_VAR_REF
 xchain159_n219_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 7744], rax
 mov qword ptr [rbp + 7752], rdx
 jmp xchain159_n222_α
# IR_SUSPEND yield+resume
 xchain159_n220_α:
 lea rax, [rip + xchain159_n220_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n220_β:
 jmp xchain159_n205_α
 xchain159_n221_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8016] -> [zr+7984]
 mov rax, qword ptr [rbp + 8016]
 mov qword ptr [rbp + 7984], rax
 mov rax, qword ptr [rbp + 8024]
 mov qword ptr [rbp + 7992], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7984]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7968], rax
 mov qword ptr [rbp + 7976], rdx
 cmp eax, 99
 je xchain159_n216_α
 jmp xchain159_n223_α
 xchain159_n221_β:
 jmp xchain159_n216_α
# IR_LIT_STRING
 xchain159_n222_α:
 mov qword ptr [rbp + 7776], 1
 mov rax, qword ptr [rip + .Lx457_0]
 mov qword ptr [rbp + 7784], rax
 jmp xchain159_n224_α
.Lx457_0:
 .quad .Lx457_0_s
.Lx457_0_s:
 .string "may"
# IR_VAR_REF
 xchain159_n223_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 7904], rax
 mov qword ptr [rbp + 7912], rdx
 jmp xchain159_n225_α
 xchain159_n224_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7744] -> [zr+7712]
 mov rax, qword ptr [rbp + 7744]
 mov qword ptr [rbp + 7712], rax
 mov rax, qword ptr [rbp + 7752]
 mov qword ptr [rbp + 7720], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 7712]
 mov rsi, qword ptr [rip + .Lx460_2]
 jmp .Lx460_3
.Lx460_2:
 .quad .Lx460_2_s
.Lx460_2_s:
 .string "may"
.Lx460_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 7696], rax
 mov qword ptr [rbp + 7704], rdx
 cmp eax, 99
 je xchain159_n227_α
 jmp xchain159_n226_α
 xchain159_n224_β:
 jmp xchain159_n227_α
# IR_LIT_INTEGER
 xchain159_n225_α:
 mov qword ptr [rbp + 7936], 6
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [rbp + 7944], rax
 jmp xchain159_n228_α
.Lx461_0:
 .quad 0
# IR_VAR_REF
 xchain159_n226_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 7632], rax
 mov qword ptr [rbp + 7640], rdx
 jmp xchain159_n229_α
 xchain159_n227_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+7440]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 7440], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 7448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 7440]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 7424], rax
 mov qword ptr [rbp + 7432], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n230_α
 xchain159_n227_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n228_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7904] -> [zr+7872]
 mov rax, qword ptr [rbp + 7904]
 mov qword ptr [rbp + 7872], rax
 mov rax, qword ptr [rbp + 7912]
 mov qword ptr [rbp + 7880], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7872]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7856], rax
 mov qword ptr [rbp + 7864], rdx
 cmp eax, 99
 je xchain159_n216_α
 jmp xchain159_n231_α
 xchain159_n228_β:
 jmp xchain159_n216_α
# IR_LIT_INTEGER
 xchain159_n229_α:
 mov qword ptr [rbp + 7664], 6
 mov rax, qword ptr [rip + .Lx466_0]
 mov qword ptr [rbp + 7672], rax
 jmp xchain159_n232_α
.Lx466_0:
 .quad 0
# IR_VAR_REF
 xchain159_n230_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 7360], rax
 mov qword ptr [rbp + 7368], rdx
 jmp xchain159_n233_α
# IR_SUSPEND yield+resume
 xchain159_n231_α:
 lea rax, [rip + xchain159_n231_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n231_β:
 jmp xchain159_n216_α
 xchain159_n232_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7632] -> [zr+7600]
 mov rax, qword ptr [rbp + 7632]
 mov qword ptr [rbp + 7600], rax
 mov rax, qword ptr [rbp + 7640]
 mov qword ptr [rbp + 7608], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7600]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 cmp eax, 99
 je xchain159_n227_α
 jmp xchain159_n234_α
 xchain159_n232_β:
 jmp xchain159_n227_α
# IR_LIT_STRING
 xchain159_n233_α:
 mov qword ptr [rbp + 7392], 1
 mov rax, qword ptr [rip + .Lx472_0]
 mov qword ptr [rbp + 7400], rax
 jmp xchain159_n235_α
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "jun"
# IR_VAR_REF
 xchain159_n234_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 jmp xchain159_n236_α
 xchain159_n235_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7360] -> [zr+7328]
 mov rax, qword ptr [rbp + 7360]
 mov qword ptr [rbp + 7328], rax
 mov rax, qword ptr [rbp + 7368]
 mov qword ptr [rbp + 7336], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 7328]
 mov rsi, qword ptr [rip + .Lx475_2]
 jmp .Lx475_3
.Lx475_2:
 .quad .Lx475_2_s
.Lx475_2_s:
 .string "jun"
.Lx475_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 7312], rax
 mov qword ptr [rbp + 7320], rdx
 cmp eax, 99
 je xchain159_n238_α
 jmp xchain159_n237_α
 xchain159_n235_β:
 jmp xchain159_n238_α
# IR_LIT_INTEGER
 xchain159_n236_α:
 mov qword ptr [rbp + 7552], 6
 mov rax, qword ptr [rip + .Lx476_0]
 mov qword ptr [rbp + 7560], rax
 jmp xchain159_n239_α
.Lx476_0:
 .quad 0
# IR_VAR_REF
 xchain159_n237_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 7248], rax
 mov qword ptr [rbp + 7256], rdx
 jmp xchain159_n240_α
 xchain159_n238_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+7056]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 7056], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 7064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 7056]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 7040], rax
 mov qword ptr [rbp + 7048], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n241_α
 xchain159_n238_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n239_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7520] -> [zr+7488]
 mov rax, qword ptr [rbp + 7520]
 mov qword ptr [rbp + 7488], rax
 mov rax, qword ptr [rbp + 7528]
 mov qword ptr [rbp + 7496], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7488]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 cmp eax, 99
 je xchain159_n227_α
 jmp xchain159_n242_α
 xchain159_n239_β:
 jmp xchain159_n227_α
# IR_LIT_INTEGER
 xchain159_n240_α:
 mov qword ptr [rbp + 7280], 6
 mov rax, qword ptr [rip + .Lx481_0]
 mov qword ptr [rbp + 7288], rax
 jmp xchain159_n243_α
.Lx481_0:
 .quad 3
# IR_VAR_REF
 xchain159_n241_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6976], rax
 mov qword ptr [rbp + 6984], rdx
 jmp xchain159_n244_α
# IR_SUSPEND yield+resume
 xchain159_n242_α:
 lea rax, [rip + xchain159_n242_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n242_β:
 jmp xchain159_n227_α
 xchain159_n243_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7248] -> [zr+7216]
 mov rax, qword ptr [rbp + 7248]
 mov qword ptr [rbp + 7216], rax
 mov rax, qword ptr [rbp + 7256]
 mov qword ptr [rbp + 7224], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7216]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7200], rax
 mov qword ptr [rbp + 7208], rdx
 cmp eax, 99
 je xchain159_n238_α
 jmp xchain159_n245_α
 xchain159_n243_β:
 jmp xchain159_n238_α
# IR_LIT_STRING
 xchain159_n244_α:
 mov qword ptr [rbp + 7008], 1
 mov rax, qword ptr [rip + .Lx487_0]
 mov qword ptr [rbp + 7016], rax
 jmp xchain159_n246_α
.Lx487_0:
 .quad .Lx487_0_s
.Lx487_0_s:
 .string "jul"
# IR_VAR_REF
 xchain159_n245_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 7136], rax
 mov qword ptr [rbp + 7144], rdx
 jmp xchain159_n247_α
 xchain159_n246_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6976] -> [zr+6944]
 mov rax, qword ptr [rbp + 6976]
 mov qword ptr [rbp + 6944], rax
 mov rax, qword ptr [rbp + 6984]
 mov qword ptr [rbp + 6952], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6944]
 mov rsi, qword ptr [rip + .Lx490_2]
 jmp .Lx490_3
.Lx490_2:
 .quad .Lx490_2_s
.Lx490_2_s:
 .string "jul"
.Lx490_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6928], rax
 mov qword ptr [rbp + 6936], rdx
 cmp eax, 99
 je xchain159_n249_α
 jmp xchain159_n248_α
 xchain159_n246_β:
 jmp xchain159_n249_α
# IR_LIT_INTEGER
 xchain159_n247_α:
 mov qword ptr [rbp + 7168], 6
 mov rax, qword ptr [rip + .Lx491_0]
 mov qword ptr [rbp + 7176], rax
 jmp xchain159_n250_α
.Lx491_0:
 .quad 0
# IR_VAR_REF
 xchain159_n248_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6864], rax
 mov qword ptr [rbp + 6872], rdx
 jmp xchain159_n251_α
 xchain159_n249_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+6672]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 6672], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 6680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6672]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n252_α
 xchain159_n249_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n250_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7136] -> [zr+7104]
 mov rax, qword ptr [rbp + 7136]
 mov qword ptr [rbp + 7104], rax
 mov rax, qword ptr [rbp + 7144]
 mov qword ptr [rbp + 7112], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7104]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
 cmp eax, 99
 je xchain159_n238_α
 jmp xchain159_n253_α
 xchain159_n250_β:
 jmp xchain159_n238_α
# IR_LIT_INTEGER
 xchain159_n251_α:
 mov qword ptr [rbp + 6896], 6
 mov rax, qword ptr [rip + .Lx496_0]
 mov qword ptr [rbp + 6904], rax
 jmp xchain159_n254_α
.Lx496_0:
 .quad 5
# IR_VAR_REF
 xchain159_n252_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6592], rax
 mov qword ptr [rbp + 6600], rdx
 jmp xchain159_n255_α
# IR_SUSPEND yield+resume
 xchain159_n253_α:
 lea rax, [rip + xchain159_n253_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n253_β:
 jmp xchain159_n238_α
 xchain159_n254_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6864] -> [zr+6832]
 mov rax, qword ptr [rbp + 6864]
 mov qword ptr [rbp + 6832], rax
 mov rax, qword ptr [rbp + 6872]
 mov qword ptr [rbp + 6840], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6832]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6816], rax
 mov qword ptr [rbp + 6824], rdx
 cmp eax, 99
 je xchain159_n249_α
 jmp xchain159_n256_α
 xchain159_n254_β:
 jmp xchain159_n249_α
# IR_LIT_STRING
 xchain159_n255_α:
 mov qword ptr [rbp + 6624], 1
 mov rax, qword ptr [rip + .Lx502_0]
 mov qword ptr [rbp + 6632], rax
 jmp xchain159_n257_α
.Lx502_0:
 .quad .Lx502_0_s
.Lx502_0_s:
 .string "aug"
# IR_VAR_REF
 xchain159_n256_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 6752], rax
 mov qword ptr [rbp + 6760], rdx
 jmp xchain159_n258_α
 xchain159_n257_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6592] -> [zr+6560]
 mov rax, qword ptr [rbp + 6592]
 mov qword ptr [rbp + 6560], rax
 mov rax, qword ptr [rbp + 6600]
 mov qword ptr [rbp + 6568], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6560]
 mov rsi, qword ptr [rip + .Lx505_2]
 jmp .Lx505_3
.Lx505_2:
 .quad .Lx505_2_s
.Lx505_2_s:
 .string "aug"
.Lx505_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
 cmp eax, 99
 je xchain159_n260_α
 jmp xchain159_n259_α
 xchain159_n257_β:
 jmp xchain159_n260_α
# IR_LIT_INTEGER
 xchain159_n258_α:
 mov qword ptr [rbp + 6784], 6
 mov rax, qword ptr [rip + .Lx506_0]
 mov qword ptr [rbp + 6792], rax
 jmp xchain159_n261_α
.Lx506_0:
 .quad 0
# IR_VAR_REF
 xchain159_n259_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6480], rax
 mov qword ptr [rbp + 6488], rdx
 jmp xchain159_n262_α
 xchain159_n260_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+6288]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 6288], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 6296], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6288]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6272], rax
 mov qword ptr [rbp + 6280], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n263_α
 xchain159_n260_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n261_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6752] -> [zr+6720]
 mov rax, qword ptr [rbp + 6752]
 mov qword ptr [rbp + 6720], rax
 mov rax, qword ptr [rbp + 6760]
 mov qword ptr [rbp + 6728], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6720]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6704], rax
 mov qword ptr [rbp + 6712], rdx
 cmp eax, 99
 je xchain159_n249_α
 jmp xchain159_n264_α
 xchain159_n261_β:
 jmp xchain159_n249_α
# IR_LIT_INTEGER
 xchain159_n262_α:
 mov qword ptr [rbp + 6512], 6
 mov rax, qword ptr [rip + .Lx511_0]
 mov qword ptr [rbp + 6520], rax
 jmp xchain159_n265_α
.Lx511_0:
 .quad 1
# IR_VAR_REF
 xchain159_n263_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6208], rax
 mov qword ptr [rbp + 6216], rdx
 jmp xchain159_n266_α
# IR_SUSPEND yield+resume
 xchain159_n264_α:
 lea rax, [rip + xchain159_n264_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n264_β:
 jmp xchain159_n249_α
 xchain159_n265_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6480] -> [zr+6448]
 mov rax, qword ptr [rbp + 6480]
 mov qword ptr [rbp + 6448], rax
 mov rax, qword ptr [rbp + 6488]
 mov qword ptr [rbp + 6456], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6448]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6432], rax
 mov qword ptr [rbp + 6440], rdx
 cmp eax, 99
 je xchain159_n260_α
 jmp xchain159_n267_α
 xchain159_n265_β:
 jmp xchain159_n260_α
# IR_LIT_STRING
 xchain159_n266_α:
 mov qword ptr [rbp + 6240], 1
 mov rax, qword ptr [rip + .Lx517_0]
 mov qword ptr [rbp + 6248], rax
 jmp xchain159_n268_α
.Lx517_0:
 .quad .Lx517_0_s
.Lx517_0_s:
 .string "sep"
# IR_VAR_REF
 xchain159_n267_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 6368], rax
 mov qword ptr [rbp + 6376], rdx
 jmp xchain159_n269_α
 xchain159_n268_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6208] -> [zr+6176]
 mov rax, qword ptr [rbp + 6208]
 mov qword ptr [rbp + 6176], rax
 mov rax, qword ptr [rbp + 6216]
 mov qword ptr [rbp + 6184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6176]
 mov rsi, qword ptr [rip + .Lx520_2]
 jmp .Lx520_3
.Lx520_2:
 .quad .Lx520_2_s
.Lx520_2_s:
 .string "sep"
.Lx520_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6160], rax
 mov qword ptr [rbp + 6168], rdx
 cmp eax, 99
 je xchain159_n271_α
 jmp xchain159_n270_α
 xchain159_n268_β:
 jmp xchain159_n271_α
# IR_LIT_INTEGER
 xchain159_n269_α:
 mov qword ptr [rbp + 6400], 6
 mov rax, qword ptr [rip + .Lx521_0]
 mov qword ptr [rbp + 6408], rax
 jmp xchain159_n272_α
.Lx521_0:
 .quad 0
# IR_VAR_REF
 xchain159_n270_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6096], rax
 mov qword ptr [rbp + 6104], rdx
 jmp xchain159_n273_α
 xchain159_n271_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+5904]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 5904], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 5912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5904]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5888], rax
 mov qword ptr [rbp + 5896], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n274_α
 xchain159_n271_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n272_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6368] -> [zr+6336]
 mov rax, qword ptr [rbp + 6368]
 mov qword ptr [rbp + 6336], rax
 mov rax, qword ptr [rbp + 6376]
 mov qword ptr [rbp + 6344], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6336]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6320], rax
 mov qword ptr [rbp + 6328], rdx
 cmp eax, 99
 je xchain159_n260_α
 jmp xchain159_n275_α
 xchain159_n272_β:
 jmp xchain159_n260_α
# IR_LIT_INTEGER
 xchain159_n273_α:
 mov qword ptr [rbp + 6128], 6
 mov rax, qword ptr [rip + .Lx526_0]
 mov qword ptr [rbp + 6136], rax
 jmp xchain159_n276_α
.Lx526_0:
 .quad 4
# IR_VAR_REF
 xchain159_n274_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5824], rax
 mov qword ptr [rbp + 5832], rdx
 jmp xchain159_n277_α
# IR_SUSPEND yield+resume
 xchain159_n275_α:
 lea rax, [rip + xchain159_n275_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n275_β:
 jmp xchain159_n260_α
 xchain159_n276_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6096] -> [zr+6064]
 mov rax, qword ptr [rbp + 6096]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 6104]
 mov qword ptr [rbp + 6072], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6064]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 cmp eax, 99
 je xchain159_n271_α
 jmp xchain159_n278_α
 xchain159_n276_β:
 jmp xchain159_n271_α
# IR_LIT_STRING
 xchain159_n277_α:
 mov qword ptr [rbp + 5856], 1
 mov rax, qword ptr [rip + .Lx532_0]
 mov qword ptr [rbp + 5864], rax
 jmp xchain159_n279_α
.Lx532_0:
 .quad .Lx532_0_s
.Lx532_0_s:
 .string "oct"
# IR_VAR_REF
 xchain159_n278_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 jmp xchain159_n280_α
 xchain159_n279_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5824] -> [zr+5792]
 mov rax, qword ptr [rbp + 5824]
 mov qword ptr [rbp + 5792], rax
 mov rax, qword ptr [rbp + 5832]
 mov qword ptr [rbp + 5800], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5792]
 mov rsi, qword ptr [rip + .Lx535_2]
 jmp .Lx535_3
.Lx535_2:
 .quad .Lx535_2_s
.Lx535_2_s:
 .string "oct"
.Lx535_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5776], rax
 mov qword ptr [rbp + 5784], rdx
 cmp eax, 99
 je xchain159_n282_α
 jmp xchain159_n281_α
 xchain159_n279_β:
 jmp xchain159_n282_α
# IR_LIT_INTEGER
 xchain159_n280_α:
 mov qword ptr [rbp + 6016], 6
 mov rax, qword ptr [rip + .Lx536_0]
 mov qword ptr [rbp + 6024], rax
 jmp xchain159_n283_α
.Lx536_0:
 .quad 0
# IR_VAR_REF
 xchain159_n281_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5712], rax
 mov qword ptr [rbp + 5720], rdx
 jmp xchain159_n284_α
 xchain159_n282_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+5520]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 5520], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 5528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5520]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5504], rax
 mov qword ptr [rbp + 5512], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n285_α
 xchain159_n282_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n283_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5984] -> [zr+5952]
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 5952], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 5960], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5952]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5936], rax
 mov qword ptr [rbp + 5944], rdx
 cmp eax, 99
 je xchain159_n271_α
 jmp xchain159_n286_α
 xchain159_n283_β:
 jmp xchain159_n271_α
# IR_LIT_INTEGER
 xchain159_n284_α:
 mov qword ptr [rbp + 5744], 6
 mov rax, qword ptr [rip + .Lx541_0]
 mov qword ptr [rbp + 5752], rax
 jmp xchain159_n287_α
.Lx541_0:
 .quad 6
# IR_VAR_REF
 xchain159_n285_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5440], rax
 mov qword ptr [rbp + 5448], rdx
 jmp xchain159_n288_α
# IR_SUSPEND yield+resume
 xchain159_n286_α:
 lea rax, [rip + xchain159_n286_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n286_β:
 jmp xchain159_n271_α
 xchain159_n287_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5712] -> [zr+5680]
 mov rax, qword ptr [rbp + 5712]
 mov qword ptr [rbp + 5680], rax
 mov rax, qword ptr [rbp + 5720]
 mov qword ptr [rbp + 5688], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5680]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5664], rax
 mov qword ptr [rbp + 5672], rdx
 cmp eax, 99
 je xchain159_n282_α
 jmp xchain159_n289_α
 xchain159_n287_β:
 jmp xchain159_n282_α
# IR_LIT_STRING
 xchain159_n288_α:
 mov qword ptr [rbp + 5472], 1
 mov rax, qword ptr [rip + .Lx547_0]
 mov qword ptr [rbp + 5480], rax
 jmp xchain159_n290_α
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "nov"
# IR_VAR_REF
 xchain159_n289_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 5600], rax
 mov qword ptr [rbp + 5608], rdx
 jmp xchain159_n291_α
 xchain159_n290_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5440] -> [zr+5408]
 mov rax, qword ptr [rbp + 5440]
 mov qword ptr [rbp + 5408], rax
 mov rax, qword ptr [rbp + 5448]
 mov qword ptr [rbp + 5416], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5408]
 mov rsi, qword ptr [rip + .Lx550_2]
 jmp .Lx550_3
.Lx550_2:
 .quad .Lx550_2_s
.Lx550_2_s:
 .string "nov"
.Lx550_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5392], rax
 mov qword ptr [rbp + 5400], rdx
 cmp eax, 99
 je xchain159_n293_α
 jmp xchain159_n292_α
 xchain159_n290_β:
 jmp xchain159_n293_α
# IR_LIT_INTEGER
 xchain159_n291_α:
 mov qword ptr [rbp + 5632], 6
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [rbp + 5640], rax
 jmp xchain159_n294_α
.Lx551_0:
 .quad 0
# IR_VAR_REF
 xchain159_n292_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5328], rax
 mov qword ptr [rbp + 5336], rdx
 jmp xchain159_n295_α
 xchain159_n293_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+5136]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 5136], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 5144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5136]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n296_α
 xchain159_n293_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n294_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5600] -> [zr+5568]
 mov rax, qword ptr [rbp + 5600]
 mov qword ptr [rbp + 5568], rax
 mov rax, qword ptr [rbp + 5608]
 mov qword ptr [rbp + 5576], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5568]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 cmp eax, 99
 je xchain159_n282_α
 jmp xchain159_n297_α
 xchain159_n294_β:
 jmp xchain159_n282_α
# IR_LIT_INTEGER
 xchain159_n295_α:
 mov qword ptr [rbp + 5360], 6
 mov rax, qword ptr [rip + .Lx556_0]
 mov qword ptr [rbp + 5368], rax
 jmp xchain159_n298_α
.Lx556_0:
 .quad 2
# IR_VAR_REF
 xchain159_n296_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 jmp xchain159_n299_α
# IR_SUSPEND yield+resume
 xchain159_n297_α:
 lea rax, [rip + xchain159_n297_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n297_β:
 jmp xchain159_n282_α
 xchain159_n298_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5328] -> [zr+5296]
 mov rax, qword ptr [rbp + 5328]
 mov qword ptr [rbp + 5296], rax
 mov rax, qword ptr [rbp + 5336]
 mov qword ptr [rbp + 5304], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5296]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5280], rax
 mov qword ptr [rbp + 5288], rdx
 cmp eax, 99
 je xchain159_n293_α
 jmp xchain159_n300_α
 xchain159_n298_β:
 jmp xchain159_n293_α
# IR_LIT_STRING
 xchain159_n299_α:
 mov qword ptr [rbp + 5088], 1
 mov rax, qword ptr [rip + .Lx562_0]
 mov qword ptr [rbp + 5096], rax
 jmp xchain159_n301_α
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "dec"
# IR_VAR_REF
 xchain159_n300_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 5216], rax
 mov qword ptr [rbp + 5224], rdx
 jmp xchain159_n302_α
 xchain159_n301_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5056] -> [zr+5024]
 mov rax, qword ptr [rbp + 5056]
 mov qword ptr [rbp + 5024], rax
 mov rax, qword ptr [rbp + 5064]
 mov qword ptr [rbp + 5032], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5024]
 mov rsi, qword ptr [rip + .Lx565_2]
 jmp .Lx565_3
.Lx565_2:
 .quad .Lx565_2_s
.Lx565_2_s:
 .string "dec"
.Lx565_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5008], rax
 mov qword ptr [rbp + 5016], rdx
 cmp eax, 99
 je xchain159_n304_α
 jmp xchain159_n303_α
 xchain159_n301_β:
 jmp xchain159_n304_α
# IR_LIT_INTEGER
 xchain159_n302_α:
 mov qword ptr [rbp + 5248], 6
 mov rax, qword ptr [rip + .Lx566_0]
 mov qword ptr [rbp + 5256], rax
 jmp xchain159_n305_α
.Lx566_0:
 .quad 0
# IR_VAR_REF
 xchain159_n303_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4944], rax
 mov qword ptr [rbp + 4952], rdx
 jmp xchain159_n306_α
 xchain159_n304_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+4752]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 4752], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 4760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4752]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4736], rax
 mov qword ptr [rbp + 4744], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n307_α
 xchain159_n304_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n305_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5216] -> [zr+5184]
 mov rax, qword ptr [rbp + 5216]
 mov qword ptr [rbp + 5184], rax
 mov rax, qword ptr [rbp + 5224]
 mov qword ptr [rbp + 5192], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5184]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5168], rax
 mov qword ptr [rbp + 5176], rdx
 cmp eax, 99
 je xchain159_n293_α
 jmp xchain159_n308_α
 xchain159_n305_β:
 jmp xchain159_n293_α
# IR_LIT_INTEGER
 xchain159_n306_α:
 mov qword ptr [rbp + 4976], 6
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [rbp + 4984], rax
 jmp xchain159_n309_α
.Lx571_0:
 .quad 4
# IR_VAR_REF
 xchain159_n307_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4672], rax
 mov qword ptr [rbp + 4680], rdx
 jmp xchain159_n310_α
# IR_SUSPEND yield+resume
 xchain159_n308_α:
 lea rax, [rip + xchain159_n308_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n308_β:
 jmp xchain159_n293_α
 xchain159_n309_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4944] -> [zr+4912]
 mov rax, qword ptr [rbp + 4944]
 mov qword ptr [rbp + 4912], rax
 mov rax, qword ptr [rbp + 4952]
 mov qword ptr [rbp + 4920], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4912]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4896], rax
 mov qword ptr [rbp + 4904], rdx
 cmp eax, 99
 je xchain159_n304_α
 jmp xchain159_n311_α
 xchain159_n309_β:
 jmp xchain159_n304_α
# IR_LIT_STRING
 xchain159_n310_α:
 mov qword ptr [rbp + 4704], 1
 mov rax, qword ptr [rip + .Lx577_0]
 mov qword ptr [rbp + 4712], rax
 jmp xchain159_n312_α
.Lx577_0:
 .quad .Lx577_0_s
.Lx577_0_s:
 .string "January"
# IR_VAR_REF
 xchain159_n311_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4832], rax
 mov qword ptr [rbp + 4840], rdx
 jmp xchain159_n313_α
 xchain159_n312_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4672] -> [zr+4640]
 mov rax, qword ptr [rbp + 4672]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 4680]
 mov qword ptr [rbp + 4648], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4640]
 mov rsi, qword ptr [rip + .Lx580_2]
 jmp .Lx580_3
.Lx580_2:
 .quad .Lx580_2_s
.Lx580_2_s:
 .string "January"
.Lx580_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 cmp eax, 99
 je xchain159_n315_α
 jmp xchain159_n314_α
 xchain159_n312_β:
 jmp xchain159_n315_α
# IR_LIT_INTEGER
 xchain159_n313_α:
 mov qword ptr [rbp + 4864], 6
 mov rax, qword ptr [rip + .Lx581_0]
 mov qword ptr [rbp + 4872], rax
 jmp xchain159_n316_α
.Lx581_0:
 .quad 0
# IR_VAR_REF
 xchain159_n314_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain159_n317_α
 xchain159_n315_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+4368]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 4368], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 4376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4368]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4352], rax
 mov qword ptr [rbp + 4360], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n318_α
 xchain159_n315_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n316_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4832] -> [zr+4800]
 mov rax, qword ptr [rbp + 4832]
 mov qword ptr [rbp + 4800], rax
 mov rax, qword ptr [rbp + 4840]
 mov qword ptr [rbp + 4808], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4800]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4784], rax
 mov qword ptr [rbp + 4792], rdx
 cmp eax, 99
 je xchain159_n304_α
 jmp xchain159_n319_α
 xchain159_n316_β:
 jmp xchain159_n304_α
# IR_LIT_INTEGER
 xchain159_n317_α:
 mov qword ptr [rbp + 4592], 6
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [rbp + 4600], rax
 jmp xchain159_n320_α
.Lx586_0:
 .quad 6
# IR_VAR_REF
 xchain159_n318_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4288], rax
 mov qword ptr [rbp + 4296], rdx
 jmp xchain159_n321_α
# IR_SUSPEND yield+resume
 xchain159_n319_α:
 lea rax, [rip + xchain159_n319_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n319_β:
 jmp xchain159_n304_α
 xchain159_n320_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4560] -> [zr+4528]
 mov rax, qword ptr [rbp + 4560]
 mov qword ptr [rbp + 4528], rax
 mov rax, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 4536], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4528]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4512], rax
 mov qword ptr [rbp + 4520], rdx
 cmp eax, 99
 je xchain159_n315_α
 jmp xchain159_n322_α
 xchain159_n320_β:
 jmp xchain159_n315_α
# IR_LIT_STRING
 xchain159_n321_α:
 mov qword ptr [rbp + 4320], 1
 mov rax, qword ptr [rip + .Lx592_0]
 mov qword ptr [rbp + 4328], rax
 jmp xchain159_n323_α
.Lx592_0:
 .quad .Lx592_0_s
.Lx592_0_s:
 .string "February"
# IR_VAR_REF
 xchain159_n322_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4448], rax
 mov qword ptr [rbp + 4456], rdx
 jmp xchain159_n324_α
 xchain159_n323_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4288] -> [zr+4256]
 mov rax, qword ptr [rbp + 4288]
 mov qword ptr [rbp + 4256], rax
 mov rax, qword ptr [rbp + 4296]
 mov qword ptr [rbp + 4264], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4256]
 mov rsi, qword ptr [rip + .Lx595_2]
 jmp .Lx595_3
.Lx595_2:
 .quad .Lx595_2_s
.Lx595_2_s:
 .string "February"
.Lx595_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4240], rax
 mov qword ptr [rbp + 4248], rdx
 cmp eax, 99
 je xchain159_n326_α
 jmp xchain159_n325_α
 xchain159_n323_β:
 jmp xchain159_n326_α
# IR_LIT_INTEGER
 xchain159_n324_α:
 mov qword ptr [rbp + 4480], 6
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [rbp + 4488], rax
 jmp xchain159_n327_α
.Lx596_0:
 .quad 1
# IR_VAR_REF
 xchain159_n325_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4176], rax
 mov qword ptr [rbp + 4184], rdx
 jmp xchain159_n328_α
 xchain159_n326_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+3984]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 3992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3984]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3968], rax
 mov qword ptr [rbp + 3976], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n329_α
 xchain159_n326_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n327_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4448] -> [zr+4416]
 mov rax, qword ptr [rbp + 4448]
 mov qword ptr [rbp + 4416], rax
 mov rax, qword ptr [rbp + 4456]
 mov qword ptr [rbp + 4424], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4416]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4400], rax
 mov qword ptr [rbp + 4408], rdx
 cmp eax, 99
 je xchain159_n315_α
 jmp xchain159_n330_α
 xchain159_n327_β:
 jmp xchain159_n315_α
# IR_LIT_INTEGER
 xchain159_n328_α:
 mov qword ptr [rbp + 4208], 6
 mov rax, qword ptr [rip + .Lx601_0]
 mov qword ptr [rbp + 4216], rax
 jmp xchain159_n331_α
.Lx601_0:
 .quad 2
# IR_VAR_REF
 xchain159_n329_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3904], rax
 mov qword ptr [rbp + 3912], rdx
 jmp xchain159_n332_α
# IR_SUSPEND yield+resume
 xchain159_n330_α:
 lea rax, [rip + xchain159_n330_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n330_β:
 jmp xchain159_n315_α
 xchain159_n331_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4176] -> [zr+4144]
 mov rax, qword ptr [rbp + 4176]
 mov qword ptr [rbp + 4144], rax
 mov rax, qword ptr [rbp + 4184]
 mov qword ptr [rbp + 4152], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4144]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 cmp eax, 99
 je xchain159_n326_α
 jmp xchain159_n333_α
 xchain159_n331_β:
 jmp xchain159_n326_α
# IR_LIT_STRING
 xchain159_n332_α:
 mov qword ptr [rbp + 3936], 1
 mov rax, qword ptr [rip + .Lx607_0]
 mov qword ptr [rbp + 3944], rax
 jmp xchain159_n334_α
.Lx607_0:
 .quad .Lx607_0_s
.Lx607_0_s:
 .string "March"
# IR_VAR_REF
 xchain159_n333_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 jmp xchain159_n335_α
 xchain159_n334_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3904] -> [zr+3872]
 mov rax, qword ptr [rbp + 3904]
 mov qword ptr [rbp + 3872], rax
 mov rax, qword ptr [rbp + 3912]
 mov qword ptr [rbp + 3880], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3872]
 mov rsi, qword ptr [rip + .Lx610_2]
 jmp .Lx610_3
.Lx610_2:
 .quad .Lx610_2_s
.Lx610_2_s:
 .string "March"
.Lx610_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3856], rax
 mov qword ptr [rbp + 3864], rdx
 cmp eax, 99
 je xchain159_n337_α
 jmp xchain159_n336_α
 xchain159_n334_β:
 jmp xchain159_n337_α
# IR_LIT_INTEGER
 xchain159_n335_α:
 mov qword ptr [rbp + 4096], 6
 mov rax, qword ptr [rip + .Lx611_0]
 mov qword ptr [rbp + 4104], rax
 jmp xchain159_n338_α
.Lx611_0:
 .quad 1
# IR_VAR_REF
 xchain159_n336_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain159_n339_α
 xchain159_n337_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+3600]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 3608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3600]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3584], rax
 mov qword ptr [rbp + 3592], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n340_α
 xchain159_n337_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n338_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4064] -> [zr+4032]
 mov rax, qword ptr [rbp + 4064]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 4072]
 mov qword ptr [rbp + 4040], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4032]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4016], rax
 mov qword ptr [rbp + 4024], rdx
 cmp eax, 99
 je xchain159_n326_α
 jmp xchain159_n341_α
 xchain159_n338_β:
 jmp xchain159_n326_α
# IR_LIT_INTEGER
 xchain159_n339_α:
 mov qword ptr [rbp + 3824], 6
 mov rax, qword ptr [rip + .Lx616_0]
 mov qword ptr [rbp + 3832], rax
 jmp xchain159_n342_α
.Lx616_0:
 .quad 2
# IR_VAR_REF
 xchain159_n340_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3520], rax
 mov qword ptr [rbp + 3528], rdx
 jmp xchain159_n343_α
# IR_SUSPEND yield+resume
 xchain159_n341_α:
 lea rax, [rip + xchain159_n341_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n341_β:
 jmp xchain159_n326_α
 xchain159_n342_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3792] -> [zr+3760]
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3760], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3768], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3760]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3744], rax
 mov qword ptr [rbp + 3752], rdx
 cmp eax, 99
 je xchain159_n337_α
 jmp xchain159_n344_α
 xchain159_n342_β:
 jmp xchain159_n337_α
# IR_LIT_STRING
 xchain159_n343_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx622_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain159_n345_α
.Lx622_0:
 .quad .Lx622_0_s
.Lx622_0_s:
 .string "April"
# IR_VAR_REF
 xchain159_n344_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3680], rax
 mov qword ptr [rbp + 3688], rdx
 jmp xchain159_n346_α
 xchain159_n345_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3520] -> [zr+3488]
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 3488], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 3496], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3488]
 mov rsi, qword ptr [rip + .Lx625_2]
 jmp .Lx625_3
.Lx625_2:
 .quad .Lx625_2_s
.Lx625_2_s:
 .string "April"
.Lx625_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3472], rax
 mov qword ptr [rbp + 3480], rdx
 cmp eax, 99
 je xchain159_n348_α
 jmp xchain159_n347_α
 xchain159_n345_β:
 jmp xchain159_n348_α
# IR_LIT_INTEGER
 xchain159_n346_α:
 mov qword ptr [rbp + 3712], 6
 mov rax, qword ptr [rip + .Lx626_0]
 mov qword ptr [rbp + 3720], rax
 jmp xchain159_n349_α
.Lx626_0:
 .quad 0
# IR_VAR_REF
 xchain159_n347_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3408], rax
 mov qword ptr [rbp + 3416], rdx
 jmp xchain159_n350_α
 xchain159_n348_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+3216]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 3224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3216]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n351_α
 xchain159_n348_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n349_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3680] -> [zr+3648]
 mov rax, qword ptr [rbp + 3680]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3688]
 mov qword ptr [rbp + 3656], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3648]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain159_n337_α
 jmp xchain159_n352_α
 xchain159_n349_β:
 jmp xchain159_n337_α
# IR_LIT_INTEGER
 xchain159_n350_α:
 mov qword ptr [rbp + 3440], 6
 mov rax, qword ptr [rip + .Lx631_0]
 mov qword ptr [rbp + 3448], rax
 jmp xchain159_n353_α
.Lx631_0:
 .quad 5
# IR_VAR_REF
 xchain159_n351_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3136], rax
 mov qword ptr [rbp + 3144], rdx
 jmp xchain159_n354_α
# IR_SUSPEND yield+resume
 xchain159_n352_α:
 lea rax, [rip + xchain159_n352_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n352_β:
 jmp xchain159_n337_α
 xchain159_n353_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3408] -> [zr+3376]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3384], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3376]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3360], rax
 mov qword ptr [rbp + 3368], rdx
 cmp eax, 99
 je xchain159_n348_α
 jmp xchain159_n355_α
 xchain159_n353_β:
 jmp xchain159_n348_α
# IR_LIT_STRING
 xchain159_n354_α:
 mov qword ptr [rbp + 3168], 1
 mov rax, qword ptr [rip + .Lx637_0]
 mov qword ptr [rbp + 3176], rax
 jmp xchain159_n356_α
.Lx637_0:
 .quad .Lx637_0_s
.Lx637_0_s:
 .string "May"
# IR_VAR_REF
 xchain159_n355_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 jmp xchain159_n357_α
 xchain159_n356_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3136] -> [zr+3104]
 mov rax, qword ptr [rbp + 3136]
 mov qword ptr [rbp + 3104], rax
 mov rax, qword ptr [rbp + 3144]
 mov qword ptr [rbp + 3112], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3104]
 mov rsi, qword ptr [rip + .Lx640_2]
 jmp .Lx640_3
.Lx640_2:
 .quad .Lx640_2_s
.Lx640_2_s:
 .string "May"
.Lx640_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 cmp eax, 99
 je xchain159_n359_α
 jmp xchain159_n358_α
 xchain159_n356_β:
 jmp xchain159_n359_α
# IR_LIT_INTEGER
 xchain159_n357_α:
 mov qword ptr [rbp + 3328], 6
 mov rax, qword ptr [rip + .Lx641_0]
 mov qword ptr [rbp + 3336], rax
 jmp xchain159_n360_α
.Lx641_0:
 .quad 0
# IR_VAR_REF
 xchain159_n358_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 jmp xchain159_n361_α
 xchain159_n359_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2832]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2832]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n362_α
 xchain159_n359_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n360_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3296] -> [zr+3264]
 mov rax, qword ptr [rbp + 3296]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 3304]
 mov qword ptr [rbp + 3272], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3264]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3248], rax
 mov qword ptr [rbp + 3256], rdx
 cmp eax, 99
 je xchain159_n348_α
 jmp xchain159_n363_α
 xchain159_n360_β:
 jmp xchain159_n348_α
# IR_LIT_INTEGER
 xchain159_n361_α:
 mov qword ptr [rbp + 3056], 6
 mov rax, qword ptr [rip + .Lx646_0]
 mov qword ptr [rbp + 3064], rax
 jmp xchain159_n364_α
.Lx646_0:
 .quad 0
# IR_VAR_REF
 xchain159_n362_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain159_n365_α
# IR_SUSPEND yield+resume
 xchain159_n363_α:
 lea rax, [rip + xchain159_n363_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n363_β:
 jmp xchain159_n348_α
 xchain159_n364_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3024] -> [zr+2992]
 mov rax, qword ptr [rbp + 3024]
 mov qword ptr [rbp + 2992], rax
 mov rax, qword ptr [rbp + 3032]
 mov qword ptr [rbp + 3000], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2992]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2976], rax
 mov qword ptr [rbp + 2984], rdx
 cmp eax, 99
 je xchain159_n359_α
 jmp xchain159_n366_α
 xchain159_n364_β:
 jmp xchain159_n359_α
# IR_LIT_STRING
 xchain159_n365_α:
 mov qword ptr [rbp + 2784], 1
 mov rax, qword ptr [rip + .Lx652_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain159_n367_α
.Lx652_0:
 .quad .Lx652_0_s
.Lx652_0_s:
 .string "June"
# IR_VAR_REF
 xchain159_n366_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2912], rax
 mov qword ptr [rbp + 2920], rdx
 jmp xchain159_n368_α
 xchain159_n367_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2720]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2728], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2720]
 mov rsi, qword ptr [rip + .Lx655_2]
 jmp .Lx655_3
.Lx655_2:
 .quad .Lx655_2_s
.Lx655_2_s:
 .string "June"
.Lx655_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 cmp eax, 99
 je xchain159_n370_α
 jmp xchain159_n369_α
 xchain159_n367_β:
 jmp xchain159_n370_α
# IR_LIT_INTEGER
 xchain159_n368_α:
 mov qword ptr [rbp + 2944], 6
 mov rax, qword ptr [rip + .Lx656_0]
 mov qword ptr [rbp + 2952], rax
 jmp xchain159_n371_α
.Lx656_0:
 .quad 0
# IR_VAR_REF
 xchain159_n369_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 jmp xchain159_n372_α
 xchain159_n370_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2448]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2448]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n373_α
 xchain159_n370_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n371_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2912] -> [zr+2880]
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 2888], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2880]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 cmp eax, 99
 je xchain159_n359_α
 jmp xchain159_n374_α
 xchain159_n371_β:
 jmp xchain159_n359_α
# IR_LIT_INTEGER
 xchain159_n372_α:
 mov qword ptr [rbp + 2672], 6
 mov rax, qword ptr [rip + .Lx661_0]
 mov qword ptr [rbp + 2680], rax
 jmp xchain159_n375_α
.Lx661_0:
 .quad 3
# IR_VAR_REF
 xchain159_n373_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain159_n376_α
# IR_SUSPEND yield+resume
 xchain159_n374_α:
 lea rax, [rip + xchain159_n374_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n374_β:
 jmp xchain159_n359_α
 xchain159_n375_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2640] -> [zr+2608]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2616], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2608]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain159_n370_α
 jmp xchain159_n377_α
 xchain159_n375_β:
 jmp xchain159_n370_α
# IR_LIT_STRING
 xchain159_n376_α:
 mov qword ptr [rbp + 2400], 1
 mov rax, qword ptr [rip + .Lx667_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain159_n378_α
.Lx667_0:
 .quad .Lx667_0_s
.Lx667_0_s:
 .string "July"
# IR_VAR_REF
 xchain159_n377_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain159_n379_α
 xchain159_n378_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2336]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2344], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2336]
 mov rsi, qword ptr [rip + .Lx670_2]
 jmp .Lx670_3
.Lx670_2:
 .quad .Lx670_2_s
.Lx670_2_s:
 .string "July"
.Lx670_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je xchain159_n381_α
 jmp xchain159_n380_α
 xchain159_n378_β:
 jmp xchain159_n381_α
# IR_LIT_INTEGER
 xchain159_n379_α:
 mov qword ptr [rbp + 2560], 6
 mov rax, qword ptr [rip + .Lx671_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain159_n382_α
.Lx671_0:
 .quad 0
# IR_VAR_REF
 xchain159_n380_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain159_n383_α
 xchain159_n381_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2064]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2064]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n384_α
 xchain159_n381_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n382_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2528] -> [zr+2496]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2504], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2496]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain159_n370_α
 jmp xchain159_n385_α
 xchain159_n382_β:
 jmp xchain159_n370_α
# IR_LIT_INTEGER
 xchain159_n383_α:
 mov qword ptr [rbp + 2288], 6
 mov rax, qword ptr [rip + .Lx676_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain159_n386_α
.Lx676_0:
 .quad 5
# IR_VAR_REF
 xchain159_n384_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain159_n387_α
# IR_SUSPEND yield+resume
 xchain159_n385_α:
 lea rax, [rip + xchain159_n385_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n385_β:
 jmp xchain159_n370_α
 xchain159_n386_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2224]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2232], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2224]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 cmp eax, 99
 je xchain159_n381_α
 jmp xchain159_n388_α
 xchain159_n386_β:
 jmp xchain159_n381_α
# IR_LIT_STRING
 xchain159_n387_α:
 mov qword ptr [rbp + 2016], 1
 mov rax, qword ptr [rip + .Lx682_0]
 mov qword ptr [rbp + 2024], rax
 jmp xchain159_n389_α
.Lx682_0:
 .quad .Lx682_0_s
.Lx682_0_s:
 .string "August"
# IR_VAR_REF
 xchain159_n388_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain159_n390_α
 xchain159_n389_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1952]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1960], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1952]
 mov rsi, qword ptr [rip + .Lx685_2]
 jmp .Lx685_3
.Lx685_2:
 .quad .Lx685_2_s
.Lx685_2_s:
 .string "August"
.Lx685_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 cmp eax, 99
 je xchain159_n392_α
 jmp xchain159_n391_α
 xchain159_n389_β:
 jmp xchain159_n392_α
# IR_LIT_INTEGER
 xchain159_n390_α:
 mov qword ptr [rbp + 2176], 6
 mov rax, qword ptr [rip + .Lx686_0]
 mov qword ptr [rbp + 2184], rax
 jmp xchain159_n393_α
.Lx686_0:
 .quad 0
# IR_VAR_REF
 xchain159_n391_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 jmp xchain159_n394_α
 xchain159_n392_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1680]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1680]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n395_α
 xchain159_n392_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n393_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2144] -> [zr+2112]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2112], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2120], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2112]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 cmp eax, 99
 je xchain159_n381_α
 jmp xchain159_n396_α
 xchain159_n393_β:
 jmp xchain159_n381_α
# IR_LIT_INTEGER
 xchain159_n394_α:
 mov qword ptr [rbp + 1904], 6
 mov rax, qword ptr [rip + .Lx691_0]
 mov qword ptr [rbp + 1912], rax
 jmp xchain159_n397_α
.Lx691_0:
 .quad 1
# IR_VAR_REF
 xchain159_n395_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain159_n398_α
# IR_SUSPEND yield+resume
 xchain159_n396_α:
 lea rax, [rip + xchain159_n396_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n396_β:
 jmp xchain159_n381_α
 xchain159_n397_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1872] -> [zr+1840]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1848], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1840]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je xchain159_n392_α
 jmp xchain159_n399_α
 xchain159_n397_β:
 jmp xchain159_n392_α
# IR_LIT_STRING
 xchain159_n398_α:
 mov qword ptr [rbp + 1632], 1
 mov rax, qword ptr [rip + .Lx697_0]
 mov qword ptr [rbp + 1640], rax
 jmp xchain159_n400_α
.Lx697_0:
 .quad .Lx697_0_s
.Lx697_0_s:
 .string "September"
# IR_VAR_REF
 xchain159_n399_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain159_n401_α
 xchain159_n400_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1568]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1576], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1568]
 mov rsi, qword ptr [rip + .Lx700_2]
 jmp .Lx700_3
.Lx700_2:
 .quad .Lx700_2_s
.Lx700_2_s:
 .string "September"
.Lx700_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je xchain159_n403_α
 jmp xchain159_n402_α
 xchain159_n400_β:
 jmp xchain159_n403_α
# IR_LIT_INTEGER
 xchain159_n401_α:
 mov qword ptr [rbp + 1792], 6
 mov rax, qword ptr [rip + .Lx701_0]
 mov qword ptr [rbp + 1800], rax
 jmp xchain159_n404_α
.Lx701_0:
 .quad 0
# IR_VAR_REF
 xchain159_n402_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain159_n405_α
 xchain159_n403_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1296]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1304], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1296]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n406_α
 xchain159_n403_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n404_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1760] -> [zr+1728]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1736], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1728]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je xchain159_n392_α
 jmp xchain159_n407_α
 xchain159_n404_β:
 jmp xchain159_n392_α
# IR_LIT_INTEGER
 xchain159_n405_α:
 mov qword ptr [rbp + 1520], 6
 mov rax, qword ptr [rip + .Lx706_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain159_n408_α
.Lx706_0:
 .quad 4
# IR_VAR_REF
 xchain159_n406_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain159_n409_α
# IR_SUSPEND yield+resume
 xchain159_n407_α:
 lea rax, [rip + xchain159_n407_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n407_β:
 jmp xchain159_n392_α
 xchain159_n408_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1464], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1456]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain159_n403_α
 jmp xchain159_n410_α
 xchain159_n408_β:
 jmp xchain159_n403_α
# IR_LIT_STRING
 xchain159_n409_α:
 mov qword ptr [rbp + 1248], 1
 mov rax, qword ptr [rip + .Lx712_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain159_n411_α
.Lx712_0:
 .quad .Lx712_0_s
.Lx712_0_s:
 .string "October"
# IR_VAR_REF
 xchain159_n410_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain159_n412_α
 xchain159_n411_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1184]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1184]
 mov rsi, qword ptr [rip + .Lx715_2]
 jmp .Lx715_3
.Lx715_2:
 .quad .Lx715_2_s
.Lx715_2_s:
 .string "October"
.Lx715_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain159_n414_α
 jmp xchain159_n413_α
 xchain159_n411_β:
 jmp xchain159_n414_α
# IR_LIT_INTEGER
 xchain159_n412_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx716_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain159_n415_α
.Lx716_0:
 .quad 0
# IR_VAR_REF
 xchain159_n413_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain159_n416_α
 xchain159_n414_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+912]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n417_α
 xchain159_n414_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n415_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1344]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1352], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1344]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain159_n403_α
 jmp xchain159_n418_α
 xchain159_n415_β:
 jmp xchain159_n403_α
# IR_LIT_INTEGER
 xchain159_n416_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx721_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain159_n419_α
.Lx721_0:
 .quad 6
# IR_VAR_REF
 xchain159_n417_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain159_n420_α
# IR_SUSPEND yield+resume
 xchain159_n418_α:
 lea rax, [rip + xchain159_n418_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n418_β:
 jmp xchain159_n403_α
 xchain159_n419_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1072]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1072]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain159_n414_α
 jmp xchain159_n421_α
 xchain159_n419_β:
 jmp xchain159_n414_α
# IR_LIT_STRING
 xchain159_n420_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx727_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain159_n422_α
.Lx727_0:
 .quad .Lx727_0_s
.Lx727_0_s:
 .string "November"
# IR_VAR_REF
 xchain159_n421_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain159_n423_α
 xchain159_n422_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+800]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 800]
 mov rsi, qword ptr [rip + .Lx730_2]
 jmp .Lx730_3
.Lx730_2:
 .quad .Lx730_2_s
.Lx730_2_s:
 .string "November"
.Lx730_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain159_n425_α
 jmp xchain159_n424_α
 xchain159_n422_β:
 jmp xchain159_n425_α
# IR_LIT_INTEGER
 xchain159_n423_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx731_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain159_n426_α
.Lx731_0:
 .quad 0
# IR_VAR_REF
 xchain159_n424_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain159_n427_α
 xchain159_n425_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+528]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n428_α
 xchain159_n425_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n426_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+960]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 968], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 960]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain159_n414_α
 jmp xchain159_n429_α
 xchain159_n426_β:
 jmp xchain159_n414_α
# IR_LIT_INTEGER
 xchain159_n427_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx736_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain159_n430_α
.Lx736_0:
 .quad 2
# IR_VAR_REF
 xchain159_n428_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain159_n431_α
# IR_SUSPEND yield+resume
 xchain159_n429_α:
 lea rax, [rip + xchain159_n429_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n429_β:
 jmp xchain159_n414_α
 xchain159_n430_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+688]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 696], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 688]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain159_n425_α
 jmp xchain159_n432_α
 xchain159_n430_β:
 jmp xchain159_n425_α
# IR_LIT_STRING
 xchain159_n431_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx742_0]
 mov qword ptr [rbp + 488], rax
 jmp xchain159_n433_α
.Lx742_0:
 .quad .Lx742_0_s
.Lx742_0_s:
 .string "December"
# IR_VAR_REF
 xchain159_n432_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain159_n434_α
 xchain159_n433_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 416]
 mov rsi, qword ptr [rip + .Lx745_2]
 jmp .Lx745_3
.Lx745_2:
 .quad .Lx745_2_s
.Lx745_2_s:
 .string "December"
.Lx745_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain159_n436_α
 jmp xchain159_n435_α
 xchain159_n433_β:
 jmp xchain159_n436_α
# IR_LIT_INTEGER
 xchain159_n434_α:
 mov qword ptr [rbp + 640], 6
 mov rax, qword ptr [rip + .Lx746_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain159_n437_α
.Lx746_0:
 .quad 0
# IR_VAR_REF
 xchain159_n435_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain159_n438_α
 xchain159_n436_α:
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
 je proc_cal_key$2F3_ω
 jmp proc_cal_key$2F3_ω
 xchain159_n436_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n437_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+576]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 576]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain159_n425_α
 jmp xchain159_n439_α
 xchain159_n437_β:
 jmp xchain159_n425_α
# IR_LIT_INTEGER
 xchain159_n438_α:
 mov qword ptr [rbp + 368], 6
 mov rax, qword ptr [rip + .Lx751_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain159_n440_α
.Lx751_0:
 .quad 4
# IR_SUSPEND yield+resume
 xchain159_n439_α:
 lea rax, [rip + xchain159_n439_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n439_β:
 jmp xchain159_n425_α
 xchain159_n440_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 304]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain159_n436_α
 jmp xchain159_n441_α
 xchain159_n440_β:
 jmp xchain159_n436_α
# IR_VAR_REF
 xchain159_n441_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain159_n442_α
# IR_LIT_INTEGER
 xchain159_n442_α:
 mov qword ptr [rbp + 256], 6
 mov rax, qword ptr [rip + .Lx757_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain159_n443_α
.Lx757_0:
 .quad 0
 xchain159_n443_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+192]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 200], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 192]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain159_n436_α
 jmp xchain159_n444_α
 xchain159_n443_β:
 jmp xchain159_n436_α
# IR_SUSPEND yield+resume
 xchain159_n444_α:
 lea rax, [rip + xchain159_n444_β]
 mov qword ptr [rbp + 15872], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n444_β:
 jmp xchain159_n436_α
proc_cal_key$2F3_res:
add rsp, 8
pop rbp
proc_cal_key$2F3_β:
jmp qword ptr [rbp + 15872]
proc_cal_key$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_cal_key$2F3_res]
push rax
mov rax, [rbp + 15912]
mov rbp, [rbp + 15928]
jmp rax
proc_cal_key$2F3_ω:
mov rax, [rbp + 15920]
lea rsp, [rbp + 15936]
mov rbp, [rbp + 15928]
jmp rax
  .globl proc_compute_it$2F5_α
proc_compute_it$2F5_α:
#=======================================================================================================================
    .global proc_compute_it$2F5_α
    .global proc_compute_it$2F5_β
    .global proc_compute_it$2F5_γ
    .global proc_compute_it$2F5_ω
  sub rsp, 2672
  mov [rsp + 2648], rcx
  mov [rsp + 2656], rdx
  mov [rsp + 2664], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2504], rsp
  mov rdi, rsp
  mov esi, 2480
  mov edx, 2640
  call rt_jmp_frame_lexprep2@PLT
proc_compute_it$2F5_α_body:
lea rax, [rip + xchain761_n55_β]
mov qword ptr [rbp + 2480], rax
 xchain761_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 144]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je proc_compute_it$2F5_ω
 jmp xchain761_n1_α
 xchain761_n0_β:
 jmp proc_compute_it$2F5_ω
# IR_VAR_REF
 xchain761_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain761_n2_α
# IR_VAR_REF
 xchain761_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2512]
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain761_n3_α
 xchain761_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2416] -> [zr+2384]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2392], rax
# marshal arg1 = producer-box slot [zr+2448] -> [zr+2400]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2408], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2384]
 lea r8, [rbp + 2384]
.Lx767_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx767_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx767_41
 cmp esi, 1
 jne .Lx767_55
 mov r8, rax
 jmp .Lx767_40
.Lx767_55:
 cmp esi, 2
 jne .Lx767_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx767_41
 mov r8, rax
 jmp .Lx767_40
.Lx767_56:
 cmp eax, 13
 jne .Lx767_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx767_41
 cmp rax, r8
 je .Lx767_41
 mov r8, rax
 jmp .Lx767_40
.Lx767_41:
 lea r9, [rbp + 2400]
.Lx767_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx767_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx767_43
 cmp esi, 1
 jne .Lx767_57
 mov r9, rax
 jmp .Lx767_42
.Lx767_57:
 cmp esi, 2
 jne .Lx767_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx767_43
 mov r9, rax
 jmp .Lx767_42
.Lx767_58:
 cmp eax, 13
 jne .Lx767_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx767_43
 cmp rax, r9
 je .Lx767_43
 mov r9, rax
 jmp .Lx767_42
.Lx767_43:
 cmp r8, r9
 je .Lx767_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx767_44
 cmp eax, 99
 je .Lx767_44
 cmp eax, 13
 jne .Lx767_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx767_44
 jmp .Lx767_45
.Lx767_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx767_53
 cmp eax, 99
 je .Lx767_53
 cmp eax, 13
 jne .Lx767_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx767_53
 jmp .Lx767_46
.Lx767_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx767_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx767_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx767_51
.Lx767_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx767_47
 cmp eax, 99
 je .Lx767_47
 cmp eax, 13
 jne .Lx767_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx767_47
 jmp .Lx767_48
.Lx767_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx767_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx767_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx767_51
.Lx767_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx767_49
 cmp edx, 14
 je .Lx767_53
 jmp .Lx767_52
.Lx767_49:
 cmp edx, 14
 je .Lx767_52
 cmp ecx, 7
 je .Lx767_53
 cmp edx, 7
 je .Lx767_53
 cmp ecx, 6
 jne .Lx767_50
 cmp edx, 6
 jne .Lx767_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx767_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx767_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx767_51
 jmp .Lx767_52
.Lx767_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx767_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx767_53
.Lx767_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx767_54
.Lx767_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx767_54
.Lx767_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx767_54:
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n4_α
 xchain761_n3_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain761_n6_α
 xchain761_n5_α:
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
 je proc_compute_it$2F5_ω
 jmp proc_compute_it$2F5_ω
 xchain761_n5_β:
 jmp proc_compute_it$2F5_ω
# IR_VAR_REF
 xchain761_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2608]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain761_n7_α
 xchain761_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2304] -> [zr+2272]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2280], rax
# marshal arg1 = producer-box slot [zr+2336] -> [zr+2288]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2296], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2272]
 lea r8, [rbp + 2272]
.Lx773_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx773_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx773_41
 cmp esi, 1
 jne .Lx773_55
 mov r8, rax
 jmp .Lx773_40
.Lx773_55:
 cmp esi, 2
 jne .Lx773_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx773_41
 mov r8, rax
 jmp .Lx773_40
.Lx773_56:
 cmp eax, 13
 jne .Lx773_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx773_41
 cmp rax, r8
 je .Lx773_41
 mov r8, rax
 jmp .Lx773_40
.Lx773_41:
 lea r9, [rbp + 2288]
.Lx773_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx773_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx773_43
 cmp esi, 1
 jne .Lx773_57
 mov r9, rax
 jmp .Lx773_42
.Lx773_57:
 cmp esi, 2
 jne .Lx773_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx773_43
 mov r9, rax
 jmp .Lx773_42
.Lx773_58:
 cmp eax, 13
 jne .Lx773_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx773_43
 cmp rax, r9
 je .Lx773_43
 mov r9, rax
 jmp .Lx773_42
.Lx773_43:
 cmp r8, r9
 je .Lx773_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx773_44
 cmp eax, 99
 je .Lx773_44
 cmp eax, 13
 jne .Lx773_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx773_44
 jmp .Lx773_45
.Lx773_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx773_53
 cmp eax, 99
 je .Lx773_53
 cmp eax, 13
 jne .Lx773_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx773_53
 jmp .Lx773_46
.Lx773_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx773_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx773_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx773_51
.Lx773_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx773_47
 cmp eax, 99
 je .Lx773_47
 cmp eax, 13
 jne .Lx773_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx773_47
 jmp .Lx773_48
.Lx773_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx773_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx773_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx773_51
.Lx773_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx773_49
 cmp edx, 14
 je .Lx773_53
 jmp .Lx773_52
.Lx773_49:
 cmp edx, 14
 je .Lx773_52
 cmp ecx, 7
 je .Lx773_53
 cmp edx, 7
 je .Lx773_53
 cmp ecx, 6
 jne .Lx773_50
 cmp edx, 6
 jne .Lx773_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx773_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx773_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx773_51
 jmp .Lx773_52
.Lx773_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx773_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx773_53
.Lx773_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx773_54
.Lx773_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx773_54
.Lx773_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx773_54:
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n8_α
 xchain761_n7_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 jmp xchain761_n9_α
# IR_VAR_REF
 xchain761_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2624]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain761_n10_α
 xchain761_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2160]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2168], rax
# marshal arg1 = producer-box slot [zr+2224] -> [zr+2176]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2184], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2160]
 lea r8, [rbp + 2160]
.Lx778_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx778_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx778_41
 cmp esi, 1
 jne .Lx778_55
 mov r8, rax
 jmp .Lx778_40
.Lx778_55:
 cmp esi, 2
 jne .Lx778_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx778_41
 mov r8, rax
 jmp .Lx778_40
.Lx778_56:
 cmp eax, 13
 jne .Lx778_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx778_41
 cmp rax, r8
 je .Lx778_41
 mov r8, rax
 jmp .Lx778_40
.Lx778_41:
 lea r9, [rbp + 2176]
.Lx778_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx778_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx778_43
 cmp esi, 1
 jne .Lx778_57
 mov r9, rax
 jmp .Lx778_42
.Lx778_57:
 cmp esi, 2
 jne .Lx778_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx778_43
 mov r9, rax
 jmp .Lx778_42
.Lx778_58:
 cmp eax, 13
 jne .Lx778_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx778_43
 cmp rax, r9
 je .Lx778_43
 mov r9, rax
 jmp .Lx778_42
.Lx778_43:
 cmp r8, r9
 je .Lx778_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx778_44
 cmp eax, 99
 je .Lx778_44
 cmp eax, 13
 jne .Lx778_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx778_44
 jmp .Lx778_45
.Lx778_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx778_53
 cmp eax, 99
 je .Lx778_53
 cmp eax, 13
 jne .Lx778_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx778_53
 jmp .Lx778_46
.Lx778_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx778_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx778_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx778_51
.Lx778_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx778_47
 cmp eax, 99
 je .Lx778_47
 cmp eax, 13
 jne .Lx778_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx778_47
 jmp .Lx778_48
.Lx778_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx778_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx778_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx778_51
.Lx778_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx778_49
 cmp edx, 14
 je .Lx778_53
 jmp .Lx778_52
.Lx778_49:
 cmp edx, 14
 je .Lx778_52
 cmp ecx, 7
 je .Lx778_53
 cmp edx, 7
 je .Lx778_53
 cmp ecx, 6
 jne .Lx778_50
 cmp edx, 6
 jne .Lx778_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx778_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx778_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx778_51
 jmp .Lx778_52
.Lx778_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx778_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx778_53
.Lx778_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx778_54
.Lx778_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx778_54
.Lx778_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx778_54:
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n11_α
 xchain761_n10_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain761_n12_α
# IR_VAR_REF
 xchain761_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2544]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain761_n13_α
 xchain761_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2048]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2056], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2064]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2072], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2048]
 lea r8, [rbp + 2048]
.Lx783_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx783_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx783_41
 cmp esi, 1
 jne .Lx783_55
 mov r8, rax
 jmp .Lx783_40
.Lx783_55:
 cmp esi, 2
 jne .Lx783_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx783_41
 mov r8, rax
 jmp .Lx783_40
.Lx783_56:
 cmp eax, 13
 jne .Lx783_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx783_41
 cmp rax, r8
 je .Lx783_41
 mov r8, rax
 jmp .Lx783_40
.Lx783_41:
 lea r9, [rbp + 2064]
.Lx783_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx783_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx783_43
 cmp esi, 1
 jne .Lx783_57
 mov r9, rax
 jmp .Lx783_42
.Lx783_57:
 cmp esi, 2
 jne .Lx783_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx783_43
 mov r9, rax
 jmp .Lx783_42
.Lx783_58:
 cmp eax, 13
 jne .Lx783_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx783_43
 cmp rax, r9
 je .Lx783_43
 mov r9, rax
 jmp .Lx783_42
.Lx783_43:
 cmp r8, r9
 je .Lx783_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx783_44
 cmp eax, 99
 je .Lx783_44
 cmp eax, 13
 jne .Lx783_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx783_44
 jmp .Lx783_45
.Lx783_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx783_53
 cmp eax, 99
 je .Lx783_53
 cmp eax, 13
 jne .Lx783_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx783_53
 jmp .Lx783_46
.Lx783_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx783_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx783_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx783_51
.Lx783_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx783_47
 cmp eax, 99
 je .Lx783_47
 cmp eax, 13
 jne .Lx783_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx783_47
 jmp .Lx783_48
.Lx783_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx783_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx783_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx783_51
.Lx783_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx783_49
 cmp edx, 14
 je .Lx783_53
 jmp .Lx783_52
.Lx783_49:
 cmp edx, 14
 je .Lx783_52
 cmp ecx, 7
 je .Lx783_53
 cmp edx, 7
 je .Lx783_53
 cmp ecx, 6
 jne .Lx783_50
 cmp edx, 6
 jne .Lx783_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx783_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx783_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx783_51
 jmp .Lx783_52
.Lx783_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx783_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx783_53
.Lx783_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx783_54
.Lx783_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx783_54
.Lx783_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx783_54:
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n14_α
 xchain761_n13_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 80]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain761_n15_α
# IR_VAR_REF
 xchain761_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2560]
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 jmp xchain761_n16_α
 xchain761_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1968] -> [zr+1936]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1944], rax
# marshal arg1 = producer-box slot [zr+2000] -> [zr+1952]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1960], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1936]
 lea r8, [rbp + 1936]
.Lx788_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx788_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx788_41
 cmp esi, 1
 jne .Lx788_55
 mov r8, rax
 jmp .Lx788_40
.Lx788_55:
 cmp esi, 2
 jne .Lx788_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx788_41
 mov r8, rax
 jmp .Lx788_40
.Lx788_56:
 cmp eax, 13
 jne .Lx788_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx788_41
 cmp rax, r8
 je .Lx788_41
 mov r8, rax
 jmp .Lx788_40
.Lx788_41:
 lea r9, [rbp + 1952]
.Lx788_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx788_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx788_43
 cmp esi, 1
 jne .Lx788_57
 mov r9, rax
 jmp .Lx788_42
.Lx788_57:
 cmp esi, 2
 jne .Lx788_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx788_43
 mov r9, rax
 jmp .Lx788_42
.Lx788_58:
 cmp eax, 13
 jne .Lx788_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx788_43
 cmp rax, r9
 je .Lx788_43
 mov r9, rax
 jmp .Lx788_42
.Lx788_43:
 cmp r8, r9
 je .Lx788_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx788_44
 cmp eax, 99
 je .Lx788_44
 cmp eax, 13
 jne .Lx788_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx788_44
 jmp .Lx788_45
.Lx788_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx788_53
 cmp eax, 99
 je .Lx788_53
 cmp eax, 13
 jne .Lx788_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx788_53
 jmp .Lx788_46
.Lx788_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx788_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx788_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx788_51
.Lx788_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx788_47
 cmp eax, 99
 je .Lx788_47
 cmp eax, 13
 jne .Lx788_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx788_47
 jmp .Lx788_48
.Lx788_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx788_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx788_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx788_51
.Lx788_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx788_49
 cmp edx, 14
 je .Lx788_53
 jmp .Lx788_52
.Lx788_49:
 cmp edx, 14
 je .Lx788_52
 cmp ecx, 7
 je .Lx788_53
 cmp edx, 7
 je .Lx788_53
 cmp ecx, 6
 jne .Lx788_50
 cmp edx, 6
 jne .Lx788_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx788_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx788_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx788_51
 jmp .Lx788_52
.Lx788_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx788_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx788_53
.Lx788_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx788_54
.Lx788_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx788_54
.Lx788_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx788_54:
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n17_α
 xchain761_n16_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2576]
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain761_n18_α
# IR_VAR
 xchain761_n18_α:
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 1864], rax
 jmp xchain761_n19_α
# IR_LIT_INTEGER
 xchain761_n19_α:
 mov qword ptr [rbp + 1888], 6
 mov rax, qword ptr [rip + .Lx793_0]
 mov qword ptr [rbp + 1896], rax
 jmp xchain761_n20_α
.Lx793_0:
 .quad 100
 xchain761_n20_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 1808]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n21_α
 xchain761_n20_β:
 jmp xchain761_n5_α
 xchain761_n21_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1760] -> [zr+1728]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1736], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1752], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1728]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n22_α
 xchain761_n21_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2592]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain761_n23_α
# IR_VAR
 xchain761_n23_α:
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 1560], rax
 jmp xchain761_n24_α
# IR_VAR
 xchain761_n24_α:
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 1656], rax
 jmp xchain761_n25_α
# IR_LIT_INTEGER
 xchain761_n25_α:
 mov qword ptr [rbp + 1680], 6
 mov rax, qword ptr [rip + .Lx802_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain761_n26_α
.Lx802_0:
 .quad 100
 xchain761_n26_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1648] -> [zr+1600]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1608], rax
# marshal arg1 = producer-box slot [zr+1680] -> [zr+1616]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mul (no by-name dispatch)
 lea rdi, [rbp + 1600]
 mov esi, 2
 call rt_pl_dop_ax_mul@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n27_α
 xchain761_n26_β:
 jmp xchain761_n5_α
 xchain761_n27_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1504]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1512], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1520]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 1504]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n28_α
 xchain761_n27_β:
 jmp xchain761_n5_α
 xchain761_n28_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1424]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1432], rax
# marshal arg1 = producer-box slot [zr+1488] -> [zr+1440]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1424]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n29_α
 xchain761_n28_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2528]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain761_n30_α
# IR_VAR
 xchain761_n30_α:
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 968], rax
 jmp xchain761_n31_α
# IR_LIT_INTEGER
 xchain761_n31_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx810_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain761_n32_α
.Lx810_0:
 .quad 5
 xchain761_n32_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mul (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_ax_mul@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n33_α
 xchain761_n32_β:
 jmp xchain761_n5_α
# IR_VAR
 xchain761_n33_α:
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 1096], rax
 jmp xchain761_n34_α
# IR_LIT_INTEGER
 xchain761_n34_α:
 mov qword ptr [rbp + 1120], 6
 mov rax, qword ptr [rip + .Lx814_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain761_n35_α
.Lx814_0:
 .quad 4
 xchain761_n35_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n36_α
 xchain761_n35_β:
 jmp xchain761_n5_α
 xchain761_n36_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+848]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+864]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n37_α
 xchain761_n36_β:
 jmp xchain761_n5_α
# IR_VAR
 xchain761_n37_α:
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 1160], rax
 jmp xchain761_n38_α
 xchain761_n38_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+1152] -> [zr+800]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n39_α
 xchain761_n38_β:
 jmp xchain761_n5_α
# IR_VAR
 xchain761_n39_α:
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 1256], rax
 jmp xchain761_n40_α
# IR_LIT_INTEGER
 xchain761_n40_α:
 mov qword ptr [rbp + 1280], 6
 mov rax, qword ptr [rip + .Lx822_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain761_n41_α
.Lx822_0:
 .quad 4
 xchain761_n41_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 1200]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n42_α
 xchain761_n41_β:
 jmp xchain761_n5_α
 xchain761_n42_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 728], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+736]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n43_α
 xchain761_n42_β:
 jmp xchain761_n5_α
# IR_VAR
 xchain761_n43_α:
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 1320], rax
 jmp xchain761_n44_α
 xchain761_n44_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+672]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n45_α
 xchain761_n44_β:
 jmp xchain761_n5_α
# IR_VAR
 xchain761_n45_α:
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 1352], rax
 jmp xchain761_n46_α
 xchain761_n46_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+608]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n47_α
 xchain761_n46_β:
 jmp xchain761_n5_α
# IR_LIT_INTEGER
 xchain761_n47_α:
 mov qword ptr [rbp + 1376], 6
 mov rax, qword ptr [rip + .Lx831_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain761_n48_α
.Lx831_0:
 .quad 7
 xchain761_n48_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+544]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n49_α
 xchain761_n48_β:
 jmp xchain761_n5_α
 xchain761_n49_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+448]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+464]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n50_α
 xchain761_n49_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2512]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain761_n51_α
# IR_VAR_REF
 xchain761_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2528]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain761_n52_α
# IR_VAR_REF
 xchain761_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2544]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain761_n53_α
# IR_VAR_REF
 xchain761_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2560]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain761_n54_α
 xchain761_n54_α:
 mov qword ptr [rbp + 272], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx843_20
 mov rax, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx843_21
.Lx843_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
.Lx843_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx843_22
 mov rax, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx843_23
.Lx843_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
.Lx843_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx843_24
 mov rax, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx843_25
.Lx843_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 368]
 mov rdx, qword ptr [rbp + 376]
 call rt_arg_stage@PLT
.Lx843_25:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx843_26
 mov rax, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 48], rax
 mov qword ptr [r10 + 56], rdx
 jmp .Lx843_27
.Lx843_26:
 mov edi, 3
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
.Lx843_27:
 mov rdi, qword ptr [rip + .Lx843_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx843_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx843_3]
 lea rdx, [rip + .Lx843_4]
 jmp rax
.Lx843_3:
 mov qword ptr [rbp + 280], rsp
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx843_5
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx843_2
.Lx843_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx843_2
.Lx843_4:
 mov rax, qword ptr [rbp + 272]
 test rax, rax
 jne .Lx843_6
 mov qword ptr [rbp + 272], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx843_2
.Lx843_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx843_2
.Lx843_1:
 call rt_faildescr@PLT
.Lx843_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n55_α
 xchain761_n54_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 280]
 jmp qword ptr [rsp]
.Lx843_0:
 .quad .Lx843_0_s
.Lx843_0_s:
 .string "leap_year/4"
# IR_SUSPEND yield+resume
 xchain761_n55_α:
 lea rax, [rip + xchain761_n55_β]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 128]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 136]
 mov qword ptr [rbp + 8], rax
 jmp proc_compute_it$2F5_γ
 xchain761_n55_β:
 jmp xchain761_n54_β
proc_compute_it$2F5_res:
add rsp, 8
pop rbp
proc_compute_it$2F5_β:
jmp qword ptr [rbp + 2480]
proc_compute_it$2F5_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_compute_it$2F5_res]
push rax
mov rax, [rbp + 2648]
mov rbp, [rbp + 2664]
jmp rax
proc_compute_it$2F5_ω:
mov rax, [rbp + 2656]
lea rsp, [rbp + 2672]
mov rbp, [rbp + 2664]
jmp rax
  .globl proc_leap_year$2F4_α
proc_leap_year$2F4_α:
#=======================================================================================================================
    .global proc_leap_year$2F4_α
    .global proc_leap_year$2F4_β
    .global proc_leap_year$2F4_γ
    .global proc_leap_year$2F4_ω
  sub rsp, 3840
  mov [rsp + 3816], rcx
  mov [rsp + 3824], rdx
  mov [rsp + 3832], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3704], rsp
  mov rdi, rsp
  mov esi, 3680
  mov edx, 3808
  call rt_jmp_frame_lexprep2@PLT
proc_leap_year$2F4_α_body:
lea rax, [rip + xchain846_n65_β]
mov qword ptr [rbp + 3680], rax
 xchain846_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 128]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je proc_leap_year$2F4_ω
 jmp xchain846_n1_α
 xchain846_n0_β:
 jmp proc_leap_year$2F4_ω
# IR_VAR_REF
 xchain846_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3616], rax
 mov qword ptr [rbp + 3624], rdx
 jmp xchain846_n2_α
# IR_VAR_REF
 xchain846_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3792]
 mov qword ptr [rbp + 3648], rax
 mov qword ptr [rbp + 3656], rdx
 jmp xchain846_n3_α
 xchain846_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3616] -> [zr+3584]
 mov rax, qword ptr [rbp + 3616]
 mov qword ptr [rbp + 3584], rax
 mov rax, qword ptr [rbp + 3624]
 mov qword ptr [rbp + 3592], rax
# marshal arg1 = producer-box slot [zr+3648] -> [zr+3600]
 mov rax, qword ptr [rbp + 3648]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3656]
 mov qword ptr [rbp + 3608], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 3584]
 lea r8, [rbp + 3584]
.Lx852_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx852_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx852_41
 cmp esi, 1
 jne .Lx852_55
 mov r8, rax
 jmp .Lx852_40
.Lx852_55:
 cmp esi, 2
 jne .Lx852_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx852_41
 mov r8, rax
 jmp .Lx852_40
.Lx852_56:
 cmp eax, 13
 jne .Lx852_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx852_41
 cmp rax, r8
 je .Lx852_41
 mov r8, rax
 jmp .Lx852_40
.Lx852_41:
 lea r9, [rbp + 3600]
.Lx852_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx852_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx852_43
 cmp esi, 1
 jne .Lx852_57
 mov r9, rax
 jmp .Lx852_42
.Lx852_57:
 cmp esi, 2
 jne .Lx852_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx852_43
 mov r9, rax
 jmp .Lx852_42
.Lx852_58:
 cmp eax, 13
 jne .Lx852_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx852_43
 cmp rax, r9
 je .Lx852_43
 mov r9, rax
 jmp .Lx852_42
.Lx852_43:
 cmp r8, r9
 je .Lx852_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx852_44
 cmp eax, 99
 je .Lx852_44
 cmp eax, 13
 jne .Lx852_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx852_44
 jmp .Lx852_45
.Lx852_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx852_53
 cmp eax, 99
 je .Lx852_53
 cmp eax, 13
 jne .Lx852_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx852_53
 jmp .Lx852_46
.Lx852_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx852_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx852_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx852_51
.Lx852_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx852_47
 cmp eax, 99
 je .Lx852_47
 cmp eax, 13
 jne .Lx852_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx852_47
 jmp .Lx852_48
.Lx852_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx852_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx852_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx852_51
.Lx852_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx852_49
 cmp edx, 14
 je .Lx852_53
 jmp .Lx852_52
.Lx852_49:
 cmp edx, 14
 je .Lx852_52
 cmp ecx, 7
 je .Lx852_53
 cmp edx, 7
 je .Lx852_53
 cmp ecx, 6
 jne .Lx852_50
 cmp edx, 6
 jne .Lx852_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx852_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx852_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx852_51
 jmp .Lx852_52
.Lx852_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx852_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx852_53
.Lx852_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx852_54
.Lx852_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx852_54
.Lx852_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx852_54:
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 cmp eax, 99
 je xchain846_n5_α
 jmp xchain846_n4_α
 xchain846_n3_β:
 jmp xchain846_n5_α
# IR_VAR_REF
 xchain846_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3504], rax
 mov qword ptr [rbp + 3512], rdx
 jmp xchain846_n6_α
 xchain846_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+2864]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 2872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2864]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2848], rax
 mov qword ptr [rbp + 2856], rdx
 cmp eax, 99
 je proc_leap_year$2F4_ω
 jmp xchain846_n7_α
 xchain846_n5_β:
 jmp proc_leap_year$2F4_ω
# IR_VAR_REF
 xchain846_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3744]
 mov qword ptr [rbp + 3536], rax
 mov qword ptr [rbp + 3544], rdx
 jmp xchain846_n8_α
# IR_VAR_REF
 xchain846_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2784], rax
 mov qword ptr [rbp + 2792], rdx
 jmp xchain846_n9_α
 xchain846_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3504] -> [zr+3472]
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 3480], rax
# marshal arg1 = producer-box slot [zr+3536] -> [zr+3488]
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 3488], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 3496], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 3472]
 lea r8, [rbp + 3472]
.Lx860_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx860_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx860_41
 cmp esi, 1
 jne .Lx860_55
 mov r8, rax
 jmp .Lx860_40
.Lx860_55:
 cmp esi, 2
 jne .Lx860_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx860_41
 mov r8, rax
 jmp .Lx860_40
.Lx860_56:
 cmp eax, 13
 jne .Lx860_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx860_41
 cmp rax, r8
 je .Lx860_41
 mov r8, rax
 jmp .Lx860_40
.Lx860_41:
 lea r9, [rbp + 3488]
.Lx860_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx860_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx860_43
 cmp esi, 1
 jne .Lx860_57
 mov r9, rax
 jmp .Lx860_42
.Lx860_57:
 cmp esi, 2
 jne .Lx860_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx860_43
 mov r9, rax
 jmp .Lx860_42
.Lx860_58:
 cmp eax, 13
 jne .Lx860_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx860_43
 cmp rax, r9
 je .Lx860_43
 mov r9, rax
 jmp .Lx860_42
.Lx860_43:
 cmp r8, r9
 je .Lx860_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx860_44
 cmp eax, 99
 je .Lx860_44
 cmp eax, 13
 jne .Lx860_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx860_44
 jmp .Lx860_45
.Lx860_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx860_53
 cmp eax, 99
 je .Lx860_53
 cmp eax, 13
 jne .Lx860_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx860_53
 jmp .Lx860_46
.Lx860_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx860_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx860_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx860_51
.Lx860_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx860_47
 cmp eax, 99
 je .Lx860_47
 cmp eax, 13
 jne .Lx860_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx860_47
 jmp .Lx860_48
.Lx860_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx860_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx860_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx860_51
.Lx860_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx860_49
 cmp edx, 14
 je .Lx860_53
 jmp .Lx860_52
.Lx860_49:
 cmp edx, 14
 je .Lx860_52
 cmp ecx, 7
 je .Lx860_53
 cmp edx, 7
 je .Lx860_53
 cmp ecx, 6
 jne .Lx860_50
 cmp edx, 6
 jne .Lx860_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx860_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx860_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx860_51
 jmp .Lx860_52
.Lx860_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx860_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx860_53
.Lx860_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx860_54
.Lx860_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx860_54
.Lx860_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx860_54:
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 cmp eax, 99
 je xchain846_n5_α
 jmp xchain846_n10_α
 xchain846_n8_β:
 jmp xchain846_n5_α
# IR_VAR_REF
 xchain846_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3792]
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 jmp xchain846_n11_α
# IR_VAR_REF
 xchain846_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain846_n12_α
 xchain846_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2784] -> [zr+2752]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2752], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2760], rax
# marshal arg1 = producer-box slot [zr+2816] -> [zr+2768]
 mov rax, qword ptr [rbp + 2816]
 mov qword ptr [rbp + 2768], rax
 mov rax, qword ptr [rbp + 2824]
 mov qword ptr [rbp + 2776], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2752]
 lea r8, [rbp + 2752]
.Lx865_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx865_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx865_41
 cmp esi, 1
 jne .Lx865_55
 mov r8, rax
 jmp .Lx865_40
.Lx865_55:
 cmp esi, 2
 jne .Lx865_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx865_41
 mov r8, rax
 jmp .Lx865_40
.Lx865_56:
 cmp eax, 13
 jne .Lx865_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx865_41
 cmp rax, r8
 je .Lx865_41
 mov r8, rax
 jmp .Lx865_40
.Lx865_41:
 lea r9, [rbp + 2768]
.Lx865_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx865_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx865_43
 cmp esi, 1
 jne .Lx865_57
 mov r9, rax
 jmp .Lx865_42
.Lx865_57:
 cmp esi, 2
 jne .Lx865_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx865_43
 mov r9, rax
 jmp .Lx865_42
.Lx865_58:
 cmp eax, 13
 jne .Lx865_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx865_43
 cmp rax, r9
 je .Lx865_43
 mov r9, rax
 jmp .Lx865_42
.Lx865_43:
 cmp r8, r9
 je .Lx865_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx865_44
 cmp eax, 99
 je .Lx865_44
 cmp eax, 13
 jne .Lx865_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx865_44
 jmp .Lx865_45
.Lx865_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx865_53
 cmp eax, 99
 je .Lx865_53
 cmp eax, 13
 jne .Lx865_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx865_53
 jmp .Lx865_46
.Lx865_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx865_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx865_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx865_51
.Lx865_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx865_47
 cmp eax, 99
 je .Lx865_47
 cmp eax, 13
 jne .Lx865_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx865_47
 jmp .Lx865_48
.Lx865_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx865_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx865_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx865_51
.Lx865_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx865_49
 cmp edx, 14
 je .Lx865_53
 jmp .Lx865_52
.Lx865_49:
 cmp edx, 14
 je .Lx865_52
 cmp ecx, 7
 je .Lx865_53
 cmp edx, 7
 je .Lx865_53
 cmp ecx, 6
 jne .Lx865_50
 cmp edx, 6
 jne .Lx865_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx865_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx865_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx865_51
 jmp .Lx865_52
.Lx865_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx865_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx865_53
.Lx865_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx865_54
.Lx865_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx865_54
.Lx865_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx865_54:
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 cmp eax, 99
 je xchain846_n14_α
 jmp xchain846_n13_α
 xchain846_n11_β:
 jmp xchain846_n14_α
# IR_VAR_REF
 xchain846_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3776]
 mov qword ptr [rbp + 3424], rax
 mov qword ptr [rbp + 3432], rdx
 jmp xchain846_n15_α
# IR_VAR_REF
 xchain846_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 jmp xchain846_n16_α
 xchain846_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1824]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1824], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1832], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1824]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 cmp eax, 99
 je proc_leap_year$2F4_ω
 jmp xchain846_n17_α
 xchain846_n14_β:
 jmp proc_leap_year$2F4_ω
 xchain846_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3392] -> [zr+3360]
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3368], rax
# marshal arg1 = producer-box slot [zr+3424] -> [zr+3376]
 mov rax, qword ptr [rbp + 3424]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 3432]
 mov qword ptr [rbp + 3384], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 3360]
 lea r8, [rbp + 3360]
.Lx871_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx871_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx871_41
 cmp esi, 1
 jne .Lx871_55
 mov r8, rax
 jmp .Lx871_40
.Lx871_55:
 cmp esi, 2
 jne .Lx871_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx871_41
 mov r8, rax
 jmp .Lx871_40
.Lx871_56:
 cmp eax, 13
 jne .Lx871_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx871_41
 cmp rax, r8
 je .Lx871_41
 mov r8, rax
 jmp .Lx871_40
.Lx871_41:
 lea r9, [rbp + 3376]
.Lx871_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx871_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx871_43
 cmp esi, 1
 jne .Lx871_57
 mov r9, rax
 jmp .Lx871_42
.Lx871_57:
 cmp esi, 2
 jne .Lx871_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx871_43
 mov r9, rax
 jmp .Lx871_42
.Lx871_58:
 cmp eax, 13
 jne .Lx871_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx871_43
 cmp rax, r9
 je .Lx871_43
 mov r9, rax
 jmp .Lx871_42
.Lx871_43:
 cmp r8, r9
 je .Lx871_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx871_44
 cmp eax, 99
 je .Lx871_44
 cmp eax, 13
 jne .Lx871_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx871_44
 jmp .Lx871_45
.Lx871_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx871_53
 cmp eax, 99
 je .Lx871_53
 cmp eax, 13
 jne .Lx871_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx871_53
 jmp .Lx871_46
.Lx871_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx871_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx871_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx871_51
.Lx871_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx871_47
 cmp eax, 99
 je .Lx871_47
 cmp eax, 13
 jne .Lx871_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx871_47
 jmp .Lx871_48
.Lx871_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx871_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx871_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx871_51
.Lx871_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx871_49
 cmp edx, 14
 je .Lx871_53
 jmp .Lx871_52
.Lx871_49:
 cmp edx, 14
 je .Lx871_52
 cmp ecx, 7
 je .Lx871_53
 cmp edx, 7
 je .Lx871_53
 cmp ecx, 6
 jne .Lx871_50
 cmp edx, 6
 jne .Lx871_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx871_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx871_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx871_51
 jmp .Lx871_52
.Lx871_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx871_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx871_53
.Lx871_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx871_54
.Lx871_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx871_54
.Lx871_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx871_54:
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 cmp eax, 99
 je xchain846_n5_α
 jmp xchain846_n18_α
 xchain846_n15_β:
 jmp xchain846_n5_α
# IR_VAR_REF
 xchain846_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3744]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain846_n19_α
# IR_VAR_REF
 xchain846_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain846_n20_α
# IR_VAR_REF
 xchain846_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain846_n21_α
 xchain846_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2672] -> [zr+2640]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2648], rax
# marshal arg1 = producer-box slot [zr+2704] -> [zr+2656]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2664], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2640]
 lea r8, [rbp + 2640]
.Lx878_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx878_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx878_41
 cmp esi, 1
 jne .Lx878_55
 mov r8, rax
 jmp .Lx878_40
.Lx878_55:
 cmp esi, 2
 jne .Lx878_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx878_41
 mov r8, rax
 jmp .Lx878_40
.Lx878_56:
 cmp eax, 13
 jne .Lx878_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx878_41
 cmp rax, r8
 je .Lx878_41
 mov r8, rax
 jmp .Lx878_40
.Lx878_41:
 lea r9, [rbp + 2656]
.Lx878_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx878_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx878_43
 cmp esi, 1
 jne .Lx878_57
 mov r9, rax
 jmp .Lx878_42
.Lx878_57:
 cmp esi, 2
 jne .Lx878_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx878_43
 mov r9, rax
 jmp .Lx878_42
.Lx878_58:
 cmp eax, 13
 jne .Lx878_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx878_43
 cmp rax, r9
 je .Lx878_43
 mov r9, rax
 jmp .Lx878_42
.Lx878_43:
 cmp r8, r9
 je .Lx878_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx878_44
 cmp eax, 99
 je .Lx878_44
 cmp eax, 13
 jne .Lx878_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx878_44
 jmp .Lx878_45
.Lx878_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx878_53
 cmp eax, 99
 je .Lx878_53
 cmp eax, 13
 jne .Lx878_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx878_53
 jmp .Lx878_46
.Lx878_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx878_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx878_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx878_51
.Lx878_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx878_47
 cmp eax, 99
 je .Lx878_47
 cmp eax, 13
 jne .Lx878_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx878_47
 jmp .Lx878_48
.Lx878_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx878_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx878_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx878_51
.Lx878_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx878_49
 cmp edx, 14
 je .Lx878_53
 jmp .Lx878_52
.Lx878_49:
 cmp edx, 14
 je .Lx878_52
 cmp ecx, 7
 je .Lx878_53
 cmp edx, 7
 je .Lx878_53
 cmp ecx, 6
 jne .Lx878_50
 cmp edx, 6
 jne .Lx878_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx878_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx878_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx878_51
 jmp .Lx878_52
.Lx878_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx878_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx878_53
.Lx878_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx878_54
.Lx878_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx878_54
.Lx878_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx878_54:
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 cmp eax, 99
 je xchain846_n14_α
 jmp xchain846_n22_α
 xchain846_n19_β:
 jmp xchain846_n14_α
# IR_VAR_REF
 xchain846_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3792]
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain846_n23_α
# IR_VAR_REF
 xchain846_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3728]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain846_n24_α
# IR_VAR_REF
 xchain846_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain846_n25_α
 xchain846_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1744] -> [zr+1712]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1720], rax
# marshal arg1 = producer-box slot [zr+1776] -> [zr+1728]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1736], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1712]
 lea r8, [rbp + 1712]
.Lx885_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx885_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx885_41
 cmp esi, 1
 jne .Lx885_55
 mov r8, rax
 jmp .Lx885_40
.Lx885_55:
 cmp esi, 2
 jne .Lx885_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx885_41
 mov r8, rax
 jmp .Lx885_40
.Lx885_56:
 cmp eax, 13
 jne .Lx885_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx885_41
 cmp rax, r8
 je .Lx885_41
 mov r8, rax
 jmp .Lx885_40
.Lx885_41:
 lea r9, [rbp + 1728]
.Lx885_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx885_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx885_43
 cmp esi, 1
 jne .Lx885_57
 mov r9, rax
 jmp .Lx885_42
.Lx885_57:
 cmp esi, 2
 jne .Lx885_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx885_43
 mov r9, rax
 jmp .Lx885_42
.Lx885_58:
 cmp eax, 13
 jne .Lx885_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx885_43
 cmp rax, r9
 je .Lx885_43
 mov r9, rax
 jmp .Lx885_42
.Lx885_43:
 cmp r8, r9
 je .Lx885_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx885_44
 cmp eax, 99
 je .Lx885_44
 cmp eax, 13
 jne .Lx885_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx885_44
 jmp .Lx885_45
.Lx885_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx885_53
 cmp eax, 99
 je .Lx885_53
 cmp eax, 13
 jne .Lx885_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx885_53
 jmp .Lx885_46
.Lx885_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx885_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx885_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx885_51
.Lx885_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx885_47
 cmp eax, 99
 je .Lx885_47
 cmp eax, 13
 jne .Lx885_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx885_47
 jmp .Lx885_48
.Lx885_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx885_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx885_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx885_51
.Lx885_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx885_49
 cmp edx, 14
 je .Lx885_53
 jmp .Lx885_52
.Lx885_49:
 cmp edx, 14
 je .Lx885_52
 cmp ecx, 7
 je .Lx885_53
 cmp edx, 7
 je .Lx885_53
 cmp ecx, 6
 jne .Lx885_50
 cmp edx, 6
 jne .Lx885_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx885_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx885_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx885_51
 jmp .Lx885_52
.Lx885_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx885_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx885_53
.Lx885_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx885_54
.Lx885_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx885_54
.Lx885_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx885_54:
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 cmp eax, 99
 je xchain846_n27_α
 jmp xchain846_n26_α
 xchain846_n23_β:
 jmp xchain846_n27_α
 xchain846_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3280] -> [zr+3248]
 mov rax, qword ptr [rbp + 3280]
 mov qword ptr [rbp + 3248], rax
 mov rax, qword ptr [rbp + 3288]
 mov qword ptr [rbp + 3256], rax
# marshal arg1 = producer-box slot [zr+3312] -> [zr+3264]
 mov rax, qword ptr [rbp + 3312]
 mov qword ptr [rbp + 3264], rax
 mov rax, qword ptr [rbp + 3320]
 mov qword ptr [rbp + 3272], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 3248]
 lea r8, [rbp + 3248]
.Lx886_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx886_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx886_41
 cmp esi, 1
 jne .Lx886_55
 mov r8, rax
 jmp .Lx886_40
.Lx886_55:
 cmp esi, 2
 jne .Lx886_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx886_41
 mov r8, rax
 jmp .Lx886_40
.Lx886_56:
 cmp eax, 13
 jne .Lx886_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx886_41
 cmp rax, r8
 je .Lx886_41
 mov r8, rax
 jmp .Lx886_40
.Lx886_41:
 lea r9, [rbp + 3264]
.Lx886_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx886_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx886_43
 cmp esi, 1
 jne .Lx886_57
 mov r9, rax
 jmp .Lx886_42
.Lx886_57:
 cmp esi, 2
 jne .Lx886_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx886_43
 mov r9, rax
 jmp .Lx886_42
.Lx886_58:
 cmp eax, 13
 jne .Lx886_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx886_43
 cmp rax, r9
 je .Lx886_43
 mov r9, rax
 jmp .Lx886_42
.Lx886_43:
 cmp r8, r9
 je .Lx886_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx886_44
 cmp eax, 99
 je .Lx886_44
 cmp eax, 13
 jne .Lx886_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx886_44
 jmp .Lx886_45
.Lx886_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx886_53
 cmp eax, 99
 je .Lx886_53
 cmp eax, 13
 jne .Lx886_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx886_53
 jmp .Lx886_46
.Lx886_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx886_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx886_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx886_51
.Lx886_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx886_47
 cmp eax, 99
 je .Lx886_47
 cmp eax, 13
 jne .Lx886_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx886_47
 jmp .Lx886_48
.Lx886_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx886_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx886_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx886_51
.Lx886_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx886_49
 cmp edx, 14
 je .Lx886_53
 jmp .Lx886_52
.Lx886_49:
 cmp edx, 14
 je .Lx886_52
 cmp ecx, 7
 je .Lx886_53
 cmp edx, 7
 je .Lx886_53
 cmp ecx, 6
 jne .Lx886_50
 cmp edx, 6
 jne .Lx886_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx886_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx886_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx886_51
 jmp .Lx886_52
.Lx886_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx886_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx886_53
.Lx886_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx886_54
.Lx886_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx886_54
.Lx886_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx886_54:
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 cmp eax, 99
 je xchain846_n5_α
 jmp xchain846_n28_α
 xchain846_n24_β:
 jmp xchain846_n5_α
# IR_VAR_REF
 xchain846_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3760]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain846_n29_α
# IR_VAR_REF
 xchain846_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain846_n30_α
 xchain846_n27_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+992]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je proc_leap_year$2F4_ω
 jmp xchain846_n31_α
 xchain846_n27_β:
 jmp proc_leap_year$2F4_ω
# IR_LIT_INTEGER
 xchain846_n28_α:
 mov qword ptr [rbp + 3072], 6
 mov rax, qword ptr [rip + .Lx892_0]
 mov qword ptr [rbp + 3080], rax
 jmp xchain846_n32_α
.Lx892_0:
 .quad 0
 xchain846_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2528]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2536], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2544]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2552], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2528]
 lea r8, [rbp + 2528]
.Lx893_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx893_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx893_41
 cmp esi, 1
 jne .Lx893_55
 mov r8, rax
 jmp .Lx893_40
.Lx893_55:
 cmp esi, 2
 jne .Lx893_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx893_41
 mov r8, rax
 jmp .Lx893_40
.Lx893_56:
 cmp eax, 13
 jne .Lx893_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx893_41
 cmp rax, r8
 je .Lx893_41
 mov r8, rax
 jmp .Lx893_40
.Lx893_41:
 lea r9, [rbp + 2544]
.Lx893_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx893_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx893_43
 cmp esi, 1
 jne .Lx893_57
 mov r9, rax
 jmp .Lx893_42
.Lx893_57:
 cmp esi, 2
 jne .Lx893_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx893_43
 mov r9, rax
 jmp .Lx893_42
.Lx893_58:
 cmp eax, 13
 jne .Lx893_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx893_43
 cmp rax, r9
 je .Lx893_43
 mov r9, rax
 jmp .Lx893_42
.Lx893_43:
 cmp r8, r9
 je .Lx893_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx893_44
 cmp eax, 99
 je .Lx893_44
 cmp eax, 13
 jne .Lx893_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx893_44
 jmp .Lx893_45
.Lx893_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx893_53
 cmp eax, 99
 je .Lx893_53
 cmp eax, 13
 jne .Lx893_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx893_53
 jmp .Lx893_46
.Lx893_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx893_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx893_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx893_51
.Lx893_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx893_47
 cmp eax, 99
 je .Lx893_47
 cmp eax, 13
 jne .Lx893_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx893_47
 jmp .Lx893_48
.Lx893_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx893_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx893_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx893_51
.Lx893_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx893_49
 cmp edx, 14
 je .Lx893_53
 jmp .Lx893_52
.Lx893_49:
 cmp edx, 14
 je .Lx893_52
 cmp ecx, 7
 je .Lx893_53
 cmp edx, 7
 je .Lx893_53
 cmp ecx, 6
 jne .Lx893_50
 cmp edx, 6
 jne .Lx893_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx893_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx893_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx893_51
 jmp .Lx893_52
.Lx893_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx893_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx893_53
.Lx893_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx893_54
.Lx893_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx893_54
.Lx893_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx893_54:
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je xchain846_n14_α
 jmp xchain846_n33_α
 xchain846_n29_β:
 jmp xchain846_n14_α
# IR_VAR_REF
 xchain846_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3744]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain846_n34_α
# IR_VAR_REF
 xchain846_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain846_n35_α
# IR_VAR
 xchain846_n32_α:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3176], rax
 jmp xchain846_n36_α
# IR_VAR_REF
 xchain846_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain846_n37_α
 xchain846_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1632] -> [zr+1600]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1608], rax
# marshal arg1 = producer-box slot [zr+1664] -> [zr+1616]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1624], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1600]
 lea r8, [rbp + 1600]
.Lx902_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx902_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx902_41
 cmp esi, 1
 jne .Lx902_55
 mov r8, rax
 jmp .Lx902_40
.Lx902_55:
 cmp esi, 2
 jne .Lx902_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx902_41
 mov r8, rax
 jmp .Lx902_40
.Lx902_56:
 cmp eax, 13
 jne .Lx902_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx902_41
 cmp rax, r8
 je .Lx902_41
 mov r8, rax
 jmp .Lx902_40
.Lx902_41:
 lea r9, [rbp + 1616]
.Lx902_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx902_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx902_43
 cmp esi, 1
 jne .Lx902_57
 mov r9, rax
 jmp .Lx902_42
.Lx902_57:
 cmp esi, 2
 jne .Lx902_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx902_43
 mov r9, rax
 jmp .Lx902_42
.Lx902_58:
 cmp eax, 13
 jne .Lx902_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx902_43
 cmp rax, r9
 je .Lx902_43
 mov r9, rax
 jmp .Lx902_42
.Lx902_43:
 cmp r8, r9
 je .Lx902_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx902_44
 cmp eax, 99
 je .Lx902_44
 cmp eax, 13
 jne .Lx902_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx902_44
 jmp .Lx902_45
.Lx902_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx902_53
 cmp eax, 99
 je .Lx902_53
 cmp eax, 13
 jne .Lx902_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx902_53
 jmp .Lx902_46
.Lx902_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx902_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx902_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx902_51
.Lx902_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx902_47
 cmp eax, 99
 je .Lx902_47
 cmp eax, 13
 jne .Lx902_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx902_47
 jmp .Lx902_48
.Lx902_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx902_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx902_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx902_51
.Lx902_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx902_49
 cmp edx, 14
 je .Lx902_53
 jmp .Lx902_52
.Lx902_49:
 cmp edx, 14
 je .Lx902_52
 cmp ecx, 7
 je .Lx902_53
 cmp edx, 7
 je .Lx902_53
 cmp ecx, 6
 jne .Lx902_50
 cmp edx, 6
 jne .Lx902_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx902_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx902_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx902_51
 jmp .Lx902_52
.Lx902_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx902_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx902_53
.Lx902_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx902_54
.Lx902_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx902_54
.Lx902_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx902_54:
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je xchain846_n27_α
 jmp xchain846_n38_α
 xchain846_n34_β:
 jmp xchain846_n27_α
# IR_VAR_REF
 xchain846_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3776]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain846_n39_α
# IR_LIT_INTEGER
 xchain846_n36_α:
 mov qword ptr [rbp + 3200], 6
 mov rax, qword ptr [rip + .Lx905_0]
 mov qword ptr [rbp + 3208], rax
 jmp xchain846_n40_α
.Lx905_0:
 .quad 4
# IR_VAR_REF
 xchain846_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3728]
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain846_n41_α
# IR_VAR_REF
 xchain846_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 jmp xchain846_n42_α
 xchain846_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 880]
 lea r8, [rbp + 880]
.Lx910_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx910_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx910_41
 cmp esi, 1
 jne .Lx910_55
 mov r8, rax
 jmp .Lx910_40
.Lx910_55:
 cmp esi, 2
 jne .Lx910_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx910_41
 mov r8, rax
 jmp .Lx910_40
.Lx910_56:
 cmp eax, 13
 jne .Lx910_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx910_41
 cmp rax, r8
 je .Lx910_41
 mov r8, rax
 jmp .Lx910_40
.Lx910_41:
 lea r9, [rbp + 896]
.Lx910_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx910_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx910_43
 cmp esi, 1
 jne .Lx910_57
 mov r9, rax
 jmp .Lx910_42
.Lx910_57:
 cmp esi, 2
 jne .Lx910_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx910_43
 mov r9, rax
 jmp .Lx910_42
.Lx910_58:
 cmp eax, 13
 jne .Lx910_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx910_43
 cmp rax, r9
 je .Lx910_43
 mov r9, rax
 jmp .Lx910_42
.Lx910_43:
 cmp r8, r9
 je .Lx910_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx910_44
 cmp eax, 99
 je .Lx910_44
 cmp eax, 13
 jne .Lx910_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx910_44
 jmp .Lx910_45
.Lx910_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx910_53
 cmp eax, 99
 je .Lx910_53
 cmp eax, 13
 jne .Lx910_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx910_53
 jmp .Lx910_46
.Lx910_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx910_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx910_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx910_51
.Lx910_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx910_47
 cmp eax, 99
 je .Lx910_47
 cmp eax, 13
 jne .Lx910_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx910_47
 jmp .Lx910_48
.Lx910_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx910_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx910_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx910_51
.Lx910_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx910_49
 cmp edx, 14
 je .Lx910_53
 jmp .Lx910_52
.Lx910_49:
 cmp edx, 14
 je .Lx910_52
 cmp ecx, 7
 je .Lx910_53
 cmp edx, 7
 je .Lx910_53
 cmp ecx, 6
 jne .Lx910_50
 cmp edx, 6
 jne .Lx910_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx910_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx910_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx910_51
 jmp .Lx910_52
.Lx910_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx910_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx910_53
.Lx910_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx910_54
.Lx910_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx910_54
.Lx910_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx910_54:
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n43_α
 xchain846_n39_β:
 jmp xchain846_n44_α
 xchain846_n40_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3168] -> [zr+3120]
 mov rax, qword ptr [rbp + 3168]
 mov qword ptr [rbp + 3120], rax
 mov rax, qword ptr [rbp + 3176]
 mov qword ptr [rbp + 3128], rax
# marshal arg1 = producer-box slot [zr+3200] -> [zr+3136]
 mov rax, qword ptr [rbp + 3200]
 mov qword ptr [rbp + 3136], rax
 mov rax, qword ptr [rbp + 3208]
 mov qword ptr [rbp + 3144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 3120]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 cmp eax, 99
 je xchain846_n5_α
 jmp xchain846_n45_α
 xchain846_n40_β:
 jmp xchain846_n5_α
 xchain846_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2448] -> [zr+2416]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2424], rax
# marshal arg1 = producer-box slot [zr+2480] -> [zr+2432]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2440], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 2416]
 lea r8, [rbp + 2416]
.Lx912_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx912_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx912_41
 cmp esi, 1
 jne .Lx912_55
 mov r8, rax
 jmp .Lx912_40
.Lx912_55:
 cmp esi, 2
 jne .Lx912_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx912_41
 mov r8, rax
 jmp .Lx912_40
.Lx912_56:
 cmp eax, 13
 jne .Lx912_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx912_41
 cmp rax, r8
 je .Lx912_41
 mov r8, rax
 jmp .Lx912_40
.Lx912_41:
 lea r9, [rbp + 2432]
.Lx912_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx912_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx912_43
 cmp esi, 1
 jne .Lx912_57
 mov r9, rax
 jmp .Lx912_42
.Lx912_57:
 cmp esi, 2
 jne .Lx912_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx912_43
 mov r9, rax
 jmp .Lx912_42
.Lx912_58:
 cmp eax, 13
 jne .Lx912_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx912_43
 cmp rax, r9
 je .Lx912_43
 mov r9, rax
 jmp .Lx912_42
.Lx912_43:
 cmp r8, r9
 je .Lx912_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx912_44
 cmp eax, 99
 je .Lx912_44
 cmp eax, 13
 jne .Lx912_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx912_44
 jmp .Lx912_45
.Lx912_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx912_53
 cmp eax, 99
 je .Lx912_53
 cmp eax, 13
 jne .Lx912_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx912_53
 jmp .Lx912_46
.Lx912_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx912_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx912_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx912_51
.Lx912_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx912_47
 cmp eax, 99
 je .Lx912_47
 cmp eax, 13
 jne .Lx912_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx912_47
 jmp .Lx912_48
.Lx912_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx912_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx912_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx912_51
.Lx912_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx912_49
 cmp edx, 14
 je .Lx912_53
 jmp .Lx912_52
.Lx912_49:
 cmp edx, 14
 je .Lx912_52
 cmp ecx, 7
 je .Lx912_53
 cmp edx, 7
 je .Lx912_53
 cmp ecx, 6
 jne .Lx912_50
 cmp edx, 6
 jne .Lx912_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx912_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx912_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx912_51
 jmp .Lx912_52
.Lx912_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx912_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx912_53
.Lx912_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx912_54
.Lx912_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx912_54
.Lx912_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx912_54:
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 cmp eax, 99
 je xchain846_n14_α
 jmp xchain846_n46_α
 xchain846_n41_β:
 jmp xchain846_n14_α
# IR_VAR_REF
 xchain846_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3776]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain846_n47_α
# IR_VAR_REF
 xchain846_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain846_n48_α
 xchain846_n44_α:
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
 je proc_leap_year$2F4_ω
 jmp proc_leap_year$2F4_ω
 xchain846_n44_β:
 jmp proc_leap_year$2F4_ω
 xchain846_n45_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3072] -> [zr+3040]
 mov rax, qword ptr [rbp + 3072]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3080]
 mov qword ptr [rbp + 3048], rax
# marshal arg1 = producer-box slot [zr+3104] -> [zr+3056]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 3040]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain846_n5_α
 jmp xchain846_n49_α
 xchain846_n45_β:
 jmp xchain846_n5_α
# IR_LIT_INTEGER
 xchain846_n46_α:
 mov qword ptr [rbp + 2240], 6
 mov rax, qword ptr [rip + .Lx919_0]
 mov qword ptr [rbp + 2248], rax
 jmp xchain846_n50_α
.Lx919_0:
 .quad 0
 xchain846_n47_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1488]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1496], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1504]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1512], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1488]
 lea r8, [rbp + 1488]
.Lx920_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx920_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx920_41
 cmp esi, 1
 jne .Lx920_55
 mov r8, rax
 jmp .Lx920_40
.Lx920_55:
 cmp esi, 2
 jne .Lx920_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx920_41
 mov r8, rax
 jmp .Lx920_40
.Lx920_56:
 cmp eax, 13
 jne .Lx920_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx920_41
 cmp rax, r8
 je .Lx920_41
 mov r8, rax
 jmp .Lx920_40
.Lx920_41:
 lea r9, [rbp + 1504]
.Lx920_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx920_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx920_43
 cmp esi, 1
 jne .Lx920_57
 mov r9, rax
 jmp .Lx920_42
.Lx920_57:
 cmp esi, 2
 jne .Lx920_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx920_43
 mov r9, rax
 jmp .Lx920_42
.Lx920_58:
 cmp eax, 13
 jne .Lx920_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx920_43
 cmp rax, r9
 je .Lx920_43
 mov r9, rax
 jmp .Lx920_42
.Lx920_43:
 cmp r8, r9
 je .Lx920_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx920_44
 cmp eax, 99
 je .Lx920_44
 cmp eax, 13
 jne .Lx920_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx920_44
 jmp .Lx920_45
.Lx920_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx920_53
 cmp eax, 99
 je .Lx920_53
 cmp eax, 13
 jne .Lx920_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx920_53
 jmp .Lx920_46
.Lx920_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx920_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx920_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx920_51
.Lx920_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx920_47
 cmp eax, 99
 je .Lx920_47
 cmp eax, 13
 jne .Lx920_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx920_47
 jmp .Lx920_48
.Lx920_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx920_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx920_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx920_51
.Lx920_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx920_49
 cmp edx, 14
 je .Lx920_53
 jmp .Lx920_52
.Lx920_49:
 cmp edx, 14
 je .Lx920_52
 cmp ecx, 7
 je .Lx920_53
 cmp edx, 7
 je .Lx920_53
 cmp ecx, 6
 jne .Lx920_50
 cmp edx, 6
 jne .Lx920_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx920_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx920_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx920_51
 jmp .Lx920_52
.Lx920_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx920_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx920_53
.Lx920_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx920_54
.Lx920_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx920_54
.Lx920_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx920_54:
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain846_n27_α
 jmp xchain846_n51_α
 xchain846_n47_β:
 jmp xchain846_n27_α
# IR_VAR_REF
 xchain846_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3744]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain846_n52_α
 xchain846_n49_α:
# IR_CUT
 jmp xchain846_n53_α
# IR_VAR
 xchain846_n50_α:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 2344], rax
 jmp xchain846_n54_α
# IR_VAR_REF
 xchain846_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain846_n55_α
 xchain846_n52_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+768]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 776], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 768]
 lea r8, [rbp + 768]
.Lx928_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx928_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx928_41
 cmp esi, 1
 jne .Lx928_55
 mov r8, rax
 jmp .Lx928_40
.Lx928_55:
 cmp esi, 2
 jne .Lx928_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx928_41
 mov r8, rax
 jmp .Lx928_40
.Lx928_56:
 cmp eax, 13
 jne .Lx928_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx928_41
 cmp rax, r8
 je .Lx928_41
 mov r8, rax
 jmp .Lx928_40
.Lx928_41:
 lea r9, [rbp + 784]
.Lx928_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx928_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx928_43
 cmp esi, 1
 jne .Lx928_57
 mov r9, rax
 jmp .Lx928_42
.Lx928_57:
 cmp esi, 2
 jne .Lx928_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx928_43
 mov r9, rax
 jmp .Lx928_42
.Lx928_58:
 cmp eax, 13
 jne .Lx928_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx928_43
 cmp rax, r9
 je .Lx928_43
 mov r9, rax
 jmp .Lx928_42
.Lx928_43:
 cmp r8, r9
 je .Lx928_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx928_44
 cmp eax, 99
 je .Lx928_44
 cmp eax, 13
 jne .Lx928_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx928_44
 jmp .Lx928_45
.Lx928_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx928_53
 cmp eax, 99
 je .Lx928_53
 cmp eax, 13
 jne .Lx928_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx928_53
 jmp .Lx928_46
.Lx928_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx928_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx928_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx928_51
.Lx928_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx928_47
 cmp eax, 99
 je .Lx928_47
 cmp eax, 13
 jne .Lx928_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx928_47
 jmp .Lx928_48
.Lx928_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx928_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx928_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx928_51
.Lx928_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx928_49
 cmp edx, 14
 je .Lx928_53
 jmp .Lx928_52
.Lx928_49:
 cmp edx, 14
 je .Lx928_52
 cmp ecx, 7
 je .Lx928_53
 cmp edx, 7
 je .Lx928_53
 cmp ecx, 6
 jne .Lx928_50
 cmp edx, 6
 jne .Lx928_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx928_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx928_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx928_51
 jmp .Lx928_52
.Lx928_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx928_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx928_53
.Lx928_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx928_54
.Lx928_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx928_54
.Lx928_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx928_54:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n56_α
 xchain846_n52_β:
 jmp xchain846_n44_α
# IR_VAR_REF
 xchain846_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3744]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain846_n57_α
# IR_LIT_INTEGER
 xchain846_n54_α:
 mov qword ptr [rbp + 2368], 6
 mov rax, qword ptr [rip + .Lx931_0]
 mov qword ptr [rbp + 2376], rax
 jmp xchain846_n58_α
.Lx931_0:
 .quad 100
# IR_VAR_REF
 xchain846_n55_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3728]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain846_n59_α
# IR_VAR_REF
 xchain846_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 jmp xchain846_n60_α
# IR_VAR_REF
 xchain846_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3728]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain846_n61_α
 xchain846_n58_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2336] -> [zr+2288]
 mov rax, qword ptr [rbp + 2336]
 mov qword ptr [rbp + 2288], rax
 mov rax, qword ptr [rbp + 2344]
 mov qword ptr [rbp + 2296], rax
# marshal arg1 = producer-box slot [zr+2368] -> [zr+2304]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 2288]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 cmp eax, 99
 je xchain846_n14_α
 jmp xchain846_n62_α
 xchain846_n58_β:
 jmp xchain846_n14_α
 xchain846_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1408] -> [zr+1376]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1392]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1400], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 1376]
 lea r8, [rbp + 1376]
.Lx939_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx939_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx939_41
 cmp esi, 1
 jne .Lx939_55
 mov r8, rax
 jmp .Lx939_40
.Lx939_55:
 cmp esi, 2
 jne .Lx939_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx939_41
 mov r8, rax
 jmp .Lx939_40
.Lx939_56:
 cmp eax, 13
 jne .Lx939_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx939_41
 cmp rax, r8
 je .Lx939_41
 mov r8, rax
 jmp .Lx939_40
.Lx939_41:
 lea r9, [rbp + 1392]
.Lx939_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx939_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx939_43
 cmp esi, 1
 jne .Lx939_57
 mov r9, rax
 jmp .Lx939_42
.Lx939_57:
 cmp esi, 2
 jne .Lx939_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx939_43
 mov r9, rax
 jmp .Lx939_42
.Lx939_58:
 cmp eax, 13
 jne .Lx939_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx939_43
 cmp rax, r9
 je .Lx939_43
 mov r9, rax
 jmp .Lx939_42
.Lx939_43:
 cmp r8, r9
 je .Lx939_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx939_44
 cmp eax, 99
 je .Lx939_44
 cmp eax, 13
 jne .Lx939_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx939_44
 jmp .Lx939_45
.Lx939_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx939_53
 cmp eax, 99
 je .Lx939_53
 cmp eax, 13
 jne .Lx939_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx939_53
 jmp .Lx939_46
.Lx939_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx939_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx939_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx939_51
.Lx939_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx939_47
 cmp eax, 99
 je .Lx939_47
 cmp eax, 13
 jne .Lx939_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx939_47
 jmp .Lx939_48
.Lx939_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx939_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx939_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx939_51
.Lx939_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx939_49
 cmp edx, 14
 je .Lx939_53
 jmp .Lx939_52
.Lx939_49:
 cmp edx, 14
 je .Lx939_52
 cmp ecx, 7
 je .Lx939_53
 cmp edx, 7
 je .Lx939_53
 cmp ecx, 6
 jne .Lx939_50
 cmp edx, 6
 jne .Lx939_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx939_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx939_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx939_51
 jmp .Lx939_52
.Lx939_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx939_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx939_53
.Lx939_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx939_54
.Lx939_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx939_54
.Lx939_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx939_54:
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain846_n27_α
 jmp xchain846_n63_α
 xchain846_n59_β:
 jmp xchain846_n27_α
# IR_VAR_REF
 xchain846_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3760]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain846_n64_α
 xchain846_n61_α:
 mov qword ptr [rbp + 2928], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx943_20
 mov rax, qword ptr [rbp + 2960]
 mov rdx, qword ptr [rbp + 2968]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx943_21
.Lx943_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 2960]
 mov rdx, qword ptr [rbp + 2968]
 call rt_arg_stage@PLT
.Lx943_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx943_22
 mov rax, qword ptr [rbp + 2992]
 mov rdx, qword ptr [rbp + 3000]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx943_23
.Lx943_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 2992]
 mov rdx, qword ptr [rbp + 3000]
 call rt_arg_stage@PLT
.Lx943_23:
 mov rdi, qword ptr [rip + .Lx943_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx943_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx943_3]
 lea rdx, [rip + .Lx943_4]
 jmp rax
.Lx943_3:
 mov qword ptr [rbp + 2936], rsp
 mov rax, qword ptr [rbp + 2928]
 test rax, rax
 jne .Lx943_5
 mov qword ptr [rbp + 2928], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx943_2
.Lx943_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx943_2
.Lx943_4:
 mov rax, qword ptr [rbp + 2928]
 test rax, rax
 jne .Lx943_6
 mov qword ptr [rbp + 2928], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx943_2
.Lx943_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx943_2
.Lx943_1:
 call rt_faildescr@PLT
.Lx943_2:
 mov qword ptr [rbp + 2880], rax
 mov qword ptr [rbp + 2888], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n65_α
 xchain846_n61_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2936]
 jmp qword ptr [rsp]
.Lx943_0:
 .quad .Lx943_0_s
.Lx943_0_s:
 .string "dow/2"
 xchain846_n62_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2240] -> [zr+2208]
 mov rax, qword ptr [rbp + 2240]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2248]
 mov qword ptr [rbp + 2216], rax
# marshal arg1 = producer-box slot [zr+2272] -> [zr+2224]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 2208]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain846_n14_α
 jmp xchain846_n66_α
 xchain846_n62_β:
 jmp xchain846_n14_α
# IR_LIT_INTEGER
 xchain846_n63_α:
 mov qword ptr [rbp + 1200], 6
 mov rax, qword ptr [rip + .Lx945_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain846_n67_α
.Lx945_0:
 .quad 0
 xchain846_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+656]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+672]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 680], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 656]
 lea r8, [rbp + 656]
.Lx946_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx946_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx946_41
 cmp esi, 1
 jne .Lx946_55
 mov r8, rax
 jmp .Lx946_40
.Lx946_55:
 cmp esi, 2
 jne .Lx946_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx946_41
 mov r8, rax
 jmp .Lx946_40
.Lx946_56:
 cmp eax, 13
 jne .Lx946_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx946_41
 cmp rax, r8
 je .Lx946_41
 mov r8, rax
 jmp .Lx946_40
.Lx946_41:
 lea r9, [rbp + 672]
.Lx946_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx946_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx946_43
 cmp esi, 1
 jne .Lx946_57
 mov r9, rax
 jmp .Lx946_42
.Lx946_57:
 cmp esi, 2
 jne .Lx946_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx946_43
 mov r9, rax
 jmp .Lx946_42
.Lx946_58:
 cmp eax, 13
 jne .Lx946_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx946_43
 cmp rax, r9
 je .Lx946_43
 mov r9, rax
 jmp .Lx946_42
.Lx946_43:
 cmp r8, r9
 je .Lx946_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx946_44
 cmp eax, 99
 je .Lx946_44
 cmp eax, 13
 jne .Lx946_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx946_44
 jmp .Lx946_45
.Lx946_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx946_53
 cmp eax, 99
 je .Lx946_53
 cmp eax, 13
 jne .Lx946_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx946_53
 jmp .Lx946_46
.Lx946_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx946_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx946_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx946_51
.Lx946_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx946_47
 cmp eax, 99
 je .Lx946_47
 cmp eax, 13
 jne .Lx946_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx946_47
 jmp .Lx946_48
.Lx946_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx946_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx946_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx946_51
.Lx946_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx946_49
 cmp edx, 14
 je .Lx946_53
 jmp .Lx946_52
.Lx946_49:
 cmp edx, 14
 je .Lx946_52
 cmp ecx, 7
 je .Lx946_53
 cmp edx, 7
 je .Lx946_53
 cmp ecx, 6
 jne .Lx946_50
 cmp edx, 6
 jne .Lx946_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx946_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx946_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx946_51
 jmp .Lx946_52
.Lx946_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx946_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx946_53
.Lx946_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx946_54
.Lx946_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx946_54
.Lx946_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx946_54:
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n68_α
 xchain846_n64_β:
 jmp xchain846_n44_α
# IR_SUSPEND yield+resume
 xchain846_n65_α:
 lea rax, [rip + xchain846_n65_β]
 mov qword ptr [rbp + 3680], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_leap_year$2F4_γ
 xchain846_n65_β:
 jmp xchain846_n61_β
 xchain846_n66_α:
# IR_CUT
 jmp xchain846_n69_α
# IR_VAR
 xchain846_n67_α:
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 1304], rax
 jmp xchain846_n70_α
# IR_VAR_REF
 xchain846_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain846_n71_α
# IR_VAR_REF
 xchain846_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3776]
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 jmp xchain846_n72_α
# IR_LIT_INTEGER
 xchain846_n70_α:
 mov qword ptr [rbp + 1328], 6
 mov rax, qword ptr [rip + .Lx956_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain846_n73_α
.Lx956_0:
 .quad 400
# IR_VAR_REF
 xchain846_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3728]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain846_n74_α
# IR_VAR
 xchain846_n72_α:
 mov rax, qword ptr [rbp + 3744]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 2136], rax
 jmp xchain846_n75_α
 xchain846_n73_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1248]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1256], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1264]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 1248]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain846_n27_α
 jmp xchain846_n76_α
 xchain846_n73_β:
 jmp xchain846_n27_α
 xchain846_n74_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+608] -> [zr+560]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 568], rax
# PL-SINK-1 inline $unify fast path: deref/bind/trail/int-eq emitted; rt_pl_dop_unify stays the slow-path oracle (bit-identical fallback, unmodified args)
 lea rdi, [rbp + 544]
 lea r8, [rbp + 544]
.Lx962_40:
 mov eax, dword ptr [r8 + 0]
 cmp eax, 9
 jne .Lx962_56
 mov esi, dword ptr [r8 + 4]
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx962_41
 cmp esi, 1
 jne .Lx962_55
 mov r8, rax
 jmp .Lx962_40
.Lx962_55:
 cmp esi, 2
 jne .Lx962_41
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx962_41
 mov r8, rax
 jmp .Lx962_40
.Lx962_56:
 cmp eax, 13
 jne .Lx962_41
 mov rax, qword ptr [r8 + 8]
 test rax, rax
 je .Lx962_41
 cmp rax, r8
 je .Lx962_41
 mov r8, rax
 jmp .Lx962_40
.Lx962_41:
 lea r9, [rbp + 560]
.Lx962_42:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 9
 jne .Lx962_58
 mov esi, dword ptr [r9 + 4]
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx962_43
 cmp esi, 1
 jne .Lx962_57
 mov r9, rax
 jmp .Lx962_42
.Lx962_57:
 cmp esi, 2
 jne .Lx962_43
 mov rax, qword ptr [rax + 0]
 test rax, rax
 je .Lx962_43
 mov r9, rax
 jmp .Lx962_42
.Lx962_58:
 cmp eax, 13
 jne .Lx962_43
 mov rax, qword ptr [r9 + 8]
 test rax, rax
 je .Lx962_43
 cmp rax, r9
 je .Lx962_43
 mov r9, rax
 jmp .Lx962_42
.Lx962_43:
 cmp r8, r9
 je .Lx962_51
 mov eax, dword ptr [r8 + 0]
 cmp eax, 0
 je .Lx962_44
 cmp eax, 99
 je .Lx962_44
 cmp eax, 13
 jne .Lx962_45
 mov rax, qword ptr [r8 + 8]
 cmp rax, r8
 je .Lx962_44
 jmp .Lx962_45
.Lx962_44:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx962_53
 cmp eax, 99
 je .Lx962_53
 cmp eax, 13
 jne .Lx962_46
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx962_53
 jmp .Lx962_46
.Lx962_46:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx962_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx962_53
 add r11, rsi
 mov qword ptr [r11 + 0], r8
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r8 + 0], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r8 + 8], rax
 jmp .Lx962_51
.Lx962_45:
 mov eax, dword ptr [r9 + 0]
 cmp eax, 0
 je .Lx962_47
 cmp eax, 99
 je .Lx962_47
 cmp eax, 13
 jne .Lx962_48
 mov rax, qword ptr [r9 + 8]
 cmp rax, r9
 je .Lx962_47
 jmp .Lx962_48
.Lx962_47:
 lea r10, [rip + g_pl_trail]
 mov r11, qword ptr [r10 + 0]
 test r11, r11
 je .Lx962_53
 mov eax, dword ptr [r10 + 32]
 mov esi, 24
 imul rsi, rax
 mov rax, qword ptr [r10 + 24]
 sub rax, 24
 cmp rsi, rax
 ja .Lx962_53
 add r11, rsi
 mov qword ptr [r11 + 0], r9
 mov rax, qword ptr [r9 + 0]
 mov qword ptr [r11 + 8], rax
 mov rax, qword ptr [r9 + 8]
 mov qword ptr [r11 + 16], rax
 mov eax, dword ptr [r10 + 32]
 add eax, 1
 mov dword ptr [r10 + 32], eax
 mov rax, qword ptr [r8 + 0]
 mov qword ptr [r9 + 0], rax
 mov rax, qword ptr [r8 + 8]
 mov qword ptr [r9 + 8], rax
 jmp .Lx962_51
.Lx962_48:
 mov ecx, dword ptr [r8 + 0]
 mov edx, dword ptr [r9 + 0]
 cmp ecx, 14
 jne .Lx962_49
 cmp edx, 14
 je .Lx962_53
 jmp .Lx962_52
.Lx962_49:
 cmp edx, 14
 je .Lx962_52
 cmp ecx, 7
 je .Lx962_53
 cmp edx, 7
 je .Lx962_53
 cmp ecx, 6
 jne .Lx962_50
 cmp edx, 6
 jne .Lx962_50
 mov rax, qword ptr [r8 + 0]
 cmp rax, 6
 jne .Lx962_53
 mov rax, qword ptr [r9 + 0]
 cmp rax, 6
 jne .Lx962_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 je .Lx962_51
 jmp .Lx962_52
.Lx962_50:
 mov rax, qword ptr [r8 + 0]
 mov rsi, qword ptr [r9 + 0]
 cmp rax, rsi
 jne .Lx962_53
 mov rax, qword ptr [r8 + 8]
 mov rsi, qword ptr [r9 + 8]
 cmp rax, rsi
 jne .Lx962_53
.Lx962_51:
 mov rax, qword ptr [r8 + 0]
 mov rdx, qword ptr [r8 + 8]
 jmp .Lx962_54
.Lx962_52:
 mov eax, 99
 mov edx, 0
 jmp .Lx962_54
.Lx962_53:
 mov esi, 2
 call rt_pl_dop_unify@PLT
.Lx962_54:
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n77_α
 xchain846_n74_β:
 jmp xchain846_n44_α
# IR_VAR
 xchain846_n75_α:
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 2168], rax
 jmp xchain846_n78_α
 xchain846_n76_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1168]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1176], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1184]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain846_n27_α
 jmp xchain846_n79_α
 xchain846_n76_β:
 jmp xchain846_n27_α
# IR_VAR_REF
 xchain846_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3712]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain846_n80_α
 xchain846_n78_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2128] -> [zr+2080]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 2080], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 2088], rax
# marshal arg1 = producer-box slot [zr+2160] -> [zr+2096]
 mov rax, qword ptr [rbp + 2160]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2168]
 mov qword ptr [rbp + 2104], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 2080]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 2064], rax
 mov qword ptr [rbp + 2072], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n81_α
 xchain846_n78_β:
 jmp xchain846_n44_α
 xchain846_n79_α:
# IR_CUT
 jmp xchain846_n82_α
# IR_VAR
 xchain846_n80_α:
 mov rax, qword ptr [rbp + 3744]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 3752]
 mov qword ptr [rbp + 472], rax
 jmp xchain846_n83_α
 xchain846_n81_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2032] -> [zr+2000]
 mov rax, qword ptr [rbp + 2032]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 2040]
 mov qword ptr [rbp + 2008], rax
# marshal arg1 = producer-box slot [zr+2064] -> [zr+2016]
 mov rax, qword ptr [rbp + 2064]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 2072]
 mov qword ptr [rbp + 2024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 2000]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n84_α
 xchain846_n81_β:
 jmp xchain846_n44_α
# IR_VAR_REF
 xchain846_n82_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3744]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain846_n85_α
# IR_VAR
 xchain846_n83_α:
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 504], rax
 jmp xchain846_n86_α
# IR_VAR_REF
 xchain846_n84_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3776]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain846_n87_α
# IR_VAR_REF
 xchain846_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3728]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain846_n88_α
 xchain846_n86_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n89_α
 xchain846_n86_β:
 jmp xchain846_n44_α
# IR_VAR_REF
 xchain846_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3728]
 mov qword ptr [rbp + 1952], rax
 mov qword ptr [rbp + 1960], rdx
 jmp xchain846_n90_α
 xchain846_n88_α:
 mov qword ptr [rbp + 1056], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx985_20
 mov rax, qword ptr [rbp + 1088]
 mov rdx, qword ptr [rbp + 1096]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx985_21
.Lx985_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1088]
 mov rdx, qword ptr [rbp + 1096]
 call rt_arg_stage@PLT
.Lx985_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx985_22
 mov rax, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx985_23
.Lx985_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 1120]
 mov rdx, qword ptr [rbp + 1128]
 call rt_arg_stage@PLT
.Lx985_23:
 mov rdi, qword ptr [rip + .Lx985_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx985_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx985_3]
 lea rdx, [rip + .Lx985_4]
 jmp rax
.Lx985_3:
 mov qword ptr [rbp + 1064], rsp
 mov rax, qword ptr [rbp + 1056]
 test rax, rax
 jne .Lx985_5
 mov qword ptr [rbp + 1056], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx985_2
.Lx985_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx985_2
.Lx985_4:
 mov rax, qword ptr [rbp + 1056]
 test rax, rax
 jne .Lx985_6
 mov qword ptr [rbp + 1056], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx985_2
.Lx985_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx985_2
.Lx985_1:
 call rt_faildescr@PLT
.Lx985_2:
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n91_α
 xchain846_n88_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1064]
 jmp qword ptr [rsp]
.Lx985_0:
 .quad .Lx985_0_s
.Lx985_0_s:
 .string "dow/2"
 xchain846_n89_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+336]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+352]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n92_α
 xchain846_n89_β:
 jmp xchain846_n44_α
 xchain846_n90_α:
 mov qword ptr [rbp + 1888], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx988_20
 mov rax, qword ptr [rbp + 1920]
 mov rdx, qword ptr [rbp + 1928]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx988_21
.Lx988_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 1920]
 mov rdx, qword ptr [rbp + 1928]
 call rt_arg_stage@PLT
.Lx988_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx988_22
 mov rax, qword ptr [rbp + 1952]
 mov rdx, qword ptr [rbp + 1960]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx988_23
.Lx988_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 1952]
 mov rdx, qword ptr [rbp + 1960]
 call rt_arg_stage@PLT
.Lx988_23:
 mov rdi, qword ptr [rip + .Lx988_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx988_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx988_3]
 lea rdx, [rip + .Lx988_4]
 jmp rax
.Lx988_3:
 mov qword ptr [rbp + 1896], rsp
 mov rax, qword ptr [rbp + 1888]
 test rax, rax
 jne .Lx988_5
 mov qword ptr [rbp + 1888], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx988_2
.Lx988_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx988_2
.Lx988_4:
 mov rax, qword ptr [rbp + 1888]
 test rax, rax
 jne .Lx988_6
 mov qword ptr [rbp + 1888], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx988_2
.Lx988_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx988_2
.Lx988_1:
 call rt_faildescr@PLT
.Lx988_2:
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n93_α
 xchain846_n90_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1896]
 jmp qword ptr [rsp]
.Lx988_0:
 .quad .Lx988_0_s
.Lx988_0_s:
 .string "dow/2"
# IR_SUSPEND yield+resume
 xchain846_n91_α:
 lea rax, [rip + xchain846_n91_β]
 mov qword ptr [rbp + 3680], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_leap_year$2F4_γ
 xchain846_n91_β:
 jmp xchain846_n88_β
# IR_VAR_REF
 xchain846_n92_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3712]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain846_n94_α
# IR_SUSPEND yield+resume
 xchain846_n93_α:
 lea rax, [rip + xchain846_n93_β]
 mov qword ptr [rbp + 3680], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_leap_year$2F4_γ
 xchain846_n93_β:
 jmp xchain846_n90_β
# IR_VAR_REF
 xchain846_n94_α:
 mov rax, 4294967305
 lea rdx, [rbp + 3728]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain846_n95_α
 xchain846_n95_α:
 mov qword ptr [rbp + 224], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx998_20
 mov rax, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx998_21
.Lx998_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
.Lx998_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx998_22
 mov rax, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx998_23
.Lx998_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
.Lx998_23:
 mov rdi, qword ptr [rip + .Lx998_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx998_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx998_3]
 lea rdx, [rip + .Lx998_4]
 jmp rax
.Lx998_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx998_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx998_2
.Lx998_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx998_2
.Lx998_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx998_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx998_2
.Lx998_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx998_2
.Lx998_1:
 call rt_faildescr@PLT
.Lx998_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n96_α
 xchain846_n95_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx998_0:
 .quad .Lx998_0_s
.Lx998_0_s:
 .string "dow/2"
# IR_SUSPEND yield+resume
 xchain846_n96_α:
 lea rax, [rip + xchain846_n96_β]
 mov qword ptr [rbp + 3680], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_leap_year$2F4_γ
 xchain846_n96_β:
 jmp xchain846_n95_β
proc_leap_year$2F4_res:
add rsp, 8
pop rbp
proc_leap_year$2F4_β:
jmp qword ptr [rbp + 3680]
proc_leap_year$2F4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_leap_year$2F4_res]
push rax
mov rax, [rbp + 3816]
mov rbp, [rbp + 3832]
jmp rax
proc_leap_year$2F4_ω:
mov rax, [rbp + 3824]
lea rsp, [rbp + 3840]
mov rbp, [rbp + 3832]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "dow/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_dow$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3168
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "day_of_week/4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_day_of_week$2F4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1232
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "cal_key/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_cal_key$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 15904
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "compute_it/5"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_compute_it$2F5_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 5
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2640
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "leap_year/4"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_leap_year$2F4_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 4
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 3808
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
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
  mov qword ptr [rsp + 488], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain1001_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain1001_n1_α
 xchain1001_n0_β:
 jmp main_ω
# IR_LIT_INTEGER
 xchain1001_n1_α:
 mov qword ptr [rbp + 352], 6
 mov rax, qword ptr [rip + .Lx1003_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain1001_n2_α
.Lx1003_0:
 .quad 1993
# IR_LIT_INTEGER
 xchain1001_n2_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx1004_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain1001_n3_α
.Lx1004_0:
 .quad 4
# IR_LIT_INTEGER
 xchain1001_n3_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx1005_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain1001_n4_α
.Lx1005_0:
 .quad 9
# IR_VAR_REF
 xchain1001_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain1001_n5_α
 xchain1001_n5_α:
 mov qword ptr [rbp + 320], 0
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx1009_20
 mov rax, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 0], rax
 mov qword ptr [r10 + 8], rdx
 jmp .Lx1009_21
.Lx1009_20:
 mov edi, 0
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
.Lx1009_21:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx1009_22
 mov rax, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 16], rax
 mov qword ptr [r10 + 24], rdx
 jmp .Lx1009_23
.Lx1009_22:
 mov edi, 1
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
.Lx1009_23:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx1009_24
 mov rax, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 32], rax
 mov qword ptr [r10 + 40], rdx
 jmp .Lx1009_25
.Lx1009_24:
 mov edi, 2
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
.Lx1009_25:
 lea r11, [rip + g_gc_pending]
 mov eax, dword ptr [r11 + 0]
 test eax, eax
 jne .Lx1009_26
 mov rax, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 lea r10, [rip + g_call_args]
 mov qword ptr [r10 + 48], rax
 mov qword ptr [r10 + 56], rdx
 jmp .Lx1009_27
.Lx1009_26:
 mov edi, 3
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
.Lx1009_27:
 mov rdi, qword ptr [rip + .Lx1009_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx1009_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx1009_3]
 lea rdx, [rip + .Lx1009_4]
 jmp rax
.Lx1009_3:
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx1009_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1009_2
.Lx1009_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx1009_2
.Lx1009_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx1009_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1009_2
.Lx1009_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx1009_2
.Lx1009_1:
 call rt_faildescr@PLT
.Lx1009_2:
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain1001_n7_α
 jmp xchain1001_n6_α
 xchain1001_n5_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx1009_0:
 .quad .Lx1009_0_s
.Lx1009_0_s:
 .string "day_of_week/4"
# IR_VAR
 xchain1001_n6_α:
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 216], rax
 jmp xchain1001_n8_α
 xchain1001_n7_α:
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
 xchain1001_n7_β:
 jmp main_ω
 xchain1001_n8_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn1014: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1014]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain1001_n5_β
 jmp xchain1001_n9_α
 xchain1001_n8_β:
 jmp xchain1001_n5_β
# IR_LIT_STRING
 xchain1001_n9_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx1015_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain1001_n10_α
.Lx1015_0:
 .quad .Lx1015_0_s
.Lx1015_0_s:
 .string ""
 xchain1001_n10_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn1017: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1017]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain1001_n5_β
 jmp xchain1001_n11_α
 xchain1001_n10_β:
 jmp xchain1001_n5_β
# IR_MOVE_LABEL
 xchain1001_n11_α:
 lea rax, [rip + xchain1001_n5_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain1001_n12_α:
 jmp qword ptr [rbp + 32]
 xchain1001_n12_β:
 jmp main_ω
main_β:
jmp xchain1001_n12_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 488]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 488]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
