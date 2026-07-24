  .intel_syntax noprefix
  .text
  .globl proc_dow$2F2_α
proc_dow$2F2_α:
#=======================================================================================================================
    .global proc_dow$2F2_α
    .global proc_dow$2F2_β
    .global proc_dow$2F2_γ
    .global proc_dow$2F2_ω
  sub rsp, 3536
  mov [rsp + 3512], rcx
  mov [rsp + 3520], rdx
  mov [rsp + 3528], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 3496], rsp
  mov rdi, rsp
  mov esi, 3472
  mov edx, 3504
  call rt_jmp_frame_lexprep2@PLT
proc_dow$2F2_α_body:
lea rax, [rip + xchain0_n20_β]
mov qword ptr [rbp + 3472], rax
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
 mov qword ptr [rbp + 3376], rax
 mov qword ptr [rbp + 3384], rdx
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 3408], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 3416], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n3_α:
 mov qword ptr [rbp + 3440], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 3448], rax
 jmp xchain0_n4_α
.Lx5_0:
 .quad 0
 xchain0_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3376] -> [zr+3312]
 mov rax, qword ptr [rbp + 3376]
 mov qword ptr [rbp + 3312], rax
 mov rax, qword ptr [rbp + 3384]
 mov qword ptr [rbp + 3320], rax
# marshal arg1 = producer-box slot [zr+3408] -> [zr+3328]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3328], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3336], rax
# marshal arg2 = producer-box slot [zr+3440] -> [zr+3344]
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 3352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 3312]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 3296], rax
 mov qword ptr [rbp + 3304], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3232], rax
 mov qword ptr [rbp + 3240], rdx
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n7_α:
 mov qword ptr [rbp + 3264], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 3272], rax
 jmp xchain0_n9_α
.Lx11_0:
 .quad 0
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [rbp + 2928], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rbp + 2936], rax
 jmp xchain0_n10_α
.Lx12_0:
 .quad 1
 xchain0_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3232] -> [zr+3184]
 mov rax, qword ptr [rbp + 3232]
 mov qword ptr [rbp + 3184], rax
 mov rax, qword ptr [rbp + 3240]
 mov qword ptr [rbp + 3192], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3184]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3168], rax
 mov qword ptr [rbp + 3176], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [rbp + 2960], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rbp + 2968], rax
 jmp xchain0_n13_α
.Lx14_0:
 .quad 1
# IR_VAR_REF
 xchain0_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3104], rax
 mov qword ptr [rbp + 3112], rdx
 jmp xchain0_n14_α
 xchain0_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+3008]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 3008], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 3016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3008]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 cmp eax, 99
 je proc_dow$2F2_ω
 jmp xchain0_n6_α
 xchain0_n12_β:
 jmp proc_dow$2F2_ω
 xchain0_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2896] -> [zr+2832]
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 2832], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 2840], rax
# marshal arg1 = producer-box slot [zr+2928] -> [zr+2848]
 mov rax, qword ptr [rbp + 2928]
 mov qword ptr [rbp + 2848], rax
 mov rax, qword ptr [rbp + 2936]
 mov qword ptr [rbp + 2856], rax
# marshal arg2 = producer-box slot [zr+2960] -> [zr+2864]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2864], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2832]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2816], rax
 mov qword ptr [rbp + 2824], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n16_α
# IR_LIT_STRING
 xchain0_n14_α:
 mov qword ptr [rbp + 3136], 1
 mov rax, qword ptr [rip + .Lx19_0]
 mov qword ptr [rbp + 3144], rax
 jmp xchain0_n17_α
.Lx19_0:
 .quad .Lx19_0_s
.Lx19_0_s:
 .string "sun"
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2752], rax
 mov qword ptr [rbp + 2760], rdx
 jmp xchain0_n18_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain0_n19_α
 xchain0_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3104] -> [zr+3056]
 mov rax, qword ptr [rbp + 3104]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3112]
 mov qword ptr [rbp + 3064], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3056]
 mov rsi, qword ptr [rip + .Lx24_2]
 jmp .Lx24_3
.Lx24_2:
 .quad .Lx24_2_s
.Lx24_2_s:
 .string "sun"
.Lx24_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3040], rax
 mov qword ptr [rbp + 3048], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n18_α:
 mov qword ptr [rbp + 2784], 6
 mov rax, qword ptr [rip + .Lx25_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain0_n21_α
.Lx25_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n19_α:
 mov qword ptr [rbp + 2448], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [rbp + 2456], rax
 jmp xchain0_n22_α
.Lx26_0:
 .quad 1
# IR_SUSPEND yield+resume
 xchain0_n20_α:
 lea rax, [rip + xchain0_n20_β]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2F2_γ
 xchain0_n20_β:
 jmp xchain0_n12_α
 xchain0_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2704]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2712], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2704]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2688], rax
 mov qword ptr [rbp + 2696], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n23_α
 xchain0_n21_β:
 jmp xchain0_n24_α
# IR_LIT_INTEGER
 xchain0_n22_α:
 mov qword ptr [rbp + 2480], 6
 mov rax, qword ptr [rip + .Lx30_0]
 mov qword ptr [rbp + 2488], rax
 jmp xchain0_n25_α
.Lx30_0:
 .quad 2
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 jmp xchain0_n26_α
 xchain0_n24_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2528]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2528]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je proc_dow$2F2_ω
 jmp xchain0_n16_α
 xchain0_n24_β:
 jmp proc_dow$2F2_ω
 xchain0_n25_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2416] -> [zr+2352]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2360], rax
# marshal arg1 = producer-box slot [zr+2448] -> [zr+2368]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2376], rax
# marshal arg2 = producer-box slot [zr+2480] -> [zr+2384]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2352]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je xchain0_n28_α
 jmp xchain0_n27_α
 xchain0_n25_β:
 jmp xchain0_n28_α
# IR_LIT_STRING
 xchain0_n26_α:
 mov qword ptr [rbp + 2656], 1
 mov rax, qword ptr [rip + .Lx35_0]
 mov qword ptr [rbp + 2664], rax
 jmp xchain0_n29_α
.Lx35_0:
 .quad .Lx35_0_s
.Lx35_0_s:
 .string "mon"
# IR_VAR_REF
 xchain0_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain0_n30_α
# IR_VAR_REF
 xchain0_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain0_n31_α
 xchain0_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2624] -> [zr+2576]
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2584], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2576]
 mov rsi, qword ptr [rip + .Lx40_2]
 jmp .Lx40_3
.Lx40_2:
 .quad .Lx40_2_s
.Lx40_2_s:
 .string "mon"
.Lx40_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 cmp eax, 99
 je xchain0_n24_α
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp xchain0_n24_α
# IR_LIT_INTEGER
 xchain0_n30_α:
 mov qword ptr [rbp + 2304], 6
 mov rax, qword ptr [rip + .Lx41_0]
 mov qword ptr [rbp + 2312], rax
 jmp xchain0_n33_α
.Lx41_0:
 .quad 2
# IR_LIT_INTEGER
 xchain0_n31_α:
 mov qword ptr [rbp + 1968], 6
 mov rax, qword ptr [rip + .Lx42_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain0_n34_α
.Lx42_0:
 .quad 1
# IR_SUSPEND yield+resume
 xchain0_n32_α:
 lea rax, [rip + xchain0_n32_β]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2F2_γ
 xchain0_n32_β:
 jmp xchain0_n24_α
 xchain0_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2272] -> [zr+2224]
 mov rax, qword ptr [rbp + 2272]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2280]
 mov qword ptr [rbp + 2232], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2224]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 cmp eax, 99
 je xchain0_n36_α
 jmp xchain0_n35_α
 xchain0_n33_β:
 jmp xchain0_n36_α
# IR_LIT_INTEGER
 xchain0_n34_α:
 mov qword ptr [rbp + 2000], 6
 mov rax, qword ptr [rip + .Lx46_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain0_n37_α
.Lx46_0:
 .quad 3
# IR_VAR_REF
 xchain0_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain0_n38_α
 xchain0_n36_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+2048]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 2056], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2048]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je proc_dow$2F2_ω
 jmp xchain0_n28_α
 xchain0_n36_β:
 jmp proc_dow$2F2_ω
 xchain0_n37_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1936] -> [zr+1872]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1880], rax
# marshal arg1 = producer-box slot [zr+1968] -> [zr+1888]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1896], rax
# marshal arg2 = producer-box slot [zr+2000] -> [zr+1904]
 mov rax, qword ptr [rbp + 2000]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 2008]
 mov qword ptr [rbp + 1912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1872]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je xchain0_n40_α
 jmp xchain0_n39_α
 xchain0_n37_β:
 jmp xchain0_n40_α
# IR_LIT_STRING
 xchain0_n38_α:
 mov qword ptr [rbp + 2176], 1
 mov rax, qword ptr [rip + .Lx51_0]
 mov qword ptr [rbp + 2184], rax
 jmp xchain0_n41_α
.Lx51_0:
 .quad .Lx51_0_s
.Lx51_0_s:
 .string "tue"
# IR_VAR_REF
 xchain0_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain0_n42_α
# IR_VAR_REF
 xchain0_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain0_n43_α
 xchain0_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2144] -> [zr+2096]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2096], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2104], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2096]
 mov rsi, qword ptr [rip + .Lx56_2]
 jmp .Lx56_3
.Lx56_2:
 .quad .Lx56_2_s
.Lx56_2_s:
 .string "tue"
.Lx56_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 cmp eax, 99
 je xchain0_n36_α
 jmp xchain0_n44_α
 xchain0_n41_β:
 jmp xchain0_n36_α
# IR_LIT_INTEGER
 xchain0_n42_α:
 mov qword ptr [rbp + 1824], 6
 mov rax, qword ptr [rip + .Lx57_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain0_n45_α
.Lx57_0:
 .quad 3
# IR_LIT_INTEGER
 xchain0_n43_α:
 mov qword ptr [rbp + 1488], 6
 mov rax, qword ptr [rip + .Lx58_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain0_n46_α
.Lx58_0:
 .quad 1
# IR_SUSPEND yield+resume
 xchain0_n44_α:
 lea rax, [rip + xchain0_n44_β]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2F2_γ
 xchain0_n44_β:
 jmp xchain0_n36_α
 xchain0_n45_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1752], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1744]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain0_n48_α
 jmp xchain0_n47_α
 xchain0_n45_β:
 jmp xchain0_n48_α
# IR_LIT_INTEGER
 xchain0_n46_α:
 mov qword ptr [rbp + 1520], 6
 mov rax, qword ptr [rip + .Lx62_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain0_n49_α
.Lx62_0:
 .quad 4
# IR_VAR_REF
 xchain0_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain0_n50_α
 xchain0_n48_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1568]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1568]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 cmp eax, 99
 je proc_dow$2F2_ω
 jmp xchain0_n40_α
 xchain0_n48_β:
 jmp proc_dow$2F2_ω
 xchain0_n49_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1456] -> [zr+1392]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1400], rax
# marshal arg1 = producer-box slot [zr+1488] -> [zr+1408]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1416], rax
# marshal arg2 = producer-box slot [zr+1520] -> [zr+1424]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1432], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1392]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 cmp eax, 99
 je xchain0_n52_α
 jmp xchain0_n51_α
 xchain0_n49_β:
 jmp xchain0_n52_α
# IR_LIT_STRING
 xchain0_n50_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx67_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain0_n53_α
.Lx67_0:
 .quad .Lx67_0_s
.Lx67_0_s:
 .string "wed"
# IR_VAR_REF
 xchain0_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain0_n54_α
# IR_VAR_REF
 xchain0_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain0_n55_α
 xchain0_n53_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1616]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1624], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1616]
 mov rsi, qword ptr [rip + .Lx72_2]
 jmp .Lx72_3
.Lx72_2:
 .quad .Lx72_2_s
.Lx72_2_s:
 .string "wed"
.Lx72_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je xchain0_n48_α
 jmp xchain0_n56_α
 xchain0_n53_β:
 jmp xchain0_n48_α
# IR_LIT_INTEGER
 xchain0_n54_α:
 mov qword ptr [rbp + 1344], 6
 mov rax, qword ptr [rip + .Lx73_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain0_n57_α
.Lx73_0:
 .quad 4
# IR_LIT_INTEGER
 xchain0_n55_α:
 mov qword ptr [rbp + 1008], 6
 mov rax, qword ptr [rip + .Lx74_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain0_n58_α
.Lx74_0:
 .quad 1
# IR_SUSPEND yield+resume
 xchain0_n56_α:
 lea rax, [rip + xchain0_n56_β]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2F2_γ
 xchain0_n56_β:
 jmp xchain0_n48_α
 xchain0_n57_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1312] -> [zr+1264]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1264]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 cmp eax, 99
 je xchain0_n60_α
 jmp xchain0_n59_α
 xchain0_n57_β:
 jmp xchain0_n60_α
# IR_LIT_INTEGER
 xchain0_n58_α:
 mov qword ptr [rbp + 1040], 6
 mov rax, qword ptr [rip + .Lx78_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain0_n61_α
.Lx78_0:
 .quad 5
# IR_VAR_REF
 xchain0_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain0_n62_α
 xchain0_n60_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+1088]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 1096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1088]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je proc_dow$2F2_ω
 jmp xchain0_n52_α
 xchain0_n60_β:
 jmp proc_dow$2F2_ω
 xchain0_n61_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+912]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+1008] -> [zr+928]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 936], rax
# marshal arg2 = producer-box slot [zr+1040] -> [zr+944]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain0_n64_α
 jmp xchain0_n63_α
 xchain0_n61_β:
 jmp xchain0_n64_α
# IR_LIT_STRING
 xchain0_n62_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx83_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain0_n65_α
.Lx83_0:
 .quad .Lx83_0_s
.Lx83_0_s:
 .string "thu"
# IR_VAR_REF
 xchain0_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain0_n66_α
# IR_VAR_REF
 xchain0_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n67_α
 xchain0_n65_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1136]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1144], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1136]
 mov rsi, qword ptr [rip + .Lx88_2]
 jmp .Lx88_3
.Lx88_2:
 .quad .Lx88_2_s
.Lx88_2_s:
 .string "thu"
.Lx88_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain0_n60_α
 jmp xchain0_n68_α
 xchain0_n65_β:
 jmp xchain0_n60_α
# IR_LIT_INTEGER
 xchain0_n66_α:
 mov qword ptr [rbp + 864], 6
 mov rax, qword ptr [rip + .Lx89_0]
 mov qword ptr [rbp + 872], rax
 jmp xchain0_n69_α
.Lx89_0:
 .quad 5
# IR_LIT_INTEGER
 xchain0_n67_α:
 mov qword ptr [rbp + 528], 6
 mov rax, qword ptr [rip + .Lx90_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain0_n70_α
.Lx90_0:
 .quad 1
# IR_SUSPEND yield+resume
 xchain0_n68_α:
 lea rax, [rip + xchain0_n68_β]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2F2_γ
 xchain0_n68_β:
 jmp xchain0_n60_α
 xchain0_n69_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 784]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain0_n72_α
 jmp xchain0_n71_α
 xchain0_n69_β:
 jmp xchain0_n72_α
# IR_LIT_INTEGER
 xchain0_n70_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx94_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain0_n73_α
.Lx94_0:
 .quad 6
# IR_VAR_REF
 xchain0_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain0_n74_α
 xchain0_n72_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+608]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 608]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 cmp eax, 99
 je proc_dow$2F2_ω
 jmp xchain0_n64_α
 xchain0_n72_β:
 jmp proc_dow$2F2_ω
 xchain0_n73_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+448]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 456], rax
# marshal arg2 = producer-box slot [zr+560] -> [zr+464]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain0_n76_α
 jmp xchain0_n75_α
 xchain0_n73_β:
 jmp xchain0_n76_α
# IR_LIT_STRING
 xchain0_n74_α:
 mov qword ptr [rbp + 736], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain0_n77_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "fri"
# IR_VAR_REF
 xchain0_n75_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
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
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 656]
 mov rsi, qword ptr [rip + .Lx103_2]
 jmp .Lx103_3
.Lx103_2:
 .quad .Lx103_2_s
.Lx103_2_s:
 .string "fri"
.Lx103_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain0_n72_α
 jmp xchain0_n79_α
 xchain0_n77_β:
 jmp xchain0_n72_α
# IR_LIT_INTEGER
 xchain0_n78_α:
 mov qword ptr [rbp + 384], 6
 mov rax, qword ptr [rip + .Lx104_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain0_n80_α
.Lx104_0:
 .quad 6
# IR_SUSPEND yield+resume
 xchain0_n79_α:
 lea rax, [rip + xchain0_n79_β]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_dow$2F2_γ
 xchain0_n79_β:
 jmp xchain0_n72_α
 xchain0_n80_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+304]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 312], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 304]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain0_n76_α
 jmp xchain0_n81_α
 xchain0_n80_β:
 jmp xchain0_n76_α
# IR_VAR_REF
 xchain0_n81_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain0_n82_α
# IR_LIT_STRING
 xchain0_n82_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx110_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain0_n83_α
.Lx110_0:
 .quad .Lx110_0_s
.Lx110_0_s:
 .string "sat"
 xchain0_n83_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+224] -> [zr+176]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 176], rax
 mov rax, qword ptr [rbp + 232]
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
 mov qword ptr [rbp + 3472], rax
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
jmp qword ptr [rbp + 3472]
proc_dow$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_dow$2F2_res]
push rax
mov rax, [rbp + 3512]
mov rbp, [rbp + 3528]
jmp rax
proc_dow$2F2_ω:
mov rax, [rbp + 3520]
lea rsp, [rbp + 3536]
mov rbp, [rbp + 3528]
jmp rax
  .globl proc_day_of_week$2F4_α
proc_day_of_week$2F4_α:
#=======================================================================================================================
    .global proc_day_of_week$2F4_α
    .global proc_day_of_week$2F4_β
    .global proc_day_of_week$2F4_γ
    .global proc_day_of_week$2F4_ω
  sub rsp, 1344
  mov [rsp + 1320], rcx
  mov [rsp + 1328], rdx
  mov [rsp + 1336], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1208], rsp
  mov rdi, rsp
  mov esi, 1184
  mov edx, 1312
  call rt_jmp_frame_lexprep2@PLT
proc_day_of_week$2F4_α_body:
lea rax, [rip + xchain114_n24_β]
mov qword ptr [rbp + 1184], rax
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
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain114_n2_α
# IR_VAR_REF
 xchain114_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain114_n3_α
 xchain114_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain114_n5_α
 jmp xchain114_n4_α
 xchain114_n3_β:
 jmp xchain114_n5_α
# IR_VAR_REF
 xchain114_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
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
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain114_n7_α
 xchain114_n7_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain114_n5_α
 jmp xchain114_n8_α
 xchain114_n7_β:
 jmp xchain114_n5_α
# IR_VAR_REF
 xchain114_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain114_n9_α
# IR_VAR_REF
 xchain114_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain114_n10_α
 xchain114_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain114_n5_α
 jmp xchain114_n11_α
 xchain114_n10_β:
 jmp xchain114_n5_α
# IR_VAR_REF
 xchain114_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain114_n12_α
# IR_VAR_REF
 xchain114_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain114_n13_α
 xchain114_n13_α:
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
 je xchain114_n5_α
 jmp xchain114_n14_α
 xchain114_n13_β:
 jmp xchain114_n5_α
# IR_VAR_REF
 xchain114_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain114_n15_α
# IR_VAR_REF
 xchain114_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain114_n16_α
# IR_VAR_REF
 xchain114_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain114_n17_α
 xchain114_n17_α:
 mov qword ptr [rbp + 544], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 576]
 mov rdx, qword ptr [rbp + 584]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 608]
 mov rdx, qword ptr [rbp + 616]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 640]
 mov rdx, qword ptr [rbp + 648]
 call rt_arg_stage@PLT
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
 mov qword ptr [rbp + 552], rsp
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx144_5
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx144_2
.Lx144_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx144_2
.Lx144_4:
 mov rax, qword ptr [rbp + 544]
 test rax, rax
 jne .Lx144_6
 mov qword ptr [rbp + 544], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx144_2
.Lx144_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx144_2
.Lx144_1:
 call rt_faildescr@PLT
.Lx144_2:
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain114_n5_α
 jmp xchain114_n18_α
 xchain114_n17_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 552]
 jmp qword ptr [rsp]
.Lx144_0:
 .quad .Lx144_0_s
.Lx144_0_s:
 .string "cal_key/3"
# IR_VAR_REF
 xchain114_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1216]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain114_n19_α
# IR_VAR_REF
 xchain114_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1232]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain114_n20_α
# IR_VAR_REF
 xchain114_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1248]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain114_n21_α
# IR_VAR_REF
 xchain114_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1264]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain114_n22_α
# IR_VAR_REF
 xchain114_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain114_n23_α
 xchain114_n23_α:
 mov qword ptr [rbp + 288], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
 mov edi, 4
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
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
 mov qword ptr [rbp + 296], rsp
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx156_5
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx156_2
.Lx156_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx156_2
.Lx156_4:
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx156_6
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx156_2
.Lx156_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx156_2
.Lx156_1:
 call rt_faildescr@PLT
.Lx156_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain114_n17_β
 jmp xchain114_n24_α
 xchain114_n23_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 296]
 jmp qword ptr [rsp]
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "compute_it/5"
# IR_SUSPEND yield+resume
 xchain114_n24_α:
 lea rax, [rip + xchain114_n24_β]
 mov qword ptr [rbp + 1184], rax
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
jmp qword ptr [rbp + 1184]
proc_day_of_week$2F4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_day_of_week$2F4_res]
push rax
mov rax, [rbp + 1320]
mov rbp, [rbp + 1336]
jmp rax
proc_day_of_week$2F4_ω:
mov rax, [rbp + 1328]
lea rsp, [rbp + 1344]
mov rbp, [rbp + 1336]
jmp rax
  .globl proc_cal_key$2F3_α
proc_cal_key$2F3_α:
#=======================================================================================================================
    .global proc_cal_key$2F3_α
    .global proc_cal_key$2F3_β
    .global proc_cal_key$2F3_γ
    .global proc_cal_key$2F3_ω
  sub rsp, 17856
  mov [rsp + 17832], rcx
  mov [rsp + 17840], rdx
  mov [rsp + 17848], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 17816], rsp
  mov rdi, rsp
  mov esi, 17792
  mov edx, 17824
  call rt_jmp_frame_lexprep2@PLT
proc_cal_key$2F3_α_body:
lea rax, [rip + xchain159_n31_β]
mov qword ptr [rbp + 17792], rax
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
 mov qword ptr [rbp + 17696], rax
 mov qword ptr [rbp + 17704], rdx
 jmp xchain159_n2_α
# IR_LIT_INTEGER
 xchain159_n2_α:
 mov qword ptr [rbp + 17728], 6
 mov rax, qword ptr [rip + .Lx163_0]
 mov qword ptr [rbp + 17736], rax
 jmp xchain159_n3_α
