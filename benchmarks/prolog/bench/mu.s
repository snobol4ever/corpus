  .intel_syntax noprefix
  .text
  .globl proc_rule$2F3_α
proc_rule$2F3_α:
#=======================================================================================================================
    .global proc_rule$2F3_α
    .global proc_rule$2F3_β
    .global proc_rule$2F3_γ
    .global proc_rule$2F3_ω
  sub rsp, 2912
  mov [rsp + 2888], rcx
  mov [rsp + 2896], rdx
  mov [rsp + 2904], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2840], rsp
  mov rdi, rsp
  mov esi, 2816
  mov edx, 2880
  call rt_jmp_frame_lexprep2@PLT
proc_rule$2F3_α_body:
lea rax, [rip + xchain0_n44_β]
mov qword ptr [rbp + 2816], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_rule$2F3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_rule$2F3_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2720], rax
 mov qword ptr [rbp + 2728], rdx
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 2752], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n3_α:
 mov qword ptr [rbp + 2784], 6
 mov rax, qword ptr [rip + .Lx5_0]
 mov qword ptr [rbp + 2792], rax
 jmp xchain0_n4_α
.Lx5_0:
 .quad 1
 xchain0_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2720] -> [zr+2672]
 mov rax, qword ptr [rbp + 2720]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2728]
 mov qword ptr [rbp + 2680], rax
# marshal arg1 = producer-box slot [zr+2752] -> [zr+2688]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2696], rax
# marshal arg2 = producer-box slot [zr+2784] -> [zr+2704]
 mov rax, qword ptr [rbp + 2784]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2792]
 mov qword ptr [rbp + 2712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2672]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2656], rax
 mov qword ptr [rbp + 2664], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain0_n7_α
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 jmp xchain0_n8_α
# IR_LIT_INTEGER
 xchain0_n7_α:
 mov qword ptr [rbp + 2624], 6
 mov rax, qword ptr [rip + .Lx11_0]
 mov qword ptr [rbp + 2632], rax
 jmp xchain0_n9_α
.Lx11_0:
 .quad 1
# IR_LIT_INTEGER
 xchain0_n8_α:
 mov qword ptr [rbp + 2080], 6
 mov rax, qword ptr [rip + .Lx12_0]
 mov qword ptr [rbp + 2088], rax
 jmp xchain0_n10_α
.Lx12_0:
 .quad 1
 xchain0_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2592] -> [zr+2560]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2568], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2560]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2544], rax
 mov qword ptr [rbp + 2552], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n10_α:
 mov qword ptr [rbp + 2112], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rbp + 2120], rax
 jmp xchain0_n13_α
.Lx14_0:
 .quad 2
# IR_VAR_REF
 xchain0_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 jmp xchain0_n14_α
 xchain0_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+2160]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 2168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 2160]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 cmp eax, 99
 je proc_rule$2F3_ω
 jmp xchain0_n6_α
 xchain0_n12_β:
 jmp proc_rule$2F3_ω
 xchain0_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+2112] -> [zr+2032]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2040], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2000]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 cmp eax, 99
 je xchain0_n16_α
 jmp xchain0_n15_α
 xchain0_n13_β:
 jmp xchain0_n16_α
# IR_VAR_REF
 xchain0_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 2512], rax
 mov qword ptr [rbp + 2520], rdx
 jmp xchain0_n17_α
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1920], rax
 mov qword ptr [rbp + 1928], rdx
 jmp xchain0_n18_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
 jmp xchain0_n19_α
 xchain0_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2480] -> [zr+2448]
 mov rax, qword ptr [rbp + 2480]
 mov qword ptr [rbp + 2448], rax
 mov rax, qword ptr [rbp + 2488]
 mov qword ptr [rbp + 2456], rax
# marshal arg1 = producer-box slot [zr+2512] -> [zr+2464]
 mov rax, qword ptr [rbp + 2512]
 mov qword ptr [rbp + 2464], rax
 mov rax, qword ptr [rbp + 2520]
 mov qword ptr [rbp + 2472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2448]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp xchain0_n12_α
# IR_LIT_INTEGER
 xchain0_n18_α:
 mov qword ptr [rbp + 1952], 6
 mov rax, qword ptr [rip + .Lx26_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain0_n21_α
.Lx26_0:
 .quad 2
# IR_LIT_INTEGER
 xchain0_n19_α:
 mov qword ptr [rbp + 1408], 6
 mov rax, qword ptr [rip + .Lx27_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain0_n22_α
.Lx27_0:
 .quad 1
# IR_VAR_REF
 xchain0_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain0_n23_α
 xchain0_n21_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1920] -> [zr+1888]
 mov rax, qword ptr [rbp + 1920]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1928]
 mov qword ptr [rbp + 1896], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1888]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n24_α
 xchain0_n21_β:
 jmp xchain0_n25_α
# IR_LIT_INTEGER
 xchain0_n22_α:
 mov qword ptr [rbp + 1440], 6
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain0_n26_α
.Lx31_0:
 .quad 3
# IR_VAR_REF
 xchain0_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1808], rax
 mov qword ptr [rbp + 1816], rdx
 jmp xchain0_n28_α
 xchain0_n25_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1488]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1488]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je proc_rule$2F3_ω
 jmp xchain0_n16_α
 xchain0_n25_β:
 jmp proc_rule$2F3_ω
 xchain0_n26_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+1440] -> [zr+1360]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1368], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1328]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
 xchain0_n26_β:
 jmp xchain0_n30_α
 xchain0_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2336]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2344], rax
# marshal arg1 = producer-box slot [zr+2400] -> [zr+2352]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2336]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp xchain0_n12_α
# IR_VAR_REF
 xchain0_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 1840], rax
 mov qword ptr [rbp + 1848], rdx
 jmp xchain0_n32_α
# IR_VAR_REF
 xchain0_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain0_n33_α
# IR_VAR_REF
 xchain0_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain0_n34_α
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain0_n35_α
 xchain0_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1776]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1784], rax
# marshal arg1 = producer-box slot [zr+1840] -> [zr+1792]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1800], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1776]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n36_α
 xchain0_n32_β:
 jmp xchain0_n25_α
# IR_LIT_INTEGER
 xchain0_n33_α:
 mov qword ptr [rbp + 1280], 6
 mov rax, qword ptr [rip + .Lx48_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain0_n37_α
.Lx48_0:
 .quad 3
# IR_LIT_INTEGER
 xchain0_n34_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx49_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain0_n38_α
.Lx49_0:
 .quad 1
# IR_VAR_REF
 xchain0_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain0_n39_α
# IR_VAR_REF
 xchain0_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain0_n40_α
 xchain0_n37_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1248] -> [zr+1216]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1224], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1216]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n41_α
 xchain0_n37_β:
 jmp xchain0_n42_α
# IR_LIT_INTEGER
 xchain0_n38_α:
 mov qword ptr [rbp + 768], 6
 mov rax, qword ptr [rip + .Lx55_0]
 mov qword ptr [rbp + 776], rax
 jmp xchain0_n43_α
.Lx55_0:
 .quad 4
 xchain0_n39_α:
 mov qword ptr [rbp + 2224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 2256]
 mov rdx, qword ptr [rbp + 2264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2288]
 mov rdx, qword ptr [rbp + 2296]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx57_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx57_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx57_3]
 lea rdx, [rip + .Lx57_4]
 jmp rax
.Lx57_3:
 mov qword ptr [rbp + 2232], rsp
 mov rax, qword ptr [rbp + 2224]
 test rax, rax
 jne .Lx57_5
 mov qword ptr [rbp + 2224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx57_2
.Lx57_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx57_2
.Lx57_4:
 mov rax, qword ptr [rbp + 2224]
 test rax, rax
 jne .Lx57_6
 mov qword ptr [rbp + 2224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx57_2
.Lx57_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx57_2
.Lx57_1:
 call rt_faildescr@PLT
.Lx57_2:
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain0_n12_α
 jmp xchain0_n44_α
 xchain0_n39_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 2232]
 jmp qword ptr [rsp]
.Lx57_0:
 .quad .Lx57_0_s
.Lx57_0_s:
 .string "rule1/2"
# IR_VAR_REF
 xchain0_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 jmp xchain0_n45_α
# IR_VAR_REF
 xchain0_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain0_n46_α
 xchain0_n42_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+816]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 816]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 cmp eax, 99
 je proc_rule$2F3_ω
 jmp xchain0_n30_α
 xchain0_n42_β:
 jmp proc_rule$2F3_ω
 xchain0_n43_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+656]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 664], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+672]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 680], rax
# marshal arg2 = producer-box slot [zr+768] -> [zr+688]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain0_n48_α
 jmp xchain0_n47_α
 xchain0_n43_β:
 jmp xchain0_n48_α
# IR_SUSPEND yield+resume
 xchain0_n44_α:
 lea rax, [rip + xchain0_n44_β]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$2F3_γ
 xchain0_n44_β:
 jmp xchain0_n39_β
 xchain0_n45_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1664]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1672], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1680]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1688], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1664]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n49_α
 xchain0_n45_β:
 jmp xchain0_n25_α
# IR_VAR_REF
 xchain0_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 jmp xchain0_n50_α
# IR_VAR_REF
 xchain0_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain0_n51_α
 xchain0_n48_α:
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
 je proc_rule$2F3_ω
 jmp proc_rule$2F3_ω
 xchain0_n48_β:
 jmp proc_rule$2F3_ω
# IR_VAR_REF
 xchain0_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain0_n52_α
 xchain0_n50_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1104]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1120]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n53_α
 xchain0_n50_β:
 jmp xchain0_n42_α
