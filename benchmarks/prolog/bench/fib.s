                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fib$2F2_α
proc_fib$2F2_α:
                        sub              rsp, 1808
                        mov              qword ptr [rsp + 1784], rcx
                        mov              qword ptr [rsp + 1792], rdx
                        mov              qword ptr [rsp + 1800], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 1776
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 2
                        mov              edx, 6
                        call             rt_icn_zframe_args_install@PLT
proc_fib$2F2_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx60_102
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
                                                                                        jmp   .Lx60_101
.Lx60_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx60_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx60_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx60_101
.Lx60_100:
                        lea              rdi, [rbp + 96]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx60_101:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              eax, 104
                                                                                        je    proc_fib$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_call_builtin_prolog_β:
                                                                                        jmp   proc_fib$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1632], 3                      # result
                        mov              rax, qword ptr [rip + .Lx63_0]
                        mov              qword ptr [rbp + 1640], rax
                                                                                        jmp   n3_lit_integer_α
.Lx63_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 1648], 3                      # result
                        mov              rax, qword ptr [rip + .Lx64_0]
                        mov              qword ptr [rbp + 1656], rax
                                                                                        jmp   n4_call_builtin_prolog_α
.Lx64_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n4_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1624]
                        mov              qword ptr [rbp + 1576], rax
                        lea              rdi, [rbp + 1568]
                        lea              r8, [rbp + 1568]
.Lx65_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx65_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_111
                        cmp              esi, 1
                                                                                        jne   .Lx65_112
                        mov              r8, rax
                                                                                        jmp   .Lx65_110
.Lx65_112:
                        cmp              esi, 2
                                                                                        jne   .Lx65_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx65_111
                        mov              r8, rax
                                                                                        jmp   .Lx65_110
.Lx65_113:
                        cmp              eax, 72
                                                                                        jne   .Lx65_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx65_111
                        cmp              rax, r8
                                                                                        je    .Lx65_111
                        mov              r8, rax
                                                                                        jmp   .Lx65_110
.Lx65_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx65_114
                        cmp              eax, 104
                                                                                        je    .Lx65_114
                        cmp              eax, 72
                                                                                        jne   .Lx65_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx65_114
                                                                                        jmp   .Lx65_118
.Lx65_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        je    .Lx65_115
                        cmp              eax, 3
                                                                                        jne   .Lx65_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx65_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx65_115
                                                                                        jmp   .Lx65_114
.Lx65_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx65_117
.Lx65_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx65_117
.Lx65_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx65_117:
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              eax, 104
                                                                                        je    n14_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_call_builtin_prolog_β:
                                                                                        jmp   n14_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx
                                                                                        jmp   n6_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:
                        mov              qword ptr [rbp + 1536], 3                      # result
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 1544], rax
                                                                                        jmp   n7_call_builtin_prolog_α
.Lx68_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n7_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1488]                              # args
                        movabs           rsi, 0                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              eax, 104
                                                                                        je    n13_call_builtin_prolog_α
                                                                                        jmp   n8_var_ref_α
n7_call_builtin_prolog_β:
                                                                                        jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                                                                                        jmp   n9_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:
                        mov              qword ptr [rbp + 1456], 3                      # result
                        mov              rax, qword ptr [rip + .Lx72_0]
                        mov              qword ptr [rbp + 1464], rax
                                                                                        jmp   n10_call_builtin_prolog_α
.Lx72_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n10_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]                              # args
                        movabs           rsi, 1                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              eax, 104
                                                                                        je    n13_call_builtin_prolog_α
                                                                                        jmp   n11_cut_α
