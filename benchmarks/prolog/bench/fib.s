                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__fib$2F2:
                        sub              rsp, 1808
                        mov              qword ptr [rsp + 1784], rcx
                        mov              qword ptr [rsp + 1792], rdx
                        mov              qword ptr [rsp + 1800], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1776
                        rep              stosb
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_icn_zframe_args_install@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
fib$2F2_α_body:
                        .type            n0_call_prolog_bx, @function
n0_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_call_prolog_α:       mov              r11, 1
                        lea              rdi, [rip + g_pl_zf_pending_cursor]
                        mov              rax, qword ptr [rdi]
                        test             rax, rax;                            je    .Lcall_prolog_α_60_102
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88];           jmp   .Lcall_prolog_α_60_101
.Lcall_prolog_α_60_102: lea              r12, [rip + g_plw_cellws_on]
                        mov              eax, dword ptr [r12 + 0]
                        test             eax, eax;                            jne   .Lcall_prolog_α_60_100
                        lea              r12, [rip + g_pl_trail]
                        mov              eax, dword ptr [r12 + 32]
                        movsxd           rdx, eax
                        mov              eax, 3;                              jmp   .Lcall_prolog_α_60_101
.Lcall_prolog_α_60_100: lea              rdi, [rbp + 96]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_mark@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_60_101: mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    fib$2F2_ω
                                                                              jmp   n1_var_ref_α
n0_call_prolog_β:       mov              r11, 1;                              jmp   fib$2F2_ω
                        .size            n0_call_prolog_bx, .-n0_call_prolog_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx;         jmp   n2_lit_integer_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_lit_integer_bx, @function
n2_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_lit_integer_α:       mov              r11, 3
                        mov              qword ptr [rbp + 1632], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_63_0]
                        mov              qword ptr [rbp + 1640], rax;         jmp   n3_lit_integer_α
.Llit_integer_α_63_0:   .quad            1
                        .size            n2_lit_integer_bx, .-n2_lit_integer_bx
                        .type            n3_lit_integer_bx, @function
n3_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_lit_integer_α:       mov              r11, 4
                        mov              qword ptr [rbp + 1648], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_64_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n4_call_prolog_α
.Llit_integer_α_64_0:   .quad            0
                        .size            n3_lit_integer_bx, .-n3_lit_integer_bx
                        .type            n4_call_prolog_bx, @function
n4_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_prolog_α:       mov              r11, 5
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
.Lcall_prolog_α_65_110: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_65_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_65_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_65_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_65_110
.Lcall_prolog_α_65_112: cmp              esi, 2;                              jne   .Lcall_prolog_α_65_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_65_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_65_110
.Lcall_prolog_α_65_113: cmp              al, 72;                              jne   .Lcall_prolog_α_65_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_65_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_65_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_65_110
.Lcall_prolog_α_65_111: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_65_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_65_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_65_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_65_114
                                                                              jmp   .Lcall_prolog_α_65_118
.Lcall_prolog_α_65_118: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_65_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_65_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_65_114
                        movabs           rdx, 0
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_65_115
                                                                              jmp   .Lcall_prolog_α_65_114
.Lcall_prolog_α_65_114: mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_65_117
.Lcall_prolog_α_65_115: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_65_117
.Lcall_prolog_α_65_116: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_65_117: mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx
                        cmp              al, 104;                             je    n14_var_ref_α
                                                                              jmp   n5_var_ref_α
n4_call_prolog_β:       mov              r11, 5;                              jmp   n14_var_ref_α
                        .size            n4_call_prolog_bx, .-n4_call_prolog_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n6_lit_integer_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_lit_integer_bx, @function
n6_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_lit_integer_α:       mov              r11, 7
                        mov              qword ptr [rbp + 1536], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_68_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n7_call_prolog_α
.Llit_integer_α_68_0:   .quad            0
                        .size            n6_lit_integer_bx, .-n6_lit_integer_bx
                        .type            n7_call_prolog_bx, @function
n7_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_call_prolog_α:       mov              r11, 8
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1488]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              al, 104;                             je    n13_call_prolog_α
                                                                              jmp   n8_var_ref_α
n7_call_prolog_β:       mov              r11, 8;                              jmp   n13_call_prolog_α
                        .size            n7_call_prolog_bx, .-n7_call_prolog_bx
                        .type            n8_var_ref_bx, @function
n8_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_var_ref_α:           mov              r11, 9
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n9_lit_integer_α
                        .size            n8_var_ref_bx, .-n8_var_ref_bx
                        .type            n9_lit_integer_bx, @function
n9_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_lit_integer_α:       mov              r11, 10
                        mov              qword ptr [rbp + 1456], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_72_0]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n10_call_prolog_α
.Llit_integer_α_72_0:   .quad            1
                        .size            n9_lit_integer_bx, .-n9_lit_integer_bx
                        .type            n10_call_prolog_bx, @function
n10_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_call_prolog_α:      mov              r11, 11
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    n13_call_prolog_α
                                                                              jmp   n11_cut_α
n10_call_prolog_β:      mov              r11, 11;                             jmp   n13_call_prolog_α
                        .size            n10_call_prolog_bx, .-n10_call_prolog_bx
                        .type            n11_cut_bx, @function
n11_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_cut_α:              mov              r11, 12;                             jmp   n12_move_label_α
                        .size            n11_cut_bx, .-n11_cut_bx
                        .type            n12_move_label_bx, @function
n12_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_move_label_α:       mov              r11, 13
                        lea              rax, [rip + n13_call_prolog_α]
                        mov              qword ptr [rbp + 64], rax;           jmp   fib$2F2_γ
                        .size            n12_move_label_bx, .-n12_move_label_bx
                        .type            n13_call_prolog_bx, @function