# IR_LIT_INTEGER
 xchain0_n51_α:
 mov qword ptr [rbp + 608], 6
 mov rax, qword ptr [rip + .Lx75_0]
 mov qword ptr [rbp + 616], rax
 jmp xchain0_n54_α
.Lx75_0:
 .quad 4
# IR_VAR_REF
 xchain0_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 jmp xchain0_n55_α
# IR_VAR_REF
 xchain0_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain0_n56_α
 xchain0_n54_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+576] -> [zr+544]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 552], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 544]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain0_n48_α
 jmp xchain0_n57_α
 xchain0_n54_β:
 jmp xchain0_n48_α
 xchain0_n55_α:
 mov qword ptr [rbp + 1552], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1584]
 mov rdx, qword ptr [rbp + 1592]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1616]
 mov rdx, qword ptr [rbp + 1624]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx82_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx82_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx82_3]
 lea rdx, [rip + .Lx82_4]
 jmp rax
.Lx82_3:
 mov qword ptr [rbp + 1560], rsp
 mov rax, qword ptr [rbp + 1552]
 test rax, rax
 jne .Lx82_5
 mov qword ptr [rbp + 1552], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx82_2
.Lx82_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx82_2
.Lx82_4:
 mov rax, qword ptr [rbp + 1552]
 test rax, rax
 jne .Lx82_6
 mov qword ptr [rbp + 1552], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx82_2
.Lx82_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx82_2
.Lx82_1:
 call rt_faildescr@PLT
.Lx82_2:
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain0_n25_α
 jmp xchain0_n58_α
 xchain0_n55_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1560]
 jmp qword ptr [rsp]
.Lx82_0:
 .quad .Lx82_0_s
.Lx82_0_s:
 .string "rule2/2"
# IR_VAR_REF
 xchain0_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain0_n59_α
# IR_VAR_REF
 xchain0_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain0_n60_α
# IR_SUSPEND yield+resume
 xchain0_n58_α:
 lea rax, [rip + xchain0_n58_β]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$2F3_γ
 xchain0_n58_β:
 jmp xchain0_n55_β
 xchain0_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+1008]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n61_α
 xchain0_n59_β:
 jmp xchain0_n42_α
# IR_VAR_REF
 xchain0_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain0_n62_α
# IR_VAR_REF
 xchain0_n61_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain0_n63_α
 xchain0_n62_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+464] -> [zr+432]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je xchain0_n48_α
 jmp xchain0_n64_α
 xchain0_n62_β:
 jmp xchain0_n48_α
# IR_VAR_REF
 xchain0_n63_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain0_n65_α
# IR_VAR_REF
 xchain0_n64_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain0_n66_α
 xchain0_n65_α:
 mov qword ptr [rbp + 880], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 912]
 mov rdx, qword ptr [rbp + 920]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 944]
 mov rdx, qword ptr [rbp + 952]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx100_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx100_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx100_3]
 lea rdx, [rip + .Lx100_4]
 jmp rax
.Lx100_3:
 mov qword ptr [rbp + 888], rsp
 mov rax, qword ptr [rbp + 880]
 test rax, rax
 jne .Lx100_5
 mov qword ptr [rbp + 880], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx100_2
.Lx100_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx100_2
.Lx100_4:
 mov rax, qword ptr [rbp + 880]
 test rax, rax
 jne .Lx100_6
 mov qword ptr [rbp + 880], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx100_2
.Lx100_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx100_2
.Lx100_1:
 call rt_faildescr@PLT
.Lx100_2:
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain0_n42_α
 jmp xchain0_n67_α
 xchain0_n65_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 888]
 jmp qword ptr [rsp]
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "rule3/2"
# IR_VAR_REF
 xchain0_n66_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain0_n68_α
# IR_SUSPEND yield+resume
 xchain0_n67_α:
 lea rax, [rip + xchain0_n67_β]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$2F3_γ
 xchain0_n67_β:
 jmp xchain0_n65_β
 xchain0_n68_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+320]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain0_n48_α
 jmp xchain0_n69_α
 xchain0_n68_β:
 jmp xchain0_n48_α
# IR_VAR_REF
 xchain0_n69_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain0_n70_α
# IR_VAR_REF
 xchain0_n70_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain0_n71_α
 xchain0_n71_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx111_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx111_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx111_3]
 lea rdx, [rip + .Lx111_4]
 jmp rax
.Lx111_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx111_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx111_2
.Lx111_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx111_2
.Lx111_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx111_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx111_2
.Lx111_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx111_2
.Lx111_1:
 call rt_faildescr@PLT
.Lx111_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain0_n48_α
 jmp xchain0_n72_α
 xchain0_n71_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx111_0:
 .quad .Lx111_0_s
.Lx111_0_s:
 .string "rule4/2"
# IR_SUSPEND yield+resume
 xchain0_n72_α:
 lea rax, [rip + xchain0_n72_β]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$2F3_γ
 xchain0_n72_β:
 jmp xchain0_n71_β
proc_rule$2F3_res:
add rsp, 8
pop rbp
proc_rule$2F3_β:
jmp qword ptr [rbp + 2816]
proc_rule$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule$2F3_res]
push rax
mov rax, [rbp + 2888]
mov rbp, [rbp + 2904]
jmp rax
proc_rule$2F3_ω:
mov rax, [rbp + 2896]
lea rsp, [rbp + 2912]
mov rbp, [rbp + 2904]
jmp rax
  .globl proc_rule4$2F2_α
proc_rule4$2F2_α:
#=======================================================================================================================
    .global proc_rule4$2F2_α
    .global proc_rule4$2F2_β
    .global proc_rule4$2F2_γ
    .global proc_rule4$2F2_ω
  sub rsp, 1616
  mov [rsp + 1592], rcx
  mov [rsp + 1600], rdx
  mov [rsp + 1608], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1512], rsp
  mov rdi, rsp
  mov esi, 1488
  mov edx, 1584
  call rt_jmp_frame_lexprep2@PLT
proc_rule4$2F2_α_body:
lea rax, [rip + xchain114_n31_β]
mov qword ptr [rbp + 1488], rax
 xchain114_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule4$2F2_ω
 jmp xchain114_n1_α
 xchain114_n0_β:
 jmp proc_rule4$2F2_ω
# IR_VAR_REF
 xchain114_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain114_n2_α
# IR_LIT_INTEGER
 xchain114_n2_α:
 mov qword ptr [rbp + 1424], 6
 mov rax, qword ptr [rip + .Lx118_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain114_n3_α
.Lx118_0:
 .quad 3
# IR_LIT_INTEGER
 xchain114_n3_α:
 mov qword ptr [rbp + 1456], 6
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain114_n4_α
.Lx119_0:
 .quad 0
 xchain114_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1344]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1360]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1368], rax
# marshal arg2 = producer-box slot [zr+1456] -> [zr+1376]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain114_n6_α
 jmp xchain114_n5_α
 xchain114_n4_β:
 jmp xchain114_n6_α
# IR_VAR_REF
 xchain114_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain114_n7_α
# IR_VAR_REF
 xchain114_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain114_n8_α
# IR_LIT_STRING
 xchain114_n7_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx125_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain114_n9_α
.Lx125_0:
 .quad .Lx125_0_s
.Lx125_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain114_n8_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx126_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain114_n10_α
.Lx126_0:
 .quad 3
# IR_LIT_STRING
 xchain114_n9_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain114_n11_α
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "u"
# IR_LIT_INTEGER
 xchain114_n10_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx128_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain114_n12_α
.Lx128_0:
 .quad 0
# IR_LIT_STRING
 xchain114_n11_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx129_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain114_n13_α
.Lx129_0:
 .quad .Lx129_0_s
.Lx129_0_s:
 .string "."
 xchain114_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+640]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+656]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain114_n15_α
 jmp xchain114_n14_α
 xchain114_n12_β:
 jmp xchain114_n15_α
# IR_LIT_STRING
 xchain114_n13_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx131_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain114_n16_α
.Lx131_0:
 .quad .Lx131_0_s
.Lx131_0_s:
 .string "u"
# IR_VAR_REF
 xchain114_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain114_n17_α
 xchain114_n15_α:
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
 je proc_rule4$2F2_ω
 jmp proc_rule4$2F2_ω
 xchain114_n15_β:
 jmp proc_rule4$2F2_ω
# IR_VAR_REF
 xchain114_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain114_n18_α
# IR_VAR_REF
 xchain114_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain114_n19_α
 xchain114_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1088]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1096], rax
# marshal arg1 = producer-box slot [zr+1040] -> [zr+1104]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1112], rax
# marshal arg2 = producer-box slot [zr+1008] -> [zr+1120]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1088]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 cmp eax, 99
 je proc_rule4$2F2_ω
 jmp xchain114_n20_α
 xchain114_n18_β:
 jmp proc_rule4$2F2_ω
# IR_VAR_REF
 xchain114_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain114_n21_α
 xchain114_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1248]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1072] -> [zr+1264]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain114_n23_α
 jmp xchain114_n22_α
 xchain114_n20_β:
 jmp xchain114_n23_α
 xchain114_n21_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+496]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 504], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 496]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain114_n15_α
 jmp xchain114_n24_α
 xchain114_n21_β:
 jmp xchain114_n15_α
 xchain114_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+944]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+960]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain114_n23_α
 jmp xchain114_n25_α
 xchain114_n22_β:
 jmp xchain114_n23_α
 xchain114_n23_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+784]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je proc_rule4$2F2_ω
 jmp xchain114_n6_α
 xchain114_n23_β:
 jmp proc_rule4$2F2_ω
# IR_VAR_REF
 xchain114_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain114_n26_α
