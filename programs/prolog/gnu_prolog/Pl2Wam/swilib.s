                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_delete_flags$2F2_α
proc_delete_flags$2F2_α:
                        .global          proc_delete_flags$2F2_α
                        .global          proc_delete_flags$2F2_β
                        .global          proc_delete_flags$2F2_γ
                        .global          proc_delete_flags$2F2_ω
                        sub              rsp, 2768
                        mov              [rsp + 2744], rcx
                        mov              [rsp + 2752], rdx
                        mov              [rsp + 2760], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 2672
                        mov              edx, 2736
                        call             rt_jmp_frame_lexprep2@PLT
proc_delete_flags$2F2_α_body:
                        lea              rax, [rip + n20_suspend_β]
                        mov              qword ptr [rbp + 2672], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx89_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx89_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx89_101
.Lx89_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx89_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_delete_flags$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_delete_flags$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 2640], 6
                        mov              rax, qword ptr [rip + .Lx92_0]
                        mov              qword ptr [rbp + 2648], rax
                                                                                        jmp   n3_lit_string_α
.Lx92_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_string_α:
                        mov              qword ptr [rbp + 2656], 1
                        mov              rax, qword ptr [rip + .Lx93_0]
                        mov              qword ptr [rbp + 2664], rax
                                                                                        jmp   n4_op11_α
.Lx93_0:
                        .quad            .Lx93_0_s
.Lx93_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2616], rax
                        lea              rdi, [rbp + 2576]
                        lea              r8, [rbp + 2576]
.Lx94_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx94_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx94_111
                        cmp              esi, 1
                                                                                        jne   .Lx94_112
                        mov              r8, rax
                                                                                        jmp   .Lx94_110
.Lx94_112:
                        cmp              esi, 2
                                                                                        jne   .Lx94_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx94_111
                        mov              r8, rax
                                                                                        jmp   .Lx94_110
.Lx94_113:
                        cmp              eax, 13
                                                                                        jne   .Lx94_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx94_111
                        cmp              rax, r8
                                                                                        je    .Lx94_111
                        mov              r8, rax
                                                                                        jmp   .Lx94_110
.Lx94_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx94_114
                        cmp              eax, 99
                                                                                        je    .Lx94_114
                        cmp              eax, 13
                                                                                        jne   .Lx94_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx94_114
                                                                                        jmp   .Lx94_118
.Lx94_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx94_115
                        cmp              eax, 6
                                                                                        je    .Lx94_114
                        cmp              eax, 1
                                                                                        jne   .Lx94_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx94_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx94_114
                                                                                        jmp   .Lx94_116
.Lx94_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx94_117
.Lx94_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx94_117
.Lx94_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx94_117:
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              eax, 99
                                                                                        je    n6_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_op11_β:
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                                                                                        jmp   n7_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_string_α:
                        mov              qword ptr [rbp + 2544], 1
                        mov              rax, qword ptr [rip + .Lx99_0]
                        mov              qword ptr [rbp + 2552], rax
                                                                                        jmp   n9_op11_α
.Lx99_0:
                        .quad            .Lx99_0_s
.Lx99_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 2320], 6
                        mov              rax, qword ptr [rip + .Lx100_0]
                        mov              qword ptr [rbp + 2328], rax
                                                                                        jmp   n10_lit_integer_α
.Lx100_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2496]
                        mov              rsi, qword ptr [rip + .Lx101_2]
                                                                                        jmp   .Lx101_3
.Lx101_2:
                        .quad            .Lx101_2_s
.Lx101_2_s:
                        .string          "[]"
.Lx101_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n11_var_ref_α
n9_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 2336], 6
                        mov              rax, qword ptr [rip + .Lx102_0]
                        mov              qword ptr [rbp + 2344], rax
                                                                                        jmp   n13_op11_α
.Lx102_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                                                                                        jmp   n14_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 2376], rax
                        lea              rdi, [rbp + 2368]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              eax, 99
                                                                                        je    proc_delete_flags$2F2_ω
                                                                                        jmp   n6_var_ref_α
n12_op11_β:
                                                                                        jmp   proc_delete_flags$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 2304]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2312]
                        mov              qword ptr [rbp + 2264], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2256]
                        lea              r8, [rbp + 2256]
.Lx106_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx106_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx106_111
                        cmp              esi, 1
                                                                                        jne   .Lx106_112
                        mov              r8, rax
                                                                                        jmp   .Lx106_110
.Lx106_112:
                        cmp              esi, 2
                                                                                        jne   .Lx106_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx106_111
                        mov              r8, rax
                                                                                        jmp   .Lx106_110
.Lx106_113:
                        cmp              eax, 13
                                                                                        jne   .Lx106_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx106_111
                        cmp              rax, r8
                                                                                        je    .Lx106_111
                        mov              r8, rax
                                                                                        jmp   .Lx106_110
.Lx106_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx106_114
                        cmp              eax, 99
                                                                                        je    .Lx106_114
                        cmp              eax, 13
                                                                                        jne   .Lx106_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx106_114
                                                                                        jmp   .Lx106_118
.Lx106_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx106_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx106_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx106_115
                                                                                        jmp   .Lx106_114
.Lx106_119:
                        cmp              eax, 6
                                                                                        jne   .Lx106_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx106_114
                                                                                        jmp   .Lx106_115
.Lx106_120:
                        cmp              eax, 1
                                                                                        jne   .Lx106_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx106_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx106_114
                                                                                        jmp   .Lx106_115
.Lx106_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx106_117
.Lx106_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx106_117
.Lx106_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx106_117:
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              eax, 99
                                                                                        je    n16_var_ref_α
                                                                                        jmp   n15_var_ref_α
n13_op11_β:
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_string_α:
                        mov              qword ptr [rbp + 2464], 1
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 2472], rax
                                                                                        jmp   n17_op11_α
.Lx107_0:
                        .quad            .Lx107_0_s
.Lx107_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                                                                                        jmp   n18_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                                                                                        jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2424], rax
                        lea              rdi, [rbp + 2416]
                        mov              rsi, qword ptr [rip + .Lx112_2]
                                                                                        jmp   .Lx112_3
.Lx112_2:
                        .quad            .Lx112_2_s
.Lx112_2_s:
                        .string          "[]"
.Lx112_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 2400], rax
                        mov              qword ptr [rbp + 2408], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n20_suspend_α
n17_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_string_α:
                        mov              qword ptr [rbp + 2224], 1
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 2232], rax
                                                                                        jmp   n21_lit_string_α
.Lx113_0:
                        .quad            .Lx113_0_s
.Lx113_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 1680], 6
                        mov              rax, qword ptr [rip + .Lx114_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n22_lit_integer_α
.Lx114_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n20_suspend_α:
                        lea              rax, [rip + n20_suspend_β]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_delete_flags$2F2_γ
n20_suspend_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_string_α:
                        mov              qword ptr [rbp + 2128], 1
                        mov              rax, qword ptr [rip + .Lx117_0]
                        mov              qword ptr [rbp + 2136], rax
                                                                                        jmp   n23_lit_string_α
.Lx117_0:
                        .quad            .Lx117_0_s
.Lx117_0_s:
                        .string          "-x"
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 1696], 6
                        mov              rax, qword ptr [rip + .Lx118_0]
                        mov              qword ptr [rbp + 1704], rax
                                                                                        jmp   n24_op11_α
.Lx118_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n23_lit_string_α:
                        mov              qword ptr [rbp + 2112], 1
                        mov              rax, qword ptr [rip + .Lx119_0]
                        mov              qword ptr [rbp + 2120], rax
                                                                                        jmp   n25_var_ref_α
.Lx119_0:
                        .quad            .Lx119_0_s
.Lx119_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1616]
                        lea              r8, [rbp + 1616]
.Lx120_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx120_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx120_111
                        cmp              esi, 1
                                                                                        jne   .Lx120_112
                        mov              r8, rax
                                                                                        jmp   .Lx120_110
.Lx120_112:
                        cmp              esi, 2
                                                                                        jne   .Lx120_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx120_111
                        mov              r8, rax
                                                                                        jmp   .Lx120_110
.Lx120_113:
                        cmp              eax, 13
                                                                                        jne   .Lx120_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx120_111
                        cmp              rax, r8
                                                                                        je    .Lx120_111
                        mov              r8, rax
                                                                                        jmp   .Lx120_110
.Lx120_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx120_114
                        cmp              eax, 99
                                                                                        je    .Lx120_114
                        cmp              eax, 13
                                                                                        jne   .Lx120_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx120_114
                                                                                        jmp   .Lx120_118
.Lx120_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx120_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx120_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx120_115
                                                                                        jmp   .Lx120_114
.Lx120_119:
                        cmp              eax, 6
                                                                                        jne   .Lx120_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx120_114
                                                                                        jmp   .Lx120_115
.Lx120_120:
                        cmp              eax, 1
                                                                                        jne   .Lx120_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx120_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx120_114
                                                                                        jmp   .Lx120_115
.Lx120_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx120_117
.Lx120_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx120_117
.Lx120_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx120_117:
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              eax, 99
                                                                                        je    n27_var_ref_α
                                                                                        jmp   n26_var_ref_α
n24_op11_β:
                                                                                        jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2720]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                                                                                        jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                                                                                        jmp   n29_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n30_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2704]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx
                                                                                        jmp   n31_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_lit_string_α:
                        mov              qword ptr [rbp + 1584], 1
                        mov              rax, qword ptr [rip + .Lx129_0]
                        mov              qword ptr [rbp + 1592], rax
                                                                                        jmp   n32_lit_string_α
.Lx129_0:
                        .quad            .Lx129_0_s
.Lx129_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:
                        mov              qword ptr [rbp + 1040], 6
                        mov              rax, qword ptr [rip + .Lx130_0]
                        mov              qword ptr [rbp + 1048], rax
                                                                                        jmp   n33_lit_integer_α
.Lx130_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n31_op11_α:
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2048]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              eax, 99
                                                                                        je    proc_delete_flags$2F2_ω
                                                                                        jmp   n34_op11_α
n31_op11_β:
                                                                                        jmp   proc_delete_flags$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n32_lit_string_α:
                        mov              qword ptr [rbp + 1488], 1
                        mov              rax, qword ptr [rip + .Lx132_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n35_lit_string_α
.Lx132_0:
                        .quad            .Lx132_0_s
.Lx132_0_s:
                        .string          "-t"
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rbp + 1056], 6
                        mov              rax, qword ptr [rip + .Lx133_0]
                        mov              qword ptr [rbp + 1064], rax
                                                                                        jmp   n36_op11_α
.Lx133_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2160]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 2144], rax
                        mov              qword ptr [rbp + 2152], rdx
                        cmp              eax, 99
                                                                                        je    n38_op11_α
                                                                                        jmp   n37_op11_α
n34_op11_β:
                                                                                        jmp   n38_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_lit_string_α:
                        mov              qword ptr [rbp + 1472], 1
                        mov              rax, qword ptr [rip + .Lx135_0]
                        mov              qword ptr [rbp + 1480], rax
                                                                                        jmp   n39_var_ref_α
.Lx135_0:
                        .quad            .Lx135_0_s
.Lx135_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n36_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 976]
                        lea              r8, [rbp + 976]
.Lx136_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx136_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx136_111
                        cmp              esi, 1
                                                                                        jne   .Lx136_112
                        mov              r8, rax
                                                                                        jmp   .Lx136_110
.Lx136_112:
                        cmp              esi, 2
                                                                                        jne   .Lx136_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx136_111
                        mov              r8, rax
                                                                                        jmp   .Lx136_110
.Lx136_113:
                        cmp              eax, 13
                                                                                        jne   .Lx136_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx136_111
                        cmp              rax, r8
                                                                                        je    .Lx136_111
                        mov              r8, rax
                                                                                        jmp   .Lx136_110
.Lx136_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx136_114
                        cmp              eax, 99
                                                                                        je    .Lx136_114
                        cmp              eax, 13
                                                                                        jne   .Lx136_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx136_114
                                                                                        jmp   .Lx136_118
.Lx136_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx136_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx136_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx136_115
                                                                                        jmp   .Lx136_114
.Lx136_119:
                        cmp              eax, 6
                                                                                        jne   .Lx136_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx136_114
                                                                                        jmp   .Lx136_115
.Lx136_120:
                        cmp              eax, 1
                                                                                        jne   .Lx136_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx136_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx136_114
                                                                                        jmp   .Lx136_115
.Lx136_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx136_117
.Lx136_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx136_117
.Lx136_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx136_117:
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              eax, 99
                                                                                        je    n41_var_ref_α
                                                                                        jmp   n40_var_ref_α
n36_op11_β:
                                                                                        jmp   n41_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n37_op11_α:
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 1976], rax
                        lea              rdi, [rbp + 1952]
                        lea              r8, [rbp + 1952]
.Lx137_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx137_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_41
                        cmp              esi, 1
                                                                                        jne   .Lx137_55
                        mov              r8, rax
                                                                                        jmp   .Lx137_40
.Lx137_55:
                        cmp              esi, 2
                                                                                        jne   .Lx137_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx137_41
                        mov              r8, rax
                                                                                        jmp   .Lx137_40
.Lx137_56:
                        cmp              eax, 13
                                                                                        jne   .Lx137_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_41
                        cmp              rax, r8
                                                                                        je    .Lx137_41
                        mov              r8, rax
                                                                                        jmp   .Lx137_40
.Lx137_41:
                        lea              r9, [rbp + 1968]
.Lx137_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx137_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_43
                        cmp              esi, 1
                                                                                        jne   .Lx137_57
                        mov              r9, rax
                                                                                        jmp   .Lx137_42
.Lx137_57:
                        cmp              esi, 2
                                                                                        jne   .Lx137_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx137_43
                        mov              r9, rax
                                                                                        jmp   .Lx137_42
.Lx137_58:
                        cmp              eax, 13
                                                                                        jne   .Lx137_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx137_43
                        cmp              rax, r9
                                                                                        je    .Lx137_43
                        mov              r9, rax
                                                                                        jmp   .Lx137_42
.Lx137_43:
                        cmp              r8, r9
                                                                                        je    .Lx137_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx137_44
                        cmp              eax, 99
                                                                                        je    .Lx137_44
                        cmp              eax, 13
                                                                                        jne   .Lx137_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx137_44
                                                                                        jmp   .Lx137_45
.Lx137_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx137_53
                        cmp              eax, 99
                                                                                        je    .Lx137_53
                        cmp              eax, 13
                                                                                        jne   .Lx137_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx137_53
                                                                                        jmp   .Lx137_46
.Lx137_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx137_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx137_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx137_51
.Lx137_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx137_47
                        cmp              eax, 99
                                                                                        je    .Lx137_47
                        cmp              eax, 13
                                                                                        jne   .Lx137_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx137_47
                                                                                        jmp   .Lx137_48
.Lx137_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx137_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx137_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx137_51
.Lx137_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx137_49
                        cmp              edx, 14
                                                                                        je    .Lx137_53
                                                                                        jmp   .Lx137_52
.Lx137_49:
                        cmp              edx, 14
                                                                                        je    .Lx137_52
                        cmp              ecx, 7
                                                                                        je    .Lx137_53
                        cmp              edx, 7
                                                                                        je    .Lx137_53
                        cmp              ecx, 6
                                                                                        jne   .Lx137_50
                        cmp              edx, 6
                                                                                        jne   .Lx137_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx137_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx137_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx137_51
                                                                                        jmp   .Lx137_52
.Lx137_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx137_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx137_53
.Lx137_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx137_54
.Lx137_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx137_54
.Lx137_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx137_54:
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              eax, 99
                                                                                        je    n38_op11_α
                                                                                        jmp   n42_var_ref_α
n37_op11_β:
                                                                                        jmp   n38_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              eax, 99
                                                                                        je    proc_delete_flags$2F2_ω
                                                                                        jmp   n16_var_ref_α
n38_op11_β:
                                                                                        jmp   proc_delete_flags$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2720]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                                                                                        jmp   n43_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n44_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n45_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                                                                                        jmp   n46_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2704]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                                                                                        jmp   n47_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_string_α:
                        mov              qword ptr [rbp + 944], 1
                        mov              rax, qword ptr [rip + .Lx149_0]
                        mov              qword ptr [rbp + 952], rax
                                                                                        jmp   n48_lit_string_α
.Lx149_0:
                        .quad            .Lx149_0_s
.Lx149_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n45_lit_integer_α:
                        mov              qword ptr [rbp + 400], 6
                        mov              rax, qword ptr [rip + .Lx150_0]
                        mov              qword ptr [rbp + 408], rax
                                                                                        jmp   n49_lit_integer_α
.Lx150_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                                                                                        jmp   n50_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n47_op11_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1408]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 99
                                                                                        je    proc_delete_flags$2F2_ω
                                                                                        jmp   n51_op11_α
n47_op11_β:
                                                                                        jmp   proc_delete_flags$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_string_α:
                        mov              qword ptr [rbp + 848], 1
                        mov              rax, qword ptr [rip + .Lx154_0]
                        mov              qword ptr [rbp + 856], rax
                                                                                        jmp   n52_lit_string_α
.Lx154_0:
                        .quad            .Lx154_0_s
.Lx154_0_s:
                        .string          "-g"
#-----------------------------------------------------------------------------------------------------------------------
n49_lit_integer_α:
                        mov              qword ptr [rbp + 416], 6
                        mov              rax, qword ptr [rip + .Lx155_0]
                        mov              qword ptr [rbp + 424], rax
                                                                                        jmp   n53_op11_α
.Lx155_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n50_op11_α:
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1872]
                        lea              r8, [rbp + 1872]
.Lx156_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx156_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx156_41
                        cmp              esi, 1
                                                                                        jne   .Lx156_55
                        mov              r8, rax
                                                                                        jmp   .Lx156_40
.Lx156_55:
                        cmp              esi, 2
                                                                                        jne   .Lx156_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx156_41
                        mov              r8, rax
                                                                                        jmp   .Lx156_40
.Lx156_56:
                        cmp              eax, 13
                                                                                        jne   .Lx156_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx156_41
                        cmp              rax, r8
                                                                                        je    .Lx156_41
                        mov              r8, rax
                                                                                        jmp   .Lx156_40
.Lx156_41:
                        lea              r9, [rbp + 1888]
.Lx156_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx156_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx156_43
                        cmp              esi, 1
                                                                                        jne   .Lx156_57
                        mov              r9, rax
                                                                                        jmp   .Lx156_42
.Lx156_57:
                        cmp              esi, 2
                                                                                        jne   .Lx156_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx156_43
                        mov              r9, rax
                                                                                        jmp   .Lx156_42
.Lx156_58:
                        cmp              eax, 13
                                                                                        jne   .Lx156_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx156_43
                        cmp              rax, r9
                                                                                        je    .Lx156_43
                        mov              r9, rax
                                                                                        jmp   .Lx156_42
.Lx156_43:
                        cmp              r8, r9
                                                                                        je    .Lx156_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx156_44
                        cmp              eax, 99
                                                                                        je    .Lx156_44
                        cmp              eax, 13
                                                                                        jne   .Lx156_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx156_44
                                                                                        jmp   .Lx156_45
.Lx156_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx156_53
                        cmp              eax, 99
                                                                                        je    .Lx156_53
                        cmp              eax, 13
                                                                                        jne   .Lx156_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx156_53
                                                                                        jmp   .Lx156_46
.Lx156_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx156_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx156_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx156_51
.Lx156_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx156_47
                        cmp              eax, 99
                                                                                        je    .Lx156_47
                        cmp              eax, 13
                                                                                        jne   .Lx156_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx156_47
                                                                                        jmp   .Lx156_48
.Lx156_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx156_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx156_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx156_51
.Lx156_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx156_49
                        cmp              edx, 14
                                                                                        je    .Lx156_53
                                                                                        jmp   .Lx156_52
.Lx156_49:
                        cmp              edx, 14
                                                                                        je    .Lx156_52
                        cmp              ecx, 7
                                                                                        je    .Lx156_53
                        cmp              edx, 7
                                                                                        je    .Lx156_53
                        cmp              ecx, 6
                                                                                        jne   .Lx156_50
                        cmp              edx, 6
                                                                                        jne   .Lx156_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx156_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx156_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx156_51
                                                                                        jmp   .Lx156_52
.Lx156_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx156_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx156_53
.Lx156_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx156_54
.Lx156_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx156_54
.Lx156_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx156_54:
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              eax, 99
                                                                                        je    n38_op11_α
                                                                                        jmp   n54_var_ref_α
n50_op11_β:
                                                                                        jmp   n38_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n51_op11_α:
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n56_op11_α
                                                                                        jmp   n55_op11_α
