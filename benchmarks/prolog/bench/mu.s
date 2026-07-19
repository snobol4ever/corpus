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
  mov rdi, rsp
  mov ecx, 2496
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2456], rsp
  mov rdi, rsp
  mov esi, 2496
  call rt_jmp_frame_lexprep@PLT
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
<<<<<<< HEAD
.Lx5_0:
=======
.Lx4_0:
>>>>>>> origin/main
 .quad 1
 xchain0_n3_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2368] -> [zr+2320]
 mov rax, qword ptr [rbp + 2368]
 mov qword ptr [rbp + 2320], rax
 mov rax, qword ptr [rbp + 2376]
 mov qword ptr [rbp + 2328], rax
# marshal arg1 = producer-box slot [zr+2400] -> [zr+2336]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2320]
 mov esi, 2
 call rt_pl_dop_unify@PLT
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
<<<<<<< HEAD
.Lx18_0:
=======
.Lx14_0:
>>>>>>> origin/main
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
<<<<<<< HEAD
.Lx39_0:
=======
.Lx31_0:
>>>>>>> origin/main
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
# marshal arg1 = producer-box slot [zr+1248] -> [zr+1184]
 mov rax, qword ptr [rbp + 1248]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1256]
 mov qword ptr [rbp + 1192], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1168]
 mov esi, 2
 call rt_pl_dop_unify@PLT
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
<<<<<<< HEAD
.Lx66_0:
=======
.Lx54_0:
>>>>>>> origin/main
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
# marshal arg1 = producer-box slot [zr+672] -> [zr+608]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 2
 call rt_pl_dop_unify@PLT
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
  sub rsp, 1568
  mov [rsp + 1544], rcx
  mov [rsp + 1552], rdx
  mov [rsp + 1560], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1536
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1464], rsp
  mov rdi, rsp
  mov esi, 1536
  call rt_jmp_frame_lexprep@PLT
proc_rule4$2_α_body:
lea rax, [rip + xchain94_n17_β]
mov qword ptr [rbp + 1440], rax
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
<<<<<<< HEAD
 xchain111_n1_α:
=======
 xchain94_n1_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
<<<<<<< HEAD
 jmp xchain111_n2_α
=======
 jmp xchain94_n2_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain94_n2_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx98_0]
 mov qword ptr [rbp + 1416], rax
<<<<<<< HEAD
 jmp xchain111_n3_α
.Lx116_0:
 .quad .Lx116_0_s
.Lx116_0_s:
=======
 jmp xchain94_n3_α
.Lx98_0:
 .quad .Lx98_0_s
.Lx98_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain94_n3_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx99_0]
 mov qword ptr [rbp + 1304], rax
<<<<<<< HEAD
 jmp xchain111_n4_α
.Lx117_0:
 .quad .Lx117_0_s
.Lx117_0_s:
=======
 jmp xchain94_n4_α
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
>>>>>>> origin/main
 .string "u"
# IR_LIT_STRING
 xchain94_n4_α:
 mov qword ptr [rbp + 1264], 1
 mov rax, qword ptr [rip + .Lx100_0]
 mov qword ptr [rbp + 1272], rax
<<<<<<< HEAD
 jmp xchain111_n5_α
.Lx118_0:
 .quad .Lx118_0_s
.Lx118_0_s:
=======
 jmp xchain94_n5_α
.Lx100_0:
 .quad .Lx100_0_s
.Lx100_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain94_n5_α:
 mov qword ptr [rbp + 1152], 1
 mov rax, qword ptr [rip + .Lx101_0]
 mov qword ptr [rbp + 1160], rax
<<<<<<< HEAD
 jmp xchain111_n6_α
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string "u"
# IR_VAR_REF
 xchain111_n6_α:
=======
 jmp xchain94_n6_α
.Lx101_0:
 .quad .Lx101_0_s
.Lx101_0_s:
 .string "u"
# IR_VAR_REF
 xchain94_n6_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 1120], rax
 mov qword ptr [rbp + 1128], rdx
<<<<<<< HEAD
 jmp xchain111_n7_α
 xchain111_n7_α:
=======
 jmp xchain94_n7_α
 xchain94_n7_α:
>>>>>>> origin/main
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
# marshal arg2 = producer-box slot [zr+1120] -> [zr+1232]
 mov rax, qword ptr [rbp + 1120]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1128]
 mov qword ptr [rbp + 1240], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1200]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
 cmp eax, 99
 je proc_rule4$2_ω
 jmp xchain94_n8_α
 xchain94_n7_β:
 jmp proc_rule4$2_ω
 xchain94_n8_α:
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
 je xchain94_n10_α
 jmp xchain94_n9_α
 xchain94_n8_β:
 jmp xchain94_n10_α
 xchain94_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1088] -> [zr+1040]
 mov rax, qword ptr [rbp + 1088]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1096]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+1328] -> [zr+1056]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain94_n10_α
 jmp xchain94_n11_α
 xchain94_n9_β:
 jmp xchain94_n10_α
 xchain94_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_rule4$2_ω
 jmp xchain94_n12_α
 xchain94_n10_β:
 jmp proc_rule4$2_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain111_n11_α:
=======
 xchain94_n11_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
<<<<<<< HEAD
 jmp xchain111_n13_α
# IR_VAR_REF
 xchain111_n12_α:
=======
 jmp xchain94_n13_α
# IR_VAR_REF
 xchain94_n12_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
<<<<<<< HEAD
 jmp xchain111_n14_α
# IR_VAR_REF
 xchain111_n13_α:
=======
 jmp xchain94_n14_α
# IR_VAR_REF
 xchain94_n13_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
<<<<<<< HEAD
 jmp xchain111_n15_α
=======
 jmp xchain94_n15_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain94_n14_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx114_0]
 mov qword ptr [rbp + 824], rax
<<<<<<< HEAD
 jmp xchain111_n16_α
.Lx136_0:
 .quad .Lx136_0_s
.Lx136_0_s:
=======
 jmp xchain94_n16_α
.Lx114_0:
 .quad .Lx114_0_s
.Lx114_0_s:
>>>>>>> origin/main
 .string "."
 xchain94_n15_α:
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
 je xchain94_n10_α
 jmp xchain94_n17_α
 xchain94_n15_β:
 jmp xchain94_n10_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain111_n16_α:
=======
 xchain94_n16_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
<<<<<<< HEAD
 jmp xchain111_n18_α
=======
 jmp xchain94_n18_α
>>>>>>> origin/main
# IR_SUSPEND yield+resume
 xchain94_n17_α:
 lea rax, [rip + xchain94_n17_β]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule4$2_γ
 xchain94_n17_β:
 jmp xchain94_n10_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain111_n18_α:
=======
 xchain94_n18_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1472]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
<<<<<<< HEAD
 jmp xchain111_n19_α
 xchain111_n19_α:
=======
 jmp xchain94_n19_α
 xchain94_n19_α:
>>>>>>> origin/main
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
# marshal arg2 = producer-box slot [zr+672] -> [zr+784]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain94_n21_α
 jmp xchain94_n20_α
 xchain94_n19_β:
 jmp xchain94_n21_α
 xchain94_n20_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+608]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain94_n21_α
 jmp xchain94_n22_α
 xchain94_n20_β:
 jmp xchain94_n21_α
 xchain94_n21_α:
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
 xchain94_n21_β:
 jmp proc_rule4$2_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain111_n22_α:
=======
 xchain94_n22_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
<<<<<<< HEAD
 jmp xchain111_n23_α
=======
 jmp xchain94_n23_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain94_n23_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx127_0]
 mov qword ptr [rbp + 552], rax
<<<<<<< HEAD
 jmp xchain111_n24_α
.Lx153_0:
 .quad .Lx153_0_s
.Lx153_0_s:
 .string "."
# IR_VAR_REF
 xchain111_n24_α:
=======
 jmp xchain94_n24_α
.Lx127_0:
 .quad .Lx127_0_s
.Lx127_0_s:
 .string "."
# IR_VAR_REF
 xchain94_n24_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
<<<<<<< HEAD
 jmp xchain111_n25_α
# IR_VAR_REF
 xchain111_n25_α:
=======
 jmp xchain94_n25_α
# IR_VAR_REF
 xchain94_n25_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1488]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
<<<<<<< HEAD
 jmp xchain111_n26_α
 xchain111_n26_α:
=======
 jmp xchain94_n26_α
 xchain94_n26_α:
>>>>>>> origin/main
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
# marshal arg2 = producer-box slot [zr+400] -> [zr+512]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain94_n21_α
 jmp xchain94_n27_α
 xchain94_n26_β:
 jmp xchain94_n21_α
 xchain94_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+336]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain94_n21_α
 jmp xchain94_n28_α
 xchain94_n27_β:
 jmp xchain94_n21_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain111_n28_α:
=======
 xchain94_n28_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1472]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
<<<<<<< HEAD
 jmp xchain111_n29_α
# IR_VAR_REF
 xchain111_n29_α:
=======
 jmp xchain94_n29_α
# IR_VAR_REF
 xchain94_n29_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1488]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
<<<<<<< HEAD
 jmp xchain111_n30_α
 xchain111_n30_α:
=======
 jmp xchain94_n30_α
 xchain94_n30_α:
>>>>>>> origin/main
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx139_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx139_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx139_3]
 lea rdx, [rip + .Lx139_4]
 jmp rax
.Lx139_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx139_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx139_2
.Lx139_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx139_2
.Lx139_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx139_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx139_2
.Lx139_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx139_2
.Lx139_1:
 call rt_faildescr@PLT
.Lx139_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain94_n21_α
 jmp xchain94_n31_α
 xchain94_n30_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx139_0:
 .quad .Lx139_0_s
.Lx139_0_s:
 .string "rule4/2"
# IR_SUSPEND yield+resume
 xchain94_n31_α:
 lea rax, [rip + xchain94_n31_β]
 mov qword ptr [rbp + 1440], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule4$2_γ
 xchain94_n31_β:
 jmp xchain94_n30_β
proc_rule4$2_res:
add rsp, 8
pop rbp
proc_rule4$2_β:
jmp qword ptr [rbp + 1440]
proc_rule4$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule4$2_res]
push rax
mov rax, [rbp + 1544]
mov rbp, [rbp + 1560]
jmp rax
proc_rule4$2_ω:
mov rax, [rbp + 1552]
lea rsp, [rbp + 1568]
mov rbp, [rbp + 1560]
jmp rax
  .globl proc_rule2$2_α
proc_rule2$2_α:
#=======================================================================================================================
    .global proc_rule2$2_α
    .global proc_rule2$2_β
    .global proc_rule2$2_γ
    .global proc_rule2$2_ω
  sub rsp, 992
  mov [rsp + 968], rcx
  mov [rsp + 976], rdx
  mov [rsp + 984], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 960
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 920], rsp
  mov rdi, rsp
  mov esi, 960
  call rt_jmp_frame_lexprep@PLT
proc_rule2$2_α_body:
lea rax, [rip + xchain142_n18_β]
mov qword ptr [rbp + 896], rax
 xchain142_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule2$2_ω
 jmp xchain142_n1_α
 xchain142_n0_β:
 jmp proc_rule2$2_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain170_n1_α:
=======
 xchain142_n1_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 688], rax
 mov qword ptr [rbp + 696], rdx
<<<<<<< HEAD
 jmp xchain170_n2_α
=======
 jmp xchain142_n2_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain142_n2_α:
 mov qword ptr [rbp + 864], 1
 mov rax, qword ptr [rip + .Lx146_0]
 mov qword ptr [rbp + 872], rax
<<<<<<< HEAD
 jmp xchain170_n3_α
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
=======
 jmp xchain142_n3_α
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain142_n3_α:
 mov qword ptr [rbp + 752], 1
 mov rax, qword ptr [rip + .Lx147_0]
 mov qword ptr [rbp + 760], rax
