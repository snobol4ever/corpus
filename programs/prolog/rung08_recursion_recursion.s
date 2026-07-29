                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_fib$2F2_α
proc_fib$2F2_α:
                        .global          proc_fib$2F2_α
                        .global          proc_fib$2F2_β
                        .global          proc_fib$2F2_γ
                        .global          proc_fib$2F2_ω
                        sub              rsp, 1840
                        mov              [rsp + 1816], rcx
                        mov              [rsp + 1824], rdx
                        mov              [rsp + 1832], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1696
                        mov              edx, 1808
                        call             rt_jmp_frame_lexprep2@PLT
proc_fib$2F2_α_body:
                        lea              rax, [rip + n20_suspend_β]
                        mov              qword ptr [rbp + 1696], rax
#-----------------------------------------------------------------------------------------------------------------------
n0_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx57_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx57_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx57_101
.Lx57_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx57_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_fib$2F2_ω
                                                                                        jmp   n1_var_ref_α
n0_op11_β:
                                                                                        jmp   proc_fib$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                                                                                        jmp   n2_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:
                        mov              qword ptr [rbp + 1664], 6
                        mov              rax, qword ptr [rip + .Lx60_0]
                        mov              qword ptr [rbp + 1672], rax
                                                                                        jmp   n3_lit_integer_α
.Lx60_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:
                        mov              qword ptr [rbp + 1680], 6
                        mov              rax, qword ptr [rip + .Lx61_0]
                        mov              qword ptr [rbp + 1688], rax
                                                                                        jmp   n4_op11_α
.Lx61_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n4_op11_α:
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1640], rax
                        lea              rdi, [rbp + 1600]
                        lea              r8, [rbp + 1600]
.Lx62_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx62_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx62_111
                        cmp              esi, 1
                                                                                        jne   .Lx62_112
                        mov              r8, rax
                                                                                        jmp   .Lx62_110
.Lx62_112:
                        cmp              esi, 2
                                                                                        jne   .Lx62_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx62_111
                        mov              r8, rax
                                                                                        jmp   .Lx62_110
.Lx62_113:
                        cmp              eax, 13
                                                                                        jne   .Lx62_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx62_111
                        cmp              rax, r8
                                                                                        je    .Lx62_111
                        mov              r8, rax
                                                                                        jmp   .Lx62_110
.Lx62_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx62_114
                        cmp              eax, 99
                                                                                        je    .Lx62_114
                        cmp              eax, 13
                                                                                        jne   .Lx62_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx62_114
                                                                                        jmp   .Lx62_118
.Lx62_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx62_115
                        cmp              eax, 6
                                                                                        jne   .Lx62_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx62_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx62_115
                                                                                        jmp   .Lx62_114
.Lx62_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx62_117
.Lx62_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx62_117
.Lx62_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx62_117:
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              eax, 99
                                                                                        je    n6_var_ref_α
                                                                                        jmp   n5_var_ref_α
n4_op11_β:
                                                                                        jmp   n6_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                                                                                        jmp   n7_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                                                                                        jmp   n8_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n7_lit_integer_α:
                        mov              qword ptr [rbp + 1568], 6
                        mov              rax, qword ptr [rip + .Lx67_0]
                        mov              qword ptr [rbp + 1576], rax
                                                                                        jmp   n9_op11_α
.Lx67_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:
                        mov              qword ptr [rbp + 1344], 6
                        mov              rax, qword ptr [rip + .Lx68_0]
                        mov              qword ptr [rbp + 1352], rax
                                                                                        jmp   n10_lit_integer_α
.Lx68_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n9_op11_α:
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n11_var_ref_α
n9_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_integer_α:
                        mov              qword ptr [rbp + 1360], 6
                        mov              rax, qword ptr [rip + .Lx70_0]
                        mov              qword ptr [rbp + 1368], rax
                                                                                        jmp   n13_op11_α
.Lx70_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                                                                                        jmp   n14_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n12_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              eax, 99
                                                                                        je    proc_fib$2F2_ω
                                                                                        jmp   n6_var_ref_α
n12_op11_β:
                                                                                        jmp   proc_fib$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n13_op11_α:
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1280]
                        lea              r8, [rbp + 1280]
.Lx74_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx74_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx74_111
                        cmp              esi, 1
                                                                                        jne   .Lx74_112
                        mov              r8, rax
                                                                                        jmp   .Lx74_110
.Lx74_112:
                        cmp              esi, 2
                                                                                        jne   .Lx74_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx74_111
                        mov              r8, rax
                                                                                        jmp   .Lx74_110
.Lx74_113:
                        cmp              eax, 13
                                                                                        jne   .Lx74_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx74_111
                        cmp              rax, r8
                                                                                        je    .Lx74_111
                        mov              r8, rax
                                                                                        jmp   .Lx74_110
.Lx74_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx74_114
                        cmp              eax, 99
                                                                                        je    .Lx74_114
                        cmp              eax, 13
                                                                                        jne   .Lx74_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx74_114
                                                                                        jmp   .Lx74_118
.Lx74_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx74_115
                        cmp              eax, 6
                                                                                        jne   .Lx74_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx74_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx74_115
                                                                                        jmp   .Lx74_114
.Lx74_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx74_117
.Lx74_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx74_117
.Lx74_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx74_117:
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              eax, 99
                                                                                        je    n16_var_ref_α
                                                                                        jmp   n15_var_ref_α
n13_op11_β:
                                                                                        jmp   n16_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n14_lit_integer_α:
                        mov              qword ptr [rbp + 1488], 6
                        mov              rax, qword ptr [rip + .Lx75_0]
                        mov              qword ptr [rbp + 1496], rax
                                                                                        jmp   n17_op11_α
