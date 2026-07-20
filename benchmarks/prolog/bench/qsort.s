  .intel_syntax noprefix
  .text
  .globl proc_partition$4_α
proc_partition$4_α:
#=======================================================================================================================
    .global proc_partition$4_α
    .global proc_partition$4_β
    .global proc_partition$4_γ
    .global proc_partition$4_ω
  sub rsp, 2784
  mov [rsp + 2760], rcx
  mov [rsp + 2768], rdx
  mov [rsp + 2776], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 2648], rsp
  mov rdi, rsp
  mov esi, 2624
  mov edx, 2752
  call rt_jmp_frame_lexprep2@PLT
proc_partition$4_α_body:
lea rax, [rip + xchain0_n57_β]
mov qword ptr [rbp + 2624], rax
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
 mov qword ptr [rbp + 2448], rax
 mov qword ptr [rbp + 2456], rdx
 jmp xchain0_n2_α
# IR_VAR_REF
 xchain0_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2656]
 mov qword ptr [rbp + 2560], rax
 mov qword ptr [rbp + 2568], rdx
 jmp xchain0_n3_α
# IR_VAR_REF
 xchain0_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2672]
 mov qword ptr [rbp + 2592], rax
 mov qword ptr [rbp + 2600], rdx
 jmp xchain0_n4_α
 xchain0_n4_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2448] -> [zr+2496]
 mov rax, qword ptr [rbp + 2448]
 mov qword ptr [rbp + 2496], rax
 mov rax, qword ptr [rbp + 2456]
 mov qword ptr [rbp + 2504], rax
# marshal arg1 = producer-box slot [zr+2560] -> [zr+2512]
 mov rax, qword ptr [rbp + 2560]
 mov qword ptr [rbp + 2512], rax
 mov rax, qword ptr [rbp + 2568]
 mov qword ptr [rbp + 2520], rax
# marshal arg2 = producer-box slot [zr+2592] -> [zr+2528]
 mov rax, qword ptr [rbp + 2592]
 mov qword ptr [rbp + 2528], rax
 mov rax, qword ptr [rbp + 2600]
 mov qword ptr [rbp + 2536], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2496]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2480], rax
 mov qword ptr [rbp + 2488], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n5_α
 xchain0_n4_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 2384], rax
 mov qword ptr [rbp + 2392], rdx
 jmp xchain0_n7_α
 xchain0_n6_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+1616]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 1616], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 1624], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 1616]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 cmp eax, 99
 je proc_partition$4_ω
 jmp xchain0_n8_α
 xchain0_n6_β:
 jmp proc_partition$4_ω
# IR_VAR_REF
 xchain0_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2688]
 mov qword ptr [rbp + 2416], rax
 mov qword ptr [rbp + 2424], rdx
 jmp xchain0_n9_α
# IR_VAR_REF
 xchain0_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1424], rax
 mov qword ptr [rbp + 1432], rdx
 jmp xchain0_n10_α
 xchain0_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2384] -> [zr+2336]
 mov rax, qword ptr [rbp + 2384]
 mov qword ptr [rbp + 2336], rax
 mov rax, qword ptr [rbp + 2392]
 mov qword ptr [rbp + 2344], rax
# marshal arg1 = producer-box slot [zr+2416] -> [zr+2352]
 mov rax, qword ptr [rbp + 2416]
 mov qword ptr [rbp + 2352], rax
 mov rax, qword ptr [rbp + 2424]
 mov qword ptr [rbp + 2360], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2336]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2320], rax
 mov qword ptr [rbp + 2328], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n11_α
 xchain0_n9_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n10_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2656]
 mov qword ptr [rbp + 1536], rax
 mov qword ptr [rbp + 1544], rdx
 jmp xchain0_n12_α
# IR_VAR_REF
 xchain0_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 2144], rax
 mov qword ptr [rbp + 2152], rdx
 jmp xchain0_n13_α
# IR_VAR_REF
 xchain0_n12_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2672]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain0_n14_α
# IR_VAR_REF
 xchain0_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2656]
 mov qword ptr [rbp + 2256], rax
 mov qword ptr [rbp + 2264], rdx
 jmp xchain0_n15_α
 xchain0_n14_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1424] -> [zr+1472]
 mov rax, qword ptr [rbp + 1424]
 mov qword ptr [rbp + 1472], rax
 mov rax, qword ptr [rbp + 1432]
 mov qword ptr [rbp + 1480], rax
# marshal arg1 = producer-box slot [zr+1536] -> [zr+1488]
 mov rax, qword ptr [rbp + 1536]
 mov qword ptr [rbp + 1488], rax
 mov rax, qword ptr [rbp + 1544]
 mov qword ptr [rbp + 1496], rax
# marshal arg2 = producer-box slot [zr+1568] -> [zr+1504]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1504], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1512], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1472]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1456], rax
 mov qword ptr [rbp + 1464], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n16_α
 xchain0_n14_β:
 jmp xchain0_n17_α
# IR_VAR_REF
 xchain0_n15_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2720]
 mov qword ptr [rbp + 2288], rax
 mov qword ptr [rbp + 2296], rdx
 jmp xchain0_n18_α
# IR_VAR_REF
 xchain0_n16_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1360], rax
 mov qword ptr [rbp + 1368], rdx
 jmp xchain0_n19_α
 xchain0_n17_α:
# BOX IR_CALL $unwind_nothrow(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+112] -> [zr+720]
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 720], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 728], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unwind_nothrow (no by-name dispatch)
 lea rdi, [rbp + 720]
 mov esi, 1
 call rt_pl_dop_unwind_nothrow@PLT
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 cmp eax, 99
 je proc_partition$4_ω
 jmp xchain0_n20_α
 xchain0_n17_β:
 jmp proc_partition$4_ω
 xchain0_n18_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2144] -> [zr+2192]
 mov rax, qword ptr [rbp + 2144]
 mov qword ptr [rbp + 2192], rax
 mov rax, qword ptr [rbp + 2152]
 mov qword ptr [rbp + 2200], rax
# marshal arg1 = producer-box slot [zr+2256] -> [zr+2208]
 mov rax, qword ptr [rbp + 2256]
 mov qword ptr [rbp + 2208], rax
 mov rax, qword ptr [rbp + 2264]
 mov qword ptr [rbp + 2216], rax
# marshal arg2 = producer-box slot [zr+2288] -> [zr+2224]
 mov rax, qword ptr [rbp + 2288]
 mov qword ptr [rbp + 2224], rax
 mov rax, qword ptr [rbp + 2296]
 mov qword ptr [rbp + 2232], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 2192]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 2176], rax
 mov qword ptr [rbp + 2184], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n21_α
 xchain0_n18_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n19_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2688]
 mov qword ptr [rbp + 1392], rax
 mov qword ptr [rbp + 1400], rdx
 jmp xchain0_n22_α
# IR_VAR_REF
 xchain0_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 640], rax
 mov qword ptr [rbp + 648], rdx
 jmp xchain0_n23_α
# IR_VAR_REF
 xchain0_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 2080], rax
 mov qword ptr [rbp + 2088], rdx
 jmp xchain0_n24_α
 xchain0_n22_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1360] -> [zr+1312]
 mov rax, qword ptr [rbp + 1360]
 mov qword ptr [rbp + 1312], rax
 mov rax, qword ptr [rbp + 1368]
 mov qword ptr [rbp + 1320], rax
# marshal arg1 = producer-box slot [zr+1392] -> [zr+1328]
 mov rax, qword ptr [rbp + 1392]
 mov qword ptr [rbp + 1328], rax
 mov rax, qword ptr [rbp + 1400]
 mov qword ptr [rbp + 1336], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1312]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1296], rax
 mov qword ptr [rbp + 1304], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n25_α
 xchain0_n22_β:
 jmp xchain0_n17_α
# IR_LIT_STRING
 xchain0_n23_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx39_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain0_n26_α
.Lx39_0:
 .quad .Lx39_0_s
.Lx39_0_s:
 .string "[]"
# IR_VAR_REF
 xchain0_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2736]
 mov qword ptr [rbp + 2112], rax
 mov qword ptr [rbp + 2120], rdx
 jmp xchain0_n27_α
# IR_VAR_REF
 xchain0_n25_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1232], rax
 mov qword ptr [rbp + 1240], rdx
 jmp xchain0_n28_α
 xchain0_n26_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+640] -> [zr+592]
 mov rax, qword ptr [rbp + 640]
 mov qword ptr [rbp + 592], rax
 mov rax, qword ptr [rbp + 648]
 mov qword ptr [rbp + 600], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 592]
 mov rsi, qword ptr [rip + .Lx44_2]
 jmp .Lx44_3
.Lx44_2:
 .quad .Lx44_2_s
.Lx44_2_s:
 .string "[]"
.Lx44_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 576], rax
 mov qword ptr [rbp + 584], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n29_α
 xchain0_n26_β:
 jmp xchain0_n30_α
 xchain0_n27_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+2080] -> [zr+2032]
 mov rax, qword ptr [rbp + 2080]
 mov qword ptr [rbp + 2032], rax
 mov rax, qword ptr [rbp + 2088]
 mov qword ptr [rbp + 2040], rax
# marshal arg1 = producer-box slot [zr+2112] -> [zr+2048]
 mov rax, qword ptr [rbp + 2112]
 mov qword ptr [rbp + 2048], rax
 mov rax, qword ptr [rbp + 2120]
 mov qword ptr [rbp + 2056], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 2032]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 2016], rax
 mov qword ptr [rbp + 2024], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n31_α
 xchain0_n27_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2704]
 mov qword ptr [rbp + 1264], rax
 mov qword ptr [rbp + 1272], rdx
 jmp xchain0_n32_α