<<<<<<< HEAD
 jmp xchain170_n4_α
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
 .string "m"
# IR_VAR_REF
 xchain170_n4_α:
=======
 jmp xchain142_n4_α
.Lx147_0:
 .quad .Lx147_0_s
.Lx147_0_s:
 .string "m"
# IR_VAR_REF
 xchain142_n4_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 928]
 mov qword ptr [rbp + 720], rax
 mov qword ptr [rbp + 728], rdx
<<<<<<< HEAD
 jmp xchain170_n5_α
 xchain170_n5_α:
=======
 jmp xchain142_n5_α
 xchain142_n5_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+864] -> [zr+800]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 808], rax
# marshal arg1 = producer-box slot [zr+752] -> [zr+816]
 mov rax, qword ptr [rbp + 752]
 mov qword ptr [rbp + 816], rax
 mov rax, qword ptr [rbp + 760]
 mov qword ptr [rbp + 824], rax
# marshal arg2 = producer-box slot [zr+720] -> [zr+832]
 mov rax, qword ptr [rbp + 720]
 mov qword ptr [rbp + 832], rax
 mov rax, qword ptr [rbp + 728]
 mov qword ptr [rbp + 840], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 800]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 784], rax
 mov qword ptr [rbp + 792], rdx
 cmp eax, 99
 je xchain142_n7_α
 jmp xchain142_n6_α
 xchain142_n5_β:
 jmp xchain142_n7_α
 xchain142_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+688] -> [zr+640]
 mov rax, qword ptr [rbp + 688]
 mov qword ptr [rbp + 640], rax
 mov rax, qword ptr [rbp + 696]
 mov qword ptr [rbp + 648], rax
# marshal arg1 = producer-box slot [zr+784] -> [zr+656]
 mov rax, qword ptr [rbp + 784]
 mov qword ptr [rbp + 656], rax
 mov rax, qword ptr [rbp + 792]
 mov qword ptr [rbp + 664], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 640]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
 cmp eax, 99
 je xchain142_n7_α
 jmp xchain142_n8_α
 xchain142_n6_β:
 jmp xchain142_n7_α
 xchain142_n7_α:
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
 xchain142_n7_β:
 jmp proc_rule2$2_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain170_n8_α:
=======
 xchain142_n8_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 416], rax
 mov qword ptr [rbp + 424], rdx
<<<<<<< HEAD
 jmp xchain170_n9_α
=======
 jmp xchain142_n9_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain142_n9_α:
 mov qword ptr [rbp + 592], 1
 mov rax, qword ptr [rip + .Lx155_0]
 mov qword ptr [rbp + 600], rax
<<<<<<< HEAD
 jmp xchain170_n10_α
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
=======
 jmp xchain142_n10_α
.Lx155_0:
 .quad .Lx155_0_s
.Lx155_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain142_n10_α:
 mov qword ptr [rbp + 480], 1
 mov rax, qword ptr [rip + .Lx156_0]
 mov qword ptr [rbp + 488], rax
<<<<<<< HEAD
 jmp xchain170_n11_α
.Lx188_0:
 .quad .Lx188_0_s
.Lx188_0_s:
 .string "m"
# IR_VAR_REF
 xchain170_n11_α:
=======
 jmp xchain142_n11_α
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "m"
# IR_VAR_REF
 xchain142_n11_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 944]
 mov qword ptr [rbp + 448], rax
 mov qword ptr [rbp + 456], rdx
<<<<<<< HEAD
 jmp xchain170_n12_α
 xchain170_n12_α:
=======
 jmp xchain142_n12_α
 xchain142_n12_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+592] -> [zr+528]
 mov rax, qword ptr [rbp + 592]
 mov qword ptr [rbp + 528], rax
 mov rax, qword ptr [rbp + 600]
 mov qword ptr [rbp + 536], rax
# marshal arg1 = producer-box slot [zr+480] -> [zr+544]
 mov rax, qword ptr [rbp + 480]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 488]
 mov qword ptr [rbp + 552], rax
# marshal arg2 = producer-box slot [zr+448] -> [zr+560]
 mov rax, qword ptr [rbp + 448]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 456]
 mov qword ptr [rbp + 568], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 528]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
 cmp eax, 99
 je xchain142_n7_α
 jmp xchain142_n13_α
 xchain142_n12_β:
 jmp xchain142_n7_α
 xchain142_n13_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+416] -> [zr+368]
 mov rax, qword ptr [rbp + 416]
 mov qword ptr [rbp + 368], rax
 mov rax, qword ptr [rbp + 424]
 mov qword ptr [rbp + 376], rax
# marshal arg1 = producer-box slot [zr+512] -> [zr+384]
 mov rax, qword ptr [rbp + 512]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 520]
 mov qword ptr [rbp + 392], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 368]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 352], rax
 mov qword ptr [rbp + 360], rdx
 cmp eax, 99
 je xchain142_n7_α
 jmp xchain142_n14_α
 xchain142_n13_β:
 jmp xchain142_n7_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain170_n14_α:
=======
 xchain142_n14_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 928]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
<<<<<<< HEAD
 jmp xchain170_n15_α
# IR_VAR_REF
 xchain170_n15_α:
=======
 jmp xchain142_n15_α
# IR_VAR_REF
 xchain142_n15_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 928]
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
<<<<<<< HEAD
 jmp xchain170_n16_α
# IR_VAR_REF
 xchain170_n16_α:
=======
 jmp xchain142_n16_α
# IR_VAR_REF
 xchain142_n16_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 944]
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
<<<<<<< HEAD
 jmp xchain170_n17_α
 xchain170_n17_α:
=======
 jmp xchain142_n17_α
 xchain142_n17_α:
>>>>>>> origin/main
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
 mov rdi, qword ptr [rip + .Lx168_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx168_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx168_3]
 lea rdx, [rip + .Lx168_4]
 jmp rax
.Lx168_3:
 mov qword ptr [rbp + 232], rsp
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx168_5
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx168_2
.Lx168_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx168_2
.Lx168_4:
 mov rax, qword ptr [rbp + 224]
 test rax, rax
 jne .Lx168_6
 mov qword ptr [rbp + 224], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx168_2
.Lx168_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx168_2
.Lx168_1:
 call rt_faildescr@PLT
.Lx168_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain142_n7_α
 jmp xchain142_n18_α
 xchain142_n17_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 232]
 jmp qword ptr [rsp]
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "my_append/3"
# IR_SUSPEND yield+resume
 xchain142_n18_α:
 lea rax, [rip + xchain142_n18_β]
 mov qword ptr [rbp + 896], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule2$2_γ
 xchain142_n18_β:
 jmp xchain142_n17_β
proc_rule2$2_res:
add rsp, 8
pop rbp
proc_rule2$2_β:
jmp qword ptr [rbp + 896]
proc_rule2$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule2$2_res]
push rax
mov rax, [rbp + 968]
mov rbp, [rbp + 984]
jmp rax
proc_rule2$2_ω:
mov rax, [rbp + 976]
lea rsp, [rbp + 992]
mov rbp, [rbp + 984]
jmp rax
  .globl proc_theorem$3_α
proc_theorem$3_α:
#=======================================================================================================================
    .global proc_theorem$3_α
    .global proc_theorem$3_β
    .global proc_theorem$3_γ
    .global proc_theorem$3_ω
  sub rsp, 3040
  mov [rsp + 3016], rcx
  mov [rsp + 3024], rdx
  mov [rsp + 3032], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 3008
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 2904], rsp
  mov rdi, rsp
  mov esi, 3008
  call rt_jmp_frame_lexprep@PLT
proc_theorem$3_α_body:
lea rax, [rip + xchain171_n48_β]
mov qword ptr [rbp + 2880], rax
 xchain171_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain171_n1_α
 xchain171_n0_β:
 jmp proc_theorem$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain205_n1_α:
=======
 xchain171_n1_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 2528], rax
 mov qword ptr [rbp + 2536], rdx
<<<<<<< HEAD
 jmp xchain205_n2_α
=======
 jmp xchain171_n2_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain171_n2_α:
 mov qword ptr [rbp + 2848], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [rbp + 2856], rax
<<<<<<< HEAD
 jmp xchain205_n3_α
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
=======
 jmp xchain171_n3_α
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain171_n3_α:
 mov qword ptr [rbp + 2736], 1
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [rbp + 2744], rax
<<<<<<< HEAD
 jmp xchain205_n4_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
=======
 jmp xchain171_n4_α
.Lx176_0:
 .quad .Lx176_0_s
.Lx176_0_s:
>>>>>>> origin/main
 .string "m"
# IR_LIT_STRING
 xchain171_n4_α:
 mov qword ptr [rbp + 2704], 1
 mov rax, qword ptr [rip + .Lx177_0]
 mov qword ptr [rbp + 2712], rax
<<<<<<< HEAD
 jmp xchain205_n5_α
.Lx212_0:
 .quad .Lx212_0_s
.Lx212_0_s:
=======
 jmp xchain171_n5_α
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain171_n5_α:
 mov qword ptr [rbp + 2592], 1
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [rbp + 2600], rax
<<<<<<< HEAD
 jmp xchain205_n6_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
=======
 jmp xchain171_n6_α
.Lx178_0:
 .quad .Lx178_0_s
.Lx178_0_s:
>>>>>>> origin/main
 .string "i"
# IR_LIT_STRING
 xchain171_n6_α:
 mov qword ptr [rbp + 2560], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [rbp + 2568], rax
<<<<<<< HEAD
 jmp xchain205_n7_α
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
=======
 jmp xchain171_n7_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
>>>>>>> origin/main
 .string "[]"
 xchain171_n7_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2704] -> [zr+2640]
 mov rax, qword ptr [rbp + 2704]
 mov qword ptr [rbp + 2640], rax
 mov rax, qword ptr [rbp + 2712]
 mov qword ptr [rbp + 2648], rax
# marshal arg1 = producer-box slot [zr+2592] -> [zr+2656]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2656], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2664], rax
# marshal arg2 = producer-box slot [zr+2560] -> [zr+2672]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2672], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2680], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2640]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2624], rax
 mov qword ptr [rbp + 2632], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain171_n8_α
 xchain171_n7_β:
 jmp proc_theorem$3_ω
 xchain171_n8_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2848] -> [zr+2784]
 mov rax, qword ptr [rbp + 2848]
 mov qword ptr [rbp + 2784], rax
 mov rax, qword ptr [rbp + 2856]
 mov qword ptr [rbp + 2792], rax
# marshal arg1 = producer-box slot [zr+2736] -> [zr+2800]
 mov rax, qword ptr [rbp + 2736]
 mov qword ptr [rbp + 2800], rax
 mov rax, qword ptr [rbp + 2744]
 mov qword ptr [rbp + 2808], rax
# marshal arg2 = producer-box slot [zr+2624] -> [zr+2816]
 mov rax, qword ptr [rbp + 2624]
 mov qword ptr [rbp + 2816], rax
 mov rax, qword ptr [rbp + 2632]
 mov qword ptr [rbp + 2824], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2784]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2768], rax
 mov qword ptr [rbp + 2776], rdx
 cmp eax, 99
 je xchain171_n10_α
 jmp xchain171_n9_α
 xchain171_n8_β:
 jmp xchain171_n10_α
 xchain171_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2528] -> [zr+2480]
 mov rax, qword ptr [rbp + 2528]
 mov qword ptr [rbp + 2480], rax
 mov rax, qword ptr [rbp + 2536]
 mov qword ptr [rbp + 2488], rax