.Lx163_0:
 .quad 1
# IR_LIT_INTEGER
 xchain159_n3_α:
 mov qword ptr [rbp + 17760], 6
 mov rax, qword ptr [rip + .Lx164_0]
 mov qword ptr [rbp + 17768], rax
 jmp xchain159_n4_α
.Lx164_0:
 .quad 1
 xchain159_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+17696] -> [zr+17632]
 mov rax, qword ptr [rbp + 17696]
 mov qword ptr [rbp + 17632], rax
 mov rax, qword ptr [rbp + 17704]
 mov qword ptr [rbp + 17640], rax
# marshal arg1 = producer-box slot [zr+17728] -> [zr+17648]
 mov rax, qword ptr [rbp + 17728]
 mov qword ptr [rbp + 17648], rax
 mov rax, qword ptr [rbp + 17736]
 mov qword ptr [rbp + 17656], rax
# marshal arg2 = producer-box slot [zr+17760] -> [zr+17664]
 mov rax, qword ptr [rbp + 17760]
 mov qword ptr [rbp + 17664], rax
 mov rax, qword ptr [rbp + 17768]
 mov qword ptr [rbp + 17672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 17632]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 17616], rax
 mov qword ptr [rbp + 17624], rdx
 cmp eax, 99
 je xchain159_n6_α
 jmp xchain159_n5_α
 xchain159_n4_β:
 jmp xchain159_n6_α
# IR_VAR_REF
 xchain159_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 17552], rax
 mov qword ptr [rbp + 17560], rdx
 jmp xchain159_n7_α
# IR_VAR_REF
 xchain159_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 17088], rax
 mov qword ptr [rbp + 17096], rdx
 jmp xchain159_n8_α
# IR_LIT_INTEGER
 xchain159_n7_α:
 mov qword ptr [rbp + 17584], 6
 mov rax, qword ptr [rip + .Lx170_0]
 mov qword ptr [rbp + 17592], rax
 jmp xchain159_n9_α
.Lx170_0:
 .quad 1
# IR_LIT_INTEGER
 xchain159_n8_α:
 mov qword ptr [rbp + 17120], 6
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [rbp + 17128], rax
 jmp xchain159_n10_α
.Lx171_0:
 .quad 1
 xchain159_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+17552] -> [zr+17504]
 mov rax, qword ptr [rbp + 17552]
 mov qword ptr [rbp + 17504], rax
 mov rax, qword ptr [rbp + 17560]
 mov qword ptr [rbp + 17512], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 17504]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 17488], rax
 mov qword ptr [rbp + 17496], rdx
 cmp eax, 99
 je xchain159_n12_α
 jmp xchain159_n11_α
 xchain159_n9_β:
 jmp xchain159_n12_α
# IR_LIT_INTEGER
 xchain159_n10_α:
 mov qword ptr [rbp + 17152], 6
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [rbp + 17160], rax
 jmp xchain159_n13_α
.Lx173_0:
 .quad 2
# IR_VAR_REF
 xchain159_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 17424], rax
 mov qword ptr [rbp + 17432], rdx
 jmp xchain159_n14_α
 xchain159_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+17200]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 17200], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 17208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 17200]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 17184], rax
 mov qword ptr [rbp + 17192], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n6_α
 xchain159_n12_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+17088] -> [zr+17024]
 mov rax, qword ptr [rbp + 17088]
 mov qword ptr [rbp + 17024], rax
 mov rax, qword ptr [rbp + 17096]
 mov qword ptr [rbp + 17032], rax
# marshal arg1 = producer-box slot [zr+17120] -> [zr+17040]
 mov rax, qword ptr [rbp + 17120]
 mov qword ptr [rbp + 17040], rax
 mov rax, qword ptr [rbp + 17128]
 mov qword ptr [rbp + 17048], rax
# marshal arg2 = producer-box slot [zr+17152] -> [zr+17056]
 mov rax, qword ptr [rbp + 17152]
 mov qword ptr [rbp + 17056], rax
 mov rax, qword ptr [rbp + 17160]
 mov qword ptr [rbp + 17064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 17024]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 17008], rax
 mov qword ptr [rbp + 17016], rdx
 cmp eax, 99
 je xchain159_n16_α
 jmp xchain159_n15_α
 xchain159_n13_β:
 jmp xchain159_n16_α
# IR_LIT_INTEGER
 xchain159_n14_α:
 mov qword ptr [rbp + 17456], 6
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [rbp + 17464], rax
 jmp xchain159_n17_α
.Lx178_0:
 .quad 6
# IR_VAR_REF
 xchain159_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 16944], rax
 mov qword ptr [rbp + 16952], rdx
 jmp xchain159_n18_α
# IR_VAR_REF
 xchain159_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 16480], rax
 mov qword ptr [rbp + 16488], rdx
 jmp xchain159_n19_α
 xchain159_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+17424] -> [zr+17376]
 mov rax, qword ptr [rbp + 17424]
 mov qword ptr [rbp + 17376], rax
 mov rax, qword ptr [rbp + 17432]
 mov qword ptr [rbp + 17384], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 17376]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 17360], rax
 mov qword ptr [rbp + 17368], rdx
 cmp eax, 99
 je xchain159_n12_α
 jmp xchain159_n20_α
 xchain159_n17_β:
 jmp xchain159_n12_α
# IR_LIT_INTEGER
 xchain159_n18_α:
 mov qword ptr [rbp + 16976], 6
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [rbp + 16984], rax
 jmp xchain159_n21_α
.Lx184_0:
 .quad 2
# IR_LIT_INTEGER
 xchain159_n19_α:
 mov qword ptr [rbp + 16512], 6
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [rbp + 16520], rax
 jmp xchain159_n22_α
.Lx185_0:
 .quad 1
# IR_VAR_REF
 xchain159_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 17296], rax
 mov qword ptr [rbp + 17304], rdx
 jmp xchain159_n23_α
 xchain159_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16944] -> [zr+16896]
 mov rax, qword ptr [rbp + 16944]
 mov qword ptr [rbp + 16896], rax
 mov rax, qword ptr [rbp + 16952]
 mov qword ptr [rbp + 16904], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 16896]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 16880], rax
 mov qword ptr [rbp + 16888], rdx
 cmp eax, 99
 je xchain159_n25_α
 jmp xchain159_n24_α
 xchain159_n21_β:
 jmp xchain159_n25_α
# IR_LIT_INTEGER
 xchain159_n22_α:
 mov qword ptr [rbp + 16544], 6
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [rbp + 16552], rax
 jmp xchain159_n26_α
.Lx189_0:
 .quad 3
# IR_LIT_INTEGER
 xchain159_n23_α:
 mov qword ptr [rbp + 17328], 6
 mov rax, qword ptr [rip + .Lx190_0]
 mov qword ptr [rbp + 17336], rax
 jmp xchain159_n27_α
.Lx190_0:
 .quad 1
# IR_VAR_REF
 xchain159_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 16816], rax
 mov qword ptr [rbp + 16824], rdx
 jmp xchain159_n28_α
 xchain159_n25_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+16592]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 16592], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 16600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 16592]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 16576], rax
 mov qword ptr [rbp + 16584], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n16_α
 xchain159_n25_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n26_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16480] -> [zr+16416]
 mov rax, qword ptr [rbp + 16480]
 mov qword ptr [rbp + 16416], rax
 mov rax, qword ptr [rbp + 16488]
 mov qword ptr [rbp + 16424], rax
# marshal arg1 = producer-box slot [zr+16512] -> [zr+16432]
 mov rax, qword ptr [rbp + 16512]
 mov qword ptr [rbp + 16432], rax
 mov rax, qword ptr [rbp + 16520]
 mov qword ptr [rbp + 16440], rax
# marshal arg2 = producer-box slot [zr+16544] -> [zr+16448]
 mov rax, qword ptr [rbp + 16544]
 mov qword ptr [rbp + 16448], rax
 mov rax, qword ptr [rbp + 16552]
 mov qword ptr [rbp + 16456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 16416]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 16400], rax
 mov qword ptr [rbp + 16408], rdx
 cmp eax, 99
 je xchain159_n30_α
 jmp xchain159_n29_α
 xchain159_n26_β:
 jmp xchain159_n30_α
 xchain159_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+17296] -> [zr+17248]
 mov rax, qword ptr [rbp + 17296]
 mov qword ptr [rbp + 17248], rax
 mov rax, qword ptr [rbp + 17304]
 mov qword ptr [rbp + 17256], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 17248]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 17232], rax
 mov qword ptr [rbp + 17240], rdx
 cmp eax, 99
 je xchain159_n12_α
 jmp xchain159_n31_α
 xchain159_n27_β:
 jmp xchain159_n12_α
# IR_LIT_INTEGER
 xchain159_n28_α:
 mov qword ptr [rbp + 16848], 6
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [rbp + 16856], rax
 jmp xchain159_n32_α
.Lx196_0:
 .quad 2
# IR_VAR_REF
 xchain159_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 16336], rax
 mov qword ptr [rbp + 16344], rdx
 jmp xchain159_n33_α
# IR_VAR_REF
 xchain159_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 15872], rax
 mov qword ptr [rbp + 15880], rdx
 jmp xchain159_n34_α
# IR_SUSPEND yield+resume
 xchain159_n31_α:
 lea rax, [rip + xchain159_n31_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n31_β:
 jmp xchain159_n12_α
 xchain159_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16816] -> [zr+16768]
 mov rax, qword ptr [rbp + 16816]
 mov qword ptr [rbp + 16768], rax
 mov rax, qword ptr [rbp + 16824]
 mov qword ptr [rbp + 16776], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 16768]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 16752], rax
 mov qword ptr [rbp + 16760], rdx
 cmp eax, 99
 je xchain159_n25_α
 jmp xchain159_n35_α
 xchain159_n32_β:
 jmp xchain159_n25_α
# IR_LIT_INTEGER
 xchain159_n33_α:
 mov qword ptr [rbp + 16368], 6
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 16376], rax
 jmp xchain159_n36_α
.Lx204_0:
 .quad 3
# IR_LIT_INTEGER
 xchain159_n34_α:
 mov qword ptr [rbp + 15904], 6
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 15912], rax
 jmp xchain159_n37_α
.Lx205_0:
 .quad 1
# IR_VAR_REF
 xchain159_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 16688], rax
 mov qword ptr [rbp + 16696], rdx
 jmp xchain159_n38_α
 xchain159_n36_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16336] -> [zr+16288]
 mov rax, qword ptr [rbp + 16336]
 mov qword ptr [rbp + 16288], rax
 mov rax, qword ptr [rbp + 16344]
 mov qword ptr [rbp + 16296], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 16288]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 16272], rax
 mov qword ptr [rbp + 16280], rdx
 cmp eax, 99
 je xchain159_n40_α
 jmp xchain159_n39_α
 xchain159_n36_β:
 jmp xchain159_n40_α
# IR_LIT_INTEGER
 xchain159_n37_α:
 mov qword ptr [rbp + 15936], 6
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 15944], rax
 jmp xchain159_n41_α
.Lx209_0:
 .quad 4
# IR_LIT_INTEGER
 xchain159_n38_α:
 mov qword ptr [rbp + 16720], 6
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [rbp + 16728], rax
 jmp xchain159_n42_α
.Lx210_0:
 .quad 1
# IR_VAR_REF
 xchain159_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 16208], rax
 mov qword ptr [rbp + 16216], rdx
 jmp xchain159_n43_α
 xchain159_n40_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+15984]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 15984], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 15992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 15984]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 15968], rax
 mov qword ptr [rbp + 15976], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n30_α
 xchain159_n40_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n41_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15872] -> [zr+15808]
 mov rax, qword ptr [rbp + 15872]
 mov qword ptr [rbp + 15808], rax
 mov rax, qword ptr [rbp + 15880]
 mov qword ptr [rbp + 15816], rax
# marshal arg1 = producer-box slot [zr+15904] -> [zr+15824]
 mov rax, qword ptr [rbp + 15904]
 mov qword ptr [rbp + 15824], rax
 mov rax, qword ptr [rbp + 15912]
 mov qword ptr [rbp + 15832], rax
# marshal arg2 = producer-box slot [zr+15936] -> [zr+15840]
 mov rax, qword ptr [rbp + 15936]
 mov qword ptr [rbp + 15840], rax
 mov rax, qword ptr [rbp + 15944]
 mov qword ptr [rbp + 15848], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 15808]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 15792], rax
 mov qword ptr [rbp + 15800], rdx
 cmp eax, 99
 je xchain159_n45_α
 jmp xchain159_n44_α
 xchain159_n41_β:
 jmp xchain159_n45_α
 xchain159_n42_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16688] -> [zr+16640]
 mov rax, qword ptr [rbp + 16688]
 mov qword ptr [rbp + 16640], rax
 mov rax, qword ptr [rbp + 16696]
 mov qword ptr [rbp + 16648], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 16640]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 16624], rax
 mov qword ptr [rbp + 16632], rdx
 cmp eax, 99
 je xchain159_n25_α
 jmp xchain159_n46_α
 xchain159_n42_β:
 jmp xchain159_n25_α
# IR_LIT_INTEGER
 xchain159_n43_α:
 mov qword ptr [rbp + 16240], 6
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 16248], rax
 jmp xchain159_n47_α
.Lx216_0:
 .quad 2
# IR_VAR_REF
 xchain159_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 15728], rax
 mov qword ptr [rbp + 15736], rdx
 jmp xchain159_n48_α
# IR_VAR_REF
 xchain159_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 15264], rax
 mov qword ptr [rbp + 15272], rdx
 jmp xchain159_n49_α
# IR_SUSPEND yield+resume
 xchain159_n46_α:
 lea rax, [rip + xchain159_n46_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n46_β:
 jmp xchain159_n25_α
 xchain159_n47_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16208] -> [zr+16160]
 mov rax, qword ptr [rbp + 16208]
 mov qword ptr [rbp + 16160], rax
 mov rax, qword ptr [rbp + 16216]
 mov qword ptr [rbp + 16168], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 16160]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 16144], rax
 mov qword ptr [rbp + 16152], rdx
 cmp eax, 99
 je xchain159_n40_α
 jmp xchain159_n50_α
 xchain159_n47_β:
 jmp xchain159_n40_α
# IR_LIT_INTEGER
 xchain159_n48_α:
 mov qword ptr [rbp + 15760], 6
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [rbp + 15768], rax
 jmp xchain159_n51_α
.Lx224_0:
 .quad 4
# IR_LIT_INTEGER
 xchain159_n49_α:
 mov qword ptr [rbp + 15296], 6
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [rbp + 15304], rax
 jmp xchain159_n52_α
.Lx225_0:
 .quad 1
# IR_VAR_REF
 xchain159_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 16080], rax
 mov qword ptr [rbp + 16088], rdx
 jmp xchain159_n53_α
 xchain159_n51_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15728] -> [zr+15680]
 mov rax, qword ptr [rbp + 15728]
 mov qword ptr [rbp + 15680], rax
 mov rax, qword ptr [rbp + 15736]
 mov qword ptr [rbp + 15688], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 15680]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 15664], rax
 mov qword ptr [rbp + 15672], rdx
 cmp eax, 99
 je xchain159_n55_α
 jmp xchain159_n54_α
 xchain159_n51_β:
 jmp xchain159_n55_α
# IR_LIT_INTEGER
 xchain159_n52_α:
 mov qword ptr [rbp + 15328], 6
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 15336], rax
 jmp xchain159_n56_α
.Lx229_0:
 .quad 5
# IR_LIT_INTEGER
 xchain159_n53_α:
 mov qword ptr [rbp + 16112], 6
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 16120], rax
 jmp xchain159_n57_α
.Lx230_0:
 .quad 0
# IR_VAR_REF
 xchain159_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 15600], rax
 mov qword ptr [rbp + 15608], rdx
 jmp xchain159_n58_α
 xchain159_n55_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+15376]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 15376], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 15384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 15376]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 15360], rax
 mov qword ptr [rbp + 15368], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n45_α
 xchain159_n55_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n56_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15264] -> [zr+15200]
 mov rax, qword ptr [rbp + 15264]
 mov qword ptr [rbp + 15200], rax
 mov rax, qword ptr [rbp + 15272]
 mov qword ptr [rbp + 15208], rax
# marshal arg1 = producer-box slot [zr+15296] -> [zr+15216]
 mov rax, qword ptr [rbp + 15296]
 mov qword ptr [rbp + 15216], rax
 mov rax, qword ptr [rbp + 15304]
 mov qword ptr [rbp + 15224], rax
# marshal arg2 = producer-box slot [zr+15328] -> [zr+15232]
 mov rax, qword ptr [rbp + 15328]
 mov qword ptr [rbp + 15232], rax
 mov rax, qword ptr [rbp + 15336]
 mov qword ptr [rbp + 15240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 15200]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 15184], rax
 mov qword ptr [rbp + 15192], rdx
 cmp eax, 99
 je xchain159_n60_α
 jmp xchain159_n59_α
 xchain159_n56_β:
 jmp xchain159_n60_α
 xchain159_n57_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+16080] -> [zr+16032]
 mov rax, qword ptr [rbp + 16080]
 mov qword ptr [rbp + 16032], rax
 mov rax, qword ptr [rbp + 16088]
 mov qword ptr [rbp + 16040], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 16032]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 16016], rax
 mov qword ptr [rbp + 16024], rdx
 cmp eax, 99
 je xchain159_n40_α
 jmp xchain159_n61_α
 xchain159_n57_β:
 jmp xchain159_n40_α
# IR_LIT_INTEGER
 xchain159_n58_α:
 mov qword ptr [rbp + 15632], 6
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 15640], rax
 jmp xchain159_n62_α
.Lx236_0:
 .quad 5
# IR_VAR_REF
 xchain159_n59_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 15120], rax
 mov qword ptr [rbp + 15128], rdx
 jmp xchain159_n63_α
# IR_VAR_REF
 xchain159_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 14656], rax
 mov qword ptr [rbp + 14664], rdx
 jmp xchain159_n64_α
# IR_SUSPEND yield+resume
 xchain159_n61_α:
 lea rax, [rip + xchain159_n61_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n61_β:
 jmp xchain159_n40_α
 xchain159_n62_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15600] -> [zr+15552]
 mov rax, qword ptr [rbp + 15600]
 mov qword ptr [rbp + 15552], rax
 mov rax, qword ptr [rbp + 15608]
 mov qword ptr [rbp + 15560], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 15552]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 15536], rax
 mov qword ptr [rbp + 15544], rdx
 cmp eax, 99
 je xchain159_n55_α
 jmp xchain159_n65_α
 xchain159_n62_β:
 jmp xchain159_n55_α
# IR_LIT_INTEGER
 xchain159_n63_α:
 mov qword ptr [rbp + 15152], 6
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 15160], rax
 jmp xchain159_n66_α
.Lx244_0:
 .quad 5
# IR_LIT_INTEGER
 xchain159_n64_α:
 mov qword ptr [rbp + 14688], 6
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 14696], rax
 jmp xchain159_n67_α
.Lx245_0:
 .quad 1
# IR_VAR_REF
 xchain159_n65_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 15472], rax
 mov qword ptr [rbp + 15480], rdx
 jmp xchain159_n68_α
 xchain159_n66_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15120] -> [zr+15072]
 mov rax, qword ptr [rbp + 15120]
 mov qword ptr [rbp + 15072], rax
 mov rax, qword ptr [rbp + 15128]
 mov qword ptr [rbp + 15080], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 15072]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 15056], rax
 mov qword ptr [rbp + 15064], rdx
 cmp eax, 99
 je xchain159_n70_α
 jmp xchain159_n69_α
 xchain159_n66_β:
 jmp xchain159_n70_α
# IR_LIT_INTEGER
 xchain159_n67_α:
 mov qword ptr [rbp + 14720], 6
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [rbp + 14728], rax
 jmp xchain159_n71_α
.Lx249_0:
 .quad 6
# IR_LIT_INTEGER
 xchain159_n68_α:
 mov qword ptr [rbp + 15504], 6
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 15512], rax
 jmp xchain159_n72_α
.Lx250_0:
 .quad 0
# IR_VAR_REF
 xchain159_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 14992], rax
 mov qword ptr [rbp + 15000], rdx
 jmp xchain159_n73_α
 xchain159_n70_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+14768]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 14768], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 14776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 14768]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 14752], rax
 mov qword ptr [rbp + 14760], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n60_α
 xchain159_n70_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n71_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14656] -> [zr+14592]
 mov rax, qword ptr [rbp + 14656]
 mov qword ptr [rbp + 14592], rax
 mov rax, qword ptr [rbp + 14664]
 mov qword ptr [rbp + 14600], rax
# marshal arg1 = producer-box slot [zr+14688] -> [zr+14608]
 mov rax, qword ptr [rbp + 14688]
 mov qword ptr [rbp + 14608], rax
 mov rax, qword ptr [rbp + 14696]
 mov qword ptr [rbp + 14616], rax
# marshal arg2 = producer-box slot [zr+14720] -> [zr+14624]
 mov rax, qword ptr [rbp + 14720]
 mov qword ptr [rbp + 14624], rax
 mov rax, qword ptr [rbp + 14728]
 mov qword ptr [rbp + 14632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 14592]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 14576], rax
 mov qword ptr [rbp + 14584], rdx
 cmp eax, 99
 je xchain159_n75_α
 jmp xchain159_n74_α
 xchain159_n71_β:
 jmp xchain159_n75_α
 xchain159_n72_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+15472] -> [zr+15424]
 mov rax, qword ptr [rbp + 15472]
 mov qword ptr [rbp + 15424], rax
 mov rax, qword ptr [rbp + 15480]
 mov qword ptr [rbp + 15432], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 15424]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 15408], rax
 mov qword ptr [rbp + 15416], rdx
 cmp eax, 99
 je xchain159_n55_α
 jmp xchain159_n76_α
 xchain159_n72_β:
 jmp xchain159_n55_α
# IR_LIT_INTEGER
 xchain159_n73_α:
 mov qword ptr [rbp + 15024], 6
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 15032], rax
 jmp xchain159_n77_α
.Lx256_0:
 .quad 0
# IR_VAR_REF
 xchain159_n74_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 14512], rax
 mov qword ptr [rbp + 14520], rdx
 jmp xchain159_n78_α
# IR_VAR_REF
 xchain159_n75_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 14048], rax
 mov qword ptr [rbp + 14056], rdx
 jmp xchain159_n79_α
# IR_SUSPEND yield+resume
 xchain159_n76_α:
 lea rax, [rip + xchain159_n76_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n76_β:
 jmp xchain159_n55_α
 xchain159_n77_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14992] -> [zr+14944]
 mov rax, qword ptr [rbp + 14992]
 mov qword ptr [rbp + 14944], rax
 mov rax, qword ptr [rbp + 15000]
 mov qword ptr [rbp + 14952], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14944]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14928], rax
 mov qword ptr [rbp + 14936], rdx
 cmp eax, 99
 je xchain159_n70_α
 jmp xchain159_n80_α
 xchain159_n77_β:
 jmp xchain159_n70_α