# IR_VAR_REF
 xchain0_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 512], rax
 mov qword ptr [rbp + 520], rdx
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
# IR_VAR
 xchain0_n31_α:
 mov rax, qword ptr [rbp + 2656]
 mov qword ptr [rbp + 1952], rax
 mov rax, qword ptr [rbp + 2664]
 mov qword ptr [rbp + 1960], rax
 jmp xchain0_n34_α
 xchain0_n32_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1232] -> [zr+1184]
 mov rax, qword ptr [rbp + 1232]
 mov qword ptr [rbp + 1184], rax
 mov rax, qword ptr [rbp + 1240]
 mov qword ptr [rbp + 1192], rax
# marshal arg1 = producer-box slot [zr+1264] -> [zr+1200]
 mov rax, qword ptr [rbp + 1264]
 mov qword ptr [rbp + 1200], rax
 mov rax, qword ptr [rbp + 1272]
 mov qword ptr [rbp + 1208], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1184]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1168], rax
 mov qword ptr [rbp + 1176], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n35_α
 xchain0_n32_β:
 jmp xchain0_n17_α
# IR_VAR_REF
 xchain0_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2656]
 mov qword ptr [rbp + 544], rax
 mov qword ptr [rbp + 552], rdx
 jmp xchain0_n36_α
# IR_VAR
 xchain0_n34_α:
 mov rax, qword ptr [rbp + 2688]
 mov qword ptr [rbp + 1984], rax
 mov rax, qword ptr [rbp + 2696]
 mov qword ptr [rbp + 1992], rax
 jmp xchain0_n37_α
# IR_VAR_REF
 xchain0_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 992], rax
 mov qword ptr [rbp + 1000], rdx
 jmp xchain0_n38_α
 xchain0_n36_α:
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
 jmp xchain0_n39_α
 xchain0_n36_β:
 jmp xchain0_n30_α
 xchain0_n37_α:
# BOX IR_CALL $cmp_le(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1952] -> [zr+1904]
 mov rax, qword ptr [rbp + 1952]
 mov qword ptr [rbp + 1904], rax
 mov rax, qword ptr [rbp + 1960]
 mov qword ptr [rbp + 1912], rax
# marshal arg1 = producer-box slot [zr+1984] -> [zr+1920]
 mov rax, qword ptr [rbp + 1984]
 mov qword ptr [rbp + 1920], rax
 mov rax, qword ptr [rbp + 1992]
 mov qword ptr [rbp + 1928], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_cmp_le (no by-name dispatch)
 lea rdi, [rbp + 1904]
 mov esi, 2
 call rt_pl_dop_cmp_le@PLT
 mov qword ptr [rbp + 1888], rax
 mov qword ptr [rbp + 1896], rdx
 cmp eax, 99
 je xchain0_n6_α
 jmp xchain0_n40_α
 xchain0_n37_β:
 jmp xchain0_n6_α
# IR_VAR_REF
 xchain0_n38_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2656]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain0_n41_α
# IR_VAR_REF
 xchain0_n39_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 384], rax
 mov qword ptr [rbp + 392], rdx
 jmp xchain0_n42_α
 xchain0_n40_α:
# IR_CUT
 jmp xchain0_n43_α
# IR_VAR_REF
 xchain0_n41_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2720]
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 jmp xchain0_n44_α
# IR_LIT_STRING
 xchain0_n42_α:
 mov qword ptr [rbp + 416], 1
 mov rax, qword ptr [rip + .Lx69_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain0_n45_α
.Lx69_0:
 .quad .Lx69_0_s
.Lx69_0_s:
 .string "[]"
# IR_VAR_REF
 xchain0_n43_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2672]
 mov qword ptr [rbp + 1760], rax
 mov qword ptr [rbp + 1768], rdx
 jmp xchain0_n46_α
 xchain0_n44_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+992] -> [zr+1040]
 mov rax, qword ptr [rbp + 992]
 mov qword ptr [rbp + 1040], rax
 mov rax, qword ptr [rbp + 1000]
 mov qword ptr [rbp + 1048], rax
# marshal arg1 = producer-box slot [zr+1104] -> [zr+1056]
 mov rax, qword ptr [rbp + 1104]
 mov qword ptr [rbp + 1056], rax
 mov rax, qword ptr [rbp + 1112]
 mov qword ptr [rbp + 1064], rax
# marshal arg2 = producer-box slot [zr+1136] -> [zr+1072]
 mov rax, qword ptr [rbp + 1136]
 mov qword ptr [rbp + 1072], rax
 mov rax, qword ptr [rbp + 1144]
 mov qword ptr [rbp + 1080], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1040]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1024], rax
 mov qword ptr [rbp + 1032], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n47_α
 xchain0_n44_β:
 jmp xchain0_n17_α
 xchain0_n45_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+384] -> [zr+336]
 mov rax, qword ptr [rbp + 384]
 mov qword ptr [rbp + 336], rax
 mov rax, qword ptr [rbp + 392]
 mov qword ptr [rbp + 344], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 336]
 mov rsi, qword ptr [rip + .Lx73_2]
 jmp .Lx73_3
.Lx73_2:
 .quad .Lx73_2_s
.Lx73_2_s:
 .string "[]"
.Lx73_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 320], rax
 mov qword ptr [rbp + 328], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n48_α
 xchain0_n45_β:
 jmp xchain0_n30_α
# IR_VAR_REF
 xchain0_n46_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2688]
 mov qword ptr [rbp + 1792], rax
 mov qword ptr [rbp + 1800], rdx
 jmp xchain0_n49_α
# IR_VAR_REF
 xchain0_n47_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2672]
 mov qword ptr [rbp + 864], rax
 mov qword ptr [rbp + 872], rdx
 jmp xchain0_n50_α
# IR_VAR_REF
 xchain0_n48_α:
 mov rax, 4294967305
 lea rdx, [rbp + 64]
 mov qword ptr [rbp + 256], rax
 mov qword ptr [rbp + 264], rdx
 jmp xchain0_n51_α
# IR_VAR_REF
 xchain0_n49_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2720]
 mov qword ptr [rbp + 1824], rax
 mov qword ptr [rbp + 1832], rdx
 jmp xchain0_n52_α
# IR_VAR_REF
 xchain0_n50_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2688]
 mov qword ptr [rbp + 896], rax
 mov qword ptr [rbp + 904], rdx
 jmp xchain0_n53_α
# IR_LIT_STRING
 xchain0_n51_α:
 mov qword ptr [rbp + 288], 1
 mov rax, qword ptr [rip + .Lx84_0]
 mov qword ptr [rbp + 296], rax
 jmp xchain0_n54_α
.Lx84_0:
 .quad .Lx84_0_s
.Lx84_0_s:
 .string "[]"
# IR_VAR_REF
 xchain0_n52_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2736]
 mov qword ptr [rbp + 1856], rax
 mov qword ptr [rbp + 1864], rdx
 jmp xchain0_n55_α
# IR_VAR_REF
 xchain0_n53_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2704]
 mov qword ptr [rbp + 928], rax
 mov qword ptr [rbp + 936], rdx
 jmp xchain0_n56_α
 xchain0_n54_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+208]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 208], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 216], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 208]
 mov rsi, qword ptr [rip + .Lx89_2]
 jmp .Lx89_3
.Lx89_2:
 .quad .Lx89_2_s
.Lx89_2_s:
 .string "[]"
.Lx89_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 192], rax
 mov qword ptr [rbp + 200], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n57_α
 xchain0_n54_β:
 jmp xchain0_n30_α
 xchain0_n55_α:
 mov qword ptr [rbp + 1728], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1760]
 mov rdx, qword ptr [rbp + 1768]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1792]
 mov rdx, qword ptr [rbp + 1800]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1824]
 mov rdx, qword ptr [rbp + 1832]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 1856]
 mov rdx, qword ptr [rbp + 1864]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx91_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx91_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx91_3]
 lea rdx, [rip + .Lx91_4]
 jmp rax
.Lx91_3:
 mov qword ptr [rbp + 1736], rsp
 mov rax, qword ptr [rbp + 1728]
 test rax, rax
 jne .Lx91_5
 mov qword ptr [rbp + 1728], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx91_2
.Lx91_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx91_2
.Lx91_4:
 mov rax, qword ptr [rbp + 1728]
 test rax, rax
 jne .Lx91_6
 mov qword ptr [rbp + 1728], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx91_2
.Lx91_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx91_2
.Lx91_1:
 call rt_faildescr@PLT
.Lx91_2:
 mov qword ptr [rbp + 1648], rax
 mov qword ptr [rbp + 1656], rdx
 cmp eax, 99
 je xchain0_n30_α
 jmp xchain0_n58_α
 xchain0_n55_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1736]
 jmp qword ptr [rsp]
.Lx91_0:
 .quad .Lx91_0_s
.Lx91_0_s:
 .string "partition/4"
# IR_VAR_REF
 xchain0_n56_α:
 mov rax, 4294967305
 lea rdx, [rbp + 2720]
 mov qword ptr [rbp + 960], rax
 mov qword ptr [rbp + 968], rdx
 jmp xchain0_n59_α
# IR_SUSPEND yield+resume
 xchain0_n57_α:
 lea rax, [rip + xchain0_n57_β]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_partition$4_γ
 xchain0_n57_β:
 jmp xchain0_n30_α
# IR_SUSPEND yield+resume
 xchain0_n58_α:
 lea rax, [rip + xchain0_n58_β]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_partition$4_γ
 xchain0_n58_β:
 jmp xchain0_n55_β
 xchain0_n59_α:
 mov qword ptr [rbp + 832], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 864]
 mov rdx, qword ptr [rbp + 872]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 896]
 mov rdx, qword ptr [rbp + 904]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 928]
 mov rdx, qword ptr [rbp + 936]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 960]
 mov rdx, qword ptr [rbp + 968]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx99_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx99_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx99_3]
 lea rdx, [rip + .Lx99_4]
 jmp rax
