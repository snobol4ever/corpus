  .intel_syntax noprefix
  .text
  .globl proc_rule$3_α
proc_rule$3_α:
#=======================================================================================================================
    .global proc_rule$3_α
    .global proc_rule$3_β
    .global proc_rule$3_γ
    .global proc_rule$3_ω
  sub rsp, 2528
  mov [rsp + 2504], rcx
  mov [rsp + 2512], rdx
  mov [rsp + 2520], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2456], rsp
  mov rdi, rsp
  mov esi, 2432
  mov edx, 2496
  call rt_jmp_frame_lexprep2@PLT
proc_rule$3_α_body:
lea rax, [rip + xchain0_n28_β]
mov qword ptr [rbp + 2432], rax
 xchain0_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_rule$3_ω
 jmp xchain0_n1_α
 xchain0_n0_β:
 jmp proc_rule$3_ω
# IR_VAR_REF
 xchain0_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 jmp xchain0_n2_α
# IR_LIT_INTEGER
 xchain0_n2_α:
 mov qword ptr [rbp + 2400], 6
 mov rax, qword ptr [rip + .Lx4_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain0_n3_α
.Lx4_0:
 .quad 1
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2320]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2328], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 2320]
 movabs rsi, 1
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n4_α
 xchain0_n3_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2240], rax
 mov qword ptr [rbp + 2248], rdx
 jmp xchain0_n6_α
 xchain0_n5_α:
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
 je proc_rule$3_ω
 jmp xchain0_n7_α
 xchain0_n5_β:
 jmp proc_rule$3_ω
# IR_VAR_REF
 xchain0_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2464]
 mov qword ptr [rbp + 2272], rax
 mov qword ptr [rbp + 2280], rdx
 jmp xchain0_n8_α
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain0_n9_α
 xchain0_n8_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2192]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n10_α
 xchain0_n8_β:
 jmp xchain0_n5_α
# IR_LIT_INTEGER
 xchain0_n9_α:
 mov qword ptr [rbp + 1824], 6
 mov rax, qword ptr [rip + .Lx14_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain0_n11_α
.Lx14_0:
 .quad 2
# IR_VAR_REF
 xchain0_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain0_n12_α
 xchain0_n11_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1792] -> [zr+1744]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1752], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1744]
 movabs rsi, 2
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n13_α
 xchain0_n11_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2480]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain0_n15_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 jmp xchain0_n16_α
 xchain0_n14_α:
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
 je proc_rule$3_ω
 jmp xchain0_n17_α
 xchain0_n14_β:
 jmp proc_rule$3_ω
 xchain0_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2064]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2048], rax
 mov qword ptr [rbp + 2056], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n18_α
 xchain0_n15_β:
 jmp xchain0_n5_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2464]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
 jmp xchain0_n19_α
# IR_VAR_REF
 xchain0_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain0_n20_α
# IR_VAR_REF
 xchain0_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2464]
 mov qword ptr [rbp + 1984], rax
 mov qword ptr [rbp + 1992], rdx
 jmp xchain0_n21_α
 xchain0_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1664] -> [zr+1616]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1624], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1632]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1632], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1640], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1616]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n22_α
 xchain0_n19_β:
 jmp xchain0_n14_α
# IR_LIT_INTEGER
 xchain0_n20_α:
 mov qword ptr [rbp + 1248], 6
 mov rax, qword ptr [rip + .Lx31_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain0_n23_α
.Lx31_0:
 .quad 3
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2480]
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 jmp xchain0_n24_α
# IR_VAR_REF
 xchain0_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain0_n25_α
 xchain0_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1168]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 1168]
 movabs rsi, 3
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n26_α
 xchain0_n23_β:
 jmp xchain0_n27_α
 xchain0_n24_α:
 mov qword ptr [rbp + 1952], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1984]
 mov rdx, qword ptr [rbp + 1992]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 2016]
 mov rdx, qword ptr [rbp + 2024]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx38_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx38_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx38_3]
 lea rdx, [rip + .Lx38_4]
 jmp rax
.Lx38_3:
 mov qword ptr [rbp + 1960], rsp
 mov rax, qword ptr [rbp + 1952]
 test rax, rax
 jne .Lx38_5
 mov qword ptr [rbp + 1952], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx38_2
.Lx38_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx38_2
.Lx38_4:
 mov rax, qword ptr [rbp + 1952]
 test rax, rax
 jne .Lx38_6
 mov qword ptr [rbp + 1952], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx38_2
.Lx38_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx38_2
.Lx38_1:
 call rt_faildescr@PLT
.Lx38_2:
 mov qword ptr [rbp + 1904], rax
 mov qword ptr [rbp + 1912], rdx
 cmp eax, 99
 je xchain0_n5_α
 jmp xchain0_n28_α
 xchain0_n24_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1960]
 jmp qword ptr [rsp]
.Lx38_0:
 .quad .Lx38_0_s
.Lx38_0_s:
 .string "rule1/2"
# IR_VAR_REF
 xchain0_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2480]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain0_n29_α
# IR_VAR_REF
 xchain0_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain0_n30_α
 xchain0_n27_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+720]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je proc_rule$3_ω
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp proc_rule$3_ω
# IR_SUSPEND yield+resume
 xchain0_n28_α:
 lea rax, [rip + xchain0_n28_β]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$3_γ
 xchain0_n28_β:
 jmp xchain0_n24_β
 xchain0_n29_α:
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
 je xchain0_n14_α
 jmp xchain0_n32_α
 xchain0_n29_β:
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2464]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain0_n33_α
# IR_VAR_REF
 xchain0_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n34_α
# IR_VAR_REF
 xchain0_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2464]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
 jmp xchain0_n35_α
 xchain0_n33_α:
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
 je xchain0_n27_α
 jmp xchain0_n36_α
 xchain0_n33_β:
 jmp xchain0_n27_α
# IR_LIT_INTEGER
 xchain0_n34_α:
 mov qword ptr [rbp + 672], 6
 mov rax, qword ptr [rip + .Lx54_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain0_n37_α
.Lx54_0:
 .quad 4
# IR_VAR_REF
 xchain0_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2480]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain0_n38_α
# IR_VAR_REF
 xchain0_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain0_n39_α
 xchain0_n37_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_ci (const in reg, one-operand marshal)
 lea rdi, [rbp + 592]
 movabs rsi, 4
 call rt_pl_dop_unify_ci@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain0_n41_α
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n41_α
 xchain0_n38_α:
 mov qword ptr [rbp + 1376], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1408]
 mov rdx, qword ptr [rbp + 1416]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1440]
 mov rdx, qword ptr [rbp + 1448]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx61_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx61_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx61_3]
 lea rdx, [rip + .Lx61_4]
 jmp rax
.Lx61_3:
 mov qword ptr [rbp + 1384], rsp
 mov rax, qword ptr [rbp + 1376]
 test rax, rax
 jne .Lx61_5
 mov qword ptr [rbp + 1376], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx61_2
.Lx61_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx61_2
.Lx61_4:
 mov rax, qword ptr [rbp + 1376]
 test rax, rax
 jne .Lx61_6
 mov qword ptr [rbp + 1376], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx61_2
.Lx61_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx61_2
.Lx61_1:
 call rt_faildescr@PLT
.Lx61_2:
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain0_n14_α
 jmp xchain0_n42_α
 xchain0_n38_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1384]
 jmp qword ptr [rsp]
.Lx61_0:
 .quad .Lx61_0_s
.Lx61_0_s:
 .string "rule2/2"
# IR_VAR_REF
 xchain0_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2480]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain0_n43_α
# IR_VAR_REF
 xchain0_n40_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain0_n44_α
 xchain0_n41_α:
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
 je proc_rule$3_ω
 jmp proc_rule$3_ω
 xchain0_n41_β:
 jmp proc_rule$3_ω
# IR_SUSPEND yield+resume
 xchain0_n42_α:
 lea rax, [rip + xchain0_n42_β]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$3_γ
 xchain0_n42_β:
 jmp xchain0_n38_β
 xchain0_n43_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n45_α
 xchain0_n43_β:
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n44_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2464]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain0_n46_α
# IR_VAR_REF
 xchain0_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2464]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 jmp xchain0_n47_α
 xchain0_n46_α:
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
 je xchain0_n41_α
 jmp xchain0_n48_α
 xchain0_n46_β:
 jmp xchain0_n41_α
# IR_VAR_REF
 xchain0_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2480]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain0_n50_α
 xchain0_n49_α:
 mov qword ptr [rbp + 800], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx80_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx80_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx80_3]
 lea rdx, [rip + .Lx80_4]
 jmp rax