# IR_VAR_REF
 xchain114_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain114_n27_α
# IR_VAR_REF
 xchain114_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain114_n28_α
# IR_VAR_REF
 xchain114_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain114_n29_α
# IR_VAR_REF
 xchain114_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain114_n30_α
 xchain114_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+848]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 832]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain114_n23_α
 jmp xchain114_n31_α
 xchain114_n29_β:
 jmp xchain114_n23_α
 xchain114_n30_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+336]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain114_n15_α
 jmp xchain114_n32_α
 xchain114_n30_β:
 jmp xchain114_n15_α
# IR_SUSPEND yield+resume
 xchain114_n31_α:
 lea rax, [rip + xchain114_n31_β]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule4$2F2_γ
 xchain114_n31_β:
 jmp xchain114_n23_α
# IR_VAR_REF
 xchain114_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain114_n33_α
# IR_VAR_REF
 xchain114_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain114_n34_α
 xchain114_n34_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx165_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx165_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx165_3]
 lea rdx, [rip + .Lx165_4]
 jmp rax
.Lx165_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx165_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx165_2
.Lx165_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx165_2
.Lx165_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx165_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx165_2
.Lx165_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx165_2
.Lx165_1:
 call rt_faildescr@PLT
.Lx165_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain114_n15_α
 jmp xchain114_n35_α
 xchain114_n34_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx165_0:
 .quad .Lx165_0_s
.Lx165_0_s:
 .string "rule4/2"
# IR_SUSPEND yield+resume
 xchain114_n35_α:
 lea rax, [rip + xchain114_n35_β]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule4$2F2_γ
 xchain114_n35_β:
 jmp xchain114_n34_β
proc_rule4$2F2_res:
add rsp, 8
pop rbp
proc_rule4$2F2_β:
jmp qword ptr [rbp + 1488]
proc_rule4$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule4$2F2_res]
push rax
mov rax, [rbp + 1592]
mov rbp, [rbp + 1608]
jmp rax
proc_rule4$2F2_ω:
mov rax, [rbp + 1600]
lea rsp, [rbp + 1616]
mov rbp, [rbp + 1608]
jmp rax
  .globl proc_rule2$2F2_α
proc_rule2$2F2_α:
#=======================================================================================================================
    .global proc_rule2$2F2_α
    .global proc_rule2$2F2_β
    .global proc_rule2$2F2_γ
    .global proc_rule2$2F2_ω
  sub rsp, 752
  mov [rsp + 728], rcx
  mov [rsp + 736], rdx
  mov [rsp + 744], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 680], rsp
  mov rdi, rsp
  mov esi, 656
  mov edx, 720
  call rt_jmp_frame_lexprep2@PLT
proc_rule2$2F2_α_body:
lea rax, [rip + xchain168_n14_β]
mov qword ptr [rbp + 656], rax
 xchain168_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule2$2F2_ω
 jmp xchain168_n1_α
 xchain168_n0_β:
 jmp proc_rule2$2F2_ω
# IR_VAR_REF
 xchain168_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain168_n2_α
# IR_LIT_STRING
 xchain168_n2_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx172_0]
 mov qword ptr [rbp + 600], rax
 jmp xchain168_n3_α
.Lx172_0:
 .quad .Lx172_0_s
.Lx172_0_s:
 .string "m"
# IR_VAR_REF
 xchain168_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 688]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain168_n4_α
 xchain168_n4_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+544]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
# marshal arg2 = producer-box slot [zr+624] -> [zr+576]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 544]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain168_n6_α
 jmp xchain168_n5_α
 xchain168_n4_β:
 jmp xchain168_n6_α
# IR_VAR_REF
 xchain168_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain168_n7_α
 xchain168_n6_α:
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
 je proc_rule2$2F2_ω
 jmp proc_rule2$2F2_ω
 xchain168_n6_β:
 jmp proc_rule2$2F2_ω
# IR_LIT_STRING
 xchain168_n7_α:
 mov qword ptr [rbp + 432], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [rbp + 440], rax
 jmp xchain168_n8_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "m"
# IR_VAR_REF
 xchain168_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 704]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain168_n9_α
 xchain168_n9_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+384]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+432] -> [zr+400]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 408], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 384]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain168_n6_α
 jmp xchain168_n10_α
 xchain168_n9_β:
 jmp xchain168_n6_α
# IR_VAR_REF
 xchain168_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 688]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain168_n11_α
# IR_VAR_REF
 xchain168_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 688]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain168_n12_α
# IR_VAR_REF
 xchain168_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 704]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain168_n13_α
 xchain168_n13_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx190_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx190_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx190_3]
 lea rdx, [rip + .Lx190_4]
 jmp rax
.Lx190_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx190_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx190_2
.Lx190_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx190_2
.Lx190_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx190_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx190_2
.Lx190_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx190_2
.Lx190_1:
 call rt_faildescr@PLT
.Lx190_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain168_n6_α
 jmp xchain168_n14_α
 xchain168_n13_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx190_0:
 .quad .Lx190_0_s
.Lx190_0_s:
 .string "my_append/3"
# IR_SUSPEND yield+resume
 xchain168_n14_α:
 lea rax, [rip + xchain168_n14_β]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule2$2F2_γ
 xchain168_n14_β:
 jmp xchain168_n13_β
proc_rule2$2F2_res:
add rsp, 8
pop rbp
proc_rule2$2F2_β:
jmp qword ptr [rbp + 656]
proc_rule2$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule2$2F2_res]
push rax
mov rax, [rbp + 728]
mov rbp, [rbp + 744]
jmp rax
proc_rule2$2F2_ω:
mov rax, [rbp + 736]
lea rsp, [rbp + 752]
mov rbp, [rbp + 744]
jmp rax
  .globl proc_theorem$2F3_α
proc_theorem$2F3_α:
#=======================================================================================================================
    .global proc_theorem$2F3_α
    .global proc_theorem$2F3_β
    .global proc_theorem$2F3_γ
    .global proc_theorem$2F3_ω
  sub rsp, 2960
  mov [rsp + 2936], rcx
  mov [rsp + 2944], rdx
  mov [rsp + 2952], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2824], rsp
  mov rdi, rsp
  mov esi, 2800
  mov edx, 2928
  call rt_jmp_frame_lexprep2@PLT
proc_theorem$2F3_α_body:
lea rax, [rip + xchain193_n61_β]
mov qword ptr [rbp + 2800], rax
 xchain193_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_theorem$2F3_ω
 jmp xchain193_n1_α
 xchain193_n0_β:
 jmp proc_theorem$2F3_ω
# IR_VAR_REF
 xchain193_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2704], rax
 mov qword ptr [rbp + 2712], rdx
 jmp xchain193_n2_α
# IR_LIT_INTEGER
 xchain193_n2_α:
 mov qword ptr [rbp + 2736], 6
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [rbp + 2744], rax
 jmp xchain193_n3_α
.Lx197_0:
 .quad 3
# IR_LIT_INTEGER
 xchain193_n3_α:
 mov qword ptr [rbp + 2768], 6
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [rbp + 2776], rax
 jmp xchain193_n4_α
.Lx198_0:
 .quad 0
 xchain193_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+2768] -> [zr+2688]
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 2656]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 2640], rax
 mov qword ptr [rbp + 2648], rdx
 cmp eax, 99
 je xchain193_n6_α
 jmp xchain193_n5_α
 xchain193_n4_β:
 jmp xchain193_n6_α
# IR_VAR_REF
 xchain193_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain193_n7_α
# IR_VAR_REF
 xchain193_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain193_n8_α
# IR_LIT_STRING
 xchain193_n7_α:
 mov qword ptr [rbp + 2608], 1
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain193_n9_α
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "."
# IR_VAR_REF
 xchain193_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain193_n10_α
# IR_LIT_STRING
 xchain193_n9_α:
 mov qword ptr [rbp + 2496], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 2504], rax
 jmp xchain193_n11_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "m"
 xchain193_n10_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1328] -> [zr+1296]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1304], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1312]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1296]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n12_α
 xchain193_n10_β:
 jmp xchain193_n13_α
# IR_LIT_STRING
 xchain193_n11_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain193_n14_α
.Lx209_0:
 .quad .Lx209_0_s
.Lx209_0_s:
 .string "."
# IR_VAR_REF
 xchain193_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain193_n15_α
 xchain193_n13_α:
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
 je proc_theorem$2F3_ω
 jmp proc_theorem$2F3_ω
 xchain193_n13_β:
 jmp proc_theorem$2F3_ω
# IR_LIT_STRING
 xchain193_n14_α:
 mov qword ptr [rbp + 2352], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 2360], rax
 jmp xchain193_n16_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "i"
# IR_VAR_REF
 xchain193_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2912]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain193_n17_α
# IR_LIT_STRING
 xchain193_n16_α:
 mov qword ptr [rbp + 2320], 1
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 2328], rax
 jmp xchain193_n18_α
.Lx216_0:
 .quad .Lx216_0_s
.Lx216_0_s:
 .string "[]"
 xchain193_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1184]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1192], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1200]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1184]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n19_α
 xchain193_n17_β:
 jmp xchain193_n13_α
 xchain193_n18_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2464] -> [zr+2400]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2408], rax
# marshal arg1 = producer-box slot [zr+2352] -> [zr+2416]
 mov rax, qword ptr [rbp + 2352]
 mov qword ptr [rbp + 2416], rax
 mov rax, qword ptr [rbp + 2360]
 mov qword ptr [rbp + 2424], rax