.Lx99_3:
 mov qword ptr [rbp + 840], rsp
 mov rax, qword ptr [rbp + 832]
 test rax, rax
 jne .Lx99_5
 mov qword ptr [rbp + 832], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx99_2
.Lx99_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx99_2
.Lx99_4:
 mov rax, qword ptr [rbp + 832]
 test rax, rax
 jne .Lx99_6
 mov qword ptr [rbp + 832], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx99_2
.Lx99_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx99_2
.Lx99_1:
 call rt_faildescr@PLT
.Lx99_2:
 mov qword ptr [rbp + 752], rax
 mov qword ptr [rbp + 760], rdx
 cmp eax, 99
 je xchain0_n17_α
 jmp xchain0_n60_α
 xchain0_n59_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 840]
 jmp qword ptr [rsp]
.Lx99_0:
 .quad .Lx99_0_s
.Lx99_0_s:
 .string "partition/4"
# IR_SUSPEND yield+resume
 xchain0_n60_α:
 lea rax, [rip + xchain0_n60_β]
 mov qword ptr [rbp + 2624], rax
 mov rax, qword ptr [rbp + 112]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 120]
 mov qword ptr [rbp + 8], rax
 jmp proc_partition$4_γ
 xchain0_n60_β:
 jmp xchain0_n59_β
proc_partition$4_res:
add rsp, 8
pop rbp
proc_partition$4_β:
jmp qword ptr [rbp + 2624]
proc_partition$4_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_partition$4_res]
push rax
mov rax, [rbp + 2760]
mov rbp, [rbp + 2776]
jmp rax
proc_partition$4_ω:
mov rax, [rbp + 2768]
lea rsp, [rbp + 2784]
mov rbp, [rbp + 2776]
jmp rax
  .globl proc_qsort$3_α
proc_qsort$3_α:
#=======================================================================================================================
    .global proc_qsort$3_α
    .global proc_qsort$3_β
    .global proc_qsort$3_γ
    .global proc_qsort$3_ω
  sub rsp, 1984
  mov [rsp + 1960], rcx
  mov [rsp + 1968], rdx
  mov [rsp + 1976], rbp
  mov rbp, rsp
  mov qword ptr [rsp + 1832], rsp
  mov rdi, rsp
  mov esi, 1808
  mov edx, 1952
  call rt_jmp_frame_lexprep2@PLT
proc_qsort$3_α_body:
lea rax, [rip + xchain102_n27_β]
mov qword ptr [rbp + 1808], rax
 xchain102_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 112]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 96], rax
 mov qword ptr [rbp + 104], rdx
 cmp eax, 99
 je proc_qsort$3_ω
 jmp xchain102_n1_α
 xchain102_n0_β:
 jmp proc_qsort$3_ω
# IR_VAR_REF
 xchain102_n1_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 1632], rax
 mov qword ptr [rbp + 1640], rdx
 jmp xchain102_n2_α
# IR_VAR_REF
 xchain102_n2_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1888]
 mov qword ptr [rbp + 1744], rax
 mov qword ptr [rbp + 1752], rdx
 jmp xchain102_n3_α
# IR_VAR_REF
 xchain102_n3_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1936]
 mov qword ptr [rbp + 1776], rax
 mov qword ptr [rbp + 1784], rdx
 jmp xchain102_n4_α
 xchain102_n4_α:
# BOX IR_CALL $unify_lst(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1632] -> [zr+1680]
 mov rax, qword ptr [rbp + 1632]
 mov qword ptr [rbp + 1680], rax
 mov rax, qword ptr [rbp + 1640]
 mov qword ptr [rbp + 1688], rax
# marshal arg1 = producer-box slot [zr+1744] -> [zr+1696]
 mov rax, qword ptr [rbp + 1744]
 mov qword ptr [rbp + 1696], rax
 mov rax, qword ptr [rbp + 1752]
 mov qword ptr [rbp + 1704], rax
# marshal arg2 = producer-box slot [zr+1776] -> [zr+1712]
 mov rax, qword ptr [rbp + 1776]
 mov qword ptr [rbp + 1712], rax
 mov rax, qword ptr [rbp + 1784]
 mov qword ptr [rbp + 1720], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify_lst (no by-name dispatch)
 lea rdi, [rbp + 1680]
 mov esi, 3
 call rt_pl_dop_unify_lst@PLT
 mov qword ptr [rbp + 1664], rax
 mov qword ptr [rbp + 1672], rdx
 cmp eax, 99
 je xchain102_n6_α
 jmp xchain102_n5_α
 xchain102_n4_β:
 jmp xchain102_n6_α
# IR_VAR_REF
 xchain102_n5_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 1568], rax
 mov qword ptr [rbp + 1576], rdx
 jmp xchain102_n7_α
 xchain102_n6_α:
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
 je proc_qsort$3_ω
 jmp xchain102_n8_α
 xchain102_n6_β:
 jmp proc_qsort$3_ω
# IR_VAR_REF
 xchain102_n7_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1840]
 mov qword ptr [rbp + 1600], rax
 mov qword ptr [rbp + 1608], rdx
 jmp xchain102_n9_α
# IR_VAR_REF
 xchain102_n8_α:
 mov rax, 4294967305
 lea rdx, [rbp + 16]
 mov qword ptr [rbp + 496], rax
 mov qword ptr [rbp + 504], rdx
 jmp xchain102_n10_α
 xchain102_n9_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+1568] -> [zr+1520]
 mov rax, qword ptr [rbp + 1568]
 mov qword ptr [rbp + 1520], rax
 mov rax, qword ptr [rbp + 1576]
 mov qword ptr [rbp + 1528], rax
# marshal arg1 = producer-box slot [zr+1600] -> [zr+1536]
 mov rax, qword ptr [rbp + 1600]
 mov qword ptr [rbp + 1536], rax
 mov rax, qword ptr [rbp + 1608]
 mov qword ptr [rbp + 1544], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_unify (no by-name dispatch)
 lea rdi, [rbp + 1520]
 mov esi, 2
 call rt_pl_dop_unify@PLT
 mov qword ptr [rbp + 1504], rax
 mov qword ptr [rbp + 1512], rdx
 cmp eax, 99
 je xchain102_n6_α
 jmp xchain102_n11_α
 xchain102_n9_β:
 jmp xchain102_n6_α
# IR_LIT_STRING
 xchain102_n10_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx119_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain102_n12_α
.Lx119_0:
 .quad .Lx119_0_s
.Lx119_0_s:
 .string "[]"
# IR_VAR_REF
 xchain102_n11_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 1440], rax
 mov qword ptr [rbp + 1448], rdx
 jmp xchain102_n13_α
 xchain102_n12_α:
# BOX IR_CALL $unify(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+496] -> [zr+448]
 mov rax, qword ptr [rbp + 496]
 mov qword ptr [rbp + 448], rax
 mov rax, qword ptr [rbp + 504]
 mov qword ptr [rbp + 456], rax
# PL-REGAIN-5 const head-unify leaf: rt_pl_dop_unify_cs (const in reg, one-operand marshal)
 lea rdi, [rbp + 448]
 mov rsi, qword ptr [rip + .Lx122_2]
 jmp .Lx122_3
.Lx122_2:
 .quad .Lx122_2_s
.Lx122_2_s:
 .string "[]"
.Lx122_3:
 call rt_pl_dop_unify_cs@PLT
 mov qword ptr [rbp + 432], rax
 mov qword ptr [rbp + 440], rdx
 cmp eax, 99
 je xchain102_n15_α
 jmp xchain102_n14_α
 xchain102_n12_β:
 jmp xchain102_n15_α
# IR_VAR_REF
 xchain102_n13_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1920]
 mov qword ptr [rbp + 1472], rax
 mov qword ptr [rbp + 1480], rdx
 jmp xchain102_n16_α
# IR_VAR_REF
 xchain102_n14_α:
 mov rax, 4294967305
 lea rdx, [rbp + 32]
 mov qword ptr [rbp + 368], rax
 mov qword ptr [rbp + 376], rdx
 jmp xchain102_n17_α
 xchain102_n15_α:
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
 xchain102_n15_β:
 jmp proc_qsort$3_ω
 xchain102_n16_α:
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
 je xchain102_n6_α
 jmp xchain102_n18_α
 xchain102_n16_β:
 jmp xchain102_n6_α
# IR_VAR_REF
 xchain102_n17_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1840]
 mov qword ptr [rbp + 400], rax
 mov qword ptr [rbp + 408], rdx
 jmp xchain102_n19_α
# IR_VAR_REF
 xchain102_n18_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1936]
 mov qword ptr [rbp + 1248], rax
 mov qword ptr [rbp + 1256], rdx
 jmp xchain102_n20_α
 xchain102_n19_α:
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
 je xchain102_n15_α
 jmp xchain102_n21_α
 xchain102_n19_β:
 jmp xchain102_n15_α
# IR_VAR_REF
 xchain102_n20_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1888]
 mov qword ptr [rbp + 1280], rax
 mov qword ptr [rbp + 1288], rdx
 jmp xchain102_n22_α
# IR_VAR_REF
 xchain102_n21_α:
 mov rax, 4294967305
 lea rdx, [rbp + 48]
 mov qword ptr [rbp + 240], rax
 mov qword ptr [rbp + 248], rdx
 jmp xchain102_n23_α
# IR_VAR_REF
 xchain102_n22_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1856]
 mov qword ptr [rbp + 1312], rax
 mov qword ptr [rbp + 1320], rdx
 jmp xchain102_n24_α
# IR_VAR_REF
 xchain102_n23_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1840]
 mov qword ptr [rbp + 272], rax
 mov qword ptr [rbp + 280], rdx
 jmp xchain102_n25_α