.Lx80_3:
 mov qword ptr [rbp + 808], rsp
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx80_5
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx80_2
.Lx80_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx80_2
.Lx80_4:
 mov rax, qword ptr [rbp + 800]
 test rax, rax
 jne .Lx80_6
 mov qword ptr [rbp + 800], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx80_2
.Lx80_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx80_2
.Lx80_1:
 call rt_faildescr@PLT
.Lx80_2:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain0_n27_α
 jmp xchain0_n51_α
 xchain0_n49_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 808]
 jmp qword ptr [rsp]
.Lx80_0:
 .quad .Lx80_0_s
.Lx80_0_s:
 .string "rule3/2"
# IR_VAR_REF
 xchain0_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2480]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain0_n52_α
# IR_SUSPEND yield+resume
 xchain0_n51_α:
 lea rax, [rip + xchain0_n51_β]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$3_γ
 xchain0_n51_β:
 jmp xchain0_n49_β
 xchain0_n52_α:
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
 je xchain0_n41_α
 jmp xchain0_n53_α
 xchain0_n52_β:
 jmp xchain0_n41_α
# IR_VAR_REF
 xchain0_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2464]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain0_n54_α
# IR_VAR_REF
 xchain0_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2480]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain0_n55_α
 xchain0_n55_α:
 mov qword ptr [rbp + 224], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 256]
 mov rdx, qword ptr [rbp + 264]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 288]
 mov rdx, qword ptr [rbp + 296]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx91_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx91_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx91_3]
 lea rdx, [rip + .Lx91_4]
 jmp rax
.Lx91_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx91_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx91_2
.Lx91_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx91_2
.Lx91_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx91_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx91_2
.Lx91_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx91_2
.Lx91_1:
 call rt_faildescr@PLT
.Lx91_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain0_n41_α
 jmp xchain0_n56_α
 xchain0_n55_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string "rule4/2"
# IR_SUSPEND yield+resume
 xchain0_n56_α:
 lea rax, [rip + xchain0_n56_β]
 mov qword ptr [rbp + 2432], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule$3_γ
 xchain0_n56_β:
 jmp xchain0_n55_β
proc_rule$3_res:
add rsp, 8
pop rbp
proc_rule$3_β:
jmp qword ptr [rbp + 2432]
proc_rule$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule$3_res]
push rax
mov rax, [rbp + 2504]
mov rbp, [rbp + 2520]
jmp rax
proc_rule$3_ω:
mov rax, [rbp + 2512]
lea rsp, [rbp + 2528]
mov rbp, [rbp + 2520]
jmp rax
  .globl proc_rule4$2_α
proc_rule4$2_α:
#=======================================================================================================================
    .global proc_rule4$2_α
    .global proc_rule4$2_β
    .global proc_rule4$2_γ
    .global proc_rule4$2_ω
  sub rsp, 1376
  mov [rsp + 1352], rcx
  mov [rsp + 1360], rdx
  mov [rsp + 1368], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1272], rsp
  mov rdi, rsp
  mov esi, 1248
  mov edx, 1344
  call rt_jmp_frame_lexprep2@PLT
proc_rule4$2_α_body:
lea rax, [rip + xchain94_n17_β]
mov qword ptr [rbp + 1248], rax
 xchain94_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule4$2_ω
 jmp xchain94_n1_α
 xchain94_n0_β:
 jmp proc_rule4$2_ω
# IR_VAR_REF
 xchain94_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain94_n2_α
# IR_LIT_STRING
 xchain94_n2_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain94_n3_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
 .string "."
# IR_LIT_STRING
 xchain94_n3_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain94_n4_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "u"
# IR_LIT_STRING
 xchain94_n4_α:
 mov qword ptr [rbp + 1072], 1
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [rbp + 1080], rax
 jmp xchain94_n5_α
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
 .string "."
# IR_LIT_STRING
 xchain94_n5_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx101_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain94_n6_α
.Lx101_0:
 .quad .Lx101_0_s
.Lx101_0_s:
 .string "u"
# IR_VAR_REF
 xchain94_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain94_n7_α
 xchain94_n7_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1072] -> [zr+1008]
 mov rax, qword ptr [rbp + 1072]
 mov qword ptr [rbp + 1008], rax
 mov rax, qword ptr [rbp + 1080]
 mov qword ptr [rbp + 1016], rax
# marshal arg1 = producer-box slot [zr+960] -> [zr+1024]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 1024], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 1032], rax
# marshal arg2 = producer-box slot [zr+928] -> [zr+1040]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 1048], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1008]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 cmp eax, 99
 je proc_rule4$2_ω
 jmp xchain94_n8_α
 xchain94_n7_β:
 jmp proc_rule4$2_ω
 xchain94_n8_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1152]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1160], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1168]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1176], rax
# marshal arg2 = producer-box slot [zr+992] -> [zr+1184]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1152]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain94_n10_α
 jmp xchain94_n9_α
 xchain94_n8_β:
 jmp xchain94_n10_α
 xchain94_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+896] -> [zr+848]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+1136] -> [zr+864]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain94_n10_α
 jmp xchain94_n11_α
 xchain94_n9_β:
 jmp xchain94_n10_α
 xchain94_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+672]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je proc_rule4$2_ω
 jmp xchain94_n12_α
 xchain94_n10_β:
 jmp proc_rule4$2_ω
# IR_VAR_REF
 xchain94_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain94_n13_α
# IR_VAR_REF
 xchain94_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain94_n14_α
# IR_VAR_REF
 xchain94_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain94_n15_α
# IR_VAR_REF
 xchain94_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain94_n16_α
 xchain94_n15_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 728], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+736]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain94_n10_α
 jmp xchain94_n17_α
 xchain94_n15_β:
 jmp xchain94_n10_α
# IR_VAR_REF
 xchain94_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain94_n18_α
# IR_SUSPEND yield+resume
 xchain94_n17_α:
 lea rax, [rip + xchain94_n17_β]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule4$2_γ
 xchain94_n17_β:
 jmp xchain94_n10_α
 xchain94_n18_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+528]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# marshal arg2 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain94_n20_α
 jmp xchain94_n19_α
 xchain94_n18_β:
 jmp xchain94_n20_α
# IR_VAR_REF
 xchain94_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain94_n21_α
 xchain94_n20_α:
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
 je proc_rule4$2_ω
 jmp proc_rule4$2_ω
 xchain94_n20_β:
 jmp proc_rule4$2_ω
# IR_VAR_REF
 xchain94_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain94_n22_α
# IR_VAR_REF
 xchain94_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain94_n23_α
 xchain94_n23_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+352]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg2 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain94_n20_α
 jmp xchain94_n24_α
 xchain94_n23_β:
 jmp xchain94_n20_α
# IR_VAR_REF
 xchain94_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1280]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain94_n25_α
# IR_VAR_REF
 xchain94_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1296]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain94_n26_α
 xchain94_n26_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx135_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx135_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx135_3]
 lea rdx, [rip + .Lx135_4]
 jmp rax
.Lx135_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx135_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx135_2
.Lx135_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx135_2
.Lx135_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx135_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx135_2
.Lx135_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx135_2
.Lx135_1:
 call rt_faildescr@PLT
.Lx135_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain94_n20_α
 jmp xchain94_n27_α
 xchain94_n26_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx135_0:
 .quad .Lx135_0_s
.Lx135_0_s:
 .string "rule4/2"
# IR_SUSPEND yield+resume
 xchain94_n27_α:
 lea rax, [rip + xchain94_n27_β]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule4$2_γ
 xchain94_n27_β:
 jmp xchain94_n26_β
proc_rule4$2_res:
add rsp, 8
pop rbp
proc_rule4$2_β:
jmp qword ptr [rbp + 1248]
proc_rule4$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule4$2_res]
push rax
mov rax, [rbp + 1352]
mov rbp, [rbp + 1368]
jmp rax
proc_rule4$2_ω:
mov rax, [rbp + 1360]
lea rsp, [rbp + 1376]
mov rbp, [rbp + 1368]
jmp rax
  .globl proc_rule2$2_α
proc_rule2$2_α:
#=======================================================================================================================
    .global proc_rule2$2_α
    .global proc_rule2$2_β
    .global proc_rule2$2_γ
    .global proc_rule2$2_ω
  sub rsp, 800
  mov [rsp + 776], rcx
  mov [rsp + 784], rdx
  mov [rsp + 792], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 728], rsp
  mov rdi, rsp
  mov esi, 704
  mov edx, 768
  call rt_jmp_frame_lexprep2@PLT