# marshal arg2 = producer-box slot [zr+2320] -> [zr+2432]
 mov rax, qword ptr [rbp + 2320]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 2328]
 mov qword ptr [rbp + 2440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2400]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 cmp eax, 99
 je proc_theorem$2F3_ω
 jmp xchain193_n20_α
 xchain193_n18_β:
 jmp proc_theorem$2F3_ω
# IR_VAR_REF
 xchain193_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain193_n21_α
 xchain193_n20_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2608] -> [zr+2544]
 mov rax, qword ptr [rbp + 2608]
 mov qword ptr [rbp + 2544], rax
 mov rax, qword ptr [rbp + 2616]
 mov qword ptr [rbp + 2552], rax
# marshal arg1 = producer-box slot [zr+2496] -> [zr+2560]
 mov rax, qword ptr [rbp + 2496]
 mov qword ptr [rbp + 2560], rax
 mov rax, qword ptr [rbp + 2504]
 mov qword ptr [rbp + 2568], rax
# marshal arg2 = producer-box slot [zr+2384] -> [zr+2576]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2544]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 cmp eax, 99
 je xchain193_n23_α
 jmp xchain193_n22_α
 xchain193_n20_β:
 jmp xchain193_n23_α
# IR_LIT_STRING
 xchain193_n21_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain193_n24_α
.Lx222_0:
 .quad .Lx222_0_s
.Lx222_0_s:
 .string "."
 xchain193_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2288] -> [zr+2256]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2264], rax
# marshal arg1 = producer-box slot [zr+2528] -> [zr+2272]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2280], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2256]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 cmp eax, 99
 je xchain193_n23_α
 jmp xchain193_n25_α
 xchain193_n22_β:
 jmp xchain193_n23_α
 xchain193_n23_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1408]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1408]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 cmp eax, 99
 je proc_theorem$2F3_ω
 jmp xchain193_n6_α
 xchain193_n23_β:
 jmp proc_theorem$2F3_ω
# IR_VAR_REF
 xchain193_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2832]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain193_n26_α
# IR_VAR_REF
 xchain193_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 jmp xchain193_n27_α
# IR_VAR_REF
 xchain193_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain193_n28_α
# IR_VAR_REF
 xchain193_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2832]
 mov qword ptr [rbp + 2208], rax
 mov qword ptr [rbp + 2216], rdx
 jmp xchain193_n29_α
 xchain193_n28_α:
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
# marshal arg2 = producer-box slot [zr+960] -> [zr+1072]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n30_α
 xchain193_n28_β:
 jmp xchain193_n13_α
 xchain193_n29_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2176] -> [zr+2144]
 mov rax, qword ptr [rbp + 2176]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2184]
 mov qword ptr [rbp + 2152], rax
# marshal arg1 = producer-box slot [zr+2208] -> [zr+2160]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2144]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je xchain193_n23_α
 jmp xchain193_n31_α
 xchain193_n29_β:
 jmp xchain193_n23_α
# IR_VAR_REF
 xchain193_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2896]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain193_n32_α
# IR_VAR_REF
 xchain193_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 jmp xchain193_n33_α
 xchain193_n32_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+912]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+928]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 936], rax
# marshal arg2 = producer-box slot [zr+1136] -> [zr+944]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n34_α
 xchain193_n32_β:
 jmp xchain193_n13_α
# IR_LIT_STRING
 xchain193_n33_α:
 mov qword ptr [rbp + 2096], 1
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain193_n35_α
.Lx240_0:
 .quad .Lx240_0_s
.Lx240_0_s:
 .string "."
# IR_VAR
 xchain193_n34_α:
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 808], rax
 jmp xchain193_n36_α
# IR_LIT_STRING
 xchain193_n35_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain193_n37_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain193_n36_α:
 mov qword ptr [rbp + 832], 6
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain193_n38_α
.Lx244_0:
 .quad 0
# IR_LIT_STRING
 xchain193_n37_α:
 mov qword ptr [rbp + 1872], 1
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 1880], rax
 jmp xchain193_n39_α
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "a"
 xchain193_n38_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_gt (no by-name dispatch)
 lea rdi, [rbp + 768]
 mov esi, 2
 call rt_pl_dop_cmp_gt@PLT
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n40_α
 xchain193_n38_β:
 jmp xchain193_n13_α
# IR_LIT_STRING
 xchain193_n39_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain193_n41_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "."
# IR_VAR_REF
 xchain193_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2880]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain193_n42_α
# IR_LIT_STRING
 xchain193_n41_α:
 mov qword ptr [rbp + 1728], 1
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 1736], rax
 jmp xchain193_n43_α
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
 .string "m"
# IR_VAR
 xchain193_n42_α:
 mov rax, qword ptr [rbp + 2912]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 2920]
 mov qword ptr [rbp + 696], rax
 jmp xchain193_n44_α
# IR_LIT_STRING
 xchain193_n43_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain193_n45_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain193_n44_α:
 mov qword ptr [rbp + 720], 6
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 728], rax
 jmp xchain193_n46_α
.Lx254_0:
 .quad 1
# IR_LIT_STRING
 xchain193_n45_α:
 mov qword ptr [rbp + 1584], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 1592], rax
 jmp xchain193_n47_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "i"
 xchain193_n46_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+656]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n48_α
 xchain193_n46_β:
 jmp xchain193_n13_α
# IR_LIT_STRING
 xchain193_n47_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 1560], rax
 jmp xchain193_n49_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "[]"
 xchain193_n48_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+560]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 568], rax
# marshal arg1 = producer-box slot [zr+624] -> [zr+576]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n50_α
 xchain193_n48_β:
 jmp xchain193_n13_α
 xchain193_n49_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1632]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1640], rax
# marshal arg1 = producer-box slot [zr+1584] -> [zr+1648]
 mov rax, qword ptr [rbp + 1584]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1592]
 mov qword ptr [rbp + 1656], rax
# marshal arg2 = producer-box slot [zr+1552] -> [zr+1664]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1632]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je proc_theorem$2F3_ω
 jmp xchain193_n51_α
 xchain193_n49_β:
 jmp proc_theorem$2F3_ω
# IR_VAR_REF
 xchain193_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain193_n52_α
 xchain193_n51_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1840] -> [zr+1776]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1784], rax
# marshal arg1 = producer-box slot [zr+1728] -> [zr+1792]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1792], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1800], rax
# marshal arg2 = producer-box slot [zr+1616] -> [zr+1808]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1816], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1776]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 cmp eax, 99
 je proc_theorem$2F3_ω
 jmp xchain193_n53_α
 xchain193_n51_β:
 jmp proc_theorem$2F3_ω
# IR_VAR_REF
 xchain193_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2880]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain193_n54_α
 xchain193_n53_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1984] -> [zr+1920]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1928], rax
# marshal arg1 = producer-box slot [zr+1872] -> [zr+1936]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 1936], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 1944], rax
# marshal arg2 = producer-box slot [zr+1760] -> [zr+1952]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1960], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1920]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je proc_theorem$2F3_ω
 jmp xchain193_n55_α
 xchain193_n53_β:
 jmp proc_theorem$2F3_ω
# IR_VAR_REF
 xchain193_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2896]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain193_n56_α
# IR_LIT_STRING
 xchain193_n55_α:
 mov qword ptr [rbp + 1520], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 1528], rax
 jmp xchain193_n57_α
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
 .string "[]"
 xchain193_n56_α:
 mov qword ptr [rbp + 416], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 448]
 mov rdx, qword ptr [rbp + 456]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 480]
 mov rdx, qword ptr [rbp + 488]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 512]
 mov rdx, qword ptr [rbp + 520]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx270_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx270_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx270_3]
 lea rdx, [rip + .Lx270_4]
 jmp rax
.Lx270_3:
 mov qword ptr [rbp + 424], rsp
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx270_5
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx270_2
.Lx270_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx270_2
.Lx270_4:
 mov rax, qword ptr [rbp + 416]
 test rax, rax
 jne .Lx270_6
 mov qword ptr [rbp + 416], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx270_2
.Lx270_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx270_2
.Lx270_1:
 call rt_faildescr@PLT
.Lx270_2:
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain193_n13_α
 jmp xchain193_n58_α
 xchain193_n56_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 424]
 jmp qword ptr [rsp]
.Lx270_0:
 .quad .Lx270_0_s
.Lx270_0_s:
 .string "theorem/3"
 xchain193_n57_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2032]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+1904] -> [zr+2048]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 2056], rax
# marshal arg2 = producer-box slot [zr+1520] -> [zr+2064]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 2072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2032]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain193_n23_α
 jmp xchain193_n59_α
 xchain193_n57_β:
 jmp xchain193_n23_α
# IR_VAR_REF
 xchain193_n58_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2832]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain193_n60_α
 xchain193_n59_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1456]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1464], rax
# marshal arg1 = producer-box slot [zr+2016] -> [zr+1472]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 1480], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1456]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 cmp eax, 99
 je xchain193_n23_α
 jmp xchain193_n61_α
 xchain193_n59_β:
 jmp xchain193_n23_α
# IR_VAR_REF
 xchain193_n60_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain193_n62_α
# IR_SUSPEND yield+resume
 xchain193_n61_α:
 lea rax, [rip + xchain193_n61_β]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_theorem$2F3_γ
 xchain193_n61_β:
 jmp xchain193_n23_α
# IR_VAR_REF
 xchain193_n62_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain193_n63_α
 xchain193_n63_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx282_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx282_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx282_3]
 lea rdx, [rip + .Lx282_4]
 jmp rax
.Lx282_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx282_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx282_2
.Lx282_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx282_2
.Lx282_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx282_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx282_2
.Lx282_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx282_2
.Lx282_1:
 call rt_faildescr@PLT