# IR_VAR_REF
 xchain102_n24_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1904]
 mov qword ptr [rbp + 1344], rax
 mov qword ptr [rbp + 1352], rdx
 jmp xchain102_n26_α
 xchain102_n25_α:
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
 je xchain102_n15_α
 jmp xchain102_n27_α
 xchain102_n25_β:
 jmp xchain102_n15_α
 xchain102_n26_α:
 mov qword ptr [rbp + 1216], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 1248]
 mov rdx, qword ptr [rbp + 1256]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 1280]
 mov rdx, qword ptr [rbp + 1288]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 1312]
 mov rdx, qword ptr [rbp + 1320]
 call rt_arg_stage@PLT
 mov edi, 3
 mov rsi, qword ptr [rbp + 1344]
 mov rdx, qword ptr [rbp + 1352]
 call rt_arg_stage@PLT
 mov rdi, qword ptr [rip + .Lx146_0]
 mov esi, 4
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx146_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx146_3]
 lea rdx, [rip + .Lx146_4]
 jmp rax
.Lx146_3:
 mov qword ptr [rbp + 1224], rsp
 mov rax, qword ptr [rbp + 1216]
 test rax, rax
 jne .Lx146_5
 mov qword ptr [rbp + 1216], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx146_2
.Lx146_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx146_2
.Lx146_4:
 mov rax, qword ptr [rbp + 1216]
 test rax, rax
 jne .Lx146_6
 mov qword ptr [rbp + 1216], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx146_2
.Lx146_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx146_2
.Lx146_1:
 call rt_faildescr@PLT
.Lx146_2:
 mov qword ptr [rbp + 1136], rax
 mov qword ptr [rbp + 1144], rdx
 cmp eax, 99
 je xchain102_n6_α
 jmp xchain102_n28_α
 xchain102_n26_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1224]
 jmp qword ptr [rsp]
.Lx146_0:
 .quad .Lx146_0_s
.Lx146_0_s:
 .string "partition/4"
# IR_SUSPEND yield+resume
 xchain102_n27_α:
 lea rax, [rip + xchain102_n27_β]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_qsort$3_γ
 xchain102_n27_β:
 jmp xchain102_n15_α
# IR_VAR_REF
 xchain102_n28_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1904]
 mov qword ptr [rbp + 1040], rax
 mov qword ptr [rbp + 1048], rdx
 jmp xchain102_n29_α
# IR_VAR_REF
 xchain102_n29_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1872]
 mov qword ptr [rbp + 1072], rax
 mov qword ptr [rbp + 1080], rdx
 jmp xchain102_n30_α
# IR_VAR_REF
 xchain102_n30_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1920]
 mov qword ptr [rbp + 1104], rax
 mov qword ptr [rbp + 1112], rdx
 jmp xchain102_n31_α
 xchain102_n31_α:
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
 mov rdi, qword ptr [rip + .Lx156_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx156_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx156_3]
 lea rdx, [rip + .Lx156_4]
 jmp rax
.Lx156_3:
 mov qword ptr [rbp + 1016], rsp
 mov rax, qword ptr [rbp + 1008]
 test rax, rax
 jne .Lx156_5
 mov qword ptr [rbp + 1008], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx156_2
.Lx156_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx156_2
.Lx156_4:
 mov rax, qword ptr [rbp + 1008]
 test rax, rax
 jne .Lx156_6
 mov qword ptr [rbp + 1008], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx156_2
.Lx156_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx156_2
.Lx156_1:
 call rt_faildescr@PLT
.Lx156_2:
 mov qword ptr [rbp + 944], rax
 mov qword ptr [rbp + 952], rdx
 cmp eax, 99
 je xchain102_n26_β
 jmp xchain102_n32_α
 xchain102_n31_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 1016]
 jmp qword ptr [rsp]
.Lx156_0:
 .quad .Lx156_0_s
.Lx156_0_s:
 .string "qsort/3"
# IR_VAR_REF
 xchain102_n32_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1856]
 mov qword ptr [rbp + 704], rax
 mov qword ptr [rbp + 712], rdx
 jmp xchain102_n33_α
# IR_VAR_REF
 xchain102_n33_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1840]
 mov qword ptr [rbp + 736], rax
 mov qword ptr [rbp + 744], rdx
 jmp xchain102_n34_α
# IR_LIT_STRING
 xchain102_n34_α:
 mov qword ptr [rbp + 912], 1
 mov rax, qword ptr [rip + .Lx161_0]
 mov qword ptr [rbp + 920], rax
 jmp xchain102_n35_α
.Lx161_0:
 .quad .Lx161_0_s
.Lx161_0_s:
 .string "."
# IR_VAR_REF
 xchain102_n35_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1888]
 mov qword ptr [rbp + 800], rax
 mov qword ptr [rbp + 808], rdx
 jmp xchain102_n36_α
# IR_VAR_REF
 xchain102_n36_α:
 mov rax, 4294967305
 lea rdx, [rbp + 1872]
 mov qword ptr [rbp + 768], rax
 mov qword ptr [rbp + 776], rdx
 jmp xchain102_n37_α
 xchain102_n37_α:
# BOX IR_CALL $mkc(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+912] -> [zr+848]
 mov rax, qword ptr [rbp + 912]
 mov qword ptr [rbp + 848], rax
 mov rax, qword ptr [rbp + 920]
 mov qword ptr [rbp + 856], rax
# marshal arg1 = producer-box slot [zr+800] -> [zr+864]
 mov rax, qword ptr [rbp + 800]
 mov qword ptr [rbp + 864], rax
 mov rax, qword ptr [rbp + 808]
 mov qword ptr [rbp + 872], rax
# marshal arg2 = producer-box slot [zr+768] -> [zr+880]
 mov rax, qword ptr [rbp + 768]
 mov qword ptr [rbp + 880], rax
 mov rax, qword ptr [rbp + 776]
 mov qword ptr [rbp + 888], rax
# PL-REGAIN-2 direct det leaf: rt_pl_dop_mkc (no by-name dispatch)
 lea rdi, [rbp + 848]
 mov esi, 3
 call rt_pl_dop_mkc@PLT
 mov qword ptr [rbp + 832], rax
 mov qword ptr [rbp + 840], rdx
 cmp eax, 99
 je xchain102_n6_α
 jmp xchain102_n38_α
 xchain102_n37_β:
 jmp xchain102_n6_α
 xchain102_n38_α:
 mov qword ptr [rbp + 672], 0
 mov edi, 0
 mov rsi, qword ptr [rbp + 704]
 mov rdx, qword ptr [rbp + 712]
 call rt_arg_stage@PLT
 mov edi, 1
 mov rsi, qword ptr [rbp + 736]
 mov rdx, qword ptr [rbp + 744]
 call rt_arg_stage@PLT
 mov edi, 2
 mov rsi, qword ptr [rbp + 832]
 mov rdx, qword ptr [rbp + 840]
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
 mov qword ptr [rbp + 680], rsp
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx168_5
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx168_2
.Lx168_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx168_2
.Lx168_4:
 mov rax, qword ptr [rbp + 672]
 test rax, rax
 jne .Lx168_6
 mov qword ptr [rbp + 672], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx168_2
.Lx168_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx168_2
.Lx168_1:
 call rt_faildescr@PLT
.Lx168_2:
 mov qword ptr [rbp + 608], rax
 mov qword ptr [rbp + 616], rdx
 cmp eax, 99
 je xchain102_n31_β
 jmp xchain102_n39_α
 xchain102_n38_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 680]
 jmp qword ptr [rsp]
.Lx168_0:
 .quad .Lx168_0_s
.Lx168_0_s:
 .string "qsort/3"
# IR_SUSPEND yield+resume
 xchain102_n39_α:
 lea rax, [rip + xchain102_n39_β]
 mov qword ptr [rbp + 1808], rax
 mov rax, qword ptr [rbp + 96]
 mov qword ptr [rbp + 0], rax
 mov rax, qword ptr [rbp + 104]
 mov qword ptr [rbp + 8], rax
 jmp proc_qsort$3_γ
 xchain102_n39_β:
 jmp xchain102_n38_β
proc_qsort$3_res:
add rsp, 8
pop rbp
proc_qsort$3_β:
jmp qword ptr [rbp + 1808]
proc_qsort$3_γ:
mov rdi, [rbp]
mov rsi, [rbp + 8]
push rbp
lea rax, [rip + proc_qsort$3_res]
push rax
mov rax, [rbp + 1960]
mov rbp, [rbp + 1976]
jmp rax
proc_qsort$3_ω:
mov rax, [rbp + 1968]
lea rsp, [rbp + 1984]
mov rbp, [rbp + 1976]
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
  mov esi, 2752
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
  mov esi, 1952
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
 xchain171_n0_α:
# BOX IR_CALL $trail_mark(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# PL-REGAIN-2 direct det leaf: rt_pl_dop_trail_mark (no by-name dispatch)
 lea rdi, [rbp + 64]
 mov esi, 0
 call rt_pl_dop_trail_mark@PLT
 mov qword ptr [rbp + 48], rax
 mov qword ptr [rbp + 56], rdx
 cmp eax, 99
 je main_ω
 jmp xchain171_n1_α
 xchain171_n0_β:
 jmp main_ω
# IR_LIT_STRING
 xchain171_n1_α:
 mov qword ptr [rbp + 7584], 1
 mov rax, qword ptr [rip + .Lx173_0]
 mov qword ptr [rbp + 7592], rax
 jmp xchain171_n2_α
.Lx173_0:
 .quad .Lx173_0_s
.Lx173_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n2_α:
 mov qword ptr [rbp + 7472], 6
 mov rax, qword ptr [rip + .Lx174_0]
 mov qword ptr [rbp + 7480], rax
 jmp xchain171_n3_α
.Lx174_0:
 .quad 27
# IR_LIT_STRING
 xchain171_n3_α:
 mov qword ptr [rbp + 7440], 1
 mov rax, qword ptr [rip + .Lx175_0]
 mov qword ptr [rbp + 7448], rax
 jmp xchain171_n4_α