# marshal arg1 = producer-box slot [zr+2768] -> [zr+2496]
 mov rax, qword ptr [rbp + 2768]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2776]
 mov qword ptr [rbp + 2504], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2480]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2464], rax
 mov qword ptr [rbp + 2472], rdx
 cmp eax, 99
 je xchain171_n10_α
 jmp xchain171_n11_α
 xchain171_n9_β:
 jmp xchain171_n10_α
 xchain171_n10_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1600]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1600], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1608], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1600]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1584], rax
 mov qword ptr [rbp + 1592], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain171_n12_α
 xchain171_n10_β:
 jmp proc_theorem$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain205_n11_α:
=======
 xchain171_n11_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2400], rax
 mov qword ptr [rbp + 2408], rdx
<<<<<<< HEAD
 jmp xchain205_n13_α
# IR_VAR_REF
 xchain205_n12_α:
=======
 jmp xchain171_n13_α
# IR_VAR_REF
 xchain171_n12_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1520], rax
 mov qword ptr [rbp + 1528], rdx
<<<<<<< HEAD
 jmp xchain205_n14_α
# IR_VAR_REF
 xchain205_n13_α:
=======
 jmp xchain171_n14_α
# IR_VAR_REF
 xchain171_n13_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2912]
 mov qword ptr [rbp + 2432], rax
 mov qword ptr [rbp + 2440], rdx
<<<<<<< HEAD
 jmp xchain205_n15_α
# IR_VAR_REF
 xchain205_n14_α:
=======
 jmp xchain171_n15_α
# IR_VAR_REF
 xchain171_n14_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2944]
 mov qword ptr [rbp + 1552], rax
 mov qword ptr [rbp + 1560], rdx
<<<<<<< HEAD
 jmp xchain205_n16_α
 xchain205_n15_α:
=======
 jmp xchain171_n16_α
 xchain171_n15_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2400] -> [zr+2352]
 mov rax, qword ptr [rbp + 2400]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2408]
 mov qword ptr [rbp + 2360], rax
# marshal arg1 = producer-box slot [zr+2432] -> [zr+2368]
 mov rax, qword ptr [rbp + 2432]
 mov qword ptr [rbp + 2368], rax
 mov rax, qword ptr [rbp + 2440]
 mov qword ptr [rbp + 2376], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2352]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2336], rax
 mov qword ptr [rbp + 2344], rdx
 cmp eax, 99
 je xchain171_n10_α
 jmp xchain171_n17_α
 xchain171_n15_β:
 jmp xchain171_n10_α
 xchain171_n16_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1520] -> [zr+1472]
 mov rax, qword ptr [rbp + 1520]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1528]
 mov qword ptr [rbp + 1480], rax
# marshal arg1 = producer-box slot [zr+1552] -> [zr+1488]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1496], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1472]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain171_n19_α
 jmp xchain171_n18_α
 xchain171_n16_β:
 jmp xchain171_n19_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain205_n17_α:
=======
 xchain171_n17_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1696], rax
 mov qword ptr [rbp + 1704], rdx
<<<<<<< HEAD
 jmp xchain205_n20_α
# IR_VAR_REF
 xchain205_n18_α:
=======
 jmp xchain171_n20_α
# IR_VAR_REF
 xchain171_n18_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
<<<<<<< HEAD
 jmp xchain205_n21_α
 xchain205_n19_α:
=======
 jmp xchain171_n21_α
 xchain171_n19_α:
>>>>>>> origin/main
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
 xchain171_n19_β:
 jmp proc_theorem$3_ω
# IR_LIT_STRING
 xchain171_n20_α:
 mov qword ptr [rbp + 2304], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [rbp + 2312], rax
<<<<<<< HEAD
 jmp xchain205_n22_α
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "."
# IR_VAR_REF
 xchain205_n21_α:
=======
 jmp xchain171_n22_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "."
# IR_VAR_REF
 xchain171_n21_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2992]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
<<<<<<< HEAD
 jmp xchain205_n23_α
=======
 jmp xchain171_n23_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain171_n22_α:
 mov qword ptr [rbp + 2192], 1
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [rbp + 2200], rax
<<<<<<< HEAD
 jmp xchain205_n24_α
.Lx244_0:
 .quad .Lx244_0_s
.Lx244_0_s:
=======
 jmp xchain171_n24_α
.Lx202_0:
 .quad .Lx202_0_s
.Lx202_0_s:
>>>>>>> origin/main
 .string "."
 xchain171_n23_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je xchain171_n19_α
 jmp xchain171_n25_α
 xchain171_n23_β:
 jmp xchain171_n19_α
# IR_LIT_STRING
 xchain171_n24_α:
 mov qword ptr [rbp + 2080], 1
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 2088], rax
<<<<<<< HEAD
 jmp xchain205_n26_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "a"
# IR_VAR_REF
 xchain205_n25_α:
=======
 jmp xchain171_n26_α
.Lx204_0:
 .quad .Lx204_0_s
.Lx204_0_s:
 .string "a"
# IR_VAR_REF
 xchain171_n25_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 976], rax
 mov qword ptr [rbp + 984], rdx
<<<<<<< HEAD
 jmp xchain205_n27_α
=======
 jmp xchain171_n27_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain171_n26_α:
 mov qword ptr [rbp + 2048], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 2056], rax
<<<<<<< HEAD
 jmp xchain205_n28_α
.Lx250_0:
 .quad .Lx250_0_s
.Lx250_0_s:
=======
 jmp xchain171_n28_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain171_n27_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [rbp + 1304], rax
<<<<<<< HEAD
 jmp xchain205_n29_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
=======
 jmp xchain171_n29_α
.Lx208_0:
 .quad .Lx208_0_s
.Lx208_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain171_n28_α:
 mov qword ptr [rbp + 1936], 1
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 1944], rax
<<<<<<< HEAD
 jmp xchain205_n30_α
.Lx252_0:
 .quad .Lx252_0_s
.Lx252_0_s:
=======
 jmp xchain171_n30_α
.Lx209_0:
 .quad .Lx209_0_s
.Lx209_0_s:
>>>>>>> origin/main
 .string "m"
# IR_LIT_STRING
 xchain171_n29_α:
 mov qword ptr [rbp + 1184], 1
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [rbp + 1192], rax
<<<<<<< HEAD
 jmp xchain205_n31_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
=======
 jmp xchain171_n31_α
.Lx210_0:
 .quad .Lx210_0_s
.Lx210_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain171_n30_α:
 mov qword ptr [rbp + 1904], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 1912], rax
<<<<<<< HEAD
 jmp xchain205_n32_α
.Lx254_0:
 .quad .Lx254_0_s
.Lx254_0_s:
 .string "."
# IR_VAR_REF
 xchain205_n31_α:
=======
 jmp xchain171_n32_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "."
# IR_VAR_REF
 xchain171_n31_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2912]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
<<<<<<< HEAD
 jmp xchain205_n33_α
=======
 jmp xchain171_n33_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain171_n32_α:
 mov qword ptr [rbp + 1792], 1
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [rbp + 1800], rax
<<<<<<< HEAD
 jmp xchain205_n34_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "i"
# IR_VAR_REF
 xchain205_n33_α:
=======
 jmp xchain171_n34_α
.Lx214_0:
 .quad .Lx214_0_s
.Lx214_0_s:
 .string "i"
# IR_VAR_REF
 xchain171_n33_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2944]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
<<<<<<< HEAD
 jmp xchain205_n35_α
=======
 jmp xchain171_n35_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain171_n34_α:
 mov qword ptr [rbp + 1760], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [rbp + 1768], rax
<<<<<<< HEAD
 jmp xchain205_n36_α
.Lx260_0:
 .quad .Lx260_0_s
.Lx260_0_s:
=======
 jmp xchain171_n36_α
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
>>>>>>> origin/main
 .string "[]"
 xchain171_n35_α:
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
# marshal arg2 = producer-box slot [zr+1040] -> [zr+1152]
 mov rax, qword ptr [rbp + 1040]
 mov qword ptr [rbp + 1152], rax
 mov rax, qword ptr [rbp + 1048]
 mov qword ptr [rbp + 1160], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1120]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain171_n37_α
 xchain171_n35_β:
 jmp proc_theorem$3_ω
 xchain171_n36_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1904] -> [zr+1840]
 mov rax, qword ptr [rbp + 1904]
 mov qword ptr [rbp + 1840], rax
 mov rax, qword ptr [rbp + 1912]
 mov qword ptr [rbp + 1848], rax
# marshal arg1 = producer-box slot [zr+1792] -> [zr+1856]
 mov rax, qword ptr [rbp + 1792]
 mov qword ptr [rbp + 1856], rax
 mov rax, qword ptr [rbp + 1800]
 mov qword ptr [rbp + 1864], rax
# marshal arg2 = producer-box slot [zr+1760] -> [zr+1872]
 mov rax, qword ptr [rbp + 1760]
 mov qword ptr [rbp + 1872], rax
 mov rax, qword ptr [rbp + 1768]
 mov qword ptr [rbp + 1880], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1840]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain171_n38_α
 xchain171_n36_β:
 jmp proc_theorem$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain205_n37_α:
=======
 xchain171_n37_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2976]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
<<<<<<< HEAD
 jmp xchain205_n39_α
 xchain205_n38_α:
=======
 jmp xchain171_n39_α
 xchain171_n38_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2048] -> [zr+1984]
 mov rax, qword ptr [rbp + 2048]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2056]
 mov qword ptr [rbp + 1992], rax
# marshal arg1 = producer-box slot [zr+1936] -> [zr+2000]
 mov rax, qword ptr [rbp + 1936]
 mov qword ptr [rbp + 2000], rax
 mov rax, qword ptr [rbp + 1944]
 mov qword ptr [rbp + 2008], rax
# marshal arg2 = producer-box slot [zr+1824] -> [zr+2016]
 mov rax, qword ptr [rbp + 1824]
 mov qword ptr [rbp + 2016], rax
 mov rax, qword ptr [rbp + 1832]
 mov qword ptr [rbp + 2024], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1984]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1968], rax
 mov qword ptr [rbp + 1976], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain171_n40_α
 xchain171_n38_β:
 jmp proc_theorem$3_ω
 xchain171_n39_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1296] -> [zr+1232]
 mov rax, qword ptr [rbp + 1296]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1304]
 mov qword ptr [rbp + 1240], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1248]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1256], rax
# marshal arg2 = producer-box slot [zr+1008] -> [zr+1264]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 1264], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 1272], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain171_n19_α
 jmp xchain171_n41_α
 xchain171_n39_β:
 jmp xchain171_n19_α
 xchain171_n40_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2192] -> [zr+2128]
 mov rax, qword ptr [rbp + 2192]
 mov qword ptr [rbp + 2128], rax
 mov rax, qword ptr [rbp + 2200]
 mov qword ptr [rbp + 2136], rax
# marshal arg1 = producer-box slot [zr+2080] -> [zr+2144]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2144], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2152], rax
# marshal arg2 = producer-box slot [zr+1968] -> [zr+2160]
 mov rax, qword ptr [rbp + 1968]
 mov qword ptr [rbp + 2160], rax
 mov rax, qword ptr [rbp + 1976]
 mov qword ptr [rbp + 2168], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2128]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 cmp eax, 99
 je proc_theorem$3_ω
 jmp xchain171_n42_α
 xchain171_n40_β:
 jmp proc_theorem$3_ω
 xchain171_n41_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+976] -> [zr+928]
 mov rax, qword ptr [rbp + 976]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 984]
 mov qword ptr [rbp + 936], rax
# marshal arg1 = producer-box slot [zr+1216] -> [zr+944]
 mov rax, qword ptr [rbp + 1216]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1224]
 mov qword ptr [rbp + 952], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 928]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 912], rax
 mov qword ptr [rbp + 920], rdx
 cmp eax, 99
 je xchain171_n19_α
 jmp xchain171_n43_α
 xchain171_n41_β:
 jmp xchain171_n19_α
# IR_LIT_STRING
 xchain171_n42_α:
 mov qword ptr [rbp + 1728], 1
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 1736], rax
<<<<<<< HEAD
 jmp xchain205_n44_α