.Lx75_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                                                                                        jmp   n18_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                                                                                        jmp   n19_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n17_op11_α:
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1440]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              eax, 99
                                                                                        je    n12_op11_α
                                                                                        jmp   n20_suspend_α
n17_op11_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n18_lit_integer_α:
                        mov              qword ptr [rbp + 1248], 6
                        mov              rax, qword ptr [rip + .Lx81_0]
                        mov              qword ptr [rbp + 1256], rax
                                                                                        jmp   n21_op11_α
.Lx81_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1792]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                                                                                        jmp   n22_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n20_suspend_α:
                        lea              rax, [rip + n20_suspend_β]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_fib$2F2_γ
n20_suspend_β:
                                                                                        jmp   n12_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n21_op11_α:
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1208], rax
                        lea              rdi, [rbp + 1200]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n23_var_ref_α
n21_op11_β:
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n22_op11_α:
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 992]
                        lea              r8, [rbp + 992]
.Lx87_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx87_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_41
                        cmp              esi, 1
                                                                                        jne   .Lx87_55
                        mov              r8, rax
                                                                                        jmp   .Lx87_40
.Lx87_55:
                        cmp              esi, 2
                                                                                        jne   .Lx87_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx87_41
                        mov              r8, rax
                                                                                        jmp   .Lx87_40
.Lx87_56:
                        cmp              eax, 13
                                                                                        jne   .Lx87_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_41
                        cmp              rax, r8
                                                                                        je    .Lx87_41
                        mov              r8, rax
                                                                                        jmp   .Lx87_40
.Lx87_41:
                        lea              r9, [rbp + 1008]
.Lx87_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx87_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_43
                        cmp              esi, 1
                                                                                        jne   .Lx87_57
                        mov              r9, rax
                                                                                        jmp   .Lx87_42
.Lx87_57:
                        cmp              esi, 2
                                                                                        jne   .Lx87_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx87_43
                        mov              r9, rax
                                                                                        jmp   .Lx87_42
.Lx87_58:
                        cmp              eax, 13
                                                                                        jne   .Lx87_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx87_43
                        cmp              rax, r9
                                                                                        je    .Lx87_43
                        mov              r9, rax
                                                                                        jmp   .Lx87_42
.Lx87_43:
                        cmp              r8, r9
                                                                                        je    .Lx87_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx87_44
                        cmp              eax, 99
                                                                                        je    .Lx87_44
                        cmp              eax, 13
                                                                                        jne   .Lx87_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx87_44
                                                                                        jmp   .Lx87_45
.Lx87_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx87_53
                        cmp              eax, 99
                                                                                        je    .Lx87_53
                        cmp              eax, 13
                                                                                        jne   .Lx87_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx87_53
                                                                                        jmp   .Lx87_46
.Lx87_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx87_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx87_53
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
                                                                                        jmp   .Lx87_51
.Lx87_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx87_47
                        cmp              eax, 99
                                                                                        je    .Lx87_47
                        cmp              eax, 13
                                                                                        jne   .Lx87_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx87_47
                                                                                        jmp   .Lx87_48
.Lx87_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx87_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx87_53
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
                                                                                        jmp   .Lx87_51
.Lx87_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx87_49
                        cmp              edx, 14
                                                                                        je    .Lx87_53
                                                                                        jmp   .Lx87_52
.Lx87_49:
                        cmp              edx, 14
                                                                                        je    .Lx87_52
                        cmp              ecx, 7
                                                                                        je    .Lx87_53
                        cmp              edx, 7
                                                                                        je    .Lx87_53
                        cmp              ecx, 6
                                                                                        jne   .Lx87_50
                        cmp              edx, 6
                                                                                        jne   .Lx87_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx87_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx87_51
                                                                                        jmp   .Lx87_52
.Lx87_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx87_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx87_53
.Lx87_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx87_54
.Lx87_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx87_54
.Lx87_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx87_54:
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n25_var_ref_α
n22_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                                                                                        jmp   n27_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n24_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              eax, 99
                                                                                        je    proc_fib$2F2_ω
                                                                                        jmp   n16_var_ref_α
n24_op11_β:
                                                                                        jmp   proc_fib$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                                                                                        jmp   n28_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n26_op11_α:
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
                                                                                        je    proc_fib$2F2_ω
                                                                                        jmp   proc_fib$2F2_ω
n26_op11_β:
                                                                                        jmp   proc_fib$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n27_lit_integer_α:
                        mov              qword ptr [rbp + 1168], 6
                        mov              rax, qword ptr [rip + .Lx94_0]
                        mov              qword ptr [rbp + 1176], rax
                                                                                        jmp   n29_op11_α
.Lx94_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n30_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n29_op11_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              eax, 99
                                                                                        je    n24_op11_α
                                                                                        jmp   n31_suspend_α
n29_op11_β:
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n30_op11_α:
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 912]
                        lea              r8, [rbp + 912]
.Lx98_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx98_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_41
                        cmp              esi, 1
                                                                                        jne   .Lx98_55
                        mov              r8, rax
                                                                                        jmp   .Lx98_40
.Lx98_55:
                        cmp              esi, 2
                                                                                        jne   .Lx98_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx98_41
                        mov              r8, rax
                                                                                        jmp   .Lx98_40
.Lx98_56:
                        cmp              eax, 13
                                                                                        jne   .Lx98_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_41
                        cmp              rax, r8
                                                                                        je    .Lx98_41
                        mov              r8, rax
                                                                                        jmp   .Lx98_40
.Lx98_41:
                        lea              r9, [rbp + 928]