# IR_LIT_INTEGER
 xchain159_n78_α:
 mov qword ptr [rbp + 14544], 6
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 14552], rax
 jmp xchain159_n81_α
.Lx264_0:
 .quad 6
# IR_LIT_INTEGER
 xchain159_n79_α:
 mov qword ptr [rbp + 14080], 6
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [rbp + 14088], rax
 jmp xchain159_n82_α
.Lx265_0:
 .quad 1
# IR_VAR_REF
 xchain159_n80_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 14864], rax
 mov qword ptr [rbp + 14872], rdx
 jmp xchain159_n83_α
 xchain159_n81_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14512] -> [zr+14464]
 mov rax, qword ptr [rbp + 14512]
 mov qword ptr [rbp + 14464], rax
 mov rax, qword ptr [rbp + 14520]
 mov qword ptr [rbp + 14472], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14464]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14448], rax
 mov qword ptr [rbp + 14456], rdx
 cmp eax, 99
 je xchain159_n85_α
 jmp xchain159_n84_α
 xchain159_n81_β:
 jmp xchain159_n85_α
# IR_LIT_INTEGER
 xchain159_n82_α:
 mov qword ptr [rbp + 14112], 6
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 14120], rax
 jmp xchain159_n86_α
.Lx269_0:
 .quad 7
# IR_LIT_INTEGER
 xchain159_n83_α:
 mov qword ptr [rbp + 14896], 6
 mov rax, qword ptr [rip + .Lx270_0]
 mov qword ptr [rbp + 14904], rax
 jmp xchain159_n87_α
.Lx270_0:
 .quad 0
# IR_VAR_REF
 xchain159_n84_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 14384], rax
 mov qword ptr [rbp + 14392], rdx
 jmp xchain159_n88_α
 xchain159_n85_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+14160]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 14160], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 14168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 14160]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 14144], rax
 mov qword ptr [rbp + 14152], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n75_α
 xchain159_n85_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n86_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14048] -> [zr+13984]
 mov rax, qword ptr [rbp + 14048]
 mov qword ptr [rbp + 13984], rax
 mov rax, qword ptr [rbp + 14056]
 mov qword ptr [rbp + 13992], rax
# marshal arg1 = producer-box slot [zr+14080] -> [zr+14000]
 mov rax, qword ptr [rbp + 14080]
 mov qword ptr [rbp + 14000], rax
 mov rax, qword ptr [rbp + 14088]
 mov qword ptr [rbp + 14008], rax
# marshal arg2 = producer-box slot [zr+14112] -> [zr+14016]
 mov rax, qword ptr [rbp + 14112]
 mov qword ptr [rbp + 14016], rax
 mov rax, qword ptr [rbp + 14120]
 mov qword ptr [rbp + 14024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 13984]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 13968], rax
 mov qword ptr [rbp + 13976], rdx
 cmp eax, 99
 je xchain159_n90_α
 jmp xchain159_n89_α
 xchain159_n86_β:
 jmp xchain159_n90_α
 xchain159_n87_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14864] -> [zr+14816]
 mov rax, qword ptr [rbp + 14864]
 mov qword ptr [rbp + 14816], rax
 mov rax, qword ptr [rbp + 14872]
 mov qword ptr [rbp + 14824], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14816]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14800], rax
 mov qword ptr [rbp + 14808], rdx
 cmp eax, 99
 je xchain159_n70_α
 jmp xchain159_n91_α
 xchain159_n87_β:
 jmp xchain159_n70_α
# IR_LIT_INTEGER
 xchain159_n88_α:
 mov qword ptr [rbp + 14416], 6
 mov rax, qword ptr [rip + .Lx276_0]
 mov qword ptr [rbp + 14424], rax
 jmp xchain159_n92_α
.Lx276_0:
 .quad 3
# IR_VAR_REF
 xchain159_n89_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13904], rax
 mov qword ptr [rbp + 13912], rdx
 jmp xchain159_n93_α
# IR_VAR_REF
 xchain159_n90_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13440], rax
 mov qword ptr [rbp + 13448], rdx
 jmp xchain159_n94_α
# IR_SUSPEND yield+resume
 xchain159_n91_α:
 lea rax, [rip + xchain159_n91_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n91_β:
 jmp xchain159_n70_α
 xchain159_n92_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14384] -> [zr+14336]
 mov rax, qword ptr [rbp + 14384]
 mov qword ptr [rbp + 14336], rax
 mov rax, qword ptr [rbp + 14392]
 mov qword ptr [rbp + 14344], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14336]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14320], rax
 mov qword ptr [rbp + 14328], rdx
 cmp eax, 99
 je xchain159_n85_α
 jmp xchain159_n95_α
 xchain159_n92_β:
 jmp xchain159_n85_α
# IR_LIT_INTEGER
 xchain159_n93_α:
 mov qword ptr [rbp + 13936], 6
 mov rax, qword ptr [rip + .Lx284_0]
 mov qword ptr [rbp + 13944], rax
 jmp xchain159_n96_α
.Lx284_0:
 .quad 7
# IR_LIT_INTEGER
 xchain159_n94_α:
 mov qword ptr [rbp + 13472], 6
 mov rax, qword ptr [rip + .Lx285_0]
 mov qword ptr [rbp + 13480], rax
 jmp xchain159_n97_α
.Lx285_0:
 .quad 1
# IR_VAR_REF
 xchain159_n95_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 14256], rax
 mov qword ptr [rbp + 14264], rdx
 jmp xchain159_n98_α
 xchain159_n96_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13904] -> [zr+13856]
 mov rax, qword ptr [rbp + 13904]
 mov qword ptr [rbp + 13856], rax
 mov rax, qword ptr [rbp + 13912]
 mov qword ptr [rbp + 13864], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13856]
 movabs rsi, 7
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13840], rax
 mov qword ptr [rbp + 13848], rdx
 cmp eax, 99
 je xchain159_n100_α
 jmp xchain159_n99_α
 xchain159_n96_β:
 jmp xchain159_n100_α
# IR_LIT_INTEGER
 xchain159_n97_α:
 mov qword ptr [rbp + 13504], 6
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [rbp + 13512], rax
 jmp xchain159_n101_α
.Lx289_0:
 .quad 8
# IR_LIT_INTEGER
 xchain159_n98_α:
 mov qword ptr [rbp + 14288], 6
 mov rax, qword ptr [rip + .Lx290_0]
 mov qword ptr [rbp + 14296], rax
 jmp xchain159_n102_α
.Lx290_0:
 .quad 0
# IR_VAR_REF
 xchain159_n99_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 13776], rax
 mov qword ptr [rbp + 13784], rdx
 jmp xchain159_n103_α
 xchain159_n100_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+13552]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 13552], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 13560], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 13552]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 13536], rax
 mov qword ptr [rbp + 13544], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n90_α
 xchain159_n100_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n101_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13440] -> [zr+13376]
 mov rax, qword ptr [rbp + 13440]
 mov qword ptr [rbp + 13376], rax
 mov rax, qword ptr [rbp + 13448]
 mov qword ptr [rbp + 13384], rax
# marshal arg1 = producer-box slot [zr+13472] -> [zr+13392]
 mov rax, qword ptr [rbp + 13472]
 mov qword ptr [rbp + 13392], rax
 mov rax, qword ptr [rbp + 13480]
 mov qword ptr [rbp + 13400], rax
# marshal arg2 = producer-box slot [zr+13504] -> [zr+13408]
 mov rax, qword ptr [rbp + 13504]
 mov qword ptr [rbp + 13408], rax
 mov rax, qword ptr [rbp + 13512]
 mov qword ptr [rbp + 13416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 13376]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 13360], rax
 mov qword ptr [rbp + 13368], rdx
 cmp eax, 99
 je xchain159_n105_α
 jmp xchain159_n104_α
 xchain159_n101_β:
 jmp xchain159_n105_α
 xchain159_n102_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+14256] -> [zr+14208]
 mov rax, qword ptr [rbp + 14256]
 mov qword ptr [rbp + 14208], rax
 mov rax, qword ptr [rbp + 14264]
 mov qword ptr [rbp + 14216], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 14208]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 14192], rax
 mov qword ptr [rbp + 14200], rdx
 cmp eax, 99
 je xchain159_n85_α
 jmp xchain159_n106_α
 xchain159_n102_β:
 jmp xchain159_n85_α
# IR_LIT_INTEGER
 xchain159_n103_α:
 mov qword ptr [rbp + 13808], 6
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 13816], rax
 jmp xchain159_n107_α
.Lx296_0:
 .quad 5
# IR_VAR_REF
 xchain159_n104_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 13296], rax
 mov qword ptr [rbp + 13304], rdx
 jmp xchain159_n108_α
# IR_VAR_REF
 xchain159_n105_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 12832], rax
 mov qword ptr [rbp + 12840], rdx
 jmp xchain159_n109_α
# IR_SUSPEND yield+resume
 xchain159_n106_α:
 lea rax, [rip + xchain159_n106_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n106_β:
 jmp xchain159_n85_α
 xchain159_n107_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13776] -> [zr+13728]
 mov rax, qword ptr [rbp + 13776]
 mov qword ptr [rbp + 13728], rax
 mov rax, qword ptr [rbp + 13784]
 mov qword ptr [rbp + 13736], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13728]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13712], rax
 mov qword ptr [rbp + 13720], rdx
 cmp eax, 99
 je xchain159_n100_α
 jmp xchain159_n110_α
 xchain159_n107_β:
 jmp xchain159_n100_α
# IR_LIT_INTEGER
 xchain159_n108_α:
 mov qword ptr [rbp + 13328], 6
 mov rax, qword ptr [rip + .Lx304_0]
 mov qword ptr [rbp + 13336], rax
 jmp xchain159_n111_α
.Lx304_0:
 .quad 8
# IR_LIT_INTEGER
 xchain159_n109_α:
 mov qword ptr [rbp + 12864], 6
 mov rax, qword ptr [rip + .Lx305_0]
 mov qword ptr [rbp + 12872], rax
 jmp xchain159_n112_α
.Lx305_0:
 .quad 1
# IR_VAR_REF
 xchain159_n110_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 13648], rax
 mov qword ptr [rbp + 13656], rdx
 jmp xchain159_n113_α
 xchain159_n111_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13296] -> [zr+13248]
 mov rax, qword ptr [rbp + 13296]
 mov qword ptr [rbp + 13248], rax
 mov rax, qword ptr [rbp + 13304]
 mov qword ptr [rbp + 13256], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13248]
 movabs rsi, 8
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13232], rax
 mov qword ptr [rbp + 13240], rdx
 cmp eax, 99
 je xchain159_n115_α
 jmp xchain159_n114_α
 xchain159_n111_β:
 jmp xchain159_n115_α
# IR_LIT_INTEGER
 xchain159_n112_α:
 mov qword ptr [rbp + 12896], 6
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [rbp + 12904], rax
 jmp xchain159_n116_α
.Lx309_0:
 .quad 9
# IR_LIT_INTEGER
 xchain159_n113_α:
 mov qword ptr [rbp + 13680], 6
 mov rax, qword ptr [rip + .Lx310_0]
 mov qword ptr [rbp + 13688], rax
 jmp xchain159_n117_α
.Lx310_0:
 .quad 0
# IR_VAR_REF
 xchain159_n114_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 13168], rax
 mov qword ptr [rbp + 13176], rdx
 jmp xchain159_n118_α
 xchain159_n115_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+12944]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 12944], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 12952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 12944]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 12928], rax
 mov qword ptr [rbp + 12936], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n105_α
 xchain159_n115_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n116_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12832] -> [zr+12768]
 mov rax, qword ptr [rbp + 12832]
 mov qword ptr [rbp + 12768], rax
 mov rax, qword ptr [rbp + 12840]
 mov qword ptr [rbp + 12776], rax
# marshal arg1 = producer-box slot [zr+12864] -> [zr+12784]
 mov rax, qword ptr [rbp + 12864]
 mov qword ptr [rbp + 12784], rax
 mov rax, qword ptr [rbp + 12872]
 mov qword ptr [rbp + 12792], rax
# marshal arg2 = producer-box slot [zr+12896] -> [zr+12800]
 mov rax, qword ptr [rbp + 12896]
 mov qword ptr [rbp + 12800], rax
 mov rax, qword ptr [rbp + 12904]
 mov qword ptr [rbp + 12808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 12768]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 12752], rax
 mov qword ptr [rbp + 12760], rdx
 cmp eax, 99
 je xchain159_n120_α
 jmp xchain159_n119_α
 xchain159_n116_β:
 jmp xchain159_n120_α
 xchain159_n117_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13648] -> [zr+13600]
 mov rax, qword ptr [rbp + 13648]
 mov qword ptr [rbp + 13600], rax
 mov rax, qword ptr [rbp + 13656]
 mov qword ptr [rbp + 13608], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13600]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13584], rax
 mov qword ptr [rbp + 13592], rdx
 cmp eax, 99
 je xchain159_n100_α
 jmp xchain159_n121_α
 xchain159_n117_β:
 jmp xchain159_n100_α
# IR_LIT_INTEGER
 xchain159_n118_α:
 mov qword ptr [rbp + 13200], 6
 mov rax, qword ptr [rip + .Lx316_0]
 mov qword ptr [rbp + 13208], rax
 jmp xchain159_n122_α
.Lx316_0:
 .quad 1
# IR_VAR_REF
 xchain159_n119_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 12688], rax
 mov qword ptr [rbp + 12696], rdx
 jmp xchain159_n123_α
# IR_VAR_REF
 xchain159_n120_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 12224], rax
 mov qword ptr [rbp + 12232], rdx
 jmp xchain159_n124_α
# IR_SUSPEND yield+resume
 xchain159_n121_α:
 lea rax, [rip + xchain159_n121_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n121_β:
 jmp xchain159_n100_α
 xchain159_n122_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13168] -> [zr+13120]
 mov rax, qword ptr [rbp + 13168]
 mov qword ptr [rbp + 13120], rax
 mov rax, qword ptr [rbp + 13176]
 mov qword ptr [rbp + 13128], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 13120]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 13104], rax
 mov qword ptr [rbp + 13112], rdx
 cmp eax, 99
 je xchain159_n115_α
 jmp xchain159_n125_α
 xchain159_n122_β:
 jmp xchain159_n115_α
# IR_LIT_INTEGER
 xchain159_n123_α:
 mov qword ptr [rbp + 12720], 6
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [rbp + 12728], rax
 jmp xchain159_n126_α
.Lx324_0:
 .quad 9
# IR_LIT_INTEGER
 xchain159_n124_α:
 mov qword ptr [rbp + 12256], 6
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [rbp + 12264], rax
 jmp xchain159_n127_α
.Lx325_0:
 .quad 1
# IR_VAR_REF
 xchain159_n125_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 13040], rax
 mov qword ptr [rbp + 13048], rdx
 jmp xchain159_n128_α
 xchain159_n126_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12688] -> [zr+12640]
 mov rax, qword ptr [rbp + 12688]
 mov qword ptr [rbp + 12640], rax
 mov rax, qword ptr [rbp + 12696]
 mov qword ptr [rbp + 12648], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12640]
 movabs rsi, 9
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12624], rax
 mov qword ptr [rbp + 12632], rdx
 cmp eax, 99
 je xchain159_n130_α
 jmp xchain159_n129_α
 xchain159_n126_β:
 jmp xchain159_n130_α
# IR_LIT_INTEGER
 xchain159_n127_α:
 mov qword ptr [rbp + 12288], 6
 mov rax, qword ptr [rip + .Lx329_0]
 mov qword ptr [rbp + 12296], rax
 jmp xchain159_n131_α
.Lx329_0:
 .quad 10
# IR_LIT_INTEGER
 xchain159_n128_α:
 mov qword ptr [rbp + 13072], 6
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [rbp + 13080], rax
 jmp xchain159_n132_α
.Lx330_0:
 .quad 0
# IR_VAR_REF
 xchain159_n129_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 12560], rax
 mov qword ptr [rbp + 12568], rdx
 jmp xchain159_n133_α
 xchain159_n130_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+12336]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 12336], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 12344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 12336]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 12320], rax
 mov qword ptr [rbp + 12328], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n120_α
 xchain159_n130_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n131_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12224] -> [zr+12160]
 mov rax, qword ptr [rbp + 12224]
 mov qword ptr [rbp + 12160], rax
 mov rax, qword ptr [rbp + 12232]
 mov qword ptr [rbp + 12168], rax
# marshal arg1 = producer-box slot [zr+12256] -> [zr+12176]
 mov rax, qword ptr [rbp + 12256]
 mov qword ptr [rbp + 12176], rax
 mov rax, qword ptr [rbp + 12264]
 mov qword ptr [rbp + 12184], rax
# marshal arg2 = producer-box slot [zr+12288] -> [zr+12192]
 mov rax, qword ptr [rbp + 12288]
 mov qword ptr [rbp + 12192], rax
 mov rax, qword ptr [rbp + 12296]
 mov qword ptr [rbp + 12200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 12160]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 12144], rax
 mov qword ptr [rbp + 12152], rdx
 cmp eax, 99
 je xchain159_n135_α
 jmp xchain159_n134_α
 xchain159_n131_β:
 jmp xchain159_n135_α
 xchain159_n132_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+13040] -> [zr+12992]
 mov rax, qword ptr [rbp + 13040]
 mov qword ptr [rbp + 12992], rax
 mov rax, qword ptr [rbp + 13048]
 mov qword ptr [rbp + 13000], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12992]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12976], rax
 mov qword ptr [rbp + 12984], rdx
 cmp eax, 99
 je xchain159_n115_α
 jmp xchain159_n136_α
 xchain159_n132_β:
 jmp xchain159_n115_α
# IR_LIT_INTEGER
 xchain159_n133_α:
 mov qword ptr [rbp + 12592], 6
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [rbp + 12600], rax
 jmp xchain159_n137_α
.Lx336_0:
 .quad 4
# IR_VAR_REF
 xchain159_n134_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 12080], rax
 mov qword ptr [rbp + 12088], rdx
 jmp xchain159_n138_α
# IR_VAR_REF
 xchain159_n135_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11616], rax
 mov qword ptr [rbp + 11624], rdx
 jmp xchain159_n139_α
# IR_SUSPEND yield+resume
 xchain159_n136_α:
 lea rax, [rip + xchain159_n136_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n136_β:
 jmp xchain159_n115_α
 xchain159_n137_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12560] -> [zr+12512]
 mov rax, qword ptr [rbp + 12560]
 mov qword ptr [rbp + 12512], rax
 mov rax, qword ptr [rbp + 12568]
 mov qword ptr [rbp + 12520], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12512]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12496], rax
 mov qword ptr [rbp + 12504], rdx
 cmp eax, 99
 je xchain159_n130_α
 jmp xchain159_n140_α
 xchain159_n137_β:
 jmp xchain159_n130_α
# IR_LIT_INTEGER
 xchain159_n138_α:
 mov qword ptr [rbp + 12112], 6
 mov rax, qword ptr [rip + .Lx344_0]
 mov qword ptr [rbp + 12120], rax
 jmp xchain159_n141_α
.Lx344_0:
 .quad 10
# IR_LIT_INTEGER
 xchain159_n139_α:
 mov qword ptr [rbp + 11648], 6
 mov rax, qword ptr [rip + .Lx345_0]
 mov qword ptr [rbp + 11656], rax
 jmp xchain159_n142_α
.Lx345_0:
 .quad 1
# IR_VAR_REF
 xchain159_n140_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 12432], rax
 mov qword ptr [rbp + 12440], rdx
 jmp xchain159_n143_α
 xchain159_n141_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12080] -> [zr+12032]
 mov rax, qword ptr [rbp + 12080]
 mov qword ptr [rbp + 12032], rax
 mov rax, qword ptr [rbp + 12088]
 mov qword ptr [rbp + 12040], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12032]
 movabs rsi, 10
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12016], rax
 mov qword ptr [rbp + 12024], rdx
 cmp eax, 99
 je xchain159_n145_α
 jmp xchain159_n144_α
 xchain159_n141_β:
 jmp xchain159_n145_α
# IR_LIT_INTEGER
 xchain159_n142_α:
 mov qword ptr [rbp + 11680], 6
 mov rax, qword ptr [rip + .Lx349_0]
 mov qword ptr [rbp + 11688], rax
 jmp xchain159_n146_α
.Lx349_0:
 .quad 11
# IR_LIT_INTEGER
 xchain159_n143_α:
 mov qword ptr [rbp + 12464], 6
 mov rax, qword ptr [rip + .Lx350_0]
 mov qword ptr [rbp + 12472], rax
 jmp xchain159_n147_α
.Lx350_0:
 .quad 0
# IR_VAR_REF
 xchain159_n144_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 11952], rax
 mov qword ptr [rbp + 11960], rdx
 jmp xchain159_n148_α
 xchain159_n145_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+11728]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 11728], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 11736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 11728]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 11712], rax
 mov qword ptr [rbp + 11720], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n135_α
 xchain159_n145_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n146_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11616] -> [zr+11552]
 mov rax, qword ptr [rbp + 11616]
 mov qword ptr [rbp + 11552], rax
 mov rax, qword ptr [rbp + 11624]
 mov qword ptr [rbp + 11560], rax
# marshal arg1 = producer-box slot [zr+11648] -> [zr+11568]
 mov rax, qword ptr [rbp + 11648]
 mov qword ptr [rbp + 11568], rax
 mov rax, qword ptr [rbp + 11656]
 mov qword ptr [rbp + 11576], rax
# marshal arg2 = producer-box slot [zr+11680] -> [zr+11584]
 mov rax, qword ptr [rbp + 11680]
 mov qword ptr [rbp + 11584], rax
 mov rax, qword ptr [rbp + 11688]
 mov qword ptr [rbp + 11592], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 11552]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 11536], rax
 mov qword ptr [rbp + 11544], rdx
 cmp eax, 99
 je xchain159_n150_α
 jmp xchain159_n149_α
 xchain159_n146_β:
 jmp xchain159_n150_α
 xchain159_n147_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+12432] -> [zr+12384]
 mov rax, qword ptr [rbp + 12432]
 mov qword ptr [rbp + 12384], rax
 mov rax, qword ptr [rbp + 12440]
 mov qword ptr [rbp + 12392], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 12384]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 12368], rax
 mov qword ptr [rbp + 12376], rdx
 cmp eax, 99
 je xchain159_n130_α
 jmp xchain159_n151_α
 xchain159_n147_β:
 jmp xchain159_n130_α
# IR_LIT_INTEGER
 xchain159_n148_α:
 mov qword ptr [rbp + 11984], 6
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [rbp + 11992], rax
 jmp xchain159_n152_α
.Lx356_0:
 .quad 6
# IR_VAR_REF
 xchain159_n149_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11472], rax
 mov qword ptr [rbp + 11480], rdx
 jmp xchain159_n153_α