n13_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_call_prolog_α:      mov              r11, 14
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              al, 104;                             je    fib$2F2_ω
                                                                              jmp   n14_var_ref_α
n13_call_prolog_β:      mov              r11, 14;                             jmp   fib$2F2_ω
                        .size            n13_call_prolog_bx, .-n13_call_prolog_bx
                        .type            n14_var_ref_bx, @function
n14_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n15_lit_integer_α
                        .size            n14_var_ref_bx, .-n14_var_ref_bx
                        .type            n15_lit_integer_bx, @function
n15_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_lit_integer_α:      mov              r11, 16
                        mov              qword ptr [rbp + 1328], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_80_0]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n16_lit_integer_α
.Llit_integer_α_80_0:   .quad            1
                        .size            n15_lit_integer_bx, .-n15_lit_integer_bx
                        .type            n16_lit_integer_bx, @function
n16_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_integer_α:      mov              r11, 17
                        mov              qword ptr [rbp + 1344], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_81_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n17_call_prolog_α
.Llit_integer_α_81_0:   .quad            1
                        .size            n16_lit_integer_bx, .-n16_lit_integer_bx
                        .type            n17_call_prolog_bx, @function
n17_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_prolog_α:      mov              r11, 18
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
.Lcall_prolog_α_82_110: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_82_113
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_111
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_82_112
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_82_110
.Lcall_prolog_α_82_112: cmp              esi, 2;                              jne   .Lcall_prolog_α_82_111
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_82_110
.Lcall_prolog_α_82_113: cmp              al, 72;                              jne   .Lcall_prolog_α_82_111
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_82_111
                        cmp              rax, r8;                             je    .Lcall_prolog_α_82_111
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_82_110
.Lcall_prolog_α_82_111: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_82_114
                        cmp              al, 104;                             je    .Lcall_prolog_α_82_114
                        cmp              al, 72;                              jne   .Lcall_prolog_α_82_118
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_82_114
                                                                              jmp   .Lcall_prolog_α_82_118
.Lcall_prolog_α_82_118: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 80;                              je    .Lcall_prolog_α_82_115
                        cmp              al, 3;                               jne   .Lcall_prolog_α_82_114
                        mov              esi, dword ptr [r8 + 4]
                        cmp              esi, 0;                              jne   .Lcall_prolog_α_82_114
                        movabs           rdx, 1
                        mov              rsi, qword ptr [r8 + 8]
                        cmp              rsi, rdx;                            jne   .Lcall_prolog_α_82_115
                                                                              jmp   .Lcall_prolog_α_82_114
.Lcall_prolog_α_82_114: mov              eax, 3
                        mov              edx, 1;                              jmp   .Lcall_prolog_α_82_117
.Lcall_prolog_α_82_115: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_82_117
.Lcall_prolog_α_82_116: mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ix_g@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_82_117: mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx
                        cmp              al, 104;                             je    n27_var_ref_α
                                                                              jmp   n18_var_ref_α
n17_call_prolog_β:      mov              r11, 18;                             jmp   n27_var_ref_α
                        .size            n17_call_prolog_bx, .-n17_call_prolog_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n19_lit_integer_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_lit_integer_bx, @function
n19_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_lit_integer_α:      mov              r11, 20
                        mov              qword ptr [rbp + 1232], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_85_0]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n20_call_prolog_α
.Llit_integer_α_85_0:   .quad            1
                        .size            n19_lit_integer_bx, .-n19_lit_integer_bx
                        .type            n20_call_prolog_bx, @function
n20_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_prolog_α:      mov              r11, 21
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    n26_call_prolog_α
                                                                              jmp   n21_var_ref_α
n20_call_prolog_β:      mov              r11, 21;                             jmp   n26_call_prolog_α
                        .size            n20_call_prolog_bx, .-n20_call_prolog_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx;         jmp   n22_lit_integer_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_lit_integer_bx, @function
n22_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_integer_α:      mov              r11, 23
                        mov              qword ptr [rbp + 1152], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_89_0]
                        mov              qword ptr [rbp + 1160], rax;         jmp   n23_call_prolog_α
.Llit_integer_α_89_0:   .quad            1
                        .size            n22_lit_integer_bx, .-n22_lit_integer_bx
                        .type            n23_call_prolog_bx, @function
n23_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_prolog_α:      mov              r11, 24
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1104]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    n26_call_prolog_α
                                                                              jmp   n24_cut_α
n23_call_prolog_β:      mov              r11, 24;                             jmp   n26_call_prolog_α
                        .size            n23_call_prolog_bx, .-n23_call_prolog_bx
                        .type            n24_cut_bx, @function
n24_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_cut_α:              mov              r11, 25;                             jmp   n25_move_label_α
                        .size            n24_cut_bx, .-n24_cut_bx
                        .type            n25_move_label_bx, @function
n25_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_move_label_α:       mov              r11, 26
                        lea              rax, [rip + n26_call_prolog_α]
                        mov              qword ptr [rbp + 64], rax;           jmp   fib$2F2_γ
                        .size            n25_move_label_bx, .-n25_move_label_bx
                        .type            n26_call_prolog_bx, @function
n26_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_call_prolog_α:      mov              r11, 27
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 1080], rax
                        lea              rdi, [rbp + 1072]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unwind_nothrow@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    fib$2F2_ω
                                                                              jmp   n27_var_ref_α
n26_call_prolog_β:      mov              r11, 27;                             jmp   fib$2F2_ω
                        .size            n26_call_prolog_bx, .-n26_call_prolog_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n28_var_ref_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_var_ref_bx, @function