.Lx98_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx98_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_43
                        cmp              esi, 1
                                                                                        jne   .Lx98_57
                        mov              r9, rax
                                                                                        jmp   .Lx98_42
.Lx98_57:
                        cmp              esi, 2
                                                                                        jne   .Lx98_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx98_43
                        mov              r9, rax
                                                                                        jmp   .Lx98_42
.Lx98_58:
                        cmp              eax, 13
                                                                                        jne   .Lx98_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx98_43
                        cmp              rax, r9
                                                                                        je    .Lx98_43
                        mov              r9, rax
                                                                                        jmp   .Lx98_42
.Lx98_43:
                        cmp              r8, r9
                                                                                        je    .Lx98_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_44
                        cmp              eax, 99
                                                                                        je    .Lx98_44
                        cmp              eax, 13
                                                                                        jne   .Lx98_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx98_44
                                                                                        jmp   .Lx98_45
.Lx98_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_53
                        cmp              eax, 99
                                                                                        je    .Lx98_53
                        cmp              eax, 13
                                                                                        jne   .Lx98_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx98_53
                                                                                        jmp   .Lx98_46
.Lx98_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx98_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx98_53
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
                                                                                        jmp   .Lx98_51
.Lx98_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx98_47
                        cmp              eax, 99
                                                                                        je    .Lx98_47
                        cmp              eax, 13
                                                                                        jne   .Lx98_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx98_47
                                                                                        jmp   .Lx98_48
.Lx98_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx98_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx98_53
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
                                                                                        jmp   .Lx98_51
.Lx98_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx98_49
                        cmp              edx, 14
                                                                                        je    .Lx98_53
                                                                                        jmp   .Lx98_52
.Lx98_49:
                        cmp              edx, 14
                                                                                        je    .Lx98_52
                        cmp              ecx, 7
                                                                                        je    .Lx98_53
                        cmp              edx, 7
                                                                                        je    .Lx98_53
                        cmp              ecx, 6
                                                                                        jne   .Lx98_50
                        cmp              edx, 6
                                                                                        jne   .Lx98_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx98_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx98_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx98_51
                                                                                        jmp   .Lx98_52
.Lx98_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx98_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx98_53
.Lx98_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx98_54
.Lx98_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx98_54
.Lx98_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx98_54:
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n32_var_α
n30_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n31_suspend_α:
                        lea              rax, [rip + n31_suspend_β]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_fib$2F2_γ
n31_suspend_β:
                                                                                        jmp   n24_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n32_var_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 872], rax
                                                                                        jmp   n33_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:
                        mov              qword ptr [rbp + 880], 6
                        mov              rax, qword ptr [rip + .Lx103_0]
                        mov              qword ptr [rbp + 888], rax
                                                                                        jmp   n34_op11_α
.Lx103_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n34_op11_α:
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n35_var_ref_α
n34_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                                                                                        jmp   n36_var_α
#-----------------------------------------------------------------------------------------------------------------------
n36_var_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 792], rax
                                                                                        jmp   n37_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:
                        mov              qword ptr [rbp + 800], 6
                        mov              rax, qword ptr [rip + .Lx109_0]
                        mov              qword ptr [rbp + 808], rax
                                                                                        jmp   n38_op11_α
.Lx109_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n38_op11_α:
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n39_op11_α
n38_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n39_op11_α:
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n40_var_ref_α
n39_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                                                                                        jmp   n41_var_α
#-----------------------------------------------------------------------------------------------------------------------
n41_var_α:
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 632], rax
                                                                                        jmp   n42_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_integer_α:
                        mov              qword ptr [rbp + 640], 6
                        mov              rax, qword ptr [rip + .Lx116_0]
                        mov              qword ptr [rbp + 648], rax
                                                                                        jmp   n43_op11_α
.Lx116_0:
                        .quad            2
#-----------------------------------------------------------------------------------------------------------------------
n43_op11_α:
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n44_op11_α
n43_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n44_op11_α:
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n45_var_ref_α
n44_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                                                                                        jmp   n46_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1728]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                                                                                        jmp   n47_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n47_call_proc_staged_α:
                        mov              qword ptr [rbp + 432], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx124_20
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx124_21
.Lx124_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        call             rt_arg_stage@PLT
.Lx124_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx124_22
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx124_23
.Lx124_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx124_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx124_1
                        lea              rcx, [rip + .Lx124_3]
                        lea              rdx, [rip + .Lx124_4]
                                                                                        jmp   rax
.Lx124_3:
                        mov              qword ptr [rbp + 440], rsp
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx124_5
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx124_2
.Lx124_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx124_2
.Lx124_4:
                        mov              rax, qword ptr [rbp + 432]
                        test             rax, rax
                                                                                        jne   .Lx124_6
                        mov              qword ptr [rbp + 432], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx124_2
.Lx124_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx124_2
.Lx124_1:
                        call             rt_faildescr@PLT
.Lx124_2:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n48_var_ref_α
n47_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 440]
                                                                                        jmp   qword ptr [rsp]
.Lx124_0:
                        .quad            .Lx124_0_s
.Lx124_0_s:
                        .string          "fib/2"
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n49_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n50_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n50_call_proc_staged_α:
                        mov              qword ptr [rbp + 320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx130_20
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx130_21
.Lx130_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx130_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx130_22
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx130_23
.Lx130_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx130_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx130_1
                        lea              rcx, [rip + .Lx130_3]
                        lea              rdx, [rip + .Lx130_4]
                                                                                        jmp   rax
.Lx130_3:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx130_5
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx130_2
.Lx130_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx130_2
.Lx130_4:
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx130_6
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx130_2
.Lx130_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx130_2
.Lx130_1:
                        call             rt_faildescr@PLT
.Lx130_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n47_call_proc_staged_β
                                                                                        jmp   n51_var_ref_α
n50_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 328]
                                                                                        jmp   qword ptr [rsp]