proc_rule2$2_α_body:
lea rax, [rip + xchain138_n14_β]
mov qword ptr [rbp + 704], rax
 xchain138_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule2$2_ω
 jmp xchain138_n1_α
 xchain138_n0_β:
 jmp proc_rule2$2_ω
# IR_VAR_REF
 xchain138_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain138_n2_α
# IR_LIT_STRING
 xchain138_n2_α:
 mov qword ptr [rbp + 640], 1
 mov rax, qword ptr [rip + .Lx142_0]
 mov qword ptr [rbp + 648], rax
 jmp xchain138_n3_α
.Lx142_0:
 .quad .Lx142_0_s
.Lx142_0_s:
 .string "m"
# IR_VAR_REF
 xchain138_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 736]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain138_n4_α
 xchain138_n4_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+528] -> [zr+576]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 584], rax
# marshal arg1 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg2 = producer-box slot [zr+672] -> [zr+608]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain138_n6_α
 jmp xchain138_n5_α
 xchain138_n4_β:
 jmp xchain138_n6_α
# IR_VAR_REF
 xchain138_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 jmp xchain138_n7_α
 xchain138_n6_α:
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
 je proc_rule2$2_ω
 jmp proc_rule2$2_ω
 xchain138_n6_β:
 jmp proc_rule2$2_ω
# IR_LIT_STRING
 xchain138_n7_α:
 mov qword ptr [rbp + 464], 1
 mov rax, qword ptr [rip + .Lx149_0]
 mov qword ptr [rbp + 472], rax
 jmp xchain138_n8_α
.Lx149_0:
 .quad .Lx149_0_s
.Lx149_0_s:
 .string "m"
# IR_VAR_REF
 xchain138_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 752]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain138_n9_α
 xchain138_n9_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+352] -> [zr+400]
 mov rax, qword ptr [rbp + 352]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 360]
 mov qword ptr [rbp + 408], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+416]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 424], rax
# marshal arg2 = producer-box slot [zr+496] -> [zr+432]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 440], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 400]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 cmp eax, 99
 je xchain138_n6_α
 jmp xchain138_n10_α
 xchain138_n9_β:
 jmp xchain138_n6_α
# IR_VAR_REF
 xchain138_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 736]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain138_n11_α
# IR_VAR_REF
 xchain138_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 736]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 jmp xchain138_n12_α
# IR_VAR_REF
 xchain138_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 752]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 jmp xchain138_n13_α
 xchain138_n13_α:
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
 mov rdi, qword ptr [rip + .Lx160_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx160_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx160_3]
 lea rdx, [rip + .Lx160_4]
 jmp rax
.Lx160_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx160_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx160_2
.Lx160_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx160_2
.Lx160_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx160_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx160_2
.Lx160_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx160_2
.Lx160_1:
 call rt_faildescr@PLT
.Lx160_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain138_n6_α
 jmp xchain138_n14_α
 xchain138_n13_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx160_0:
 .quad .Lx160_0_s
.Lx160_0_s:
 .string "my_append/3"
# IR_SUSPEND yield+resume
 xchain138_n14_α:
 lea rax, [rip + xchain138_n14_β]
 mov qword ptr [rbp + 704], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule2$2_γ
 xchain138_n14_β:
 jmp xchain138_n13_β
proc_rule2$2_res:
add rsp, 8
pop rbp
proc_rule2$2_β:
jmp qword ptr [rbp + 704]
proc_rule2$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule2$2_res]
push rax
mov rax, [rbp + 776]
mov rbp, [rbp + 792]
jmp rax
proc_rule2$2_ω:
mov rax, [rbp + 784]
lea rsp, [rbp + 800]
mov rbp, [rbp + 792]
jmp rax
  .globl proc_theorem$3_α
proc_theorem$3_α:
#=======================================================================================================================
    .global proc_theorem$3_α
    .global proc_theorem$3_β
    .global proc_theorem$3_γ
    .global proc_theorem$3_ω
  sub rsp, 2944
  mov [rsp + 2920], rcx
  mov [rsp + 2928], rdx
  mov [rsp + 2936], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2808], rsp
  mov rdi, rsp
  mov esi, 2784
  mov edx, 2912
  call rt_jmp_frame_lexprep2@PLT
proc_theorem$3_α_body:
lea rax, [rip + xchain163_n48_β]
mov qword ptr [rbp + 2784], rax
 xchain163_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain163_n1_α
 xchain163_n0_β:
 jmp proc_theorem$3_ω
# IR_VAR_REF
 xchain163_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
 jmp xchain163_n2_α
# IR_LIT_STRING
 xchain163_n2_α:
 mov qword ptr [rbp + 2752], 1
 mov rax, qword ptr [rip + .Lx167_0]
 mov qword ptr [rbp + 2760], rax
 jmp xchain163_n3_α
.Lx167_0:
 .quad .Lx167_0_s
.Lx167_0_s:
 .string "."
# IR_LIT_STRING
 xchain163_n3_α:
 mov qword ptr [rbp + 2640], 1
 mov rax, qword ptr [rip + .Lx168_0]
 mov qword ptr [rbp + 2648], rax
 jmp xchain163_n4_α
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "m"
# IR_LIT_STRING
 xchain163_n4_α:
 mov qword ptr [rbp + 2608], 1
 mov rax, qword ptr [rip + .Lx169_0]
 mov qword ptr [rbp + 2616], rax
 jmp xchain163_n5_α
.Lx169_0:
 .quad .Lx169_0_s
.Lx169_0_s:
 .string "."
# IR_LIT_STRING
 xchain163_n5_α:
 mov qword ptr [rbp + 2496], 1
 mov rax, qword ptr [rip + .Lx170_0]
 mov qword ptr [rbp + 2504], rax
 jmp xchain163_n6_α
.Lx170_0:
 .quad .Lx170_0_s
.Lx170_0_s:
 .string "i"
# IR_LIT_STRING
 xchain163_n6_α:
 mov qword ptr [rbp + 2464], 1
 mov rax, qword ptr [rip + .Lx171_0]
 mov qword ptr [rbp + 2472], rax
 jmp xchain163_n7_α
.Lx171_0:
 .quad .Lx171_0_s
.Lx171_0_s:
 .string "[]"
 xchain163_n7_α:
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
# marshal arg2 = producer-box slot [zr+2464] -> [zr+2576]
 mov rax, qword ptr [rbp + 2464]
 mov qword ptr [rbp + 2576], rax
 mov rax, qword ptr [rbp + 2472]
 mov qword ptr [rbp + 2584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2544]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain163_n8_α
 xchain163_n7_β:
 jmp proc_theorem$3_ω
 xchain163_n8_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2752] -> [zr+2688]
 mov rax, qword ptr [rbp + 2752]
 mov qword ptr [rbp + 2688], rax
 mov rax, qword ptr [rbp + 2760]
 mov qword ptr [rbp + 2696], rax
# marshal arg1 = producer-box slot [zr+2640] -> [zr+2704]
 mov rax, qword ptr [rbp + 2640]
 mov qword ptr [rbp + 2704], rax
 mov rax, qword ptr [rbp + 2648]
 mov qword ptr [rbp + 2712], rax
# marshal arg2 = producer-box slot [zr+2528] -> [zr+2720]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2720], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2688]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2672], rax
 mov qword ptr [rbp + 2680], rdx
 cmp eax, 99
 je xchain163_n10_α
 jmp xchain163_n9_α
 xchain163_n8_β:
 jmp xchain163_n10_α
 xchain163_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2432] -> [zr+2384]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2384], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2392], rax
# marshal arg1 = producer-box slot [zr+2672] -> [zr+2400]
 mov rax, qword ptr [rbp + 2672]
 mov qword ptr [rbp + 2400], rax
 mov rax, qword ptr [rbp + 2680]
 mov qword ptr [rbp + 2408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2384]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2368], rax
 mov qword ptr [rbp + 2376], rdx
 cmp eax, 99
 je xchain163_n10_α
 jmp xchain163_n11_α
 xchain163_n9_β:
 jmp xchain163_n10_α
 xchain163_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1504]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1504]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1488], rax
 mov qword ptr [rbp + 1496], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain163_n12_α
 xchain163_n10_β:
 jmp proc_theorem$3_ω
# IR_VAR_REF
 xchain163_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2304], rax
 mov qword ptr [rbp + 2312], rdx
 jmp xchain163_n13_α
# IR_VAR_REF
 xchain163_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain163_n14_α
# IR_VAR_REF
 xchain163_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2816]
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 jmp xchain163_n15_α
# IR_VAR_REF
 xchain163_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 jmp xchain163_n16_α
 xchain163_n15_α:
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
 je xchain163_n10_α
 jmp xchain163_n17_α
 xchain163_n15_β:
 jmp xchain163_n10_α
 xchain163_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1376]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 cmp eax, 99
 je xchain163_n19_α
 jmp xchain163_n18_α
 xchain163_n16_β:
 jmp xchain163_n19_α