n28_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n29_call_prolog_α
                        .size            n28_var_ref_bx, .-n28_var_ref_bx
                        .type            n29_call_prolog_bx, @function
n29_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_prolog_α:      mov              r11, 30
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
.Lcall_prolog_α_99_40:  mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_99_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_99_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_99_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_99_40
.Lcall_prolog_α_99_55:  cmp              esi, 2;                              jne   .Lcall_prolog_α_99_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_99_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_99_40
.Lcall_prolog_α_99_56:  cmp              al, 72;                              jne   .Lcall_prolog_α_99_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_99_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_99_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_99_40
.Lcall_prolog_α_99_41:  lea              r9, [rbp + 1008]
.Lcall_prolog_α_99_42:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_99_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_99_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_99_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_99_42
.Lcall_prolog_α_99_57:  cmp              esi, 2;                              jne   .Lcall_prolog_α_99_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_99_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_99_42
.Lcall_prolog_α_99_58:  cmp              al, 72;                              jne   .Lcall_prolog_α_99_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_99_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_99_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_99_42
.Lcall_prolog_α_99_43:  cmp              r8, r9;                              je    .Lcall_prolog_α_99_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_99_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_99_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_99_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_99_44
                                                                              jmp   .Lcall_prolog_α_99_45
.Lcall_prolog_α_99_44:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_99_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_99_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_99_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_99_53
                                                                              jmp   .Lcall_prolog_α_99_46
.Lcall_prolog_α_99_46:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_99_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_99_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_99_51
.Lcall_prolog_α_99_45:  mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_99_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_99_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_99_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_99_47
                                                                              jmp   .Lcall_prolog_α_99_48
.Lcall_prolog_α_99_47:  lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_99_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_99_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_99_51
.Lcall_prolog_α_99_48:  mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_99_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_99_53
                                                                              jmp   .Lcall_prolog_α_99_52
.Lcall_prolog_α_99_49:  cmp              dl, 80;                              je    .Lcall_prolog_α_99_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_99_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_99_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_99_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_99_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_99_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_99_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_99_51
                                                                              jmp   .Lcall_prolog_α_99_52
.Lcall_prolog_α_99_50:  mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_99_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_99_53
.Lcall_prolog_α_99_51:  mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_99_54
.Lcall_prolog_α_99_52:  mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_99_54
.Lcall_prolog_α_99_53:  mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_99_54:  mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    n59_call_prolog_α
                                                                              jmp   n30_var_ref_α
n29_call_prolog_β:      mov              r11, 30;                             jmp   n59_call_prolog_α
                        .size            n29_call_prolog_bx, .-n29_call_prolog_bx
                        .type            n30_var_ref_bx, @function
n30_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n31_var_ref_α
                        .size            n30_var_ref_bx, .-n30_var_ref_bx
                        .type            n31_var_ref_bx, @function
n31_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n32_call_prolog_α
                        .size            n31_var_ref_bx, .-n31_var_ref_bx
                        .type            n32_call_prolog_bx, @function