.Lx130_0:
                        .quad            .Lx130_0_s
.Lx130_0_s:
                        .string          "fib/2"
#-----------------------------------------------------------------------------------------------------------------------
n51_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n52_var_α
#-----------------------------------------------------------------------------------------------------------------------
n52_var_α:
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n53_var_α
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n54_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n54_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 2
                        call             rt_pl_dop_ax_add@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n26_op11_α
                                                                                        jmp   n55_op11_α
n54_op11_β:
                                                                                        jmp   n26_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n55_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n50_call_proc_staged_β
                                                                                        jmp   n56_suspend_α
n55_op11_β:
                                                                                        jmp   n50_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n56_suspend_α:
                        lea              rax, [rip + n56_suspend_β]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_fib$2F2_γ
n56_suspend_β:
                                                                                        jmp   n50_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_fib$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_fib$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1696]
#-----------------------------------------------------------------------------------------------------------------------
proc_fib$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_fib$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1816]
                        mov              rbp, [rbp + 1832]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_fib$2F2_ω:
                        mov              rax, [rbp + 1824]
                        lea              rsp, [rbp + 1840]
                        mov              rbp, [rbp + 1832]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
                        .globl           proc_factorial$2F2_α
proc_factorial$2F2_α:
                        .global          proc_factorial$2F2_α
                        .global          proc_factorial$2F2_β
                        .global          proc_factorial$2F2_γ
                        .global          proc_factorial$2F2_ω
                        sub              rsp, 1216
                        mov              [rsp + 1192], rcx
                        mov              [rsp + 1200], rdx
                        mov              [rsp + 1208], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        mov              esi, 1104
                        mov              edx, 1184
                        call             rt_jmp_frame_lexprep2@PLT
proc_factorial$2F2_α_body:
                        lea              rax, [rip + n160_suspend_β]
                        mov              qword ptr [rbp + 1104], rax
#-----------------------------------------------------------------------------------------------------------------------
n141_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx178_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx178_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx178_101
.Lx178_100:
                        lea              rdi, [rbp + 64]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx178_101:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              eax, 99
                                                                                        je    proc_factorial$2F2_ω
                                                                                        jmp   n142_var_ref_α
n141_op11_β:
                                                                                        jmp   proc_factorial$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n142_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                                                                                        jmp   n143_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_integer_α:
                        mov              qword ptr [rbp + 1072], 6
                        mov              rax, qword ptr [rip + .Lx181_0]
                        mov              qword ptr [rbp + 1080], rax
                                                                                        jmp   n144_lit_integer_α
.Lx181_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:
                        mov              qword ptr [rbp + 1088], 6
                        mov              rax, qword ptr [rip + .Lx182_0]
                        mov              qword ptr [rbp + 1096], rax
                                                                                        jmp   n145_op11_α
.Lx182_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n145_op11_α:
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1008]
                        lea              r8, [rbp + 1008]
.Lx183_110:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx183_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx183_111
                        cmp              esi, 1
                                                                                        jne   .Lx183_112
                        mov              r8, rax
                                                                                        jmp   .Lx183_110
.Lx183_112:
                        cmp              esi, 2
                                                                                        jne   .Lx183_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx183_111
                        mov              r8, rax
                                                                                        jmp   .Lx183_110
.Lx183_113:
                        cmp              eax, 13
                                                                                        jne   .Lx183_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx183_111
                        cmp              rax, r8
                                                                                        je    .Lx183_111
                        mov              r8, rax
                                                                                        jmp   .Lx183_110
.Lx183_111:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx183_114
                        cmp              eax, 99
                                                                                        je    .Lx183_114
                        cmp              eax, 13
                                                                                        jne   .Lx183_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx183_114
                                                                                        jmp   .Lx183_118
.Lx183_118:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 14
                                                                                        je    .Lx183_115
                        cmp              eax, 6
                                                                                        jne   .Lx183_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0
                                                                                        jne   .Lx183_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx
                                                                                        jne   .Lx183_115
                                                                                        jmp   .Lx183_114
.Lx183_114:
                        mov              eax, 6
                        mov              edx, 1
                                                                                        jmp   .Lx183_117
.Lx183_115:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx183_117
.Lx183_116:
                        mov              esi, 3
                        call             rt_pl_dop_ix_g@PLT
.Lx183_117:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              eax, 99
                                                                                        je    n147_var_ref_α
                                                                                        jmp   n146_var_ref_α
n145_op11_β:
                                                                                        jmp   n147_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                                                                                        jmp   n148_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n147_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                                                                                        jmp   n149_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n148_lit_integer_α:
                        mov              qword ptr [rbp + 976], 6
                        mov              rax, qword ptr [rip + .Lx188_0]
                        mov              qword ptr [rbp + 984], rax
                                                                                        jmp   n150_op11_α
.Lx188_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                                                                                        jmp   n151_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n150_op11_α:
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        movabs           rsi, 0
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              eax, 99
                                                                                        je    n153_op11_α
                                                                                        jmp   n152_var_ref_α
n150_op11_β:
                                                                                        jmp   n153_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n151_op11_α:
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 720]
                        lea              r8, [rbp + 720]
.Lx192_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx192_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx192_41
                        cmp              esi, 1
                                                                                        jne   .Lx192_55
                        mov              r8, rax
                                                                                        jmp   .Lx192_40