n51_op11_β:
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n52_lit_string_α:
                        mov              qword ptr [rbp + 832], 1
                        mov              rax, qword ptr [rip + .Lx158_0]
                        mov              qword ptr [rbp + 840], rax
                                                                                        jmp   n57_var_ref_α
.Lx158_0:
                        .quad            .Lx158_0_s
.Lx158_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n53_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lx159_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx159_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx159_111
                        cmp              esi, 1
                                                                                        jne   .Lx159_112
                        mov              r8, rax
                                                                                        jmp   .Lx159_110
.Lx159_112:
                        cmp              esi, 2
                                                                                        jne   .Lx159_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx159_111
                        mov              r8, rax
                                                                                        jmp   .Lx159_110
.Lx159_113:
                        cmp              eax, 13
                                                                                        jne   .Lx159_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx159_111
                        cmp              rax, r8
                                                                                        je    .Lx159_111
                        mov              r8, rax
                                                                                        jmp   .Lx159_110
.Lx159_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx159_114
                        cmp              eax, 99
                                                                                        je    .Lx159_114
                        cmp              eax, 13
                                                                                        jne   .Lx159_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx159_114
                                                                                        jmp   .Lx159_118
.Lx159_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        jne   .Lx159_119
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              edx, dword ptr [r10 + 0]
                        cmp              edx, 0
                                                                                        je    .Lx159_116
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, edx
                                                                                        jne   .Lx159_115
                                                                                        jmp   .Lx159_114
.Lx159_119:
                        cmp              eax, 6
                                                                                        jne   .Lx159_120
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx159_114
                                                                                        jmp   .Lx159_115
.Lx159_120:
                        cmp              eax, 1
                                                                                        jne   .Lx159_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx159_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx159_114
                                                                                        jmp   .Lx159_115
.Lx159_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx159_117
.Lx159_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx159_117
.Lx159_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx159_117:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n59_op11_α
                                                                                        jmp   n58_var_ref_α
n53_op11_β:
                                                                                        jmp   n59_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2704]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                                                                                        jmp   n60_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1312]
                        lea              r8, [rbp + 1312]
.Lx162_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx162_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx162_41
                        cmp              esi, 1
                                                                                        jne   .Lx162_55
                        mov              r8, rax
                                                                                        jmp   .Lx162_40
.Lx162_55:
                        cmp              esi, 2
                                                                                        jne   .Lx162_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx162_41
                        mov              r8, rax
                                                                                        jmp   .Lx162_40
.Lx162_56:
                        cmp              eax, 13
                                                                                        jne   .Lx162_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx162_41
                        cmp              rax, r8
                                                                                        je    .Lx162_41
                        mov              r8, rax
                                                                                        jmp   .Lx162_40
.Lx162_41:
                        lea              r9, [rbp + 1328]
.Lx162_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx162_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx162_43
                        cmp              esi, 1
                                                                                        jne   .Lx162_57
                        mov              r9, rax
                                                                                        jmp   .Lx162_42
.Lx162_57:
                        cmp              esi, 2
                                                                                        jne   .Lx162_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx162_43
                        mov              r9, rax
                                                                                        jmp   .Lx162_42
.Lx162_58:
                        cmp              eax, 13
                                                                                        jne   .Lx162_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx162_43
                        cmp              rax, r9
                                                                                        je    .Lx162_43
                        mov              r9, rax
                                                                                        jmp   .Lx162_42
.Lx162_43:
                        cmp              r8, r9
                                                                                        je    .Lx162_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx162_44
                        cmp              eax, 99
                                                                                        je    .Lx162_44
                        cmp              eax, 13
                                                                                        jne   .Lx162_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx162_44
                                                                                        jmp   .Lx162_45
.Lx162_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx162_53
                        cmp              eax, 99
                                                                                        je    .Lx162_53
                        cmp              eax, 13
                                                                                        jne   .Lx162_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx162_53
                                                                                        jmp   .Lx162_46
.Lx162_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx162_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx162_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx162_51
.Lx162_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx162_47
                        cmp              eax, 99
                                                                                        je    .Lx162_47
                        cmp              eax, 13
                                                                                        jne   .Lx162_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx162_47
                                                                                        jmp   .Lx162_48
.Lx162_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx162_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx162_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx162_51
.Lx162_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx162_49
                        cmp              edx, 14
                                                                                        je    .Lx162_53
                                                                                        jmp   .Lx162_52
.Lx162_49:
                        cmp              edx, 14
                                                                                        je    .Lx162_52
                        cmp              ecx, 7
                                                                                        je    .Lx162_53
                        cmp              edx, 7
                                                                                        je    .Lx162_53
                        cmp              ecx, 6
                                                                                        jne   .Lx162_50
                        cmp              edx, 6
                                                                                        jne   .Lx162_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx162_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx162_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx162_51
                                                                                        jmp   .Lx162_52
.Lx162_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx162_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx162_53
.Lx162_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx162_54
.Lx162_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx162_54
.Lx162_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx162_54:
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              eax, 99
                                                                                        je    n56_op11_α
                                                                                        jmp   n61_var_ref_α
n55_op11_β:
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n56_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1088]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              eax, 99
                                                                                        je    proc_delete_flags$2F2_ω
                                                                                        jmp   n27_var_ref_α
n56_op11_β:
                                                                                        jmp   proc_delete_flags$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2720]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                                                                                        jmp   n62_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                                                                                        jmp   n63_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n59_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_delete_flags$2F2_ω
                                                                                        jmp   proc_delete_flags$2F2_ω
n59_op11_β:
                                                                                        jmp   proc_delete_flags$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n60_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                                                                                        jmp   n64_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                                                                                        jmp   n65_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n62_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2704]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                                                                                        jmp   n66_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n63_lit_string_α:
                        mov              qword ptr [rbp + 288], 1
                        mov              rax, qword ptr [rip + .Lx175_0]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n67_var_ref_α
.Lx175_0:
                        .quad            .Lx175_0_s
.Lx175_0_s:
                        .string          "--"
#-----------------------------------------------------------------------------------------------------------------------
n64_call_proc_staged_α:
                        mov              qword ptr [rbp + 1792], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx177_20
                        mov              rax, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx177_21
.Lx177_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1824]
                        mov              rdx, qword ptr [rbp + 1832]
                        call             rt_arg_stage@PLT
.Lx177_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx177_22
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx177_23
.Lx177_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        call             rt_arg_stage@PLT
.Lx177_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx177_1
                        lea              rcx, [rip + .Lx177_3]
                        lea              rdx, [rip + .Lx177_4]
                                                                                        jmp   rax
.Lx177_3:
                        mov              qword ptr [rbp + 1800], rsp
                        mov              rax, qword ptr [rbp + 1792]
                        test             rax, rax
                                                                                        jne   .Lx177_5
                        mov              qword ptr [rbp + 1792], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx177_2
.Lx177_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx177_2
.Lx177_4:
                        mov              rax, qword ptr [rbp + 1792]
                        test             rax, rax
                                                                                        jne   .Lx177_6
                        mov              qword ptr [rbp + 1792], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx177_2
.Lx177_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx177_2
.Lx177_1:
                        call             rt_faildescr@PLT
.Lx177_2:
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              eax, 99
                                                                                        je    n38_op11_α
                                                                                        jmp   n68_suspend_α
n64_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1800]
                                                                                        jmp   qword ptr [rsp]
.Lx177_0:
                        .quad            .Lx177_0_s
.Lx177_0_s:
                        .string          "delete_flags/2"
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                                                                                        jmp   n69_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n66_op11_α:
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              eax, 99
                                                                                        je    proc_delete_flags$2F2_ω
                                                                                        jmp   n70_op11_α
n66_op11_β:
                                                                                        jmp   proc_delete_flags$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n71_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n68_suspend_α:
                        lea              rax, [rip + n68_suspend_β]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_delete_flags$2F2_γ
n68_suspend_β:
                                                                                        jmp   n64_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n69_op11_α:
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1232]
                        lea              r8, [rbp + 1232]
.Lx185_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx185_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx185_41
                        cmp              esi, 1
                                                                                        jne   .Lx185_55
                        mov              r8, rax
                                                                                        jmp   .Lx185_40
.Lx185_55:
                        cmp              esi, 2
                                                                                        jne   .Lx185_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx185_41
                        mov              r8, rax
                                                                                        jmp   .Lx185_40
.Lx185_56:
                        cmp              eax, 13
                                                                                        jne   .Lx185_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx185_41
                        cmp              rax, r8
                                                                                        je    .Lx185_41
                        mov              r8, rax
                                                                                        jmp   .Lx185_40
.Lx185_41:
                        lea              r9, [rbp + 1248]
.Lx185_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx185_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx185_43
                        cmp              esi, 1
                                                                                        jne   .Lx185_57
                        mov              r9, rax
                                                                                        jmp   .Lx185_42
.Lx185_57:
                        cmp              esi, 2
                                                                                        jne   .Lx185_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx185_43
                        mov              r9, rax
                                                                                        jmp   .Lx185_42
.Lx185_58:
                        cmp              eax, 13
                                                                                        jne   .Lx185_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx185_43
                        cmp              rax, r9
                                                                                        je    .Lx185_43
                        mov              r9, rax
                                                                                        jmp   .Lx185_42
.Lx185_43:
                        cmp              r8, r9
                                                                                        je    .Lx185_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx185_44
                        cmp              eax, 99
                                                                                        je    .Lx185_44
                        cmp              eax, 13
                                                                                        jne   .Lx185_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx185_44
                                                                                        jmp   .Lx185_45
.Lx185_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx185_53
                        cmp              eax, 99
                                                                                        je    .Lx185_53
                        cmp              eax, 13
                                                                                        jne   .Lx185_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx185_53
                                                                                        jmp   .Lx185_46
.Lx185_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx185_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx185_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx185_51
.Lx185_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx185_47
                        cmp              eax, 99
                                                                                        je    .Lx185_47
                        cmp              eax, 13
                                                                                        jne   .Lx185_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx185_47
                                                                                        jmp   .Lx185_48
.Lx185_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx185_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx185_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx185_51
.Lx185_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx185_49
                        cmp              edx, 14
                                                                                        je    .Lx185_53
                                                                                        jmp   .Lx185_52
.Lx185_49:
                        cmp              edx, 14
                                                                                        je    .Lx185_52
                        cmp              ecx, 7
                                                                                        je    .Lx185_53
                        cmp              edx, 7
                                                                                        je    .Lx185_53
                        cmp              ecx, 6
                                                                                        jne   .Lx185_50
                        cmp              edx, 6
                                                                                        jne   .Lx185_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx185_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx185_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx185_51
                                                                                        jmp   .Lx185_52
.Lx185_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx185_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx185_53
.Lx185_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx185_54
.Lx185_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx185_54
.Lx185_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx185_54:
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              eax, 99
                                                                                        je    n56_op11_α
                                                                                        jmp   n72_var_ref_α
n69_op11_β:
                                                                                        jmp   n56_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n70_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 904], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 880]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        cmp              eax, 99
                                                                                        je    n74_op11_α
                                                                                        jmp   n73_op11_α
n70_op11_β:
                                                                                        jmp   n74_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n71_op11_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 240]
                        lea              r8, [rbp + 240]
.Lx187_60:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx187_63
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx187_61
                        cmp              esi, 1
                                                                                        jne   .Lx187_62
                        mov              r8, rax
                                                                                        jmp   .Lx187_60
.Lx187_62:
                        cmp              esi, 2
                                                                                        jne   .Lx187_61
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx187_61
                        mov              r8, rax
                                                                                        jmp   .Lx187_60
.Lx187_63:
                        cmp              eax, 13
                                                                                        jne   .Lx187_61
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx187_61
                        cmp              rax, r8
                                                                                        je    .Lx187_61
                        mov              r8, rax
                                                                                        jmp   .Lx187_60
.Lx187_61:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx187_80
                        cmp              eax, 99
                                                                                        je    .Lx187_80
                        cmp              eax, 13
                                                                                        jne   .Lx187_74
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx187_80
                                                                                        jmp   .Lx187_74
.Lx187_74:
                        mov              ecx, dword ptr [r8 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx187_73
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx187_72
                        mov              edx, dword ptr [r8 + 4]
                        cmp              eax, edx
                                                                                        jne   .Lx187_73
                        lea              r9, [rbp + 256]
.Lx187_64:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx187_67
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx187_65
                        cmp              esi, 1
                                                                                        jne   .Lx187_66
                        mov              r9, rax
                                                                                        jmp   .Lx187_64
.Lx187_66:
                        cmp              esi, 2
                                                                                        jne   .Lx187_65
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx187_65
                        mov              r9, rax
                                                                                        jmp   .Lx187_64
.Lx187_67:
                        cmp              eax, 13
                                                                                        jne   .Lx187_65
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx187_65
                        cmp              rax, r9
                                                                                        je    .Lx187_65
                        mov              r9, rax
                                                                                        jmp   .Lx187_64
.Lx187_65:
                        lea              rcx, [rbp + 272]
.Lx187_68:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx187_71
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx187_69
                        cmp              esi, 1
                                                                                        jne   .Lx187_70
                        mov              rcx, rax
                                                                                        jmp   .Lx187_68
.Lx187_70:
                        cmp              esi, 2
                                                                                        jne   .Lx187_69
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx187_69
                        mov              rcx, rax
                                                                                        jmp   .Lx187_68
.Lx187_71:
                        cmp              eax, 13
                                                                                        jne   .Lx187_69
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx187_69
                        cmp              rax, rcx
                                                                                        je    .Lx187_69
                        mov              rcx, rax
                                                                                        jmp   .Lx187_68
.Lx187_69:
                        cmp              r9, rcx
                                                                                        je    .Lx187_72
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx187_75
                        cmp              eax, 99
                                                                                        je    .Lx187_75
                        cmp              eax, 13
                                                                                        jne   .Lx187_72
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx187_75
                                                                                        jmp   .Lx187_72
.Lx187_75:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx187_76
                        cmp              eax, 99
                                                                                        je    .Lx187_76
                        cmp              eax, 13
                                                                                        jne   .Lx187_72
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx187_76
                                                                                        jmp   .Lx187_72
.Lx187_76:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx187_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 48
                        cmp              rsi, rax
                                                                                        ja    .Lx187_72
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              qword ptr [r11 + 24], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 32], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 40], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 2
                        mov              dword ptr [r10 + 32], eax
                        mov              r10, qword ptr [r8 + 8]
                        mov              rax, qword ptr [r10 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r10 + 8]
                        mov              qword ptr [r9 + 8], rax
                        mov              rax, qword ptr [r10 + 16]
                        mov              qword ptr [rcx + 0], rax
                        mov              rax, qword ptr [r10 + 24]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx187_77
.Lx187_80:
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        je    .Lx187_72
                        lea              r10, [rip + g_hp_fr]
                        mov              eax, dword ptr [r10 + 24]
                        test             eax, eax
                                                                                        je    .Lx187_72
                        mov              r11, qword ptr [r10 + 0]
                        mov              rax, qword ptr [r10 + 8]
                        sub              rax, 48
                        cmp              r11, rax
                                                                                        ja    .Lx187_72
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx187_72
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 72
                        cmp              rsi, rax
                                                                                        ja    .Lx187_72
                        lea              r10, [rip + g_hp_fr]
                        mov              r11, qword ptr [r10 + 0]
                        mov              qword ptr [r11 + 0], 0
                        mov              dword ptr [r11 + 8], 48
                        mov              dword ptr [r11 + 12], 65745
                        lea              rdx, [r11 + 16]
                        mov              rax, r11
                        add              rax, 48
                        mov              qword ptr [r10 + 0], rax
                        mov              rax, qword ptr [r10 + 16]
                        add              rax, 1
                        mov              qword ptr [r10 + 16], rax
                        lea              r9, [rbp + 256]
.Lx187_81:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx187_84
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx187_82
                        cmp              esi, 1
                                                                                        jne   .Lx187_83
                        mov              r9, rax
                                                                                        jmp   .Lx187_81
.Lx187_83:
                        cmp              esi, 2
                                                                                        jne   .Lx187_82
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx187_82
                        mov              r9, rax
                                                                                        jmp   .Lx187_81
.Lx187_84:
                        cmp              eax, 13
                                                                                        jne   .Lx187_82
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx187_82
                        cmp              rax, r9
                                                                                        je    .Lx187_82
                        mov              r9, rax
                                                                                        jmp   .Lx187_81
.Lx187_82:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx187_85
                        cmp              eax, 99
                                                                                        je    .Lx187_85
                        cmp              eax, 13
                                                                                        jne   .Lx187_86
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx187_85
                                                                                        jmp   .Lx187_86
.Lx187_85:
                        mov              qword ptr [rdx + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [rdx + 8], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [r9 + 0], 13
                        lea              rax, [rdx + 0]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx187_87
.Lx187_86:
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rdx + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rdx + 8], rax
.Lx187_87:
                        lea              rcx, [rbp + 272]
.Lx187_88:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx187_91
                        mov              esi, dword ptr [rcx + 4]
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx187_89
                        cmp              esi, 1
                                                                                        jne   .Lx187_90
                        mov              rcx, rax
                                                                                        jmp   .Lx187_88
.Lx187_90:
                        cmp              esi, 2
                                                                                        jne   .Lx187_89
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx187_89
                        mov              rcx, rax
                                                                                        jmp   .Lx187_88
.Lx187_91:
                        cmp              eax, 13
                                                                                        jne   .Lx187_89
                        mov              rax, qword ptr [rcx + 8]
                        test             rax, rax
                                                                                        je    .Lx187_89
                        cmp              rax, rcx
                                                                                        je    .Lx187_89
                        mov              rcx, rax
                                                                                        jmp   .Lx187_88
.Lx187_89:
                        mov              eax, dword ptr [rcx + 0]
                        cmp              eax, 0
                                                                                        je    .Lx187_92
                        cmp              eax, 99
                                                                                        je    .Lx187_92
                        cmp              eax, 13
                                                                                        jne   .Lx187_93
                        mov              rax, qword ptr [rcx + 8]
                        cmp              rax, rcx
                                                                                        je    .Lx187_92
                                                                                        jmp   .Lx187_93
.Lx187_92:
                        mov              qword ptr [rdx + 16], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rdx + 24], rax
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], rcx
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              qword ptr [rcx + 0], 13
                        lea              rax, [rdx + 16]
                        mov              qword ptr [rcx + 8], rax
                                                                                        jmp   .Lx187_94
.Lx187_93:
                        mov              rax, qword ptr [rcx + 0]
                        mov              qword ptr [rdx + 16], rax
                        mov              rax, qword ptr [rcx + 8]
                        mov              qword ptr [rdx + 24], rax
.Lx187_94:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              dword ptr [r8 + 0], 14
                        lea              r10, [rip + g_plw_dot_sl]
                        mov              eax, dword ptr [r10 + 0]
                        mov              dword ptr [r8 + 4], eax
                        mov              qword ptr [r8 + 8], rdx
                        mov              rax, qword ptr [r8 + 0]
                                                                                        jmp   .Lx187_77
.Lx187_73:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx187_77
.Lx187_72:
                        mov              esi, 3
                        call             rt_pl_dop_unify_lst@PLT
.Lx187_77:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              eax, 99
                                                                                        je    n59_op11_α
                                                                                        jmp   n75_var_ref_α
n71_op11_β:
                                                                                        jmp   n59_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2704]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                                                                                        jmp   n76_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n73_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 672]
                        lea              r8, [rbp + 672]
.Lx190_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx190_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_41
                        cmp              esi, 1
                                                                                        jne   .Lx190_55
                        mov              r8, rax
                                                                                        jmp   .Lx190_40
.Lx190_55:
                        cmp              esi, 2
                                                                                        jne   .Lx190_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx190_41
                        mov              r8, rax
                                                                                        jmp   .Lx190_40
.Lx190_56:
                        cmp              eax, 13
                                                                                        jne   .Lx190_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_41
                        cmp              rax, r8
                                                                                        je    .Lx190_41
                        mov              r8, rax
                                                                                        jmp   .Lx190_40
.Lx190_41:
                        lea              r9, [rbp + 688]
.Lx190_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx190_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_43
                        cmp              esi, 1
                                                                                        jne   .Lx190_57
                        mov              r9, rax
                                                                                        jmp   .Lx190_42
.Lx190_57:
                        cmp              esi, 2
                                                                                        jne   .Lx190_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx190_43
                        mov              r9, rax
                                                                                        jmp   .Lx190_42
.Lx190_58:
                        cmp              eax, 13
                                                                                        jne   .Lx190_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx190_43
                        cmp              rax, r9
                                                                                        je    .Lx190_43
                        mov              r9, rax
                                                                                        jmp   .Lx190_42