n10_call_builtin_prolog_β:
                                                                                        jmp   n13_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n11_cut_α:
                                                                                        jmp   n12_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n12_move_label_α:
                        lea              rax, [rip + n13_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_fib$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n13_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              eax, 104
                                                                                        je    proc_fib$2F2_ω
                                                                                        jmp   n14_var_ref_α
n13_call_builtin_prolog_β:
                                                                                        jmp   proc_fib$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                                                                                        jmp   n15_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:
                        mov              qword ptr [rbp + 1328], 3                      # result
                        mov              rax, qword ptr [rip + .Lx80_0]
                        mov              qword ptr [rbp + 1336], rax
                                                                                        jmp   n16_lit_integer_α
.Lx80_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 3                      # result
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n17_call_builtin_prolog_α
.Lx81_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n17_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1272], rax
                        lea              rdi, [rbp + 1264]
                        lea              r8, [rbp + 1264]
.Lx82_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx82_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx82_111
                        cmp              esi, 1
                                                                                        jne   .Lx82_112
                        mov              r8, rax
                                                                                        jmp   .Lx82_110
.Lx82_112:
                        cmp              esi, 2
                                                                                        jne   .Lx82_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx82_111
                        mov              r8, rax
                                                                                        jmp   .Lx82_110
.Lx82_113:
                        cmp              eax, 72
                                                                                        jne   .Lx82_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx82_111
                        cmp              rax, r8
                                                                                        je    .Lx82_111
                        mov              r8, rax
                                                                                        jmp   .Lx82_110
.Lx82_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx82_114
                        cmp              eax, 104
                                                                                        je    .Lx82_114
                        cmp              eax, 72
                                                                                        jne   .Lx82_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx82_114
                                                                                        jmp   .Lx82_118
.Lx82_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 80
                                                                                        je    .Lx82_115
                        cmp              eax, 3
                                                                                        jne   .Lx82_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx82_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx82_115
                                                                                        jmp   .Lx82_114
.Lx82_114:
                        mov              eax, 3
                        mov              edx, 1
                                                                                        jmp   .Lx82_117
.Lx82_115:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx82_117
.Lx82_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx82_117:
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              eax, 104
                                                                                        je    n27_var_ref_α
                                                                                        jmp   n18_var_ref_α
n17_call_builtin_prolog_β:
                                                                                        jmp   n27_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                                                                                        jmp   n19_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:
                        mov              qword ptr [rbp + 1232], 3                      # result
                        mov              rax, qword ptr [rip + .Lx85_0]
                        mov              qword ptr [rbp + 1240], rax
                                                                                        jmp   n20_call_builtin_prolog_α
.Lx85_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n20_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]                              # args
                        movabs           rsi, 1                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              eax, 104
                                                                                        je    n26_call_builtin_prolog_α
                                                                                        jmp   n21_var_ref_α
n20_call_builtin_prolog_β:
                                                                                        jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                                                                                        jmp   n22_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:
                        mov              qword ptr [rbp + 1152], 3                      # result
                        mov              rax, qword ptr [rip + .Lx89_0]
                        mov              qword ptr [rbp + 1160], rax
                                                                                        jmp   n23_call_builtin_prolog_α
.Lx89_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n23_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1104]                              # args
                        movabs           rsi, 1                                         # imm
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              eax, 104
                                                                                        je    n26_call_builtin_prolog_α
                                                                                        jmp   n24_cut_α
n23_call_builtin_prolog_β:
                                                                                        jmp   n26_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n24_cut_α:
                                                                                        jmp   n25_move_label_α
#-----------------------------------------------------------------------------------------------------------------------
n25_move_label_α:
                        lea              rax, [rip + n26_call_builtin_prolog_α]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_fib$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n26_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 104
                                                                                        je    proc_fib$2F2_ω
                                                                                        jmp   n27_var_ref_α
n26_call_builtin_prolog_β:
                                                                                        jmp   proc_fib$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n29_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n29_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx99_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx99_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx99_41
                        cmp              esi, 1
                                                                                        jne   .Lx99_55
                        mov              r8, rax
                                                                                        jmp   .Lx99_40
.Lx99_55:
                        cmp              esi, 2
                                                                                        jne   .Lx99_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx99_41
                        mov              r8, rax
                                                                                        jmp   .Lx99_40