# IR_VAR_REF
 xchain159_n150_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 11008], rax
 mov qword ptr [rbp + 11016], rdx
 jmp xchain159_n154_α
# IR_SUSPEND yield+resume
 xchain159_n151_α:
 lea rax, [rip + xchain159_n151_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n151_β:
 jmp xchain159_n130_α
 xchain159_n152_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11952] -> [zr+11904]
 mov rax, qword ptr [rbp + 11952]
 mov qword ptr [rbp + 11904], rax
 mov rax, qword ptr [rbp + 11960]
 mov qword ptr [rbp + 11912], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11904]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11888], rax
 mov qword ptr [rbp + 11896], rdx
 cmp eax, 99
 je xchain159_n145_α
 jmp xchain159_n155_α
 xchain159_n152_β:
 jmp xchain159_n145_α
# IR_LIT_INTEGER
 xchain159_n153_α:
 mov qword ptr [rbp + 11504], 6
 mov rax, qword ptr [rip + .Lx364_0]
 mov qword ptr [rbp + 11512], rax
 jmp xchain159_n156_α
.Lx364_0:
 .quad 11
# IR_LIT_INTEGER
 xchain159_n154_α:
 mov qword ptr [rbp + 11040], 6
 mov rax, qword ptr [rip + .Lx365_0]
 mov qword ptr [rbp + 11048], rax
 jmp xchain159_n157_α
.Lx365_0:
 .quad 1
# IR_VAR_REF
 xchain159_n155_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 11824], rax
 mov qword ptr [rbp + 11832], rdx
 jmp xchain159_n158_α
 xchain159_n156_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11472] -> [zr+11424]
 mov rax, qword ptr [rbp + 11472]
 mov qword ptr [rbp + 11424], rax
 mov rax, qword ptr [rbp + 11480]
 mov qword ptr [rbp + 11432], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11424]
 movabs rsi, 11
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11408], rax
 mov qword ptr [rbp + 11416], rdx
 cmp eax, 99
 je xchain159_n160_α
 jmp xchain159_n159_α
 xchain159_n156_β:
 jmp xchain159_n160_α
# IR_LIT_INTEGER
 xchain159_n157_α:
 mov qword ptr [rbp + 11072], 6
 mov rax, qword ptr [rip + .Lx369_0]
 mov qword ptr [rbp + 11080], rax
 jmp xchain159_n161_α
.Lx369_0:
 .quad 12
# IR_LIT_INTEGER
 xchain159_n158_α:
 mov qword ptr [rbp + 11856], 6
 mov rax, qword ptr [rip + .Lx370_0]
 mov qword ptr [rbp + 11864], rax
 jmp xchain159_n162_α
.Lx370_0:
 .quad 0
# IR_VAR_REF
 xchain159_n159_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 11344], rax
 mov qword ptr [rbp + 11352], rdx
 jmp xchain159_n163_α
 xchain159_n160_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+11120]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 11120], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 11128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 11120]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 11104], rax
 mov qword ptr [rbp + 11112], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n150_α
 xchain159_n160_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n161_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11008] -> [zr+10944]
 mov rax, qword ptr [rbp + 11008]
 mov qword ptr [rbp + 10944], rax
 mov rax, qword ptr [rbp + 11016]
 mov qword ptr [rbp + 10952], rax
# marshal arg1 = producer-box slot [zr+11040] -> [zr+10960]
 mov rax, qword ptr [rbp + 11040]
 mov qword ptr [rbp + 10960], rax
 mov rax, qword ptr [rbp + 11048]
 mov qword ptr [rbp + 10968], rax
# marshal arg2 = producer-box slot [zr+11072] -> [zr+10976]
 mov rax, qword ptr [rbp + 11072]
 mov qword ptr [rbp + 10976], rax
 mov rax, qword ptr [rbp + 11080]
 mov qword ptr [rbp + 10984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 10944]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 10928], rax
 mov qword ptr [rbp + 10936], rdx
 cmp eax, 99
 je xchain159_n165_α
 jmp xchain159_n164_α
 xchain159_n161_β:
 jmp xchain159_n165_α
 xchain159_n162_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11824] -> [zr+11776]
 mov rax, qword ptr [rbp + 11824]
 mov qword ptr [rbp + 11776], rax
 mov rax, qword ptr [rbp + 11832]
 mov qword ptr [rbp + 11784], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11776]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11760], rax
 mov qword ptr [rbp + 11768], rdx
 cmp eax, 99
 je xchain159_n145_α
 jmp xchain159_n166_α
 xchain159_n162_β:
 jmp xchain159_n145_α
# IR_LIT_INTEGER
 xchain159_n163_α:
 mov qword ptr [rbp + 11376], 6
 mov rax, qword ptr [rip + .Lx376_0]
 mov qword ptr [rbp + 11384], rax
 jmp xchain159_n167_α
.Lx376_0:
 .quad 2
# IR_VAR_REF
 xchain159_n164_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10864], rax
 mov qword ptr [rbp + 10872], rdx
 jmp xchain159_n168_α
# IR_VAR_REF
 xchain159_n165_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10432], rax
 mov qword ptr [rbp + 10440], rdx
 jmp xchain159_n169_α
# IR_SUSPEND yield+resume
 xchain159_n166_α:
 lea rax, [rip + xchain159_n166_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n166_β:
 jmp xchain159_n145_α
 xchain159_n167_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11344] -> [zr+11296]
 mov rax, qword ptr [rbp + 11344]
 mov qword ptr [rbp + 11296], rax
 mov rax, qword ptr [rbp + 11352]
 mov qword ptr [rbp + 11304], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11296]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11280], rax
 mov qword ptr [rbp + 11288], rdx
 cmp eax, 99
 je xchain159_n160_α
 jmp xchain159_n170_α
 xchain159_n167_β:
 jmp xchain159_n160_α
# IR_LIT_INTEGER
 xchain159_n168_α:
 mov qword ptr [rbp + 10896], 6
 mov rax, qword ptr [rip + .Lx384_0]
 mov qword ptr [rbp + 10904], rax
 jmp xchain159_n171_α
.Lx384_0:
 .quad 12
# IR_LIT_STRING
 xchain159_n169_α:
 mov qword ptr [rbp + 10464], 1
 mov rax, qword ptr [rip + .Lx385_0]
 mov qword ptr [rbp + 10472], rax
 jmp xchain159_n172_α
.Lx385_0:
 .quad .Lx385_0_s
.Lx385_0_s:
 .string "jan"
# IR_VAR_REF
 xchain159_n170_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 11216], rax
 mov qword ptr [rbp + 11224], rdx
 jmp xchain159_n173_α
 xchain159_n171_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10864] -> [zr+10816]
 mov rax, qword ptr [rbp + 10864]
 mov qword ptr [rbp + 10816], rax
 mov rax, qword ptr [rbp + 10872]
 mov qword ptr [rbp + 10824], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10816]
 movabs rsi, 12
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10800], rax
 mov qword ptr [rbp + 10808], rdx
 cmp eax, 99
 je xchain159_n175_α
 jmp xchain159_n174_α
 xchain159_n171_β:
 jmp xchain159_n175_α
 xchain159_n172_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10432] -> [zr+10384]
 mov rax, qword ptr [rbp + 10432]
 mov qword ptr [rbp + 10384], rax
 mov rax, qword ptr [rbp + 10440]
 mov qword ptr [rbp + 10392], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 10384]
 mov rsi, qword ptr [rip + .Lx389_2]
 jmp .Lx389_3
.Lx389_2:
 .quad .Lx389_2_s
.Lx389_2_s:
 .string "jan"
.Lx389_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 10368], rax
 mov qword ptr [rbp + 10376], rdx
 cmp eax, 99
 je xchain159_n177_α
 jmp xchain159_n176_α
 xchain159_n172_β:
 jmp xchain159_n177_α
# IR_LIT_INTEGER
 xchain159_n173_α:
 mov qword ptr [rbp + 11248], 6
 mov rax, qword ptr [rip + .Lx390_0]
 mov qword ptr [rbp + 11256], rax
 jmp xchain159_n178_α
.Lx390_0:
 .quad 0
# IR_VAR_REF
 xchain159_n174_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 10736], rax
 mov qword ptr [rbp + 10744], rdx
 jmp xchain159_n179_α
 xchain159_n175_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+10512]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 10512], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 10520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 10512]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 10496], rax
 mov qword ptr [rbp + 10504], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n165_α
 xchain159_n175_β:
 jmp proc_cal_key$2F3_ω
# IR_VAR_REF
 xchain159_n176_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 10304], rax
 mov qword ptr [rbp + 10312], rdx
 jmp xchain159_n180_α
 xchain159_n177_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+10080]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 10080], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 10088], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 10080]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 10064], rax
 mov qword ptr [rbp + 10072], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n181_α
 xchain159_n177_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n178_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+11216] -> [zr+11168]
 mov rax, qword ptr [rbp + 11216]
 mov qword ptr [rbp + 11168], rax
 mov rax, qword ptr [rbp + 11224]
 mov qword ptr [rbp + 11176], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 11168]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 11152], rax
 mov qword ptr [rbp + 11160], rdx
 cmp eax, 99
 je xchain159_n160_α
 jmp xchain159_n182_α
 xchain159_n178_β:
 jmp xchain159_n160_α
# IR_LIT_INTEGER
 xchain159_n179_α:
 mov qword ptr [rbp + 10768], 6
 mov rax, qword ptr [rip + .Lx398_0]
 mov qword ptr [rbp + 10776], rax
 jmp xchain159_n183_α
.Lx398_0:
 .quad 4
# IR_LIT_INTEGER
 xchain159_n180_α:
 mov qword ptr [rbp + 10336], 6
 mov rax, qword ptr [rip + .Lx399_0]
 mov qword ptr [rbp + 10344], rax
 jmp xchain159_n184_α
.Lx399_0:
 .quad 6
# IR_VAR_REF
 xchain159_n181_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 10000], rax
 mov qword ptr [rbp + 10008], rdx
 jmp xchain159_n185_α
# IR_SUSPEND yield+resume
 xchain159_n182_α:
 lea rax, [rip + xchain159_n182_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n182_β:
 jmp xchain159_n160_α
 xchain159_n183_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10736] -> [zr+10688]
 mov rax, qword ptr [rbp + 10736]
 mov qword ptr [rbp + 10688], rax
 mov rax, qword ptr [rbp + 10744]
 mov qword ptr [rbp + 10696], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10688]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10672], rax
 mov qword ptr [rbp + 10680], rdx
 cmp eax, 99
 je xchain159_n175_α
 jmp xchain159_n186_α
 xchain159_n183_β:
 jmp xchain159_n175_α
 xchain159_n184_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10304] -> [zr+10256]
 mov rax, qword ptr [rbp + 10304]
 mov qword ptr [rbp + 10256], rax
 mov rax, qword ptr [rbp + 10312]
 mov qword ptr [rbp + 10264], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10256]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10240], rax
 mov qword ptr [rbp + 10248], rdx
 cmp eax, 99
 je xchain159_n177_α
 jmp xchain159_n187_α
 xchain159_n184_β:
 jmp xchain159_n177_α
# IR_LIT_STRING
 xchain159_n185_α:
 mov qword ptr [rbp + 10032], 1
 mov rax, qword ptr [rip + .Lx406_0]
 mov qword ptr [rbp + 10040], rax
 jmp xchain159_n188_α
.Lx406_0:
 .quad .Lx406_0_s
.Lx406_0_s:
 .string "feb"
# IR_VAR_REF
 xchain159_n186_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 10608], rax
 mov qword ptr [rbp + 10616], rdx
 jmp xchain159_n189_α
# IR_VAR_REF
 xchain159_n187_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 10176], rax
 mov qword ptr [rbp + 10184], rdx
 jmp xchain159_n190_α
 xchain159_n188_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10000] -> [zr+9952]
 mov rax, qword ptr [rbp + 10000]
 mov qword ptr [rbp + 9952], rax
 mov rax, qword ptr [rbp + 10008]
 mov qword ptr [rbp + 9960], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 9952]
 mov rsi, qword ptr [rip + .Lx411_2]
 jmp .Lx411_3
.Lx411_2:
 .quad .Lx411_2_s
.Lx411_2_s:
 .string "feb"
.Lx411_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 9936], rax
 mov qword ptr [rbp + 9944], rdx
 cmp eax, 99
 je xchain159_n192_α
 jmp xchain159_n191_α
 xchain159_n188_β:
 jmp xchain159_n192_α
# IR_LIT_INTEGER
 xchain159_n189_α:
 mov qword ptr [rbp + 10640], 6
 mov rax, qword ptr [rip + .Lx412_0]
 mov qword ptr [rbp + 10648], rax
 jmp xchain159_n193_α
.Lx412_0:
 .quad 0
# IR_LIT_INTEGER
 xchain159_n190_α:
 mov qword ptr [rbp + 10208], 6
 mov rax, qword ptr [rip + .Lx413_0]
 mov qword ptr [rbp + 10216], rax
 jmp xchain159_n194_α
.Lx413_0:
 .quad 1
# IR_VAR_REF
 xchain159_n191_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9872], rax
 mov qword ptr [rbp + 9880], rdx
 jmp xchain159_n195_α
 xchain159_n192_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+9648]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 9648], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 9656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 9648]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 9632], rax
 mov qword ptr [rbp + 9640], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n196_α
 xchain159_n192_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n193_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10608] -> [zr+10560]
 mov rax, qword ptr [rbp + 10608]
 mov qword ptr [rbp + 10560], rax
 mov rax, qword ptr [rbp + 10616]
 mov qword ptr [rbp + 10568], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10560]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10544], rax
 mov qword ptr [rbp + 10552], rdx
 cmp eax, 99
 je xchain159_n175_α
 jmp xchain159_n197_α
 xchain159_n193_β:
 jmp xchain159_n175_α
 xchain159_n194_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+10176] -> [zr+10128]
 mov rax, qword ptr [rbp + 10176]
 mov qword ptr [rbp + 10128], rax
 mov rax, qword ptr [rbp + 10184]
 mov qword ptr [rbp + 10136], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 10128]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 10112], rax
 mov qword ptr [rbp + 10120], rdx
 cmp eax, 99
 je xchain159_n177_α
 jmp xchain159_n198_α
 xchain159_n194_β:
 jmp xchain159_n177_α
# IR_LIT_INTEGER
 xchain159_n195_α:
 mov qword ptr [rbp + 9904], 6
 mov rax, qword ptr [rip + .Lx419_0]
 mov qword ptr [rbp + 9912], rax
 jmp xchain159_n199_α
.Lx419_0:
 .quad 2
# IR_VAR_REF
 xchain159_n196_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9568], rax
 mov qword ptr [rbp + 9576], rdx
 jmp xchain159_n200_α
# IR_SUSPEND yield+resume
 xchain159_n197_α:
 lea rax, [rip + xchain159_n197_β]
 mov qword ptr [rbp + 17792], rax
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
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n198_β:
 jmp xchain159_n177_α
 xchain159_n199_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9872] -> [zr+9824]
 mov rax, qword ptr [rbp + 9872]
 mov qword ptr [rbp + 9824], rax
 mov rax, qword ptr [rbp + 9880]
 mov qword ptr [rbp + 9832], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 9824]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 9808], rax
 mov qword ptr [rbp + 9816], rdx
 cmp eax, 99
 je xchain159_n192_α
 jmp xchain159_n201_α
 xchain159_n199_β:
 jmp xchain159_n192_α
# IR_LIT_STRING
 xchain159_n200_α:
 mov qword ptr [rbp + 9600], 1
 mov rax, qword ptr [rip + .Lx427_0]
 mov qword ptr [rbp + 9608], rax
 jmp xchain159_n202_α
.Lx427_0:
 .quad .Lx427_0_s
.Lx427_0_s:
 .string "mar"
# IR_VAR_REF
 xchain159_n201_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 9744], rax
 mov qword ptr [rbp + 9752], rdx
 jmp xchain159_n203_α
 xchain159_n202_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9568] -> [zr+9520]
 mov rax, qword ptr [rbp + 9568]
 mov qword ptr [rbp + 9520], rax
 mov rax, qword ptr [rbp + 9576]
 mov qword ptr [rbp + 9528], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 9520]
 mov rsi, qword ptr [rip + .Lx430_2]
 jmp .Lx430_3
.Lx430_2:
 .quad .Lx430_2_s
.Lx430_2_s:
 .string "mar"
.Lx430_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 9504], rax
 mov qword ptr [rbp + 9512], rdx
 cmp eax, 99
 je xchain159_n205_α
 jmp xchain159_n204_α
 xchain159_n202_β:
 jmp xchain159_n205_α
# IR_LIT_INTEGER
 xchain159_n203_α:
 mov qword ptr [rbp + 9776], 6
 mov rax, qword ptr [rip + .Lx431_0]
 mov qword ptr [rbp + 9784], rax
 jmp xchain159_n206_α
.Lx431_0:
 .quad 1
# IR_VAR_REF
 xchain159_n204_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9440], rax
 mov qword ptr [rbp + 9448], rdx
 jmp xchain159_n207_α
 xchain159_n205_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+9216]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 9216], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 9224], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 9216]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 9200], rax
 mov qword ptr [rbp + 9208], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n208_α
 xchain159_n205_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n206_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9744] -> [zr+9696]
 mov rax, qword ptr [rbp + 9744]
 mov qword ptr [rbp + 9696], rax
 mov rax, qword ptr [rbp + 9752]
 mov qword ptr [rbp + 9704], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 9696]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 9680], rax
 mov qword ptr [rbp + 9688], rdx
 cmp eax, 99
 je xchain159_n192_α
 jmp xchain159_n209_α
 xchain159_n206_β:
 jmp xchain159_n192_α
# IR_LIT_INTEGER
 xchain159_n207_α:
 mov qword ptr [rbp + 9472], 6
 mov rax, qword ptr [rip + .Lx436_0]
 mov qword ptr [rbp + 9480], rax
 jmp xchain159_n210_α
.Lx436_0:
 .quad 2
# IR_VAR_REF
 xchain159_n208_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 9136], rax
 mov qword ptr [rbp + 9144], rdx
 jmp xchain159_n211_α
# IR_SUSPEND yield+resume
 xchain159_n209_α:
 lea rax, [rip + xchain159_n209_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n209_β:
 jmp xchain159_n192_α
 xchain159_n210_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9440] -> [zr+9392]
 mov rax, qword ptr [rbp + 9440]
 mov qword ptr [rbp + 9392], rax
 mov rax, qword ptr [rbp + 9448]
 mov qword ptr [rbp + 9400], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 9392]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 9376], rax
 mov qword ptr [rbp + 9384], rdx
 cmp eax, 99
 je xchain159_n205_α
 jmp xchain159_n212_α
 xchain159_n210_β:
 jmp xchain159_n205_α
# IR_LIT_STRING
 xchain159_n211_α:
 mov qword ptr [rbp + 9168], 1
 mov rax, qword ptr [rip + .Lx442_0]
 mov qword ptr [rbp + 9176], rax
 jmp xchain159_n213_α
.Lx442_0:
 .quad .Lx442_0_s
.Lx442_0_s:
 .string "apr"
# IR_VAR_REF
 xchain159_n212_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 9312], rax
 mov qword ptr [rbp + 9320], rdx
 jmp xchain159_n214_α
 xchain159_n213_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9136] -> [zr+9088]
 mov rax, qword ptr [rbp + 9136]
 mov qword ptr [rbp + 9088], rax
 mov rax, qword ptr [rbp + 9144]
 mov qword ptr [rbp + 9096], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 9088]
 mov rsi, qword ptr [rip + .Lx445_2]
 jmp .Lx445_3
.Lx445_2:
 .quad .Lx445_2_s
.Lx445_2_s:
 .string "apr"
.Lx445_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 9072], rax
 mov qword ptr [rbp + 9080], rdx
 cmp eax, 99
 je xchain159_n216_α
 jmp xchain159_n215_α
 xchain159_n213_β:
 jmp xchain159_n216_α
# IR_LIT_INTEGER
 xchain159_n214_α:
 mov qword ptr [rbp + 9344], 6
 mov rax, qword ptr [rip + .Lx446_0]
 mov qword ptr [rbp + 9352], rax
 jmp xchain159_n217_α
.Lx446_0:
 .quad 0
# IR_VAR_REF
 xchain159_n215_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 9008], rax
 mov qword ptr [rbp + 9016], rdx
 jmp xchain159_n218_α
 xchain159_n216_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+8784]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 8784], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8784]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8768], rax
 mov qword ptr [rbp + 8776], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n219_α
 xchain159_n216_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n217_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9312] -> [zr+9264]
 mov rax, qword ptr [rbp + 9312]
 mov qword ptr [rbp + 9264], rax
 mov rax, qword ptr [rbp + 9320]
 mov qword ptr [rbp + 9272], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 9264]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 9248], rax
 mov qword ptr [rbp + 9256], rdx
 cmp eax, 99
 je xchain159_n205_α
 jmp xchain159_n220_α
 xchain159_n217_β:
 jmp xchain159_n205_α
# IR_LIT_INTEGER
 xchain159_n218_α:
 mov qword ptr [rbp + 9040], 6
 mov rax, qword ptr [rip + .Lx451_0]
 mov qword ptr [rbp + 9048], rax
 jmp xchain159_n221_α
.Lx451_0:
 .quad 5
# IR_VAR_REF
 xchain159_n219_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8704], rax
 mov qword ptr [rbp + 8712], rdx
 jmp xchain159_n222_α
# IR_SUSPEND yield+resume
 xchain159_n220_α:
 lea rax, [rip + xchain159_n220_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n220_β:
 jmp xchain159_n205_α
 xchain159_n221_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+9008] -> [zr+8960]
 mov rax, qword ptr [rbp + 9008]
 mov qword ptr [rbp + 8960], rax
 mov rax, qword ptr [rbp + 9016]
 mov qword ptr [rbp + 8968], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 8960]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 8944], rax
 mov qword ptr [rbp + 8952], rdx
 cmp eax, 99
 je xchain159_n216_α
 jmp xchain159_n223_α
 xchain159_n221_β:
 jmp xchain159_n216_α
# IR_LIT_STRING
 xchain159_n222_α:
 mov qword ptr [rbp + 8736], 1
 mov rax, qword ptr [rip + .Lx457_0]
 mov qword ptr [rbp + 8744], rax
 jmp xchain159_n224_α
.Lx457_0:
 .quad .Lx457_0_s
.Lx457_0_s:
 .string "may"
# IR_VAR_REF
 xchain159_n223_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8880], rax
 mov qword ptr [rbp + 8888], rdx
 jmp xchain159_n225_α
 xchain159_n224_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8704] -> [zr+8656]
 mov rax, qword ptr [rbp + 8704]
 mov qword ptr [rbp + 8656], rax
 mov rax, qword ptr [rbp + 8712]
 mov qword ptr [rbp + 8664], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 8656]
 mov rsi, qword ptr [rip + .Lx460_2]
 jmp .Lx460_3
.Lx460_2:
 .quad .Lx460_2_s