n32_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_call_prolog_α:      mov              r11, 33
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
.Lcall_prolog_α_104_40: mov              eax, dword ptr [r8 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_104_56
                        mov              esi, dword ptr [r8 + 4]
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_104_41
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_104_55
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_104_40
.Lcall_prolog_α_104_55: cmp              esi, 2;                              jne   .Lcall_prolog_α_104_41
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_104_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_104_40
.Lcall_prolog_α_104_56: cmp              al, 72;                              jne   .Lcall_prolog_α_104_41
                        mov              rax, qword ptr [r8 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_104_41
                        cmp              rax, r8;                             je    .Lcall_prolog_α_104_41
                        mov              r8, rax;                             jmp   .Lcall_prolog_α_104_40
.Lcall_prolog_α_104_41: lea              r9, [rbp + 928]
.Lcall_prolog_α_104_42: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 40;                              jne   .Lcall_prolog_α_104_58
                        mov              esi, dword ptr [r9 + 4]
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_104_43
                        cmp              esi, 1;                              jne   .Lcall_prolog_α_104_57
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_104_42
.Lcall_prolog_α_104_57: cmp              esi, 2;                              jne   .Lcall_prolog_α_104_43
                        mov              rax, qword ptr [rax + 0]
                        test             rax, rax;                            je    .Lcall_prolog_α_104_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_104_42
.Lcall_prolog_α_104_58: cmp              al, 72;                              jne   .Lcall_prolog_α_104_43
                        mov              rax, qword ptr [r9 + 8]
                        test             rax, rax;                            je    .Lcall_prolog_α_104_43
                        cmp              rax, r9;                             je    .Lcall_prolog_α_104_43
                        mov              r9, rax;                             jmp   .Lcall_prolog_α_104_42
.Lcall_prolog_α_104_43: cmp              r8, r9;                              je    .Lcall_prolog_α_104_51
                        mov              eax, dword ptr [r8 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_104_44
                        cmp              al, 104;                             je    .Lcall_prolog_α_104_44
                        cmp              al, 72;                              jne   .Lcall_prolog_α_104_45
                        mov              rax, qword ptr [r8 + 8]
                        cmp              rax, r8;                             je    .Lcall_prolog_α_104_44
                                                                              jmp   .Lcall_prolog_α_104_45
.Lcall_prolog_α_104_44: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_104_53
                        cmp              al, 104;                             je    .Lcall_prolog_α_104_53
                        cmp              al, 72;                              jne   .Lcall_prolog_α_104_46
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_104_53
                                                                              jmp   .Lcall_prolog_α_104_46
.Lcall_prolog_α_104_46: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_104_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_104_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r8
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [r8 + 0], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [r8 + 8], rax;             jmp   .Lcall_prolog_α_104_51
.Lcall_prolog_α_104_45: mov              eax, dword ptr [r9 + 0]
                        cmp              al, 0;                               je    .Lcall_prolog_α_104_47
                        cmp              al, 104;                             je    .Lcall_prolog_α_104_47
                        cmp              al, 72;                              jne   .Lcall_prolog_α_104_48
                        mov              rax, qword ptr [r9 + 8]
                        cmp              rax, r9;                             je    .Lcall_prolog_α_104_47
                                                                              jmp   .Lcall_prolog_α_104_48
.Lcall_prolog_α_104_47: lea              r12, [rip + g_pl_trail]
                        mov              rcx, qword ptr [r12 + 0]
                        test             rcx, rcx;                            je    .Lcall_prolog_α_104_53
                        mov              eax, dword ptr [r12 + 32]
                        mov              esi, 24
                        imul             rsi, rax
                        mov              rax, qword ptr [r12 + 24]
                        sub              rax, 24
                        cmp              rsi, rax;                            ja    .Lcall_prolog_α_104_53
                        add              rcx, rsi
                        mov              qword ptr [rcx + 0], r9
                        mov              rax, qword ptr [r9 + 0]
                        mov              qword ptr [rcx + 8], rax
                        mov              rax, qword ptr [r9 + 8]
                        mov              qword ptr [rcx + 16], rax
                        mov              eax, dword ptr [r12 + 32]
                        add              eax, 1
                        mov              dword ptr [r12 + 32], eax
                        mov              rax, qword ptr [r8 + 0]
                        mov              qword ptr [r9 + 0], rax
                        mov              rax, qword ptr [r8 + 8]
                        mov              qword ptr [r9 + 8], rax;             jmp   .Lcall_prolog_α_104_51
.Lcall_prolog_α_104_48: mov              ecx, dword ptr [r8 + 0]
                        mov              edx, dword ptr [r9 + 0]
                        cmp              cl, 80;                              jne   .Lcall_prolog_α_104_49
                        cmp              dl, 80;                              je    .Lcall_prolog_α_104_53
                                                                              jmp   .Lcall_prolog_α_104_52
.Lcall_prolog_α_104_49: cmp              dl, 80;                              je    .Lcall_prolog_α_104_52
                        cmp              cl, 5;                               je    .Lcall_prolog_α_104_53
                        cmp              dl, 5;                               je    .Lcall_prolog_α_104_53
                        cmp              cl, 3;                               jne   .Lcall_prolog_α_104_50
                        cmp              dl, 3;                               jne   .Lcall_prolog_α_104_50
                        mov              rax, qword ptr [r8 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_104_53
                        mov              rax, qword ptr [r9 + 0]
                        cmp              rax, 3;                              jne   .Lcall_prolog_α_104_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            je    .Lcall_prolog_α_104_51
                                                                              jmp   .Lcall_prolog_α_104_52
.Lcall_prolog_α_104_50: mov              rax, qword ptr [r8 + 0]
                        mov              rsi, qword ptr [r9 + 0]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_104_53
                        mov              rax, qword ptr [r8 + 8]
                        mov              rsi, qword ptr [r9 + 8]
                        cmp              rax, rsi;                            jne   .Lcall_prolog_α_104_53
.Lcall_prolog_α_104_51: mov              rax, qword ptr [r8 + 0]
                        mov              rdx, qword ptr [r8 + 8];             jmp   .Lcall_prolog_α_104_54
.Lcall_prolog_α_104_52: mov              eax, 104
                        mov              edx, 0;                              jmp   .Lcall_prolog_α_104_54
.Lcall_prolog_α_104_53: mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_prolog_α_104_54: mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              al, 104;                             je    n59_call_prolog_α
                                                                              jmp   n33_var_α
n32_call_prolog_β:      mov              r11, 33;                             jmp   n59_call_prolog_α
                        .size            n32_call_prolog_bx, .-n32_call_prolog_bx
                        .type            n33_var_bx, @function
n33_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_α:              mov              r11, 34
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 872], rax;          jmp   n34_lit_integer_α
                        .size            n33_var_bx, .-n33_var_bx
                        .type            n34_lit_integer_bx, @function
n34_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_lit_integer_α:      mov              r11, 35
                        mov              qword ptr [rbp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_107_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n35_call_prolog_α
.Llit_integer_α_107_0:  .quad            1
                        .size            n34_lit_integer_bx, .-n34_lit_integer_bx
                        .type            n35_call_prolog_bx, @function
n35_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_prolog_α:      mov              r11, 36
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    n59_call_prolog_α
                                                                              jmp   n36_var_ref_α
n35_call_prolog_β:      mov              r11, 36;                             jmp   n59_call_prolog_α
                        .size            n35_call_prolog_bx, .-n35_call_prolog_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1728]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n37_var_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_var_bx, @function
n37_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_α:              mov              r11, 38
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 792], rax;          jmp   n38_lit_integer_α
                        .size            n37_var_bx, .-n37_var_bx
                        .type            n38_lit_integer_bx, @function
n38_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_lit_integer_α:      mov              r11, 39
                        mov              qword ptr [rbp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_113_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n39_call_prolog_α
.Llit_integer_α_113_0:  .quad            1
                        .size            n38_lit_integer_bx, .-n38_lit_integer_bx
                        .type            n39_call_prolog_bx, @function
n39_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_call_prolog_α:      mov              r11, 40
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    n59_call_prolog_α
                                                                              jmp   n40_call_prolog_α
n39_call_prolog_β:      mov              r11, 40;                             jmp   n59_call_prolog_α
                        .size            n39_call_prolog_bx, .-n39_call_prolog_bx
                        .type            n40_call_prolog_bx, @function
n40_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_call_prolog_α:      mov              r11, 41
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    n59_call_prolog_α
                                                                              jmp   n41_var_ref_α
n40_call_prolog_β:      mov              r11, 41;                             jmp   n59_call_prolog_α
                        .size            n40_call_prolog_bx, .-n40_call_prolog_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n42_var_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              r11, 43
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 632], rax;          jmp   n43_lit_integer_α
                        .size            n42_var_bx, .-n42_var_bx
                        .type            n43_lit_integer_bx, @function
n43_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_lit_integer_α:      mov              r11, 44
                        mov              qword ptr [rbp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_120_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n44_call_prolog_α
.Llit_integer_α_120_0:  .quad            2
                        .size            n43_lit_integer_bx, .-n43_lit_integer_bx
                        .type            n44_call_prolog_bx, @function
n44_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_call_prolog_α:      mov              r11, 45
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    n59_call_prolog_α
                                                                              jmp   n45_call_prolog_α
n44_call_prolog_β:      mov              r11, 45;                             jmp   n59_call_prolog_α
                        .size            n44_call_prolog_bx, .-n44_call_prolog_bx
                        .type            n45_call_prolog_bx, @function
n45_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_call_prolog_α:      mov              r11, 46
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    n59_call_prolog_α
                                                                              jmp   n46_var_ref_α
n45_call_prolog_β:      mov              r11, 46;                             jmp   n59_call_prolog_α
                        .size            n45_call_prolog_bx, .-n45_call_prolog_bx
                        .type            n46_var_ref_bx, @function
n46_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1728]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n47_var_ref_α
                        .size            n46_var_ref_bx, .-n46_var_ref_bx
                        .type            n47_var_ref_bx, @function
n47_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n48_call_proc_staged_α
                        .size            n47_var_ref_bx, .-n47_var_ref_bx
                        .type            n48_call_proc_staged_bx, @function
n48_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_call_proc_staged_α: mov              r11, 49
                        lea              rsi, [rbp + 464]
                        lea              rdx, [rbp + 480]
                        call             fib$2F2_dcα;                         jmp   .Lcall_proc_staged_α_128_2
.Lcall_proc_staged_α_128_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_128_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
.Lcall_proc_staged_α_128_29:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    n59_call_prolog_α
                                                                              jmp   n49_var_ref_α
n48_call_proc_staged_β: mov              r11, 49;                             jmp   n59_call_prolog_α
.Lcall_proc_staged_β_128_0:
                        .quad            .Lcall_proc_staged_β_128_0_s
.Lcall_proc_staged_β_128_0_s:
                        .string          "fib/2"
                        .size            n48_call_proc_staged_bx, .-n48_call_proc_staged_bx
                        .type            n49_var_ref_bx, @function
n49_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n50_var_ref_α
                        .size            n49_var_ref_bx, .-n49_var_ref_bx
                        .type            n50_var_ref_bx, @function
n50_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1696]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n51_call_proc_staged_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_call_proc_staged_bx, @function
n51_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_call_proc_staged_α: mov              r11, 52
                        lea              rsi, [rbp + 368]
                        lea              rdx, [rbp + 384]
                        call             fib$2F2_dcα;                         jmp   .Lcall_proc_staged_α_134_2
.Lcall_proc_staged_α_134_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_134_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
.Lcall_proc_staged_α_134_29:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    n48_call_proc_staged_β
                                                                              jmp   n52_var_ref_α
n51_call_proc_staged_β: mov              r11, 52;                             jmp   n48_call_proc_staged_β
.Lcall_proc_staged_β_134_0:
                        .quad            .Lcall_proc_staged_β_134_0_s
.Lcall_proc_staged_β_134_0_s:
                        .string          "fib/2"
                        .size            n51_call_proc_staged_bx, .-n51_call_proc_staged_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n53_var_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_bx, @function
n53_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_α:              mov              r11, 54
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 280], rax;          jmp   n54_var_α
                        .size            n53_var_bx, .-n53_var_bx
                        .type            n54_var_bx, @function