.Lx99_56:
                        cmp              eax, 72
                                                                                        jne   .Lx99_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx99_41
                        cmp              rax, r8
                                                                                        je    .Lx99_41
                        mov              r8, rax
                                                                                        jmp   .Lx99_40
.Lx99_41:
                        lea              r9, [rbp + 1008]
.Lx99_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx99_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx99_43
                        cmp              esi, 1
                                                                                        jne   .Lx99_57
                        mov              r9, rax
                                                                                        jmp   .Lx99_42
.Lx99_57:
                        cmp              esi, 2
                                                                                        jne   .Lx99_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx99_43
                        mov              r9, rax
                                                                                        jmp   .Lx99_42
.Lx99_58:
                        cmp              eax, 72
                                                                                        jne   .Lx99_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx99_43
                        cmp              rax, r9
                                                                                        je    .Lx99_43
                        mov              r9, rax
                                                                                        jmp   .Lx99_42
.Lx99_43:
                        cmp              r8, r9
                                                                                        je    .Lx99_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx99_44
                        cmp              eax, 104
                                                                                        je    .Lx99_44
                        cmp              eax, 72
                                                                                        jne   .Lx99_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx99_44
                                                                                        jmp   .Lx99_45
.Lx99_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx99_53
                        cmp              eax, 104
                                                                                        je    .Lx99_53
                        cmp              eax, 72
                                                                                        jne   .Lx99_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx99_53
                                                                                        jmp   .Lx99_46
.Lx99_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx99_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx99_53
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
                                                                                        jmp   .Lx99_51
.Lx99_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx99_47
                        cmp              eax, 104
                                                                                        je    .Lx99_47
                        cmp              eax, 72
                                                                                        jne   .Lx99_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx99_47
                                                                                        jmp   .Lx99_48
.Lx99_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx99_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx99_53
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
                                                                                        jmp   .Lx99_51
.Lx99_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx99_49
                        cmp              edx, 80
                                                                                        je    .Lx99_53
                                                                                        jmp   .Lx99_52
.Lx99_49:
                        cmp              edx, 80
                                                                                        je    .Lx99_52
                        cmp              ecx, 5
                                                                                        je    .Lx99_53
                        cmp              edx, 5
                                                                                        je    .Lx99_53
                        cmp              ecx, 3
                                                                                        jne   .Lx99_50
                        cmp              edx, 3
                                                                                        jne   .Lx99_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx99_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx99_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx99_51
                                                                                        jmp   .Lx99_52
.Lx99_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx99_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx99_53
.Lx99_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx99_54
.Lx99_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx99_54
.Lx99_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx99_54:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 104
                                                                                        je    n59_call_builtin_prolog_α
                                                                                        jmp   n30_var_ref_α
n29_call_builtin_prolog_β:
                                                                                        jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n31_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n32_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n32_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        lea              r8, [rbp + 912]
.Lx104_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx104_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx104_41
                        cmp              esi, 1
                                                                                        jne   .Lx104_55
                        mov              r8, rax
                                                                                        jmp   .Lx104_40
.Lx104_55:
                        cmp              esi, 2
                                                                                        jne   .Lx104_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx104_41
                        mov              r8, rax
                                                                                        jmp   .Lx104_40
.Lx104_56:
                        cmp              eax, 72
                                                                                        jne   .Lx104_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx104_41
                        cmp              rax, r8
                                                                                        je    .Lx104_41
                        mov              r8, rax
                                                                                        jmp   .Lx104_40
.Lx104_41:
                        lea              r9, [rbp + 928]
.Lx104_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 40
                                                                                        jne   .Lx104_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx104_43
                        cmp              esi, 1
                                                                                        jne   .Lx104_57
                        mov              r9, rax
                                                                                        jmp   .Lx104_42
.Lx104_57:
                        cmp              esi, 2
                                                                                        jne   .Lx104_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx104_43
                        mov              r9, rax
                                                                                        jmp   .Lx104_42