.Lx282_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain193_n56_β
 jmp xchain193_n64_α
 xchain193_n63_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "rule/3"
# IR_SUSPEND yield+resume
 xchain193_n64_α:
 lea rax, [rip + xchain193_n64_β]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_theorem$2F3_γ
 xchain193_n64_β:
 jmp xchain193_n63_β
proc_theorem$2F3_res:
add rsp, 8
pop rbp
proc_theorem$2F3_β:
jmp qword ptr [rbp + 2800]
proc_theorem$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_theorem$2F3_res]
push rax
mov rax, [rbp + 2936]
mov rbp, [rbp + 2952]
jmp rax
proc_theorem$2F3_ω:
mov rax, [rbp + 2944]
lea rsp, [rbp + 2960]
mov rbp, [rbp + 2952]
jmp rax
  .globl proc_mu$2F0_α
proc_mu$2F0_α:
#=======================================================================================================================
    .global proc_mu$2F0_α
    .global proc_mu$2F0_β
    .global proc_mu$2F0_γ
    .global proc_mu$2F0_ω
  sub rsp, 1104
  mov [rsp + 1080], rcx
  mov [rsp + 1088], rdx
  mov [rsp + 1096], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1048], rsp
  mov rdi, rsp
  mov esi, 1024
  mov edx, 1072
  call rt_jmp_frame_lexprep2@PLT
proc_mu$2F0_α_body:
lea rax, [rip + xchain285_n22_β]
mov qword ptr [rbp + 1024], rax
 xchain285_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_mu$2F0_ω
 jmp xchain285_n1_α
 xchain285_n0_β:
 jmp proc_mu$2F0_ω
# IR_LIT_STRING
 xchain285_n1_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx287_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain285_n2_α
.Lx287_0:
 .quad .Lx287_0_s
.Lx287_0_s:
 .string "."
# IR_LIT_STRING
 xchain285_n2_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx288_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain285_n3_α
.Lx288_0:
 .quad .Lx288_0_s
.Lx288_0_s:
 .string "m"
# IR_LIT_STRING
 xchain285_n3_α:
 mov qword ptr [rbp + 784], 1
 mov rax, qword ptr [rip + .Lx289_0]
 mov qword ptr [rbp + 792], rax
 jmp xchain285_n4_α
.Lx289_0:
 .quad .Lx289_0_s
.Lx289_0_s:
 .string "."
# IR_LIT_STRING
 xchain285_n4_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx290_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain285_n5_α
.Lx290_0:
 .quad .Lx290_0_s
.Lx290_0_s:
 .string "u"
# IR_LIT_STRING
 xchain285_n5_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain285_n6_α
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
 .string "."
# IR_LIT_STRING
 xchain285_n6_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain285_n7_α
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
 .string "i"
# IR_LIT_STRING
 xchain285_n7_α:
 mov qword ptr [rbp + 496], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [rbp + 504], rax
 jmp xchain285_n8_α
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
 .string "."
# IR_LIT_STRING
 xchain285_n8_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx294_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain285_n9_α
.Lx294_0:
 .quad .Lx294_0_s
.Lx294_0_s:
 .string "i"
# IR_LIT_STRING
 xchain285_n9_α:
 mov qword ptr [rbp + 352], 1
 mov rax, qword ptr [rip + .Lx295_0]
 mov qword ptr [rbp + 360], rax
 jmp xchain285_n10_α
.Lx295_0:
 .quad .Lx295_0_s
.Lx295_0_s:
 .string "."
# IR_LIT_STRING
 xchain285_n10_α:
 mov qword ptr [rbp + 240], 1
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 248], rax
 jmp xchain285_n11_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "u"
# IR_LIT_STRING
 xchain285_n11_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx297_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain285_n12_α
.Lx297_0:
 .quad .Lx297_0_s
.Lx297_0_s:
 .string "[]"
 xchain285_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+288]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 288], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 296], rax
# marshal arg1 = producer-box slot [zr+240] -> [zr+304]
 mov rax, qword ptr [rbp + 240]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 248]
 mov qword ptr [rbp + 312], rax
# marshal arg2 = producer-box slot [zr+208] -> [zr+320]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 328], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 288]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 cmp eax, 99
 je proc_mu$2F0_ω
 jmp xchain285_n13_α
 xchain285_n12_β:
 jmp proc_mu$2F0_ω
 xchain285_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+448]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 456], rax
# marshal arg2 = producer-box slot [zr+272] -> [zr+464]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 472], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 432]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 cmp eax, 99
 je proc_mu$2F0_ω
 jmp xchain285_n14_α
 xchain285_n13_β:
 jmp proc_mu$2F0_ω
 xchain285_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+576]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+592]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 600], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+608]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je proc_mu$2F0_ω
 jmp xchain285_n15_α
 xchain285_n14_β:
 jmp proc_mu$2F0_ω
 xchain285_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+784] -> [zr+720]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 728], rax
# marshal arg1 = producer-box slot [zr+672] -> [zr+736]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 744], rax
# marshal arg2 = producer-box slot [zr+560] -> [zr+752]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je proc_mu$2F0_ω
 jmp xchain285_n16_α
 xchain285_n15_β:
 jmp proc_mu$2F0_ω
 xchain285_n16_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+928] -> [zr+864]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+880]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 888], rax
# marshal arg2 = producer-box slot [zr+704] -> [zr+896]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain285_n18_α
 jmp xchain285_n17_α
 xchain285_n16_β:
 jmp xchain285_n18_α
# IR_LIT_INTEGER
 xchain285_n17_α:
 mov qword ptr [rbp + 960], 6
 mov rax, qword ptr [rip + .Lx303_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain285_n19_α
.Lx303_0:
 .quad 5
 xchain285_n18_α:
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
 je proc_mu$2F0_ω
 jmp proc_mu$2F0_ω
 xchain285_n18_β:
 jmp proc_mu$2F0_ω
# IR_VAR_REF
 xchain285_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1056]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain285_n20_α
 xchain285_n20_α:
 mov qword ptr [rbp + 176], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 848]
 mov rdx, qword ptr [rbp + 856]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 992]
 mov rdx, qword ptr [rbp + 1000]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx308_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx308_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx308_3]
 lea rdx, [rip + .Lx308_4]
 jmp rax
.Lx308_3:
 mov qword ptr [rbp + 184], rsp
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx308_5
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx308_2
.Lx308_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx308_2
.Lx308_4:
 mov rax, qword ptr [rbp + 176]
 test rax, rax
 jne .Lx308_6
 mov qword ptr [rbp + 176], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx308_2
.Lx308_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx308_2
.Lx308_1:
 call rt_faildescr@PLT
.Lx308_2:
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain285_n18_α
 jmp xchain285_n21_α
 xchain285_n20_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 184]
 jmp qword ptr [rsp]
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
 .string "theorem/3"
 xchain285_n21_α:
# IR_CUT
 jmp xchain285_n22_α
# IR_SUSPEND yield+resume
 xchain285_n22_α:
 lea rax, [rip + xchain285_n22_β]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_mu$2F0_γ
 xchain285_n22_β:
 jmp xchain285_n20_β
proc_mu$2F0_res:
add rsp, 8
pop rbp
proc_mu$2F0_β:
jmp qword ptr [rbp + 1024]
proc_mu$2F0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_mu$2F0_res]
push rax
mov rax, [rbp + 1080]
mov rbp, [rbp + 1096]
jmp rax
proc_mu$2F0_ω:
mov rax, [rbp + 1088]
lea rsp, [rbp + 1104]
mov rbp, [rbp + 1096]
jmp rax
  .globl proc_rule3$2F2_α
proc_rule3$2F2_α:
#=======================================================================================================================
    .global proc_rule3$2F2_α
    .global proc_rule3$2F2_β
    .global proc_rule3$2F2_γ
    .global proc_rule3$2F2_ω
  sub rsp, 1792
  mov [rsp + 1768], rcx
  mov [rsp + 1776], rdx
  mov [rsp + 1784], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1704], rsp
  mov rdi, rsp
  mov esi, 1680
  mov edx, 1760
  call rt_jmp_frame_lexprep2@PLT
proc_rule3$2F2_α_body:
lea rax, [rip + xchain312_n38_β]
mov qword ptr [rbp + 1680], rax
 xchain312_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule3$2F2_ω
 jmp xchain312_n1_α
 xchain312_n0_β:
 jmp proc_rule3$2F2_ω
# IR_VAR_REF
 xchain312_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 jmp xchain312_n2_α
# IR_LIT_INTEGER
 xchain312_n2_α:
 mov qword ptr [rbp + 1616], 6
 mov rax, qword ptr [rip + .Lx316_0]
 mov qword ptr [rbp + 1624], rax
 jmp xchain312_n3_α
.Lx316_0:
 .quad 3
# IR_LIT_INTEGER
 xchain312_n3_α:
 mov qword ptr [rbp + 1648], 6
 mov rax, qword ptr [rip + .Lx317_0]
 mov qword ptr [rbp + 1656], rax
 jmp xchain312_n4_α
.Lx317_0:
 .quad 0
 xchain312_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+1648] -> [zr+1568]
 mov rax, qword ptr [rbp + 1648]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 1656]
 mov qword ptr [rbp + 1576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1536]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
 cmp eax, 99
 je xchain312_n6_α
 jmp xchain312_n5_α
 xchain312_n4_β:
 jmp xchain312_n6_α
# IR_VAR_REF
 xchain312_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain312_n7_α
# IR_VAR_REF
 xchain312_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain312_n8_α