.Lx190_43:
                        cmp              r8, r9
                                                                                        je    .Lx190_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx190_44
                        cmp              eax, 99
                                                                                        je    .Lx190_44
                        cmp              eax, 13
                                                                                        jne   .Lx190_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx190_44
                                                                                        jmp   .Lx190_45
.Lx190_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx190_53
                        cmp              eax, 99
                                                                                        je    .Lx190_53
                        cmp              eax, 13
                                                                                        jne   .Lx190_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx190_53
                                                                                        jmp   .Lx190_46
.Lx190_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx190_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx190_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx190_51
.Lx190_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx190_47
                        cmp              eax, 99
                                                                                        je    .Lx190_47
                        cmp              eax, 13
                                                                                        jne   .Lx190_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx190_47
                                                                                        jmp   .Lx190_48
.Lx190_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx190_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx190_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx190_51
.Lx190_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx190_49
                        cmp              edx, 14
                                                                                        je    .Lx190_53
                                                                                        jmp   .Lx190_52
.Lx190_49:
                        cmp              edx, 14
                                                                                        je    .Lx190_52
                        cmp              ecx, 7
                                                                                        je    .Lx190_53
                        cmp              edx, 7
                                                                                        je    .Lx190_53
                        cmp              ecx, 6
                                                                                        jne   .Lx190_50
                        cmp              edx, 6
                                                                                        jne   .Lx190_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx190_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx190_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx190_51
                                                                                        jmp   .Lx190_52
.Lx190_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx190_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx190_53
.Lx190_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx190_54
.Lx190_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx190_54
.Lx190_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx190_54:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n74_op11_α
                                                                                        jmp   n77_var_ref_α
n73_op11_β:
                                                                                        jmp   n74_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n74_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              eax, 99
                                                                                        je    proc_delete_flags$2F2_ω
                                                                                        jmp   n41_var_ref_α
n74_op11_β:
                                                                                        jmp   proc_delete_flags$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n75_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n78_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n76_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                                                                                        jmp   n79_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n77_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n80_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n78_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n81_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n79_call_proc_staged_α:
                        mov              qword ptr [rbp + 1152], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx201_20
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx201_21
.Lx201_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        call             rt_arg_stage@PLT
.Lx201_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx201_22
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx201_23
.Lx201_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        call             rt_arg_stage@PLT
.Lx201_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx201_1
                        lea              rcx, [rip + .Lx201_3]
                        lea              rdx, [rip + .Lx201_4]
                                                                                        jmp   rax
.Lx201_3:
                        mov              qword ptr [rbp + 1160], rsp
                        mov              rax, qword ptr [rbp + 1152]
                        test             rax, rax
                                                                                        jne   .Lx201_5
                        mov              qword ptr [rbp + 1152], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx201_2
.Lx201_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx201_2
.Lx201_4:
                        mov              rax, qword ptr [rbp + 1152]
                        test             rax, rax
                                                                                        jne   .Lx201_6
                        mov              qword ptr [rbp + 1152], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx201_2
.Lx201_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx201_2
.Lx201_1:
                        call             rt_faildescr@PLT
.Lx201_2:
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n56_op11_α
                                                                                        jmp   n82_suspend_α
n79_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 1160]
                                                                                        jmp   qword ptr [rsp]
.Lx201_0:
                        .quad            .Lx201_0_s
.Lx201_0_s:
                        .string          "delete_flags/2"
#-----------------------------------------------------------------------------------------------------------------------
n80_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n83_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n81_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        lea              r8, [rbp + 144]
.Lx204_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx204_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_41
                        cmp              esi, 1
                                                                                        jne   .Lx204_55
                        mov              r8, rax
                                                                                        jmp   .Lx204_40
.Lx204_55:
                        cmp              esi, 2
                                                                                        jne   .Lx204_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx204_41
                        mov              r8, rax
                                                                                        jmp   .Lx204_40
.Lx204_56:
                        cmp              eax, 13
                                                                                        jne   .Lx204_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_41
                        cmp              rax, r8
                                                                                        je    .Lx204_41
                        mov              r8, rax
                                                                                        jmp   .Lx204_40
.Lx204_41:
                        lea              r9, [rbp + 160]
.Lx204_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx204_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_43
                        cmp              esi, 1
                                                                                        jne   .Lx204_57
                        mov              r9, rax
                                                                                        jmp   .Lx204_42
.Lx204_57:
                        cmp              esi, 2
                                                                                        jne   .Lx204_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx204_43
                        mov              r9, rax
                                                                                        jmp   .Lx204_42
.Lx204_58:
                        cmp              eax, 13
                                                                                        jne   .Lx204_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx204_43
                        cmp              rax, r9
                                                                                        je    .Lx204_43
                        mov              r9, rax
                                                                                        jmp   .Lx204_42
.Lx204_43:
                        cmp              r8, r9
                                                                                        je    .Lx204_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_44
                        cmp              eax, 99
                                                                                        je    .Lx204_44
                        cmp              eax, 13
                                                                                        jne   .Lx204_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx204_44
                                                                                        jmp   .Lx204_45
.Lx204_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_53
                        cmp              eax, 99
                                                                                        je    .Lx204_53
                        cmp              eax, 13
                                                                                        jne   .Lx204_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx204_53
                                                                                        jmp   .Lx204_46
.Lx204_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx204_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx204_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx204_51
.Lx204_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx204_47
                        cmp              eax, 99
                                                                                        je    .Lx204_47
                        cmp              eax, 13
                                                                                        jne   .Lx204_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx204_47
                                                                                        jmp   .Lx204_48
.Lx204_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx204_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx204_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx204_51
.Lx204_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx204_49
                        cmp              edx, 14
                                                                                        je    .Lx204_53
                                                                                        jmp   .Lx204_52
.Lx204_49:
                        cmp              edx, 14
                                                                                        je    .Lx204_52
                        cmp              ecx, 7
                                                                                        je    .Lx204_53
                        cmp              edx, 7
                                                                                        je    .Lx204_53
                        cmp              ecx, 6
                                                                                        jne   .Lx204_50
                        cmp              edx, 6
                                                                                        jne   .Lx204_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx204_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx204_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx204_51
                                                                                        jmp   .Lx204_52
.Lx204_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx204_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx204_53
.Lx204_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx204_54
.Lx204_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx204_54
.Lx204_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx204_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n59_op11_α
                                                                                        jmp   n84_suspend_α
n81_op11_β:
                                                                                        jmp   n59_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n82_suspend_α:
                        lea              rax, [rip + n82_suspend_β]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_delete_flags$2F2_γ
n82_suspend_β:
                                                                                        jmp   n79_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n83_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx207_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx207_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx207_41
                        cmp              esi, 1
                                                                                        jne   .Lx207_55
                        mov              r8, rax
                                                                                        jmp   .Lx207_40
.Lx207_55:
                        cmp              esi, 2
                                                                                        jne   .Lx207_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx207_41
                        mov              r8, rax
                                                                                        jmp   .Lx207_40
.Lx207_56:
                        cmp              eax, 13
                                                                                        jne   .Lx207_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx207_41
                        cmp              rax, r8
                                                                                        je    .Lx207_41
                        mov              r8, rax
                                                                                        jmp   .Lx207_40
.Lx207_41:
                        lea              r9, [rbp + 608]
.Lx207_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx207_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx207_43
                        cmp              esi, 1
                                                                                        jne   .Lx207_57
                        mov              r9, rax
                                                                                        jmp   .Lx207_42
.Lx207_57:
                        cmp              esi, 2
                                                                                        jne   .Lx207_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx207_43
                        mov              r9, rax
                                                                                        jmp   .Lx207_42
.Lx207_58:
                        cmp              eax, 13
                                                                                        jne   .Lx207_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx207_43
                        cmp              rax, r9
                                                                                        je    .Lx207_43
                        mov              r9, rax
                                                                                        jmp   .Lx207_42
.Lx207_43:
                        cmp              r8, r9
                                                                                        je    .Lx207_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx207_44
                        cmp              eax, 99
                                                                                        je    .Lx207_44
                        cmp              eax, 13
                                                                                        jne   .Lx207_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx207_44
                                                                                        jmp   .Lx207_45
.Lx207_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx207_53
                        cmp              eax, 99
                                                                                        je    .Lx207_53
                        cmp              eax, 13
                                                                                        jne   .Lx207_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx207_53
                                                                                        jmp   .Lx207_46
.Lx207_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx207_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx207_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx207_51
.Lx207_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx207_47
                        cmp              eax, 99
                                                                                        je    .Lx207_47
                        cmp              eax, 13
                                                                                        jne   .Lx207_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx207_47
                                                                                        jmp   .Lx207_48
.Lx207_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx207_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx207_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx207_51
.Lx207_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx207_49
                        cmp              edx, 14
                                                                                        je    .Lx207_53
                                                                                        jmp   .Lx207_52
.Lx207_49:
                        cmp              edx, 14
                                                                                        je    .Lx207_52
                        cmp              ecx, 7
                                                                                        je    .Lx207_53
                        cmp              edx, 7
                                                                                        je    .Lx207_53
                        cmp              ecx, 6
                                                                                        jne   .Lx207_50
                        cmp              edx, 6
                                                                                        jne   .Lx207_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx207_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx207_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx207_51
                                                                                        jmp   .Lx207_52
.Lx207_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx207_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx207_53
.Lx207_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx207_54
.Lx207_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx207_54
.Lx207_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx207_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n74_op11_α
                                                                                        jmp   n85_var_ref_α
n83_op11_β:
                                                                                        jmp   n74_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n84_suspend_α:
                        lea              rax, [rip + n84_suspend_β]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_delete_flags$2F2_γ
n84_suspend_β:
                                                                                        jmp   n59_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n85_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2704]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n86_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n87_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n87_call_proc_staged_α:
                        mov              qword ptr [rbp + 512], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx215_20
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx215_21
.Lx215_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        call             rt_arg_stage@PLT
.Lx215_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx215_22
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx215_23
.Lx215_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        call             rt_arg_stage@PLT
.Lx215_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx215_1
                        lea              rcx, [rip + .Lx215_3]
                        lea              rdx, [rip + .Lx215_4]
                                                                                        jmp   rax
.Lx215_3:
                        mov              qword ptr [rbp + 520], rsp
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax
                                                                                        jne   .Lx215_5
                        mov              qword ptr [rbp + 512], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx215_2
.Lx215_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx215_2
.Lx215_4:
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax
                                                                                        jne   .Lx215_6
                        mov              qword ptr [rbp + 512], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx215_2
.Lx215_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx215_2
.Lx215_1:
                        call             rt_faildescr@PLT
.Lx215_2:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n74_op11_α
                                                                                        jmp   n88_suspend_α
n87_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 520]
                                                                                        jmp   qword ptr [rsp]
.Lx215_0:
                        .quad            .Lx215_0_s
.Lx215_0_s:
                        .string          "delete_flags/2"
#-----------------------------------------------------------------------------------------------------------------------
n88_suspend_α:
                        lea              rax, [rip + n88_suspend_β]
                        mov              qword ptr [rbp + 2672], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_delete_flags$2F2_γ
n88_suspend_β:
                                                                                        jmp   n87_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_delete_flags$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_delete_flags$2F2_β:
                                                                                        jmp   qword ptr [rbp + 2672]
#-----------------------------------------------------------------------------------------------------------------------
proc_delete_flags$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_delete_flags$2F2_res]
                        push             rax
                        mov              rax, [rbp + 2744]
                        mov              rbp, [rbp + 2760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_delete_flags$2F2_ω:
                        mov              rax, [rbp + 2752]
                        lea              rsp, [rbp + 2768]
                        mov              rbp, [rbp + 2760]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prolog_copyright$2F1_α
proc_prolog_copyright$2F1_α:
                        .global          proc_prolog_copyright$2F1_α
                        .global          proc_prolog_copyright$2F1_β
                        .global          proc_prolog_copyright$2F1_γ
                        .global          proc_prolog_copyright$2F1_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_prolog_copyright$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n218_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx225_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx225_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx225_101
.Lx225_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx225_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_copyright$2F1_ω
                                                                                        jmp   n219_var_ref_α
n218_op11_β:
                                                                                        jmp   proc_prolog_copyright$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n220_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx228_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n221_op11_α
.Lx228_0:
                        .quad            .Lx228_0_s
.Lx228_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n221_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx229_2]
                                                                                        jmp   .Lx229_3
.Lx229_2:
                        .quad            .Lx229_2_s
.Lx229_2_s:
                        .string          ""
.Lx229_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n223_op11_α
                                                                                        jmp   n222_move_label_α
n221_op11_β:
                                                                                        jmp   n223_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n222_move_label_α:
                        lea              rax, [rip + n223_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_prolog_copyright$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n223_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_copyright$2F1_ω
                                                                                        jmp   proc_prolog_copyright$2F1_ω
n223_op11_β:
                                                                                        jmp   proc_prolog_copyright$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n224_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n224_disjunction_β:
                                                                                        jmp   proc_prolog_copyright$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_β:
                                                                                        jmp   n224_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 216]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_copyright$2F1_dcα:
                        pop              r11
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 208], r11
                        lea              rax, [rip + .Lx235_2]
                        mov              qword ptr [rbp + 216], rax
                        lea              rax, [rip + .Lx235_3]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 208
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_prolog_copyright$2F1_α_body
.Lx235_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx235_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_current_prolog_flag$2F2_α
proc_current_prolog_flag$2F2_α:
                        .global          proc_current_prolog_flag$2F2_α
                        .global          proc_current_prolog_flag$2F2_β
                        .global          proc_current_prolog_flag$2F2_γ
                        .global          proc_current_prolog_flag$2F2_ω
                        sub              rsp, 192
                        mov              [rsp + 168], rcx
                        mov              [rsp + 176], rdx
                        mov              [rsp + 184], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 144
                        mov              edx, 160
                        call             rt_jmp_frame_lexprep2@PLT
proc_current_prolog_flag$2F2_α_body:
                        lea              rax, [rip + n239_suspend_β]
                        mov              qword ptr [rbp + 144], rax
#-----------------------------------------------------------------------------------------------------------------------
n236_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                                                                                        jmp   n237_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n237_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                                                                                        jmp   n238_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n238_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        mov              qword ptr [rbp + 96], 0
.Lx244_60:
                        .section         .rodata
.Lbynamegenfn99:        .string          "$current_prolog_flag"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn99]
                        lea              rsi, [rbp + 64]
                        mov              edx, 2
                        lea              rcx, [rbp + 96]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_current_prolog_flag$2F2_ω
                                                                                        jmp   n239_suspend_α
n238_call_builtin_gen_β:
                                                                                        jmp   .Lx244_60
#-----------------------------------------------------------------------------------------------------------------------
n239_suspend_α:
                        lea              rax, [rip + n239_suspend_β]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_current_prolog_flag$2F2_γ
n239_suspend_β:
                                                                                        jmp   n238_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_β:
                                                                                        jmp   qword ptr [rbp + 144]
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_current_prolog_flag$2F2_res]
                        push             rax
                        mov              rax, [rbp + 168]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_current_prolog_flag$2F2_ω:
                        mov              rax, [rbp + 176]
                        lea              rsp, [rbp + 192]
                        mov              rbp, [rbp + 184]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prolog_version$2F1_α
proc_prolog_version$2F1_α:
                        .global          proc_prolog_version$2F1_α
                        .global          proc_prolog_version$2F1_β
                        .global          proc_prolog_version$2F1_γ
                        .global          proc_prolog_version$2F1_ω
                        sub              rsp, 448
                        mov              [rsp + 424], rcx
                        mov              [rsp + 432], rdx
                        mov              [rsp + 440], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 368
                        mov              edx, 416
                        call             rt_jmp_frame_lexprep2@PLT
proc_prolog_version$2F1_α_body:
                        lea              rax, [rip + n258_suspend_β]
                        mov              qword ptr [rbp + 368], rax
#-----------------------------------------------------------------------------------------------------------------------
n247_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx259_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx259_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx259_101
.Lx259_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx259_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_version$2F1_ω
                                                                                        jmp   n248_var_ref_α
n247_op11_β:
                                                                                        jmp   proc_prolog_version$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n248_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n249_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n250_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n250_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx264_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx264_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx264_41
                        cmp              esi, 1
                                                                                        jne   .Lx264_55
                        mov              r8, rax
                                                                                        jmp   .Lx264_40
.Lx264_55:
                        cmp              esi, 2
                                                                                        jne   .Lx264_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx264_41
                        mov              r8, rax
                                                                                        jmp   .Lx264_40
.Lx264_56:
                        cmp              eax, 13
                                                                                        jne   .Lx264_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx264_41
                        cmp              rax, r8
                                                                                        je    .Lx264_41
                        mov              r8, rax
                                                                                        jmp   .Lx264_40
.Lx264_41:
                        lea              r9, [rbp + 320]
.Lx264_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx264_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx264_43
                        cmp              esi, 1
                                                                                        jne   .Lx264_57
                        mov              r9, rax
                                                                                        jmp   .Lx264_42
.Lx264_57:
                        cmp              esi, 2
                                                                                        jne   .Lx264_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx264_43
                        mov              r9, rax
                                                                                        jmp   .Lx264_42
.Lx264_58:
                        cmp              eax, 13
                                                                                        jne   .Lx264_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx264_43
                        cmp              rax, r9
                                                                                        je    .Lx264_43
                        mov              r9, rax
                                                                                        jmp   .Lx264_42
.Lx264_43:
                        cmp              r8, r9
                                                                                        je    .Lx264_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx264_44
                        cmp              eax, 99
                                                                                        je    .Lx264_44
                        cmp              eax, 13
                                                                                        jne   .Lx264_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx264_44
                                                                                        jmp   .Lx264_45
.Lx264_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx264_53
                        cmp              eax, 99
                                                                                        je    .Lx264_53
                        cmp              eax, 13
                                                                                        jne   .Lx264_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx264_53
                                                                                        jmp   .Lx264_46
.Lx264_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx264_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx264_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx264_51
.Lx264_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx264_47
                        cmp              eax, 99
                                                                                        je    .Lx264_47
                        cmp              eax, 13
                                                                                        jne   .Lx264_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx264_47
                                                                                        jmp   .Lx264_48
.Lx264_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx264_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx264_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx264_51
.Lx264_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx264_49
                        cmp              edx, 14
                                                                                        je    .Lx264_53
                                                                                        jmp   .Lx264_52
.Lx264_49:
                        cmp              edx, 14
                                                                                        je    .Lx264_52
                        cmp              ecx, 7
                                                                                        je    .Lx264_53
                        cmp              edx, 7
                                                                                        je    .Lx264_53
                        cmp              ecx, 6
                                                                                        jne   .Lx264_50
                        cmp              edx, 6
                                                                                        jne   .Lx264_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx264_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx264_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx264_51
                                                                                        jmp   .Lx264_52
.Lx264_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx264_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx264_53
.Lx264_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx264_54
.Lx264_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx264_54
.Lx264_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx264_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n252_op11_α
                                                                                        jmp   n251_lit_string_α
n250_op11_β:
                                                                                        jmp   n252_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:
                        mov              qword ptr [rbp + 256], 1
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n253_var_ref_α
.Lx265_0:
                        .quad            .Lx265_0_s
.Lx265_0_s:
                        .string          "version"
#-----------------------------------------------------------------------------------------------------------------------
n252_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_version$2F1_ω
                                                                                        jmp   proc_prolog_version$2F1_ω
n252_op11_β:
                                                                                        jmp   proc_prolog_version$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n254_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n254_call_proc_staged_α:
                        mov              qword ptr [rbp + 224], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx270_20
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx270_21
.Lx270_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        call             rt_arg_stage@PLT
.Lx270_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx270_22
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx270_23
.Lx270_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx270_23:
                        mov              edi, 2
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx270_1
                        lea              rcx, [rip + .Lx270_3]
                        lea              rdx, [rip + .Lx270_4]
                                                                                        jmp   rax
.Lx270_3:
                        mov              qword ptr [rbp + 232], rsp
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax
                                                                                        jne   .Lx270_5
                        mov              qword ptr [rbp + 224], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx270_2
.Lx270_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx270_2
.Lx270_4:
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax
                                                                                        jne   .Lx270_6
                        mov              qword ptr [rbp + 224], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx270_2
.Lx270_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx270_2
.Lx270_1:
                        call             rt_faildescr@PLT
.Lx270_2:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n252_op11_α
                                                                                        jmp   n255_var_ref_α
n254_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 232]
                                                                                        jmp   qword ptr [rsp]
.Lx270_0:
                        .quad            .Lx270_0_s