.Lx104_58:
                        cmp              eax, 72
                                                                                        jne   .Lx104_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx104_43
                        cmp              rax, r9
                                                                                        je    .Lx104_43
                        mov              r9, rax
                                                                                        jmp   .Lx104_42
.Lx104_43:
                        cmp              r8, r9
                                                                                        je    .Lx104_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx104_44
                        cmp              eax, 104
                                                                                        je    .Lx104_44
                        cmp              eax, 72
                                                                                        jne   .Lx104_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx104_44
                                                                                        jmp   .Lx104_45
.Lx104_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx104_53
                        cmp              eax, 104
                                                                                        je    .Lx104_53
                        cmp              eax, 72
                                                                                        jne   .Lx104_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx104_53
                                                                                        jmp   .Lx104_46
.Lx104_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx104_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx104_53
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
                                                                                        jmp   .Lx104_51
.Lx104_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx104_47
                        cmp              eax, 104
                                                                                        je    .Lx104_47
                        cmp              eax, 72
                                                                                        jne   .Lx104_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx104_47
                                                                                        jmp   .Lx104_48
.Lx104_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx104_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx104_53
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
                                                                                        jmp   .Lx104_51
.Lx104_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 80
                                                                                        jne   .Lx104_49
                        cmp              edx, 80
                                                                                        je    .Lx104_53
                                                                                        jmp   .Lx104_52
.Lx104_49:
                        cmp              edx, 80
                                                                                        je    .Lx104_52
                        cmp              ecx, 5
                                                                                        je    .Lx104_53
                        cmp              edx, 5
                                                                                        je    .Lx104_53
                        cmp              ecx, 3
                                                                                        jne   .Lx104_50
                        cmp              edx, 3
                                                                                        jne   .Lx104_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx104_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3
                                                                                        jne   .Lx104_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx104_51
                                                                                        jmp   .Lx104_52
.Lx104_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx104_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx104_53
.Lx104_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx104_54
.Lx104_52:
                        mov              eax, 104
                        mov              edx, 0
                                                                                        jmp   .Lx104_54
.Lx104_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx104_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 104
                                                                                        je    n59_call_builtin_prolog_α
                                                                                        jmp   n33_var_α
n32_call_builtin_prolog_β:
                                                                                        jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n34_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:
                        mov              qword ptr [rbp + 880], 3                       # result
                        mov              rax, qword ptr [rip + .Lx107_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n35_call_builtin_prolog_α
.Lx107_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n35_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 104
                                                                                        je    n59_call_builtin_prolog_α
                                                                                        jmp   n36_var_ref_α
n35_call_builtin_prolog_β:
                                                                                        jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1728]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n37_var_α
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n38_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:
                        mov              qword ptr [rbp + 800], 3                       # result
                        mov              rax, qword ptr [rip + .Lx113_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n39_call_builtin_prolog_α
.Lx113_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n39_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 104
                                                                                        je    n59_call_builtin_prolog_α
                                                                                        jmp   n40_call_builtin_prolog_α
n39_call_builtin_prolog_β:
                                                                                        jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n40_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 104
                                                                                        je    n59_call_builtin_prolog_α
                                                                                        jmp   n41_var_ref_α
n40_call_builtin_prolog_β:
                                                                                        jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n42_var_α
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n43_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:
                        mov              qword ptr [rbp + 640], 3                       # result
                        mov              rax, qword ptr [rip + .Lx120_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n44_call_builtin_prolog_α
.Lx120_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n44_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 104
                                                                                        je    n59_call_builtin_prolog_α
                                                                                        jmp   n45_call_builtin_prolog_α
n44_call_builtin_prolog_β:
                                                                                        jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n45_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 104
                                                                                        je    n59_call_builtin_prolog_α
                                                                                        jmp   n46_var_ref_α
n45_call_builtin_prolog_β:
                                                                                        jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1728]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n47_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n48_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n48_call_proc_staged_α:
                        lea              rsi, [rbp + 464]
                        lea              rdx, [rbp + 480]
                        call             proc_fib$2F2_dcα
                                                                                        jmp   .Lx128_2
.Lx128_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 104
                                                                                        je    n59_call_builtin_prolog_α
                                                                                        jmp   n49_var_ref_α
n48_call_proc_staged_β:
                                                                                        jmp   n59_call_builtin_prolog_α
.Lx128_0:
                        .quad            .Lx128_0_s
.Lx128_0_s:
                        .string          "fib/2"
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n50_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1696]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                                                                                        jmp   n51_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n51_call_proc_staged_α:
                        lea              rsi, [rbp + 368]
                        lea              rdx, [rbp + 384]
                        call             proc_fib$2F2_dcα
                                                                                        jmp   .Lx134_2