# IR_VAR_REF
 xchain163_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain163_n20_α
# IR_VAR_REF
 xchain163_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 jmp xchain163_n21_α
 xchain163_n19_α:
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
 je proc_theorem$3_ω
 jmp proc_theorem$3_ω
 xchain163_n19_β:
 jmp proc_theorem$3_ω
# IR_LIT_STRING
 xchain163_n20_α:
 mov qword ptr [rbp + 2208], 1
 mov rax, qword ptr [rip + .Lx191_0]
 mov qword ptr [rbp + 2216], rax
 jmp xchain163_n22_α
.Lx191_0:
 .quad .Lx191_0_s
.Lx191_0_s:
 .string "."
# IR_VAR_REF
 xchain163_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2896]
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 jmp xchain163_n23_α
# IR_LIT_STRING
 xchain163_n22_α:
 mov qword ptr [rbp + 2096], 1
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 2104], rax
 jmp xchain163_n24_α
.Lx194_0:
 .quad .Lx194_0_s
.Lx194_0_s:
 .string "."
 xchain163_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1248]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 cmp eax, 99
 je xchain163_n19_α
 jmp xchain163_n25_α
 xchain163_n23_β:
 jmp xchain163_n19_α
# IR_LIT_STRING
 xchain163_n24_α:
 mov qword ptr [rbp + 1984], 1
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [rbp + 1992], rax
 jmp xchain163_n26_α
.Lx196_0:
 .quad .Lx196_0_s
.Lx196_0_s:
 .string "a"
# IR_VAR_REF
 xchain163_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 jmp xchain163_n27_α
# IR_LIT_STRING
 xchain163_n26_α:
 mov qword ptr [rbp + 1952], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [rbp + 1960], rax
 jmp xchain163_n28_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "."
# IR_LIT_STRING
 xchain163_n27_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [rbp + 1176], rax
 jmp xchain163_n29_α
.Lx200_0:
 .quad .Lx200_0_s
.Lx200_0_s:
 .string "."
# IR_LIT_STRING
 xchain163_n28_α:
 mov qword ptr [rbp + 1840], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 1848], rax
 jmp xchain163_n30_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "m"
# IR_VAR_REF
 xchain163_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2816]
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 jmp xchain163_n31_α
# IR_LIT_STRING
 xchain163_n30_α:
 mov qword ptr [rbp + 1808], 1
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 1816], rax
 jmp xchain163_n32_α
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "."
# IR_VAR_REF
 xchain163_n31_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 jmp xchain163_n33_α
# IR_LIT_STRING
 xchain163_n32_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 1704], rax
 jmp xchain163_n34_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "i"
 xchain163_n33_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1168] -> [zr+1104]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+1120]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1128], rax
# marshal arg2 = producer-box slot [zr+1024] -> [zr+1136]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1144], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain163_n19_α
 jmp xchain163_n35_α
 xchain163_n33_β:
 jmp xchain163_n19_α
# IR_LIT_STRING
 xchain163_n34_α:
 mov qword ptr [rbp + 1664], 1
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 1672], rax
 jmp xchain163_n36_α
.Lx209_0:
 .quad .Lx209_0_s
.Lx209_0_s:
 .string "[]"
# IR_VAR_REF
 xchain163_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2880]
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 jmp xchain163_n37_α
 xchain163_n36_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1808] -> [zr+1744]
 mov rax, qword ptr [rbp + 1808]
 mov qword ptr [rbp + 1744], rax
 mov rax, qword ptr [rbp + 1816]
 mov qword ptr [rbp + 1752], rax
# marshal arg1 = producer-box slot [zr+1696] -> [zr+1760]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1760], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1768], rax
# marshal arg2 = producer-box slot [zr+1664] -> [zr+1776]
 mov rax, qword ptr [rbp + 1664]
 mov qword ptr [rbp + 1776], rax
 mov rax, qword ptr [rbp + 1672]
 mov qword ptr [rbp + 1784], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1744]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1728], rax
 mov qword ptr [rbp + 1736], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain163_n38_α
 xchain163_n36_β:
 jmp proc_theorem$3_ω
 xchain163_n37_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+960]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 968], rax
# marshal arg1 = producer-box slot [zr+1088] -> [zr+976]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 984], rax
# marshal arg2 = producer-box slot [zr+1200] -> [zr+992]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 992], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 1000], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 960]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain163_n19_α
 jmp xchain163_n39_α
 xchain163_n37_β:
 jmp xchain163_n19_α
 xchain163_n38_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1888]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1888], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1896], rax
# marshal arg1 = producer-box slot [zr+1840] -> [zr+1904]
 mov rax, qword ptr [rbp + 1840]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1848]
 mov qword ptr [rbp + 1912], rax
# marshal arg2 = producer-box slot [zr+1728] -> [zr+1920]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 1928], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1888]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1872], rax
 mov qword ptr [rbp + 1880], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain163_n40_α
 xchain163_n38_β:
 jmp proc_theorem$3_ω
# IR_VAR
 xchain163_n39_α:
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 856], rax
 jmp xchain163_n41_α
 xchain163_n40_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2096] -> [zr+2032]
 mov rax, qword ptr [rbp + 2096]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2104]
 mov qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+1984] -> [zr+2048]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 2056], rax
# marshal arg2 = producer-box slot [zr+1872] -> [zr+2064]
 mov rax, qword ptr [rbp + 1872]
 mov qword ptr [rbp + 2064], rax
 mov rax, qword ptr [rbp + 1880]
 mov qword ptr [rbp + 2072], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2032]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain163_n42_α
 xchain163_n40_β:
 jmp proc_theorem$3_ω
# IR_LIT_INTEGER
 xchain163_n41_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [rbp + 888], rax
 jmp xchain163_n43_α
.Lx218_0:
 .quad 0
# IR_LIT_STRING
 xchain163_n42_α:
 mov qword ptr [rbp + 1632], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [rbp + 1640], rax
 jmp xchain163_n44_α
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string "[]"
 xchain163_n43_α:
# BOX IR_CALL $cmp_gt(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_gt (no by-name dispatch)
 lea rdi, [rbp + 800]
 mov esi, 2
 call rt_pl_dop_cmp_gt@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain163_n19_α
 jmp xchain163_n45_α
 xchain163_n43_β:
 jmp xchain163_n19_α
 xchain163_n44_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2208] -> [zr+2144]
 mov rax, qword ptr [rbp + 2208]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2216]
 mov qword ptr [rbp + 2152], rax
# marshal arg1 = producer-box slot [zr+2016] -> [zr+2160]
 mov rax, qword ptr [rbp + 2016]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 2024]
 mov qword ptr [rbp + 2168], rax
# marshal arg2 = producer-box slot [zr+1632] -> [zr+2176]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 2176], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 2184], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2144]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2128], rax
 mov qword ptr [rbp + 2136], rdx
 cmp eax, 99
 je xchain163_n10_α
 jmp xchain163_n46_α
 xchain163_n44_β:
 jmp xchain163_n10_α
# IR_VAR_REF
 xchain163_n45_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain163_n47_α
 xchain163_n46_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1600] -> [zr+1552]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1552], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1560], rax
# marshal arg1 = producer-box slot [zr+2128] -> [zr+1568]
 mov rax, qword ptr [rbp + 2128]
 mov qword ptr [rbp + 1568], rax
 mov rax, qword ptr [rbp + 2136]
 mov qword ptr [rbp + 1576], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1552]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 cmp eax, 99
 je xchain163_n10_α
 jmp xchain163_n48_α
 xchain163_n46_β:
 jmp xchain163_n10_α
# IR_VAR
 xchain163_n47_α:
 mov rax, qword ptr [rbp + 2896]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 2904]
 mov qword ptr [rbp + 728], rax
 jmp xchain163_n49_α
# IR_SUSPEND yield+resume
 xchain163_n48_α:
 lea rax, [rip + xchain163_n48_β]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_theorem$3_γ
 xchain163_n48_β:
 jmp xchain163_n10_α
# IR_LIT_INTEGER
 xchain163_n49_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 760], rax
 jmp xchain163_n50_α
.Lx229_0:
 .quad 1
 xchain163_n50_α:
# BOX IR_CALL $ax_sub(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+720] -> [zr+672]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 680], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+688]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 688], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 696], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_ax_sub (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 2
 call rt_pl_dop_ax_sub@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je xchain163_n19_α
 jmp xchain163_n51_α
 xchain163_n50_β:
 jmp xchain163_n19_α
 xchain163_n51_α:
# BOX IR_CALL $is_v(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_is_v (no by-name dispatch)
 lea rdi, [rbp + 576]
 mov esi, 2
 call rt_pl_dop_is_v@PLT
 mov qword ptr [rbp + 560], rax
 mov qword ptr [rbp + 568], rdx
 cmp eax, 99
 je xchain163_n19_α
 jmp xchain163_n52_α
 xchain163_n51_β:
 jmp xchain163_n19_α
# IR_VAR_REF
 xchain163_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2832]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 jmp xchain163_n53_α
# IR_VAR_REF
 xchain163_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2864]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain163_n54_α
# IR_VAR_REF
 xchain163_n54_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2880]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 jmp xchain163_n55_α
 xchain163_n55_α:
 mov qword ptr [rbp + 432], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 464]
 mov rdx, qword ptr [rbp + 472]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 496]
 mov rdx, qword ptr [rbp + 504]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 528]
 mov rdx, qword ptr [rbp + 536]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx239_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx239_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx239_3]
 lea rdx, [rip + .Lx239_4]
 jmp rax
.Lx239_3:
 mov qword ptr [rbp + 440], rsp
 mov rax, qword ptr [rbp + 432]
 test rax, rax
 jne .Lx239_5
 mov qword ptr [rbp + 432], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx239_2
.Lx239_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx239_2
.Lx239_4:
 mov rax, qword ptr [rbp + 432]
 test rax, rax
 jne .Lx239_6
 mov qword ptr [rbp + 432], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx239_2
.Lx239_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx239_2
.Lx239_1:
 call rt_faildescr@PLT
.Lx239_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain163_n19_α
 jmp xchain163_n56_α
 xchain163_n55_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 440]
 jmp qword ptr [rsp]
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "theorem/3"
# IR_VAR_REF
 xchain163_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2816]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain163_n57_α
# IR_VAR_REF
 xchain163_n57_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2832]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain163_n58_α
# IR_VAR_REF
 xchain163_n58_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2848]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain163_n59_α
 xchain163_n59_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx247_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx247_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx247_3]
 lea rdx, [rip + .Lx247_4]
 jmp rax
.Lx247_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx247_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx247_2
.Lx247_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx247_2
.Lx247_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx247_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx247_2
.Lx247_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx247_2
.Lx247_1:
 call rt_faildescr@PLT
.Lx247_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain163_n55_β
 jmp xchain163_n60_α
 xchain163_n59_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "rule/3"
# IR_SUSPEND yield+resume
 xchain163_n60_α:
 lea rax, [rip + xchain163_n60_β]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_theorem$3_γ
 xchain163_n60_β:
 jmp xchain163_n59_β
proc_theorem$3_res:
add rsp, 8
pop rbp
proc_theorem$3_β:
jmp qword ptr [rbp + 2784]
proc_theorem$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_theorem$3_res]
push rax
mov rax, [rbp + 2920]
mov rbp, [rbp + 2936]
jmp rax
proc_theorem$3_ω:
mov rax, [rbp + 2928]
lea rsp, [rbp + 2944]
mov rbp, [rbp + 2936]
jmp rax
  .globl proc_mu$0_α
proc_mu$0_α:
#=======================================================================================================================
    .global proc_mu$0_α
    .global proc_mu$0_β
    .global proc_mu$0_γ
    .global proc_mu$0_ω
  sub rsp, 1120
  mov [rsp + 1096], rcx
  mov [rsp + 1104], rdx
  mov [rsp + 1112], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1064], rsp
  mov rdi, rsp
  mov esi, 1040
  mov edx, 1088
  call rt_jmp_frame_lexprep2@PLT
proc_mu$0_α_body:
lea rax, [rip + xchain250_n22_β]
mov qword ptr [rbp + 1040], rax
 xchain250_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain250_n1_α
 xchain250_n0_β:
 jmp proc_mu$0_ω
# IR_LIT_STRING
 xchain250_n1_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain250_n2_α
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
 .string "."
# IR_LIT_STRING
 xchain250_n2_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain250_n3_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "m"
# IR_LIT_STRING
 xchain250_n3_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain250_n4_α
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "."
# IR_LIT_STRING
 xchain250_n4_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 696], rax
 jmp xchain250_n5_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "u"
# IR_LIT_STRING
 xchain250_n5_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 664], rax
 jmp xchain250_n6_α
.Lx256_0:
 .quad .Lx256_0_s
.Lx256_0_s:
 .string "."
# IR_LIT_STRING
 xchain250_n6_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 552], rax
 jmp xchain250_n7_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "i"
# IR_LIT_STRING
 xchain250_n7_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 520], rax
 jmp xchain250_n8_α
.Lx258_0:
 .quad .Lx258_0_s
.Lx258_0_s:
 .string "."
# IR_LIT_STRING
 xchain250_n8_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx259_0]
 mov qword ptr [rbp + 408], rax
 jmp xchain250_n9_α
.Lx259_0:
 .quad .Lx259_0_s
.Lx259_0_s:
 .string "i"
# IR_LIT_STRING
 xchain250_n9_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [rbp + 376], rax
 jmp xchain250_n10_α
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
 .string "."
# IR_LIT_STRING
 xchain250_n10_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain250_n11_α
.Lx261_0:
 .quad .Lx261_0_s
.Lx261_0_s:
 .string "u"
# IR_LIT_STRING
 xchain250_n11_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [rbp + 232], rax
 jmp xchain250_n12_α
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
 .string "[]"
 xchain250_n12_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+304]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 312], rax
# marshal arg1 = producer-box slot [zr+256] -> [zr+320]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 328], rax
# marshal arg2 = producer-box slot [zr+224] -> [zr+336]
 mov rax, qword ptr [rbp + 224]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 232]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 304]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain250_n13_α
 xchain250_n12_β:
 jmp proc_mu$0_ω
 xchain250_n13_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+512] -> [zr+448]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 456], rax
# marshal arg1 = producer-box slot [zr+400] -> [zr+464]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 464], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 472], rax
# marshal arg2 = producer-box slot [zr+288] -> [zr+480]
 mov rax, qword ptr [rbp + 288]
 mov qword ptr [rbp + 480], rax
 mov rax, qword ptr [rbp + 296]
 mov qword ptr [rbp + 488], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 448]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain250_n14_α
 xchain250_n13_β:
 jmp proc_mu$0_ω
 xchain250_n14_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+656] -> [zr+592]
 mov rax, qword ptr [rbp + 656]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 664]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+544] -> [zr+608]
 mov rax, qword ptr [rbp + 544]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 552]
 mov qword ptr [rbp + 616], rax
# marshal arg2 = producer-box slot [zr+432] -> [zr+624]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 624], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 632], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain250_n15_α
 xchain250_n14_β:
 jmp proc_mu$0_ω
 xchain250_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+800] -> [zr+736]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 744], rax
# marshal arg1 = producer-box slot [zr+688] -> [zr+752]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 760], rax
# marshal arg2 = producer-box slot [zr+576] -> [zr+768]
 mov rax, qword ptr [rbp + 576]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 584]
 mov qword ptr [rbp + 776], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 736]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain250_n16_α
 xchain250_n15_β:
 jmp proc_mu$0_ω
 xchain250_n16_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+896]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 904], rax
# marshal arg2 = producer-box slot [zr+720] -> [zr+912]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je xchain250_n18_α
 jmp xchain250_n17_α
 xchain250_n16_β:
 jmp xchain250_n18_α
# IR_LIT_INTEGER
 xchain250_n17_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain250_n19_α
.Lx268_0:
 .quad 5
 xchain250_n18_α:
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
 je proc_mu$0_ω
 jmp proc_mu$0_ω
 xchain250_n18_β:
 jmp proc_mu$0_ω
# IR_VAR_REF
 xchain250_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1072]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 jmp xchain250_n20_α
 xchain250_n20_α:
 mov qword ptr [rbp + 192], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 976]
 mov rdx, qword ptr [rbp + 984]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1008]
 mov rdx, qword ptr [rbp + 1016]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx273_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx273_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx273_3]
 lea rdx, [rip + .Lx273_4]
 jmp rax
.Lx273_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx273_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx273_2
.Lx273_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx273_2
.Lx273_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx273_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx273_2
.Lx273_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx273_2
.Lx273_1:
 call rt_faildescr@PLT
.Lx273_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain250_n18_α
 jmp xchain250_n21_α
 xchain250_n20_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "theorem/3"
 xchain250_n21_α:
# IR_CUT
 jmp xchain250_n22_α