.Lx192_55:
                        cmp              esi, 2
                                                                                        jne   .Lx192_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx192_41
                        mov              r8, rax
                                                                                        jmp   .Lx192_40
.Lx192_56:
                        cmp              eax, 13
                                                                                        jne   .Lx192_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx192_41
                        cmp              rax, r8
                                                                                        je    .Lx192_41
                        mov              r8, rax
                                                                                        jmp   .Lx192_40
.Lx192_41:
                        lea              r9, [rbp + 736]
.Lx192_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx192_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx192_43
                        cmp              esi, 1
                                                                                        jne   .Lx192_57
                        mov              r9, rax
                                                                                        jmp   .Lx192_42
.Lx192_57:
                        cmp              esi, 2
                                                                                        jne   .Lx192_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx192_43
                        mov              r9, rax
                                                                                        jmp   .Lx192_42
.Lx192_58:
                        cmp              eax, 13
                                                                                        jne   .Lx192_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx192_43
                        cmp              rax, r9
                                                                                        je    .Lx192_43
                        mov              r9, rax
                                                                                        jmp   .Lx192_42
.Lx192_43:
                        cmp              r8, r9
                                                                                        je    .Lx192_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx192_44
                        cmp              eax, 99
                                                                                        je    .Lx192_44
                        cmp              eax, 13
                                                                                        jne   .Lx192_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx192_44
                                                                                        jmp   .Lx192_45
.Lx192_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx192_53
                        cmp              eax, 99
                                                                                        je    .Lx192_53
                        cmp              eax, 13
                                                                                        jne   .Lx192_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx192_53
                                                                                        jmp   .Lx192_46
.Lx192_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx192_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx192_53
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
                                                                                        jmp   .Lx192_51
.Lx192_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx192_47
                        cmp              eax, 99
                                                                                        je    .Lx192_47
                        cmp              eax, 13
                                                                                        jne   .Lx192_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx192_47
                                                                                        jmp   .Lx192_48
.Lx192_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx192_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx192_53
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
                                                                                        jmp   .Lx192_51
.Lx192_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx192_49
                        cmp              edx, 14
                                                                                        je    .Lx192_53
                                                                                        jmp   .Lx192_52
.Lx192_49:
                        cmp              edx, 14
                                                                                        je    .Lx192_52
                        cmp              ecx, 7
                                                                                        je    .Lx192_53
                        cmp              edx, 7
                                                                                        je    .Lx192_53
                        cmp              ecx, 6
                                                                                        jne   .Lx192_50
                        cmp              edx, 6
                                                                                        jne   .Lx192_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx192_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx192_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx192_51
                                                                                        jmp   .Lx192_52
.Lx192_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx192_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx192_53
.Lx192_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx192_54
.Lx192_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx192_54
.Lx192_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx192_54:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              eax, 99
                                                                                        je    n155_op11_α
                                                                                        jmp   n154_var_ref_α
n151_op11_β:
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                                                                                        jmp   n156_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n153_op11_α:
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 1
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              eax, 99
                                                                                        je    proc_factorial$2F2_ω
                                                                                        jmp   n147_var_ref_α
n153_op11_β:
                                                                                        jmp   proc_factorial$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                                                                                        jmp   n157_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n155_op11_α:
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
                                                                                        je    proc_factorial$2F2_ω
                                                                                        jmp   proc_factorial$2F2_ω
n155_op11_β:
                                                                                        jmp   proc_factorial$2F2_ω
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:
                        mov              qword ptr [rbp + 896], 6
                        mov              rax, qword ptr [rip + .Lx199_0]
                        mov              qword ptr [rbp + 904], rax
                                                                                        jmp   n158_op11_α
.Lx199_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                                                                                        jmp   n159_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n158_op11_α:
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        movabs           rsi, 1
                        call             rt_pl_dop_unify_ci@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              eax, 99
                                                                                        je    n153_op11_α
                                                                                        jmp   n160_suspend_α
n158_op11_β:
                                                                                        jmp   n153_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n159_op11_α:
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 640]
                        lea              r8, [rbp + 640]
.Lx203_40:
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx203_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx203_41
                        cmp              esi, 1
                                                                                        jne   .Lx203_55
                        mov              r8, rax
                                                                                        jmp   .Lx203_40
.Lx203_55:
                        cmp              esi, 2
                                                                                        jne   .Lx203_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx203_41
                        mov              r8, rax
                                                                                        jmp   .Lx203_40
.Lx203_56:
                        cmp              eax, 13
                                                                                        jne   .Lx203_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax
                                                                                        je    .Lx203_41
                        cmp              rax, r8
                                                                                        je    .Lx203_41
                        mov              r8, rax
                                                                                        jmp   .Lx203_40
.Lx203_41:
                        lea              r9, [rbp + 656]
.Lx203_42:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 9
                                                                                        jne   .Lx203_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx203_43
                        cmp              esi, 1
                                                                                        jne   .Lx203_57
                        mov              r9, rax
                                                                                        jmp   .Lx203_42
.Lx203_57:
                        cmp              esi, 2
                                                                                        jne   .Lx203_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax
                                                                                        je    .Lx203_43
                        mov              r9, rax
                                                                                        jmp   .Lx203_42
.Lx203_58:
                        cmp              eax, 13
                                                                                        jne   .Lx203_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax
                                                                                        je    .Lx203_43
                        cmp              rax, r9
                                                                                        je    .Lx203_43
                        mov              r9, rax
                                                                                        jmp   .Lx203_42
.Lx203_43:
                        cmp              r8, r9
                                                                                        je    .Lx203_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx203_44
                        cmp              eax, 99
                                                                                        je    .Lx203_44
                        cmp              eax, 13
                                                                                        jne   .Lx203_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8
                                                                                        je    .Lx203_44
                                                                                        jmp   .Lx203_45