.Lx275_0:
 .quad .Lx275_0_s
.Lx275_0_s:
=======
 jmp xchain171_n44_α
.Lx226_0:
 .quad .Lx226_0_s
.Lx226_0_s:
>>>>>>> origin/main
 .string "[]"
# IR_VAR
 xchain171_n43_α:
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 856], rax
<<<<<<< HEAD
 jmp xchain205_n45_α
 xchain205_n44_α:
=======
 jmp xchain171_n45_α
 xchain171_n44_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2304] -> [zr+2240]
 mov rax, qword ptr [rbp + 2304]
 mov qword ptr [rbp + 2240], rax
 mov rax, qword ptr [rbp + 2312]
 mov qword ptr [rbp + 2248], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2256]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2256], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2264], rax
# marshal arg2 = producer-box slot [zr+1728] -> [zr+2272]
 mov rax, qword ptr [rbp + 1728]
 mov qword ptr [rbp + 2272], rax
 mov rax, qword ptr [rbp + 1736]
 mov qword ptr [rbp + 2280], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 2240]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 2224], rax
 mov qword ptr [rbp + 2232], rdx
 cmp eax, 99
 je xchain171_n10_α
 jmp xchain171_n46_α
 xchain171_n44_β:
 jmp xchain171_n10_α
# IR_LIT_INTEGER
 xchain171_n45_α:
 mov qword ptr [rbp + 880], 6
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 888], rax
<<<<<<< HEAD
 jmp xchain205_n47_α
.Lx280_0:
=======
 jmp xchain171_n47_α
.Lx230_0:
>>>>>>> origin/main
 .quad 0
 xchain171_n46_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1696] -> [zr+1648]
 mov rax, qword ptr [rbp + 1696]
 mov qword ptr [rbp + 1648], rax
 mov rax, qword ptr [rbp + 1704]
 mov qword ptr [rbp + 1656], rax
# marshal arg1 = producer-box slot [zr+2224] -> [zr+1664]
 mov rax, qword ptr [rbp + 2224]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 2232]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1648]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 cmp eax, 99
 je xchain171_n10_α
 jmp xchain171_n48_α
 xchain171_n46_β:
 jmp xchain171_n10_α
 xchain171_n47_α:
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
 je xchain171_n19_α
 jmp xchain171_n49_α
 xchain171_n47_β:
 jmp xchain171_n19_α
# IR_SUSPEND yield+resume
 xchain171_n48_α:
 lea rax, [rip + xchain171_n48_β]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_theorem$3_γ
 xchain171_n48_β:
 jmp xchain171_n10_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain205_n49_α:
=======
 xchain171_n49_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2960]
 mov qword ptr [rbp + 624], rax
 mov qword ptr [rbp + 632], rdx
<<<<<<< HEAD
 jmp xchain205_n50_α
=======
 jmp xchain171_n50_α
>>>>>>> origin/main
# IR_VAR
 xchain171_n50_α:
 mov rax, qword ptr [rbp + 2992]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 3000]
 mov qword ptr [rbp + 728], rax
<<<<<<< HEAD
 jmp xchain205_n51_α
=======
 jmp xchain171_n51_α
>>>>>>> origin/main
# IR_LIT_INTEGER
 xchain171_n51_α:
 mov qword ptr [rbp + 752], 6
 mov rax, qword ptr [rip + .Lx239_0]
 mov qword ptr [rbp + 760], rax
<<<<<<< HEAD
 jmp xchain205_n52_α
.Lx291_0:
=======
 jmp xchain171_n52_α
.Lx239_0:
>>>>>>> origin/main
 .quad 1
 xchain171_n52_α:
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
 je xchain171_n19_α
 jmp xchain171_n53_α
 xchain171_n52_β:
 jmp xchain171_n19_α
 xchain171_n53_α:
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
 je xchain171_n19_α
 jmp xchain171_n54_α
 xchain171_n53_β:
 jmp xchain171_n19_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain205_n54_α:
=======
 xchain171_n54_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2928]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
<<<<<<< HEAD
 jmp xchain205_n55_α
# IR_VAR_REF
 xchain205_n55_α:
=======
 jmp xchain171_n55_α
# IR_VAR_REF
 xchain171_n55_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2960]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
<<<<<<< HEAD
 jmp xchain205_n56_α
# IR_VAR_REF
 xchain205_n56_α:
=======
 jmp xchain171_n56_α
# IR_VAR_REF
 xchain171_n56_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2976]
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
<<<<<<< HEAD
 jmp xchain205_n57_α
 xchain205_n57_α:
=======
 jmp xchain171_n57_α
 xchain171_n57_α:
>>>>>>> origin/main
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
 mov rdi, qword ptr [rip + .Lx249_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx249_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx249_3]
 lea rdx, [rip + .Lx249_4]
 jmp rax
.Lx249_3:
 mov qword ptr [rbp + 440], rsp
 mov rax, qword ptr [rbp + 432]
 test rax, rax
 jne .Lx249_5
 mov qword ptr [rbp + 432], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx249_2
.Lx249_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx249_2
.Lx249_4:
 mov rax, qword ptr [rbp + 432]
 test rax, rax
 jne .Lx249_6
 mov qword ptr [rbp + 432], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx249_2
.Lx249_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx249_2
.Lx249_1:
 call rt_faildescr@PLT
.Lx249_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain171_n19_α
 jmp xchain171_n58_α
 xchain171_n57_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 440]
 jmp qword ptr [rsp]
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "theorem/3"
# IR_VAR_REF
<<<<<<< HEAD
 xchain205_n58_α:
=======
 xchain171_n58_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2912]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
<<<<<<< HEAD
 jmp xchain205_n59_α
# IR_VAR_REF
 xchain205_n59_α:
=======
 jmp xchain171_n59_α
# IR_VAR_REF
 xchain171_n59_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2928]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
<<<<<<< HEAD
 jmp xchain205_n60_α
# IR_VAR_REF
 xchain205_n60_α:
=======
 jmp xchain171_n60_α
# IR_VAR_REF
 xchain171_n60_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 2944]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
<<<<<<< HEAD
 jmp xchain205_n61_α
 xchain205_n61_α:
=======
 jmp xchain171_n61_α
 xchain171_n61_α:
>>>>>>> origin/main
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
 mov rdi, qword ptr [rip + .Lx257_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx257_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx257_3]
 lea rdx, [rip + .Lx257_4]
 jmp rax
.Lx257_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx257_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx257_2
.Lx257_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx257_2
.Lx257_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx257_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx257_2
.Lx257_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx257_2
.Lx257_1:
 call rt_faildescr@PLT
.Lx257_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain171_n57_β
 jmp xchain171_n62_α
 xchain171_n61_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "rule/3"
# IR_SUSPEND yield+resume
 xchain171_n62_α:
 lea rax, [rip + xchain171_n62_β]
 mov qword ptr [rbp + 2880], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_theorem$3_γ
 xchain171_n62_β:
 jmp xchain171_n61_β
proc_theorem$3_res:
add rsp, 8
pop rbp
proc_theorem$3_β:
jmp qword ptr [rbp + 2880]
proc_theorem$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_theorem$3_res]
push rax
mov rax, [rbp + 3016]
mov rbp, [rbp + 3032]
jmp rax
proc_theorem$3_ω:
mov rax, [rbp + 3024]
lea rsp, [rbp + 3040]
mov rbp, [rbp + 3032]
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
  mov rdi, rsp
  mov ecx, 1088
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1064], rsp
  mov rdi, rsp
  mov esi, 1088
  call rt_jmp_frame_lexprep@PLT
proc_mu$0_α_body:
lea rax, [rip + xchain260_n22_β]
mov qword ptr [rbp + 1040], rax
 xchain260_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je proc_mu$0_ω
 jmp xchain260_n1_α
 xchain260_n0_β:
 jmp proc_mu$0_ω
# IR_LIT_STRING
 xchain260_n1_α:
 mov qword ptr [rbp + 944], 1
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [rbp + 952], rax
<<<<<<< HEAD
 jmp xchain314_n2_α
.Lx317_0:
 .quad .Lx317_0_s
.Lx317_0_s:
=======
 jmp xchain260_n2_α
.Lx262_0:
 .quad .Lx262_0_s
.Lx262_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain260_n2_α:
 mov qword ptr [rbp + 832], 1
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [rbp + 840], rax
<<<<<<< HEAD
 jmp xchain314_n3_α
.Lx318_0:
 .quad .Lx318_0_s
.Lx318_0_s:
=======
 jmp xchain260_n3_α
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
>>>>>>> origin/main
 .string "m"
# IR_LIT_STRING
 xchain260_n3_α:
 mov qword ptr [rbp + 800], 1
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 808], rax
<<<<<<< HEAD
 jmp xchain314_n4_α
.Lx319_0:
 .quad .Lx319_0_s
.Lx319_0_s:
=======
 jmp xchain260_n4_α
.Lx264_0:
 .quad .Lx264_0_s
.Lx264_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain260_n4_α:
 mov qword ptr [rbp + 688], 1
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [rbp + 696], rax
<<<<<<< HEAD
 jmp xchain314_n5_α
.Lx320_0:
 .quad .Lx320_0_s
.Lx320_0_s:
=======
 jmp xchain260_n5_α
.Lx265_0:
 .quad .Lx265_0_s
.Lx265_0_s:
>>>>>>> origin/main
 .string "u"
# IR_LIT_STRING
 xchain260_n5_α:
 mov qword ptr [rbp + 656], 1
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [rbp + 664], rax
<<<<<<< HEAD
 jmp xchain314_n6_α
.Lx321_0:
 .quad .Lx321_0_s
.Lx321_0_s:
=======
 jmp xchain260_n6_α
.Lx266_0:
 .quad .Lx266_0_s
.Lx266_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain260_n6_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [rbp + 552], rax
<<<<<<< HEAD
 jmp xchain314_n7_α
.Lx322_0:
 .quad .Lx322_0_s
.Lx322_0_s:
=======
 jmp xchain260_n7_α
.Lx267_0:
 .quad .Lx267_0_s
.Lx267_0_s:
>>>>>>> origin/main
 .string "i"
# IR_LIT_STRING
 xchain260_n7_α:
 mov qword ptr [rbp + 512], 1
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 520], rax
<<<<<<< HEAD
 jmp xchain314_n8_α
.Lx323_0:
 .quad .Lx323_0_s
.Lx323_0_s:
=======
 jmp xchain260_n8_α
.Lx268_0:
 .quad .Lx268_0_s
.Lx268_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain260_n8_α:
 mov qword ptr [rbp + 400], 1
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 408], rax
<<<<<<< HEAD
 jmp xchain314_n9_α
.Lx324_0:
 .quad .Lx324_0_s
.Lx324_0_s:
=======
 jmp xchain260_n9_α
.Lx269_0:
 .quad .Lx269_0_s
.Lx269_0_s:
>>>>>>> origin/main
 .string "i"
# IR_LIT_STRING
 xchain260_n9_α:
 mov qword ptr [rbp + 368], 1
 mov rax, qword ptr [rip + .Lx270_0]
 mov qword ptr [rbp + 376], rax
<<<<<<< HEAD
 jmp xchain314_n10_α
.Lx325_0:
 .quad .Lx325_0_s
.Lx325_0_s:
=======
 jmp xchain260_n10_α
.Lx270_0:
 .quad .Lx270_0_s
.Lx270_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain260_n10_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [rbp + 264], rax
<<<<<<< HEAD
 jmp xchain314_n11_α
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
=======
 jmp xchain260_n11_α
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
>>>>>>> origin/main
 .string "u"
# IR_LIT_STRING
 xchain260_n11_α:
 mov qword ptr [rbp + 224], 1
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [rbp + 232], rax
<<<<<<< HEAD
 jmp xchain314_n12_α
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
=======
 jmp xchain260_n12_α