.Lx270_0_s:
                        .string          "current_prolog_flag/2"
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 384]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n256_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 400]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n257_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n257_op11_α:
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        .section         .rodata
.Lrkfn276:              .string          "$number_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rbp + 112]
                        mov              edx, 2
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n254_call_proc_staged_β
                                                                                        jmp   n258_suspend_α
n257_op11_β:
                                                                                        jmp   n254_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n258_suspend_α:
                        lea              rax, [rip + n258_suspend_β]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_prolog_version$2F1_γ
n258_suspend_β:
                                                                                        jmp   n254_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_β:
                                                                                        jmp   qword ptr [rbp + 368]
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_prolog_version$2F1_res]
                        push             rax
                        mov              rax, [rbp + 424]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_version$2F1_ω:
                        mov              rax, [rbp + 432]
                        lea              rsp, [rbp + 448]
                        mov              rbp, [rbp + 440]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj1$2F2_α
proc_$disj1$2F2_α:
                        .global          proc_$disj1$2F2_α
                        .global          proc_$disj1$2F2_β
                        .global          proc_$disj1$2F2_γ
                        .global          proc_$disj1$2F2_ω
                        sub              rsp, 752
                        mov              [rsp + 728], rcx
                        mov              [rsp + 736], rdx
                        mov              [rsp + 744], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 672
                        mov              edx, 720
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj1$2F2_α_body:
                        lea              rax, [rip + n296_suspend_β]
                        mov              qword ptr [rbp + 672], rax
#-----------------------------------------------------------------------------------------------------------------------
n279_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx302_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx302_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx302_101
.Lx302_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx302_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj1$2F2_ω
                                                                                        jmp   n280_var_ref_α
n279_op11_β:
                                                                                        jmp   proc_$disj1$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n280_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n281_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n281_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                                                                                        jmp   n282_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n282_op11_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 608]
                        lea              r8, [rbp + 608]
.Lx307_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx307_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx307_41
                        cmp              esi, 1
                                                                                        jne   .Lx307_55
                        mov              r8, rax
                                                                                        jmp   .Lx307_40
.Lx307_55:
                        cmp              esi, 2
                                                                                        jne   .Lx307_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx307_41
                        mov              r8, rax
                                                                                        jmp   .Lx307_40
.Lx307_56:
                        cmp              eax, 13
                                                                                        jne   .Lx307_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx307_41
                        cmp              rax, r8
                                                                                        je    .Lx307_41
                        mov              r8, rax
                                                                                        jmp   .Lx307_40
.Lx307_41:
                        lea              r9, [rbp + 624]
.Lx307_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx307_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx307_43
                        cmp              esi, 1
                                                                                        jne   .Lx307_57
                        mov              r9, rax
                                                                                        jmp   .Lx307_42
.Lx307_57:
                        cmp              esi, 2
                                                                                        jne   .Lx307_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx307_43
                        mov              r9, rax
                                                                                        jmp   .Lx307_42
.Lx307_58:
                        cmp              eax, 13
                                                                                        jne   .Lx307_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx307_43
                        cmp              rax, r9
                                                                                        je    .Lx307_43
                        mov              r9, rax
                                                                                        jmp   .Lx307_42
.Lx307_43:
                        cmp              r8, r9
                                                                                        je    .Lx307_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx307_44
                        cmp              eax, 99
                                                                                        je    .Lx307_44
                        cmp              eax, 13
                                                                                        jne   .Lx307_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx307_44
                                                                                        jmp   .Lx307_45
.Lx307_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx307_53
                        cmp              eax, 99
                                                                                        je    .Lx307_53
                        cmp              eax, 13
                                                                                        jne   .Lx307_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx307_53
                                                                                        jmp   .Lx307_46
.Lx307_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx307_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx307_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx307_51
.Lx307_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx307_47
                        cmp              eax, 99
                                                                                        je    .Lx307_47
                        cmp              eax, 13
                                                                                        jne   .Lx307_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx307_47
                                                                                        jmp   .Lx307_48
.Lx307_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx307_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx307_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx307_51
.Lx307_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx307_49
                        cmp              edx, 14
                                                                                        je    .Lx307_53
                                                                                        jmp   .Lx307_52
.Lx307_49:
                        cmp              edx, 14
                                                                                        je    .Lx307_52
                        cmp              ecx, 7
                                                                                        je    .Lx307_53
                        cmp              edx, 7
                                                                                        je    .Lx307_53
                        cmp              ecx, 6
                                                                                        jne   .Lx307_50
                        cmp              edx, 6
                                                                                        jne   .Lx307_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx307_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx307_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx307_51
                                                                                        jmp   .Lx307_52
.Lx307_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx307_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx307_53
.Lx307_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx307_54
.Lx307_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx307_54
.Lx307_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx307_54:
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              eax, 99
                                                                                        je    n284_op11_α
                                                                                        jmp   n283_var_ref_α
n282_op11_β:
                                                                                        jmp   n284_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n283_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n285_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n284_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj1$2F2_ω
                                                                                        jmp   n286_var_ref_α
n284_op11_β:
                                                                                        jmp   proc_$disj1$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n285_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                                                                                        jmp   n287_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                                                                                        jmp   n288_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n287_op11_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 528]
                        lea              r8, [rbp + 528]
.Lx315_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx315_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx315_41
                        cmp              esi, 1
                                                                                        jne   .Lx315_55
                        mov              r8, rax
                                                                                        jmp   .Lx315_40
.Lx315_55:
                        cmp              esi, 2
                                                                                        jne   .Lx315_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx315_41
                        mov              r8, rax
                                                                                        jmp   .Lx315_40
.Lx315_56:
                        cmp              eax, 13
                                                                                        jne   .Lx315_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx315_41
                        cmp              rax, r8
                                                                                        je    .Lx315_41
                        mov              r8, rax
                                                                                        jmp   .Lx315_40
.Lx315_41:
                        lea              r9, [rbp + 544]
.Lx315_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx315_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx315_43
                        cmp              esi, 1
                                                                                        jne   .Lx315_57
                        mov              r9, rax
                                                                                        jmp   .Lx315_42
.Lx315_57:
                        cmp              esi, 2
                                                                                        jne   .Lx315_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx315_43
                        mov              r9, rax
                                                                                        jmp   .Lx315_42
.Lx315_58:
                        cmp              eax, 13
                                                                                        jne   .Lx315_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx315_43
                        cmp              rax, r9
                                                                                        je    .Lx315_43
                        mov              r9, rax
                                                                                        jmp   .Lx315_42
.Lx315_43:
                        cmp              r8, r9
                                                                                        je    .Lx315_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx315_44
                        cmp              eax, 99
                                                                                        je    .Lx315_44
                        cmp              eax, 13
                                                                                        jne   .Lx315_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx315_44
                                                                                        jmp   .Lx315_45
.Lx315_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx315_53
                        cmp              eax, 99
                                                                                        je    .Lx315_53
                        cmp              eax, 13
                                                                                        jne   .Lx315_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx315_53
                                                                                        jmp   .Lx315_46
.Lx315_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx315_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx315_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx315_51
.Lx315_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx315_47
                        cmp              eax, 99
                                                                                        je    .Lx315_47
                        cmp              eax, 13
                                                                                        jne   .Lx315_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx315_47
                                                                                        jmp   .Lx315_48
.Lx315_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx315_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx315_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx315_51
.Lx315_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx315_49
                        cmp              edx, 14
                                                                                        je    .Lx315_53
                                                                                        jmp   .Lx315_52
.Lx315_49:
                        cmp              edx, 14
                                                                                        je    .Lx315_52
                        cmp              ecx, 7
                                                                                        je    .Lx315_53
                        cmp              edx, 7
                                                                                        je    .Lx315_53
                        cmp              ecx, 6
                                                                                        jne   .Lx315_50
                        cmp              edx, 6
                                                                                        jne   .Lx315_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx315_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx315_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx315_51
                                                                                        jmp   .Lx315_52
.Lx315_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx315_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx315_53
.Lx315_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx315_54
.Lx315_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx315_54
.Lx315_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx315_54:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              eax, 99
                                                                                        je    n284_op11_α
                                                                                        jmp   n289_var_ref_α
n287_op11_β:
                                                                                        jmp   n284_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n290_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n289_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 704]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n291_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n290_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 328], rax
                        lea              rdi, [rbp + 304]
                        lea              r8, [rbp + 304]
.Lx320_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx320_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_41
                        cmp              esi, 1
                                                                                        jne   .Lx320_55
                        mov              r8, rax
                                                                                        jmp   .Lx320_40
.Lx320_55:
                        cmp              esi, 2
                                                                                        jne   .Lx320_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx320_41
                        mov              r8, rax
                                                                                        jmp   .Lx320_40
.Lx320_56:
                        cmp              eax, 13
                                                                                        jne   .Lx320_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_41
                        cmp              rax, r8
                                                                                        je    .Lx320_41
                        mov              r8, rax
                                                                                        jmp   .Lx320_40
.Lx320_41:
                        lea              r9, [rbp + 320]
.Lx320_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx320_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_43
                        cmp              esi, 1
                                                                                        jne   .Lx320_57
                        mov              r9, rax
                                                                                        jmp   .Lx320_42
.Lx320_57:
                        cmp              esi, 2
                                                                                        jne   .Lx320_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx320_43
                        mov              r9, rax
                                                                                        jmp   .Lx320_42
.Lx320_58:
                        cmp              eax, 13
                                                                                        jne   .Lx320_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx320_43
                        cmp              rax, r9
                                                                                        je    .Lx320_43
                        mov              r9, rax
                                                                                        jmp   .Lx320_42
.Lx320_43:
                        cmp              r8, r9
                                                                                        je    .Lx320_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx320_44
                        cmp              eax, 99
                                                                                        je    .Lx320_44
                        cmp              eax, 13
                                                                                        jne   .Lx320_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx320_44
                                                                                        jmp   .Lx320_45
.Lx320_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx320_53
                        cmp              eax, 99
                                                                                        je    .Lx320_53
                        cmp              eax, 13
                                                                                        jne   .Lx320_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx320_53
                                                                                        jmp   .Lx320_46
.Lx320_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx320_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx320_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx320_51
.Lx320_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx320_47
                        cmp              eax, 99
                                                                                        je    .Lx320_47
                        cmp              eax, 13
                                                                                        jne   .Lx320_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx320_47
                                                                                        jmp   .Lx320_48
.Lx320_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx320_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx320_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx320_51
.Lx320_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx320_49
                        cmp              edx, 14
                                                                                        je    .Lx320_53
                                                                                        jmp   .Lx320_52
.Lx320_49:
                        cmp              edx, 14
                                                                                        je    .Lx320_52
                        cmp              ecx, 7
                                                                                        je    .Lx320_53
                        cmp              edx, 7
                                                                                        je    .Lx320_53
                        cmp              ecx, 6
                                                                                        jne   .Lx320_50
                        cmp              edx, 6
                                                                                        jne   .Lx320_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx320_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx320_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx320_51
                                                                                        jmp   .Lx320_52
.Lx320_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx320_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx320_53
.Lx320_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx320_54
.Lx320_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx320_54
.Lx320_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx320_54:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n293_op11_α
                                                                                        jmp   n292_var_ref_α
n290_op11_β:
                                                                                        jmp   n293_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n294_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n292_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n295_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n293_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj1$2F2_ω
                                                                                        jmp   proc_$disj1$2F2_ω
n293_op11_β:
                                                                                        jmp   proc_$disj1$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n294_call_proc_staged_α:
                        mov              qword ptr [rbp + 448], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx327_20
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx327_21
.Lx327_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx327_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx327_22
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx327_23
.Lx327_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx327_23:
                        mov              edi, 15
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx327_1
                        lea              rcx, [rip + .Lx327_3]
                        lea              rdx, [rip + .Lx327_4]
                                                                                        jmp   rax
.Lx327_3:
                        mov              qword ptr [rbp + 456], rsp
                        mov              rax, qword ptr [rbp + 448]
                        test             rax, rax
                                                                                        jne   .Lx327_5
                        mov              qword ptr [rbp + 448], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx327_2
.Lx327_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx327_2
.Lx327_4:
                        mov              rax, qword ptr [rbp + 448]
                        test             rax, rax
                                                                                        jne   .Lx327_6
                        mov              qword ptr [rbp + 448], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx327_2
.Lx327_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx327_2
.Lx327_1:
                        call             rt_faildescr@PLT
.Lx327_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n284_op11_α
                                                                                        jmp   n296_suspend_α
n294_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 456]
                                                                                        jmp   qword ptr [rsp]
.Lx327_0:
                        .quad            .Lx327_0_s
.Lx327_0_s:
                        .string          "gvar/2"
#-----------------------------------------------------------------------------------------------------------------------
n295_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n297_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n296_suspend_α:
                        lea              rax, [rip + n296_suspend_β]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F2_γ
n296_suspend_β:
                                                                                        jmp   n294_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n297_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 224]
                        lea              r8, [rbp + 224]
.Lx332_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx332_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_41
                        cmp              esi, 1
                                                                                        jne   .Lx332_55
                        mov              r8, rax
                                                                                        jmp   .Lx332_40
.Lx332_55:
                        cmp              esi, 2
                                                                                        jne   .Lx332_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx332_41
                        mov              r8, rax
                                                                                        jmp   .Lx332_40
.Lx332_56:
                        cmp              eax, 13
                                                                                        jne   .Lx332_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_41
                        cmp              rax, r8
                                                                                        je    .Lx332_41
                        mov              r8, rax
                                                                                        jmp   .Lx332_40
.Lx332_41:
                        lea              r9, [rbp + 240]
.Lx332_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx332_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_43
                        cmp              esi, 1
                                                                                        jne   .Lx332_57
                        mov              r9, rax
                                                                                        jmp   .Lx332_42
.Lx332_57:
                        cmp              esi, 2
                                                                                        jne   .Lx332_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx332_43
                        mov              r9, rax
                                                                                        jmp   .Lx332_42
.Lx332_58:
                        cmp              eax, 13
                                                                                        jne   .Lx332_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx332_43
                        cmp              rax, r9
                                                                                        je    .Lx332_43
                        mov              r9, rax
                                                                                        jmp   .Lx332_42
.Lx332_43:
                        cmp              r8, r9
                                                                                        je    .Lx332_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx332_44
                        cmp              eax, 99
                                                                                        je    .Lx332_44
                        cmp              eax, 13
                                                                                        jne   .Lx332_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx332_44
                                                                                        jmp   .Lx332_45
.Lx332_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx332_53
                        cmp              eax, 99
                                                                                        je    .Lx332_53
                        cmp              eax, 13
                                                                                        jne   .Lx332_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx332_53
                                                                                        jmp   .Lx332_46
.Lx332_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx332_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx332_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx332_51
.Lx332_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx332_47
                        cmp              eax, 99
                                                                                        je    .Lx332_47
                        cmp              eax, 13
                                                                                        jne   .Lx332_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx332_47
                                                                                        jmp   .Lx332_48
.Lx332_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx332_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx332_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx332_51
.Lx332_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx332_49
                        cmp              edx, 14
                                                                                        je    .Lx332_53
                                                                                        jmp   .Lx332_52
.Lx332_49:
                        cmp              edx, 14
                                                                                        je    .Lx332_52
                        cmp              ecx, 7
                                                                                        je    .Lx332_53
                        cmp              edx, 7
                                                                                        je    .Lx332_53
                        cmp              ecx, 6
                                                                                        jne   .Lx332_50
                        cmp              edx, 6
                                                                                        jne   .Lx332_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx332_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx332_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx332_51
                                                                                        jmp   .Lx332_52
.Lx332_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx332_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx332_53
.Lx332_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx332_54
.Lx332_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx332_54
.Lx332_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx332_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n293_op11_α
                                                                                        jmp   n298_var_ref_α
n297_op11_β:
                                                                                        jmp   n293_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n299_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:
                        mov              qword ptr [rbp + 192], 6
                        mov              rax, qword ptr [rip + .Lx335_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n300_op11_α
.Lx335_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n300_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n293_op11_α
                                                                                        jmp   n301_suspend_α
n300_op11_β:
                                                                                        jmp   n293_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n301_suspend_α:
                        lea              rax, [rip + n301_suspend_β]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj1$2F2_γ
n301_suspend_β:
                                                                                        jmp   n293_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F2_β:
                                                                                        jmp   qword ptr [rbp + 672]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj1$2F2_res]
                        push             rax
                        mov              rax, [rbp + 728]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj1$2F2_ω:
                        mov              rax, [rbp + 736]
                        lea              rsp, [rbp + 752]
                        mov              rbp, [rbp + 744]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_go_other$2F0_α
proc_go_other$2F0_α:
                        .global          proc_go_other$2F0_α
                        .global          proc_go_other$2F0_β
                        .global          proc_go_other$2F0_γ
                        .global          proc_go_other$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 240
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_go_other$2F0_α_body:
                        lea              rax, [rip + n345_suspend_β]
                        mov              qword ptr [rbp + 240], rax
#-----------------------------------------------------------------------------------------------------------------------
n339_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx346_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx346_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx346_101
.Lx346_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx346_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other$2F0_ω
                                                                                        jmp   n340_var_ref_α
n339_op11_β:
                                                                                        jmp   proc_go_other$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n340_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n341_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n341_call_proc_staged_α:
                        mov              qword ptr [rbp + 192], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx350_20
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx350_21
.Lx350_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        call             rt_arg_stage@PLT
.Lx350_21:
                        mov              edi, 7
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx350_1
                        lea              rcx, [rip + .Lx350_3]
                        lea              rdx, [rip + .Lx350_4]
                                                                                        jmp   rax
.Lx350_3:
                        mov              qword ptr [rbp + 200], rsp
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx350_5
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx350_2
.Lx350_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx350_2
.Lx350_4:
                        mov              rax, qword ptr [rbp + 192]
                        test             rax, rax
                                                                                        jne   .Lx350_6
                        mov              qword ptr [rbp + 192], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx350_2
.Lx350_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx350_2
.Lx350_1:
                        call             rt_faildescr@PLT
.Lx350_2:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n343_op11_α
                                                                                        jmp   n342_var_ref_α
n341_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 200]
                                                                                        jmp   qword ptr [rsp]
.Lx350_0:
                        .quad            .Lx350_0_s
.Lx350_0_s:
                        .string          "argument_list/1"
#-----------------------------------------------------------------------------------------------------------------------
n342_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 256]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n344_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n343_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other$2F0_ω
                                                                                        jmp   proc_go_other$2F0_ω
n343_op11_β:
                                                                                        jmp   proc_go_other$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n344_call_proc_staged_α:
                        mov              qword ptr [rbp + 112], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx355_20
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx355_21
.Lx355_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        call             rt_arg_stage@PLT
.Lx355_21:
                        mov              edi, 13
                        mov              esi, 1
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx355_1
                        lea              rcx, [rip + .Lx355_3]
                        lea              rdx, [rip + .Lx355_4]
                                                                                        jmp   rax
.Lx355_3:
                        mov              qword ptr [rbp + 120], rsp
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx355_5
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx355_2
.Lx355_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx355_2
.Lx355_4:
                        mov              rax, qword ptr [rbp + 112]
                        test             rax, rax
                                                                                        jne   .Lx355_6
                        mov              qword ptr [rbp + 112], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx355_2
.Lx355_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx355_2
.Lx355_1:
                        call             rt_faildescr@PLT
.Lx355_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n341_call_proc_staged_β
                                                                                        jmp   n345_suspend_α
n344_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 120]
                                                                                        jmp   qword ptr [rsp]
.Lx355_0:
                        .quad            .Lx355_0_s
.Lx355_0_s:
                        .string          "go_other1/1"
#-----------------------------------------------------------------------------------------------------------------------
n345_suspend_α:
                        lea              rax, [rip + n345_suspend_β]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_go_other$2F0_γ
n345_suspend_β:
                                                                                        jmp   n344_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other$2F0_β:
                                                                                        jmp   qword ptr [rbp + 240]
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_go_other$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_$disj0$2F2_α
proc_$disj0$2F2_α:
                        .global          proc_$disj0$2F2_α
                        .global          proc_$disj0$2F2_β
                        .global          proc_$disj0$2F2_γ
                        .global          proc_$disj0$2F2_ω
                        sub              rsp, 736
                        mov              [rsp + 712], rcx
                        mov              [rsp + 720], rdx
                        mov              [rsp + 728], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 656
                        mov              edx, 704
                        call             rt_jmp_frame_lexprep2@PLT
proc_$disj0$2F2_α_body:
                        lea              rax, [rip + n378_suspend_β]
                        mov              qword ptr [rbp + 656], rax