.Lx460_2_s:
 .string "may"
.Lx460_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 8640], rax
 mov qword ptr [rbp + 8648], rdx
 cmp eax, 99
 je xchain159_n227_α
 jmp xchain159_n226_α
 xchain159_n224_β:
 jmp xchain159_n227_α
# IR_LIT_INTEGER
 xchain159_n225_α:
 mov qword ptr [rbp + 8912], 6
 mov rax, qword ptr [rip + .Lx461_0]
 mov qword ptr [rbp + 8920], rax
 jmp xchain159_n228_α
.Lx461_0:
 .quad 0
# IR_VAR_REF
 xchain159_n226_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8576], rax
 mov qword ptr [rbp + 8584], rdx
 jmp xchain159_n229_α
 xchain159_n227_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+8352]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 8352], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 8352]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 8336], rax
 mov qword ptr [rbp + 8344], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n230_α
 xchain159_n227_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n228_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8880] -> [zr+8832]
 mov rax, qword ptr [rbp + 8880]
 mov qword ptr [rbp + 8832], rax
 mov rax, qword ptr [rbp + 8888]
 mov qword ptr [rbp + 8840], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 8832]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 8816], rax
 mov qword ptr [rbp + 8824], rdx
 cmp eax, 99
 je xchain159_n216_α
 jmp xchain159_n231_α
 xchain159_n228_β:
 jmp xchain159_n216_α
# IR_LIT_INTEGER
 xchain159_n229_α:
 mov qword ptr [rbp + 8608], 6
 mov rax, qword ptr [rip + .Lx466_0]
 mov qword ptr [rbp + 8616], rax
 jmp xchain159_n232_α
.Lx466_0:
 .quad 0
# IR_VAR_REF
 xchain159_n230_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 8272], rax
 mov qword ptr [rbp + 8280], rdx
 jmp xchain159_n233_α
# IR_SUSPEND yield+resume
 xchain159_n231_α:
 lea rax, [rip + xchain159_n231_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n231_β:
 jmp xchain159_n216_α
 xchain159_n232_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8576] -> [zr+8528]
 mov rax, qword ptr [rbp + 8576]
 mov qword ptr [rbp + 8528], rax
 mov rax, qword ptr [rbp + 8584]
 mov qword ptr [rbp + 8536], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 8528]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 8512], rax
 mov qword ptr [rbp + 8520], rdx
 cmp eax, 99
 je xchain159_n227_α
 jmp xchain159_n234_α
 xchain159_n232_β:
 jmp xchain159_n227_α
# IR_LIT_STRING
 xchain159_n233_α:
 mov qword ptr [rbp + 8304], 1
 mov rax, qword ptr [rip + .Lx472_0]
 mov qword ptr [rbp + 8312], rax
 jmp xchain159_n235_α
.Lx472_0:
 .quad .Lx472_0_s
.Lx472_0_s:
 .string "jun"
# IR_VAR_REF
 xchain159_n234_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8448], rax
 mov qword ptr [rbp + 8456], rdx
 jmp xchain159_n236_α
 xchain159_n235_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8272] -> [zr+8224]
 mov rax, qword ptr [rbp + 8272]
 mov qword ptr [rbp + 8224], rax
 mov rax, qword ptr [rbp + 8280]
 mov qword ptr [rbp + 8232], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 8224]
 mov rsi, qword ptr [rip + .Lx475_2]
 jmp .Lx475_3
.Lx475_2:
 .quad .Lx475_2_s
.Lx475_2_s:
 .string "jun"
.Lx475_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 8208], rax
 mov qword ptr [rbp + 8216], rdx
 cmp eax, 99
 je xchain159_n238_α
 jmp xchain159_n237_α
 xchain159_n235_β:
 jmp xchain159_n238_α
# IR_LIT_INTEGER
 xchain159_n236_α:
 mov qword ptr [rbp + 8480], 6
 mov rax, qword ptr [rip + .Lx476_0]
 mov qword ptr [rbp + 8488], rax
 jmp xchain159_n239_α
.Lx476_0:
 .quad 0
# IR_VAR_REF
 xchain159_n237_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 8144], rax
 mov qword ptr [rbp + 8152], rdx
 jmp xchain159_n240_α
 xchain159_n238_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+7920]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 7920], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 7928], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 7920]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 7904], rax
 mov qword ptr [rbp + 7912], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n241_α
 xchain159_n238_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n239_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8448] -> [zr+8400]
 mov rax, qword ptr [rbp + 8448]
 mov qword ptr [rbp + 8400], rax
 mov rax, qword ptr [rbp + 8456]
 mov qword ptr [rbp + 8408], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 8400]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 8384], rax
 mov qword ptr [rbp + 8392], rdx
 cmp eax, 99
 je xchain159_n227_α
 jmp xchain159_n242_α
 xchain159_n239_β:
 jmp xchain159_n227_α
# IR_LIT_INTEGER
 xchain159_n240_α:
 mov qword ptr [rbp + 8176], 6
 mov rax, qword ptr [rip + .Lx481_0]
 mov qword ptr [rbp + 8184], rax
 jmp xchain159_n243_α
.Lx481_0:
 .quad 3
# IR_VAR_REF
 xchain159_n241_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 7840], rax
 mov qword ptr [rbp + 7848], rdx
 jmp xchain159_n244_α
# IR_SUSPEND yield+resume
 xchain159_n242_α:
 lea rax, [rip + xchain159_n242_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n242_β:
 jmp xchain159_n227_α
 xchain159_n243_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8144] -> [zr+8096]
 mov rax, qword ptr [rbp + 8144]
 mov qword ptr [rbp + 8096], rax
 mov rax, qword ptr [rbp + 8152]
 mov qword ptr [rbp + 8104], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 8096]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 8080], rax
 mov qword ptr [rbp + 8088], rdx
 cmp eax, 99
 je xchain159_n238_α
 jmp xchain159_n245_α
 xchain159_n243_β:
 jmp xchain159_n238_α
# IR_LIT_STRING
 xchain159_n244_α:
 mov qword ptr [rbp + 7872], 1
 mov rax, qword ptr [rip + .Lx487_0]
 mov qword ptr [rbp + 7880], rax
 jmp xchain159_n246_α
.Lx487_0:
 .quad .Lx487_0_s
.Lx487_0_s:
 .string "jul"
# IR_VAR_REF
 xchain159_n245_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 8016], rax
 mov qword ptr [rbp + 8024], rdx
 jmp xchain159_n247_α
 xchain159_n246_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7840] -> [zr+7792]
 mov rax, qword ptr [rbp + 7840]
 mov qword ptr [rbp + 7792], rax
 mov rax, qword ptr [rbp + 7848]
 mov qword ptr [rbp + 7800], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 7792]
 mov rsi, qword ptr [rip + .Lx490_2]
 jmp .Lx490_3
.Lx490_2:
 .quad .Lx490_2_s
.Lx490_2_s:
 .string "jul"
.Lx490_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 7776], rax
 mov qword ptr [rbp + 7784], rdx
 cmp eax, 99
 je xchain159_n249_α
 jmp xchain159_n248_α
 xchain159_n246_β:
 jmp xchain159_n249_α
# IR_LIT_INTEGER
 xchain159_n247_α:
 mov qword ptr [rbp + 8048], 6
 mov rax, qword ptr [rip + .Lx491_0]
 mov qword ptr [rbp + 8056], rax
 jmp xchain159_n250_α
.Lx491_0:
 .quad 0
# IR_VAR_REF
 xchain159_n248_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 7712], rax
 mov qword ptr [rbp + 7720], rdx
 jmp xchain159_n251_α
 xchain159_n249_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+7488]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 7488], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 7496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 7488]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 7472], rax
 mov qword ptr [rbp + 7480], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n252_α
 xchain159_n249_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n250_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+8016] -> [zr+7968]
 mov rax, qword ptr [rbp + 8016]
 mov qword ptr [rbp + 7968], rax
 mov rax, qword ptr [rbp + 8024]
 mov qword ptr [rbp + 7976], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7968]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7952], rax
 mov qword ptr [rbp + 7960], rdx
 cmp eax, 99
 je xchain159_n238_α
 jmp xchain159_n253_α
 xchain159_n250_β:
 jmp xchain159_n238_α
# IR_LIT_INTEGER
 xchain159_n251_α:
 mov qword ptr [rbp + 7744], 6
 mov rax, qword ptr [rip + .Lx496_0]
 mov qword ptr [rbp + 7752], rax
 jmp xchain159_n254_α
.Lx496_0:
 .quad 5
# IR_VAR_REF
 xchain159_n252_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 7408], rax
 mov qword ptr [rbp + 7416], rdx
 jmp xchain159_n255_α
# IR_SUSPEND yield+resume
 xchain159_n253_α:
 lea rax, [rip + xchain159_n253_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n253_β:
 jmp xchain159_n238_α
 xchain159_n254_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7712] -> [zr+7664]
 mov rax, qword ptr [rbp + 7712]
 mov qword ptr [rbp + 7664], rax
 mov rax, qword ptr [rbp + 7720]
 mov qword ptr [rbp + 7672], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7664]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7648], rax
 mov qword ptr [rbp + 7656], rdx
 cmp eax, 99
 je xchain159_n249_α
 jmp xchain159_n256_α
 xchain159_n254_β:
 jmp xchain159_n249_α
# IR_LIT_STRING
 xchain159_n255_α:
 mov qword ptr [rbp + 7440], 1
 mov rax, qword ptr [rip + .Lx502_0]
 mov qword ptr [rbp + 7448], rax
 jmp xchain159_n257_α
.Lx502_0:
 .quad .Lx502_0_s
.Lx502_0_s:
 .string "aug"
# IR_VAR_REF
 xchain159_n256_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 7584], rax
 mov qword ptr [rbp + 7592], rdx
 jmp xchain159_n258_α
 xchain159_n257_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7408] -> [zr+7360]
 mov rax, qword ptr [rbp + 7408]
 mov qword ptr [rbp + 7360], rax
 mov rax, qword ptr [rbp + 7416]
 mov qword ptr [rbp + 7368], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 7360]
 mov rsi, qword ptr [rip + .Lx505_2]
 jmp .Lx505_3
.Lx505_2:
 .quad .Lx505_2_s
.Lx505_2_s:
 .string "aug"
.Lx505_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 7344], rax
 mov qword ptr [rbp + 7352], rdx
 cmp eax, 99
 je xchain159_n260_α
 jmp xchain159_n259_α
 xchain159_n257_β:
 jmp xchain159_n260_α
# IR_LIT_INTEGER
 xchain159_n258_α:
 mov qword ptr [rbp + 7616], 6
 mov rax, qword ptr [rip + .Lx506_0]
 mov qword ptr [rbp + 7624], rax
 jmp xchain159_n261_α
.Lx506_0:
 .quad 0
# IR_VAR_REF
 xchain159_n259_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 7280], rax
 mov qword ptr [rbp + 7288], rdx
 jmp xchain159_n262_α
 xchain159_n260_α:
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
 jmp xchain159_n263_α
 xchain159_n260_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n261_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7584] -> [zr+7536]
 mov rax, qword ptr [rbp + 7584]
 mov qword ptr [rbp + 7536], rax
 mov rax, qword ptr [rbp + 7592]
 mov qword ptr [rbp + 7544], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7536]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7520], rax
 mov qword ptr [rbp + 7528], rdx
 cmp eax, 99
 je xchain159_n249_α
 jmp xchain159_n264_α
 xchain159_n261_β:
 jmp xchain159_n249_α
# IR_LIT_INTEGER
 xchain159_n262_α:
 mov qword ptr [rbp + 7312], 6
 mov rax, qword ptr [rip + .Lx511_0]
 mov qword ptr [rbp + 7320], rax
 jmp xchain159_n265_α
.Lx511_0:
 .quad 1
# IR_VAR_REF
 xchain159_n263_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6976], rax
 mov qword ptr [rbp + 6984], rdx
 jmp xchain159_n266_α
# IR_SUSPEND yield+resume
 xchain159_n264_α:
 lea rax, [rip + xchain159_n264_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n264_β:
 jmp xchain159_n249_α
 xchain159_n265_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7280] -> [zr+7232]
 mov rax, qword ptr [rbp + 7280]
 mov qword ptr [rbp + 7232], rax
 mov rax, qword ptr [rbp + 7288]
 mov qword ptr [rbp + 7240], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7232]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7216], rax
 mov qword ptr [rbp + 7224], rdx
 cmp eax, 99
 je xchain159_n260_α
 jmp xchain159_n267_α
 xchain159_n265_β:
 jmp xchain159_n260_α
# IR_LIT_STRING
 xchain159_n266_α:
 mov qword ptr [rbp + 7008], 1
 mov rax, qword ptr [rip + .Lx517_0]
 mov qword ptr [rbp + 7016], rax
 jmp xchain159_n268_α
.Lx517_0:
 .quad .Lx517_0_s
.Lx517_0_s:
 .string "sep"
# IR_VAR_REF
 xchain159_n267_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 7152], rax
 mov qword ptr [rbp + 7160], rdx
 jmp xchain159_n269_α
 xchain159_n268_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6976] -> [zr+6928]
 mov rax, qword ptr [rbp + 6976]
 mov qword ptr [rbp + 6928], rax
 mov rax, qword ptr [rbp + 6984]
 mov qword ptr [rbp + 6936], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6928]
 mov rsi, qword ptr [rip + .Lx520_2]
 jmp .Lx520_3
.Lx520_2:
 .quad .Lx520_2_s
.Lx520_2_s:
 .string "sep"
.Lx520_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6912], rax
 mov qword ptr [rbp + 6920], rdx
 cmp eax, 99
 je xchain159_n271_α
 jmp xchain159_n270_α
 xchain159_n268_β:
 jmp xchain159_n271_α
# IR_LIT_INTEGER
 xchain159_n269_α:
 mov qword ptr [rbp + 7184], 6
 mov rax, qword ptr [rip + .Lx521_0]
 mov qword ptr [rbp + 7192], rax
 jmp xchain159_n272_α
.Lx521_0:
 .quad 0
# IR_VAR_REF
 xchain159_n270_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6848], rax
 mov qword ptr [rbp + 6856], rdx
 jmp xchain159_n273_α
 xchain159_n271_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+6624]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 6624], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 6632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6624]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6608], rax
 mov qword ptr [rbp + 6616], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n274_α
 xchain159_n271_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n272_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+7152] -> [zr+7104]
 mov rax, qword ptr [rbp + 7152]
 mov qword ptr [rbp + 7104], rax
 mov rax, qword ptr [rbp + 7160]
 mov qword ptr [rbp + 7112], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 7104]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 7088], rax
 mov qword ptr [rbp + 7096], rdx
 cmp eax, 99
 je xchain159_n260_α
 jmp xchain159_n275_α
 xchain159_n272_β:
 jmp xchain159_n260_α
# IR_LIT_INTEGER
 xchain159_n273_α:
 mov qword ptr [rbp + 6880], 6
 mov rax, qword ptr [rip + .Lx526_0]
 mov qword ptr [rbp + 6888], rax
 jmp xchain159_n276_α
.Lx526_0:
 .quad 4
# IR_VAR_REF
 xchain159_n274_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6544], rax
 mov qword ptr [rbp + 6552], rdx
 jmp xchain159_n277_α
# IR_SUSPEND yield+resume
 xchain159_n275_α:
 lea rax, [rip + xchain159_n275_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n275_β:
 jmp xchain159_n260_α
 xchain159_n276_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6848] -> [zr+6800]
 mov rax, qword ptr [rbp + 6848]
 mov qword ptr [rbp + 6800], rax
 mov rax, qword ptr [rbp + 6856]
 mov qword ptr [rbp + 6808], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6800]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6784], rax
 mov qword ptr [rbp + 6792], rdx
 cmp eax, 99
 je xchain159_n271_α
 jmp xchain159_n278_α
 xchain159_n276_β:
 jmp xchain159_n271_α
# IR_LIT_STRING
 xchain159_n277_α:
 mov qword ptr [rbp + 6576], 1
 mov rax, qword ptr [rip + .Lx532_0]
 mov qword ptr [rbp + 6584], rax
 jmp xchain159_n279_α
.Lx532_0:
 .quad .Lx532_0_s
.Lx532_0_s:
 .string "oct"
# IR_VAR_REF
 xchain159_n278_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 6720], rax
 mov qword ptr [rbp + 6728], rdx
 jmp xchain159_n280_α
 xchain159_n279_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6544] -> [zr+6496]
 mov rax, qword ptr [rbp + 6544]
 mov qword ptr [rbp + 6496], rax
 mov rax, qword ptr [rbp + 6552]
 mov qword ptr [rbp + 6504], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6496]
 mov rsi, qword ptr [rip + .Lx535_2]
 jmp .Lx535_3
.Lx535_2:
 .quad .Lx535_2_s
.Lx535_2_s:
 .string "oct"
.Lx535_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6480], rax
 mov qword ptr [rbp + 6488], rdx
 cmp eax, 99
 je xchain159_n282_α
 jmp xchain159_n281_α
 xchain159_n279_β:
 jmp xchain159_n282_α
# IR_LIT_INTEGER
 xchain159_n280_α:
 mov qword ptr [rbp + 6752], 6
 mov rax, qword ptr [rip + .Lx536_0]
 mov qword ptr [rbp + 6760], rax
 jmp xchain159_n283_α
.Lx536_0:
 .quad 0
# IR_VAR_REF
 xchain159_n281_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 6416], rax
 mov qword ptr [rbp + 6424], rdx
 jmp xchain159_n284_α
 xchain159_n282_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+6192]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 6192], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 6200], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 6192]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 6176], rax
 mov qword ptr [rbp + 6184], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n285_α
 xchain159_n282_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n283_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6720] -> [zr+6672]
 mov rax, qword ptr [rbp + 6720]
 mov qword ptr [rbp + 6672], rax
 mov rax, qword ptr [rbp + 6728]
 mov qword ptr [rbp + 6680], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6672]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6656], rax
 mov qword ptr [rbp + 6664], rdx
 cmp eax, 99
 je xchain159_n271_α
 jmp xchain159_n286_α
 xchain159_n283_β:
 jmp xchain159_n271_α
# IR_LIT_INTEGER
 xchain159_n284_α:
 mov qword ptr [rbp + 6448], 6
 mov rax, qword ptr [rip + .Lx541_0]
 mov qword ptr [rbp + 6456], rax
 jmp xchain159_n287_α
.Lx541_0:
 .quad 6
# IR_VAR_REF
 xchain159_n285_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 6112], rax
 mov qword ptr [rbp + 6120], rdx
 jmp xchain159_n288_α
# IR_SUSPEND yield+resume
 xchain159_n286_α:
 lea rax, [rip + xchain159_n286_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n286_β:
 jmp xchain159_n271_α
 xchain159_n287_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6416] -> [zr+6368]
 mov rax, qword ptr [rbp + 6416]
 mov qword ptr [rbp + 6368], rax
 mov rax, qword ptr [rbp + 6424]
 mov qword ptr [rbp + 6376], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6368]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6352], rax
 mov qword ptr [rbp + 6360], rdx
 cmp eax, 99
 je xchain159_n282_α
 jmp xchain159_n289_α
 xchain159_n287_β:
 jmp xchain159_n282_α
# IR_LIT_STRING
 xchain159_n288_α:
 mov qword ptr [rbp + 6144], 1
 mov rax, qword ptr [rip + .Lx547_0]
 mov qword ptr [rbp + 6152], rax
 jmp xchain159_n290_α
.Lx547_0:
 .quad .Lx547_0_s
.Lx547_0_s:
 .string "nov"
# IR_VAR_REF
 xchain159_n289_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 6288], rax
 mov qword ptr [rbp + 6296], rdx
 jmp xchain159_n291_α
 xchain159_n290_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6112] -> [zr+6064]
 mov rax, qword ptr [rbp + 6112]
 mov qword ptr [rbp + 6064], rax
 mov rax, qword ptr [rbp + 6120]
 mov qword ptr [rbp + 6072], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 6064]
 mov rsi, qword ptr [rip + .Lx550_2]
 jmp .Lx550_3
.Lx550_2:
 .quad .Lx550_2_s
.Lx550_2_s:
 .string "nov"
.Lx550_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 6048], rax
 mov qword ptr [rbp + 6056], rdx
 cmp eax, 99
 je xchain159_n293_α
 jmp xchain159_n292_α
 xchain159_n290_β:
 jmp xchain159_n293_α
# IR_LIT_INTEGER
 xchain159_n291_α:
 mov qword ptr [rbp + 6320], 6
 mov rax, qword ptr [rip + .Lx551_0]
 mov qword ptr [rbp + 6328], rax
 jmp xchain159_n294_α
.Lx551_0:
 .quad 0
# IR_VAR_REF
 xchain159_n292_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5984], rax
 mov qword ptr [rbp + 5992], rdx
 jmp xchain159_n295_α
 xchain159_n293_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+5760]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 5760], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 5768], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5760]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5744], rax
 mov qword ptr [rbp + 5752], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n296_α
 xchain159_n293_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n294_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+6288] -> [zr+6240]
 mov rax, qword ptr [rbp + 6288]
 mov qword ptr [rbp + 6240], rax
 mov rax, qword ptr [rbp + 6296]
 mov qword ptr [rbp + 6248], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 6240]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 6224], rax
 mov qword ptr [rbp + 6232], rdx
 cmp eax, 99
 je xchain159_n282_α
 jmp xchain159_n297_α
 xchain159_n294_β:
 jmp xchain159_n282_α
# IR_LIT_INTEGER
 xchain159_n295_α:
 mov qword ptr [rbp + 6016], 6
 mov rax, qword ptr [rip + .Lx556_0]
 mov qword ptr [rbp + 6024], rax
 jmp xchain159_n298_α
.Lx556_0:
 .quad 2
# IR_VAR_REF
 xchain159_n296_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5680], rax
 mov qword ptr [rbp + 5688], rdx
 jmp xchain159_n299_α
# IR_SUSPEND yield+resume
 xchain159_n297_α:
 lea rax, [rip + xchain159_n297_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n297_β:
 jmp xchain159_n282_α
 xchain159_n298_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5984] -> [zr+5936]
 mov rax, qword ptr [rbp + 5984]
 mov qword ptr [rbp + 5936], rax
 mov rax, qword ptr [rbp + 5992]
 mov qword ptr [rbp + 5944], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5936]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5920], rax
 mov qword ptr [rbp + 5928], rdx
 cmp eax, 99
 je xchain159_n293_α
 jmp xchain159_n300_α
 xchain159_n298_β:
 jmp xchain159_n293_α
# IR_LIT_STRING
 xchain159_n299_α:
 mov qword ptr [rbp + 5712], 1
 mov rax, qword ptr [rip + .Lx562_0]
 mov qword ptr [rbp + 5720], rax
 jmp xchain159_n301_α
.Lx562_0:
 .quad .Lx562_0_s
.Lx562_0_s:
 .string "dec"