.Lx203_44:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx203_53
                        cmp              eax, 99
                                                                                        je    .Lx203_53
                        cmp              eax, 13
                                                                                        jne   .Lx203_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx203_53
                                                                                        jmp   .Lx203_46
.Lx203_46:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx203_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx203_53
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
                                                                                        jmp   .Lx203_51
.Lx203_45:
                        mov              eax, dword ptr [r9 + 0]
                        cmp              eax, 0
                                                                                        je    .Lx203_47
                        cmp              eax, 99
                                                                                        je    .Lx203_47
                        cmp              eax, 13
                                                                                        jne   .Lx203_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9
                                                                                        je    .Lx203_47
                                                                                        jmp   .Lx203_48
.Lx203_47:
                        lea              r10, [rip + g_pl_trail]
                        mov              r11, qword ptr [r10 + 0]
                        test             r11, r11
                                                                                        je    .Lx203_53
                        mov              eax, dword ptr [r10 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r10 + 24]
                        sub              rax, 24
                        cmp              rsi, rax
                                                                                        ja    .Lx203_53
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
                                                                                        jmp   .Lx203_51
.Lx203_48:
                        mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              ecx, 14
                                                                                        jne   .Lx203_49
                        cmp              edx, 14
                                                                                        je    .Lx203_53
                                                                                        jmp   .Lx203_52
.Lx203_49:
                        cmp              edx, 14
                                                                                        je    .Lx203_52
                        cmp              ecx, 7
                                                                                        je    .Lx203_53
                        cmp              edx, 7
                                                                                        je    .Lx203_53
                        cmp              ecx, 6
                                                                                        jne   .Lx203_50
                        cmp              edx, 6
                                                                                        jne   .Lx203_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx203_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 6
                                                                                        jne   .Lx203_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        je    .Lx203_51
                                                                                        jmp   .Lx203_52
.Lx203_50:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi
                                                                                        jne   .Lx203_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi
                                                                                        jne   .Lx203_53
.Lx203_51:
                        mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8]
                                                                                        jmp   .Lx203_54
.Lx203_52:
                        mov              eax, 99
                        mov              edx, 0
                                                                                        jmp   .Lx203_54
.Lx203_53:
                        mov              esi, 2
                        call             rt_pl_dop_unify@PLT
.Lx203_54:
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              eax, 99
                                                                                        je    n155_op11_α
                                                                                        jmp   n161_var_α
n159_op11_β:
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n160_suspend_α:
                        lea              rax, [rip + n160_suspend_β]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_factorial$2F2_γ
n160_suspend_β:
                                                                                        jmp   n153_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n161_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 600], rax
                                                                                        jmp   n162_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:
                        mov              qword ptr [rbp + 608], 6
                        mov              rax, qword ptr [rip + .Lx208_0]
                        mov              qword ptr [rbp + 616], rax
                                                                                        jmp   n163_op11_α
.Lx208_0:
                        .quad            0
#-----------------------------------------------------------------------------------------------------------------------
n163_op11_α:
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 2
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              eax, 99
                                                                                        je    n155_op11_α
                                                                                        jmp   n164_var_ref_α
n163_op11_β:
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                                                                                        jmp   n165_var_α
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 520], rax
                                                                                        jmp   n166_lit_integer_α
#-----------------------------------------------------------------------------------------------------------------------
n166_lit_integer_α:
                        mov              qword ptr [rbp + 528], 6
                        mov              rax, qword ptr [rip + .Lx214_0]
                        mov              qword ptr [rbp + 536], rax
                                                                                        jmp   n167_op11_α
.Lx214_0:
                        .quad            1
#-----------------------------------------------------------------------------------------------------------------------
n167_op11_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 2
                        call             rt_pl_dop_ax_sub@PLT
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              eax, 99
                                                                                        je    n155_op11_α
                                                                                        jmp   n168_op11_α
n167_op11_β:
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n168_op11_α:
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              eax, 99
                                                                                        je    n155_op11_α
                                                                                        jmp   n169_var_ref_α
n168_op11_β:
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                                                                                        jmp   n170_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                                                                                        jmp   n171_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n171_call_proc_staged_α:
                        mov              qword ptr [rbp + 320], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx222_20
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx222_21
.Lx222_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        call             rt_arg_stage@PLT
.Lx222_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx222_22
                        mov              rax, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx222_23
.Lx222_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 368]
                        mov              rdx, qword ptr [rbp + 376]
                        call             rt_arg_stage@PLT
.Lx222_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx222_1
                        lea              rcx, [rip + .Lx222_3]
                        lea              rdx, [rip + .Lx222_4]
                                                                                        jmp   rax
.Lx222_3:
                        mov              qword ptr [rbp + 328], rsp
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx222_5
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx222_2
.Lx222_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx222_2
.Lx222_4:
                        mov              rax, qword ptr [rbp + 320]
                        test             rax, rax
                                                                                        jne   .Lx222_6
                        mov              qword ptr [rbp + 320], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx222_2
.Lx222_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx222_2
.Lx222_1:
                        call             rt_faildescr@PLT
.Lx222_2:
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              eax, 99
                                                                                        je    n155_op11_α
                                                                                        jmp   n172_var_ref_α
n171_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 328]
                                                                                        jmp   qword ptr [rsp]
.Lx222_0:
                        .quad            .Lx222_0_s
.Lx222_0_s:
                        .string          "factorial/2"
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                                                                                        jmp   n173_var_α
#-----------------------------------------------------------------------------------------------------------------------
n173_var_α:
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 248], rax
                                                                                        jmp   n174_var_α