# IR_SUSPEND yield+resume
 xchain250_n22_α:
 lea rax, [rip + xchain250_n22_β]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_mu$0_γ
 xchain250_n22_β:
 jmp xchain250_n20_β
proc_mu$0_res:
add rsp, 8
pop rbp
proc_mu$0_β:
jmp qword ptr [rbp + 1040]
proc_mu$0_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_mu$0_res]
push rax
mov rax, [rbp + 1096]
mov rbp, [rbp + 1112]
jmp rax
proc_mu$0_ω:
mov rax, [rbp + 1104]
lea rsp, [rbp + 1120]
mov rbp, [rbp + 1112]
jmp rax
  .globl proc_rule3$2_α
proc_rule3$2_α:
#=======================================================================================================================
    .global proc_rule3$2_α
    .global proc_rule3$2_β
    .global proc_rule3$2_γ
    .global proc_rule3$2_ω
  sub rsp, 1552
  mov [rsp + 1528], rcx
  mov [rsp + 1536], rdx
  mov [rsp + 1544], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1464], rsp
  mov rdi, rsp
  mov esi, 1440
  mov edx, 1520
  call rt_jmp_frame_lexprep2@PLT
proc_rule3$2_α_body:
lea rax, [rip + xchain277_n22_β]
mov qword ptr [rbp + 1440], rax
 xchain277_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain277_n1_α
 xchain277_n0_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
 xchain277_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 jmp xchain277_n2_α
# IR_LIT_STRING
 xchain277_n2_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx281_0]
 mov qword ptr [rbp + 1416], rax
 jmp xchain277_n3_α
.Lx281_0:
 .quad .Lx281_0_s
.Lx281_0_s:
 .string "."
# IR_LIT_STRING
 xchain277_n3_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx282_0]
 mov qword ptr [rbp + 1304], rax
 jmp xchain277_n4_α
.Lx282_0:
 .quad .Lx282_0_s
.Lx282_0_s:
 .string "i"
# IR_LIT_STRING
 xchain277_n4_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx283_0]
 mov qword ptr [rbp + 1272], rax
 jmp xchain277_n5_α
.Lx283_0:
 .quad .Lx283_0_s
.Lx283_0_s:
 .string "."
# IR_LIT_STRING
 xchain277_n5_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx284_0]
 mov qword ptr [rbp + 1160], rax
 jmp xchain277_n6_α
.Lx284_0:
 .quad .Lx284_0_s
.Lx284_0_s:
 .string "i"
# IR_LIT_STRING
 xchain277_n6_α:
 mov qword ptr [rbp + 1120], 1
 mov rax, qword ptr [rip + .Lx285_0]
 mov qword ptr [rbp + 1128], rax
 jmp xchain277_n7_α
.Lx285_0:
 .quad .Lx285_0_s
.Lx285_0_s:
 .string "."
# IR_LIT_STRING
 xchain277_n7_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx286_0]
 mov qword ptr [rbp + 1016], rax
 jmp xchain277_n8_α
.Lx286_0:
 .quad .Lx286_0_s
.Lx286_0_s:
 .string "i"
# IR_VAR_REF
 xchain277_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
 jmp xchain277_n9_α
 xchain277_n9_α:
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
# marshal arg2 = producer-box slot [zr+976] -> [zr+1088]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 1096], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1056]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain277_n10_α
 xchain277_n9_β:
 jmp proc_rule3$2_ω
 xchain277_n10_α:
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
 je proc_rule3$2_ω
 jmp xchain277_n11_α
 xchain277_n10_β:
 jmp proc_rule3$2_ω
 xchain277_n11_α:
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
 je xchain277_n13_α
 jmp xchain277_n12_α
 xchain277_n11_β:
 jmp xchain277_n13_α
 xchain277_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+896]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 904], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+912]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 896]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 880], rax
 mov qword ptr [rbp + 888], rdx
 cmp eax, 99
 je xchain277_n13_α
 jmp xchain277_n14_α
 xchain277_n12_β:
 jmp xchain277_n13_α
 xchain277_n13_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+672]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain277_n15_α
 xchain277_n13_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
 xchain277_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain277_n16_α
# IR_VAR_REF
 xchain277_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain277_n17_α
# IR_LIT_STRING
 xchain277_n16_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx298_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain277_n18_α
.Lx298_0:
 .quad .Lx298_0_s
.Lx298_0_s:
 .string "u"
# IR_VAR_REF
 xchain277_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain277_n19_α
# IR_VAR_REF
 xchain277_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 jmp xchain277_n20_α
# IR_VAR_REF
 xchain277_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1472]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain277_n21_α
 xchain277_n20_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+704] -> [zr+752]
 mov rax, qword ptr [rbp + 704]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 712]
 mov qword ptr [rbp + 760], rax
# marshal arg1 = producer-box slot [zr+816] -> [zr+768]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 768], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 776], rax
# marshal arg2 = producer-box slot [zr+848] -> [zr+784]
 mov rax, qword ptr [rbp + 848]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 856]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain277_n13_α
 jmp xchain277_n22_α
 xchain277_n20_β:
 jmp xchain277_n13_α
 xchain277_n21_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+528]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# marshal arg2 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain277_n24_α
 jmp xchain277_n23_α
 xchain277_n21_β:
 jmp xchain277_n24_α
# IR_SUSPEND yield+resume
 xchain277_n22_α:
 lea rax, [rip + xchain277_n22_β]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule3$2_γ
 xchain277_n22_β:
 jmp xchain277_n13_α
# IR_VAR_REF
 xchain277_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain277_n25_α
 xchain277_n24_α:
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
 je proc_rule3$2_ω
 jmp proc_rule3$2_ω
 xchain277_n24_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
 xchain277_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain277_n26_α
# IR_VAR_REF
 xchain277_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1488]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain277_n27_α
 xchain277_n27_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+352]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg2 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain277_n24_α
 jmp xchain277_n28_α
 xchain277_n27_β:
 jmp xchain277_n24_α
# IR_VAR_REF
 xchain277_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1472]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain277_n29_α
# IR_VAR_REF
 xchain277_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1488]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain277_n30_α
 xchain277_n30_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx322_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx322_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx322_3]
 lea rdx, [rip + .Lx322_4]
 jmp rax
.Lx322_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx322_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx322_2
.Lx322_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx322_2
.Lx322_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx322_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx322_2
.Lx322_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx322_2
.Lx322_1:
 call rt_faildescr@PLT
.Lx322_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain277_n24_α
 jmp xchain277_n31_α
 xchain277_n30_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
 .string "rule3/2"
# IR_SUSPEND yield+resume
 xchain277_n31_α:
 lea rax, [rip + xchain277_n31_β]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule3$2_γ
 xchain277_n31_β:
 jmp xchain277_n30_β
proc_rule3$2_res:
add rsp, 8
pop rbp
proc_rule3$2_β:
jmp qword ptr [rbp + 1440]
proc_rule3$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule3$2_res]
push rax
mov rax, [rbp + 1528]
mov rbp, [rbp + 1544]
jmp rax
proc_rule3$2_ω:
mov rax, [rbp + 1536]
lea rsp, [rbp + 1552]
mov rbp, [rbp + 1544]
jmp rax
  .globl proc_rule1$2_α
proc_rule1$2_α:
#=======================================================================================================================
    .global proc_rule1$2_α
    .global proc_rule1$2_β
    .global proc_rule1$2_γ
    .global proc_rule1$2_ω
  sub rsp, 1504
  mov [rsp + 1480], rcx
  mov [rsp + 1488], rdx
  mov [rsp + 1496], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1416], rsp
  mov rdi, rsp
  mov esi, 1392
  mov edx, 1472
  call rt_jmp_frame_lexprep2@PLT
proc_rule1$2_α_body:
lea rax, [rip + xchain325_n27_β]
mov qword ptr [rbp + 1392], rax
 xchain325_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule1$2_ω
 jmp xchain325_n1_α
 xchain325_n0_β:
 jmp proc_rule1$2_ω
# IR_VAR_REF
 xchain325_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 jmp xchain325_n2_α
# IR_LIT_STRING
 xchain325_n2_α:
 mov qword ptr [rbp + 1360], 1
 mov rax, qword ptr [rip + .Lx329_0]
 mov qword ptr [rbp + 1368], rax
 jmp xchain325_n3_α
.Lx329_0:
 .quad .Lx329_0_s
.Lx329_0_s:
 .string "."