# IR_VAR_REF
 xchain159_n300_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 5856], rax
 mov qword ptr [rbp + 5864], rdx
 jmp xchain159_n302_α
 xchain159_n301_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5680] -> [zr+5632]
 mov rax, qword ptr [rbp + 5680]
 mov qword ptr [rbp + 5632], rax
 mov rax, qword ptr [rbp + 5688]
 mov qword ptr [rbp + 5640], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5632]
 mov rsi, qword ptr [rip + .Lx565_2]
 jmp .Lx565_3
.Lx565_2:
 .quad .Lx565_2_s
.Lx565_2_s:
 .string "dec"
.Lx565_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5616], rax
 mov qword ptr [rbp + 5624], rdx
 cmp eax, 99
 je xchain159_n304_α
 jmp xchain159_n303_α
 xchain159_n301_β:
 jmp xchain159_n304_α
# IR_LIT_INTEGER
 xchain159_n302_α:
 mov qword ptr [rbp + 5888], 6
 mov rax, qword ptr [rip + .Lx566_0]
 mov qword ptr [rbp + 5896], rax
 jmp xchain159_n305_α
.Lx566_0:
 .quad 0
# IR_VAR_REF
 xchain159_n303_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5552], rax
 mov qword ptr [rbp + 5560], rdx
 jmp xchain159_n306_α
 xchain159_n304_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+5328]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 5328], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 5336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 5328]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 5312], rax
 mov qword ptr [rbp + 5320], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n307_α
 xchain159_n304_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n305_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5856] -> [zr+5808]
 mov rax, qword ptr [rbp + 5856]
 mov qword ptr [rbp + 5808], rax
 mov rax, qword ptr [rbp + 5864]
 mov qword ptr [rbp + 5816], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5808]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5792], rax
 mov qword ptr [rbp + 5800], rdx
 cmp eax, 99
 je xchain159_n293_α
 jmp xchain159_n308_α
 xchain159_n305_β:
 jmp xchain159_n293_α
# IR_LIT_INTEGER
 xchain159_n306_α:
 mov qword ptr [rbp + 5584], 6
 mov rax, qword ptr [rip + .Lx571_0]
 mov qword ptr [rbp + 5592], rax
 jmp xchain159_n309_α
.Lx571_0:
 .quad 4
# IR_VAR_REF
 xchain159_n307_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 5248], rax
 mov qword ptr [rbp + 5256], rdx
 jmp xchain159_n310_α
# IR_SUSPEND yield+resume
 xchain159_n308_α:
 lea rax, [rip + xchain159_n308_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n308_β:
 jmp xchain159_n293_α
 xchain159_n309_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5552] -> [zr+5504]
 mov rax, qword ptr [rbp + 5552]
 mov qword ptr [rbp + 5504], rax
 mov rax, qword ptr [rbp + 5560]
 mov qword ptr [rbp + 5512], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5504]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5488], rax
 mov qword ptr [rbp + 5496], rdx
 cmp eax, 99
 je xchain159_n304_α
 jmp xchain159_n311_α
 xchain159_n309_β:
 jmp xchain159_n304_α
# IR_LIT_STRING
 xchain159_n310_α:
 mov qword ptr [rbp + 5280], 1
 mov rax, qword ptr [rip + .Lx577_0]
 mov qword ptr [rbp + 5288], rax
 jmp xchain159_n312_α
.Lx577_0:
 .quad .Lx577_0_s
.Lx577_0_s:
 .string "January"
# IR_VAR_REF
 xchain159_n311_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 5424], rax
 mov qword ptr [rbp + 5432], rdx
 jmp xchain159_n313_α
 xchain159_n312_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5248] -> [zr+5200]
 mov rax, qword ptr [rbp + 5248]
 mov qword ptr [rbp + 5200], rax
 mov rax, qword ptr [rbp + 5256]
 mov qword ptr [rbp + 5208], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 5200]
 mov rsi, qword ptr [rip + .Lx580_2]
 jmp .Lx580_3
.Lx580_2:
 .quad .Lx580_2_s
.Lx580_2_s:
 .string "January"
.Lx580_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 5184], rax
 mov qword ptr [rbp + 5192], rdx
 cmp eax, 99
 je xchain159_n315_α
 jmp xchain159_n314_α
 xchain159_n312_β:
 jmp xchain159_n315_α
# IR_LIT_INTEGER
 xchain159_n313_α:
 mov qword ptr [rbp + 5456], 6
 mov rax, qword ptr [rip + .Lx581_0]
 mov qword ptr [rbp + 5464], rax
 jmp xchain159_n316_α
.Lx581_0:
 .quad 0
# IR_VAR_REF
 xchain159_n314_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 5120], rax
 mov qword ptr [rbp + 5128], rdx
 jmp xchain159_n317_α
 xchain159_n315_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+4896]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 4896], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 4904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4896]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4880], rax
 mov qword ptr [rbp + 4888], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n318_α
 xchain159_n315_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n316_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5424] -> [zr+5376]
 mov rax, qword ptr [rbp + 5424]
 mov qword ptr [rbp + 5376], rax
 mov rax, qword ptr [rbp + 5432]
 mov qword ptr [rbp + 5384], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5376]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5360], rax
 mov qword ptr [rbp + 5368], rdx
 cmp eax, 99
 je xchain159_n304_α
 jmp xchain159_n319_α
 xchain159_n316_β:
 jmp xchain159_n304_α
# IR_LIT_INTEGER
 xchain159_n317_α:
 mov qword ptr [rbp + 5152], 6
 mov rax, qword ptr [rip + .Lx586_0]
 mov qword ptr [rbp + 5160], rax
 jmp xchain159_n320_α
.Lx586_0:
 .quad 6
# IR_VAR_REF
 xchain159_n318_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4816], rax
 mov qword ptr [rbp + 4824], rdx
 jmp xchain159_n321_α
# IR_SUSPEND yield+resume
 xchain159_n319_α:
 lea rax, [rip + xchain159_n319_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n319_β:
 jmp xchain159_n304_α
 xchain159_n320_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+5120] -> [zr+5072]
 mov rax, qword ptr [rbp + 5120]
 mov qword ptr [rbp + 5072], rax
 mov rax, qword ptr [rbp + 5128]
 mov qword ptr [rbp + 5080], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 5072]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 5056], rax
 mov qword ptr [rbp + 5064], rdx
 cmp eax, 99
 je xchain159_n315_α
 jmp xchain159_n322_α
 xchain159_n320_β:
 jmp xchain159_n315_α
# IR_LIT_STRING
 xchain159_n321_α:
 mov qword ptr [rbp + 4848], 1
 mov rax, qword ptr [rip + .Lx592_0]
 mov qword ptr [rbp + 4856], rax
 jmp xchain159_n323_α
.Lx592_0:
 .quad .Lx592_0_s
.Lx592_0_s:
 .string "February"
# IR_VAR_REF
 xchain159_n322_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4992], rax
 mov qword ptr [rbp + 5000], rdx
 jmp xchain159_n324_α
 xchain159_n323_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4816] -> [zr+4768]
 mov rax, qword ptr [rbp + 4816]
 mov qword ptr [rbp + 4768], rax
 mov rax, qword ptr [rbp + 4824]
 mov qword ptr [rbp + 4776], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4768]
 mov rsi, qword ptr [rip + .Lx595_2]
 jmp .Lx595_3
.Lx595_2:
 .quad .Lx595_2_s
.Lx595_2_s:
 .string "February"
.Lx595_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4752], rax
 mov qword ptr [rbp + 4760], rdx
 cmp eax, 99
 je xchain159_n326_α
 jmp xchain159_n325_α
 xchain159_n323_β:
 jmp xchain159_n326_α
# IR_LIT_INTEGER
 xchain159_n324_α:
 mov qword ptr [rbp + 5024], 6
 mov rax, qword ptr [rip + .Lx596_0]
 mov qword ptr [rbp + 5032], rax
 jmp xchain159_n327_α
.Lx596_0:
 .quad 1
# IR_VAR_REF
 xchain159_n325_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4688], rax
 mov qword ptr [rbp + 4696], rdx
 jmp xchain159_n328_α
 xchain159_n326_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+4464]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 4464], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 4472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4464]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4448], rax
 mov qword ptr [rbp + 4456], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n329_α
 xchain159_n326_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n327_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4992] -> [zr+4944]
 mov rax, qword ptr [rbp + 4992]
 mov qword ptr [rbp + 4944], rax
 mov rax, qword ptr [rbp + 5000]
 mov qword ptr [rbp + 4952], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4944]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4928], rax
 mov qword ptr [rbp + 4936], rdx
 cmp eax, 99
 je xchain159_n315_α
 jmp xchain159_n330_α
 xchain159_n327_β:
 jmp xchain159_n315_α
# IR_LIT_INTEGER
 xchain159_n328_α:
 mov qword ptr [rbp + 4720], 6
 mov rax, qword ptr [rip + .Lx601_0]
 mov qword ptr [rbp + 4728], rax
 jmp xchain159_n331_α
.Lx601_0:
 .quad 2
# IR_VAR_REF
 xchain159_n329_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 4384], rax
 mov qword ptr [rbp + 4392], rdx
 jmp xchain159_n332_α
# IR_SUSPEND yield+resume
 xchain159_n330_α:
 lea rax, [rip + xchain159_n330_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n330_β:
 jmp xchain159_n315_α
 xchain159_n331_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4688] -> [zr+4640]
 mov rax, qword ptr [rbp + 4688]
 mov qword ptr [rbp + 4640], rax
 mov rax, qword ptr [rbp + 4696]
 mov qword ptr [rbp + 4648], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4640]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4624], rax
 mov qword ptr [rbp + 4632], rdx
 cmp eax, 99
 je xchain159_n326_α
 jmp xchain159_n333_α
 xchain159_n331_β:
 jmp xchain159_n326_α
# IR_LIT_STRING
 xchain159_n332_α:
 mov qword ptr [rbp + 4416], 1
 mov rax, qword ptr [rip + .Lx607_0]
 mov qword ptr [rbp + 4424], rax
 jmp xchain159_n334_α
.Lx607_0:
 .quad .Lx607_0_s
.Lx607_0_s:
 .string "March"
# IR_VAR_REF
 xchain159_n333_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4560], rax
 mov qword ptr [rbp + 4568], rdx
 jmp xchain159_n335_α
 xchain159_n334_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4384] -> [zr+4336]
 mov rax, qword ptr [rbp + 4384]
 mov qword ptr [rbp + 4336], rax
 mov rax, qword ptr [rbp + 4392]
 mov qword ptr [rbp + 4344], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 4336]
 mov rsi, qword ptr [rip + .Lx610_2]
 jmp .Lx610_3
.Lx610_2:
 .quad .Lx610_2_s
.Lx610_2_s:
 .string "March"
.Lx610_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 4320], rax
 mov qword ptr [rbp + 4328], rdx
 cmp eax, 99
 je xchain159_n337_α
 jmp xchain159_n336_α
 xchain159_n334_β:
 jmp xchain159_n337_α
# IR_LIT_INTEGER
 xchain159_n335_α:
 mov qword ptr [rbp + 4592], 6
 mov rax, qword ptr [rip + .Lx611_0]
 mov qword ptr [rbp + 4600], rax
 jmp xchain159_n338_α
.Lx611_0:
 .quad 1
# IR_VAR_REF
 xchain159_n336_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 4256], rax
 mov qword ptr [rbp + 4264], rdx
 jmp xchain159_n339_α
 xchain159_n337_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+4032]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 4032], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 4040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 4032]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 4016], rax
 mov qword ptr [rbp + 4024], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n340_α
 xchain159_n337_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n338_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4560] -> [zr+4512]
 mov rax, qword ptr [rbp + 4560]
 mov qword ptr [rbp + 4512], rax
 mov rax, qword ptr [rbp + 4568]
 mov qword ptr [rbp + 4520], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4512]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4496], rax
 mov qword ptr [rbp + 4504], rdx
 cmp eax, 99
 je xchain159_n326_α
 jmp xchain159_n341_α
 xchain159_n338_β:
 jmp xchain159_n326_α
# IR_LIT_INTEGER
 xchain159_n339_α:
 mov qword ptr [rbp + 4288], 6
 mov rax, qword ptr [rip + .Lx616_0]
 mov qword ptr [rbp + 4296], rax
 jmp xchain159_n342_α
.Lx616_0:
 .quad 2
# IR_VAR_REF
 xchain159_n340_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 jmp xchain159_n343_α
# IR_SUSPEND yield+resume
 xchain159_n341_α:
 lea rax, [rip + xchain159_n341_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n341_β:
 jmp xchain159_n326_α
 xchain159_n342_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4256] -> [zr+4208]
 mov rax, qword ptr [rbp + 4256]
 mov qword ptr [rbp + 4208], rax
 mov rax, qword ptr [rbp + 4264]
 mov qword ptr [rbp + 4216], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4208]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4192], rax
 mov qword ptr [rbp + 4200], rdx
 cmp eax, 99
 je xchain159_n337_α
 jmp xchain159_n344_α
 xchain159_n342_β:
 jmp xchain159_n337_α
# IR_LIT_STRING
 xchain159_n343_α:
 mov qword ptr [rbp + 3984], 1
 mov rax, qword ptr [rip + .Lx622_0]
 mov qword ptr [rbp + 3992], rax
 jmp xchain159_n345_α
.Lx622_0:
 .quad .Lx622_0_s
.Lx622_0_s:
 .string "April"
# IR_VAR_REF
 xchain159_n344_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 4128], rax
 mov qword ptr [rbp + 4136], rdx
 jmp xchain159_n346_α
 xchain159_n345_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3952] -> [zr+3904]
 mov rax, qword ptr [rbp + 3952]
 mov qword ptr [rbp + 3904], rax
 mov rax, qword ptr [rbp + 3960]
 mov qword ptr [rbp + 3912], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3904]
 mov rsi, qword ptr [rip + .Lx625_2]
 jmp .Lx625_3
.Lx625_2:
 .quad .Lx625_2_s
.Lx625_2_s:
 .string "April"
.Lx625_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 cmp eax, 99
 je xchain159_n348_α
 jmp xchain159_n347_α
 xchain159_n345_β:
 jmp xchain159_n348_α
# IR_LIT_INTEGER
 xchain159_n346_α:
 mov qword ptr [rbp + 4160], 6
 mov rax, qword ptr [rip + .Lx626_0]
 mov qword ptr [rbp + 4168], rax
 jmp xchain159_n349_α
.Lx626_0:
 .quad 0
# IR_VAR_REF
 xchain159_n347_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 jmp xchain159_n350_α
 xchain159_n348_α:
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
 jmp xchain159_n351_α
 xchain159_n348_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n349_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4128] -> [zr+4080]
 mov rax, qword ptr [rbp + 4128]
 mov qword ptr [rbp + 4080], rax
 mov rax, qword ptr [rbp + 4136]
 mov qword ptr [rbp + 4088], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 4080]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 4064], rax
 mov qword ptr [rbp + 4072], rdx
 cmp eax, 99
 je xchain159_n337_α
 jmp xchain159_n352_α
 xchain159_n349_β:
 jmp xchain159_n337_α
# IR_LIT_INTEGER
 xchain159_n350_α:
 mov qword ptr [rbp + 3856], 6
 mov rax, qword ptr [rip + .Lx631_0]
 mov qword ptr [rbp + 3864], rax
 jmp xchain159_n353_α
.Lx631_0:
 .quad 5
# IR_VAR_REF
 xchain159_n351_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3520], rax
 mov qword ptr [rbp + 3528], rdx
 jmp xchain159_n354_α
# IR_SUSPEND yield+resume
 xchain159_n352_α:
 lea rax, [rip + xchain159_n352_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n352_β:
 jmp xchain159_n337_α
 xchain159_n353_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3824] -> [zr+3776]
 mov rax, qword ptr [rbp + 3824]
 mov qword ptr [rbp + 3776], rax
 mov rax, qword ptr [rbp + 3832]
 mov qword ptr [rbp + 3784], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3776]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 cmp eax, 99
 je xchain159_n348_α
 jmp xchain159_n355_α
 xchain159_n353_β:
 jmp xchain159_n348_α
# IR_LIT_STRING
 xchain159_n354_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx637_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain159_n356_α
.Lx637_0:
 .quad .Lx637_0_s
.Lx637_0_s:
 .string "May"
# IR_VAR_REF
 xchain159_n355_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 jmp xchain159_n357_α
 xchain159_n356_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3520] -> [zr+3472]
 mov rax, qword ptr [rbp + 3520]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3528]
 mov qword ptr [rbp + 3480], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3472]
 mov rsi, qword ptr [rip + .Lx640_2]
 jmp .Lx640_3
.Lx640_2:
 .quad .Lx640_2_s
.Lx640_2_s:
 .string "May"
.Lx640_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3456], rax
 mov qword ptr [rbp + 3464], rdx
 cmp eax, 99
 je xchain159_n359_α
 jmp xchain159_n358_α
 xchain159_n356_β:
 jmp xchain159_n359_α
# IR_LIT_INTEGER
 xchain159_n357_α:
 mov qword ptr [rbp + 3728], 6
 mov rax, qword ptr [rip + .Lx641_0]
 mov qword ptr [rbp + 3736], rax
 jmp xchain159_n360_α
.Lx641_0:
 .quad 0
# IR_VAR_REF
 xchain159_n358_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3392], rax
 mov qword ptr [rbp + 3400], rdx
 jmp xchain159_n361_α
 xchain159_n359_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+3168]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 3176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n362_α
 xchain159_n359_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n360_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3696] -> [zr+3648]
 mov rax, qword ptr [rbp + 3696]
 mov qword ptr [rbp + 3648], rax
 mov rax, qword ptr [rbp + 3704]
 mov qword ptr [rbp + 3656], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3648]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 cmp eax, 99
 je xchain159_n348_α
 jmp xchain159_n363_α
 xchain159_n360_β:
 jmp xchain159_n348_α
# IR_LIT_INTEGER
 xchain159_n361_α:
 mov qword ptr [rbp + 3424], 6
 mov rax, qword ptr [rip + .Lx646_0]
 mov qword ptr [rbp + 3432], rax
 jmp xchain159_n364_α
.Lx646_0:
 .quad 0
# IR_VAR_REF
 xchain159_n362_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain159_n365_α
# IR_SUSPEND yield+resume
 xchain159_n363_α:
 lea rax, [rip + xchain159_n363_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n363_β:
 jmp xchain159_n348_α
 xchain159_n364_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3392] -> [zr+3344]
 mov rax, qword ptr [rbp + 3392]
 mov qword ptr [rbp + 3344], rax
 mov rax, qword ptr [rbp + 3400]
 mov qword ptr [rbp + 3352], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3344]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3328], rax
 mov qword ptr [rbp + 3336], rdx
 cmp eax, 99
 je xchain159_n359_α
 jmp xchain159_n366_α
 xchain159_n364_β:
 jmp xchain159_n359_α
# IR_LIT_STRING
 xchain159_n365_α:
 mov qword ptr [rbp + 3120], 1
 mov rax, qword ptr [rip + .Lx652_0]
 mov qword ptr [rbp + 3128], rax
 jmp xchain159_n367_α
.Lx652_0:
 .quad .Lx652_0_s
.Lx652_0_s:
 .string "June"
# IR_VAR_REF
 xchain159_n366_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3264], rax
 mov qword ptr [rbp + 3272], rdx
 jmp xchain159_n368_α
 xchain159_n367_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3088] -> [zr+3040]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3048], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 3040]
 mov rsi, qword ptr [rip + .Lx655_2]
 jmp .Lx655_3
.Lx655_2:
 .quad .Lx655_2_s
.Lx655_2_s:
 .string "June"
.Lx655_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain159_n370_α
 jmp xchain159_n369_α
 xchain159_n367_β:
 jmp xchain159_n370_α
# IR_LIT_INTEGER
 xchain159_n368_α:
 mov qword ptr [rbp + 3296], 6
 mov rax, qword ptr [rip + .Lx656_0]
 mov qword ptr [rbp + 3304], rax
 jmp xchain159_n371_α
.Lx656_0:
 .quad 0
# IR_VAR_REF
 xchain159_n369_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain159_n372_α
 xchain159_n370_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2736]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2736], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2736]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n373_α
 xchain159_n370_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n371_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3264] -> [zr+3216]
 mov rax, qword ptr [rbp + 3264]
 mov qword ptr [rbp + 3216], rax
 mov rax, qword ptr [rbp + 3272]
 mov qword ptr [rbp + 3224], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 3216]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 cmp eax, 99
 je xchain159_n359_α
 jmp xchain159_n374_α
 xchain159_n371_β:
 jmp xchain159_n359_α
# IR_LIT_INTEGER
 xchain159_n372_α:
 mov qword ptr [rbp + 2992], 6
 mov rax, qword ptr [rip + .Lx661_0]
 mov qword ptr [rbp + 3000], rax
 jmp xchain159_n375_α
.Lx661_0:
 .quad 3
# IR_VAR_REF
 xchain159_n373_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 jmp xchain159_n376_α
# IR_SUSPEND yield+resume
 xchain159_n374_α:
 lea rax, [rip + xchain159_n374_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n374_β:
 jmp xchain159_n359_α
 xchain159_n375_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2960] -> [zr+2912]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2920], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2912]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 cmp eax, 99
 je xchain159_n370_α
 jmp xchain159_n377_α
 xchain159_n375_β:
 jmp xchain159_n370_α
# IR_LIT_STRING
 xchain159_n376_α:
 mov qword ptr [rbp + 2688], 1
 mov rax, qword ptr [rip + .Lx667_0]
 mov qword ptr [rbp + 2696], rax
 jmp xchain159_n378_α
.Lx667_0:
 .quad .Lx667_0_s
.Lx667_0_s:
 .string "July"
# IR_VAR_REF
 xchain159_n377_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain159_n379_α
 xchain159_n378_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2656] -> [zr+2608]
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 2608], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 2616], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2608]
 mov rsi, qword ptr [rip + .Lx670_2]
 jmp .Lx670_3
.Lx670_2:
 .quad .Lx670_2_s
.Lx670_2_s:
 .string "July"
.Lx670_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 cmp eax, 99
 je xchain159_n381_α
 jmp xchain159_n380_α
 xchain159_n378_β:
 jmp xchain159_n381_α
# IR_LIT_INTEGER
 xchain159_n379_α:
 mov qword ptr [rbp + 2864], 6
 mov rax, qword ptr [rip + .Lx671_0]
 mov qword ptr [rbp + 2872], rax
 jmp xchain159_n382_α
.Lx671_0:
 .quad 0
# IR_VAR_REF
 xchain159_n380_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 jmp xchain159_n383_α
 xchain159_n381_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2304]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2312], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2304]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n384_α
 xchain159_n381_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n382_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2832] -> [zr+2784]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2792], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2784]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain159_n370_α
 jmp xchain159_n385_α
 xchain159_n382_β:
 jmp xchain159_n370_α