.Lx134_2:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 104
                                                                                        je    n48_call_proc_staged_β
                                                                                        jmp   n52_var_ref_α
n51_call_proc_staged_β:
                                                                                        jmp   n48_call_proc_staged_β
.Lx134_0:
                        .quad            .Lx134_0_s
.Lx134_0_s:
                        .string          "fib/2"
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n54_var_α
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 296], rax
                                                                                        jmp   n55_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n55_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              eax, 104
                                                                                        je    n59_call_builtin_prolog_α
                                                                                        jmp   n56_call_builtin_prolog_α
n55_call_builtin_prolog_β:
                                                                                        jmp   n59_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n56_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n51_call_proc_staged_β
                                                                                        jmp   n57_move_label_α
n56_call_builtin_prolog_β:
                                                                                        jmp   n51_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n57_move_label_α:
                        lea              rax, [rip + n51_call_proc_staged_β]
                        mov              qword ptr [rbp + 64], rax
                                                                                        jmp   proc_fib$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
n58_disjunction_α:
                        call             rt_pl_cp_pop@PLT
                        test             rax, rax
                                                                                        je    proc_fib$2F2_ω
                                                                                        jmp   rax
n58_disjunction_β:
                                                                                        jmp   proc_fib$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n59_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 104
                                                                                        je    proc_fib$2F2_ω
                                                                                        jmp   proc_fib$2F2_ω
n59_call_builtin_prolog_β:
                                                                                        jmp   proc_fib$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
proc_fib$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_fib$2F2_β:
                                                                                        jmp   n58_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
proc_fib$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1784]
                        mov              rbp, qword ptr [rbp + 1800]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_fib$2F2_ω:
                        lea              rsp, [rbp + 1808]
                        mov              rcx, qword ptr [rbp + 1792]
                        mov              rbp, qword ptr [rbp + 1800]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
proc_fib$2F2_dcα:
                        pop              r11
                        push             r11
                        push             r11
                        push             rdx
                        push             rsi
                        mov              r10, qword ptr [rsp + 0]
                        mov              edi, 0                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        mov              r10, qword ptr [rsp + 8]
                        mov              edi, 1                                         # idx
                        mov              rsi, qword ptr [r10 + 0]                       # v
                        mov              rdx, qword ptr [r10 + 8]                       # v
                        call             rt_arg_stage@PLT
                        add              rsp, 16
                        lea              rcx, [rip + .Lx148_2]
                        lea              rdx, [rip + .Lx148_3]
                                                                                        jmp   proc_fib$2F2_α
.Lx148_2:
                        pop              r11
                        pop              r11
                                                                                        jmp   r11
.Lx148_3:
                        pop              r11
                        pop              r11
                        mov              eax, 104
                        xor              edx, edx
                                                                                        jmp   r11
proc_startup:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "fib/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_fib$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 0
                        call             rt_proc_set_nformals@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1760
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        lea              rsi, [rip + proc_fib$2F2_dcα]
                        call             rt_proc_set_dcfn@PLT
                        add              rsp, 8
                        ret
                        .globl           main