# IR_LIT_STRING
 xchain312_n7_α:
 mov qword ptr [rbp + 1488], 1
 mov rax, qword ptr [rip + .Lx323_0]
 mov qword ptr [rbp + 1496], rax
 jmp xchain312_n9_α
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain312_n8_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx324_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain312_n10_α
.Lx324_0:
 .quad 3
# IR_LIT_STRING
 xchain312_n9_α:
 mov qword ptr [rbp + 1376], 1
 mov rax, qword ptr [rip + .Lx325_0]
 mov qword ptr [rbp + 1384], rax
 jmp xchain312_n11_α
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
 .string "i"
# IR_LIT_INTEGER
 xchain312_n10_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain312_n12_α
.Lx326_0:
 .quad 0
# IR_LIT_STRING
 xchain312_n11_α:
 mov qword ptr [rbp + 1344], 1
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [rbp + 1352], rax
 jmp xchain312_n13_α
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "."
 xchain312_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+640]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+656]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain312_n15_α
 jmp xchain312_n14_α
 xchain312_n12_β:
 jmp xchain312_n15_α
# IR_LIT_STRING
 xchain312_n13_α:
 mov qword ptr [rbp + 1232], 1
 mov rax, qword ptr [rip + .Lx329_0]
 mov qword ptr [rbp + 1240], rax
 jmp xchain312_n16_α
.Lx329_0:
 .quad .Lx329_0_s
.Lx329_0_s:
 .string "i"
# IR_VAR_REF
 xchain312_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain312_n17_α
 xchain312_n15_α:
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
 je proc_rule3$2F2_ω
 jmp proc_rule3$2F2_ω
 xchain312_n15_β:
 jmp proc_rule3$2F2_ω
# IR_LIT_STRING
 xchain312_n16_α:
 mov qword ptr [rbp + 1200], 1
 mov rax, qword ptr [rip + .Lx333_0]
 mov qword ptr [rbp + 1208], rax
 jmp xchain312_n18_α
.Lx333_0:
 .quad .Lx333_0_s
.Lx333_0_s:
 .string "."
# IR_VAR_REF
 xchain312_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain312_n19_α
# IR_LIT_STRING
 xchain312_n18_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx336_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain312_n20_α
.Lx336_0:
 .quad .Lx336_0_s
.Lx336_0_s:
 .string "i"
# IR_VAR_REF
 xchain312_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain312_n21_α
# IR_VAR_REF
 xchain312_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain312_n22_α
 xchain312_n21_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+496]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 504], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 496]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain312_n15_α
 jmp xchain312_n23_α
 xchain312_n21_β:
 jmp xchain312_n15_α
 xchain312_n22_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1200] -> [zr+1136]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1144], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+1152]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1160], rax
# marshal arg2 = producer-box slot [zr+1056] -> [zr+1168]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1136]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je proc_rule3$2F2_ω
 jmp xchain312_n24_α
 xchain312_n22_β:
 jmp proc_rule3$2F2_ω
# IR_VAR_REF
 xchain312_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain312_n25_α
 xchain312_n24_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1344] -> [zr+1280]
 mov rax, qword ptr [rbp + 1344]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 1352]
 mov qword ptr [rbp + 1288], rax
# marshal arg1 = producer-box slot [zr+1232] -> [zr+1296]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1304], rax
# marshal arg2 = producer-box slot [zr+1120] -> [zr+1312]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1320], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1280]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 cmp eax, 99
 je proc_rule3$2F2_ω
 jmp xchain312_n26_α
 xchain312_n24_β:
 jmp proc_rule3$2F2_ω
# IR_VAR_REF
 xchain312_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain312_n27_α
 xchain312_n26_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1488] -> [zr+1424]
 mov rax, qword ptr [rbp + 1488]
 mov qword ptr [rbp + 1424], rax
 mov rax, qword ptr [rbp + 1496]
 mov qword ptr [rbp + 1432], rax
# marshal arg1 = producer-box slot [zr+1376] -> [zr+1440]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1448], rax
# marshal arg2 = producer-box slot [zr+1264] -> [zr+1456]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1456], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1464], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1424]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 cmp eax, 99
 je xchain312_n29_α
 jmp xchain312_n28_α
 xchain312_n26_β:
 jmp xchain312_n29_α
# IR_VAR_REF
 xchain312_n27_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain312_n30_α
 xchain312_n28_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1024] -> [zr+992]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1000], rax
# marshal arg1 = producer-box slot [zr+1408] -> [zr+1008]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 992]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 cmp eax, 99
 je xchain312_n29_α
 jmp xchain312_n31_α
 xchain312_n28_β:
 jmp xchain312_n29_α
 xchain312_n29_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+784]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je proc_rule3$2F2_ω
 jmp xchain312_n6_α
 xchain312_n29_β:
 jmp proc_rule3$2F2_ω
 xchain312_n30_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+336]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain312_n15_α
 jmp xchain312_n32_α
 xchain312_n30_β:
 jmp xchain312_n15_α
# IR_VAR_REF
 xchain312_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain312_n33_α
# IR_VAR_REF
 xchain312_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1712]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain312_n34_α
# IR_LIT_STRING
 xchain312_n33_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx358_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain312_n35_α
.Lx358_0:
 .quad .Lx358_0_s
.Lx358_0_s:
 .string "u"
# IR_VAR_REF
 xchain312_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1728]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain312_n36_α
# IR_VAR_REF
 xchain312_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1744]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain312_n37_α
 xchain312_n36_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx364_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx364_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx364_3]
 lea rdx, [rip + .Lx364_4]
 jmp rax
.Lx364_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx364_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx364_2
.Lx364_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx364_2
.Lx364_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx364_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx364_2
.Lx364_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx364_2
.Lx364_1:
 call rt_faildescr@PLT
.Lx364_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain312_n15_α
 jmp xchain312_n38_α
 xchain312_n36_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx364_0:
 .quad .Lx364_0_s
.Lx364_0_s:
 .string "rule3/2"
 xchain312_n37_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+816] -> [zr+864]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 872], rax
# marshal arg1 = producer-box slot [zr+912] -> [zr+880]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 888], rax
# marshal arg2 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je xchain312_n29_α
 jmp xchain312_n39_α
 xchain312_n37_β:
 jmp xchain312_n29_α
# IR_SUSPEND yield+resume
 xchain312_n38_α:
 lea rax, [rip + xchain312_n38_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule3$2F2_γ
 xchain312_n38_β:
 jmp xchain312_n36_β
# IR_SUSPEND yield+resume
 xchain312_n39_α:
 lea rax, [rip + xchain312_n39_β]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule3$2F2_γ
 xchain312_n39_β:
 jmp xchain312_n29_α
proc_rule3$2F2_res:
add rsp, 8
pop rbp
proc_rule3$2F2_β:
jmp qword ptr [rbp + 1680]
proc_rule3$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule3$2F2_res]
push rax
mov rax, [rbp + 1768]
mov rbp, [rbp + 1784]
jmp rax
proc_rule3$2F2_ω:
mov rax, [rbp + 1776]
lea rsp, [rbp + 1792]
mov rbp, [rbp + 1784]
jmp rax
  .globl proc_rule1$2F2_α
proc_rule1$2F2_α:
#=======================================================================================================================
    .global proc_rule1$2F2_α
    .global proc_rule1$2F2_β
    .global proc_rule1$2F2_γ
    .global proc_rule1$2F2_ω
  sub rsp, 1744
  mov [rsp + 1720], rcx
  mov [rsp + 1728], rdx
  mov [rsp + 1736], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1656], rsp
  mov rdi, rsp
  mov esi, 1632
  mov edx, 1712
  call rt_jmp_frame_lexprep2@PLT
proc_rule1$2F2_α_body:
lea rax, [rip + xchain370_n37_β]
mov qword ptr [rbp + 1632], rax
 xchain370_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule1$2F2_ω
 jmp xchain370_n1_α
 xchain370_n0_β:
 jmp proc_rule1$2F2_ω
# IR_VAR_REF
 xchain370_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain370_n2_α
# IR_LIT_INTEGER
 xchain370_n2_α:
 mov qword ptr [rbp + 1568], 6
 mov rax, qword ptr [rip + .Lx374_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain370_n3_α
.Lx374_0:
 .quad 3
# IR_LIT_INTEGER
 xchain370_n3_α:
 mov qword ptr [rbp + 1600], 6
 mov rax, qword ptr [rip + .Lx375_0]
 mov qword ptr [rbp + 1608], rax
 jmp xchain370_n4_α
.Lx375_0:
 .quad 0
 xchain370_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# marshal arg2 = producer-box slot [zr+1600] -> [zr+1520]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1488]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain370_n6_α
 jmp xchain370_n5_α
 xchain370_n4_β:
 jmp xchain370_n6_α
# IR_VAR_REF
 xchain370_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain370_n7_α
# IR_VAR_REF
 xchain370_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain370_n8_α
# IR_LIT_STRING
 xchain370_n7_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx381_0]
 mov qword ptr [rbp + 1448], rax
 jmp xchain370_n9_α
.Lx381_0:
 .quad .Lx381_0_s
.Lx381_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain370_n8_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx382_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain370_n10_α
.Lx382_0:
 .quad 3
# IR_LIT_STRING
 xchain370_n9_α:
 mov qword ptr [rbp + 1328], 1
 mov rax, qword ptr [rip + .Lx383_0]
 mov qword ptr [rbp + 1336], rax
 jmp xchain370_n11_α
.Lx383_0:
 .quad .Lx383_0_s
.Lx383_0_s:
 .string "i"
# IR_LIT_INTEGER
 xchain370_n10_α:
 mov qword ptr [rbp + 736], 6
 mov rax, qword ptr [rip + .Lx384_0]
 mov qword ptr [rbp + 744], rax
 jmp xchain370_n12_α