#-----------------------------------------------------------------------------------------------------------------------
n358_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx380_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx380_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx380_101
.Lx380_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx380_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F2_ω
                                                                                        jmp   n359_var_ref_α
n358_op11_β:
                                                                                        jmp   proc_$disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n359_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                                                                                        jmp   n360_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n360_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                                                                                        jmp   n361_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n361_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 592]
                        lea              r8, [rbp + 592]
.Lx385_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx385_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx385_41
                        cmp              esi, 1
                                                                                        jne   .Lx385_55
                        mov              r8, rax
                                                                                        jmp   .Lx385_40
.Lx385_55:
                        cmp              esi, 2
                                                                                        jne   .Lx385_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx385_41
                        mov              r8, rax
                                                                                        jmp   .Lx385_40
.Lx385_56:
                        cmp              eax, 13
                                                                                        jne   .Lx385_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx385_41
                        cmp              rax, r8
                                                                                        je    .Lx385_41
                        mov              r8, rax
                                                                                        jmp   .Lx385_40
.Lx385_41:
                        lea              r9, [rbp + 608]
.Lx385_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx385_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx385_43
                        cmp              esi, 1
                                                                                        jne   .Lx385_57
                        mov              r9, rax
                                                                                        jmp   .Lx385_42
.Lx385_57:
                        cmp              esi, 2
                                                                                        jne   .Lx385_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx385_43
                        mov              r9, rax
                                                                                        jmp   .Lx385_42
.Lx385_58:
                        cmp              eax, 13
                                                                                        jne   .Lx385_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx385_43
                        cmp              rax, r9
                                                                                        je    .Lx385_43
                        mov              r9, rax
                                                                                        jmp   .Lx385_42
.Lx385_43:
                        cmp              r8, r9
                                                                                        je    .Lx385_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx385_44
                        cmp              eax, 99
                                                                                        je    .Lx385_44
                        cmp              eax, 13
                                                                                        jne   .Lx385_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx385_44
                                                                                        jmp   .Lx385_45
.Lx385_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx385_53
                        cmp              eax, 99
                                                                                        je    .Lx385_53
                        cmp              eax, 13
                                                                                        jne   .Lx385_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx385_53
                                                                                        jmp   .Lx385_46
.Lx385_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx385_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx385_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx385_51
.Lx385_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx385_47
                        cmp              eax, 99
                                                                                        je    .Lx385_47
                        cmp              eax, 13
                                                                                        jne   .Lx385_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx385_47
                                                                                        jmp   .Lx385_48
.Lx385_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx385_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx385_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx385_51
.Lx385_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx385_49
                        cmp              edx, 14
                                                                                        je    .Lx385_53
                                                                                        jmp   .Lx385_52
.Lx385_49:
                        cmp              edx, 14
                                                                                        je    .Lx385_52
                        cmp              ecx, 7
                                                                                        je    .Lx385_53
                        cmp              edx, 7
                                                                                        je    .Lx385_53
                        cmp              ecx, 6
                                                                                        jne   .Lx385_50
                        cmp              edx, 6
                                                                                        jne   .Lx385_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx385_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx385_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx385_51
                                                                                        jmp   .Lx385_52
.Lx385_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx385_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx385_53
.Lx385_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx385_54
.Lx385_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx385_54
.Lx385_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx385_54:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              eax, 99
                                                                                        je    n363_op11_α
                                                                                        jmp   n362_var_ref_α
n361_op11_β:
                                                                                        jmp   n363_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n362_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n364_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n363_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F2_ω
                                                                                        jmp   n365_var_ref_α
n363_op11_β:
                                                                                        jmp   proc_$disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                                                                                        jmp   n366_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n365_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n367_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n366_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        lea              r8, [rbp + 512]
.Lx393_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx393_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_41
                        cmp              esi, 1
                                                                                        jne   .Lx393_55
                        mov              r8, rax
                                                                                        jmp   .Lx393_40
.Lx393_55:
                        cmp              esi, 2
                                                                                        jne   .Lx393_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx393_41
                        mov              r8, rax
                                                                                        jmp   .Lx393_40
.Lx393_56:
                        cmp              eax, 13
                                                                                        jne   .Lx393_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_41
                        cmp              rax, r8
                                                                                        je    .Lx393_41
                        mov              r8, rax
                                                                                        jmp   .Lx393_40
.Lx393_41:
                        lea              r9, [rbp + 528]
.Lx393_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx393_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_43
                        cmp              esi, 1
                                                                                        jne   .Lx393_57
                        mov              r9, rax
                                                                                        jmp   .Lx393_42
.Lx393_57:
                        cmp              esi, 2
                                                                                        jne   .Lx393_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx393_43
                        mov              r9, rax
                                                                                        jmp   .Lx393_42
.Lx393_58:
                        cmp              eax, 13
                                                                                        jne   .Lx393_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx393_43
                        cmp              rax, r9
                                                                                        je    .Lx393_43
                        mov              r9, rax
                                                                                        jmp   .Lx393_42
.Lx393_43:
                        cmp              r8, r9
                                                                                        je    .Lx393_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_44
                        cmp              eax, 99
                                                                                        je    .Lx393_44
                        cmp              eax, 13
                                                                                        jne   .Lx393_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx393_44
                                                                                        jmp   .Lx393_45
.Lx393_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_53
                        cmp              eax, 99
                                                                                        je    .Lx393_53
                        cmp              eax, 13
                                                                                        jne   .Lx393_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx393_53
                                                                                        jmp   .Lx393_46
.Lx393_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx393_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx393_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx393_51
.Lx393_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx393_47
                        cmp              eax, 99
                                                                                        je    .Lx393_47
                        cmp              eax, 13
                                                                                        jne   .Lx393_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx393_47
                                                                                        jmp   .Lx393_48
.Lx393_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx393_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx393_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx393_51
.Lx393_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx393_49
                        cmp              edx, 14
                                                                                        je    .Lx393_53
                                                                                        jmp   .Lx393_52
.Lx393_49:
                        cmp              edx, 14
                                                                                        je    .Lx393_52
                        cmp              ecx, 7
                                                                                        je    .Lx393_53
                        cmp              edx, 7
                                                                                        je    .Lx393_53
                        cmp              ecx, 6
                                                                                        jne   .Lx393_50
                        cmp              edx, 6
                                                                                        jne   .Lx393_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx393_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx393_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx393_51
                                                                                        jmp   .Lx393_52
.Lx393_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx393_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx393_53
.Lx393_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx393_54
.Lx393_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx393_54
.Lx393_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx393_54:
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n363_op11_α
                                                                                        jmp   n368_lit_string_α
n366_op11_β:
                                                                                        jmp   n363_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n369_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:
                        mov              qword ptr [rbp + 480], 1
                        mov              rax, qword ptr [rip + .Lx396_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n370_var_ref_α
.Lx396_0:
                        .quad            .Lx396_0_s
.Lx396_0_s:
                        .string          "gvar"
#-----------------------------------------------------------------------------------------------------------------------
n369_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 224]
                        lea              r8, [rbp + 224]
.Lx397_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx397_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx397_41
                        cmp              esi, 1
                                                                                        jne   .Lx397_55
                        mov              r8, rax
                                                                                        jmp   .Lx397_40
.Lx397_55:
                        cmp              esi, 2
                                                                                        jne   .Lx397_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx397_41
                        mov              r8, rax
                                                                                        jmp   .Lx397_40
.Lx397_56:
                        cmp              eax, 13
                                                                                        jne   .Lx397_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx397_41
                        cmp              rax, r8
                                                                                        je    .Lx397_41
                        mov              r8, rax
                                                                                        jmp   .Lx397_40
.Lx397_41:
                        lea              r9, [rbp + 240]
.Lx397_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx397_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx397_43
                        cmp              esi, 1
                                                                                        jne   .Lx397_57
                        mov              r9, rax
                                                                                        jmp   .Lx397_42
.Lx397_57:
                        cmp              esi, 2
                                                                                        jne   .Lx397_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx397_43
                        mov              r9, rax
                                                                                        jmp   .Lx397_42
.Lx397_58:
                        cmp              eax, 13
                                                                                        jne   .Lx397_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx397_43
                        cmp              rax, r9
                                                                                        je    .Lx397_43
                        mov              r9, rax
                                                                                        jmp   .Lx397_42
.Lx397_43:
                        cmp              r8, r9
                                                                                        je    .Lx397_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx397_44
                        cmp              eax, 99
                                                                                        je    .Lx397_44
                        cmp              eax, 13
                                                                                        jne   .Lx397_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx397_44
                                                                                        jmp   .Lx397_45
.Lx397_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx397_53
                        cmp              eax, 99
                                                                                        je    .Lx397_53
                        cmp              eax, 13
                                                                                        jne   .Lx397_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx397_53
                                                                                        jmp   .Lx397_46
.Lx397_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx397_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx397_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx397_51
.Lx397_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx397_47
                        cmp              eax, 99
                                                                                        je    .Lx397_47
                        cmp              eax, 13
                                                                                        jne   .Lx397_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx397_47
                                                                                        jmp   .Lx397_48
.Lx397_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx397_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx397_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx397_51
.Lx397_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx397_49
                        cmp              edx, 14
                                                                                        je    .Lx397_53
                                                                                        jmp   .Lx397_52
.Lx397_49:
                        cmp              edx, 14
                                                                                        je    .Lx397_52
                        cmp              ecx, 7
                                                                                        je    .Lx397_53
                        cmp              edx, 7
                                                                                        je    .Lx397_53
                        cmp              ecx, 6
                                                                                        jne   .Lx397_50
                        cmp              edx, 6
                                                                                        jne   .Lx397_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx397_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx397_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx397_51
                                                                                        jmp   .Lx397_52
.Lx397_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx397_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx397_53
.Lx397_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx397_54
.Lx397_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx397_54
.Lx397_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx397_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n372_op11_α
                                                                                        jmp   n371_var_ref_α
n369_op11_β:
                                                                                        jmp   n372_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 688]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n373_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n371_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n374_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n372_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_$disj0$2F2_ω
                                                                                        jmp   proc_$disj0$2F2_ω
n372_op11_β:
                                                                                        jmp   proc_$disj0$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n373_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n375_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n374_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 672]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n376_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n375_op11_α:
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n363_op11_α
                                                                                        jmp   n377_op11_α
n375_op11_β:
                                                                                        jmp   n363_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n376_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        lea              r8, [rbp + 144]
.Lx408_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx408_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx408_41
                        cmp              esi, 1
                                                                                        jne   .Lx408_55
                        mov              r8, rax
                                                                                        jmp   .Lx408_40
.Lx408_55:
                        cmp              esi, 2
                                                                                        jne   .Lx408_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx408_41
                        mov              r8, rax
                                                                                        jmp   .Lx408_40
.Lx408_56:
                        cmp              eax, 13
                                                                                        jne   .Lx408_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx408_41
                        cmp              rax, r8
                                                                                        je    .Lx408_41
                        mov              r8, rax
                                                                                        jmp   .Lx408_40
.Lx408_41:
                        lea              r9, [rbp + 160]
.Lx408_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx408_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx408_43
                        cmp              esi, 1
                                                                                        jne   .Lx408_57
                        mov              r9, rax
                                                                                        jmp   .Lx408_42
.Lx408_57:
                        cmp              esi, 2
                                                                                        jne   .Lx408_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx408_43
                        mov              r9, rax
                                                                                        jmp   .Lx408_42
.Lx408_58:
                        cmp              eax, 13
                                                                                        jne   .Lx408_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx408_43
                        cmp              rax, r9
                                                                                        je    .Lx408_43
                        mov              r9, rax
                                                                                        jmp   .Lx408_42
.Lx408_43:
                        cmp              r8, r9
                                                                                        je    .Lx408_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx408_44
                        cmp              eax, 99
                                                                                        je    .Lx408_44
                        cmp              eax, 13
                                                                                        jne   .Lx408_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx408_44
                                                                                        jmp   .Lx408_45
.Lx408_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx408_53
                        cmp              eax, 99
                                                                                        je    .Lx408_53
                        cmp              eax, 13
                                                                                        jne   .Lx408_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx408_53
                                                                                        jmp   .Lx408_46
.Lx408_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx408_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx408_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx408_51
.Lx408_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx408_47
                        cmp              eax, 99
                                                                                        je    .Lx408_47
                        cmp              eax, 13
                                                                                        jne   .Lx408_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx408_47
                                                                                        jmp   .Lx408_48
.Lx408_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx408_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx408_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx408_51
.Lx408_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx408_49
                        cmp              edx, 14
                                                                                        je    .Lx408_53
                                                                                        jmp   .Lx408_52
.Lx408_49:
                        cmp              edx, 14
                                                                                        je    .Lx408_52
                        cmp              ecx, 7
                                                                                        je    .Lx408_53
                        cmp              edx, 7
                                                                                        je    .Lx408_53
                        cmp              ecx, 6
                                                                                        jne   .Lx408_50
                        cmp              edx, 6
                                                                                        jne   .Lx408_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx408_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx408_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx408_51
                                                                                        jmp   .Lx408_52
.Lx408_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx408_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx408_53
.Lx408_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx408_54
.Lx408_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx408_54
.Lx408_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx408_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n372_op11_α
                                                                                        jmp   n378_suspend_α
n376_op11_β:
                                                                                        jmp   n372_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n377_op11_α:
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        .section         .rodata
.Lrkfn410:              .string          "$retract"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn410]
                        lea              rsi, [rbp + 352]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n363_op11_α
                                                                                        jmp   n379_suspend_α
n377_op11_β:
                                                                                        jmp   n363_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n378_suspend_α:
                        lea              rax, [rip + n378_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F2_γ
n378_suspend_β:
                                                                                        jmp   n372_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n379_suspend_α:
                        lea              rax, [rip + n379_suspend_β]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_$disj0$2F2_γ
n379_suspend_β:
                                                                                        jmp   n363_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F2_β:
                                                                                        jmp   qword ptr [rbp + 656]
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_$disj0$2F2_res]
                        push             rax
                        mov              rax, [rbp + 712]
                        mov              rbp, [rbp + 728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_$disj0$2F2_ω:
                        mov              rax, [rbp + 720]
                        lea              rsp, [rbp + 736]
                        mov              rbp, [rbp + 728]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_argument_list$2F1_α
proc_argument_list$2F1_α:
                        .global          proc_argument_list$2F1_α
                        .global          proc_argument_list$2F1_β
                        .global          proc_argument_list$2F1_γ
                        .global          proc_argument_list$2F1_ω
                        sub              rsp, 640
                        mov              [rsp + 616], rcx
                        mov              [rsp + 624], rdx
                        mov              [rsp + 632], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 544
                        mov              edx, 608
                        call             rt_jmp_frame_lexprep2@PLT
proc_argument_list$2F1_α_body:
                        lea              rax, [rip + n431_suspend_β]
                        mov              qword ptr [rbp + 544], rax
#-----------------------------------------------------------------------------------------------------------------------
n415_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx432_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx432_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx432_101
.Lx432_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx432_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_argument_list$2F1_ω
                                                                                        jmp   n416_var_ref_α
n415_op11_β:
                                                                                        jmp   proc_argument_list$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n416_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                                                                                        jmp   n417_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n418_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n418_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 480]
                        lea              r8, [rbp + 480]
.Lx437_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx437_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx437_41
                        cmp              esi, 1
                                                                                        jne   .Lx437_55
                        mov              r8, rax
                                                                                        jmp   .Lx437_40
.Lx437_55:
                        cmp              esi, 2
                                                                                        jne   .Lx437_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx437_41
                        mov              r8, rax
                                                                                        jmp   .Lx437_40
.Lx437_56:
                        cmp              eax, 13
                                                                                        jne   .Lx437_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx437_41
                        cmp              rax, r8
                                                                                        je    .Lx437_41
                        mov              r8, rax
                                                                                        jmp   .Lx437_40
.Lx437_41:
                        lea              r9, [rbp + 496]
.Lx437_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx437_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx437_43
                        cmp              esi, 1
                                                                                        jne   .Lx437_57
                        mov              r9, rax
                                                                                        jmp   .Lx437_42
.Lx437_57:
                        cmp              esi, 2
                                                                                        jne   .Lx437_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx437_43
                        mov              r9, rax
                                                                                        jmp   .Lx437_42
.Lx437_58:
                        cmp              eax, 13
                                                                                        jne   .Lx437_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx437_43
                        cmp              rax, r9
                                                                                        je    .Lx437_43
                        mov              r9, rax
                                                                                        jmp   .Lx437_42
.Lx437_43:
                        cmp              r8, r9
                                                                                        je    .Lx437_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx437_44
                        cmp              eax, 99
                                                                                        je    .Lx437_44
                        cmp              eax, 13
                                                                                        jne   .Lx437_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx437_44
                                                                                        jmp   .Lx437_45
.Lx437_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx437_53
                        cmp              eax, 99
                                                                                        je    .Lx437_53
                        cmp              eax, 13
                                                                                        jne   .Lx437_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx437_53
                                                                                        jmp   .Lx437_46
.Lx437_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx437_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx437_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx437_51
.Lx437_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx437_47
                        cmp              eax, 99
                                                                                        je    .Lx437_47
                        cmp              eax, 13
                                                                                        jne   .Lx437_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx437_47
                                                                                        jmp   .Lx437_48
.Lx437_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx437_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx437_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx437_51
.Lx437_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx437_49
                        cmp              edx, 14
                                                                                        je    .Lx437_53
                                                                                        jmp   .Lx437_52
.Lx437_49:
                        cmp              edx, 14
                                                                                        je    .Lx437_52
                        cmp              ecx, 7
                                                                                        je    .Lx437_53
                        cmp              edx, 7
                                                                                        je    .Lx437_53
                        cmp              ecx, 6
                                                                                        jne   .Lx437_50
                        cmp              edx, 6
                                                                                        jne   .Lx437_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx437_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx437_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx437_51
                                                                                        jmp   .Lx437_52
.Lx437_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx437_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx437_53
.Lx437_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx437_54
.Lx437_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx437_54
.Lx437_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx437_54:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              eax, 99
                                                                                        je    n420_op11_α
                                                                                        jmp   n419_lit_string_α
n418_op11_β:
                                                                                        jmp   n420_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n419_lit_string_α:
                        mov              qword ptr [rbp + 448], 1
                        mov              rax, qword ptr [rip + .Lx438_0]
                        mov              qword ptr [rbp + 456], rax
                                                                                        jmp   n421_lit_string_α
.Lx438_0:
                        .quad            .Lx438_0_s
.Lx438_0_s:
                        .string          "argv"
#-----------------------------------------------------------------------------------------------------------------------
n420_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_argument_list$2F1_ω
                                                                                        jmp   proc_argument_list$2F1_ω
n420_op11_β:
                                                                                        jmp   proc_argument_list$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n421_lit_string_α:
                        mov              qword ptr [rbp + 368], 1
                        mov              rax, qword ptr [rip + .Lx440_0]
                        mov              qword ptr [rbp + 376], rax
                                                                                        jmp   n422_var_ref_α
.Lx440_0:
                        .quad            .Lx440_0_s
.Lx440_0_s:
                        .string          "."
#-----------------------------------------------------------------------------------------------------------------------
n422_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n423_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n423_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n424_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n424_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    proc_argument_list$2F1_ω
                                                                                        jmp   n425_op11_α
n424_op11_β:
                                                                                        jmp   proc_argument_list$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n425_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 2
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n420_op11_α
                                                                                        jmp   n426_call_proc_staged_α
n425_op11_β:
                                                                                        jmp   n420_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n426_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx448_20
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx448_21
.Lx448_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx448_21:
                        mov              rdi, qword ptr [rip + .Lx448_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx448_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx448_3]
                        lea              rdx, [rip + .Lx448_4]
                                                                                        jmp   rax
.Lx448_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx448_2
.Lx448_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx448_2
.Lx448_1:
                        call             rt_faildescr@PLT
.Lx448_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n420_op11_α
                                                                                        jmp   n427_var_ref_α
n426_call_proc_staged_β:
                                                                                        jmp   n420_op11_α
.Lx448_0:
                        .quad            .Lx448_0_s
.Lx448_0_s:
                        .string          "unix/1"
#-----------------------------------------------------------------------------------------------------------------------
n427_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 560]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n428_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n428_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n429_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n429_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx454_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx454_21
.Lx454_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx454_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx454_22
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx454_23
.Lx454_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx454_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx454_1
                        lea              rcx, [rip + .Lx454_3]
                        lea              rdx, [rip + .Lx454_4]
                                                                                        jmp   rax
.Lx454_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx454_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx454_2
.Lx454_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx454_2
.Lx454_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx454_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx454_2
.Lx454_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx454_2
.Lx454_1:
                        call             rt_faildescr@PLT