# IR_LIT_STRING
 xchain325_n3_α:
 mov qword ptr [rbp + 1248], 1
 mov rax, qword ptr [rip + .Lx330_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain325_n4_α
.Lx330_0:
 .quad .Lx330_0_s
.Lx330_0_s:
 .string "i"
# IR_LIT_STRING
 xchain325_n4_α:
 mov qword ptr [rbp + 1216], 1
 mov rax, qword ptr [rip + .Lx331_0]
 mov qword ptr [rbp + 1224], rax
 jmp xchain325_n5_α
.Lx331_0:
 .quad .Lx331_0_s
.Lx331_0_s:
 .string "[]"
 xchain325_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1296]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1296], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1304], rax
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1312]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1320], rax
# marshal arg2 = producer-box slot [zr+1216] -> [zr+1328]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1296]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 cmp eax, 99
 je xchain325_n7_α
 jmp xchain325_n6_α
 xchain325_n5_β:
 jmp xchain325_n7_α
 xchain325_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1184] -> [zr+1136]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1136], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1144], rax
# marshal arg1 = producer-box slot [zr+1280] -> [zr+1152]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1136]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 cmp eax, 99
 je xchain325_n7_α
 jmp xchain325_n8_α
 xchain325_n6_β:
 jmp xchain325_n7_α
 xchain325_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+672]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 672], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 672]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 656], rax
 mov qword ptr [rbp + 664], rdx
 cmp eax, 99
 je proc_rule1$2_ω
 jmp xchain325_n9_α
 xchain325_n7_β:
 jmp proc_rule1$2_ω
# IR_VAR_REF
 xchain325_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain325_n10_α
# IR_VAR_REF
 xchain325_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain325_n11_α
# IR_LIT_STRING
 xchain325_n10_α:
 mov qword ptr [rbp + 1088], 1
 mov rax, qword ptr [rip + .Lx339_0]
 mov qword ptr [rbp + 1096], rax
 jmp xchain325_n12_α
.Lx339_0:
 .quad .Lx339_0_s
.Lx339_0_s:
 .string "."
# IR_VAR_REF
 xchain325_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1456]
 mov qword ptr [rbp + 592], rax
 mov qword ptr [rbp + 600], rdx
 jmp xchain325_n13_α
# IR_LIT_STRING
 xchain325_n12_α:
 mov qword ptr [rbp + 976], 1
 mov rax, qword ptr [rip + .Lx342_0]
 mov qword ptr [rbp + 984], rax
 jmp xchain325_n14_α
.Lx342_0:
 .quad .Lx342_0_s
.Lx342_0_s:
 .string "i"
# IR_VAR_REF
 xchain325_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 jmp xchain325_n15_α
# IR_LIT_STRING
 xchain325_n14_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx345_0]
 mov qword ptr [rbp + 952], rax
 jmp xchain325_n16_α
.Lx345_0:
 .quad .Lx345_0_s
.Lx345_0_s:
 .string "."
 xchain325_n15_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+480] -> [zr+528]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+592] -> [zr+544]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 552], rax
# marshal arg2 = producer-box slot [zr+624] -> [zr+560]
 mov rax, qword ptr [rbp + 624]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 632]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain325_n18_α
 jmp xchain325_n17_α
 xchain325_n15_β:
 jmp xchain325_n18_α
# IR_LIT_STRING
 xchain325_n16_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx347_0]
 mov qword ptr [rbp + 840], rax
 jmp xchain325_n19_α
.Lx347_0:
 .quad .Lx347_0_s
.Lx347_0_s:
 .string "u"
# IR_VAR_REF
 xchain325_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain325_n20_α
 xchain325_n18_α:
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
 je proc_rule1$2_ω
 jmp proc_rule1$2_ω
 xchain325_n18_β:
 jmp proc_rule1$2_ω
# IR_LIT_STRING
 xchain325_n19_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx351_0]
 mov qword ptr [rbp + 808], rax
 jmp xchain325_n21_α
.Lx351_0:
 .quad .Lx351_0_s
.Lx351_0_s:
 .string "[]"
# IR_VAR_REF
 xchain325_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1456]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
 jmp xchain325_n22_α
 xchain325_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+944] -> [zr+880]
 mov rax, qword ptr [rbp + 944]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 952]
 mov qword ptr [rbp + 888], rax
# marshal arg1 = producer-box slot [zr+832] -> [zr+896]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 904], rax
# marshal arg2 = producer-box slot [zr+800] -> [zr+912]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 920], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 880]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 cmp eax, 99
 je proc_rule1$2_ω
 jmp xchain325_n23_α
 xchain325_n21_β:
 jmp proc_rule1$2_ω
# IR_VAR_REF
 xchain325_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1440]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
 jmp xchain325_n24_α
 xchain325_n23_α:
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
# marshal arg2 = producer-box slot [zr+864] -> [zr+1056]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1024]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
 cmp eax, 99
 je xchain325_n7_α
 jmp xchain325_n25_α
 xchain325_n23_β:
 jmp xchain325_n7_α
 xchain325_n24_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+304] -> [zr+352]
 mov rax, qword ptr [rbp + 304]
 mov qword ptr [rbp + 352], rax
 mov rax, qword ptr [rbp + 312]
 mov qword ptr [rbp + 360], rax
# marshal arg1 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg2 = producer-box slot [zr+448] -> [zr+384]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 352]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 cmp eax, 99
 je xchain325_n18_α
 jmp xchain325_n26_α
 xchain325_n24_β:
 jmp xchain325_n18_α
 xchain325_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+768] -> [zr+720]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 728], rax
# marshal arg1 = producer-box slot [zr+1008] -> [zr+736]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 744], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain325_n7_α
 jmp xchain325_n27_α
 xchain325_n25_β:
 jmp xchain325_n7_α
# IR_VAR_REF
 xchain325_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1424]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain325_n28_α
# IR_SUSPEND yield+resume
 xchain325_n27_α:
 lea rax, [rip + xchain325_n27_β]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule1$2_γ
 xchain325_n27_β:
 jmp xchain325_n7_α
# IR_VAR_REF
 xchain325_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1440]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain325_n29_α
 xchain325_n29_α:
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx367_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx367_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx367_3]
 lea rdx, [rip + .Lx367_4]
 jmp rax
.Lx367_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx367_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx367_2
.Lx367_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx367_2
.Lx367_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx367_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx367_2
.Lx367_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx367_2
.Lx367_1:
 call rt_faildescr@PLT
.Lx367_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain325_n18_α
 jmp xchain325_n30_α
 xchain325_n29_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx367_0:
 .quad .Lx367_0_s
.Lx367_0_s:
 .string "rule1/2"
# IR_SUSPEND yield+resume
 xchain325_n30_α:
 lea rax, [rip + xchain325_n30_β]
 mov qword ptr [rbp + 1392], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule1$2_γ
 xchain325_n30_β:
 jmp xchain325_n29_β
proc_rule1$2_res:
add rsp, 8
pop rbp
proc_rule1$2_β:
jmp qword ptr [rbp + 1392]
proc_rule1$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule1$2_res]
push rax
mov rax, [rbp + 1480]
mov rbp, [rbp + 1496]
jmp rax
proc_rule1$2_ω:
mov rax, [rbp + 1488]
lea rsp, [rbp + 1504]
mov rbp, [rbp + 1496]
jmp rax
  .globl proc_my_append$3_α
proc_my_append$3_α:
#=======================================================================================================================
    .global proc_my_append$3_α
    .global proc_my_append$3_β
    .global proc_my_append$3_γ
    .global proc_my_append$3_ω
  sub rsp, 1408
  mov [rsp + 1384], rcx
  mov [rsp + 1392], rdx
  mov [rsp + 1400], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1304], rsp
  mov rdi, rsp
  mov esi, 1280
  mov edx, 1376
  call rt_jmp_frame_lexprep2@PLT
proc_my_append$3_α_body:
lea rax, [rip + xchain370_n17_β]
mov qword ptr [rbp + 1280], rax
 xchain370_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_my_append$3_ω
 jmp xchain370_n1_α
 xchain370_n0_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
 xchain370_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 jmp xchain370_n2_α
# IR_LIT_STRING
 xchain370_n2_α:
 mov qword ptr [rbp + 1248], 1
 mov rax, qword ptr [rip + .Lx374_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain370_n3_α
.Lx374_0:
 .quad .Lx374_0_s
.Lx374_0_s:
 .string "[]"
 xchain370_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1216] -> [zr+1168]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 1168], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 1176], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 1168]
 mov rsi, qword ptr [rip + .Lx375_2]
 jmp .Lx375_3
.Lx375_2:
 .quad .Lx375_2_s
.Lx375_2_s:
 .string "[]"
.Lx375_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
 cmp eax, 99
 je xchain370_n5_α
 jmp xchain370_n4_α
 xchain370_n3_β:
 jmp xchain370_n5_α