n54_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_α:              mov              r11, 55
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 296], rax;          jmp   n55_call_prolog_α
                        .size            n54_var_bx, .-n54_var_bx
                        .type            n55_call_prolog_bx, @function
n55_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_call_prolog_α:      mov              r11, 56
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    n59_call_prolog_α
                                                                              jmp   n56_call_prolog_α
n55_call_prolog_β:      mov              r11, 56;                             jmp   n59_call_prolog_α
                        .size            n55_call_prolog_bx, .-n55_call_prolog_bx
                        .type            n56_call_prolog_bx, @function
n56_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_call_prolog_α:      mov              r11, 57
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
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n51_call_proc_staged_β
                                                                              jmp   n57_move_label_α
n56_call_prolog_β:      mov              r11, 57;                             jmp   n51_call_proc_staged_β
                        .size            n56_call_prolog_bx, .-n56_call_prolog_bx
                        .type            n57_move_label_bx, @function
n57_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_move_label_α:       mov              r11, 58
                        lea              rax, [rip + n51_call_proc_staged_β]
                        mov              qword ptr [rbp + 64], rax;           jmp   fib$2F2_γ
                        .size            n57_move_label_bx, .-n57_move_label_bx
                        .type            n58_disjunction_bx, @function
n58_disjunction_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_disjunction_α:      mov              r11, 59
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_cp_pop@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    fib$2F2_ω
                                                                              jmp   rax