.Lx454_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n426_call_proc_staged_β
                                                                                        jmp   n430_op19_α
n429_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx454_0:
                        .quad            .Lx454_0_s
.Lx454_0_s:
                        .string          "delete_flags/2"
#-----------------------------------------------------------------------------------------------------------------------
n430_op19_α:
                                                                                        jmp   n431_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n431_suspend_α:
                        lea              rax, [rip + n431_suspend_β]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_argument_list$2F1_γ
n431_suspend_β:
                                                                                        jmp   n429_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_argument_list$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_argument_list$2F1_β:
                                                                                        jmp   qword ptr [rbp + 544]
#-----------------------------------------------------------------------------------------------------------------------
proc_argument_list$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_argument_list$2F1_res]
                        push             rax
                        mov              rax, [rbp + 616]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_argument_list$2F1_ω:
                        mov              rax, [rbp + 624]
                        lea              rsp, [rbp + 640]
                        mov              rbp, [rbp + 632]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prolog_name$2F1_α
proc_prolog_name$2F1_α:
                        .global          proc_prolog_name$2F1_α
                        .global          proc_prolog_name$2F1_β
                        .global          proc_prolog_name$2F1_γ
                        .global          proc_prolog_name$2F1_ω
                        sub              rsp, 240
                        mov              [rsp + 216], rcx
                        mov              [rsp + 224], rdx
                        mov              [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 208
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
proc_prolog_name$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n458_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx465_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx465_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx465_101
.Lx465_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx465_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_name$2F1_ω
                                                                                        jmp   n459_var_ref_α
n458_op11_β:
                                                                                        jmp   proc_prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n459_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n460_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n460_lit_string_α:
                        mov              qword ptr [rbp + 192], 1
                        mov              rax, qword ptr [rip + .Lx468_0]
                        mov              qword ptr [rbp + 200], rax
                                                                                        jmp   n461_op11_α
.Lx468_0:
                        .quad            .Lx468_0_s
.Lx468_0_s:
                        .string          "SWI Prolog"
#-----------------------------------------------------------------------------------------------------------------------
n461_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        mov              rsi, qword ptr [rip + .Lx469_2]
                                                                                        jmp   .Lx469_3
.Lx469_2:
                        .quad            .Lx469_2_s
.Lx469_2_s:
                        .string          "SWI Prolog"
.Lx469_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n463_op11_α
                                                                                        jmp   n462_move_label_α
n461_op11_β:
                                                                                        jmp   n463_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n462_move_label_α:
                        lea              rax, [rip + n463_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_prolog_name$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n463_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_name$2F1_ω
                                                                                        jmp   proc_prolog_name$2F1_ω
n463_op11_β:
                                                                                        jmp   proc_prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n464_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n464_disjunction_β:
                                                                                        jmp   proc_prolog_name$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_β:
                                                                                        jmp   n464_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 216]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_ω:
                        mov              rax, [rbp + 224]
                        lea              rsp, [rbp + 240]
                        mov              rbp, [rbp + 232]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_name$2F1_dcα:
                        pop              r11
                        sub              rsp, 256
                        mov              qword ptr [rsp + 232], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 208], r11
                        lea              rax, [rip + .Lx475_2]
                        mov              qword ptr [rbp + 216], rax
                        lea              rax, [rip + .Lx475_3]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 208
                        mov              edx, 208
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_prolog_name$2F1_α_body
.Lx475_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx475_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -240
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_pj_dir_0$2F0_α
proc_pj_dir_0$2F0_α:
                        .global          proc_pj_dir_0$2F0_α
                        .global          proc_pj_dir_0$2F0_β
                        .global          proc_pj_dir_0$2F0_γ
                        .global          proc_pj_dir_0$2F0_ω
                        sub              rsp, 304
                        mov              [rsp + 280], rcx
                        mov              [rsp + 288], rdx
                        mov              [rsp + 296], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 256
                        mov              edx, 272
                        call             rt_jmp_frame_lexprep2@PLT
proc_pj_dir_0$2F0_α_body:
                        lea              rax, [rip + n483_suspend_β]
                        mov              qword ptr [rbp + 256], rax
#-----------------------------------------------------------------------------------------------------------------------
n476_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx484_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx484_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx484_101
.Lx484_100:
                        lea              rdi, [rbp + 32]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx484_101:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   n477_lit_string_α
n476_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n477_lit_string_α:
                        mov              qword ptr [rbp + 240], 1
                        mov              rax, qword ptr [rip + .Lx485_0]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n478_lit_string_α
.Lx485_0:
                        .quad            .Lx485_0_s
.Lx485_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n478_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx486_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n479_lit_integer_α
.Lx486_0:
                        .quad            .Lx486_0_s
.Lx486_0_s:
                        .string          "gvar"
#-----------------------------------------------------------------------------------------------------------------------
n479_lit_integer_α:
                        mov              qword ptr [rbp + 144], 6
                        mov              rax, qword ptr [rip + .Lx487_0]
                        mov              qword ptr [rbp + 152], rax
                                                                                        jmp   n480_op11_α
.Lx487_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n480_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              eax, 99
                                                                                        je    n482_op11_α
                                                                                        jmp   n481_call_proc_staged_α
n480_op11_β:
                                                                                        jmp   n482_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n481_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx490_20
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx490_21
.Lx490_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        call             rt_arg_stage@PLT
.Lx490_21:
                        mov              rdi, qword ptr [rip + .Lx490_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx490_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx490_3]
                        lea              rdx, [rip + .Lx490_4]
                                                                                        jmp   rax
.Lx490_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx490_2
.Lx490_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx490_2
.Lx490_1:
                        call             rt_faildescr@PLT
.Lx490_2:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    n482_op11_α
                                                                                        jmp   n483_suspend_α
n481_call_proc_staged_β:
                                                                                        jmp   n482_op11_α
.Lx490_0:
                        .quad            .Lx490_0_s
.Lx490_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
n482_op11_α:
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_pj_dir_0$2F0_ω
                                                                                        jmp   proc_pj_dir_0$2F0_ω
n482_op11_β:
                                                                                        jmp   proc_pj_dir_0$2F0_ω
#-----------------------------------------------------------------------------------------------------------------------
n483_suspend_α:
                        lea              rax, [rip + n483_suspend_β]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 16]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 24]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_pj_dir_0$2F0_γ
n483_suspend_β:
                                                                                        jmp   n481_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_β:
                                                                                        jmp   qword ptr [rbp + 256]
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_pj_dir_0$2F0_res]
                        push             rax
                        mov              rax, [rbp + 280]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_pj_dir_0$2F0_ω:
                        mov              rax, [rbp + 288]
                        lea              rsp, [rbp + 304]
                        mov              rbp, [rbp + 296]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_prolog_date$2F1_α
proc_prolog_date$2F1_α:
                        .global          proc_prolog_date$2F1_α
                        .global          proc_prolog_date$2F1_β
                        .global          proc_prolog_date$2F1_γ
                        .global          proc_prolog_date$2F1_ω
                        sub              rsp, 352
                        mov              [rsp + 328], rcx
                        mov              [rsp + 336], rdx
                        mov              [rsp + 344], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 288
                        mov              edx, 320
                        call             rt_jmp_frame_lexprep2@PLT
proc_prolog_date$2F1_α_body:
                        lea              rax, [rip + n502_suspend_β]
                        mov              qword ptr [rbp + 288], rax
#-----------------------------------------------------------------------------------------------------------------------
n494_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx503_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx503_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx503_101
.Lx503_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx503_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_date$2F1_ω
                                                                                        jmp   n495_var_ref_α
n494_op11_β:
                                                                                        jmp   proc_prolog_date$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n495_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n496_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n496_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n497_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n497_op11_α:
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 224]
                        lea              r8, [rbp + 224]
.Lx508_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx508_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx508_41
                        cmp              esi, 1
                                                                                        jne   .Lx508_55
                        mov              r8, rax
                                                                                        jmp   .Lx508_40
.Lx508_55:
                        cmp              esi, 2
                                                                                        jne   .Lx508_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx508_41
                        mov              r8, rax
                                                                                        jmp   .Lx508_40
.Lx508_56:
                        cmp              eax, 13
                                                                                        jne   .Lx508_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx508_41
                        cmp              rax, r8
                                                                                        je    .Lx508_41
                        mov              r8, rax
                                                                                        jmp   .Lx508_40
.Lx508_41:
                        lea              r9, [rbp + 240]
.Lx508_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx508_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx508_43
                        cmp              esi, 1
                                                                                        jne   .Lx508_57
                        mov              r9, rax
                                                                                        jmp   .Lx508_42
.Lx508_57:
                        cmp              esi, 2
                                                                                        jne   .Lx508_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx508_43
                        mov              r9, rax
                                                                                        jmp   .Lx508_42
.Lx508_58:
                        cmp              eax, 13
                                                                                        jne   .Lx508_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx508_43
                        cmp              rax, r9
                                                                                        je    .Lx508_43
                        mov              r9, rax
                                                                                        jmp   .Lx508_42
.Lx508_43:
                        cmp              r8, r9
                                                                                        je    .Lx508_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx508_44
                        cmp              eax, 99
                                                                                        je    .Lx508_44
                        cmp              eax, 13
                                                                                        jne   .Lx508_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx508_44
                                                                                        jmp   .Lx508_45
.Lx508_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx508_53
                        cmp              eax, 99
                                                                                        je    .Lx508_53
                        cmp              eax, 13
                                                                                        jne   .Lx508_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx508_53
                                                                                        jmp   .Lx508_46
.Lx508_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx508_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx508_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx508_51
.Lx508_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx508_47
                        cmp              eax, 99
                                                                                        je    .Lx508_47
                        cmp              eax, 13
                                                                                        jne   .Lx508_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx508_47
                                                                                        jmp   .Lx508_48
.Lx508_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx508_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx508_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx508_51
.Lx508_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx508_49
                        cmp              edx, 14
                                                                                        je    .Lx508_53
                                                                                        jmp   .Lx508_52
.Lx508_49:
                        cmp              edx, 14
                                                                                        je    .Lx508_52
                        cmp              ecx, 7
                                                                                        je    .Lx508_53
                        cmp              edx, 7
                                                                                        je    .Lx508_53
                        cmp              ecx, 6
                                                                                        jne   .Lx508_50
                        cmp              edx, 6
                                                                                        jne   .Lx508_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx508_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx508_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx508_51
                                                                                        jmp   .Lx508_52
.Lx508_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx508_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx508_53
.Lx508_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx508_54
.Lx508_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx508_54
.Lx508_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx508_54:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n499_op11_α
                                                                                        jmp   n498_lit_string_α
n497_op11_β:
                                                                                        jmp   n499_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n498_lit_string_α:
                        mov              qword ptr [rbp + 176], 1
                        mov              rax, qword ptr [rip + .Lx509_0]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n500_var_ref_α
.Lx509_0:
                        .quad            .Lx509_0_s
.Lx509_0_s:
                        .string          "compiled_at"
#-----------------------------------------------------------------------------------------------------------------------
n499_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_prolog_date$2F1_ω
                                                                                        jmp   proc_prolog_date$2F1_ω
n499_op11_β:
                                                                                        jmp   proc_prolog_date$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n500_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 304]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n501_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n501_call_proc_staged_α:
                        mov              qword ptr [rbp + 144], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx514_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx514_21
.Lx514_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx514_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx514_22
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx514_23
.Lx514_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        call             rt_arg_stage@PLT
.Lx514_23:
                        mov              edi, 2
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx514_1
                        lea              rcx, [rip + .Lx514_3]
                        lea              rdx, [rip + .Lx514_4]
                                                                                        jmp   rax
.Lx514_3:
                        mov              qword ptr [rbp + 152], rsp
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx514_5
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx514_2
.Lx514_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx514_2
.Lx514_4:
                        mov              rax, qword ptr [rbp + 144]
                        test             rax, rax
                                                                                        jne   .Lx514_6
                        mov              qword ptr [rbp + 144], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx514_2
.Lx514_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx514_2
.Lx514_1:
                        call             rt_faildescr@PLT
.Lx514_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n499_op11_α
                                                                                        jmp   n502_suspend_α
n501_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 152]
                                                                                        jmp   qword ptr [rsp]
.Lx514_0:
                        .quad            .Lx514_0_s
.Lx514_0_s:
                        .string          "current_prolog_flag/2"
#-----------------------------------------------------------------------------------------------------------------------
n502_suspend_α:
                        lea              rax, [rip + n502_suspend_β]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_prolog_date$2F1_γ
n502_suspend_β:
                                                                                        jmp   n501_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_β:
                                                                                        jmp   qword ptr [rbp + 288]
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_prolog_date$2F1_res]
                        push             rax
                        mov              rax, [rbp + 328]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_prolog_date$2F1_ω:
                        mov              rax, [rbp + 336]
                        lea              rsp, [rbp + 352]
                        mov              rbp, [rbp + 344]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_g_assign$2F2_α
proc_g_assign$2F2_α:
                        .global          proc_g_assign$2F2_α
                        .global          proc_g_assign$2F2_β
                        .global          proc_g_assign$2F2_γ
                        .global          proc_g_assign$2F2_ω
                        sub              rsp, 656
                        mov              [rsp + 632], rcx
                        mov              [rsp + 640], rdx
                        mov              [rsp + 648], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 560
                        mov              edx, 624
                        call             rt_jmp_frame_lexprep2@PLT
proc_g_assign$2F2_α_body:
                        lea              rax, [rip + n534_suspend_β]
                        mov              qword ptr [rbp + 560], rax
#-----------------------------------------------------------------------------------------------------------------------
n517_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx535_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx535_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx535_101
.Lx535_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx535_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_g_assign$2F2_ω
                                                                                        jmp   n518_var_ref_α
n517_op11_β:
                                                                                        jmp   proc_g_assign$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n518_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                                                                                        jmp   n519_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n519_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n520_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n520_op11_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 496]
                        lea              r8, [rbp + 496]
.Lx540_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx540_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx540_41
                        cmp              esi, 1
                                                                                        jne   .Lx540_55
                        mov              r8, rax
                                                                                        jmp   .Lx540_40
.Lx540_55:
                        cmp              esi, 2
                                                                                        jne   .Lx540_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx540_41
                        mov              r8, rax
                                                                                        jmp   .Lx540_40
.Lx540_56:
                        cmp              eax, 13
                                                                                        jne   .Lx540_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx540_41
                        cmp              rax, r8
                                                                                        je    .Lx540_41
                        mov              r8, rax
                                                                                        jmp   .Lx540_40
.Lx540_41:
                        lea              r9, [rbp + 512]
.Lx540_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx540_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx540_43
                        cmp              esi, 1
                                                                                        jne   .Lx540_57
                        mov              r9, rax
                                                                                        jmp   .Lx540_42
.Lx540_57:
                        cmp              esi, 2
                                                                                        jne   .Lx540_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx540_43
                        mov              r9, rax
                                                                                        jmp   .Lx540_42
.Lx540_58:
                        cmp              eax, 13
                                                                                        jne   .Lx540_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx540_43
                        cmp              rax, r9
                                                                                        je    .Lx540_43
                        mov              r9, rax
                                                                                        jmp   .Lx540_42
.Lx540_43:
                        cmp              r8, r9
                                                                                        je    .Lx540_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx540_44
                        cmp              eax, 99
                                                                                        je    .Lx540_44
                        cmp              eax, 13
                                                                                        jne   .Lx540_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx540_44
                                                                                        jmp   .Lx540_45
.Lx540_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx540_53
                        cmp              eax, 99
                                                                                        je    .Lx540_53
                        cmp              eax, 13
                                                                                        jne   .Lx540_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx540_53
                                                                                        jmp   .Lx540_46
.Lx540_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx540_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx540_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx540_51
.Lx540_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx540_47
                        cmp              eax, 99
                                                                                        je    .Lx540_47
                        cmp              eax, 13
                                                                                        jne   .Lx540_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx540_47
                                                                                        jmp   .Lx540_48
.Lx540_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx540_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx540_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx540_51
.Lx540_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx540_49
                        cmp              edx, 14
                                                                                        je    .Lx540_53
                                                                                        jmp   .Lx540_52
.Lx540_49:
                        cmp              edx, 14
                                                                                        je    .Lx540_52
                        cmp              ecx, 7
                                                                                        je    .Lx540_53
                        cmp              edx, 7
                                                                                        je    .Lx540_53
                        cmp              ecx, 6
                                                                                        jne   .Lx540_50
                        cmp              edx, 6
                                                                                        jne   .Lx540_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx540_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx540_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx540_51
                                                                                        jmp   .Lx540_52
.Lx540_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx540_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx540_53
.Lx540_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx540_54
.Lx540_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx540_54
.Lx540_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx540_54:
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              eax, 99
                                                                                        je    n522_op11_α
                                                                                        jmp   n521_var_ref_α
n520_op11_β:
                                                                                        jmp   n522_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n521_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n523_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n522_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_g_assign$2F2_ω
                                                                                        jmp   proc_g_assign$2F2_ω
n522_op11_β:
                                                                                        jmp   proc_g_assign$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n523_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n524_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n524_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx546_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx546_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        cmp              esi, 1
                                                                                        jne   .Lx546_55
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_55:
                        cmp              esi, 2
                                                                                        jne   .Lx546_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_56:
                        cmp              eax, 13
                                                                                        jne   .Lx546_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_41
                        cmp              rax, r8
                                                                                        je    .Lx546_41
                        mov              r8, rax
                                                                                        jmp   .Lx546_40
.Lx546_41:
                        lea              r9, [rbp + 432]
.Lx546_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx546_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        cmp              esi, 1
                                                                                        jne   .Lx546_57
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_57:
                        cmp              esi, 2
                                                                                        jne   .Lx546_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_58:
                        cmp              eax, 13
                                                                                        jne   .Lx546_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx546_43
                        cmp              rax, r9
                                                                                        je    .Lx546_43
                        mov              r9, rax
                                                                                        jmp   .Lx546_42
.Lx546_43:
                        cmp              r8, r9
                                                                                        je    .Lx546_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_44
                        cmp              eax, 99
                                                                                        je    .Lx546_44
                        cmp              eax, 13
                                                                                        jne   .Lx546_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx546_44
                                                                                        jmp   .Lx546_45
.Lx546_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_53
                        cmp              eax, 99
                                                                                        je    .Lx546_53
                        cmp              eax, 13
                                                                                        jne   .Lx546_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx546_53
                                                                                        jmp   .Lx546_46
.Lx546_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx546_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx546_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx546_51
.Lx546_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx546_47
                        cmp              eax, 99
                                                                                        je    .Lx546_47
                        cmp              eax, 13
                                                                                        jne   .Lx546_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx546_47
                                                                                        jmp   .Lx546_48
.Lx546_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx546_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx546_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx546_51
.Lx546_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx546_49
                        cmp              edx, 14
                                                                                        je    .Lx546_53
                                                                                        jmp   .Lx546_52
.Lx546_49:
                        cmp              edx, 14
                                                                                        je    .Lx546_52
                        cmp              ecx, 7
                                                                                        je    .Lx546_53
                        cmp              edx, 7
                                                                                        je    .Lx546_53
                        cmp              ecx, 6
                                                                                        jne   .Lx546_50
                        cmp              edx, 6
                                                                                        jne   .Lx546_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx546_51
                                                                                        jmp   .Lx546_52
.Lx546_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx546_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx546_53
.Lx546_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx546_54
.Lx546_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx546_54
.Lx546_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx546_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n522_op11_α
                                                                                        jmp   n525_var_ref_α
n524_op11_β:
                                                                                        jmp   n522_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n525_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n526_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n526_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n527_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n527_call_proc_staged_α:
                        mov              qword ptr [rbp + 336], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx552_20
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx552_21
.Lx552_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx552_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx552_22
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx552_23
.Lx552_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        call             rt_arg_stage@PLT
.Lx552_23:
                        mov              edi, 6
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx552_1
                        lea              rcx, [rip + .Lx552_3]
                        lea              rdx, [rip + .Lx552_4]
                                                                                        jmp   rax
.Lx552_3:
                        mov              qword ptr [rbp + 344], rsp
                        mov              rax, qword ptr [rbp + 336]
                        test             rax, rax
                                                                                        jne   .Lx552_5
                        mov              qword ptr [rbp + 336], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx552_2
.Lx552_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx552_2
.Lx552_4:
                        mov              rax, qword ptr [rbp + 336]
                        test             rax, rax
                                                                                        jne   .Lx552_6
                        mov              qword ptr [rbp + 336], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx552_2
.Lx552_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx552_2
.Lx552_1:
                        call             rt_faildescr@PLT