#-----------------------------------------------------------------------------------------------------------------------
n174_var_α:
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 264], rax
                                                                                        jmp   n175_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n175_op11_α:
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 2
                        call             rt_pl_dop_ax_mul@PLT
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              eax, 99
                                                                                        je    n155_op11_α
                                                                                        jmp   n176_op11_α
n175_op11_β:
                                                                                        jmp   n155_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n176_op11_α:
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 2
                        call             rt_pl_dop_is_v@PLT
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              eax, 99
                                                                                        je    n171_call_proc_staged_β
                                                                                        jmp   n177_suspend_α
n176_op11_β:
                                                                                        jmp   n171_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n177_suspend_α:
                        lea              rax, [rip + n177_suspend_β]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 0], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 8], rax
                                                                                        jmp   proc_factorial$2F2_γ
n177_suspend_β:
                                                                                        jmp   n171_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
proc_factorial$2F2_res:
                        add              rsp, 8
                        pop              rbp
#-----------------------------------------------------------------------------------------------------------------------
proc_factorial$2F2_β:
                                                                                        jmp   qword ptr [rbp + 1104]
#-----------------------------------------------------------------------------------------------------------------------
proc_factorial$2F2_γ:
                        mov              rdi, [rbp]
                        mov              rsi, [rbp + 8]
                        push             rbp
                        lea              rax, [rip + proc_factorial$2F2_res]
                        push             rax
                        mov              rax, [rbp + 1192]
                        mov              rbp, [rbp + 1208]
                                                                                        jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
proc_factorial$2F2_ω:
                        mov              rax, [rbp + 1200]
                        lea              rsp, [rbp + 1216]
                        mov              rbp, [rbp + 1208]
                                                                                        jmp   rax
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
                        mov              esi, 1808
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname0]
                        mov              esi, 1
                        call             rt_proc_set_generator@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "factorial/2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_pname1]
                        lea              rsi, [rip + proc_factorial$2F2_α]
                        call             rt_proc_set_fn@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 2
                        call             rt_proc_set_nparams@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1184
                        call             rt_proc_set_frame_bytes@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
                        mov              esi, 1
                        call             rt_proc_set_jmpentry@PLT
                        lea              rdi, [rip + .Lstartup_pname1]
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
                        sub              rsp, 552
                        mov              rdi, rsp
                        mov              ecx, 552
                        xor              eax, eax
                        rep stosb
                        mov              [rsp + 544], rbp
                        mov              rbp, rsp
main_α_body:
#-----------------------------------------------------------------------------------------------------------------------
n233_op11_α:
                        lea              r10, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r10 + 0]
                        test             eax, eax
                                                                                        jne   .Lx251_100
                        lea              r10, [rip + g_zeta_mode]
                        mov              eax, dword ptr [r10 + 0]
                        cmp              eax, 2
                                                                                        je    .Lx251_100
                        lea              r10, [rip + g_pl_trail]
                        mov              eax, dword ptr [r10 + 32]
                        movsxd           rdx, eax
                        mov              eax, 6
                                                                                        jmp   .Lx251_101
.Lx251_100:
                        lea              rdi, [rbp + 48]
                        mov              esi, 0
                        call             rt_pl_dop_trail_mark@PLT
.Lx251_101:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              eax, 99
                                                                                        je    main_ω
                                                                                        jmp   n234_lit_integer_α
n233_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_integer_α:
                        mov              qword ptr [rbp + 480], 6
                        mov              rax, qword ptr [rip + .Lx252_0]
                        mov              qword ptr [rbp + 488], rax
                                                                                        jmp   n235_var_ref_α
.Lx252_0:
                        .quad            6
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 528]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                                                                                        jmp   n236_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n236_call_proc_staged_α:
                        mov              qword ptr [rbp + 448], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx256_20
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx256_21
.Lx256_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        call             rt_arg_stage@PLT
.Lx256_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx256_22
                        mov              rax, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx256_23
.Lx256_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 496]
                        mov              rdx, qword ptr [rbp + 504]
                        call             rt_arg_stage@PLT
.Lx256_23:
                        mov              edi, 0
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx256_1
                        lea              rcx, [rip + .Lx256_3]
                        lea              rdx, [rip + .Lx256_4]
                                                                                        jmp   rax
.Lx256_3:
                        mov              qword ptr [rbp + 456], rsp
                        mov              rax, qword ptr [rbp + 448]
                        test             rax, rax
                                                                                        jne   .Lx256_5
                        mov              qword ptr [rbp + 448], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx256_2
.Lx256_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx256_2
.Lx256_4:
                        mov              rax, qword ptr [rbp + 448]
                        test             rax, rax
                                                                                        jne   .Lx256_6
                        mov              qword ptr [rbp + 448], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx256_2
.Lx256_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx256_2
.Lx256_1:
                        call             rt_faildescr@PLT
.Lx256_2:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              eax, 99
                                                                                        je    n238_op11_α
                                                                                        jmp   n237_var_α
n236_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 456]
                                                                                        jmp   qword ptr [rsp]
.Lx256_0:
                        .quad            .Lx256_0_s
.Lx256_0_s:
                        .string          "fib/2"
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 392], rax
                                                                                        jmp   n239_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n238_op11_α:
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
                                                                                        je    main_ω
                                                                                        jmp   main_ω
n238_op11_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
n239_op11_α:
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 376], rax
                        .section         .rodata
.Lrkfn261:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn261]
                        lea              rsi, [rbp + 368]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              eax, 99
                                                                                        je    n236_call_proc_staged_β
                                                                                        jmp   n240_lit_string_α