# IR_LIT_INTEGER
 xchain159_n383_α:
 mov qword ptr [rbp + 2560], 6
 mov rax, qword ptr [rip + .Lx676_0]
 mov qword ptr [rbp + 2568], rax
 jmp xchain159_n386_α
.Lx676_0:
 .quad 5
# IR_VAR_REF
 xchain159_n384_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 jmp xchain159_n387_α
# IR_SUSPEND yield+resume
 xchain159_n385_α:
 lea rax, [rip + xchain159_n385_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n385_β:
 jmp xchain159_n370_α
 xchain159_n386_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2528] -> [zr+2480]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2488], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2480]
 movabs rsi, 5
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 cmp eax, 99
 je xchain159_n381_α
 jmp xchain159_n388_α
 xchain159_n386_β:
 jmp xchain159_n381_α
# IR_LIT_STRING
 xchain159_n387_α:
 mov qword ptr [rbp + 2256], 1
 mov rax, qword ptr [rip + .Lx682_0]
 mov qword ptr [rbp + 2264], rax
 jmp xchain159_n389_α
.Lx682_0:
 .quad .Lx682_0_s
.Lx682_0_s:
 .string "August"
# IR_VAR_REF
 xchain159_n388_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain159_n390_α
 xchain159_n389_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2224] -> [zr+2176]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 2184], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 2176]
 mov rsi, qword ptr [rip + .Lx685_2]
 jmp .Lx685_3
.Lx685_2:
 .quad .Lx685_2_s
.Lx685_2_s:
 .string "August"
.Lx685_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 cmp eax, 99
 je xchain159_n392_α
 jmp xchain159_n391_α
 xchain159_n389_β:
 jmp xchain159_n392_α
# IR_LIT_INTEGER
 xchain159_n390_α:
 mov qword ptr [rbp + 2432], 6
 mov rax, qword ptr [rip + .Lx686_0]
 mov qword ptr [rbp + 2440], rax
 jmp xchain159_n393_α
.Lx686_0:
 .quad 0
# IR_VAR_REF
 xchain159_n391_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2096], rax
 mov qword ptr [rbp + 2104], rdx
 jmp xchain159_n394_α
 xchain159_n392_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1872]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1872]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n395_α
 xchain159_n392_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n393_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2400] -> [zr+2352]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2360], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2352]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je xchain159_n381_α
 jmp xchain159_n396_α
 xchain159_n393_β:
 jmp xchain159_n381_α
# IR_LIT_INTEGER
 xchain159_n394_α:
 mov qword ptr [rbp + 2128], 6
 mov rax, qword ptr [rip + .Lx691_0]
 mov qword ptr [rbp + 2136], rax
 jmp xchain159_n397_α
.Lx691_0:
 .quad 1
# IR_VAR_REF
 xchain159_n395_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain159_n398_α
# IR_SUSPEND yield+resume
 xchain159_n396_α:
 lea rax, [rip + xchain159_n396_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n396_β:
 jmp xchain159_n381_α
 xchain159_n397_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2048]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2056], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2048]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2032], rax
 mov qword ptr [rbp + 2040], rdx
 cmp eax, 99
 je xchain159_n392_α
 jmp xchain159_n399_α
 xchain159_n397_β:
 jmp xchain159_n392_α
# IR_LIT_STRING
 xchain159_n398_α:
 mov qword ptr [rbp + 1824], 1
 mov rax, qword ptr [rip + .Lx697_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain159_n400_α
.Lx697_0:
 .quad .Lx697_0_s
.Lx697_0_s:
 .string "September"
# IR_VAR_REF
 xchain159_n399_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain159_n401_α
 xchain159_n400_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1752], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1744]
 mov rsi, qword ptr [rip + .Lx700_2]
 jmp .Lx700_3
.Lx700_2:
 .quad .Lx700_2_s
.Lx700_2_s:
 .string "September"
.Lx700_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain159_n403_α
 jmp xchain159_n402_α
 xchain159_n400_β:
 jmp xchain159_n403_α
# IR_LIT_INTEGER
 xchain159_n401_α:
 mov qword ptr [rbp + 2000], 6
 mov rax, qword ptr [rip + .Lx701_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain159_n404_α
.Lx701_0:
 .quad 0
# IR_VAR_REF
 xchain159_n402_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain159_n405_α
 xchain159_n403_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1440]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1448], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1440]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n406_α
 xchain159_n403_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n404_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1968] -> [zr+1920]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1928], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1920]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain159_n392_α
 jmp xchain159_n407_α
 xchain159_n404_β:
 jmp xchain159_n392_α
# IR_LIT_INTEGER
 xchain159_n405_α:
 mov qword ptr [rbp + 1696], 6
 mov rax, qword ptr [rip + .Lx706_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain159_n408_α
.Lx706_0:
 .quad 4
# IR_VAR_REF
 xchain159_n406_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain159_n409_α
# IR_SUSPEND yield+resume
 xchain159_n407_α:
 lea rax, [rip + xchain159_n407_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n407_β:
 jmp xchain159_n392_α
 xchain159_n408_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1616]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1624], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1616]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je xchain159_n403_α
 jmp xchain159_n410_α
 xchain159_n408_β:
 jmp xchain159_n403_α
# IR_LIT_STRING
 xchain159_n409_α:
 mov qword ptr [rbp + 1392], 1
 mov rax, qword ptr [rip + .Lx712_0]
 mov qword ptr [rbp + 1400], rax
 jmp xchain159_n411_α
.Lx712_0:
 .quad .Lx712_0_s
.Lx712_0_s:
 .string "October"
# IR_VAR_REF
 xchain159_n410_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain159_n412_α
 xchain159_n411_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1312]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1320], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1312]
 mov rsi, qword ptr [rip + .Lx715_2]
 jmp .Lx715_3
.Lx715_2:
 .quad .Lx715_2_s
.Lx715_2_s:
 .string "October"
.Lx715_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain159_n414_α
 jmp xchain159_n413_α
 xchain159_n411_β:
 jmp xchain159_n414_α
# IR_LIT_INTEGER
 xchain159_n412_α:
 mov qword ptr [rbp + 1568], 6
 mov rax, qword ptr [rip + .Lx716_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain159_n415_α
.Lx716_0:
 .quad 0
# IR_VAR_REF
 xchain159_n413_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain159_n416_α
 xchain159_n414_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1008]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n417_α
 xchain159_n414_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n415_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1536] -> [zr+1488]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1488]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain159_n403_α
 jmp xchain159_n418_α
 xchain159_n415_β:
 jmp xchain159_n403_α
# IR_LIT_INTEGER
 xchain159_n416_α:
 mov qword ptr [rbp + 1264], 6
 mov rax, qword ptr [rip + .Lx721_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain159_n419_α
.Lx721_0:
 .quad 6
# IR_VAR_REF
 xchain159_n417_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain159_n420_α
# IR_SUSPEND yield+resume
 xchain159_n418_α:
 lea rax, [rip + xchain159_n418_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n418_β:
 jmp xchain159_n403_α
 xchain159_n419_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1184]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1184]
 movabs rsi, 6
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain159_n414_α
 jmp xchain159_n421_α
 xchain159_n419_β:
 jmp xchain159_n414_α
# IR_LIT_STRING
 xchain159_n420_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx727_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain159_n422_α
.Lx727_0:
 .quad .Lx727_0_s
.Lx727_0_s:
 .string "November"
# IR_VAR_REF
 xchain159_n421_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain159_n423_α
 xchain159_n422_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+880]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 888], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 880]
 mov rsi, qword ptr [rip + .Lx730_2]
 jmp .Lx730_3
.Lx730_2:
 .quad .Lx730_2_s
.Lx730_2_s:
 .string "November"
.Lx730_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain159_n425_α
 jmp xchain159_n424_α
 xchain159_n422_β:
 jmp xchain159_n425_α
# IR_LIT_INTEGER
 xchain159_n423_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx731_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain159_n426_α
.Lx731_0:
 .quad 0
# IR_VAR_REF
 xchain159_n424_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain159_n427_α
 xchain159_n425_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+576]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_cal_key$2F3_ω
 jmp xchain159_n428_α
 xchain159_n425_β:
 jmp proc_cal_key$2F3_ω
 xchain159_n426_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1104] -> [zr+1056]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1056]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je xchain159_n414_α
 jmp xchain159_n429_α
 xchain159_n426_β:
 jmp xchain159_n414_α
# IR_LIT_INTEGER
 xchain159_n427_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx736_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain159_n430_α
.Lx736_0:
 .quad 2
# IR_VAR_REF
 xchain159_n428_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain159_n431_α
# IR_SUSPEND yield+resume
 xchain159_n429_α:
 lea rax, [rip + xchain159_n429_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n429_β:
 jmp xchain159_n414_α
 xchain159_n430_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+752]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 752]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain159_n425_α
 jmp xchain159_n432_α
 xchain159_n430_β:
 jmp xchain159_n425_α
# IR_LIT_STRING
 xchain159_n431_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx742_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain159_n433_α
.Lx742_0:
 .quad .Lx742_0_s
.Lx742_0_s:
 .string "December"
# IR_VAR_REF
 xchain159_n432_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain159_n434_α
 xchain159_n433_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 448]
 mov rsi, qword ptr [rip + .Lx745_2]
 jmp .Lx745_3
.Lx745_2:
 .quad .Lx745_2_s
.Lx745_2_s:
 .string "December"
.Lx745_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain159_n436_α
 jmp xchain159_n435_α
 xchain159_n433_β:
 jmp xchain159_n436_α
# IR_LIT_INTEGER
 xchain159_n434_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx746_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain159_n437_α
.Lx746_0:
 .quad 0
# IR_VAR_REF
 xchain159_n435_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
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
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 624]
 movabs rsi, 0
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain159_n425_α
 jmp xchain159_n439_α
 xchain159_n437_β:
 jmp xchain159_n425_α
# IR_LIT_INTEGER
 xchain159_n438_α:
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx751_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain159_n440_α
.Lx751_0:
 .quad 4
# IR_SUSPEND yield+resume
 xchain159_n439_α:
 lea rax, [rip + xchain159_n439_β]
 mov qword ptr [rbp + 17792], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_cal_key$2F3_γ
 xchain159_n439_β:
 jmp xchain159_n425_α
 xchain159_n440_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 320]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain159_n436_α
 jmp xchain159_n441_α
 xchain159_n440_β:
 jmp xchain159_n436_α
# IR_VAR_REF
 xchain159_n441_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain159_n442_α
# IR_LIT_INTEGER
 xchain159_n442_α:
 mov qword ptr [rbp + 272], 6
 mov rax, qword ptr [rip + .Lx757_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain159_n443_α
.Lx757_0:
 .quad 0
 xchain159_n443_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+240] -> [zr+192]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 248]
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
 mov qword ptr [rbp + 17792], rax
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
jmp qword ptr [rbp + 17792]
proc_cal_key$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_cal_key$2F3_res]
push rax
mov rax, [rbp + 17832]
mov rbp, [rbp + 17848]
jmp rax
proc_cal_key$2F3_ω:
mov rax, [rbp + 17840]
lea rsp, [rbp + 17856]
mov rbp, [rbp + 17848]
jmp rax
  .globl proc_compute_it$2F5_α
proc_compute_it$2F5_α:
#=======================================================================================================================
    .global proc_compute_it$2F5_α
    .global proc_compute_it$2F5_β
    .global proc_compute_it$2F5_γ
    .global proc_compute_it$2F5_ω
  sub rsp, 2816
  mov [rsp + 2792], rcx
  mov [rsp + 2800], rdx
  mov [rsp + 2808], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2648], rsp
  mov rdi, rsp
  mov esi, 2624
  mov edx, 2784
  call rt_jmp_frame_lexprep2@PLT
proc_compute_it$2F5_α_body:
lea rax, [rip + xchain761_n55_β]
mov qword ptr [rbp + 2624], rax
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
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain761_n2_α
# IR_VAR_REF
 xchain761_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2656]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain761_n3_α
 xchain761_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2560] -> [zr+2512]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2520], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2528]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2512]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2496], rax
 mov qword ptr [rbp + 2504], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n4_α
 xchain761_n3_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
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
 lea rdx, [rbp + 2752]
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 jmp xchain761_n7_α
 xchain761_n7_α:
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
 je xchain761_n5_α
 jmp xchain761_n8_α
 xchain761_n7_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain761_n9_α
# IR_VAR_REF
 xchain761_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2768]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain761_n10_α
 xchain761_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2256]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n11_α
 xchain761_n10_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain761_n12_α
# IR_VAR_REF
 xchain761_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2688]
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain761_n13_α
 xchain761_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2128]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n14_α
 xchain761_n13_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 80]
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain761_n15_α
# IR_VAR_REF
 xchain761_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2704]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain761_n16_α
 xchain761_n16_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2000]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n17_α
 xchain761_n16_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2720]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain761_n18_α
# IR_VAR
 xchain761_n18_α:
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 1928], rax
 jmp xchain761_n19_α
# IR_LIT_INTEGER
 xchain761_n19_α:
 mov qword ptr [rbp + 1952], 6
 mov rax, qword ptr [rip + .Lx793_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain761_n20_α
.Lx793_0:
 .quad 100
 xchain761_n20_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 1872]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n21_α
 xchain761_n20_β:
 jmp xchain761_n5_α
 xchain761_n21_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1824] -> [zr+1776]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 1784], rax
# marshal arg1 = producer-box slot [zr+1856] -> [zr+1792]
 mov rax, qword ptr [rbp + 1856]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1864]
 mov qword ptr [rbp + 1800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1776]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n22_α
 xchain761_n21_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2736]
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 jmp xchain761_n23_α
# IR_VAR
 xchain761_n23_α:
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 1608], rax
 jmp xchain761_n24_α
# IR_VAR
 xchain761_n24_α:
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 1704], rax
 jmp xchain761_n25_α
# IR_LIT_INTEGER
 xchain761_n25_α:
 mov qword ptr [rbp + 1728], 6
 mov rax, qword ptr [rip + .Lx802_0]
 mov qword ptr [rbp + 1736], rax
 jmp xchain761_n26_α
.Lx802_0:
 .quad 100
 xchain761_n26_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1656], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1664]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mul (no by-name dispatch)
 lea rdi, [rbp + 1648]
 mov esi, 2
 call rt_pl_dop_ax_mul@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n27_α
 xchain761_n26_β:
 jmp xchain761_n5_α
 xchain761_n27_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 1552]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n28_α
 xchain761_n27_β:
 jmp xchain761_n5_α
 xchain761_n28_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1504] -> [zr+1456]
 mov rax, qword ptr [rbp + 1504]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1512]
 mov qword ptr [rbp + 1464], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1472]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 1456]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n29_α
 xchain761_n28_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2672]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain761_n30_α
# IR_VAR
 xchain761_n30_α:
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 1000], rax
 jmp xchain761_n31_α
# IR_LIT_INTEGER
 xchain761_n31_α:
 mov qword ptr [rbp + 1024], 6
 mov rax, qword ptr [rip + .Lx810_0]
 mov qword ptr [rbp + 1032], rax
 jmp xchain761_n32_α
.Lx810_0:
 .quad 5
 xchain761_n32_α:
# BOX IR_CALL $ax_mul(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mul (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 2
 call rt_pl_dop_ax_mul@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n33_α
 xchain761_n32_β:
 jmp xchain761_n5_α
# IR_VAR
 xchain761_n33_α:
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 1128], rax
 jmp xchain761_n34_α
# IR_LIT_INTEGER
 xchain761_n34_α:
 mov qword ptr [rbp + 1152], 6
 mov rax, qword ptr [rip + .Lx814_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain761_n35_α
.Lx814_0:
 .quad 4
 xchain761_n35_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n36_α
 xchain761_n35_β:
 jmp xchain761_n5_α
 xchain761_n36_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+880]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+896]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n37_α
 xchain761_n36_β:
 jmp xchain761_n5_α
# IR_VAR
 xchain761_n37_α:
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 1192], rax
 jmp xchain761_n38_α
 xchain761_n38_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+816]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 824], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+832]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n39_α
 xchain761_n38_β:
 jmp xchain761_n5_α
# IR_VAR
 xchain761_n39_α:
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 1288], rax
 jmp xchain761_n40_α
# IR_LIT_INTEGER
 xchain761_n40_α:
 mov qword ptr [rbp + 1312], 6
 mov rax, qword ptr [rip + .Lx822_0]
 mov qword ptr [rbp + 1320], rax
 jmp xchain761_n41_α
.Lx822_0:
 .quad 4
 xchain761_n41_α:
# BOX IR_CALL $ax_idiv(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1232]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1312] -> [zr+1248]
 mov rax, qword ptr [rbp + 1312]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1320]
 mov qword ptr [rbp + 1256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_idiv (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 2
 call rt_pl_dop_ax_idiv@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n42_α
 xchain761_n41_β:
 jmp xchain761_n5_α
 xchain761_n42_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+752]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+768]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n43_α
 xchain761_n42_β:
 jmp xchain761_n5_α
# IR_VAR
 xchain761_n43_α:
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 1352], rax
 jmp xchain761_n44_α
 xchain761_n44_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+736] -> [zr+688]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 696], rax
# marshal arg1 = producer-box slot [zr+1344] -> [zr+704]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 688]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n45_α
 xchain761_n44_β:
 jmp xchain761_n5_α
# IR_VAR
 xchain761_n45_α:
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 1384], rax
 jmp xchain761_n46_α
 xchain761_n46_α:
# BOX IR_CALL $ax_add(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+640]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 648], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_add (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 2
 call rt_pl_dop_ax_add@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n47_α
 xchain761_n46_β:
 jmp xchain761_n5_α
# IR_LIT_INTEGER
 xchain761_n47_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx831_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain761_n48_α
.Lx831_0:
 .quad 7
 xchain761_n48_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+560]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+576]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n49_α
 xchain761_n48_β:
 jmp xchain761_n5_α
 xchain761_n49_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 464]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n50_α
 xchain761_n49_β:
 jmp xchain761_n5_α
# IR_VAR_REF
 xchain761_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2656]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain761_n51_α
# IR_VAR_REF
 xchain761_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2672]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain761_n52_α
# IR_VAR_REF
 xchain761_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2688]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain761_n53_α
# IR_VAR_REF
 xchain761_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2704]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain761_n54_α
 xchain761_n54_α:
 mov qword ptr [rbp + 288], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 352]
 mov rdx, qword ptr [rbp + 360]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 384]
 mov rdx, qword ptr [rbp + 392]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 416]
 mov rdx, qword ptr [rbp + 424]
 call rt_arg_stage@PLT
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
 mov qword ptr [rbp + 296], rsp
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx843_5
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx843_2
.Lx843_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx843_2
.Lx843_4:
 mov rax, qword ptr [rbp + 288]
 test rax, rax
 jne .Lx843_6
 mov qword ptr [rbp + 288], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx843_2
.Lx843_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx843_2
.Lx843_1:
 call rt_faildescr@PLT
.Lx843_2:
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain761_n5_α
 jmp xchain761_n55_α
 xchain761_n54_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 296]
 jmp qword ptr [rsp]
.Lx843_0:
 .quad .Lx843_0_s
.Lx843_0_s:
 .string "leap_year/4"
# IR_SUSPEND yield+resume
 xchain761_n55_α:
 lea rax, [rip + xchain761_n55_β]
 mov qword ptr [rbp + 2624], rax
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
jmp qword ptr [rbp + 2624]
proc_compute_it$2F5_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_compute_it$2F5_res]
push rax
mov rax, [rbp + 2792]
mov rbp, [rbp + 2808]
jmp rax
proc_compute_it$2F5_ω:
mov rax, [rbp + 2800]
lea rsp, [rbp + 2816]
mov rbp, [rbp + 2808]
jmp rax
  .globl proc_leap_year$2F4_α
proc_leap_year$2F4_α:
#=======================================================================================================================
    .global proc_leap_year$2F4_α
    .global proc_leap_year$2F4_β
    .global proc_leap_year$2F4_γ
    .global proc_leap_year$2F4_ω
  sub rsp, 4240
  mov [rsp + 4216], rcx
  mov [rsp + 4224], rdx
  mov [rsp + 4232], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 4104], rsp
  mov rdi, rsp
  mov esi, 4080
  mov edx, 4208
  call rt_jmp_frame_lexprep2@PLT
proc_leap_year$2F4_α_body:
lea rax, [rip + xchain846_n65_β]
mov qword ptr [rbp + 4080], rax
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
 mov qword ptr [rbp + 4016], rax
 mov qword ptr [rbp + 4024], rdx
 jmp xchain846_n2_α
# IR_VAR_REF
 xchain846_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4192]
 mov qword ptr [rbp + 4048], rax
 mov qword ptr [rbp + 4056], rdx
 jmp xchain846_n3_α
 xchain846_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+4016] -> [zr+3968]
 mov rax, qword ptr [rbp + 4016]
 mov qword ptr [rbp + 3968], rax
 mov rax, qword ptr [rbp + 4024]
 mov qword ptr [rbp + 3976], rax
# marshal arg1 = producer-box slot [zr+4048] -> [zr+3984]
 mov rax, qword ptr [rbp + 4048]
 mov qword ptr [rbp + 3984], rax
 mov rax, qword ptr [rbp + 4056]
 mov qword ptr [rbp + 3992], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3968]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3952], rax
 mov qword ptr [rbp + 3960], rdx
 cmp eax, 99
 je xchain846_n5_α
 jmp xchain846_n4_α
 xchain846_n3_β:
 jmp xchain846_n5_α
# IR_VAR_REF
 xchain846_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 3888], rax
 mov qword ptr [rbp + 3896], rdx
 jmp xchain846_n6_α
 xchain846_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+3168]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 3168], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 3176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 3168]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 3152], rax
 mov qword ptr [rbp + 3160], rdx
 cmp eax, 99
 je proc_leap_year$2F4_ω
 jmp xchain846_n7_α
 xchain846_n5_β:
 jmp proc_leap_year$2F4_ω
# IR_VAR_REF
 xchain846_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4144]
 mov qword ptr [rbp + 3920], rax
 mov qword ptr [rbp + 3928], rdx
 jmp xchain846_n8_α
# IR_VAR_REF
 xchain846_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 3088], rax
 mov qword ptr [rbp + 3096], rdx
 jmp xchain846_n9_α
 xchain846_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3888] -> [zr+3840]
 mov rax, qword ptr [rbp + 3888]
 mov qword ptr [rbp + 3840], rax
 mov rax, qword ptr [rbp + 3896]
 mov qword ptr [rbp + 3848], rax
# marshal arg1 = producer-box slot [zr+3920] -> [zr+3856]
 mov rax, qword ptr [rbp + 3920]
 mov qword ptr [rbp + 3856], rax
 mov rax, qword ptr [rbp + 3928]
 mov qword ptr [rbp + 3864], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3840]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3824], rax
 mov qword ptr [rbp + 3832], rdx
 cmp eax, 99
 je xchain846_n5_α
 jmp xchain846_n10_α
 xchain846_n8_β:
 jmp xchain846_n5_α