.Lx272_0:
 .quad .Lx272_0_s
.Lx272_0_s:
>>>>>>> origin/main
 .string "[]"
 xchain260_n12_α:
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
 jmp xchain260_n13_α
 xchain260_n12_β:
 jmp proc_mu$0_ω
 xchain260_n13_α:
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
 jmp xchain260_n14_α
 xchain260_n13_β:
 jmp proc_mu$0_ω
 xchain260_n14_α:
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
 jmp xchain260_n15_α
 xchain260_n14_β:
 jmp proc_mu$0_ω
 xchain260_n15_α:
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
 jmp xchain260_n16_α
 xchain260_n15_β:
 jmp proc_mu$0_ω
 xchain260_n16_α:
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
 je xchain260_n18_α
 jmp xchain260_n17_α
 xchain260_n16_β:
 jmp xchain260_n18_α
# IR_LIT_INTEGER
 xchain260_n17_α:
 mov qword ptr [rbp + 976], 6
 mov rax, qword ptr [rip + .Lx278_0]
 mov qword ptr [rbp + 984], rax
<<<<<<< HEAD
 jmp xchain314_n19_α
.Lx338_0:
=======
 jmp xchain260_n19_α
.Lx278_0:
>>>>>>> origin/main
 .quad 5
 xchain260_n18_α:
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
 xchain260_n18_β:
 jmp proc_mu$0_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain314_n19_α:
=======
 xchain260_n19_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1072]
 mov qword ptr [rbp + 1008], rax
 mov qword ptr [rbp + 1016], rdx
<<<<<<< HEAD
 jmp xchain314_n20_α
 xchain314_n20_α:
=======
 jmp xchain260_n20_α
 xchain260_n20_α:
>>>>>>> origin/main
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
 mov rdi, qword ptr [rip + .Lx283_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx283_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx283_3]
 lea rdx, [rip + .Lx283_4]
 jmp rax
.Lx283_3:
 mov qword ptr [rbp + 200], rsp
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx283_5
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx283_2
.Lx283_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx283_2
.Lx283_4:
 mov rax, qword ptr [rbp + 192]
 test rax, rax
 jne .Lx283_6
 mov qword ptr [rbp + 192], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx283_2
.Lx283_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx283_2
.Lx283_1:
 call rt_faildescr@PLT
.Lx283_2:
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain260_n18_α
 jmp xchain260_n21_α
 xchain260_n20_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 200]
 jmp qword ptr [rsp]
.Lx283_0:
 .quad .Lx283_0_s
.Lx283_0_s:
 .string "theorem/3"
 xchain260_n21_α:
# IR_CUT
<<<<<<< HEAD
 jmp xchain314_n22_α
=======
 jmp xchain260_n22_α
>>>>>>> origin/main
# IR_SUSPEND yield+resume
 xchain260_n22_α:
 lea rax, [rip + xchain260_n22_β]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 48]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 56]
 mov qword ptr [rbp + 8], rax
 jmp proc_mu$0_γ
 xchain260_n22_β:
 jmp xchain260_n20_β
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
  sub rsp, 1840
  mov [rsp + 1816], rcx
  mov [rsp + 1824], rdx
  mov [rsp + 1832], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1808
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1752], rsp
  mov rdi, rsp
  mov esi, 1808
  call rt_jmp_frame_lexprep@PLT
proc_rule3$2_α_body:
lea rax, [rip + xchain287_n27_β]
mov qword ptr [rbp + 1728], rax
 xchain287_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain287_n1_α
 xchain287_n0_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain348_n1_α:
=======
 xchain287_n1_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
<<<<<<< HEAD
 jmp xchain348_n2_α
=======
 jmp xchain287_n2_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain287_n2_α:
 mov qword ptr [rbp + 1696], 1
 mov rax, qword ptr [rip + .Lx291_0]
 mov qword ptr [rbp + 1704], rax
<<<<<<< HEAD
 jmp xchain348_n3_α
.Lx353_0:
 .quad .Lx353_0_s
.Lx353_0_s:
=======
 jmp xchain287_n3_α
.Lx291_0:
 .quad .Lx291_0_s
.Lx291_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain287_n3_α:
 mov qword ptr [rbp + 1584], 1
 mov rax, qword ptr [rip + .Lx292_0]
 mov qword ptr [rbp + 1592], rax
<<<<<<< HEAD
 jmp xchain348_n4_α
.Lx354_0:
 .quad .Lx354_0_s
.Lx354_0_s:
=======
 jmp xchain287_n4_α
.Lx292_0:
 .quad .Lx292_0_s
.Lx292_0_s:
>>>>>>> origin/main
 .string "i"
# IR_LIT_STRING
 xchain287_n4_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx293_0]
 mov qword ptr [rbp + 1560], rax
<<<<<<< HEAD
 jmp xchain348_n5_α
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
=======
 jmp xchain287_n5_α
.Lx293_0:
 .quad .Lx293_0_s
.Lx293_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain287_n5_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx294_0]
 mov qword ptr [rbp + 1448], rax
<<<<<<< HEAD
 jmp xchain348_n6_α
.Lx356_0:
 .quad .Lx356_0_s
.Lx356_0_s:
=======
 jmp xchain287_n6_α
.Lx294_0:
 .quad .Lx294_0_s
.Lx294_0_s:
>>>>>>> origin/main
 .string "i"
# IR_LIT_STRING
 xchain287_n6_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx295_0]
 mov qword ptr [rbp + 1416], rax
<<<<<<< HEAD
 jmp xchain348_n7_α
.Lx357_0:
 .quad .Lx357_0_s
.Lx357_0_s:
=======
 jmp xchain287_n7_α
.Lx295_0:
 .quad .Lx295_0_s
.Lx295_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain287_n7_α:
 mov qword ptr [rbp + 1296], 1
 mov rax, qword ptr [rip + .Lx296_0]
 mov qword ptr [rbp + 1304], rax
<<<<<<< HEAD
 jmp xchain348_n8_α
.Lx358_0:
 .quad .Lx358_0_s
.Lx358_0_s:
 .string "i"
# IR_VAR_REF
 xchain348_n8_α:
=======
 jmp xchain287_n8_α
.Lx296_0:
 .quad .Lx296_0_s
.Lx296_0_s:
 .string "i"
# IR_VAR_REF
 xchain287_n8_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
<<<<<<< HEAD
 jmp xchain348_n9_α
 xchain348_n9_α:
=======
 jmp xchain287_n9_α
 xchain287_n9_α:
>>>>>>> origin/main
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
# marshal arg2 = producer-box slot [zr+1264] -> [zr+1376]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1376], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1384], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1344]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1328], rax
 mov qword ptr [rbp + 1336], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain287_n10_α
 xchain287_n9_β:
 jmp proc_rule3$2_ω
 xchain287_n10_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1488]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1496], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1504]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1512], rax
# marshal arg2 = producer-box slot [zr+1328] -> [zr+1520]
 mov rax, qword ptr [rbp + 1328]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1336]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1488]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain287_n11_α
 xchain287_n10_β:
 jmp proc_rule3$2_ω
 xchain287_n11_α:
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
# marshal arg2 = producer-box slot [zr+1472] -> [zr+1664]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1664], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1672], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1632]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1616], rax
 mov qword ptr [rbp + 1624], rdx
 cmp eax, 99
 je xchain287_n13_α
 jmp xchain287_n12_α
 xchain287_n11_β:
 jmp xchain287_n13_α
 xchain287_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1184]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1192], rax
# marshal arg1 = producer-box slot [zr+1616] -> [zr+1200]
 mov rax, qword ptr [rbp + 1616]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1624]
 mov qword ptr [rbp + 1208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1184]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain287_n13_α
 jmp xchain287_n14_α
 xchain287_n12_β:
 jmp xchain287_n13_α
 xchain287_n13_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_rule3$2_ω
 jmp xchain287_n15_α
 xchain287_n13_β:
 jmp proc_rule3$2_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain348_n14_α:
=======
 xchain287_n14_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
<<<<<<< HEAD
 jmp xchain348_n16_α
# IR_VAR_REF
 xchain348_n15_α:
=======
 jmp xchain287_n16_α
# IR_VAR_REF
 xchain287_n15_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
<<<<<<< HEAD
 jmp xchain348_n17_α
=======
 jmp xchain287_n17_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain287_n16_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx308_0]
 mov qword ptr [rbp + 1144], rax
<<<<<<< HEAD
 jmp xchain348_n18_α
.Lx375_0:
 .quad .Lx375_0_s
.Lx375_0_s:
=======
 jmp xchain287_n18_α
.Lx308_0:
 .quad .Lx308_0_s
.Lx308_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain287_n17_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx309_0]
 mov qword ptr [rbp + 824], rax
<<<<<<< HEAD
 jmp xchain348_n19_α
.Lx376_0:
 .quad .Lx376_0_s
.Lx376_0_s:
=======
 jmp xchain287_n19_α
.Lx309_0:
 .quad .Lx309_0_s
.Lx309_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain287_n18_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx310_0]
 mov qword ptr [rbp + 1032], rax
<<<<<<< HEAD
 jmp xchain348_n20_α
.Lx377_0:
 .quad .Lx377_0_s
.Lx377_0_s:
 .string "u"
# IR_VAR_REF
 xchain348_n19_α:
=======
 jmp xchain287_n20_α
.Lx310_0:
 .quad .Lx310_0_s
.Lx310_0_s:
 .string "u"
# IR_VAR_REF
 xchain287_n19_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
<<<<<<< HEAD
 jmp xchain348_n21_α
# IR_VAR_REF
 xchain348_n20_α:
=======
 jmp xchain287_n21_α
# IR_VAR_REF
 xchain287_n20_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
<<<<<<< HEAD
 jmp xchain348_n22_α
# IR_VAR_REF
 xchain348_n21_α:
=======
 jmp xchain287_n22_α
# IR_VAR_REF
 xchain287_n21_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
<<<<<<< HEAD
 jmp xchain348_n23_α
 xchain348_n22_α:
=======
 jmp xchain287_n23_α
 xchain287_n22_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1072]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+1088]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1096], rax
# marshal arg2 = producer-box slot [zr+992] -> [zr+1104]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je xchain287_n13_α
 jmp xchain287_n24_α
 xchain287_n22_β:
 jmp xchain287_n13_α
 xchain287_n23_α:
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
# marshal arg2 = producer-box slot [zr+672] -> [zr+784]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain287_n26_α
 jmp xchain287_n25_α
 xchain287_n23_β:
 jmp xchain287_n26_α
 xchain287_n24_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+1056] -> [zr+928]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain287_n13_α
 jmp xchain287_n27_α
 xchain287_n24_β:
 jmp xchain287_n13_α
 xchain287_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+608]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain287_n26_α
 jmp xchain287_n28_α
 xchain287_n25_β:
 jmp xchain287_n26_α
 xchain287_n26_α:
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
 xchain287_n26_β:
 jmp proc_rule3$2_ω
# IR_SUSPEND yield+resume
 xchain287_n27_α:
 lea rax, [rip + xchain287_n27_β]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule3$2_γ
 xchain287_n27_β:
 jmp xchain287_n13_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain348_n28_α:
=======
 xchain287_n28_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
<<<<<<< HEAD
 jmp xchain348_n29_α
=======
 jmp xchain287_n29_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain287_n29_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx326_0]
 mov qword ptr [rbp + 552], rax
<<<<<<< HEAD
 jmp xchain348_n30_α
.Lx398_0:
 .quad .Lx398_0_s
.Lx398_0_s:
 .string "."
# IR_VAR_REF
 xchain348_n30_α:
=======
 jmp xchain287_n30_α
.Lx326_0:
 .quad .Lx326_0_s