n58_disjunction_β:      mov              r11, 59;                             jmp   fib$2F2_ω
                        .size            n58_disjunction_bx, .-n58_disjunction_bx
                        .type            n59_call_prolog_bx, @function
n59_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_call_prolog_α:      mov              r11, 60
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 136], rax
                        lea              rdi, [rbp + 128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_trail_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx
                        cmp              al, 104;                             je    fib$2F2_ω
                                                                              jmp   fib$2F2_ω
n59_call_prolog_β:      mov              r11, 60;                             jmp   fib$2F2_ω
                        .size            n59_call_prolog_bx, .-n59_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
fib$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
fib$2F2_β:
                                                                              jmp   n58_disjunction_α
#-----------------------------------------------------------------------------------------------------------------------
fib$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1784]
                        lea              rsp, [rbp + 1808]
                        mov              rbp, qword ptr [rbp + 1800];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
fib$2F2_ω:
                        mov              rcx, qword ptr [rsp + 1792]
                        lea              rsp, [rbp + 1808]
                        mov              rbp, qword ptr [rbp + 1800];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
fib$2F2_dcα:
                        pop              r12
                        push             r12
                        push             r12
                        push             rdx
                        push             rsi
                        mov              rax, qword ptr [rsp + 0]
                        mov              edi, 0
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rsp + 8]
                        mov              edi, 1
                        mov              rsi, qword ptr [rax + 0]
                        mov              rdx, qword ptr [rax + 8]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        add              rsp, 16
                        lea              rcx, [rip + .Lfib$2F2_α_148_2]
                        lea              rdx, [rip + .Lfib$2F2_α_148_3];      jmp   FN__fib$2F2
.Lfib$2F2_α_148_2:      pop              r12
                        pop              r12;                                 jmp   r12
.Lfib$2F2_α_148_3:      pop              r12
                        pop              r12
                        mov              eax, 104
                        xor              edx, edx;                            jmp   r12
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              r12, qword ptr [0x70000000]
                        call             rt_gcheap_warmup@PLT
                        call             rt_plw_floor_bypass_on@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        xor              r14d, r14d
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 1280
                        mov              qword ptr [rsp + 1256], rcx
                        mov              qword ptr [rsp + 1264], rdx
                        mov              qword ptr [rsp + 1272], rbp
                        mov              rbp, rsp
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 1248
                        rep              stosb
main_α_body:
                        .type            n149_var_ref_bx, @function
n149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n150_call_prolog_α
                        .size            n149_var_ref_bx, .-n149_var_ref_bx
                        .type            n150_call_prolog_bx, @function
n150_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_call_prolog_α:     mov              r11, 62
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1096], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn190: .string          "$wall_us"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn190]
                        lea              rsi, [rbp + 1088]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              al, 104;                             je    n184_lit_string_α
                                                                              jmp   n151_var_ref_α
n150_call_prolog_β:     mov              r11, 62;                             jmp   n184_lit_string_α
                        .size            n150_call_prolog_bx, .-n150_call_prolog_bx
                        .type            n151_var_ref_bx, @function
n151_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:         mov              r11, 63
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n152_call_prolog_α
                        .size            n151_var_ref_bx, .-n151_var_ref_bx
                        .type            n152_call_prolog_bx, @function
n152_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_call_prolog_α:     mov              r11, 64
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1048], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn194: .string          "$wall_ms"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn194]
                        lea              rsi, [rbp + 1040]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    n184_lit_string_α
                                                                              jmp   n153_lit_integer_α
n152_call_prolog_β:     mov              r11, 64;                             jmp   n184_lit_string_α
                        .size            n152_call_prolog_bx, .-n152_call_prolog_bx
                        .type            n153_lit_integer_bx, @function
n153_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              r11, 65
                        mov              qword ptr [rbp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_195_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n154_var_ref_α
.Llit_integer_α_195_0:  .quad            20
                        .size            n153_lit_integer_bx, .-n153_lit_integer_bx
                        .type            n154_var_ref_bx, @function
n154_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx;         jmp   n155_call_proc_staged_α
                        .size            n154_var_ref_bx, .-n154_var_ref_bx
                        .type            n155_call_proc_staged_bx, @function
n155_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_call_proc_staged_α:
                        mov              r11, 67
                        lea              rsi, [rbp + 992]
                        lea              rdx, [rbp + 1008]
                        call             fib$2F2_dcα;                         jmp   .Lcall_proc_staged_α_199_2
.Lcall_proc_staged_α_199_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_199_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
.Lcall_proc_staged_α_199_29:
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    n184_lit_string_α
                                                                              jmp   n156_var_ref_α
n155_call_proc_staged_β:
                        mov              r11, 67;                             jmp   n184_lit_string_α
.Lcall_proc_staged_β_199_0:
                        .quad            .Lcall_proc_staged_β_199_0_s
.Lcall_proc_staged_β_199_0_s:
                        .string          "fib/2"
                        .size            n155_call_proc_staged_bx, .-n155_call_proc_staged_bx
                        .type            n156_var_ref_bx, @function
n156_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n157_call_prolog_α
                        .size            n156_var_ref_bx, .-n156_var_ref_bx
                        .type            n157_call_prolog_bx, @function
n157_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_call_prolog_α:     mov              r11, 69
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 904], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn203: .string          "$wall_us"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn203]
                        lea              rsi, [rbp + 896]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    n155_call_proc_staged_β
                                                                              jmp   n158_var_ref_α