# IR_VAR_REF
 xchain846_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4192]
 mov qword ptr [rbp + 3120], rax
 mov qword ptr [rbp + 3128], rdx
 jmp xchain846_n11_α
# IR_VAR_REF
 xchain846_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 3760], rax
 mov qword ptr [rbp + 3768], rdx
 jmp xchain846_n12_α
 xchain846_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3088] -> [zr+3040]
 mov rax, qword ptr [rbp + 3088]
 mov qword ptr [rbp + 3040], rax
 mov rax, qword ptr [rbp + 3096]
 mov qword ptr [rbp + 3048], rax
# marshal arg1 = producer-box slot [zr+3120] -> [zr+3056]
 mov rax, qword ptr [rbp + 3120]
 mov qword ptr [rbp + 3056], rax
 mov rax, qword ptr [rbp + 3128]
 mov qword ptr [rbp + 3064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3040]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3024], rax
 mov qword ptr [rbp + 3032], rdx
 cmp eax, 99
 je xchain846_n14_α
 jmp xchain846_n13_α
 xchain846_n11_β:
 jmp xchain846_n14_α
# IR_VAR_REF
 xchain846_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4176]
 mov qword ptr [rbp + 3792], rax
 mov qword ptr [rbp + 3800], rdx
 jmp xchain846_n15_α
# IR_VAR_REF
 xchain846_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2960], rax
 mov qword ptr [rbp + 2968], rdx
 jmp xchain846_n16_α
 xchain846_n14_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+2016]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 2024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2016]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2000], rax
 mov qword ptr [rbp + 2008], rdx
 cmp eax, 99
 je proc_leap_year$2F4_ω
 jmp xchain846_n17_α
 xchain846_n14_β:
 jmp proc_leap_year$2F4_ω
 xchain846_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3760] -> [zr+3712]
 mov rax, qword ptr [rbp + 3760]
 mov qword ptr [rbp + 3712], rax
 mov rax, qword ptr [rbp + 3768]
 mov qword ptr [rbp + 3720], rax
# marshal arg1 = producer-box slot [zr+3792] -> [zr+3728]
 mov rax, qword ptr [rbp + 3792]
 mov qword ptr [rbp + 3728], rax
 mov rax, qword ptr [rbp + 3800]
 mov qword ptr [rbp + 3736], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3712]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3696], rax
 mov qword ptr [rbp + 3704], rdx
 cmp eax, 99
 je xchain846_n5_α
 jmp xchain846_n18_α
 xchain846_n15_β:
 jmp xchain846_n5_α
# IR_VAR_REF
 xchain846_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4144]
 mov qword ptr [rbp + 2992], rax
 mov qword ptr [rbp + 3000], rdx
 jmp xchain846_n19_α
# IR_VAR_REF
 xchain846_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1936], rax
 mov qword ptr [rbp + 1944], rdx
 jmp xchain846_n20_α
# IR_VAR_REF
 xchain846_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 3632], rax
 mov qword ptr [rbp + 3640], rdx
 jmp xchain846_n21_α
 xchain846_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2960] -> [zr+2912]
 mov rax, qword ptr [rbp + 2960]
 mov qword ptr [rbp + 2912], rax
 mov rax, qword ptr [rbp + 2968]
 mov qword ptr [rbp + 2920], rax
# marshal arg1 = producer-box slot [zr+2992] -> [zr+2928]
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 2928], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 2936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2912]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2896], rax
 mov qword ptr [rbp + 2904], rdx
 cmp eax, 99
 je xchain846_n14_α
 jmp xchain846_n22_α
 xchain846_n19_β:
 jmp xchain846_n14_α
# IR_VAR_REF
 xchain846_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4192]
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 jmp xchain846_n23_α
# IR_VAR_REF
 xchain846_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 3664], rax
 mov qword ptr [rbp + 3672], rdx
 jmp xchain846_n24_α
# IR_VAR_REF
 xchain846_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2832], rax
 mov qword ptr [rbp + 2840], rdx
 jmp xchain846_n25_α
 xchain846_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1936] -> [zr+1888]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 1896], rax
# marshal arg1 = producer-box slot [zr+1968] -> [zr+1904]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 1912], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1888]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je xchain846_n27_α
 jmp xchain846_n26_α
 xchain846_n23_β:
 jmp xchain846_n27_α
 xchain846_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3632] -> [zr+3584]
 mov rax, qword ptr [rbp + 3632]
 mov qword ptr [rbp + 3584], rax
 mov rax, qword ptr [rbp + 3640]
 mov qword ptr [rbp + 3592], rax
# marshal arg1 = producer-box slot [zr+3664] -> [zr+3600]
 mov rax, qword ptr [rbp + 3664]
 mov qword ptr [rbp + 3600], rax
 mov rax, qword ptr [rbp + 3672]
 mov qword ptr [rbp + 3608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 3584]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 3568], rax
 mov qword ptr [rbp + 3576], rdx
 cmp eax, 99
 je xchain846_n5_α
 jmp xchain846_n28_α
 xchain846_n24_β:
 jmp xchain846_n5_α
# IR_VAR_REF
 xchain846_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4160]
 mov qword ptr [rbp + 2864], rax
 mov qword ptr [rbp + 2872], rdx
 jmp xchain846_n29_α
# IR_VAR_REF
 xchain846_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain846_n30_α
 xchain846_n27_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1088]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1088]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je proc_leap_year$2F4_ω
 jmp xchain846_n31_α
 xchain846_n27_β:
 jmp proc_leap_year$2F4_ω
# IR_LIT_INTEGER
 xchain846_n28_α:
 mov qword ptr [rbp + 3408], 6
 mov rax, qword ptr [rip + .Lx892_0]
 mov qword ptr [rbp + 3416], rax
 jmp xchain846_n32_α
.Lx892_0:
 .quad 0
 xchain846_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2832] -> [zr+2784]
 mov rax, qword ptr [rbp + 2832]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2840]
 mov qword ptr [rbp + 2792], rax
# marshal arg1 = producer-box slot [zr+2864] -> [zr+2800]
 mov rax, qword ptr [rbp + 2864]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2872]
 mov qword ptr [rbp + 2808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2784]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain846_n14_α
 jmp xchain846_n33_α
 xchain846_n29_β:
 jmp xchain846_n14_α
# IR_VAR_REF
 xchain846_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4144]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain846_n34_α
# IR_VAR_REF
 xchain846_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain846_n35_α
# IR_VAR
 xchain846_n32_α:
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 3504], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 3512], rax
 jmp xchain846_n36_α
# IR_VAR_REF
 xchain846_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain846_n37_α
 xchain846_n34_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1760]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1768], rax
# marshal arg1 = producer-box slot [zr+1840] -> [zr+1776]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1760]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 cmp eax, 99
 je xchain846_n27_α
 jmp xchain846_n38_α
 xchain846_n34_β:
 jmp xchain846_n27_α
# IR_VAR_REF
 xchain846_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4176]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain846_n39_α
# IR_LIT_INTEGER
 xchain846_n36_α:
 mov qword ptr [rbp + 3536], 6
 mov rax, qword ptr [rip + .Lx905_0]
 mov qword ptr [rbp + 3544], rax
 jmp xchain846_n40_α
.Lx905_0:
 .quad 4
# IR_VAR_REF
 xchain846_n37_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 2736], rax
 mov qword ptr [rbp + 2744], rdx
 jmp xchain846_n41_α
# IR_VAR_REF
 xchain846_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1680], rax
 mov qword ptr [rbp + 1688], rdx
 jmp xchain846_n42_α
 xchain846_n39_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n43_α
 xchain846_n39_β:
 jmp xchain846_n44_α
 xchain846_n40_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+3504] -> [zr+3456]
 mov rax, qword ptr [rbp + 3504]
 mov qword ptr [rbp + 3456], rax
 mov rax, qword ptr [rbp + 3512]
 mov qword ptr [rbp + 3464], rax
# marshal arg1 = producer-box slot [zr+3536] -> [zr+3472]
 mov rax, qword ptr [rbp + 3536]
 mov qword ptr [rbp + 3472], rax
 mov rax, qword ptr [rbp + 3544]
 mov qword ptr [rbp + 3480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 3456]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 3440], rax
 mov qword ptr [rbp + 3448], rdx
 cmp eax, 99
 je xchain846_n5_α
 jmp xchain846_n45_α
 xchain846_n40_β:
 jmp xchain846_n5_α
 xchain846_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2656]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2664], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2672]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2656]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain846_n14_α
 jmp xchain846_n46_α
 xchain846_n41_β:
 jmp xchain846_n14_α
# IR_VAR_REF
 xchain846_n42_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4176]
 mov qword ptr [rbp + 1712], rax
 mov qword ptr [rbp + 1720], rdx
 jmp xchain846_n47_α
# IR_VAR_REF
 xchain846_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
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
# marshal arg0 = producer-box slot [zr+3408] -> [zr+3360]
 mov rax, qword ptr [rbp + 3408]
 mov qword ptr [rbp + 3360], rax
 mov rax, qword ptr [rbp + 3416]
 mov qword ptr [rbp + 3368], rax
# marshal arg1 = producer-box slot [zr+3440] -> [zr+3376]
 mov rax, qword ptr [rbp + 3440]
 mov qword ptr [rbp + 3376], rax
 mov rax, qword ptr [rbp + 3448]
 mov qword ptr [rbp + 3384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 3360]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 3344], rax
 mov qword ptr [rbp + 3352], rdx
 cmp eax, 99
 je xchain846_n5_α
 jmp xchain846_n49_α
 xchain846_n45_β:
 jmp xchain846_n5_α
# IR_LIT_INTEGER
 xchain846_n46_α:
 mov qword ptr [rbp + 2480], 6
 mov rax, qword ptr [rip + .Lx919_0]
 mov qword ptr [rbp + 2488], rax
 jmp xchain846_n50_α
.Lx919_0:
 .quad 0
 xchain846_n47_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1680] -> [zr+1632]
 mov rax, qword ptr [rbp + 1680]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1688]
 mov qword ptr [rbp + 1640], rax
# marshal arg1 = producer-box slot [zr+1712] -> [zr+1648]
 mov rax, qword ptr [rbp + 1712]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1720]
 mov qword ptr [rbp + 1656], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1632]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain846_n27_α
 jmp xchain846_n51_α
 xchain846_n47_β:
 jmp xchain846_n27_α
# IR_VAR_REF
 xchain846_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4144]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain846_n52_α
 xchain846_n49_α:
# IR_CUT
 jmp xchain846_n53_α
# IR_VAR
 xchain846_n50_α:
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 2584], rax
 jmp xchain846_n54_α
# IR_VAR_REF
 xchain846_n51_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
 jmp xchain846_n55_α
 xchain846_n52_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 832]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n56_α
 xchain846_n52_β:
 jmp xchain846_n44_α
# IR_VAR_REF
 xchain846_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4144]
 mov qword ptr [rbp + 3280], rax
 mov qword ptr [rbp + 3288], rdx
 jmp xchain846_n57_α
# IR_LIT_INTEGER
 xchain846_n54_α:
 mov qword ptr [rbp + 2608], 6
 mov rax, qword ptr [rip + .Lx931_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain846_n58_α
.Lx931_0:
 .quad 100
# IR_VAR_REF
 xchain846_n55_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain846_n59_α
# IR_VAR_REF
 xchain846_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain846_n60_α
# IR_VAR_REF
 xchain846_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 3312], rax
 mov qword ptr [rbp + 3320], rdx
 jmp xchain846_n61_α
 xchain846_n58_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2576] -> [zr+2528]
 mov rax, qword ptr [rbp + 2576]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2584]
 mov qword ptr [rbp + 2536], rax
# marshal arg1 = producer-box slot [zr+2608] -> [zr+2544]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 2528]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 cmp eax, 99
 je xchain846_n14_α
 jmp xchain846_n62_α
 xchain846_n58_β:
 jmp xchain846_n14_α
 xchain846_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1504]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je xchain846_n27_α
 jmp xchain846_n63_α
 xchain846_n59_β:
 jmp xchain846_n27_α
# IR_VAR_REF
 xchain846_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4160]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain846_n64_α
 xchain846_n61_α:
 mov qword ptr [rbp + 3248], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 3280]
 mov rdx, qword ptr [rbp + 3288]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 3312]
 mov rdx, qword ptr [rbp + 3320]
 call rt_arg_stage@PLT
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
 mov qword ptr [rbp + 3256], rsp
 mov rax, qword ptr [rbp + 3248]
 test rax, rax
 jne .Lx943_5
 mov qword ptr [rbp + 3248], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx943_2
.Lx943_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx943_2
.Lx943_4:
 mov rax, qword ptr [rbp + 3248]
 test rax, rax
 jne .Lx943_6
 mov qword ptr [rbp + 3248], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx943_2
.Lx943_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx943_2
.Lx943_1:
 call rt_faildescr@PLT
.Lx943_2:
 mov qword ptr [rbp + 3200], rax
 mov qword ptr [rbp + 3208], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n65_α
 xchain846_n61_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 3256]
 jmp qword ptr [rsp]
.Lx943_0:
 .quad .Lx943_0_s
.Lx943_0_s:
 .string "dow/2"
 xchain846_n62_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+2432]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2440], rax
# marshal arg1 = producer-box slot [zr+2512] -> [zr+2448]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 2432]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 cmp eax, 99
 je xchain846_n14_α
 jmp xchain846_n66_α
 xchain846_n62_β:
 jmp xchain846_n14_α
# IR_LIT_INTEGER
 xchain846_n63_α:
 mov qword ptr [rbp + 1328], 6
 mov rax, qword ptr [rip + .Lx945_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain846_n67_α
.Lx945_0:
 .quad 0
 xchain846_n64_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 704]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n68_α
 xchain846_n64_β:
 jmp xchain846_n44_α
# IR_SUSPEND yield+resume
 xchain846_n65_α:
 lea rax, [rip + xchain846_n65_β]
 mov qword ptr [rbp + 4080], rax
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
 mov rax, qword ptr [rbp + 4192]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 4200]
 mov qword ptr [rbp + 1432], rax
 jmp xchain846_n70_α
# IR_VAR_REF
 xchain846_n68_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain846_n71_α
# IR_VAR_REF
 xchain846_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4176]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain846_n72_α
# IR_LIT_INTEGER
 xchain846_n70_α:
 mov qword ptr [rbp + 1456], 6
 mov rax, qword ptr [rip + .Lx956_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain846_n73_α
.Lx956_0:
 .quad 400
# IR_VAR_REF
 xchain846_n71_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 jmp xchain846_n74_α
# IR_VAR
 xchain846_n72_α:
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 2360], rax
 jmp xchain846_n75_α
 xchain846_n73_α:
# BOX IR_CALL $ax_mod(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1376]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1456] -> [zr+1392]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1400], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_mod (no by-name dispatch)
 lea rdi, [rbp + 1376]
 mov esi, 2
 call rt_pl_dop_ax_mod@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain846_n27_α
 jmp xchain846_n76_α
 xchain846_n73_β:
 jmp xchain846_n27_α
 xchain846_n74_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+576]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+656] -> [zr+592]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n77_α
 xchain846_n74_β:
 jmp xchain846_n44_α
# IR_VAR
 xchain846_n75_α:
 mov rax, qword ptr [rbp + 4160]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 4168]
 mov qword ptr [rbp + 2392], rax
 jmp xchain846_n78_α
 xchain846_n76_α:
# BOX IR_CALL $cmp_ne(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_ne (no by-name dispatch)
 lea rdi, [rbp + 1280]
 mov esi, 2
 call rt_pl_dop_cmp_ne@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je xchain846_n27_α
 jmp xchain846_n79_α
 xchain846_n76_β:
 jmp xchain846_n27_α
# IR_VAR_REF
 xchain846_n77_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4112]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain846_n80_α
 xchain846_n78_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2352] -> [zr+2304]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2304], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2312], rax
# marshal arg1 = producer-box slot [zr+2384] -> [zr+2320]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 2304]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
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
 mov rax, qword ptr [rbp + 4144]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 4152]
 mov qword ptr [rbp + 504], rax
 jmp xchain846_n83_α
 xchain846_n81_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2256] -> [zr+2208]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2216], rax
# marshal arg1 = producer-box slot [zr+2288] -> [zr+2224]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 2208]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 2192], rax
 mov qword ptr [rbp + 2200], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n84_α
 xchain846_n81_β:
 jmp xchain846_n44_α
# IR_VAR_REF
 xchain846_n82_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4144]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain846_n85_α
# IR_VAR
 xchain846_n83_α:
 mov rax, qword ptr [rbp + 4160]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 4168]
 mov qword ptr [rbp + 536], rax
 jmp xchain846_n86_α
# IR_VAR_REF
 xchain846_n84_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4176]
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 jmp xchain846_n87_α
# IR_VAR_REF
 xchain846_n85_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain846_n88_α
 xchain846_n86_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+464]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n89_α
 xchain846_n86_β:
 jmp xchain846_n44_α
# IR_VAR_REF
 xchain846_n87_α:
 mov rax, 4294967305
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 2160], rax
 mov qword ptr [rbp + 2168], rdx
 jmp xchain846_n90_α
 xchain846_n88_α:
 mov qword ptr [rbp + 1168], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1200]
 mov rdx, qword ptr [rbp + 1208]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1232]
 mov rdx, qword ptr [rbp + 1240]
 call rt_arg_stage@PLT
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
 mov qword ptr [rbp + 1176], rsp
 mov rax, qword ptr [rbp + 1168]
 test rax, rax
 jne .Lx985_5
 mov qword ptr [rbp + 1168], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx985_2
.Lx985_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx985_2
.Lx985_4:
 mov rax, qword ptr [rbp + 1168]
 test rax, rax
 jne .Lx985_6
 mov qword ptr [rbp + 1168], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx985_2
.Lx985_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx985_2
.Lx985_1:
 call rt_faildescr@PLT
.Lx985_2:
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n91_α
 xchain846_n88_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1176]
 jmp qword ptr [rsp]
.Lx985_0:
 .quad .Lx985_0_s
.Lx985_0_s:
 .string "dow/2"
 xchain846_n89_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n92_α
 xchain846_n89_β:
 jmp xchain846_n44_α
 xchain846_n90_α:
 mov qword ptr [rbp + 2096], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2128]
 mov rdx, qword ptr [rbp + 2136]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2160]
 mov rdx, qword ptr [rbp + 2168]
 call rt_arg_stage@PLT
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
 mov qword ptr [rbp + 2104], rsp
 mov rax, qword ptr [rbp + 2096]
 test rax, rax
 jne .Lx988_5
 mov qword ptr [rbp + 2096], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx988_2
.Lx988_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx988_2
.Lx988_4:
 mov rax, qword ptr [rbp + 2096]
 test rax, rax
 jne .Lx988_6
 mov qword ptr [rbp + 2096], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx988_2
.Lx988_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx988_2
.Lx988_1:
 call rt_faildescr@PLT
.Lx988_2:
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n93_α
 xchain846_n90_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2104]
 jmp qword ptr [rsp]
.Lx988_0:
 .quad .Lx988_0_s
.Lx988_0_s:
 .string "dow/2"
# IR_SUSPEND yield+resume
 xchain846_n91_α:
 lea rax, [rip + xchain846_n91_β]
 mov qword ptr [rbp + 4080], rax
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
 lea rdx, [rbp + 4112]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain846_n94_α
# IR_SUSPEND yield+resume
 xchain846_n93_α:
 lea rax, [rip + xchain846_n93_β]
 mov qword ptr [rbp + 4080], rax
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
 lea rdx, [rbp + 4128]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain846_n95_α
 xchain846_n95_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
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
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx998_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx998_2
.Lx998_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx998_2
.Lx998_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx998_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx998_2
.Lx998_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx998_2
.Lx998_1:
 call rt_faildescr@PLT
.Lx998_2:
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain846_n44_α
 jmp xchain846_n96_α
 xchain846_n95_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx998_0:
 .quad .Lx998_0_s
.Lx998_0_s:
 .string "dow/2"
# IR_SUSPEND yield+resume
 xchain846_n96_α:
 lea rax, [rip + xchain846_n96_β]
 mov qword ptr [rbp + 4080], rax
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
jmp qword ptr [rbp + 4080]
proc_leap_year$2F4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_leap_year$2F4_res]
push rax
mov rax, [rbp + 4216]
mov rbp, [rbp + 4232]
jmp rax
proc_leap_year$2F4_ω:
mov rax, [rbp + 4224]
lea rsp, [rbp + 4240]
mov rbp, [rbp + 4232]
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
  mov esi, 3504
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
  mov esi, 1312
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
  mov esi, 17824
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
  mov esi, 2784
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
  mov esi, 4208
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
  mov qword ptr [rsp + 536], rsp
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
 mov qword ptr [rbp + 400], 6
 mov rax, qword ptr [rip + .Lx1003_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain1001_n2_α
.Lx1003_0:
 .quad 1993
# IR_LIT_INTEGER
 xchain1001_n2_α:
 mov qword ptr [rbp + 432], 6
 mov rax, qword ptr [rip + .Lx1004_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain1001_n3_α
.Lx1004_0:
 .quad 4
# IR_LIT_INTEGER
 xchain1001_n3_α:
 mov qword ptr [rbp + 464], 6
 mov rax, qword ptr [rip + .Lx1005_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain1001_n4_α
.Lx1005_0:
 .quad 9
# IR_VAR_REF
 xchain1001_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 544]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain1001_n5_α
 xchain1001_n5_α:
 mov qword ptr [rbp + 368], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 400]
 mov rdx, qword ptr [rbp + 408]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 432]
 mov rdx, qword ptr [rbp + 440]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
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
 mov qword ptr [rbp + 376], rsp
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx1009_5
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx1009_2
.Lx1009_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx1009_2
.Lx1009_4:
 mov rax, qword ptr [rbp + 368]
 test rax, rax
 jne .Lx1009_6
 mov qword ptr [rbp + 368], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx1009_2
.Lx1009_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx1009_2
.Lx1009_1:
 call rt_faildescr@PLT
.Lx1009_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain1001_n7_α
 jmp xchain1001_n6_α
 xchain1001_n5_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 376]
 jmp qword ptr [rsp]
.Lx1009_0:
 .quad .Lx1009_0_s
.Lx1009_0_s:
 .string "day_of_week/4"
# IR_VAR
 xchain1001_n6_α:
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 264], rax
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
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn1014: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1014]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain1001_n5_β
 jmp xchain1001_n9_α
 xchain1001_n8_β:
 jmp xchain1001_n5_β
# IR_LIT_STRING
 xchain1001_n9_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx1015_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain1001_n10_α
.Lx1015_0:
 .quad .Lx1015_0_s
.Lx1015_0_s:
 .string ""
 xchain1001_n10_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn1017: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn1017]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
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
mov rsp, qword ptr [rbp + 536]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 536]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