n239_op11_β:
                                                                                        jmp   n236_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_string_α:
                        mov              qword ptr [rbp + 336], 1
                        mov              rax, qword ptr [rip + .Lx262_0]
                        mov              qword ptr [rbp + 344], rax
                                                                                        jmp   n241_op11_α
.Lx262_0:
                        .quad            .Lx262_0_s
.Lx262_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n241_op11_α:
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 328], rax
                        .section         .rodata
.Lrkfn264:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn264]
                        lea              rsi, [rbp + 320]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              eax, 99
                                                                                        je    n236_call_proc_staged_β
                                                                                        jmp   n242_lit_integer_α
n241_op11_β:
                                                                                        jmp   n236_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_integer_α:
                        mov              qword ptr [rbp + 272], 6
                        mov              rax, qword ptr [rip + .Lx265_0]
                        mov              qword ptr [rbp + 280], rax
                                                                                        jmp   n243_var_ref_α
.Lx265_0:
                        .quad            3
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:
                        mov              rax, 4294967305
                        lea              rdx, [rbp + 512]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                                                                                        jmp   n244_call_proc_staged_α
#-----------------------------------------------------------------------------------------------------------------------
n244_call_proc_staged_α:
                        mov              qword ptr [rbp + 240], 0
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_20
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 0], rax
                        mov              qword ptr [r10 + 8], rdx
                                                                                        jmp   .Lx269_21
.Lx269_20:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        call             rt_arg_stage@PLT
.Lx269_21:
                        lea              r11, [rip + g_gc_pending]
                        mov              eax, dword ptr [r11 + 0]
                        test             eax, eax
                                                                                        jne   .Lx269_22
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r10, [rip + g_call_args]
                        mov              qword ptr [r10 + 16], rax
                        mov              qword ptr [r10 + 24], rdx
                                                                                        jmp   .Lx269_23
.Lx269_22:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        call             rt_arg_stage@PLT
.Lx269_23:
                        mov              edi, 1
                        mov              esi, 2
                        call             rt_proc_call_open_det@PLT
                        test             rax, rax
                                                                                        je    .Lx269_1
                        lea              rcx, [rip + .Lx269_3]
                        lea              rdx, [rip + .Lx269_4]
                                                                                        jmp   rax
.Lx269_3:
                        mov              qword ptr [rbp + 248], rsp
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx269_5
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_γ@PLT
                                                                                        jmp   .Lx269_2
.Lx269_5:
                        call             rt_gen_spine_pass_γ@PLT
                                                                                        jmp   .Lx269_2
.Lx269_4:
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax
                                                                                        jne   .Lx269_6
                        mov              qword ptr [rbp + 240], 1
                        call             rt_proc_call_epilogue_ω@PLT
                                                                                        jmp   .Lx269_2
.Lx269_6:
                        call             rt_gen_spine_pass_ω@PLT
                                                                                        jmp   .Lx269_2
.Lx269_1:
                        call             rt_faildescr@PLT
.Lx269_2:
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              eax, 99
                                                                                        je    n236_call_proc_staged_β
                                                                                        jmp   n245_var_α
n244_call_proc_staged_β:
                        call             rt_gen_spine_resume_enter@PLT
                        mov              rsp, qword ptr [rbp + 248]
                                                                                        jmp   qword ptr [rsp]
.Lx269_0:
                        .quad            .Lx269_0_s
.Lx269_0_s:
                        .string          "factorial/2"
#-----------------------------------------------------------------------------------------------------------------------
n245_var_α:
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 184], rax
                                                                                        jmp   n246_op11_α
#-----------------------------------------------------------------------------------------------------------------------
n246_op11_α:
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 168], rax
                        .section         .rodata
.Lrkfn273:              .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn273]
                        lea              rsi, [rbp + 160]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              eax, 99
                                                                                        je    n244_call_proc_staged_β
                                                                                        jmp   n247_lit_string_α
n246_op11_β:
                                                                                        jmp   n244_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:
                        mov              qword ptr [rbp + 128], 1
                        mov              rax, qword ptr [rip + .Lx274_0]
                        mov              qword ptr [rbp + 136], rax
                                                                                        jmp   n248_op11_α
.Lx274_0:
                        .quad            .Lx274_0_s
.Lx274_0_s:
                        .string          ""
#-----------------------------------------------------------------------------------------------------------------------
n248_op11_α:
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 120], rax
                        .section         .rodata
.Lrkfn276:              .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lrkfn276]
                        lea              rsi, [rbp + 112]
                        mov              edx, 1
                        call             rt_call_arr@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              eax, 99
                                                                                        je    n244_call_proc_staged_β
                                                                                        jmp   n249_move_label_α
n248_op11_β:
                                                                                        jmp   n244_call_proc_staged_β
#-----------------------------------------------------------------------------------------------------------------------
n249_move_label_α:
                        lea              rax, [rip + n244_call_proc_staged_β]
                        mov              qword ptr [rbp + 16], rax
                                                                                        jmp   main_γ
#-----------------------------------------------------------------------------------------------------------------------
n250_disjunction_α:
                                                                                        jmp   qword ptr [rbp + 16]
n250_disjunction_β:
                                                                                        jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                                        jmp   n250_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              eax, 1
                        xor              edx, edx
                        mov              rsp, rbp
                        mov              rbp, [rsp + 544]
                        add              rsp, 552
                        ret
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rsp, rbp
                        mov              eax, 99
                        xor              edx, edx
                        mov              rbp, [rsp + 544]
                        add              rsp, 552
                        ret
                        .section         .note.GNU-stack,"",@progbits