.Lx175_0:
 .quad .Lx175_0_s
.Lx175_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n4_α:
 mov qword ptr [rbp + 7328], 6
 mov rax, qword ptr [rip + .Lx176_0]
 mov qword ptr [rbp + 7336], rax
 jmp xchain171_n5_α
.Lx176_0:
 .quad 74
# IR_LIT_STRING
 xchain171_n5_α:
 mov qword ptr [rbp + 7296], 1
 mov rax, qword ptr [rip + .Lx177_0]
 mov qword ptr [rbp + 7304], rax
 jmp xchain171_n6_α
.Lx177_0:
 .quad .Lx177_0_s
.Lx177_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n6_α:
 mov qword ptr [rbp + 7184], 6
 mov rax, qword ptr [rip + .Lx178_0]
 mov qword ptr [rbp + 7192], rax
 jmp xchain171_n7_α
.Lx178_0:
 .quad 17
# IR_LIT_STRING
 xchain171_n7_α:
 mov qword ptr [rbp + 7152], 1
 mov rax, qword ptr [rip + .Lx179_0]
 mov qword ptr [rbp + 7160], rax
 jmp xchain171_n8_α
.Lx179_0:
 .quad .Lx179_0_s
.Lx179_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n8_α:
 mov qword ptr [rbp + 7040], 6
 mov rax, qword ptr [rip + .Lx180_0]
 mov qword ptr [rbp + 7048], rax
 jmp xchain171_n9_α
.Lx180_0:
 .quad 33
# IR_LIT_STRING
 xchain171_n9_α:
 mov qword ptr [rbp + 7008], 1
 mov rax, qword ptr [rip + .Lx181_0]
 mov qword ptr [rbp + 7016], rax
 jmp xchain171_n10_α
.Lx181_0:
 .quad .Lx181_0_s
.Lx181_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n10_α:
 mov qword ptr [rbp + 6896], 6
 mov rax, qword ptr [rip + .Lx182_0]
 mov qword ptr [rbp + 6904], rax
 jmp xchain171_n11_α
.Lx182_0:
 .quad 94
# IR_LIT_STRING
 xchain171_n11_α:
 mov qword ptr [rbp + 6864], 1
 mov rax, qword ptr [rip + .Lx183_0]
 mov qword ptr [rbp + 6872], rax
 jmp xchain171_n12_α
.Lx183_0:
 .quad .Lx183_0_s
.Lx183_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n12_α:
 mov qword ptr [rbp + 6752], 6
 mov rax, qword ptr [rip + .Lx184_0]
 mov qword ptr [rbp + 6760], rax
 jmp xchain171_n13_α
.Lx184_0:
 .quad 18
# IR_LIT_STRING
 xchain171_n13_α:
 mov qword ptr [rbp + 6720], 1
 mov rax, qword ptr [rip + .Lx185_0]
 mov qword ptr [rbp + 6728], rax
 jmp xchain171_n14_α
.Lx185_0:
 .quad .Lx185_0_s
.Lx185_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n14_α:
 mov qword ptr [rbp + 6608], 6
 mov rax, qword ptr [rip + .Lx186_0]
 mov qword ptr [rbp + 6616], rax
 jmp xchain171_n15_α
.Lx186_0:
 .quad 46
# IR_LIT_STRING
 xchain171_n15_α:
 mov qword ptr [rbp + 6576], 1
 mov rax, qword ptr [rip + .Lx187_0]
 mov qword ptr [rbp + 6584], rax
 jmp xchain171_n16_α
.Lx187_0:
 .quad .Lx187_0_s
.Lx187_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n16_α:
 mov qword ptr [rbp + 6464], 6
 mov rax, qword ptr [rip + .Lx188_0]
 mov qword ptr [rbp + 6472], rax
 jmp xchain171_n17_α
.Lx188_0:
 .quad 83
# IR_LIT_STRING
 xchain171_n17_α:
 mov qword ptr [rbp + 6432], 1
 mov rax, qword ptr [rip + .Lx189_0]
 mov qword ptr [rbp + 6440], rax
 jmp xchain171_n18_α
.Lx189_0:
 .quad .Lx189_0_s
.Lx189_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n18_α:
 mov qword ptr [rbp + 6320], 6
 mov rax, qword ptr [rip + .Lx190_0]
 mov qword ptr [rbp + 6328], rax
 jmp xchain171_n19_α
.Lx190_0:
 .quad 65
# IR_LIT_STRING
 xchain171_n19_α:
 mov qword ptr [rbp + 6288], 1
 mov rax, qword ptr [rip + .Lx191_0]
 mov qword ptr [rbp + 6296], rax
 jmp xchain171_n20_α
.Lx191_0:
 .quad .Lx191_0_s
.Lx191_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n20_α:
 mov qword ptr [rbp + 6176], 6
 mov rax, qword ptr [rip + .Lx192_0]
 mov qword ptr [rbp + 6184], rax
 jmp xchain171_n21_α
.Lx192_0:
 .quad 2
# IR_LIT_STRING
 xchain171_n21_α:
 mov qword ptr [rbp + 6144], 1
 mov rax, qword ptr [rip + .Lx193_0]
 mov qword ptr [rbp + 6152], rax
 jmp xchain171_n22_α
.Lx193_0:
 .quad .Lx193_0_s
.Lx193_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n22_α:
 mov qword ptr [rbp + 6032], 6
 mov rax, qword ptr [rip + .Lx194_0]
 mov qword ptr [rbp + 6040], rax
 jmp xchain171_n23_α
.Lx194_0:
 .quad 32
# IR_LIT_STRING
 xchain171_n23_α:
 mov qword ptr [rbp + 6000], 1
 mov rax, qword ptr [rip + .Lx195_0]
 mov qword ptr [rbp + 6008], rax
 jmp xchain171_n24_α
.Lx195_0:
 .quad .Lx195_0_s
.Lx195_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n24_α:
 mov qword ptr [rbp + 5888], 6
 mov rax, qword ptr [rip + .Lx196_0]
 mov qword ptr [rbp + 5896], rax
 jmp xchain171_n25_α
.Lx196_0:
 .quad 53
# IR_LIT_STRING
 xchain171_n25_α:
 mov qword ptr [rbp + 5856], 1
 mov rax, qword ptr [rip + .Lx197_0]
 mov qword ptr [rbp + 5864], rax
 jmp xchain171_n26_α
.Lx197_0:
 .quad .Lx197_0_s
.Lx197_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n26_α:
 mov qword ptr [rbp + 5744], 6
 mov rax, qword ptr [rip + .Lx198_0]
 mov qword ptr [rbp + 5752], rax
 jmp xchain171_n27_α
.Lx198_0:
 .quad 28
# IR_LIT_STRING
 xchain171_n27_α:
 mov qword ptr [rbp + 5712], 1
 mov rax, qword ptr [rip + .Lx199_0]
 mov qword ptr [rbp + 5720], rax
 jmp xchain171_n28_α
.Lx199_0:
 .quad .Lx199_0_s
.Lx199_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n28_α:
 mov qword ptr [rbp + 5600], 6
 mov rax, qword ptr [rip + .Lx200_0]
 mov qword ptr [rbp + 5608], rax
 jmp xchain171_n29_α
.Lx200_0:
 .quad 85
# IR_LIT_STRING
 xchain171_n29_α:
 mov qword ptr [rbp + 5568], 1
 mov rax, qword ptr [rip + .Lx201_0]
 mov qword ptr [rbp + 5576], rax
 jmp xchain171_n30_α
.Lx201_0:
 .quad .Lx201_0_s
.Lx201_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n30_α:
 mov qword ptr [rbp + 5456], 6
 mov rax, qword ptr [rip + .Lx202_0]
 mov qword ptr [rbp + 5464], rax
 jmp xchain171_n31_α
.Lx202_0:
 .quad 99
# IR_LIT_STRING
 xchain171_n31_α:
 mov qword ptr [rbp + 5424], 1
 mov rax, qword ptr [rip + .Lx203_0]
 mov qword ptr [rbp + 5432], rax
 jmp xchain171_n32_α
.Lx203_0:
 .quad .Lx203_0_s
.Lx203_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n32_α:
 mov qword ptr [rbp + 5312], 6
 mov rax, qword ptr [rip + .Lx204_0]
 mov qword ptr [rbp + 5320], rax
 jmp xchain171_n33_α
.Lx204_0:
 .quad 47
# IR_LIT_STRING
 xchain171_n33_α:
 mov qword ptr [rbp + 5280], 1
 mov rax, qword ptr [rip + .Lx205_0]
 mov qword ptr [rbp + 5288], rax
 jmp xchain171_n34_α
.Lx205_0:
 .quad .Lx205_0_s
.Lx205_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n34_α:
 mov qword ptr [rbp + 5168], 6
 mov rax, qword ptr [rip + .Lx206_0]
 mov qword ptr [rbp + 5176], rax
 jmp xchain171_n35_α
.Lx206_0:
 .quad 28
# IR_LIT_STRING
 xchain171_n35_α:
 mov qword ptr [rbp + 5136], 1
 mov rax, qword ptr [rip + .Lx207_0]
 mov qword ptr [rbp + 5144], rax
 jmp xchain171_n36_α
.Lx207_0:
 .quad .Lx207_0_s
.Lx207_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n36_α:
 mov qword ptr [rbp + 5024], 6
 mov rax, qword ptr [rip + .Lx208_0]
 mov qword ptr [rbp + 5032], rax
 jmp xchain171_n37_α
.Lx208_0:
 .quad 82
# IR_LIT_STRING
 xchain171_n37_α:
 mov qword ptr [rbp + 4992], 1
 mov rax, qword ptr [rip + .Lx209_0]
 mov qword ptr [rbp + 5000], rax
 jmp xchain171_n38_α