n157_call_prolog_β:     mov              r11, 69;                             jmp   n155_call_proc_staged_β
                        .size            n157_call_prolog_bx, .-n157_call_prolog_bx
                        .type            n158_var_ref_bx, @function
n158_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n159_call_prolog_α
                        .size            n158_var_ref_bx, .-n158_var_ref_bx
                        .type            n159_call_prolog_bx, @function
n159_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_call_prolog_α:     mov              r11, 71
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 856], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn207: .string          "$wall_ms"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn207]
                        lea              rsi, [rbp + 848]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    n155_call_proc_staged_β
                                                                              jmp   n160_var_α
n159_call_prolog_β:     mov              r11, 71;                             jmp   n155_call_proc_staged_β
                        .size            n159_call_prolog_bx, .-n159_call_prolog_bx
                        .type            n160_var_bx, @function
n160_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_var_α:             mov              r11, 72
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 824], rax;          jmp   n161_call_prolog_α
                        .size            n160_var_bx, .-n160_var_bx
                        .type            n161_call_prolog_bx, @function
n161_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_call_prolog_α:     mov              r11, 73
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 808], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn211: .string          "$write"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn211]
                        lea              rsi, [rbp + 800]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 393216
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    n155_call_proc_staged_β
                                                                              jmp   n162_lit_string_α
n161_call_prolog_β:     mov              r11, 73;                             jmp   n155_call_proc_staged_β
                        .size            n161_call_prolog_bx, .-n161_call_prolog_bx
                        .type            n162_lit_string_bx, @function
n162_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_string_α:      mov              r11, 74
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 0
                        mov              rax, qword ptr [rip + .Llit_string_α_212_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n163_call_prolog_α
.Llit_string_α_212_0:   .quad            .Llit_string_α_212_0_s
.Llit_string_α_212_0_s: .string          ""
                        .size            n162_lit_string_bx, .-n162_lit_string_bx
                        .type            n163_call_prolog_bx, @function
n163_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_call_prolog_α:     mov              r11, 75
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 760], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn214: .string          "$nl0"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn214]
                        lea              rsi, [rbp + 752]
                        mov              edx, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 262144
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    n155_call_proc_staged_β
                                                                              jmp   n164_var_ref_α
n163_call_prolog_β:     mov              r11, 75;                             jmp   n155_call_proc_staged_β
                        .size            n163_call_prolog_bx, .-n163_call_prolog_bx
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n165_var_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_var_bx, @function
n165_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_α:             mov              r11, 77
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 712], rax;          jmp   n166_var_α
                        .size            n165_var_bx, .-n165_var_bx
                        .type            n166_var_bx, @function
n166_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_α:             mov              r11, 78
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 728], rax;          jmp   n167_call_prolog_α
                        .size            n166_var_bx, .-n166_var_bx
                        .type            n167_call_prolog_bx, @function
n167_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_call_prolog_α:     mov              r11, 79
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    n184_lit_string_α
                                                                              jmp   n168_call_prolog_α
n167_call_prolog_β:     mov              r11, 79;                             jmp   n184_lit_string_α
                        .size            n167_call_prolog_bx, .-n167_call_prolog_bx
                        .type            n168_call_prolog_bx, @function
n168_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_call_prolog_α:     mov              r11, 80
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    n155_call_proc_staged_β
                                                                              jmp   n169_var_ref_α
n168_call_prolog_β:     mov              r11, 80;                             jmp   n155_call_proc_staged_β
                        .size            n168_call_prolog_bx, .-n168_call_prolog_bx
                        .type            n169_var_ref_bx, @function
n169_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n170_var_α
                        .size            n169_var_ref_bx, .-n169_var_ref_bx
                        .type            n170_var_bx, @function
n170_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_var_α:             mov              r11, 82
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 552], rax;          jmp   n171_var_α
                        .size            n170_var_bx, .-n170_var_bx
                        .type            n171_var_bx, @function
n171_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_var_α:             mov              r11, 83
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 568], rax;          jmp   n172_call_prolog_α
                        .size            n171_var_bx, .-n171_var_bx
                        .type            n172_call_prolog_bx, @function
n172_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_call_prolog_α:     mov              r11, 84
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n184_lit_string_α
                                                                              jmp   n173_call_prolog_α
n172_call_prolog_β:     mov              r11, 84;                             jmp   n184_lit_string_α
                        .size            n172_call_prolog_bx, .-n172_call_prolog_bx
                        .type            n173_call_prolog_bx, @function
n173_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_call_prolog_α:     mov              r11, 85
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    n155_call_proc_staged_β
                                                                              jmp   n174_lit_string_α
n173_call_prolog_β:     mov              r11, 85;                             jmp   n155_call_proc_staged_β
                        .size            n173_call_prolog_bx, .-n173_call_prolog_bx
                        .type            n174_lit_string_bx, @function
n174_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              r11, 86
                        mov              qword ptr [rbp + 144], 2             # result
                        mov              dword ptr [rbp + 148], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_231_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n175_lit_string_α
.Llit_string_α_231_0:   .quad            .Llit_string_α_231_0_s
.Llit_string_α_231_0_s: .string          "user_error"
                        .size            n174_lit_string_bx, .-n174_lit_string_bx
                        .type            n175_lit_string_bx, @function
n175_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rbp + 160], 2             # result
                        mov              dword ptr [rbp + 164], 40
                        mov              rax, qword ptr [rip + .Llit_string_α_232_0]
                        mov              qword ptr [rbp + 168], rax;          jmp   n176_lit_string_α
.Llit_string_α_232_0:   .quad            .Llit_string_α_232_0_s
.Llit_string_α_232_0_s: .string          "BENCH kernel=fib work_us=~w work_ms=~w~n"
                        .size            n175_lit_string_bx, .-n175_lit_string_bx
                        .type            n176_lit_string_bx, @function