.Lx384_0:
 .quad 0
# IR_LIT_STRING
 xchain370_n11_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx385_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain370_n13_α
.Lx385_0:
 .quad .Lx385_0_s
.Lx385_0_s:
 .string "[]"
 xchain370_n12_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+624]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 632], rax
# marshal arg1 = producer-box slot [zr+704] -> [zr+640]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 648], rax
# marshal arg2 = producer-box slot [zr+736] -> [zr+656]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 624]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain370_n15_α
 jmp xchain370_n14_α
 xchain370_n12_β:
 jmp xchain370_n15_α
 xchain370_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1440] -> [zr+1376]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1384], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1392]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1400], rax
# marshal arg2 = producer-box slot [zr+1296] -> [zr+1408]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1408], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1416], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1376]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain370_n17_α
 jmp xchain370_n16_α
 xchain370_n13_β:
 jmp xchain370_n17_α
# IR_VAR_REF
 xchain370_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain370_n18_α
 xchain370_n15_α:
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
 je proc_rule1$2F2_ω
 jmp proc_rule1$2F2_ω
 xchain370_n15_β:
 jmp proc_rule1$2F2_ω
 xchain370_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1232]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1360] -> [zr+1248]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain370_n17_α
 jmp xchain370_n19_α
 xchain370_n16_β:
 jmp xchain370_n17_α
 xchain370_n17_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+784]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je proc_rule1$2F2_ω
 jmp xchain370_n6_α
 xchain370_n17_β:
 jmp proc_rule1$2F2_ω
# IR_VAR_REF
 xchain370_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1696]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain370_n20_α
# IR_VAR_REF
 xchain370_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain370_n21_α
# IR_VAR_REF
 xchain370_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 jmp xchain370_n22_α
# IR_LIT_STRING
 xchain370_n21_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx399_0]
 mov qword ptr [rbp + 1192], rax
 jmp xchain370_n23_α
.Lx399_0:
 .quad .Lx399_0_s
.Lx399_0_s:
 .string "."
 xchain370_n22_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+448] -> [zr+496]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 496], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 504], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+512]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 520], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+528]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 496]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 cmp eax, 99
 je xchain370_n15_α
 jmp xchain370_n24_α
 xchain370_n22_β:
 jmp xchain370_n15_α
# IR_LIT_STRING
 xchain370_n23_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx401_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain370_n25_α
.Lx401_0:
 .quad .Lx401_0_s
.Lx401_0_s:
 .string "i"
# IR_VAR_REF
 xchain370_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain370_n26_α
# IR_LIT_STRING
 xchain370_n25_α:
 mov qword ptr [rbp + 1040], 1
 mov rax, qword ptr [rip + .Lx404_0]
 mov qword ptr [rbp + 1048], rax
 jmp xchain370_n27_α
.Lx404_0:
 .quad .Lx404_0_s
.Lx404_0_s:
 .string "."
# IR_VAR_REF
 xchain370_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1696]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain370_n28_α
# IR_LIT_STRING
 xchain370_n27_α:
 mov qword ptr [rbp + 928], 1
 mov rax, qword ptr [rip + .Lx407_0]
 mov qword ptr [rbp + 936], rax
 jmp xchain370_n29_α
.Lx407_0:
 .quad .Lx407_0_s
.Lx407_0_s:
 .string "u"
# IR_VAR_REF
 xchain370_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain370_n30_α
# IR_LIT_STRING
 xchain370_n29_α:
 mov qword ptr [rbp + 896], 1
 mov rax, qword ptr [rip + .Lx410_0]
 mov qword ptr [rbp + 904], rax
 jmp xchain370_n31_α
.Lx410_0:
 .quad .Lx410_0_s
.Lx410_0_s:
 .string "[]"
 xchain370_n30_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+288] -> [zr+336]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 344], rax
# marshal arg1 = producer-box slot [zr+384] -> [zr+352]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 360], rax
# marshal arg2 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 336]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain370_n15_α
 jmp xchain370_n32_α
 xchain370_n30_β:
 jmp xchain370_n15_α
 xchain370_n31_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1040] -> [zr+976]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 984], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+992]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 1000], rax
# marshal arg2 = producer-box slot [zr+896] -> [zr+1008]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 1016], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 976]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 cmp eax, 99
 je proc_rule1$2F2_ω
 jmp xchain370_n33_α
 xchain370_n31_β:
 jmp proc_rule1$2F2_ω
# IR_VAR_REF
 xchain370_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1664]
 mov qword ptr [rbp + 224], rax
 mov qword ptr [rbp + 232], rdx
 jmp xchain370_n34_α
 xchain370_n33_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1120]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1072] -> [zr+1136]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1144], rax
# marshal arg2 = producer-box slot [zr+960] -> [zr+1152]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 1160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1120]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain370_n17_α
 jmp xchain370_n35_α
 xchain370_n33_β:
 jmp xchain370_n17_α
# IR_VAR_REF
 xchain370_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1680]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain370_n36_α
 xchain370_n35_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+832]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 840], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+848]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 856], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 832]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 cmp eax, 99
 je xchain370_n17_α
 jmp xchain370_n37_α
 xchain370_n35_β:
 jmp xchain370_n17_α
 xchain370_n36_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 224]
 mov rdx, qword ptr [rbp + 232]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx420_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx420_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx420_3]
 lea rdx, [rip + .Lx420_4]
 jmp rax
.Lx420_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx420_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx420_2
.Lx420_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx420_2
.Lx420_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx420_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx420_2
.Lx420_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx420_2
.Lx420_1:
 call rt_faildescr@PLT
.Lx420_2:
 mov qword ptr [rbp + 144], rax
 mov qword ptr [rbp + 152], rdx
 cmp eax, 99
 je xchain370_n15_α
 jmp xchain370_n38_α
 xchain370_n36_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx420_0:
 .quad .Lx420_0_s
.Lx420_0_s:
 .string "rule1/2"
# IR_SUSPEND yield+resume
 xchain370_n37_α:
 lea rax, [rip + xchain370_n37_β]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule1$2F2_γ
 xchain370_n37_β:
 jmp xchain370_n17_α
# IR_SUSPEND yield+resume
 xchain370_n38_α:
 lea rax, [rip + xchain370_n38_β]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule1$2F2_γ
 xchain370_n38_β:
 jmp xchain370_n36_β
proc_rule1$2F2_res:
add rsp, 8
pop rbp
proc_rule1$2F2_β:
jmp qword ptr [rbp + 1632]
proc_rule1$2F2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule1$2F2_res]
push rax
mov rax, [rbp + 1720]
mov rbp, [rbp + 1736]
jmp rax
proc_rule1$2F2_ω:
mov rax, [rbp + 1728]
lea rsp, [rbp + 1744]
mov rbp, [rbp + 1736]
jmp rax
  .globl proc_my_append$2F3_α
proc_my_append$2F3_α:
#=======================================================================================================================
    .global proc_my_append$2F3_α
    .global proc_my_append$2F3_β
    .global proc_my_append$2F3_γ
    .global proc_my_append$2F3_ω
  sub rsp, 1616
  mov [rsp + 1592], rcx
  mov [rsp + 1600], rdx
  mov [rsp + 1608], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1512], rsp
  mov rdi, rsp
  mov esi, 1488
  mov edx, 1584
  call rt_jmp_frame_lexprep2@PLT
proc_my_append$2F3_α_body:
lea rax, [rip + xchain425_n25_β]
mov qword ptr [rbp + 1488], rax
 xchain425_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_my_append$2F3_ω
 jmp xchain425_n1_α
 xchain425_n0_β:
 jmp proc_my_append$2F3_ω
# IR_VAR_REF
 xchain425_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain425_n2_α
# IR_LIT_INTEGER
 xchain425_n2_α:
 mov qword ptr [rbp + 1424], 6
 mov rax, qword ptr [rip + .Lx429_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain425_n3_α
.Lx429_0:
 .quad 2
# IR_LIT_STRING
 xchain425_n3_α:
 mov qword ptr [rbp + 1456], 1
 mov rax, qword ptr [rip + .Lx430_0]
 mov qword ptr [rbp + 1464], rax
 jmp xchain425_n4_α
.Lx430_0:
 .quad .Lx430_0_s
.Lx430_0_s:
 .string "[]"
 xchain425_n4_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1392] -> [zr+1344]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1352], rax
# marshal arg1 = producer-box slot [zr+1424] -> [zr+1360]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1360], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1368], rax
# marshal arg2 = producer-box slot [zr+1456] -> [zr+1376]
 mov rax, qword ptr [rbp + 1456]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1464]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain425_n6_α
 jmp xchain425_n5_α
 xchain425_n4_β:
 jmp xchain425_n6_α
# IR_VAR_REF
 xchain425_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain425_n7_α
# IR_VAR_REF
 xchain425_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain425_n8_α
# IR_LIT_STRING
 xchain425_n7_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx436_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain425_n9_α
.Lx436_0:
 .quad .Lx436_0_s
.Lx436_0_s:
 .string "[]"
# IR_LIT_INTEGER
 xchain425_n8_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx437_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain425_n10_α
.Lx437_0:
 .quad 3
 xchain425_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1264] -> [zr+1232]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1240], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1232]
 mov rsi, qword ptr [rip + .Lx438_2]
 jmp .Lx438_3
.Lx438_2:
 .quad .Lx438_2_s
.Lx438_2_s:
 .string "[]"
.Lx438_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain425_n12_α
 jmp xchain425_n11_α
 xchain425_n9_β:
 jmp xchain425_n12_α