.Lx552_2:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n522_op11_α
                                                                                        jmp   n528_op19_α
n527_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 344]
                                                                                        jmp   qword ptr [rsp]
.Lx552_0:
                        .quad            .Lx552_0_s
.Lx552_0_s:
                        .string          "$disj0/2"
#-----------------------------------------------------------------------------------------------------------------------
n528_op19_α:
                                                                                        jmp   n529_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n529_lit_string_α:
                        mov              qword ptr [rbp + 272], 1
                        mov              rax, qword ptr [rip + .Lx554_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n530_var_ref_α
.Lx554_0:
                        .quad            .Lx554_0_s
.Lx554_0_s:
                        .string          "gvar"
#-----------------------------------------------------------------------------------------------------------------------
n530_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 576]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n531_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n531_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 592]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n532_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n532_op11_α:
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 208]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n522_op11_α
                                                                                        jmp   n533_op11_α
n532_op11_β:
                                                                                        jmp   n522_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n533_op11_α:
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn561:              .string          "$dyn_asserta"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn561]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n522_op11_α
                                                                                        jmp   n534_suspend_α
n533_op11_β:
                                                                                        jmp   n522_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n534_suspend_α:
                        lea              rax, [rip + n534_suspend_β]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_g_assign$2F2_γ
n534_suspend_β:
                                                                                        jmp   n522_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_β:
                                                                                        jmp   qword ptr [rbp + 560]
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_g_assign$2F2_res]
                        push             rax
                        mov              rax, [rbp + 632]
                        mov              rbp, [rbp + 648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_g_assign$2F2_ω:
                        mov              rax, [rbp + 640]
                        lea              rsp, [rbp + 656]
                        mov              rbp, [rbp + 648]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_g_read$2F2_α
proc_g_read$2F2_α:
                        .global          proc_g_read$2F2_α
                        .global          proc_g_read$2F2_β
                        .global          proc_g_read$2F2_γ
                        .global          proc_g_read$2F2_ω
                        sub              rsp, 576
                        mov              [rsp + 552], rcx
                        mov              [rsp + 560], rdx
                        mov              [rsp + 568], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 480
                        mov              edx, 544
                        call             rt_jmp_frame_lexprep2@PLT
proc_g_read$2F2_α_body:
                        lea              rax, [rip + n579_suspend_β]
                        mov              qword ptr [rbp + 480], rax
#-----------------------------------------------------------------------------------------------------------------------
n564_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx580_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx580_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx580_101
.Lx580_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx580_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_g_read$2F2_ω
                                                                                        jmp   n565_var_ref_α
n564_op11_β:
                                                                                        jmp   proc_g_read$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n565_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                                                                                        jmp   n566_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n566_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n567_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n567_op11_α:
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx585_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx585_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx585_41
                        cmp              esi, 1
                                                                                        jne   .Lx585_55
                        mov              r8, rax
                                                                                        jmp   .Lx585_40
.Lx585_55:
                        cmp              esi, 2
                                                                                        jne   .Lx585_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx585_41
                        mov              r8, rax
                                                                                        jmp   .Lx585_40
.Lx585_56:
                        cmp              eax, 13
                                                                                        jne   .Lx585_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx585_41
                        cmp              rax, r8
                                                                                        je    .Lx585_41
                        mov              r8, rax
                                                                                        jmp   .Lx585_40
.Lx585_41:
                        lea              r9, [rbp + 432]
.Lx585_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx585_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx585_43
                        cmp              esi, 1
                                                                                        jne   .Lx585_57
                        mov              r9, rax
                                                                                        jmp   .Lx585_42
.Lx585_57:
                        cmp              esi, 2
                                                                                        jne   .Lx585_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx585_43
                        mov              r9, rax
                                                                                        jmp   .Lx585_42
.Lx585_58:
                        cmp              eax, 13
                                                                                        jne   .Lx585_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx585_43
                        cmp              rax, r9
                                                                                        je    .Lx585_43
                        mov              r9, rax
                                                                                        jmp   .Lx585_42
.Lx585_43:
                        cmp              r8, r9
                                                                                        je    .Lx585_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx585_44
                        cmp              eax, 99
                                                                                        je    .Lx585_44
                        cmp              eax, 13
                                                                                        jne   .Lx585_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx585_44
                                                                                        jmp   .Lx585_45
.Lx585_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx585_53
                        cmp              eax, 99
                                                                                        je    .Lx585_53
                        cmp              eax, 13
                                                                                        jne   .Lx585_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx585_53
                                                                                        jmp   .Lx585_46
.Lx585_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx585_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx585_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx585_51
.Lx585_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx585_47
                        cmp              eax, 99
                                                                                        je    .Lx585_47
                        cmp              eax, 13
                                                                                        jne   .Lx585_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx585_47
                                                                                        jmp   .Lx585_48
.Lx585_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx585_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx585_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx585_51
.Lx585_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx585_49
                        cmp              edx, 14
                                                                                        je    .Lx585_53
                                                                                        jmp   .Lx585_52
.Lx585_49:
                        cmp              edx, 14
                                                                                        je    .Lx585_52
                        cmp              ecx, 7
                                                                                        je    .Lx585_53
                        cmp              edx, 7
                                                                                        je    .Lx585_53
                        cmp              ecx, 6
                                                                                        jne   .Lx585_50
                        cmp              edx, 6
                                                                                        jne   .Lx585_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx585_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx585_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx585_51
                                                                                        jmp   .Lx585_52
.Lx585_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx585_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx585_53
.Lx585_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx585_54
.Lx585_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx585_54
.Lx585_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx585_54:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n569_op11_α
                                                                                        jmp   n568_var_ref_α
n567_op11_β:
                                                                                        jmp   n569_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n568_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n570_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n569_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 99
                                                                                        je    proc_g_read$2F2_ω
                                                                                        jmp   proc_g_read$2F2_ω
n569_op11_β:
                                                                                        jmp   proc_g_read$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n570_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n571_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n571_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 336]
                        lea              r8, [rbp + 336]
.Lx591_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx591_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx591_41
                        cmp              esi, 1
                                                                                        jne   .Lx591_55
                        mov              r8, rax
                                                                                        jmp   .Lx591_40
.Lx591_55:
                        cmp              esi, 2
                                                                                        jne   .Lx591_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx591_41
                        mov              r8, rax
                                                                                        jmp   .Lx591_40
.Lx591_56:
                        cmp              eax, 13
                                                                                        jne   .Lx591_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx591_41
                        cmp              rax, r8
                                                                                        je    .Lx591_41
                        mov              r8, rax
                                                                                        jmp   .Lx591_40
.Lx591_41:
                        lea              r9, [rbp + 352]
.Lx591_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx591_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx591_43
                        cmp              esi, 1
                                                                                        jne   .Lx591_57
                        mov              r9, rax
                                                                                        jmp   .Lx591_42
.Lx591_57:
                        cmp              esi, 2
                                                                                        jne   .Lx591_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx591_43
                        mov              r9, rax
                                                                                        jmp   .Lx591_42
.Lx591_58:
                        cmp              eax, 13
                                                                                        jne   .Lx591_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx591_43
                        cmp              rax, r9
                                                                                        je    .Lx591_43
                        mov              r9, rax
                                                                                        jmp   .Lx591_42
.Lx591_43:
                        cmp              r8, r9
                                                                                        je    .Lx591_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx591_44
                        cmp              eax, 99
                                                                                        je    .Lx591_44
                        cmp              eax, 13
                                                                                        jne   .Lx591_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx591_44
                                                                                        jmp   .Lx591_45
.Lx591_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx591_53
                        cmp              eax, 99
                                                                                        je    .Lx591_53
                        cmp              eax, 13
                                                                                        jne   .Lx591_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx591_53
                                                                                        jmp   .Lx591_46
.Lx591_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx591_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx591_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx591_51
.Lx591_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx591_47
                        cmp              eax, 99
                                                                                        je    .Lx591_47
                        cmp              eax, 13
                                                                                        jne   .Lx591_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx591_47
                                                                                        jmp   .Lx591_48
.Lx591_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx591_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx591_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx591_51
.Lx591_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx591_49
                        cmp              edx, 14
                                                                                        je    .Lx591_53
                                                                                        jmp   .Lx591_52
.Lx591_49:
                        cmp              edx, 14
                                                                                        je    .Lx591_52
                        cmp              ecx, 7
                                                                                        je    .Lx591_53
                        cmp              edx, 7
                                                                                        je    .Lx591_53
                        cmp              ecx, 6
                                                                                        jne   .Lx591_50
                        cmp              edx, 6
                                                                                        jne   .Lx591_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx591_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx591_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx591_51
                                                                                        jmp   .Lx591_52
.Lx591_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx591_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx591_53
.Lx591_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx591_54
.Lx591_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx591_54
.Lx591_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx591_54:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n569_op11_α
                                                                                        jmp   n572_var_ref_α
n571_op11_β:
                                                                                        jmp   n569_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n572_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n573_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n573_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                                                                                        jmp   n574_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n574_call_proc_staged_α:
                        mov              qword ptr [rbp + 256], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx597_20
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx597_21
.Lx597_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx597_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx597_22
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx597_23
.Lx597_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        call             rt_arg_stage@PLT
.Lx597_23:
                        mov              edi, 4
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx597_1
                        lea              rcx, [rip + .Lx597_3]
                        lea              rdx, [rip + .Lx597_4]
                                                                                        jmp   rax
.Lx597_3:
                        mov              qword ptr [rbp + 264], rsp
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx597_5
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx597_2
.Lx597_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx597_2
.Lx597_4:
                        mov              rax, qword ptr [rbp + 256]
                        test             rax, rax
                                                                                        jne   .Lx597_6
                        mov              qword ptr [rbp + 256], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx597_2
.Lx597_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx597_2
.Lx597_1:
                        call             rt_faildescr@PLT
.Lx597_2:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 99
                                                                                        je    n569_op11_α
                                                                                        jmp   n575_op19_α
n574_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 264]
                                                                                        jmp   qword ptr [rsp]
.Lx597_0:
                        .quad            .Lx597_0_s
.Lx597_0_s:
                        .string          "$disj1/2"
#-----------------------------------------------------------------------------------------------------------------------
n575_op19_α:
                                                                                        jmp   n576_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n576_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n577_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n577_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n578_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n578_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 144]
                        lea              r8, [rbp + 144]
.Lx603_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx603_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx603_41
                        cmp              esi, 1
                                                                                        jne   .Lx603_55
                        mov              r8, rax
                                                                                        jmp   .Lx603_40
.Lx603_55:
                        cmp              esi, 2
                                                                                        jne   .Lx603_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx603_41
                        mov              r8, rax
                                                                                        jmp   .Lx603_40
.Lx603_56:
                        cmp              eax, 13
                                                                                        jne   .Lx603_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx603_41
                        cmp              rax, r8
                                                                                        je    .Lx603_41
                        mov              r8, rax
                                                                                        jmp   .Lx603_40
.Lx603_41:
                        lea              r9, [rbp + 160]
.Lx603_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx603_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx603_43
                        cmp              esi, 1
                                                                                        jne   .Lx603_57
                        mov              r9, rax
                                                                                        jmp   .Lx603_42
.Lx603_57:
                        cmp              esi, 2
                                                                                        jne   .Lx603_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx603_43
                        mov              r9, rax
                                                                                        jmp   .Lx603_42
.Lx603_58:
                        cmp              eax, 13
                                                                                        jne   .Lx603_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx603_43
                        cmp              rax, r9
                                                                                        je    .Lx603_43
                        mov              r9, rax
                                                                                        jmp   .Lx603_42
.Lx603_43:
                        cmp              r8, r9
                                                                                        je    .Lx603_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx603_44
                        cmp              eax, 99
                                                                                        je    .Lx603_44
                        cmp              eax, 13
                                                                                        jne   .Lx603_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx603_44
                                                                                        jmp   .Lx603_45
.Lx603_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx603_53
                        cmp              eax, 99
                                                                                        je    .Lx603_53
                        cmp              eax, 13
                                                                                        jne   .Lx603_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx603_53
                                                                                        jmp   .Lx603_46
.Lx603_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx603_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx603_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx603_51
.Lx603_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx603_47
                        cmp              eax, 99
                                                                                        je    .Lx603_47
                        cmp              eax, 13
                                                                                        jne   .Lx603_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx603_47
                                                                                        jmp   .Lx603_48
.Lx603_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx603_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx603_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx603_51
.Lx603_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx603_49
                        cmp              edx, 14
                                                                                        je    .Lx603_53
                                                                                        jmp   .Lx603_52
.Lx603_49:
                        cmp              edx, 14
                                                                                        je    .Lx603_52
                        cmp              ecx, 7
                                                                                        je    .Lx603_53
                        cmp              edx, 7
                                                                                        je    .Lx603_53
                        cmp              ecx, 6
                                                                                        jne   .Lx603_50
                        cmp              edx, 6
                                                                                        jne   .Lx603_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx603_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx603_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx603_51
                                                                                        jmp   .Lx603_52
.Lx603_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx603_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx603_53
.Lx603_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx603_54
.Lx603_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx603_54
.Lx603_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx603_54:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n569_op11_α
                                                                                        jmp   n579_suspend_α
n578_op11_β:
                                                                                        jmp   n569_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n579_suspend_α:
                        lea              rax, [rip + n579_suspend_β]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_g_read$2F2_γ
n579_suspend_β:
                                                                                        jmp   n569_op11_α
#-----------------------------------------------------------------------------------------------------------------------
proc_g_read$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_g_read$2F2_β:
                                                                                        jmp   qword ptr [rbp + 480]
#-----------------------------------------------------------------------------------------------------------------------
proc_g_read$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_g_read$2F2_res]
                        push             rax
                        mov              rax, [rbp + 552]
                        mov              rbp, [rbp + 568]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_g_read$2F2_ω:
                        mov              rax, [rbp + 560]
                        lea              rsp, [rbp + 576]
                        mov              rbp, [rbp + 568]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_go_other1$2F1_α
proc_go_other1$2F1_α:
                        .global          proc_go_other1$2F1_α
                        .global          proc_go_other1$2F1_β
                        .global          proc_go_other1$2F1_γ
                        .global          proc_go_other1$2F1_ω
                        sub              rsp, 576
                        mov              [rsp + 552], rcx
                        mov              [rsp + 560], rdx
                        mov              [rsp + 568], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 512
                        mov              edx, 544
                        call             rt_jmp_frame_lexprep2@PLT
proc_go_other1$2F1_α_body:
                        lea              rax, [rip + n621_suspend_β]
                        mov              qword ptr [rbp + 512], rax
#-----------------------------------------------------------------------------------------------------------------------
n606_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx625_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx625_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx625_101
.Lx625_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx625_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other1$2F1_ω
                                                                                        jmp   n607_var_ref_α
n606_op11_β:
                                                                                        jmp   proc_go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n607_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n608_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n608_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx628_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n609_lit_string_α
.Lx628_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n609_lit_string_α:
                        mov              qword ptr [rbp + 496], 1
                        mov              rax, qword ptr [rip + .Lx629_0]
                        mov              qword ptr [rbp + 504], rax
                                                                                        jmp   n610_op11_α
.Lx629_0:
                        .quad            .Lx629_0_s
.Lx629_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n610_op11_α:
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 416]
                        lea              r8, [rbp + 416]
.Lx630_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx630_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx630_111
                        cmp              esi, 1
                                                                                        jne   .Lx630_112
                        mov              r8, rax
                                                                                        jmp   .Lx630_110
.Lx630_112:
                        cmp              esi, 2
                                                                                        jne   .Lx630_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx630_111
                        mov              r8, rax
                                                                                        jmp   .Lx630_110
.Lx630_113:
                        cmp              eax, 13
                                                                                        jne   .Lx630_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx630_111
                        cmp              rax, r8
                                                                                        je    .Lx630_111
                        mov              r8, rax
                                                                                        jmp   .Lx630_110
.Lx630_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx630_114
                        cmp              eax, 99
                                                                                        je    .Lx630_114
                        cmp              eax, 13
                                                                                        jne   .Lx630_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx630_114
                                                                                        jmp   .Lx630_118
.Lx630_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx630_115
                        cmp              eax, 6
                                                                                        je    .Lx630_114
                        cmp              eax, 1
                                                                                        jne   .Lx630_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx630_114
                        mov              rdx, qword ptr [r8 + 8]
                        test             rdx, rdx
                                                                                        je    .Lx630_114
                                                                                        jmp   .Lx630_116
.Lx630_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx630_117
.Lx630_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx630_117
.Lx630_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx630_117:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n612_var_ref_α
                                                                                        jmp   n611_var_ref_α
n610_op11_β:
                                                                                        jmp   n612_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n611_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n613_lit_string_α
#-----------------------------------------------------------------------------------------------------------------------
n612_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n614_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n613_lit_string_α:
                        mov              qword ptr [rbp + 384], 1
                        mov              rax, qword ptr [rip + .Lx635_0]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n615_op11_α
.Lx635_0:
                        .quad            .Lx635_0_s
.Lx635_0_s:
                        .string          "[]"
#-----------------------------------------------------------------------------------------------------------------------
n614_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                                                                                        jmp   n616_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n615_op11_α:
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              rsi, qword ptr [rip + .Lx638_2]
                                                                                        jmp   .Lx638_3
.Lx638_2:
                        .quad            .Lx638_2_s
.Lx638_2_s:
                        .string          "[]"
.Lx638_3:
                        call             rt_pl_dop_unify_cs@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              eax, 99
                                                                                        je    n618_op11_α
                                                                                        jmp   n617_op19_α
n615_op11_β:
                                                                                        jmp   n618_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n616_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 208]
                        lea              r8, [rbp + 208]
.Lx639_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx639_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx639_41
                        cmp              esi, 1
                                                                                        jne   .Lx639_55
                        mov              r8, rax
                                                                                        jmp   .Lx639_40
.Lx639_55:
                        cmp              esi, 2
                                                                                        jne   .Lx639_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx639_41
                        mov              r8, rax
                                                                                        jmp   .Lx639_40
.Lx639_56:
                        cmp              eax, 13
                                                                                        jne   .Lx639_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx639_41
                        cmp              rax, r8
                                                                                        je    .Lx639_41
                        mov              r8, rax
                                                                                        jmp   .Lx639_40
.Lx639_41:
                        lea              r9, [rbp + 224]
.Lx639_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx639_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx639_43
                        cmp              esi, 1
                                                                                        jne   .Lx639_57
                        mov              r9, rax
                                                                                        jmp   .Lx639_42
.Lx639_57:
                        cmp              esi, 2
                                                                                        jne   .Lx639_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx639_43
                        mov              r9, rax
                                                                                        jmp   .Lx639_42
.Lx639_58:
                        cmp              eax, 13
                                                                                        jne   .Lx639_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx639_43
                        cmp              rax, r9
                                                                                        je    .Lx639_43
                        mov              r9, rax
                                                                                        jmp   .Lx639_42
.Lx639_43:
                        cmp              r8, r9
                                                                                        je    .Lx639_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx639_44
                        cmp              eax, 99
                                                                                        je    .Lx639_44
                        cmp              eax, 13
                                                                                        jne   .Lx639_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx639_44
                                                                                        jmp   .Lx639_45
.Lx639_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx639_53
                        cmp              eax, 99
                                                                                        je    .Lx639_53
                        cmp              eax, 13
                                                                                        jne   .Lx639_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx639_53
                                                                                        jmp   .Lx639_46
.Lx639_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx639_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx639_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx639_51
.Lx639_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx639_47
                        cmp              eax, 99
                                                                                        je    .Lx639_47
                        cmp              eax, 13
                                                                                        jne   .Lx639_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx639_47
                                                                                        jmp   .Lx639_48
.Lx639_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx639_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx639_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx639_51
.Lx639_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx639_49
                        cmp              edx, 14
                                                                                        je    .Lx639_53
                                                                                        jmp   .Lx639_52
.Lx639_49:
                        cmp              edx, 14
                                                                                        je    .Lx639_52
                        cmp              ecx, 7
                                                                                        je    .Lx639_53
                        cmp              edx, 7
                                                                                        je    .Lx639_53
                        cmp              ecx, 6
                                                                                        jne   .Lx639_50
                        cmp              edx, 6
                                                                                        jne   .Lx639_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx639_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx639_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx639_51
                                                                                        jmp   .Lx639_52
.Lx639_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx639_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx639_53
.Lx639_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx639_54
.Lx639_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx639_54
.Lx639_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx639_54:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n620_op11_α
                                                                                        jmp   n619_var_ref_α
n616_op11_β:
                                                                                        jmp   n620_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n617_op19_α:
                                                                                        jmp   n621_suspend_α