.Lx209_0:
 .quad .Lx209_0_s
.Lx209_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n38_α:
 mov qword ptr [rbp + 4880], 6
 mov rax, qword ptr [rip + .Lx210_0]
 mov qword ptr [rbp + 4888], rax
 jmp xchain171_n39_α
.Lx210_0:
 .quad 6
# IR_LIT_STRING
 xchain171_n39_α:
 mov qword ptr [rbp + 4848], 1
 mov rax, qword ptr [rip + .Lx211_0]
 mov qword ptr [rbp + 4856], rax
 jmp xchain171_n40_α
.Lx211_0:
 .quad .Lx211_0_s
.Lx211_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n40_α:
 mov qword ptr [rbp + 4736], 6
 mov rax, qword ptr [rip + .Lx212_0]
 mov qword ptr [rbp + 4744], rax
 jmp xchain171_n41_α
.Lx212_0:
 .quad 11
# IR_LIT_STRING
 xchain171_n41_α:
 mov qword ptr [rbp + 4704], 1
 mov rax, qword ptr [rip + .Lx213_0]
 mov qword ptr [rbp + 4712], rax
 jmp xchain171_n42_α
.Lx213_0:
 .quad .Lx213_0_s
.Lx213_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n42_α:
 mov qword ptr [rbp + 4592], 6
 mov rax, qword ptr [rip + .Lx214_0]
 mov qword ptr [rbp + 4600], rax
 jmp xchain171_n43_α
.Lx214_0:
 .quad 55
# IR_LIT_STRING
 xchain171_n43_α:
 mov qword ptr [rbp + 4560], 1
 mov rax, qword ptr [rip + .Lx215_0]
 mov qword ptr [rbp + 4568], rax
 jmp xchain171_n44_α
.Lx215_0:
 .quad .Lx215_0_s
.Lx215_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n44_α:
 mov qword ptr [rbp + 4448], 6
 mov rax, qword ptr [rip + .Lx216_0]
 mov qword ptr [rbp + 4456], rax
 jmp xchain171_n45_α
.Lx216_0:
 .quad 29
# IR_LIT_STRING
 xchain171_n45_α:
 mov qword ptr [rbp + 4416], 1
 mov rax, qword ptr [rip + .Lx217_0]
 mov qword ptr [rbp + 4424], rax
 jmp xchain171_n46_α
.Lx217_0:
 .quad .Lx217_0_s
.Lx217_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n46_α:
 mov qword ptr [rbp + 4304], 6
 mov rax, qword ptr [rip + .Lx218_0]
 mov qword ptr [rbp + 4312], rax
 jmp xchain171_n47_α
.Lx218_0:
 .quad 39
# IR_LIT_STRING
 xchain171_n47_α:
 mov qword ptr [rbp + 4272], 1
 mov rax, qword ptr [rip + .Lx219_0]
 mov qword ptr [rbp + 4280], rax
 jmp xchain171_n48_α
.Lx219_0:
 .quad .Lx219_0_s
.Lx219_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n48_α:
 mov qword ptr [rbp + 4160], 6
 mov rax, qword ptr [rip + .Lx220_0]
 mov qword ptr [rbp + 4168], rax
 jmp xchain171_n49_α
.Lx220_0:
 .quad 81
# IR_LIT_STRING
 xchain171_n49_α:
 mov qword ptr [rbp + 4128], 1
 mov rax, qword ptr [rip + .Lx221_0]
 mov qword ptr [rbp + 4136], rax
 jmp xchain171_n50_α
.Lx221_0:
 .quad .Lx221_0_s
.Lx221_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n50_α:
 mov qword ptr [rbp + 4016], 6
 mov rax, qword ptr [rip + .Lx222_0]
 mov qword ptr [rbp + 4024], rax
 jmp xchain171_n51_α
.Lx222_0:
 .quad 90
# IR_LIT_STRING
 xchain171_n51_α:
 mov qword ptr [rbp + 3984], 1
 mov rax, qword ptr [rip + .Lx223_0]
 mov qword ptr [rbp + 3992], rax
 jmp xchain171_n52_α
.Lx223_0:
 .quad .Lx223_0_s
.Lx223_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n52_α:
 mov qword ptr [rbp + 3872], 6
 mov rax, qword ptr [rip + .Lx224_0]
 mov qword ptr [rbp + 3880], rax
 jmp xchain171_n53_α
.Lx224_0:
 .quad 37
# IR_LIT_STRING
 xchain171_n53_α:
 mov qword ptr [rbp + 3840], 1
 mov rax, qword ptr [rip + .Lx225_0]
 mov qword ptr [rbp + 3848], rax
 jmp xchain171_n54_α
.Lx225_0:
 .quad .Lx225_0_s
.Lx225_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n54_α:
 mov qword ptr [rbp + 3728], 6
 mov rax, qword ptr [rip + .Lx226_0]
 mov qword ptr [rbp + 3736], rax
 jmp xchain171_n55_α
.Lx226_0:
 .quad 10
# IR_LIT_STRING
 xchain171_n55_α:
 mov qword ptr [rbp + 3696], 1
 mov rax, qword ptr [rip + .Lx227_0]
 mov qword ptr [rbp + 3704], rax
 jmp xchain171_n56_α
.Lx227_0:
 .quad .Lx227_0_s
.Lx227_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n56_α:
 mov qword ptr [rbp + 3584], 6
 mov rax, qword ptr [rip + .Lx228_0]
 mov qword ptr [rbp + 3592], rax
 jmp xchain171_n57_α
.Lx228_0:
 .quad 0
# IR_LIT_STRING
 xchain171_n57_α:
 mov qword ptr [rbp + 3552], 1
 mov rax, qword ptr [rip + .Lx229_0]
 mov qword ptr [rbp + 3560], rax
 jmp xchain171_n58_α
.Lx229_0:
 .quad .Lx229_0_s
.Lx229_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n58_α:
 mov qword ptr [rbp + 3440], 6
 mov rax, qword ptr [rip + .Lx230_0]
 mov qword ptr [rbp + 3448], rax
 jmp xchain171_n59_α
.Lx230_0:
 .quad 66
# IR_LIT_STRING
 xchain171_n59_α:
 mov qword ptr [rbp + 3408], 1
 mov rax, qword ptr [rip + .Lx231_0]
 mov qword ptr [rbp + 3416], rax
 jmp xchain171_n60_α
.Lx231_0:
 .quad .Lx231_0_s
.Lx231_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n60_α:
 mov qword ptr [rbp + 3296], 6
 mov rax, qword ptr [rip + .Lx232_0]
 mov qword ptr [rbp + 3304], rax
 jmp xchain171_n61_α
.Lx232_0:
 .quad 51
# IR_LIT_STRING
 xchain171_n61_α:
 mov qword ptr [rbp + 3264], 1
 mov rax, qword ptr [rip + .Lx233_0]
 mov qword ptr [rbp + 3272], rax
 jmp xchain171_n62_α
.Lx233_0:
 .quad .Lx233_0_s
.Lx233_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n62_α:
 mov qword ptr [rbp + 3152], 6
 mov rax, qword ptr [rip + .Lx234_0]
 mov qword ptr [rbp + 3160], rax
 jmp xchain171_n63_α
.Lx234_0:
 .quad 7
# IR_LIT_STRING
 xchain171_n63_α:
 mov qword ptr [rbp + 3120], 1
 mov rax, qword ptr [rip + .Lx235_0]
 mov qword ptr [rbp + 3128], rax
 jmp xchain171_n64_α
.Lx235_0:
 .quad .Lx235_0_s
.Lx235_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n64_α:
 mov qword ptr [rbp + 3008], 6
 mov rax, qword ptr [rip + .Lx236_0]
 mov qword ptr [rbp + 3016], rax
 jmp xchain171_n65_α
.Lx236_0:
 .quad 21
# IR_LIT_STRING
 xchain171_n65_α:
 mov qword ptr [rbp + 2976], 1
 mov rax, qword ptr [rip + .Lx237_0]
 mov qword ptr [rbp + 2984], rax
 jmp xchain171_n66_α
.Lx237_0:
 .quad .Lx237_0_s
.Lx237_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n66_α:
 mov qword ptr [rbp + 2864], 6
 mov rax, qword ptr [rip + .Lx238_0]
 mov qword ptr [rbp + 2872], rax
 jmp xchain171_n67_α
.Lx238_0:
 .quad 85
# IR_LIT_STRING
 xchain171_n67_α:
 mov qword ptr [rbp + 2832], 1
 mov rax, qword ptr [rip + .Lx239_0]
 mov qword ptr [rbp + 2840], rax
 jmp xchain171_n68_α
.Lx239_0:
 .quad .Lx239_0_s
.Lx239_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n68_α:
 mov qword ptr [rbp + 2720], 6
 mov rax, qword ptr [rip + .Lx240_0]
 mov qword ptr [rbp + 2728], rax
 jmp xchain171_n69_α
.Lx240_0:
 .quad 27
# IR_LIT_STRING
 xchain171_n69_α:
 mov qword ptr [rbp + 2688], 1
 mov rax, qword ptr [rip + .Lx241_0]
 mov qword ptr [rbp + 2696], rax
 jmp xchain171_n70_α
.Lx241_0:
 .quad .Lx241_0_s
.Lx241_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n70_α:
 mov qword ptr [rbp + 2576], 6
 mov rax, qword ptr [rip + .Lx242_0]
 mov qword ptr [rbp + 2584], rax
 jmp xchain171_n71_α
.Lx242_0:
 .quad 31
# IR_LIT_STRING
 xchain171_n71_α:
 mov qword ptr [rbp + 2544], 1
 mov rax, qword ptr [rip + .Lx243_0]
 mov qword ptr [rbp + 2552], rax
 jmp xchain171_n72_α