# IR_VAR_REF
 xchain370_n4_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 jmp xchain370_n6_α
 xchain370_n5_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+864]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_my_append$3_ω
 jmp xchain370_n7_α
 xchain370_n5_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
 xchain370_n6_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
 jmp xchain370_n8_α
# IR_VAR_REF
 xchain370_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
 jmp xchain370_n9_α
 xchain370_n8_α:
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
 je xchain370_n5_α
 jmp xchain370_n10_α
 xchain370_n8_β:
 jmp xchain370_n5_α
# IR_VAR_REF
 xchain370_n9_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 jmp xchain370_n11_α
# IR_VAR_REF
 xchain370_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain370_n12_α
# IR_VAR_REF
 xchain370_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 816], rax
 mov qword ptr [rbp + 824], rdx
 jmp xchain370_n13_α
# IR_VAR_REF
 xchain370_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain370_n14_α
 xchain370_n13_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+672] -> [zr+720]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 728], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+736]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 736], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 744], rax
# marshal arg2 = producer-box slot [zr+816] -> [zr+752]
 mov rax, qword ptr [rbp + 816]
 mov qword ptr [rbp + 752], rax
 mov rax, qword ptr [rbp + 824]
 mov qword ptr [rbp + 760], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je xchain370_n16_α
 jmp xchain370_n15_α
 xchain370_n13_β:
 jmp xchain370_n16_α
 xchain370_n14_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain370_n5_α
 jmp xchain370_n17_α
 xchain370_n14_β:
 jmp xchain370_n5_α
# IR_VAR_REF
 xchain370_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 jmp xchain370_n18_α
 xchain370_n16_α:
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
 je proc_my_append$3_ω
 jmp proc_my_append$3_ω
 xchain370_n16_β:
 jmp proc_my_append$3_ω
# IR_SUSPEND yield+resume
 xchain370_n17_α:
 lea rax, [rip + xchain370_n17_β]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_my_append$3_γ
 xchain370_n17_β:
 jmp xchain370_n5_α
# IR_VAR_REF
 xchain370_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain370_n19_α
 xchain370_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 560]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 cmp eax, 99
 je xchain370_n16_α
 jmp xchain370_n20_α
 xchain370_n19_β:
 jmp xchain370_n16_α
# IR_VAR_REF
 xchain370_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain370_n21_α
# IR_VAR_REF
 xchain370_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1360]
 mov qword ptr [rbp + 480], rax
 mov qword ptr [rbp + 488], rdx
 jmp xchain370_n22_α
# IR_VAR_REF
 xchain370_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1344]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 jmp xchain370_n23_α
 xchain370_n23_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+416]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 416], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 424], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+432]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 432], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 440], rax
# marshal arg2 = producer-box slot [zr+512] -> [zr+448]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 416]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 cmp eax, 99
 je xchain370_n16_α
 jmp xchain370_n24_α
 xchain370_n23_β:
 jmp xchain370_n16_α
# IR_VAR_REF
 xchain370_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1312]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain370_n25_α
# IR_VAR_REF
 xchain370_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1328]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 jmp xchain370_n26_α
# IR_VAR_REF
 xchain370_n26_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1344]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
 jmp xchain370_n27_α
 xchain370_n27_α:
 mov qword ptr [rbp + 240], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 304]
 mov rdx, qword ptr [rbp + 312]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 336]
 mov rdx, qword ptr [rbp + 344]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx416_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx416_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx416_3]
 lea rdx, [rip + .Lx416_4]
 jmp rax
.Lx416_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx416_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx416_2
.Lx416_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx416_2
.Lx416_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx416_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx416_2
.Lx416_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx416_2
.Lx416_1:
 call rt_faildescr@PLT
.Lx416_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain370_n16_α
 jmp xchain370_n28_α
 xchain370_n27_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx416_0:
 .quad .Lx416_0_s
.Lx416_0_s:
 .string "my_append/3"
# IR_SUSPEND yield+resume
 xchain370_n28_α:
 lea rax, [rip + xchain370_n28_β]
 mov qword ptr [rbp + 1280], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_my_append$3_γ
 xchain370_n28_β:
 jmp xchain370_n27_β
proc_my_append$3_res:
add rsp, 8
pop rbp
proc_my_append$3_β:
jmp qword ptr [rbp + 1280]
proc_my_append$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_my_append$3_res]
push rax
mov rax, [rbp + 1384]
mov rbp, [rbp + 1400]
jmp rax
proc_my_append$3_ω:
mov rax, [rbp + 1392]
lea rsp, [rbp + 1408]
mov rbp, [rbp + 1400]
jmp rax
proc_startup:
  sub rsp, 8
  .section .rodata
  .Lstartup_pname0: .string "rule/3"
  .section .text
  .intel_syntax noprefix
  lea rdi, [rip + .Lstartup_pname0]
  lea rsi, [rip + proc_rule$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname0]
  mov esi, 2496
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
  lea rsi, [rip + proc_rule4$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname1]
  mov esi, 1344
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
  lea rsi, [rip + proc_rule2$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname2]
  mov esi, 768
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
  lea rsi, [rip + proc_theorem$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname3]
  mov esi, 2912
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
  lea rsi, [rip + proc_mu$0_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 0
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname4]
  mov esi, 1088
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
  lea rsi, [rip + proc_rule3$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname5]
  mov esi, 1520
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
  lea rsi, [rip + proc_rule1$2_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 2
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname6]
  mov esi, 1472
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
  lea rsi, [rip + proc_my_append$3_α]
  call rt_proc_set_fn@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 3
  call rt_proc_set_nparams@PLT
  lea rdi, [rip + .Lstartup_pname7]
  mov esi, 1376
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
  mov qword ptr [rsp + 424], rsp
  mov r12, qword ptr [1879048192]
  mov [rsp + 65536], rbp
  mov rbp, rsp
main_α_body:
 xchain419_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain419_n1_α
 xchain419_n0_β:
 jmp main_ω
 xchain419_n1_α:
 mov qword ptr [rbp + 384], 0
 mov rdi, qword ptr [rip + .Lx422_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx422_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx422_3]
 lea rdx, [rip + .Lx422_4]
 jmp rax
.Lx422_3:
 mov qword ptr [rbp + 392], rsp
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx422_5
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx422_2
.Lx422_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx422_2
.Lx422_4:
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx422_6
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx422_2
.Lx422_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx422_2
.Lx422_1:
 call rt_faildescr@PLT
.Lx422_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain419_n3_α
 jmp xchain419_n2_α
 xchain419_n1_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 392]
 jmp qword ptr [rsp]
.Lx422_0:
 .quad .Lx422_0_s
.Lx422_0_s:
 .string "mu/0"
# IR_LIT_STRING
 xchain419_n2_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx423_0]
 mov qword ptr [rbp + 264], rax
 jmp xchain419_n4_α
.Lx423_0:
 .quad .Lx423_0_s
.Lx423_0_s:
 .string "ok"
# IR_LIT_STRING
 xchain419_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx424_0]
 mov qword ptr [rbp + 344], rax
 jmp xchain419_n5_α
.Lx424_0:
 .quad .Lx424_0_s
.Lx424_0_s:
 .string "failed"
 xchain419_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn426: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn426]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain419_n7_α
 jmp xchain419_n6_α
 xchain419_n4_β:
 jmp xchain419_n7_α
 xchain419_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
  .section .rodata
  .Lrkfn428: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn428]
 lea rsi, [rbp + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain419_n7_α
 jmp xchain419_n6_α
 xchain419_n5_β:
 jmp xchain419_n7_α
# IR_LIT_STRING
 xchain419_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx429_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain419_n8_α
.Lx429_0:
 .quad .Lx429_0_s
.Lx429_0_s:
 .string ""
 xchain419_n7_α:
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
 xchain419_n7_β:
 jmp main_ω
 xchain419_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn432: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn432]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain419_n7_α
 jmp xchain419_n9_α
 xchain419_n8_β:
 jmp xchain419_n7_α
# IR_MOVE_LABEL
 xchain419_n9_α:
 lea rax, [rip + xchain419_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain419_n10_α:
 jmp qword ptr [rbp + 32]
 xchain419_n10_β:
 jmp main_ω
main_β:
jmp xchain419_n10_α
main_γ:
mov eax, 1
xor edx, edx
mov rsp, qword ptr [rbp + 424]
mov rbp, [rsp + 65536]
add rsp, 65544
ret
main_ω:
mov rsp, qword ptr [rbp + 424]
mov dword ptr [rsp+0], 99
mov dword ptr [rsp+4], 0
mov qword ptr [rsp+8], 0
mov eax, 99
xor edx, edx
mov rbp, [rsp + 65536]
add rsp, 65544
ret