.Lx326_0_s:
 .string "."
# IR_VAR_REF
 xchain287_n30_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1792]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
<<<<<<< HEAD
 jmp xchain348_n31_α
# IR_VAR_REF
 xchain348_n31_α:
=======
 jmp xchain287_n31_α
# IR_VAR_REF
 xchain287_n31_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
<<<<<<< HEAD
 jmp xchain348_n32_α
 xchain348_n32_α:
=======
 jmp xchain287_n32_α
 xchain287_n32_α:
>>>>>>> origin/main
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
# marshal arg2 = producer-box slot [zr+400] -> [zr+512]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain287_n26_α
 jmp xchain287_n33_α
 xchain287_n32_β:
 jmp xchain287_n26_α
 xchain287_n33_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+336]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain287_n26_α
 jmp xchain287_n34_α
 xchain287_n33_β:
 jmp xchain287_n26_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain348_n34_α:
=======
 xchain287_n34_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1760]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
<<<<<<< HEAD
 jmp xchain348_n35_α
# IR_VAR_REF
 xchain348_n35_α:
=======
 jmp xchain287_n35_α
# IR_VAR_REF
 xchain287_n35_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1776]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
<<<<<<< HEAD
 jmp xchain348_n36_α
 xchain348_n36_α:
=======
 jmp xchain287_n36_α
 xchain287_n36_α:
>>>>>>> origin/main
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx338_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx338_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx338_3]
 lea rdx, [rip + .Lx338_4]
 jmp rax
.Lx338_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx338_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx338_2
.Lx338_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx338_2
.Lx338_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx338_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx338_2
.Lx338_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx338_2
.Lx338_1:
 call rt_faildescr@PLT
.Lx338_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain287_n26_α
 jmp xchain287_n37_α
 xchain287_n36_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx338_0:
 .quad .Lx338_0_s
.Lx338_0_s:
 .string "rule3/2"
# IR_SUSPEND yield+resume
 xchain287_n37_α:
 lea rax, [rip + xchain287_n37_β]
 mov qword ptr [rbp + 1728], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule3$2_γ
 xchain287_n37_β:
 jmp xchain287_n36_β
proc_rule3$2_res:
add rsp, 8
pop rbp
proc_rule3$2_β:
jmp qword ptr [rbp + 1728]
proc_rule3$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule3$2_res]
push rax
mov rax, [rbp + 1816]
mov rbp, [rbp + 1832]
jmp rax
proc_rule3$2_ω:
mov rax, [rbp + 1824]
lea rsp, [rbp + 1840]
mov rbp, [rbp + 1832]
jmp rax
  .globl proc_rule1$2_α
proc_rule1$2_α:
#=======================================================================================================================
    .global proc_rule1$2_α
    .global proc_rule1$2_β
    .global proc_rule1$2_γ
    .global proc_rule1$2_ω
  sub rsp, 1696
  mov [rsp + 1672], rcx
  mov [rsp + 1680], rdx
  mov [rsp + 1688], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1664
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1608], rsp
  mov rdi, rsp
  mov esi, 1664
  call rt_jmp_frame_lexprep@PLT
proc_rule1$2_α_body:
lea rax, [rip + xchain341_n27_β]
mov qword ptr [rbp + 1584], rax
 xchain341_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 96]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 80], rax
 mov qword ptr [rbp + 88], rdx
 cmp eax, 99
 je proc_rule1$2_ω
 jmp xchain341_n1_α
 xchain341_n0_β:
 jmp proc_rule1$2_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain415_n1_α:
=======
 xchain341_n1_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1376], rax
 mov qword ptr [rbp + 1384], rdx
<<<<<<< HEAD
 jmp xchain415_n2_α
=======
 jmp xchain341_n2_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain341_n2_α:
 mov qword ptr [rbp + 1552], 1
 mov rax, qword ptr [rip + .Lx345_0]
 mov qword ptr [rbp + 1560], rax
<<<<<<< HEAD
 jmp xchain415_n3_α
.Lx420_0:
 .quad .Lx420_0_s
.Lx420_0_s:
=======
 jmp xchain341_n3_α
.Lx345_0:
 .quad .Lx345_0_s
.Lx345_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain341_n3_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx346_0]
 mov qword ptr [rbp + 1448], rax
<<<<<<< HEAD
 jmp xchain415_n4_α
.Lx421_0:
 .quad .Lx421_0_s
.Lx421_0_s:
=======
 jmp xchain341_n4_α
.Lx346_0:
 .quad .Lx346_0_s
.Lx346_0_s:
>>>>>>> origin/main
 .string "i"
# IR_LIT_STRING
 xchain341_n4_α:
 mov qword ptr [rbp + 1408], 1
 mov rax, qword ptr [rip + .Lx347_0]
 mov qword ptr [rbp + 1416], rax
<<<<<<< HEAD
 jmp xchain415_n5_α
.Lx422_0:
 .quad .Lx422_0_s
.Lx422_0_s:
=======
 jmp xchain341_n5_α
.Lx347_0:
 .quad .Lx347_0_s
.Lx347_0_s:
>>>>>>> origin/main
 .string "[]"
 xchain341_n5_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1552] -> [zr+1488]
 mov rax, qword ptr [rbp + 1552]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1560]
 mov qword ptr [rbp + 1496], rax
# marshal arg1 = producer-box slot [zr+1440] -> [zr+1504]
 mov rax, qword ptr [rbp + 1440]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1448]
 mov qword ptr [rbp + 1512], rax
# marshal arg2 = producer-box slot [zr+1408] -> [zr+1520]
 mov rax, qword ptr [rbp + 1408]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1416]
 mov qword ptr [rbp + 1528], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1488]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 cmp eax, 99
 je xchain341_n7_α
 jmp xchain341_n6_α
 xchain341_n5_β:
 jmp xchain341_n7_α
 xchain341_n6_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1376] -> [zr+1328]
 mov rax, qword ptr [rbp + 1376]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1384]
 mov qword ptr [rbp + 1336], rax
# marshal arg1 = producer-box slot [zr+1472] -> [zr+1344]
 mov rax, qword ptr [rbp + 1472]
 mov qword ptr [rbp + 1344], rax
 mov rax, qword ptr [rbp + 1480]
 mov qword ptr [rbp + 1352], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1328]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 cmp eax, 99
 je xchain341_n7_α
 jmp xchain341_n8_α
 xchain341_n6_β:
 jmp xchain341_n7_α
 xchain341_n7_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+80] -> [zr+864]
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 872], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 864]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 848], rax
 mov qword ptr [rbp + 856], rdx
 cmp eax, 99
 je proc_rule1$2_ω
 jmp xchain341_n9_α
 xchain341_n7_β:
 jmp proc_rule1$2_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain415_n8_α:
=======
 xchain341_n8_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
<<<<<<< HEAD
 jmp xchain415_n10_α
# IR_VAR_REF
 xchain415_n9_α:
=======
 jmp xchain341_n10_α
# IR_VAR_REF
 xchain341_n9_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
<<<<<<< HEAD
 jmp xchain415_n11_α
=======
 jmp xchain341_n11_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain341_n10_α:
 mov qword ptr [rbp + 1280], 1
 mov rax, qword ptr [rip + .Lx355_0]
 mov qword ptr [rbp + 1288], rax
<<<<<<< HEAD
 jmp xchain415_n12_α
.Lx433_0:
 .quad .Lx433_0_s
.Lx433_0_s:
=======
 jmp xchain341_n12_α
.Lx355_0:
 .quad .Lx355_0_s
.Lx355_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain341_n11_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx356_0]
 mov qword ptr [rbp + 824], rax
<<<<<<< HEAD
 jmp xchain415_n13_α
.Lx434_0:
 .quad .Lx434_0_s
.Lx434_0_s:
=======
 jmp xchain341_n13_α
.Lx356_0:
 .quad .Lx356_0_s
.Lx356_0_s:
>>>>>>> origin/main
 .string "."
# IR_LIT_STRING
 xchain341_n12_α:
 mov qword ptr [rbp + 1168], 1
 mov rax, qword ptr [rip + .Lx357_0]
 mov qword ptr [rbp + 1176], rax
<<<<<<< HEAD
 jmp xchain415_n14_α
.Lx435_0:
 .quad .Lx435_0_s
.Lx435_0_s:
 .string "i"
# IR_VAR_REF
 xchain415_n13_α:
=======
 jmp xchain341_n14_α
.Lx357_0:
 .quad .Lx357_0_s
.Lx357_0_s:
 .string "i"
# IR_VAR_REF
 xchain341_n13_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
<<<<<<< HEAD
 jmp xchain415_n15_α
=======
 jmp xchain341_n15_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain341_n14_α:
 mov qword ptr [rbp + 1136], 1
 mov rax, qword ptr [rip + .Lx360_0]
 mov qword ptr [rbp + 1144], rax
<<<<<<< HEAD
 jmp xchain415_n16_α
.Lx438_0:
 .quad .Lx438_0_s
.Lx438_0_s:
 .string "."
# IR_VAR_REF
 xchain415_n15_α:
=======
 jmp xchain341_n16_α
.Lx360_0:
 .quad .Lx360_0_s
.Lx360_0_s:
 .string "."
# IR_VAR_REF
 xchain341_n15_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 672], rax
 mov qword ptr [rbp + 680], rdx
<<<<<<< HEAD
 jmp xchain415_n17_α
=======
 jmp xchain341_n17_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain341_n16_α:
 mov qword ptr [rbp + 1024], 1
 mov rax, qword ptr [rip + .Lx363_0]
 mov qword ptr [rbp + 1032], rax
<<<<<<< HEAD
 jmp xchain415_n18_α
.Lx441_0:
 .quad .Lx441_0_s
.Lx441_0_s:
=======
 jmp xchain341_n18_α
.Lx363_0:
 .quad .Lx363_0_s
.Lx363_0_s:
>>>>>>> origin/main
 .string "u"
 xchain341_n17_α:
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
# marshal arg2 = producer-box slot [zr+672] -> [zr+784]
 mov rax, qword ptr [rbp + 672]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 680]
 mov qword ptr [rbp + 792], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 752]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 cmp eax, 99
 je xchain341_n20_α
 jmp xchain341_n19_α
 xchain341_n17_β:
 jmp xchain341_n20_α
# IR_LIT_STRING
 xchain341_n18_α:
 mov qword ptr [rbp + 992], 1
 mov rax, qword ptr [rip + .Lx365_0]
 mov qword ptr [rbp + 1000], rax
<<<<<<< HEAD
 jmp xchain415_n21_α
.Lx444_0:
 .quad .Lx444_0_s
.Lx444_0_s:
=======
 jmp xchain341_n21_α
.Lx365_0:
 .quad .Lx365_0_s
.Lx365_0_s:
>>>>>>> origin/main
 .string "[]"
 xchain341_n19_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# marshal arg1 = producer-box slot [zr+736] -> [zr+608]
 mov rax, qword ptr [rbp + 736]
 mov qword ptr [rbp + 608], rax
 mov rax, qword ptr [rbp + 744]
 mov qword ptr [rbp + 616], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 592]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain341_n20_α
 jmp xchain341_n22_α
 xchain341_n19_β:
 jmp xchain341_n20_α
 xchain341_n20_α:
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
 xchain341_n20_β:
 jmp proc_rule1$2_ω
 xchain341_n21_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1136] -> [zr+1072]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rax
# marshal arg1 = producer-box slot [zr+1024] -> [zr+1088]
 mov rax, qword ptr [rbp + 1024]
 mov qword ptr [rbp + 1088], rax
 mov rax, qword ptr [rbp + 1032]
 mov qword ptr [rbp + 1096], rax