#-----------------------------------------------------------------------------------------------------------------------
n618_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other1$2F1_ω
                                                                                        jmp   n612_var_ref_α
n618_op11_β:
                                                                                        jmp   proc_go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n619_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                                                                                        jmp   n622_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n620_op11_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_go_other1$2F1_ω
                                                                                        jmp   proc_go_other1$2F1_ω
n620_op11_β:
                                                                                        jmp   proc_go_other1$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n621_suspend_α:
                        lea              rax, [rip + n621_suspend_β]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_go_other1$2F1_γ
n621_suspend_β:
                                                                                        jmp   n618_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n622_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx648_20
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx648_21
.Lx648_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        call             rt_arg_stage@PLT
.Lx648_21:
                        mov              rdi, qword ptr [rip + .Lx648_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx648_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx648_3]
                        lea              rdx, [rip + .Lx648_4]
                                                                                        jmp   rax
.Lx648_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx648_2
.Lx648_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx648_2
.Lx648_1:
                        call             rt_faildescr@PLT
.Lx648_2:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n620_op11_α
                                                                                        jmp   n623_call_proc_staged_α
n622_call_proc_staged_β:
                                                                                        jmp   n620_op11_α
.Lx648_0:
                        .quad            .Lx648_0_s
.Lx648_0_s:
                        .string          "pl2wam/1"
#-----------------------------------------------------------------------------------------------------------------------
n623_call_proc_staged_α:
                        mov              rdi, qword ptr [rip + .Lx650_0]
                        mov              esi, 0
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx650_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx650_3]
                        lea              rdx, [rip + .Lx650_4]
                                                                                        jmp   rax
.Lx650_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx650_2
.Lx650_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx650_2
.Lx650_1:
                        call             rt_faildescr@PLT
.Lx650_2:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n622_call_proc_staged_β
                                                                                        jmp   n624_suspend_α
n623_call_proc_staged_β:
                                                                                        jmp   n622_call_proc_staged_β
.Lx650_0:
                        .quad            .Lx650_0_s
.Lx650_0_s:
                        .string          "halt/0"
#-----------------------------------------------------------------------------------------------------------------------
n624_suspend_α:
                        lea              rax, [rip + n624_suspend_β]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_go_other1$2F1_γ
n624_suspend_β:
                                                                                        jmp   n623_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other1$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other1$2F1_β:
                                                                                        jmp   qword ptr [rbp + 512]
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other1$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_go_other1$2F1_res]
                        push             rax
                        mov              rax, [rbp + 552]
                        mov              rbp, [rbp + 568]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_go_other1$2F1_ω:
                        mov              rax, [rbp + 560]
                        lea              rsp, [rbp + 576]
                        mov              rbp, [rbp + 568]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_callable$2F1_α
proc_callable$2F1_α:
                        .global          proc_callable$2F1_α
                        .global          proc_callable$2F1_β
                        .global          proc_callable$2F1_γ
                        .global          proc_callable$2F1_ω
                        sub              rsp, 464
                        mov              [rsp + 440], rcx
                        mov              [rsp + 448], rdx
                        mov              [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 416
                        mov              edx, 432
                        call             rt_jmp_frame_lexprep2@PLT
proc_callable$2F1_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n653_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx670_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx670_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx670_101
.Lx670_100:
                        lea              rdi, [rbp + 80]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx670_101:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 99
                                                                                        je    proc_callable$2F1_ω
                                                                                        jmp   n654_var_ref_α
n653_op11_β:
                                                                                        jmp   proc_callable$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n654_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n655_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n655_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                                                                                        jmp   n656_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n656_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 352]
                        lea              r8, [rbp + 352]
.Lx675_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx675_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_41
                        cmp              esi, 1
                                                                                        jne   .Lx675_55
                        mov              r8, rax
                                                                                        jmp   .Lx675_40
.Lx675_55:
                        cmp              esi, 2
                                                                                        jne   .Lx675_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx675_41
                        mov              r8, rax
                                                                                        jmp   .Lx675_40
.Lx675_56:
                        cmp              eax, 13
                                                                                        jne   .Lx675_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_41
                        cmp              rax, r8
                                                                                        je    .Lx675_41
                        mov              r8, rax
                                                                                        jmp   .Lx675_40
.Lx675_41:
                        lea              r9, [rbp + 368]
.Lx675_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx675_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_43
                        cmp              esi, 1
                                                                                        jne   .Lx675_57
                        mov              r9, rax
                                                                                        jmp   .Lx675_42
.Lx675_57:
                        cmp              esi, 2
                                                                                        jne   .Lx675_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx675_43
                        mov              r9, rax
                                                                                        jmp   .Lx675_42
.Lx675_58:
                        cmp              eax, 13
                                                                                        jne   .Lx675_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx675_43
                        cmp              rax, r9
                                                                                        je    .Lx675_43
                        mov              r9, rax
                                                                                        jmp   .Lx675_42
.Lx675_43:
                        cmp              r8, r9
                                                                                        je    .Lx675_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx675_44
                        cmp              eax, 99
                                                                                        je    .Lx675_44
                        cmp              eax, 13
                                                                                        jne   .Lx675_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx675_44
                                                                                        jmp   .Lx675_45
.Lx675_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx675_53
                        cmp              eax, 99
                                                                                        je    .Lx675_53
                        cmp              eax, 13
                                                                                        jne   .Lx675_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx675_53
                                                                                        jmp   .Lx675_46
.Lx675_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx675_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx675_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx675_51
.Lx675_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx675_47
                        cmp              eax, 99
                                                                                        je    .Lx675_47
                        cmp              eax, 13
                                                                                        jne   .Lx675_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx675_47
                                                                                        jmp   .Lx675_48
.Lx675_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx675_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx675_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx675_51
.Lx675_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx675_49
                        cmp              edx, 14
                                                                                        je    .Lx675_53
                                                                                        jmp   .Lx675_52
.Lx675_49:
                        cmp              edx, 14
                                                                                        je    .Lx675_52
                        cmp              ecx, 7
                                                                                        je    .Lx675_53
                        cmp              edx, 7
                                                                                        je    .Lx675_53
                        cmp              ecx, 6
                                                                                        jne   .Lx675_50
                        cmp              edx, 6
                                                                                        jne   .Lx675_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx675_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx675_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx675_51
                                                                                        jmp   .Lx675_52
.Lx675_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx675_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx675_53
.Lx675_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx675_54
.Lx675_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx675_54
.Lx675_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx675_54:
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              eax, 99
                                                                                        je    n658_op11_α
                                                                                        jmp   n657_var_ref_α
n656_op11_β:
                                                                                        jmp   n658_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n657_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                                                                                        jmp   n659_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n658_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              eax, 99
                                                                                        je    proc_callable$2F1_ω
                                                                                        jmp   n660_var_ref_α
n658_op11_β:
                                                                                        jmp   proc_callable$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n659_op11_α:
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 312], rax
                        .section         .rodata
.Lrkfn680:              .string          "$tt_atom"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn680]
                        lea              rsi, [rbp + 304]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              eax, 99
                                                                                        je    n658_op11_α
                                                                                        jmp   n661_op19_α
n659_op11_β:
                                                                                        jmp   n658_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n660_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                                                                                        jmp   n662_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n661_op19_α:
                                                                                        jmp   n663_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n662_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                                                                                        jmp   n664_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n663_move_label_α:
                        lea              rax, [rip + n658_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_callable$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
n664_op11_α:
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        lea              r8, [rbp + 192]
.Lx688_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx688_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx688_41
                        cmp              esi, 1
                                                                                        jne   .Lx688_55
                        mov              r8, rax
                                                                                        jmp   .Lx688_40
.Lx688_55:
                        cmp              esi, 2
                                                                                        jne   .Lx688_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx688_41
                        mov              r8, rax
                                                                                        jmp   .Lx688_40
.Lx688_56:
                        cmp              eax, 13
                                                                                        jne   .Lx688_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx688_41
                        cmp              rax, r8
                                                                                        je    .Lx688_41
                        mov              r8, rax
                                                                                        jmp   .Lx688_40
.Lx688_41:
                        lea              r9, [rbp + 208]
.Lx688_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx688_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx688_43
                        cmp              esi, 1
                                                                                        jne   .Lx688_57
                        mov              r9, rax
                                                                                        jmp   .Lx688_42
.Lx688_57:
                        cmp              esi, 2
                                                                                        jne   .Lx688_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx688_43
                        mov              r9, rax
                                                                                        jmp   .Lx688_42
.Lx688_58:
                        cmp              eax, 13
                                                                                        jne   .Lx688_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx688_43
                        cmp              rax, r9
                                                                                        je    .Lx688_43
                        mov              r9, rax
                                                                                        jmp   .Lx688_42
.Lx688_43:
                        cmp              r8, r9
                                                                                        je    .Lx688_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx688_44
                        cmp              eax, 99
                                                                                        je    .Lx688_44
                        cmp              eax, 13
                                                                                        jne   .Lx688_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx688_44
                                                                                        jmp   .Lx688_45
.Lx688_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx688_53
                        cmp              eax, 99
                                                                                        je    .Lx688_53
                        cmp              eax, 13
                                                                                        jne   .Lx688_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx688_53
                                                                                        jmp   .Lx688_46
.Lx688_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx688_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx688_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax
                                                                                        jmp   .Lx688_51
.Lx688_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx688_47
                        cmp              eax, 99
                                                                                        je    .Lx688_47
                        cmp              eax, 13
                                                                                        jne   .Lx688_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx688_47
                                                                                        jmp   .Lx688_48
.Lx688_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx688_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx688_53
                        add              r11, rsi
                        mov              qword ptr [r11 + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r11 + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r11 + 16], rax
                        mov              eax, dword ptr [r10 + 32]
                        add              eax, 1
                        mov              dword ptr [r10 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax
                                                                                        jmp   .Lx688_51
.Lx688_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx688_49
                        cmp              edx, 14
                                                                                        je    .Lx688_53
                                                                                        jmp   .Lx688_52
.Lx688_49:
                        cmp              edx, 14
                                                                                        je    .Lx688_52
                        cmp              ecx, 7
                                                                                        je    .Lx688_53
                        cmp              edx, 7
                                                                                        je    .Lx688_53
                        cmp              ecx, 6
                                                                                        jne   .Lx688_50
                        cmp              edx, 6
                                                                                        jne   .Lx688_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx688_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx688_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx688_51
                                                                                        jmp   .Lx688_52
.Lx688_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx688_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx688_53
.Lx688_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx688_54
.Lx688_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx688_54
.Lx688_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx688_54:
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n667_op11_α
                                                                                        jmp   n666_var_ref_α
n664_op11_β:
                                                                                        jmp   n667_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n665_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 48]
n665_disjunction_β:
                                                                                        jmp   proc_callable$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n666_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 416]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n668_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n667_op11_α:
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 120], rax
                        lea              rdi, [rbp + 112]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    proc_callable$2F1_ω
                                                                                        jmp   proc_callable$2F1_ω
n667_op11_β:
                                                                                        jmp   proc_callable$2F1_ω
#-----------------------------------------------------------------------------------------------------------------------
n668_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 152], rax
                        .section         .rodata
.Lrkfn695:              .string          "$tt_compound"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn695]
                        lea              rsi, [rbp + 144]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              eax, 99
                                                                                        je    n667_op11_α
                                                                                        jmp   n669_move_label_α
n668_op11_β:
                                                                                        jmp   n667_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n669_move_label_α:
                        lea              rax, [rip + n667_op11_α]
                        mov              qword ptr [rbp + 48], rax
                                                                                        jmp   proc_callable$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
proc_callable$2F1_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_callable$2F1_β:
                                                                                        jmp   n665_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_callable$2F1_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        mov              rax, [rbp + 440]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_callable$2F1_ω:
                        mov              rax, [rbp + 448]
                        lea              rsp, [rbp + 464]
                        mov              rbp, [rbp + 456]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_callable$2F1_dcα:
                        pop              r11
                        sub              rsp, 480
                        mov              qword ptr [rsp + 456], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rbp + 432], r11
                        lea              rax, [rip + .Lx698_2]
                        mov              qword ptr [rbp + 440], rax
                        lea              rax, [rip + .Lx698_3]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 16], rsi
                        mov              rdi, rbp
                        mov              esi, 416
                        mov              edx, 432
                        mov              ecx, 1
                        mov              r8d, 1
                        mov              r9d, 0
                        call             rt_pl_dc_prep@PLT
                                                                                        jmp   proc_callable$2F1_α_body
.Lx698_2:
                        mov              rdx, qword ptr [rsp + 0]
                        mov              rcx, rsp
                        add              rcx, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_γ@PLT
.Lx698_3:
                        mov              rdi, qword ptr [rsp + 0]
                        mov              rsi, rsp
                        add              rsi, -464
                        mov              r11, qword ptr [rsp + -32]
                        mov              rbp, qword ptr [rsp + -8]
                        add              rsp, 16
                        push             r11
                                                                                        jmp   rt_pl_dc_leave_ω@PLT
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_gvar$2F2_α
proc_gvar$2F2_α:
                        .global          proc_gvar$2F2_α
                        .global          proc_gvar$2F2_β
                        .global          proc_gvar$2F2_γ
                        .global          proc_gvar$2F2_ω
                        sub              rsp, 224
                        mov              [rsp + 200], rcx
                        mov              [rsp + 208], rdx
                        mov              [rsp + 216], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 192
                        call             rt_jmp_frame_lexprep2@PLT
proc_gvar$2F2_α_body:
                        lea              rax, [rip + n703_suspend_β]
                        mov              qword ptr [rbp + 176], rax
#-----------------------------------------------------------------------------------------------------------------------
n699_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx704_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n700_var_ref_α
.Lx704_0:
                        .quad            .Lx704_0_s
.Lx704_0_s:
                        .string          "gvar"
#-----------------------------------------------------------------------------------------------------------------------
n700_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                                                                                        jmp   n701_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n701_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n702_call_builtin_gen_α
#-----------------------------------------------------------------------------------------------------------------------
n702_call_builtin_gen_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 72], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 104], rax
                        mov              qword ptr [rbp + 112], 0
.Lx709_60:
                        .section         .rodata
.Lbynamegenfn279:       .string          "$dyn_iter"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lbynamegenfn279]
                        lea              rsi, [rbp + 64]
                        mov              edx, 3
                        lea              rcx, [rbp + 112]
                        call             rt_call_arr_gen@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_gvar$2F2_ω
                                                                                        jmp   n703_suspend_α
n702_call_builtin_gen_β:
                                                                                        jmp   .Lx709_60
#-----------------------------------------------------------------------------------------------------------------------
n703_suspend_α:
                        lea              rax, [rip + n703_suspend_β]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_gvar$2F2_γ
n703_suspend_β:
                                                                                        jmp   n702_call_builtin_gen_β
#-----------------------------------------------------------------------------------------------------------------------
proc_gvar$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_gvar$2F2_β:
                                                                                        jmp   qword ptr [rbp + 176]
#-----------------------------------------------------------------------------------------------------------------------
proc_gvar$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_gvar$2F2_res]
                        push             rax
                        mov              rax, [rbp + 200]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_gvar$2F2_ω:
                        mov              rax, [rbp + 208]
                        lea              rsp, [rbp + 224]
                        mov              rbp, [rbp + 216]
                                                                                        jmp   rax
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "delete_flags/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_delete_flags$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2736
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "prolog_copyright/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_prolog_copyright$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_prolog_copyright$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "current_prolog_flag/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname2]
                        lea              rsi, [rip + proc_current_prolog_flag$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 160
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname2]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "prolog_version/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname3]
                        lea              rsi, [rip + proc_prolog_version$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 416
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname3]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "$disj1/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname4]
                        lea              rsi, [rip + proc_$disj1$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 720
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname4]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "go_other/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname5]
                        lea              rsi, [rip + proc_go_other$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname5]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "$disj0/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname6]
                        lea              rsi, [rip + proc_$disj0$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 704
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname6]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "argument_list/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname7]
                        lea              rsi, [rip + proc_argument_list$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 608
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname7]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "prolog_name/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_prolog_name$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 208
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname8]
                        lea              rsi, [rip + proc_prolog_name$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname9:       .string          "pj_dir_0/0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname9]
                        lea              rsi, [rip + proc_pj_dir_0$2F0_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 0
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 272
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname9]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname10:      .string          "prolog_date/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname10]
                        lea              rsi, [rip + proc_prolog_date$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 320
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname10]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname11:      .string          "g_assign/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname11]
                        lea              rsi, [rip + proc_g_assign$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 624
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname11]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname12:      .string          "g_read/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname12]
                        lea              rsi, [rip + proc_g_read$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 544
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname12]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname13:      .string          "go_other1/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname13]
                        lea              rsi, [rip + proc_go_other1$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 544
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname13]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname14:      .string          "callable/1"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_callable$2F1_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 432
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname14]
                        lea              rsi, [rip + proc_callable$2F1_dcα]
                        call             rt_proc_set_dcfn@PLT
                        .section         .rodata
.Lstartup_pname15:      .string          "gvar/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname15]
                        lea              rsi, [rip + proc_gvar$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 192
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname15]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        xor              esi, esi
                        call             main_α
                        xor              eax, eax
                        add              rsp, 24
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        .global          main_α
                        .global          main_β
                        .global          main_γ
                        .global          main_ω
                        sub              rsp, 184
                        mov              rdi, rsp
                        mov              ecx, 184
                        xor              eax, eax
                        rep stosb
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n712_lit_string_α:
                        mov              qword ptr [rsp + 160], 1
                        mov              rax, qword ptr [rip + .Lx717_0]
                        mov              qword ptr [rsp + 168], rax
                                                                                        jmp   n713_lit_string_α
.Lx717_0:
                        .quad            .Lx717_0_s
.Lx717_0_s:
                        .string          "/"
#-----------------------------------------------------------------------------------------------------------------------
n713_lit_string_α:
                        mov              qword ptr [rsp + 48], 1
                        mov              rax, qword ptr [rip + .Lx718_0]
                        mov              qword ptr [rsp + 56], rax
                                                                                        jmp   n714_lit_integer_α
.Lx718_0:
                        .quad            .Lx718_0_s
.Lx718_0_s:
                        .string          "gvar"
#-----------------------------------------------------------------------------------------------------------------------
n714_lit_integer_α:
                        mov              qword ptr [rsp + 64], 6
                        mov              rax, qword ptr [rip + .Lx719_0]
                        mov              qword ptr [rsp + 72], rax
                                                                                        jmp   n715_op11_α
.Lx719_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n715_op11_α:
                        mov              rax, qword ptr [rsp + 160]
                        mov              qword ptr [rsp + 96], rax
                        mov              rax, qword ptr [rsp + 168]
                        mov              qword ptr [rsp + 104], rax
                        mov              rax, qword ptr [rsp + 48]
                        mov              qword ptr [rsp + 112], rax
                        mov              rax, qword ptr [rsp + 56]
                        mov              qword ptr [rsp + 120], rax
                        mov              rax, qword ptr [rsp + 64]
                        mov              qword ptr [rsp + 128], rax
                        mov              rax, qword ptr [rsp + 72]
                        mov              qword ptr [rsp + 136], rax
                        lea              rdi, [rsp + 96]
                        mov              esi, 3
                        call             rt_pl_dop_mkc@PLT
                        mov              qword ptr [rsp + 80], rax
                        mov              qword ptr [rsp + 88], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n716_call_proc_staged_α
n715_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n716_call_proc_staged_α:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx722_20
                        mov              rax, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx722_21
.Lx722_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rsp + 80]
                        mov              rdx, qword ptr [rsp + 88]
                        call             rt_arg_stage@PLT
.Lx722_21:
                        mov              rdi, qword ptr [rip + .Lx722_0]
                        mov              esi, 1
                        call             rt_proc_call_open@PLT
                        test             rax, rax
                                                                                        je    .Lx722_1
                        call             rt_proc_open_fn@PLT
                        lea              rcx, [rip + .Lx722_3]
                        lea              rdx, [rip + .Lx722_4]
                                                                                        jmp   rax
.Lx722_3:
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx722_2
.Lx722_4:
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx722_2
.Lx722_1:
                        call             rt_faildescr@PLT
.Lx722_2:
                        mov              qword ptr [rsp + 0], rax
                        mov              qword ptr [rsp + 8], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   main_γ
n716_call_proc_staged_β:
                                                                                        jmp   main_ω
.Lx722_0:
                        .quad            .Lx722_0_s
.Lx722_0_s:
                        .string          "dynamic/1"
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        add              rsp, 184
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              eax, 99
                        xor              edx, edx
                        add              rsp, 184
                        ret
                        .section         .note.GNU-stack,"",@progbits