n176_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      mov              r11, 88
                        mov              qword ptr [rbp + 400], 2             # result
                        mov              dword ptr [rbp + 404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_233_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n177_var_ref_α
.Llit_string_α_233_0:   .quad            .Llit_string_α_233_0_s
.Llit_string_α_233_0_s: .string          "."
                        .size            n176_lit_string_bx, .-n176_lit_string_bx
                        .type            n177_var_ref_bx, @function
n177_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n178_lit_string_α
                        .size            n177_var_ref_bx, .-n177_var_ref_bx
                        .type            n178_lit_string_bx, @function
n178_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_lit_string_α:      mov              r11, 90
                        mov              qword ptr [rbp + 288], 2             # result
                        mov              dword ptr [rbp + 292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_236_0]
                        mov              qword ptr [rbp + 296], rax;          jmp   n179_var_ref_α
.Llit_string_α_236_0:   .quad            .Llit_string_α_236_0_s
.Llit_string_α_236_0_s: .string          "."
                        .size            n178_lit_string_bx, .-n178_lit_string_bx
                        .type            n179_var_ref_bx, @function
n179_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n180_lit_string_α
                        .size            n179_var_ref_bx, .-n179_var_ref_bx
                        .type            n180_lit_string_bx, @function
n180_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_lit_string_α:      mov              r11, 92
                        mov              qword ptr [rbp + 176], 2             # result
                        mov              dword ptr [rbp + 180], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_239_0]
                        mov              qword ptr [rbp + 184], rax;          jmp   n181_call_prolog_α
.Llit_string_α_239_0:   .quad            .Llit_string_α_239_0_s
.Llit_string_α_239_0_s: .string          "[]"
                        .size            n180_lit_string_bx, .-n180_lit_string_bx
                        .type            n181_call_prolog_bx, @function
n181_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_call_prolog_α:     mov              r11, 93
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 248], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 232], rax
                        lea              rdi, [rbp + 224]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   n182_call_prolog_α
n181_call_prolog_β:     mov              r11, 93;                             jmp   main_ω
                        .size            n181_call_prolog_bx, .-n181_call_prolog_bx
                        .type            n182_call_prolog_bx, @function
n182_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_call_prolog_α:     mov              r11, 94
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n184_lit_string_α
                                                                              jmp   n183_call_prolog_α
n182_call_prolog_β:     mov              r11, 94;                             jmp   n184_lit_string_α
                        .size            n182_call_prolog_bx, .-n182_call_prolog_bx
                        .type            n183_call_prolog_bx, @function
n183_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_call_prolog_α:     mov              r11, 95
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 136], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn243: .string          "$format3"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn243]
                        lea              rsi, [rbp + 96]
                        mov              edx, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 524288
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    n155_call_proc_staged_β
                                                                              jmp   main_γ
n183_call_prolog_β:     mov              r11, 95;                             jmp   n155_call_proc_staged_β
                        .size            n183_call_prolog_bx, .-n183_call_prolog_bx
                        .type            n184_lit_string_bx, @function
n184_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_lit_string_α:      mov              r11, 96
                        mov              qword ptr [rbp + 48], 2              # result
                        mov              dword ptr [rbp + 52], 10
                        mov              rax, qword ptr [rip + .Llit_string_α_244_0]
                        mov              qword ptr [rbp + 56], rax;           jmp   n185_lit_string_α
.Llit_string_α_244_0:   .quad            .Llit_string_α_244_0_s
.Llit_string_α_244_0_s: .string          "user_error"
                        .size            n184_lit_string_bx, .-n184_lit_string_bx
                        .type            n185_lit_string_bx, @function
n185_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:      mov              r11, 97
                        mov              qword ptr [rbp + 64], 2              # result
                        mov              dword ptr [rbp + 68], 44
                        mov              rax, qword ptr [rip + .Llit_string_α_245_0]
                        mov              qword ptr [rbp + 72], rax;           jmp   n186_call_prolog_α
.Llit_string_α_245_0:   .quad            .Llit_string_α_245_0_s
.Llit_string_α_245_0_s: .string          "Warning: initialization goal failed: main/0\n"
                        .size            n185_lit_string_bx, .-n185_lit_string_bx
                        .type            n186_call_prolog_bx, @function
n186_call_prolog_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_call_prolog_α:     mov              r11, 98
                        mov              rax, qword ptr [rbp + 64]
                        mov              qword ptr [rbp + 32], rax
                        mov              rax, qword ptr [rbp + 72]
                        mov              qword ptr [rbp + 40], rax
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        .section         .rodata
.Lcall_prolog_α_rkfn247: .string          "$write2"
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lcall_prolog_α_rkfn247]
                        lea              rsi, [rbp + 16]
                        mov              edx, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        mov              ecx, 458752
                        call             rt_call_arr_bl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r9,  qword ptr [rip + rtccb+48]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_ω
                                                                              jmp   main_γ
n186_call_prolog_β:     mov              r11, 98;                             jmp   main_ω
                        .size            n186_call_prolog_bx, .-n186_call_prolog_bx
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                                                                              jmp   main_ω
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rsp + 1256]
                        lea              rsp, [rbp + 1280]
                        mov              rbp, qword ptr [rbp + 1272];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rsp + 1264]
                        lea              rsp, [rbp + 1280]
                        mov              rbp, qword ptr [rbp + 1272];         jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "fib/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__fib$2F2
                        .quad            fib$2F2_dcα
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1760
                        .long            16
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