# marshal arg2 = producer-box slot [zr+992] -> [zr+1104]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1112], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1072]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1056], rax
 mov qword ptr [rbp + 1064], rdx
 cmp eax, 99
 je proc_rule1$2_ω
 jmp xchain341_n23_α
 xchain341_n21_β:
 jmp proc_rule1$2_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain415_n22_α:
=======
 xchain341_n22_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
<<<<<<< HEAD
 jmp xchain415_n24_α
 xchain415_n23_α:
=======
 jmp xchain341_n24_α
 xchain341_n23_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1280] -> [zr+1216]
 mov rax, qword ptr [rbp + 1280]
 mov qword ptr [rbp + 1216], rax
 mov rax, qword ptr [rbp + 1288]
 mov qword ptr [rbp + 1224], rax
# marshal arg1 = producer-box slot [zr+1168] -> [zr+1232]
 mov rax, qword ptr [rbp + 1168]
 mov qword ptr [rbp + 1232], rax
 mov rax, qword ptr [rbp + 1176]
 mov qword ptr [rbp + 1240], rax
# marshal arg2 = producer-box slot [zr+1056] -> [zr+1248]
 mov rax, qword ptr [rbp + 1056]
 mov qword ptr [rbp + 1248], rax
 mov rax, qword ptr [rbp + 1064]
 mov qword ptr [rbp + 1256], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 1216]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 1200], rax
 mov qword ptr [rbp + 1208], rdx
 cmp eax, 99
 je xchain341_n7_α
 jmp xchain341_n25_α
 xchain341_n23_β:
 jmp xchain341_n7_α
# IR_LIT_STRING
 xchain341_n24_α:
 mov qword ptr [rbp + 544], 1
 mov rax, qword ptr [rip + .Lx372_0]
 mov qword ptr [rbp + 552], rax
<<<<<<< HEAD
 jmp xchain415_n26_α
.Lx455_0:
 .quad .Lx455_0_s
.Lx455_0_s:
=======
 jmp xchain341_n26_α
.Lx372_0:
 .quad .Lx372_0_s
.Lx372_0_s:
>>>>>>> origin/main
 .string "."
 xchain341_n25_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+960] -> [zr+912]
 mov rax, qword ptr [rbp + 960]
 mov qword ptr [rbp + 912], rax
 mov rax, qword ptr [rbp + 968]
 mov qword ptr [rbp + 920], rax
# marshal arg1 = producer-box slot [zr+1200] -> [zr+928]
 mov rax, qword ptr [rbp + 1200]
 mov qword ptr [rbp + 928], rax
 mov rax, qword ptr [rbp + 1208]
 mov qword ptr [rbp + 936], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 912]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 cmp eax, 99
 je xchain341_n7_α
 jmp xchain341_n27_α
 xchain341_n25_β:
 jmp xchain341_n7_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain415_n26_α:
=======
 xchain341_n26_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1648]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
<<<<<<< HEAD
 jmp xchain415_n28_α
=======
 jmp xchain341_n28_α
>>>>>>> origin/main
# IR_SUSPEND yield+resume
 xchain341_n27_α:
 lea rax, [rip + xchain341_n27_β]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule1$2_γ
 xchain341_n27_β:
 jmp xchain341_n7_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain415_n28_α:
=======
 xchain341_n28_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1632]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
<<<<<<< HEAD
 jmp xchain415_n29_α
 xchain415_n29_α:
=======
 jmp xchain341_n29_α
 xchain341_n29_α:
>>>>>>> origin/main
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
# marshal arg2 = producer-box slot [zr+400] -> [zr+512]
 mov rax, qword ptr [rbp + 400]
 mov qword ptr [rbp + 512], rax
 mov rax, qword ptr [rbp + 408]
 mov qword ptr [rbp + 520], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 480]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
 cmp eax, 99
 je xchain341_n20_α
 jmp xchain341_n30_α
 xchain341_n29_β:
 jmp xchain341_n20_α
 xchain341_n30_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+368] -> [zr+320]
 mov rax, qword ptr [rbp + 368]
 mov qword ptr [rbp + 320], rax
 mov rax, qword ptr [rbp + 376]
 mov qword ptr [rbp + 328], rax
# marshal arg1 = producer-box slot [zr+464] -> [zr+336]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 320]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
 cmp eax, 99
 je xchain341_n20_α
 jmp xchain341_n31_α
 xchain341_n30_β:
 jmp xchain341_n20_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain415_n31_α:
=======
 xchain341_n31_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1616]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
<<<<<<< HEAD
 jmp xchain415_n32_α
# IR_VAR_REF
 xchain415_n32_α:
=======
 jmp xchain341_n32_α
# IR_VAR_REF
 xchain341_n32_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1632]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
<<<<<<< HEAD
 jmp xchain415_n33_α
 xchain415_n33_α:
=======
 jmp xchain341_n33_α
 xchain341_n33_α:
>>>>>>> origin/main
 mov qword ptr [rbp + 208], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 240]
 mov rdx, qword ptr [rbp + 248]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 272]
 mov rdx, qword ptr [rbp + 280]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx387_0]
 mov esi, 2
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx387_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx387_3]
 lea rdx, [rip + .Lx387_4]
 jmp rax
.Lx387_3:
 mov qword ptr [rbp + 216], rsp
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx387_5
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx387_2
.Lx387_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx387_2
.Lx387_4:
 mov rax, qword ptr [rbp + 208]
 test rax, rax
 jne .Lx387_6
 mov qword ptr [rbp + 208], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx387_2
.Lx387_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx387_2
.Lx387_1:
 call rt_faildescr@PLT
.Lx387_2:
 mov qword ptr [rbp + 160], rax
 mov qword ptr [rbp + 168], rdx
 cmp eax, 99
 je xchain341_n20_α
 jmp xchain341_n34_α
 xchain341_n33_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 216]
 jmp qword ptr [rsp]
.Lx387_0:
 .quad .Lx387_0_s
.Lx387_0_s:
 .string "rule1/2"
# IR_SUSPEND yield+resume
 xchain341_n34_α:
 lea rax, [rip + xchain341_n34_β]
 mov qword ptr [rbp + 1584], rax
 mov rax, qword ptr [rbp + 80]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 88]
 mov qword ptr [rbp + 8], rax
 jmp proc_rule1$2_γ
 xchain341_n34_β:
 jmp xchain341_n33_β
proc_rule1$2_res:
add rsp, 8
pop rbp
proc_rule1$2_β:
jmp qword ptr [rbp + 1584]
proc_rule1$2_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_rule1$2_res]
push rax
mov rax, [rbp + 1672]
mov rbp, [rbp + 1688]
jmp rax
proc_rule1$2_ω:
mov rax, [rbp + 1680]
lea rsp, [rbp + 1696]
mov rbp, [rbp + 1688]
jmp rax
  .globl proc_my_append$3_α
proc_my_append$3_α:
#=======================================================================================================================
    .global proc_my_append$3_α
    .global proc_my_append$3_β
    .global proc_my_append$3_γ
    .global proc_my_append$3_ω
  sub rsp, 1600
  mov [rsp + 1576], rcx
  mov [rsp + 1584], rdx
  mov [rsp + 1592], rbp
  mov rbp, rsp
  mov rdi, rsp
  mov ecx, 1568
  xor eax, eax
  rep stosb
  mov qword ptr [rsp + 1496], rsp
  mov rdi, rsp
  mov esi, 1568
  call rt_jmp_frame_lexprep@PLT
proc_my_append$3_α_body:
lea rax, [rip + xchain390_n16_β]
mov qword ptr [rbp + 1472], rax
 xchain390_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_my_append$3_ω
 jmp xchain390_n1_α
 xchain390_n0_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain476_n1_α:
=======
 xchain390_n1_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1408], rax
 mov qword ptr [rbp + 1416], rdx
<<<<<<< HEAD
 jmp xchain476_n2_α
=======
 jmp xchain390_n2_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain390_n2_α:
 mov qword ptr [rbp + 1440], 1
 mov rax, qword ptr [rip + .Lx394_0]
 mov qword ptr [rbp + 1448], rax
<<<<<<< HEAD
 jmp xchain476_n3_α
.Lx481_0:
 .quad .Lx481_0_s
.Lx481_0_s:
=======
 jmp xchain390_n3_α
.Lx394_0:
 .quad .Lx394_0_s
.Lx394_0_s:
>>>>>>> origin/main
 .string "[]"
 xchain390_n3_α:
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
 je xchain390_n5_α
 jmp xchain390_n4_α
 xchain390_n3_β:
 jmp xchain390_n5_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain476_n4_α:
=======
 xchain390_n4_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
<<<<<<< HEAD
 jmp xchain476_n6_α
 xchain476_n5_α:
=======
 jmp xchain390_n6_α
 xchain390_n5_α:
>>>>>>> origin/main
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+96] -> [zr+1056]
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 1064], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1056]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 cmp eax, 99
 je proc_my_append$3_ω
 jmp xchain390_n7_α
 xchain390_n5_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain476_n6_α:
=======
 xchain390_n6_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
<<<<<<< HEAD
 jmp xchain476_n8_α
# IR_VAR_REF
 xchain476_n7_α:
=======
 jmp xchain390_n8_α
# IR_VAR_REF
 xchain390_n7_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
<<<<<<< HEAD
 jmp xchain476_n9_α
 xchain476_n8_α:
=======
 jmp xchain390_n9_α
 xchain390_n8_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1232]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1216], rax
 mov qword ptr [rbp + 1224], rdx
 cmp eax, 99
 je xchain390_n5_α
 jmp xchain390_n10_α
 xchain390_n8_β:
 jmp xchain390_n5_α
# IR_LIT_STRING
 xchain390_n9_α:
 mov qword ptr [rbp + 1008], 1
 mov rax, qword ptr [rip + .Lx404_0]
 mov qword ptr [rbp + 1016], rax
<<<<<<< HEAD
 jmp xchain476_n11_α
.Lx494_0:
 .quad .Lx494_0_s
.Lx494_0_s:
 .string "."
# IR_VAR_REF
 xchain476_n10_α:
=======
 jmp xchain390_n11_α
.Lx404_0:
 .quad .Lx404_0_s
.Lx404_0_s:
 .string "."
# IR_VAR_REF
 xchain390_n10_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1152], rax
 mov qword ptr [rbp + 1160], rdx
<<<<<<< HEAD
 jmp xchain476_n12_α
# IR_VAR_REF
 xchain476_n11_α:
=======
 jmp xchain390_n12_α
# IR_VAR_REF
 xchain390_n11_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
<<<<<<< HEAD
 jmp xchain476_n13_α
# IR_VAR_REF
 xchain476_n12_α:
=======
 jmp xchain390_n13_α
# IR_VAR_REF
 xchain390_n12_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 1184], rax
 mov qword ptr [rbp + 1192], rdx
<<<<<<< HEAD
 jmp xchain476_n14_α
# IR_VAR_REF
 xchain476_n13_α:
=======
 jmp xchain390_n14_α
# IR_VAR_REF
 xchain390_n13_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
<<<<<<< HEAD
 jmp xchain476_n15_α
 xchain476_n14_α:
=======
 jmp xchain390_n15_α
 xchain390_n14_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1152] -> [zr+1104]
 mov rax, qword ptr [rbp + 1152]
 mov qword ptr [rbp + 1104], rax
 mov rax, qword ptr [rbp + 1160]
 mov qword ptr [rbp + 1112], rax
# marshal arg1 = producer-box slot [zr+1184] -> [zr+1120]
 mov rax, qword ptr [rbp + 1184]
 mov qword ptr [rbp + 1120], rax
 mov rax, qword ptr [rbp + 1192]
 mov qword ptr [rbp + 1128], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1104]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1088], rax
 mov qword ptr [rbp + 1096], rdx
 cmp eax, 99
 je xchain390_n5_α
 jmp xchain390_n16_α
 xchain390_n14_β:
 jmp xchain390_n5_α
 xchain390_n15_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1008] -> [zr+944]
 mov rax, qword ptr [rbp + 1008]
 mov qword ptr [rbp + 944], rax
 mov rax, qword ptr [rbp + 1016]
 mov qword ptr [rbp + 952], rax