.Lx243_0:
 .quad .Lx243_0_s
.Lx243_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n72_α:
 mov qword ptr [rbp + 2432], 6
 mov rax, qword ptr [rip + .Lx244_0]
 mov qword ptr [rbp + 2440], rax
 jmp xchain171_n73_α
.Lx244_0:
 .quad 63
# IR_LIT_STRING
 xchain171_n73_α:
 mov qword ptr [rbp + 2400], 1
 mov rax, qword ptr [rip + .Lx245_0]
 mov qword ptr [rbp + 2408], rax
 jmp xchain171_n74_α
.Lx245_0:
 .quad .Lx245_0_s
.Lx245_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n74_α:
 mov qword ptr [rbp + 2288], 6
 mov rax, qword ptr [rip + .Lx246_0]
 mov qword ptr [rbp + 2296], rax
 jmp xchain171_n75_α
.Lx246_0:
 .quad 75
# IR_LIT_STRING
 xchain171_n75_α:
 mov qword ptr [rbp + 2256], 1
 mov rax, qword ptr [rip + .Lx247_0]
 mov qword ptr [rbp + 2264], rax
 jmp xchain171_n76_α
.Lx247_0:
 .quad .Lx247_0_s
.Lx247_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n76_α:
 mov qword ptr [rbp + 2144], 6
 mov rax, qword ptr [rip + .Lx248_0]
 mov qword ptr [rbp + 2152], rax
 jmp xchain171_n77_α
.Lx248_0:
 .quad 4
# IR_LIT_STRING
 xchain171_n77_α:
 mov qword ptr [rbp + 2112], 1
 mov rax, qword ptr [rip + .Lx249_0]
 mov qword ptr [rbp + 2120], rax
 jmp xchain171_n78_α
.Lx249_0:
 .quad .Lx249_0_s
.Lx249_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n78_α:
 mov qword ptr [rbp + 2000], 6
 mov rax, qword ptr [rip + .Lx250_0]
 mov qword ptr [rbp + 2008], rax
 jmp xchain171_n79_α
.Lx250_0:
 .quad 95
# IR_LIT_STRING
 xchain171_n79_α:
 mov qword ptr [rbp + 1968], 1
 mov rax, qword ptr [rip + .Lx251_0]
 mov qword ptr [rbp + 1976], rax
 jmp xchain171_n80_α
.Lx251_0:
 .quad .Lx251_0_s
.Lx251_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n80_α:
 mov qword ptr [rbp + 1856], 6
 mov rax, qword ptr [rip + .Lx252_0]
 mov qword ptr [rbp + 1864], rax
 jmp xchain171_n81_α
.Lx252_0:
 .quad 99
# IR_LIT_STRING
 xchain171_n81_α:
 mov qword ptr [rbp + 1824], 1
 mov rax, qword ptr [rip + .Lx253_0]
 mov qword ptr [rbp + 1832], rax
 jmp xchain171_n82_α
.Lx253_0:
 .quad .Lx253_0_s
.Lx253_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n82_α:
 mov qword ptr [rbp + 1712], 6
 mov rax, qword ptr [rip + .Lx254_0]
 mov qword ptr [rbp + 1720], rax
 jmp xchain171_n83_α
.Lx254_0:
 .quad 11
# IR_LIT_STRING
 xchain171_n83_α:
 mov qword ptr [rbp + 1680], 1
 mov rax, qword ptr [rip + .Lx255_0]
 mov qword ptr [rbp + 1688], rax
 jmp xchain171_n84_α
.Lx255_0:
 .quad .Lx255_0_s
.Lx255_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n84_α:
 mov qword ptr [rbp + 1568], 6
 mov rax, qword ptr [rip + .Lx256_0]
 mov qword ptr [rbp + 1576], rax
 jmp xchain171_n85_α
.Lx256_0:
 .quad 28
# IR_LIT_STRING
 xchain171_n85_α:
 mov qword ptr [rbp + 1536], 1
 mov rax, qword ptr [rip + .Lx257_0]
 mov qword ptr [rbp + 1544], rax
 jmp xchain171_n86_α
.Lx257_0:
 .quad .Lx257_0_s
.Lx257_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n86_α:
 mov qword ptr [rbp + 1424], 6
 mov rax, qword ptr [rip + .Lx258_0]
 mov qword ptr [rbp + 1432], rax
 jmp xchain171_n87_α
.Lx258_0:
 .quad 61
# IR_LIT_STRING
 xchain171_n87_α:
 mov qword ptr [rbp + 1392], 1
 mov rax, qword ptr [rip + .Lx259_0]
 mov qword ptr [rbp + 1400], rax
 jmp xchain171_n88_α
.Lx259_0:
 .quad .Lx259_0_s
.Lx259_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n88_α:
 mov qword ptr [rbp + 1280], 6
 mov rax, qword ptr [rip + .Lx260_0]
 mov qword ptr [rbp + 1288], rax
 jmp xchain171_n89_α
.Lx260_0:
 .quad 74
# IR_LIT_STRING
 xchain171_n89_α:
 mov qword ptr [rbp + 1248], 1
 mov rax, qword ptr [rip + .Lx261_0]
 mov qword ptr [rbp + 1256], rax
 jmp xchain171_n90_α
.Lx261_0:
 .quad .Lx261_0_s
.Lx261_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n90_α:
 mov qword ptr [rbp + 1136], 6
 mov rax, qword ptr [rip + .Lx262_0]
 mov qword ptr [rbp + 1144], rax
 jmp xchain171_n91_α
.Lx262_0:
 .quad 18
# IR_LIT_STRING
 xchain171_n91_α:
 mov qword ptr [rbp + 1104], 1
 mov rax, qword ptr [rip + .Lx263_0]
 mov qword ptr [rbp + 1112], rax
 jmp xchain171_n92_α
.Lx263_0:
 .quad .Lx263_0_s
.Lx263_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n92_α:
 mov qword ptr [rbp + 992], 6
 mov rax, qword ptr [rip + .Lx264_0]
 mov qword ptr [rbp + 1000], rax
 jmp xchain171_n93_α
.Lx264_0:
 .quad 92
# IR_LIT_STRING
 xchain171_n93_α:
 mov qword ptr [rbp + 960], 1
 mov rax, qword ptr [rip + .Lx265_0]
 mov qword ptr [rbp + 968], rax
 jmp xchain171_n94_α
.Lx265_0:
 .quad .Lx265_0_s
.Lx265_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n94_α:
 mov qword ptr [rbp + 848], 6
 mov rax, qword ptr [rip + .Lx266_0]
 mov qword ptr [rbp + 856], rax
 jmp xchain171_n95_α
.Lx266_0:
 .quad 40
# IR_LIT_STRING
 xchain171_n95_α:
 mov qword ptr [rbp + 816], 1
 mov rax, qword ptr [rip + .Lx267_0]
 mov qword ptr [rbp + 824], rax
 jmp xchain171_n96_α
.Lx267_0:
 .quad .Lx267_0_s
.Lx267_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n96_α:
 mov qword ptr [rbp + 704], 6
 mov rax, qword ptr [rip + .Lx268_0]
 mov qword ptr [rbp + 712], rax
 jmp xchain171_n97_α
.Lx268_0:
 .quad 53
# IR_LIT_STRING
 xchain171_n97_α:
 mov qword ptr [rbp + 672], 1
 mov rax, qword ptr [rip + .Lx269_0]
 mov qword ptr [rbp + 680], rax
 jmp xchain171_n98_α
.Lx269_0:
 .quad .Lx269_0_s
.Lx269_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n98_α:
 mov qword ptr [rbp + 560], 6
 mov rax, qword ptr [rip + .Lx270_0]
 mov qword ptr [rbp + 568], rax
 jmp xchain171_n99_α
.Lx270_0:
 .quad 59
# IR_LIT_STRING
 xchain171_n99_α:
 mov qword ptr [rbp + 528], 1
 mov rax, qword ptr [rip + .Lx271_0]
 mov qword ptr [rbp + 536], rax
 jmp xchain171_n100_α
.Lx271_0:
 .quad .Lx271_0_s
.Lx271_0_s:
 .string "."
# IR_LIT_INTEGER
 xchain171_n100_α:
 mov qword ptr [rbp + 416], 6
 mov rax, qword ptr [rip + .Lx272_0]
 mov qword ptr [rbp + 424], rax
 jmp xchain171_n101_α
.Lx272_0:
 .quad 8
# IR_LIT_STRING
 xchain171_n101_α:
 mov qword ptr [rbp + 384], 1
 mov rax, qword ptr [rip + .Lx273_0]
 mov qword ptr [rbp + 392], rax
 jmp xchain171_n102_α
.Lx273_0:
 .quad .Lx273_0_s