# IR_LIT_INTEGER
 xchain425_n10_α:
 mov qword ptr [rbp + 912], 6
 mov rax, qword ptr [rip + .Lx439_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain425_n13_α
.Lx439_0:
 .quad 0
# IR_VAR_REF
 xchain425_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 jmp xchain425_n14_α
 xchain425_n12_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+960]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 968], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je proc_my_append$2F3_ω
 jmp xchain425_n6_α
 xchain425_n12_β:
 jmp proc_my_append$2F3_ω
 xchain425_n13_α:
# BOX IR_CALL $ix_g(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+848] -> [zr+800]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+880] -> [zr+816]
 mov rax, qword ptr [rbp + 880]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 888]
 mov qword ptr [rbp + 824], rax
# marshal arg2 = producer-box slot [zr+912] -> [zr+832]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ix_g (no by-name dispatch)
 lea rdi, [rbp + 800]
 mov esi, 3
 call rt_pl_dop_ix_g@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain425_n16_α
 jmp xchain425_n15_α
 xchain425_n13_β:
 jmp xchain425_n16_α
# IR_VAR_REF
 xchain425_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain425_n17_α
# IR_VAR_REF
 xchain425_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain425_n18_α
 xchain425_n16_α:
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
 je proc_my_append$2F3_ω
 jmp proc_my_append$2F3_ω
 xchain425_n16_β:
 jmp proc_my_append$2F3_ω
 xchain425_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1120]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1128], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1136]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1120]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je xchain425_n12_α
 jmp xchain425_n19_α
 xchain425_n17_β:
 jmp xchain425_n12_α
# IR_VAR_REF
 xchain425_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 jmp xchain425_n20_α
# IR_VAR_REF
 xchain425_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain425_n21_α
# IR_VAR_REF
 xchain425_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 jmp xchain425_n22_α
# IR_VAR_REF
 xchain425_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain425_n23_α
 xchain425_n22_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+624] -> [zr+672]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+720] -> [zr+688]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 696], rax
# marshal arg2 = producer-box slot [zr+752] -> [zr+704]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 712], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain425_n16_α
 jmp xchain425_n24_α
 xchain425_n22_β:
 jmp xchain425_n16_α
 xchain425_n23_α:
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je xchain425_n12_α
 jmp xchain425_n25_α
 xchain425_n23_β:
 jmp xchain425_n12_α
# IR_VAR_REF
 xchain425_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 jmp xchain425_n26_α
# IR_SUSPEND yield+resume
 xchain425_n25_α:
 lea rax, [rip + xchain425_n25_β]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_my_append$2F3_γ
 xchain425_n25_β:
 jmp xchain425_n12_α
# IR_VAR_REF
 xchain425_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain425_n27_α
 xchain425_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+560] -> [zr+528]
 mov rax, qword ptr [rbp + 560]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 568]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain425_n16_α
 jmp xchain425_n28_α
 xchain425_n27_β:
 jmp xchain425_n16_α
# IR_VAR_REF
 xchain425_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain425_n29_α
# IR_VAR_REF
 xchain425_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1568]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain425_n30_α
# IR_VAR_REF
 xchain425_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain425_n31_α
 xchain425_n31_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+400]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+448] -> [zr+416]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 424], rax
# marshal arg2 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 400]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain425_n16_α
 jmp xchain425_n32_α
 xchain425_n31_β:
 jmp xchain425_n16_α
# IR_VAR_REF
 xchain425_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain425_n33_α
# IR_VAR_REF
 xchain425_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain425_n34_α
# IR_VAR_REF
 xchain425_n34_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain425_n35_α
 xchain425_n35_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 320]
 mov rdx, qword ptr [rbp + 328]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx481_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx481_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx481_3]
 lea rdx, [rip + .Lx481_4]
 jmp rax
.Lx481_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx481_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx481_2
.Lx481_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx481_2
.Lx481_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx481_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx481_2
.Lx481_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx481_2
.Lx481_1:
 call rt_faildescr@PLT
.Lx481_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain425_n16_α
 jmp xchain425_n36_α
 xchain425_n35_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx481_0:
 .quad .Lx481_0_s
.Lx481_0_s:
 .string "my_append/3"
# IR_SUSPEND yield+resume
 xchain425_n36_α:
 lea rax, [rip + xchain425_n36_β]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_my_append$2F3_γ
 xchain425_n36_β:
 jmp xchain425_n35_β
proc_my_append$2F3_res:
add rsp, 8
pop rbp
proc_my_append$2F3_β:
jmp qword ptr [rbp + 1488]
proc_my_append$2F3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_my_append$2F3_res]
push rax
mov rax, [rbp + 1592]
mov rbp, [rbp + 1608]
jmp rax
proc_my_append$2F3_ω:
mov rax, [rbp + 1600]
lea rsp, [rbp + 1616]
mov rbp, [rbp + 1608]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "rule/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_rule$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2880
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname1: .string "rule4/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname1]
  lea rsi, [rip + proc_rule4$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1584
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname2: .string "rule2/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname2]
  lea rsi, [rip + proc_rule2$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 720
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname3: .string "theorem/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname3]
  lea rsi, [rip + proc_theorem$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2928
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname4: .string "mu/0"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname4]
  lea rsi, [rip + proc_mu$2F0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1072
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname5: .string "rule3/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname5]
  lea rsi, [rip + proc_rule3$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1760
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname6: .string "rule1/2"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname6]
  lea rsi, [rip + proc_rule1$2F2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1712
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1
  call rt_proc_set_generator@PLT
  .section .rodata
  .Lstartup_pname7: .string "my_append/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname7]
  lea rsi, [rip + proc_my_append$2F3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1584
  call rt_proc_set_frame_bytes@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1
  call rt_proc_set_jmpentry@PLT
  lea rdi, [rip + .Lstartup_pname7]
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
  mov qword ptr [rsp + 360], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain484_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain484_n1_α
 xchain484_n0_β:
 jmp main_ω
 xchain484_n1_α:
 mov qword ptr [rbp + 320], 0
 mov rdi, qword ptr [rip + .Lx487_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx487_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx487_3]
 lea rdx, [rip + .Lx487_4]
 jmp rax
.Lx487_3:
 mov qword ptr [rbp + 328], rsp
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx487_5
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx487_2
.Lx487_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx487_2
.Lx487_4:
 mov rax, qword ptr [rbp + 320]
 test rax, rax
 jne .Lx487_6
 mov qword ptr [rbp + 320], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx487_2
.Lx487_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx487_2
.Lx487_1:
 call rt_faildescr@PLT
.Lx487_2:
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain484_n3_α
 jmp xchain484_n2_α
 xchain484_n1_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 328]
 jmp qword ptr [rsp]
.Lx487_0:
 .quad .Lx487_0_s
.Lx487_0_s:
 .string "mu/0"
# IR_LIT_STRING
 xchain484_n2_α:
 mov qword ptr [rbp + 208], 1
 mov rax, qword ptr [rip + .Lx488_0]
 mov qword ptr [rbp + 216], rax
 jmp xchain484_n4_α
.Lx488_0:
 .quad .Lx488_0_s
.Lx488_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain484_n3_α:
 mov qword ptr [rbp + 272], 1
 mov rax, qword ptr [rip + .Lx489_0]
 mov qword ptr [rbp + 280], rax
 jmp xchain484_n5_α
.Lx489_0:
 .quad .Lx489_0_s
.Lx489_0_s:
 .string "failed"
 xchain484_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+208] -> [zr+192]
 mov rax, qword ptr [rbp + 208]
 mov qword ptr [rbp + 192], rax
 mov rax, qword ptr [rbp + 216]
 mov qword ptr [rbp + 200], rax
  .section .rodata
  .Lrkfn491: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn491]
 lea rsi, [rbp + 192]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain484_n7_α
 jmp xchain484_n6_α
 xchain484_n4_β:
 jmp xchain484_n7_α
 xchain484_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+272] -> [zr+256]
 mov rax, qword ptr [rbp + 272]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 280]
 mov qword ptr [rbp + 264], rax
  .section .rodata
  .Lrkfn493: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn493]
 lea rsi, [rbp + 256]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 cmp eax, 99
 je xchain484_n7_α
 jmp xchain484_n6_α
 xchain484_n5_β:
 jmp xchain484_n7_α
# IR_LIT_STRING
 xchain484_n6_α:
 mov qword ptr [rbp + 144], 1
 mov rax, qword ptr [rip + .Lx494_0]
 mov qword ptr [rbp + 152], rax
 jmp xchain484_n8_α
.Lx494_0:
 .quad .Lx494_0_s
.Lx494_0_s:
 .string ""
 xchain484_n7_α:
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
 xchain484_n7_β:
 jmp main_ω
 xchain484_n8_α:
# BOX IR_CALL $nl0(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+144] -> [zr+128]
 mov rax, qword ptr [rbp + 144]
 mov qword ptr [rbp + 128], rax
 mov rax, qword ptr [rbp + 152]
 mov qword ptr [rbp + 136], rax
  .section .rodata
  .Lrkfn497: .string "$nl0"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn497]
 lea rsi, [rbp + 128]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 112], rax
 mov qword ptr [rbp + 120], rdx
 cmp eax, 99
 je xchain484_n7_α
 jmp xchain484_n9_α
 xchain484_n8_β:
 jmp xchain484_n7_α
# IR_MOVE_LABEL
 xchain484_n9_α:
 lea rax, [rip + xchain484_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain484_n10_α:
 jmp qword ptr [rbp + 32]
 xchain484_n10_β:
 jmp main_ω
main_β:
jmp xchain484_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 360]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 360]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