# marshal arg1 = producer-box slot [zr+896] -> [zr+960]
 mov rax, qword ptr [rbp + 896]
 mov qword ptr [rbp + 960], rax
 mov rax, qword ptr [rbp + 904]
 mov qword ptr [rbp + 968], rax
# marshal arg2 = producer-box slot [zr+864] -> [zr+976]
 mov rax, qword ptr [rbp + 864]
 mov qword ptr [rbp + 976], rax
 mov rax, qword ptr [rbp + 872]
 mov qword ptr [rbp + 984], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 944]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 cmp eax, 99
 je xchain390_n18_α
 jmp xchain390_n17_α
 xchain390_n15_β:
 jmp xchain390_n18_α
# IR_SUSPEND yield+resume
 xchain390_n16_α:
 lea rax, [rip + xchain390_n16_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_my_append$3_γ
 xchain390_n16_β:
 jmp xchain390_n5_α
 xchain390_n17_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+832] -> [zr+784]
 mov rax, qword ptr [rbp + 832]
 mov qword ptr [rbp + 784], rax
 mov rax, qword ptr [rbp + 840]
 mov qword ptr [rbp + 792], rax
# marshal arg1 = producer-box slot [zr+928] -> [zr+800]
 mov rax, qword ptr [rbp + 928]
 mov qword ptr [rbp + 800], rax
 mov rax, qword ptr [rbp + 936]
 mov qword ptr [rbp + 808], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 784]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 cmp eax, 99
 je xchain390_n18_α
 jmp xchain390_n19_α
 xchain390_n17_β:
 jmp xchain390_n18_α
 xchain390_n18_α:
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
 xchain390_n18_β:
 jmp proc_my_append$3_ω
# IR_VAR_REF
<<<<<<< HEAD
 xchain476_n19_α:
=======
 xchain390_n19_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
<<<<<<< HEAD
 jmp xchain476_n20_α
# IR_VAR_REF
 xchain476_n20_α:
=======
 jmp xchain390_n20_α
# IR_VAR_REF
 xchain390_n20_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
<<<<<<< HEAD
 jmp xchain476_n21_α
 xchain476_n21_α:
=======
 jmp xchain390_n21_α
 xchain390_n21_α:
>>>>>>> origin/main
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
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
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 656]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 cmp eax, 99
 je xchain390_n18_α
 jmp xchain390_n22_α
 xchain390_n21_β:
 jmp xchain390_n18_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain476_n22_α:
=======
 xchain390_n22_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
<<<<<<< HEAD
 jmp xchain476_n23_α
=======
 jmp xchain390_n23_α
>>>>>>> origin/main
# IR_LIT_STRING
 xchain390_n23_α:
 mov qword ptr [rbp + 608], 1
 mov rax, qword ptr [rip + .Lx426_0]
 mov qword ptr [rbp + 616], rax
<<<<<<< HEAD
 jmp xchain476_n24_α
.Lx521_0:
 .quad .Lx521_0_s
.Lx521_0_s:
 .string "."
# IR_VAR_REF
 xchain476_n24_α:
=======
 jmp xchain390_n24_α
.Lx426_0:
 .quad .Lx426_0_s
.Lx426_0_s:
 .string "."
# IR_VAR_REF
 xchain390_n24_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1552]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
<<<<<<< HEAD
 jmp xchain476_n25_α
# IR_VAR_REF
 xchain476_n25_α:
=======
 jmp xchain390_n25_α
# IR_VAR_REF
 xchain390_n25_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 464], rax
 mov qword ptr [rbp + 472], rdx
<<<<<<< HEAD
 jmp xchain476_n26_α
 xchain476_n26_α:
=======
 jmp xchain390_n26_α
 xchain390_n26_α:
>>>>>>> origin/main
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+608] -> [zr+544]
 mov rax, qword ptr [rbp + 608]
 mov qword ptr [rbp + 544], rax
 mov rax, qword ptr [rbp + 616]
 mov qword ptr [rbp + 552], rax
# marshal arg1 = producer-box slot [zr+496] -> [zr+560]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 560], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 568], rax
# marshal arg2 = producer-box slot [zr+464] -> [zr+576]
 mov rax, qword ptr [rbp + 464]
 mov qword ptr [rbp + 576], rax
 mov rax, qword ptr [rbp + 472]
 mov qword ptr [rbp + 584], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 544]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 528], rax
 mov qword ptr [rbp + 536], rdx
 cmp eax, 99
 je xchain390_n18_α
 jmp xchain390_n27_α
 xchain390_n26_β:
 jmp xchain390_n18_α
 xchain390_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+432] -> [zr+384]
 mov rax, qword ptr [rbp + 432]
 mov qword ptr [rbp + 384], rax
 mov rax, qword ptr [rbp + 440]
 mov qword ptr [rbp + 392], rax
# marshal arg1 = producer-box slot [zr+528] -> [zr+400]
 mov rax, qword ptr [rbp + 528]
 mov qword ptr [rbp + 400], rax
 mov rax, qword ptr [rbp + 536]
 mov qword ptr [rbp + 408], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 384]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain390_n18_α
 jmp xchain390_n28_α
 xchain390_n27_β:
 jmp xchain390_n18_α
# IR_VAR_REF
<<<<<<< HEAD
 xchain476_n28_α:
=======
 xchain390_n28_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1504]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
<<<<<<< HEAD
 jmp xchain476_n29_α
# IR_VAR_REF
 xchain476_n29_α:
=======
 jmp xchain390_n29_α
# IR_VAR_REF
 xchain390_n29_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1520]
 mov qword ptr [rbp + 304], rax
 mov qword ptr [rbp + 312], rdx
<<<<<<< HEAD
 jmp xchain476_n30_α
# IR_VAR_REF
 xchain476_n30_α:
=======
 jmp xchain390_n30_α
# IR_VAR_REF
 xchain390_n30_α:
>>>>>>> origin/main
 mov rax, 4294967305
 lea rdx, [rbp + 1536]
 mov qword ptr [rbp + 336], rax
 mov qword ptr [rbp + 344], rdx
<<<<<<< HEAD
 jmp xchain476_n31_α
 xchain476_n31_α:
=======
 jmp xchain390_n31_α
 xchain390_n31_α:
>>>>>>> origin/main
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
 mov rdi, qword ptr [rip + .Lx440_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx440_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx440_3]
 lea rdx, [rip + .Lx440_4]
 jmp rax
.Lx440_3:
 mov qword ptr [rbp + 248], rsp
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx440_5
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx440_2
.Lx440_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx440_2
.Lx440_4:
 mov rax, qword ptr [rbp + 240]
 test rax, rax
 jne .Lx440_6
 mov qword ptr [rbp + 240], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx440_2
.Lx440_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx440_2
.Lx440_1:
 call rt_faildescr@PLT
.Lx440_2:
 mov qword ptr [rbp + 176], rax
 mov qword ptr [rbp + 184], rdx
 cmp eax, 99
 je xchain390_n18_α
 jmp xchain390_n32_α
 xchain390_n31_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 248]
 jmp qword ptr [rsp]
.Lx440_0:
 .quad .Lx440_0_s
.Lx440_0_s:
 .string "my_append/3"
# IR_SUSPEND yield+resume
 xchain390_n32_α:
 lea rax, [rip + xchain390_n32_β]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_my_append$3_γ
 xchain390_n32_β:
 jmp xchain390_n31_β
proc_my_append$3_res:
add rsp, 8
pop rbp
proc_my_append$3_β:
jmp qword ptr [rbp + 1472]
proc_my_append$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_my_append$3_res]
push rax
mov rax, [rbp + 1576]
mov rbp, [rbp + 1592]
jmp rax
proc_my_append$3_ω:
mov rax, [rbp + 1584]
lea rsp, [rbp + 1600]
mov rbp, [rbp + 1592]
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
  mov esi, 1536
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
  mov esi, 960
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
  mov esi, 3008
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
  mov esi, 1808
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
  mov esi, 1664
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
  mov esi, 1568
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
 xchain443_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain443_n1_α
 xchain443_n0_β:
 jmp main_ω
 xchain443_n1_α:
 mov qword ptr [rbp + 384], 0
 mov rdi, qword ptr [rip + .Lx446_0]
 mov esi, 0
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx446_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx446_3]
 lea rdx, [rip + .Lx446_4]
 jmp rax
.Lx446_3:
 mov qword ptr [rbp + 392], rsp
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx446_5
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx446_2
.Lx446_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx446_2
.Lx446_4:
 mov rax, qword ptr [rbp + 384]
 test rax, rax
 jne .Lx446_6
 mov qword ptr [rbp + 384], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx446_2
.Lx446_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx446_2
.Lx446_1:
 call rt_faildescr@PLT
.Lx446_2:
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 cmp eax, 99
 je xchain443_n3_α
 jmp xchain443_n2_α
 xchain443_n1_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 392]
 jmp qword ptr [rsp]
.Lx446_0:
 .quad .Lx446_0_s
.Lx446_0_s:
 .string "mu/0"
# IR_LIT_STRING
 xchain443_n2_α:
 mov qword ptr [rbp + 256], 1
 mov rax, qword ptr [rip + .Lx447_0]
 mov qword ptr [rbp + 264], rax
<<<<<<< HEAD
 jmp xchain540_n4_α
.Lx545_0:
 .quad .Lx545_0_s
.Lx545_0_s:
=======
 jmp xchain443_n4_α
.Lx447_0:
 .quad .Lx447_0_s
.Lx447_0_s:
>>>>>>> origin/main
 .string "ok"
# IR_LIT_STRING
 xchain443_n3_α:
 mov qword ptr [rbp + 336], 1
 mov rax, qword ptr [rip + .Lx448_0]
 mov qword ptr [rbp + 344], rax
<<<<<<< HEAD
 jmp xchain540_n5_α
.Lx546_0:
 .quad .Lx546_0_s
.Lx546_0_s:
=======
 jmp xchain443_n5_α
.Lx448_0:
 .quad .Lx448_0_s
.Lx448_0_s:
>>>>>>> origin/main
 .string "failed"
 xchain443_n4_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn450: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn450]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain443_n7_α
 jmp xchain443_n6_α
 xchain443_n4_β:
 jmp xchain443_n7_α
 xchain443_n5_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+336] -> [zr+304]
 mov rax, qword ptr [rbp + 336]
 mov qword ptr [rbp + 304], rax
 mov rax, qword ptr [rbp + 344]
 mov qword ptr [rbp + 312], rax
  .section .rodata
  .Lrkfn452: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn452]
 lea rsi, [rbp + 304]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain443_n7_α
 jmp xchain443_n6_α
 xchain443_n5_β:
 jmp xchain443_n7_α
# IR_LIT_STRING
 xchain443_n6_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx453_0]
 mov qword ptr [rbp + 184], rax
<<<<<<< HEAD
 jmp xchain540_n8_α
.Lx551_0:
 .quad .Lx551_0_s
.Lx551_0_s:
=======
 jmp xchain443_n8_α
.Lx453_0:
 .quad .Lx453_0_s
.Lx453_0_s:
>>>>>>> origin/main
 .string ""
 xchain443_n7_α:
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
 xchain443_n7_β:
 jmp main_ω
 xchain443_n8_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn456: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn456]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain443_n7_α
 jmp xchain443_n9_α
 xchain443_n8_β:
 jmp xchain443_n7_α
# IR_MOVE_LABEL
 xchain443_n9_α:
 lea rax, [rip + xchain443_n7_α]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain443_n10_α:
 jmp qword ptr [rbp + 32]
 xchain443_n10_β:
 jmp main_ω
main_β:
jmp xchain443_n10_α
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