main:
                        sub              rsp, 8
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             proc_startup
                        mov              r12, qword ptr [0x70000000]
                        call             rt_gcheap_warmup@PLT
                        call             rt_plw_floor_bypass_on@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                                        jmp   main_α
.Lmain_zf_γ:
                        xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:
                        mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 352
                        mov              qword ptr [rsp + 328], rcx
                        mov              qword ptr [rsp + 336], rdx
                        mov              qword ptr [rsp + 344], rbp
                        mov              rbp, rsp
                        lea              rdi, [rbp + 0]
                        xor              eax, eax
                        mov              ecx, 320
                        rep stosb
                        mov              rdi, rbp
                        mov              esi, 0
                        mov              edx, 1
                        call             rt_icn_zframe_args_install@PLT
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n149_call_builtin_prolog_α:
                        lea              r11, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [r11]
                        test             rax, rax
                                                                                        je    .Lx160_102
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
                                                                                        jmp   .Lx160_101
.Lx160_102:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx160_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx160_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3
                                                                                        jmp   .Lx160_101
.Lx160_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx160_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   n150_lit_integer_α
n149_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:
                        mov              qword ptr [rbp + 256], 3                       # result
                        mov              rax, qword ptr [rip + .Lx161_0]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n151_var_ref_α
.Lx161_0:
                        .quad            20
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 288]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                                                                                        jmp   n152_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n152_call_proc_staged_α:
                        lea              rsi, [rbp + 256]
                        lea              rdx, [rbp + 272]
                        call             proc_fib$2F2_dcα
                                                                                        jmp   .Lx165_2
.Lx165_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 104
                                                                                        je    n159_call_builtin_prolog_α
                                                                                        jmp   n153_var_α
n152_call_proc_staged_β:
                                                                                        jmp   n159_call_builtin_prolog_α
.Lx165_0:
                        .quad            .Lx165_0_s
.Lx165_0_s:
                        .string          "fib/2"
#-----------------------------------------------------------------------------------------------------------------------
n153_var_α:
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n154_call_builtin_prolog_α
#-----------------------------------------------------------------------------------------------------------------------
n154_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn169:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn169]                         # fn
                        lea              rsi, [rbp + 160]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 104
                                                                                        je    n152_call_proc_staged_β
                                                                                        jmp   n155_lit_string_α
n154_call_builtin_prolog_β:
                                                                                        jmp   n152_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:
                        mov              qword ptr [rbp + 128], 2                       # result
                        mov              dword ptr [rbp + 132], 0
                        mov              rax, qword ptr [rip + .Lx170_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n156_call_builtin_prolog_α
.Lx170_0:
                        .quad            .Lx170_0_s
.Lx170_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n156_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn172:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn172]                         # fn
                        lea              rsi, [rbp + 112]                               # args
                        mov              edx, 1                                         # nargs
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 104
                                                                                        je    n152_call_proc_staged_β
                                                                                        jmp   n157_move_label_α
n156_call_builtin_prolog_β:
                                                                                        jmp   n152_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n157_move_label_α:
                        lea              rax, [rip + n152_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n158_disjunction_α:
                        call             rt_pl_cp_pop@PLT
                        test             rax, rax
                                                                                        je    main_ω
                                                                                        jmp   rax
n158_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n159_call_builtin_prolog_α:
                        mov              rax, qword ptr [rbp + 32]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 40]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 1
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              eax, 104
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n159_call_builtin_prolog_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n158_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        lea              rsp, [rbp + 352]
                        mov              rcx, qword ptr [rbp + 328]
                        mov              rbp, qword ptr [rbp + 344]
                                                                                        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        lea              rsp, [rbp + 352]
                        mov              rcx, qword ptr [rbp + 336]
                        mov              rbp, qword ptr [rbp + 344]
                                                                                        jmp   rcx
                        .section         .note.GNU-stack,"",@progbits