.Lx273_0_s:
 .string "[]"
 xchain171_n102_α:
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
 jmp xchain171_n103_α
 xchain171_n102_β:
 jmp main_ω
 xchain171_n103_α:
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
 jmp xchain171_n104_α
 xchain171_n103_β:
 jmp main_ω
 xchain171_n104_α:
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
 jmp xchain171_n105_α
 xchain171_n104_β:
 jmp main_ω
 xchain171_n105_α:
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
 jmp xchain171_n106_α
 xchain171_n105_β:
 jmp main_ω
 xchain171_n106_α:
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
 jmp xchain171_n107_α
 xchain171_n106_β:
 jmp main_ω
 xchain171_n107_α:
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
 jmp xchain171_n108_α
 xchain171_n107_β:
 jmp main_ω
 xchain171_n108_α:
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
 jmp xchain171_n109_α
 xchain171_n108_β:
 jmp main_ω
 xchain171_n109_α:
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
 jmp xchain171_n110_α
 xchain171_n109_β:
 jmp main_ω
 xchain171_n110_α:
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
 jmp xchain171_n111_α
 xchain171_n110_β:
 jmp main_ω
 xchain171_n111_α:
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
 jmp xchain171_n112_α
 xchain171_n111_β:
 jmp main_ω
 xchain171_n112_α:
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
 jmp xchain171_n113_α
 xchain171_n112_β:
 jmp main_ω
 xchain171_n113_α:
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
 jmp xchain171_n114_α
 xchain171_n113_β:
 jmp main_ω
 xchain171_n114_α:
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
 jmp xchain171_n115_α
 xchain171_n114_β:
 jmp main_ω
 xchain171_n115_α:
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
 jmp xchain171_n116_α
 xchain171_n115_β:
 jmp main_ω
 xchain171_n116_α:
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
 jmp xchain171_n117_α
 xchain171_n116_β:
 jmp main_ω
 xchain171_n117_α:
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
 jmp xchain171_n118_α
 xchain171_n117_β:
 jmp main_ω
 xchain171_n118_α:
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
 jmp xchain171_n119_α
 xchain171_n118_β:
 jmp main_ω
 xchain171_n119_α:
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
 jmp xchain171_n120_α
 xchain171_n119_β:
 jmp main_ω
 xchain171_n120_α:
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
 jmp xchain171_n121_α
 xchain171_n120_β:
 jmp main_ω
 xchain171_n121_α:
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
 jmp xchain171_n122_α
 xchain171_n121_β:
 jmp main_ω
 xchain171_n122_α:
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
 jmp xchain171_n123_α
 xchain171_n122_β:
 jmp main_ω
 xchain171_n123_α:
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
 jmp xchain171_n124_α
 xchain171_n123_β:
 jmp main_ω
 xchain171_n124_α:
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
 jmp xchain171_n125_α
 xchain171_n124_β:
 jmp main_ω
 xchain171_n125_α:
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
 jmp xchain171_n126_α
 xchain171_n125_β:
 jmp main_ω
 xchain171_n126_α:
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
 jmp xchain171_n127_α
 xchain171_n126_β:
 jmp main_ω
 xchain171_n127_α:
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
 jmp xchain171_n128_α
 xchain171_n127_β:
 jmp main_ω
 xchain171_n128_α:
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
 jmp xchain171_n129_α
 xchain171_n128_β:
 jmp main_ω
 xchain171_n129_α:
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
 jmp xchain171_n130_α
 xchain171_n129_β:
 jmp main_ω
 xchain171_n130_α:
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
 jmp xchain171_n131_α
 xchain171_n130_β:
 jmp main_ω
 xchain171_n131_α:
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
 jmp xchain171_n132_α
 xchain171_n131_β:
 jmp main_ω
 xchain171_n132_α:
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
 jmp xchain171_n133_α
 xchain171_n132_β:
 jmp main_ω
 xchain171_n133_α:
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
 jmp xchain171_n134_α
 xchain171_n133_β:
 jmp main_ω
 xchain171_n134_α:
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
 jmp xchain171_n135_α
 xchain171_n134_β:
 jmp main_ω
 xchain171_n135_α:
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
 jmp xchain171_n136_α
 xchain171_n135_β:
 jmp main_ω
 xchain171_n136_α:
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
 jmp xchain171_n137_α
 xchain171_n136_β:
 jmp main_ω
 xchain171_n137_α:
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
 jmp xchain171_n138_α
 xchain171_n137_β:
 jmp main_ω
 xchain171_n138_α:
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
 jmp xchain171_n139_α
 xchain171_n138_β:
 jmp main_ω
 xchain171_n139_α:
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
 jmp xchain171_n140_α
 xchain171_n139_β:
 jmp main_ω
 xchain171_n140_α:
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
 jmp xchain171_n141_α
 xchain171_n140_β:
 jmp main_ω
 xchain171_n141_α:
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
 jmp xchain171_n142_α
 xchain171_n141_β:
 jmp main_ω
 xchain171_n142_α:
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
 jmp xchain171_n143_α
 xchain171_n142_β:
 jmp main_ω
 xchain171_n143_α:
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
 jmp xchain171_n144_α
 xchain171_n143_β:
 jmp main_ω
 xchain171_n144_α:
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
 jmp xchain171_n145_α
 xchain171_n144_β:
 jmp main_ω
 xchain171_n145_α:
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
 jmp xchain171_n146_α
 xchain171_n145_β:
 jmp main_ω
 xchain171_n146_α:
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
 jmp xchain171_n147_α
 xchain171_n146_β:
 jmp main_ω
 xchain171_n147_α:
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
 jmp xchain171_n148_α
 xchain171_n147_β:
 jmp main_ω
 xchain171_n148_α:
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
 jmp xchain171_n149_α
 xchain171_n148_β:
 jmp main_ω
 xchain171_n149_α:
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
 jmp xchain171_n150_α
 xchain171_n149_β:
 jmp main_ω
 xchain171_n150_α:
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
 jmp xchain171_n151_α
 xchain171_n150_β:
 jmp main_ω
 xchain171_n151_α:
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
 je xchain171_n153_α
 jmp xchain171_n152_α
 xchain171_n151_β:
 jmp xchain171_n153_α
# IR_VAR_REF
 xchain171_n152_α:
 mov rax, 4294967305
 lea rdx, [rbp + 7696]
 mov qword ptr [rbp + 7616], rax
 mov qword ptr [rbp + 7624], rdx
 jmp xchain171_n154_α
 xchain171_n153_α:
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
 xchain171_n153_β:
 jmp main_ω
# IR_LIT_STRING
 xchain171_n154_α:
 mov qword ptr [rbp + 7648], 1
 mov rax, qword ptr [rip + .Lx327_0]
 mov qword ptr [rbp + 7656], rax
 jmp xchain171_n155_α
.Lx327_0:
 .quad .Lx327_0_s
.Lx327_0_s:
 .string "[]"
 xchain171_n155_α:
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
 mov rdi, qword ptr [rip + .Lx329_0]
 mov esi, 3
 call rt_proc_call_open@PLT
 test rax, rax
 je .Lx329_1
 call rt_proc_open_fn@PLT
 lea rcx, [rip + .Lx329_3]
 lea rdx, [rip + .Lx329_4]
 jmp rax
.Lx329_3:
 mov qword ptr [rbp + 360], rsp
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx329_5
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_γ@PLT
 jmp .Lx329_2
.Lx329_5:
 call rt_gen_spine_pass_γ@PLT
 jmp .Lx329_2
.Lx329_4:
 mov rax, qword ptr [rbp + 352]
 test rax, rax
 jne .Lx329_6
 mov qword ptr [rbp + 352], 1
 call rt_proc_call_epilogue_ω@PLT
 jmp .Lx329_2
.Lx329_6:
 call rt_gen_spine_pass_ω@PLT
 jmp .Lx329_2
.Lx329_1:
 call rt_faildescr@PLT
.Lx329_2:
 mov qword ptr [rbp + 288], rax
 mov qword ptr [rbp + 296], rdx
 cmp eax, 99
 je xchain171_n153_α
 jmp xchain171_n156_α
 xchain171_n155_β:
 call rt_gen_spine_resume_enter@PLT
 mov rsp, qword ptr [rbp + 360]
 jmp qword ptr [rsp]
.Lx329_0:
 .quad .Lx329_0_s
.Lx329_0_s:
 .string "qsort/3"
# IR_VAR
 xchain171_n156_α:
 mov rax, qword ptr [rbp + 7696]
 mov qword ptr [rbp + 256], rax
 mov rax, qword ptr [rbp + 7704]
 mov qword ptr [rbp + 264], rax
 jmp xchain171_n157_α
 xchain171_n157_α:
# BOX IR_CALL $write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+256] -> [zr+224]
 mov rax, qword ptr [rbp + 256]
 mov qword ptr [rbp + 224], rax
 mov rax, qword ptr [rbp + 264]
 mov qword ptr [rbp + 232], rax
  .section .rodata
  .Lrkfn333: .string "$write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn333]
 lea rsi, [rbp + 224]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 208], rax
 mov qword ptr [rbp + 216], rdx
 cmp eax, 99
 je xchain171_n155_β
 jmp xchain171_n158_α
 xchain171_n157_β:
 jmp xchain171_n155_β
# IR_LIT_STRING
 xchain171_n158_α:
 mov qword ptr [rbp + 176], 1
 mov rax, qword ptr [rip + .Lx334_0]
 mov qword ptr [rbp + 184], rax
 jmp xchain171_n159_α
.Lx334_0:
 .quad .Lx334_0_s
.Lx334_0_s:
 .string ""
 xchain171_n159_α:
# BOX IR_CALL write(...) -> rt_call_arr [operand-marshal, FAIL->ω]
# marshal arg0 = producer-box slot [zr+176] -> [zr+144]
 mov rax, qword ptr [rbp + 176]
 mov qword ptr [rbp + 144], rax
 mov rax, qword ptr [rbp + 184]
 mov qword ptr [rbp + 152], rax
  .section .rodata
  .Lrkfn336: .string "write"
  .section .text
  .intel_syntax noprefix
 lea rdi, [rip + .Lrkfn336]
 lea rsi, [rbp + 144]
 mov edx, 1
 call rt_call_arr@PLT
 mov qword ptr [rbp + 128], rax
 mov qword ptr [rbp + 136], rdx
 cmp eax, 99
 je xchain171_n155_β
 jmp xchain171_n160_α
 xchain171_n159_β:
 jmp xchain171_n155_β
# IR_MOVE_LABEL
 xchain171_n160_α:
 lea rax, [rip + xchain171_n155_β]
 mov qword ptr [rbp + 32], rax
 jmp main_γ
# IR_INDIRECT_GOTO alt-resume: jmp *t
 xchain171_n161_α:
 jmp qword ptr [rbp + 32]
 xchain171_n161_β:
 jmp main_ω
main_β:
jmp xchain171_n161_α
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
