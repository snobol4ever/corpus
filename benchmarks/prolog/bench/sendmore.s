                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sumdigit$2F5:
                        sub              rsp, 1856
                        mov              qword ptr [rsp + 1832], rcx
                        mov              qword ptr [rsp + 1840], rdx
                        mov              qword ptr [rsp + 1848], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1856]
                        mov              qword ptr [rsp + 1824], rax
                        mov              qword ptr [rsp + 1816], r13
                        mov              qword ptr [rsp + 1808], 0
                        mov              qword ptr [rsp + 1800], 0
                        mov              qword ptr [rsp + 1792], r12
                        mov              rdi, rsp
                        mov              esi, 1680
                        mov              edx, 1792
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 5
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
sumdigit$2F5_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n1_var_ref_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1728]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n2_call_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        lea              rdi, [rbp + 1600]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n3_var_ref_α
n2_call_β:              mov              r11, 3;                              jmp   sumdigit$2F5_step
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n4_var_ref_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_var_ref_bx, @function
n4_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1744]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx;         jmp   n5_call_α
                        .size            n4_var_ref_bx, .-n4_var_ref_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              mov              r11, 6
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1504]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n6_var_ref_α
n5_call_β:              mov              r11, 6;                              jmp   sumdigit$2F5_step
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n7_var_ref_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n8_call_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_call_bx, @function
n8_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              mov              r11, 9
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n9_var_ref_α
n8_call_β:              mov              r11, 9;                              jmp   sumdigit$2F5_step
                        .size            n8_call_bx, .-n8_call_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n10_var_ref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1696]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n11_call_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_call_bx, @function
n11_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:             mov              r11, 12
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1320], rax
                        lea              rdi, [rbp + 1312]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n12_var_ref_α
n11_call_β:             mov              r11, 12;                             jmp   sumdigit$2F5_step
                        .size            n11_call_bx, .-n11_call_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n13_var_ref_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n14_call_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_call_bx, @function
n14_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             mov              r11, 15
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 1240], rax
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1216], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1224], rax
                        lea              rdi, [rbp + 1216]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n15_var_ref_α
n14_call_β:             mov              r11, 15;                             jmp   sumdigit$2F5_step
                        .size            n14_call_bx, .-n14_call_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n16_var_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_var_bx, @function
n16_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n17_var_α
                        .size            n16_var_bx, .-n16_var_bx
                        .type            n17_var_bx, @function
n17_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 18
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1128], rax;         jmp   n18_call_α
                        .size            n17_var_bx, .-n17_var_bx
                        .type            n18_call_bx, @function
n18_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:             mov              r11, 19
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n19_var_α
n18_call_β:             mov              r11, 19;                             jmp   sumdigit$2F5_step
                        .size            n18_call_bx, .-n18_call_bx
                        .type            n19_var_bx, @function
n19_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              mov              r11, 20
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n20_call_α
                        .size            n19_var_bx, .-n19_var_bx
                        .type            n20_call_bx, @function
n20_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             mov              r11, 21
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1000], rax
                        lea              rdi, [rbp + 992]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n21_call_α
n20_call_β:             mov              r11, 21;                             jmp   sumdigit$2F5_step
                        .size            n20_call_bx, .-n20_call_bx
                        .type            n21_call_bx, @function
n21_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:             mov              r11, 22
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n22_call_α
n21_call_β:             mov              r11, 22;                             jmp   sumdigit$2F5_step
                        .size            n21_call_bx, .-n21_call_bx
                        .type            n22_call_bx, @function
n22_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_α:             mov              r11, 23
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n23_bound_α
n22_call_β:             mov              r11, 23;                             jmp   sumdigit$2F5_step
                        .size            n22_call_bx, .-n22_call_bx
                        .type            n23_bound_bx, @function
n23_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_bound_α:            mov              r11, 24
                        mov              qword ptr [rbp + 128], r12
                        lea              rdi, [rbp + 1792]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n24_var_α
                        .size            n23_bound_bx, .-n23_bound_bx
                        .type            n24_var_bx, @function
n24_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              r11, 25
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 776], rax;          jmp   n25_call_α
                        .size            n24_var_bx, .-n24_var_bx
                        .type            n25_call_bx, @function
n25_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:             mov              r11, 26
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              al, 104;                             je    n36_unmark_α
                                                                              jmp   n26_lit_integer_α
n25_call_β:             mov              r11, 26;                             jmp   n36_unmark_α
                        .size            n25_call_bx, .-n25_call_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rbp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_91_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n27_call_α
.Llit_integer_α_91_0:   .quad            10
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_call_bx, @function
n27_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:             mov              r11, 28
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              al, 104;                             je    n36_unmark_α
                                                                              jmp   n28_call_α
n27_call_β:             mov              r11, 28;                             jmp   n36_unmark_α
                        .size            n27_call_bx, .-n27_call_bx
                        .type            n28_call_bx, @function
n28_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:             mov              r11, 29
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    n36_unmark_α
                                                                              jmp   n29_var_ref_α
n28_call_β:             mov              r11, 29;                             jmp   n36_unmark_α
                        .size            n28_call_bx, .-n28_call_bx
                        .type            n29_var_ref_bx, @function
n29_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1696]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n30_var_ref_α
                        .size            n29_var_ref_bx, .-n29_var_ref_bx
                        .type            n30_var_ref_bx, @function
n30_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1712]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n31_call_α
                        .size            n30_var_ref_bx, .-n30_var_ref_bx
                        .type            n31_call_bx, @function
n31_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:             mov              r11, 32
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    n47_unmark_α
                                                                              jmp   n32_var_ref_α
n31_call_β:             mov              r11, 32;                             jmp   n47_unmark_α
                        .size            n31_call_bx, .-n31_call_bx
                        .type            n32_var_ref_bx, @function
n32_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n33_lit_integer_α
                        .size            n32_var_ref_bx, .-n32_var_ref_bx
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      mov              r11, 34
                        mov              qword ptr [rbp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_101_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n34_call_α
.Llit_integer_α_101_0:  .quad            0
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_call_bx, @function
n34_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             mov              r11, 35
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        lea              rdi, [rbp + 208]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx
                        cmp              al, 104;                             je    n47_unmark_α
                                                                              jmp   n35_move_label_α
n34_call_β:             mov              r11, 35;                             jmp   n47_unmark_α
                        .size            n34_call_bx, .-n34_call_bx
                        .type            n35_move_label_bx, @function
n35_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_move_label_α:       mov              r11, 36
                        lea              rax, [rip + n48_indirect_goto_α]
                        mov              qword ptr [rbp + 112], rax;          jmp   sumdigit$2F5_γ
                        .size            n35_move_label_bx, .-n35_move_label_bx
                        .type            n36_unmark_bx, @function
n36_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_unmark_α:           mov              r11, 37
                        mov              rdi, qword ptr [rbp + 128]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   sumdigit$2F5_step
                                                                              jmp   n37_var_ref_α
                        .size            n36_unmark_bx, .-n36_unmark_bx
                        .type            n37_var_ref_bx, @function
n37_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1696]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n38_var_α
                        .size            n37_var_ref_bx, .-n37_var_ref_bx
                        .type            n38_var_bx, @function
n38_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_α:              mov              r11, 39
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 632], rax;          jmp   n39_lit_integer_α
                        .size            n38_var_bx, .-n38_var_bx
                        .type            n39_lit_integer_bx, @function
n39_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_lit_integer_α:      mov              r11, 40
                        mov              qword ptr [rbp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_111_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n40_call_α
.Llit_integer_α_111_0:  .quad            10
                        .size            n39_lit_integer_bx, .-n39_lit_integer_bx
                        .type            n40_call_bx, @function
n40_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:             mov              r11, 41
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    n47_unmark_α
                                                                              jmp   n41_call_α
n40_call_β:             mov              r11, 41;                             jmp   n47_unmark_α
                        .size            n40_call_bx, .-n40_call_bx
                        .type            n41_call_bx, @function
n41_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:             mov              r11, 42
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    n47_unmark_α
                                                                              jmp   n42_call_α
n41_call_β:             mov              r11, 42;                             jmp   n47_unmark_α
                        .size            n41_call_bx, .-n41_call_bx
                        .type            n42_call_bx, @function
n42_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_call_α:             mov              r11, 43
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    n47_unmark_α
                                                                              jmp   n43_var_ref_α
n42_call_β:             mov              r11, 43;                             jmp   n47_unmark_α
                        .size            n42_call_bx, .-n42_call_bx
                        .type            n43_var_ref_bx, @function
n43_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n44_lit_integer_α
                        .size            n43_var_ref_bx, .-n43_var_ref_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      mov              r11, 45
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_117_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n45_call_α
.Llit_integer_α_117_0:  .quad            1
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
                        .type            n45_call_bx, @function
n45_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:             mov              r11, 46
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    n47_unmark_α
                                                                              jmp   n46_move_label_α
n45_call_β:             mov              r11, 46;                             jmp   n47_unmark_α
                        .size            n45_call_bx, .-n45_call_bx
                        .type            n46_move_label_bx, @function
n46_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_move_label_α:       mov              r11, 47
                        lea              rax, [rip + n48_indirect_goto_α]
                        mov              qword ptr [rbp + 112], rax;          jmp   sumdigit$2F5_γ
                        .size            n46_move_label_bx, .-n46_move_label_bx
                        .type            n47_unmark_bx, @function
n47_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_unmark_α:           mov              r11, 48
                        mov              rdi, qword ptr [rbp + 128]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   sumdigit$2F5_step
                                                                              jmp   n48_indirect_goto_α
                        .size            n47_unmark_bx, .-n47_unmark_bx
                        .type            n48_indirect_goto_bx, @function
n48_indirect_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_indirect_goto_α:    mov              r11, 49;                             jmp   sumdigit$2F5_step
n48_indirect_goto_β:    mov              r11, 49;                             jmp   qword ptr [rbp + 112]
                        .size            n48_indirect_goto_bx, .-n48_indirect_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_ret0:
                        lea              rax, [rip + n48_indirect_goto_β]
                        mov              qword ptr [rbp + 1808], rax
                                                                              jmp   sumdigit$2F5_γ
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_step:
                        mov              rdi, qword ptr [rbp + 1792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1808], 0
                        mov              qword ptr [rbp + 1728], 0
                        mov              qword ptr [rbp + 1736], 0
                        mov              qword ptr [rbp + 1744], 0
                        mov              qword ptr [rbp + 1752], 0
                        mov              qword ptr [rbp + 1760], 0
                        mov              qword ptr [rbp + 1768], 0
                        mov              qword ptr [rbp + 1696], 0
                        mov              qword ptr [rbp + 1704], 0
                        mov              qword ptr [rbp + 1680], 0
                        mov              qword ptr [rbp + 1688], 0
                        mov              qword ptr [rbp + 1712], 0
                        mov              qword ptr [rbp + 1720], 0
                        mov              rax, qword ptr [rbp + 1800]
                        test             rax, rax
                                                                              je    sumdigit$2F5_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_β:
                        test             r15, r15
                                                                              jne   sumdigit$2F5_ω
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1808], 0
                        test             rax, rax
                                                                              jne   sumdigit$2F5_βres
                                                                              jmp   sumdigit$2F5_step
sumdigit$2F5_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1832]
                        mov              rax, qword ptr [rbp + 1816]
                        cmp              r13, rax;                            je    sumdigit$2F5_altdet
                        lea              rdx, [rip + sumdigit$2F5_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1848];         jmp   rcx
sumdigit$2F5_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 1856]
                        mov              rbp, qword ptr [rbp + 1848];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_ω:
                        mov              rcx, qword ptr [rbp + 1840]
                        mov              r13, qword ptr [rbp + 1816]
                        lea              rsp, [rbp + 1856]
                        mov              rbp, qword ptr [rbp + 1848];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__digit$2F1:
                        sub              rsp, 1072
                        mov              qword ptr [rsp + 1048], rcx
                        mov              qword ptr [rsp + 1056], rdx
                        mov              qword ptr [rsp + 1064], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1072]
                        mov              qword ptr [rsp + 1040], rax
                        mov              qword ptr [rsp + 1032], r13
                        mov              qword ptr [rsp + 1024], 0
                        mov              qword ptr [rsp + 1016], 0
                        mov              qword ptr [rsp + 1008], r12
                        lea              rax, [rip + digit$2F1_alt1]
                        mov              qword ptr [rsp + 1016], rax
                        lea              rdi, [rsp + 1008]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 992
                        mov              edx, 1008
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
digit$2F1_α_body:
                        .type            n125_var_ref_bx, @function
n125_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_var_ref_α:         mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n126_lit_integer_α
                        .size            n125_var_ref_bx, .-n125_var_ref_bx
                        .type            n126_lit_integer_bx, @function
n126_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_lit_integer_α:     mov              r11, 51
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_157_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n127_call_α
.Llit_integer_α_157_0:  .quad            0
                        .size            n126_lit_integer_bx, .-n126_lit_integer_bx
                        .type            n127_call_bx, @function
n127_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_call_α:            mov              r11, 52
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    digit$2F1_step
                                                                              jmp   digit$2F1_γ
n127_call_β:            mov              r11, 52;                             jmp   digit$2F1_step
                        .size            n127_call_bx, .-n127_call_bx
                        .type            n128_var_ref_bx, @function
n128_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_var_ref_α:         mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n129_lit_integer_α
                        .size            n128_var_ref_bx, .-n128_var_ref_bx
                        .type            n129_lit_integer_bx, @function
n129_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_lit_integer_α:     mov              r11, 54
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_161_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n130_call_α
.Llit_integer_α_161_0:  .quad            1
                        .size            n129_lit_integer_bx, .-n129_lit_integer_bx
                        .type            n130_call_bx, @function
n130_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_call_α:            mov              r11, 55
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    digit$2F1_step
                                                                              jmp   digit$2F1_γ
n130_call_β:            mov              r11, 55;                             jmp   digit$2F1_step
                        .size            n130_call_bx, .-n130_call_bx
                        .type            n131_var_ref_bx, @function
n131_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_var_ref_α:         mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n132_lit_integer_α
                        .size            n131_var_ref_bx, .-n131_var_ref_bx
                        .type            n132_lit_integer_bx, @function
n132_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_lit_integer_α:     mov              r11, 57
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_165_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n133_call_α
.Llit_integer_α_165_0:  .quad            2
                        .size            n132_lit_integer_bx, .-n132_lit_integer_bx
                        .type            n133_call_bx, @function
n133_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_call_α:            mov              r11, 58
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    digit$2F1_step
                                                                              jmp   digit$2F1_γ
n133_call_β:            mov              r11, 58;                             jmp   digit$2F1_step
                        .size            n133_call_bx, .-n133_call_bx
                        .type            n134_var_ref_bx, @function
n134_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n135_lit_integer_α
                        .size            n134_var_ref_bx, .-n134_var_ref_bx
                        .type            n135_lit_integer_bx, @function
n135_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_lit_integer_α:     mov              r11, 60
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_169_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n136_call_α
.Llit_integer_α_169_0:  .quad            3
                        .size            n135_lit_integer_bx, .-n135_lit_integer_bx
                        .type            n136_call_bx, @function
n136_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_call_α:            mov              r11, 61
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    digit$2F1_step
                                                                              jmp   digit$2F1_γ
n136_call_β:            mov              r11, 61;                             jmp   digit$2F1_step
                        .size            n136_call_bx, .-n136_call_bx
                        .type            n137_var_ref_bx, @function
n137_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n138_lit_integer_α
                        .size            n137_var_ref_bx, .-n137_var_ref_bx
                        .type            n138_lit_integer_bx, @function
n138_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:     mov              r11, 63
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_173_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n139_call_α
.Llit_integer_α_173_0:  .quad            4
                        .size            n138_lit_integer_bx, .-n138_lit_integer_bx
                        .type            n139_call_bx, @function
n139_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_call_α:            mov              r11, 64
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    digit$2F1_step
                                                                              jmp   digit$2F1_γ
n139_call_β:            mov              r11, 64;                             jmp   digit$2F1_step
                        .size            n139_call_bx, .-n139_call_bx
                        .type            n140_var_ref_bx, @function
n140_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n141_lit_integer_α
                        .size            n140_var_ref_bx, .-n140_var_ref_bx
                        .type            n141_lit_integer_bx, @function
n141_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     mov              r11, 66
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_177_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n142_call_α
.Llit_integer_α_177_0:  .quad            5
                        .size            n141_lit_integer_bx, .-n141_lit_integer_bx
                        .type            n142_call_bx, @function
n142_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            mov              r11, 67
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    digit$2F1_step
                                                                              jmp   digit$2F1_γ
n142_call_β:            mov              r11, 67;                             jmp   digit$2F1_step
                        .size            n142_call_bx, .-n142_call_bx
                        .type            n143_var_ref_bx, @function
n143_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n144_lit_integer_α
                        .size            n143_var_ref_bx, .-n143_var_ref_bx
                        .type            n144_lit_integer_bx, @function
n144_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     mov              r11, 69
                        mov              qword ptr [rbp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_181_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n145_call_α
.Llit_integer_α_181_0:  .quad            6
                        .size            n144_lit_integer_bx, .-n144_lit_integer_bx
                        .type            n145_call_bx, @function
n145_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:            mov              r11, 70
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    digit$2F1_step
                                                                              jmp   digit$2F1_γ
n145_call_β:            mov              r11, 70;                             jmp   digit$2F1_step
                        .size            n145_call_bx, .-n145_call_bx
                        .type            n146_var_ref_bx, @function
n146_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n147_lit_integer_α
                        .size            n146_var_ref_bx, .-n146_var_ref_bx
                        .type            n147_lit_integer_bx, @function
n147_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:     mov              r11, 72
                        mov              qword ptr [rbp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_185_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n148_call_α
.Llit_integer_α_185_0:  .quad            7
                        .size            n147_lit_integer_bx, .-n147_lit_integer_bx
                        .type            n148_call_bx, @function
n148_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_call_α:            mov              r11, 73
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        movabs           rsi, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    digit$2F1_step
                                                                              jmp   digit$2F1_γ
n148_call_β:            mov              r11, 73;                             jmp   digit$2F1_step
                        .size            n148_call_bx, .-n148_call_bx
                        .type            n149_var_ref_bx, @function
n149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n150_lit_integer_α
                        .size            n149_var_ref_bx, .-n149_var_ref_bx
                        .type            n150_lit_integer_bx, @function
n150_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:     mov              r11, 75
                        mov              qword ptr [rbp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_189_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n151_call_α
.Llit_integer_α_189_0:  .quad            8
                        .size            n150_lit_integer_bx, .-n150_lit_integer_bx
                        .type            n151_call_bx, @function
n151_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:            mov              r11, 76
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        movabs           rsi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              al, 104;                             je    digit$2F1_step
                                                                              jmp   digit$2F1_γ
n151_call_β:            mov              r11, 76;                             jmp   digit$2F1_step
                        .size            n151_call_bx, .-n151_call_bx
                        .type            n152_var_ref_bx, @function
n152_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n153_lit_integer_α
                        .size            n152_var_ref_bx, .-n152_var_ref_bx
                        .type            n153_lit_integer_bx, @function
n153_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              r11, 78
                        mov              qword ptr [rbp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_193_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n154_call_α
.Llit_integer_α_193_0:  .quad            9
                        .size            n153_lit_integer_bx, .-n153_lit_integer_bx
                        .type            n154_call_bx, @function
n154_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_call_α:            mov              r11, 79
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        movabs           rsi, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              al, 104;                             je    digit$2F1_step
                                                                              jmp   digit$2F1_γ
n154_call_β:            mov              r11, 79;                             jmp   digit$2F1_step
                        .size            n154_call_bx, .-n154_call_bx
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_step:
                        mov              rdi, qword ptr [rbp + 1008]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1024], 0
                        mov              rax, qword ptr [rbp + 1016]
                        test             rax, rax
                                                                              je    digit$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt1:
                        lea              rax, [rip + digit$2F1_alt2]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n128_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt2:
                        lea              rax, [rip + digit$2F1_alt3]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n131_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt3:
                        lea              rax, [rip + digit$2F1_alt4]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n134_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt4:
                        lea              rax, [rip + digit$2F1_alt5]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n137_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt5:
                        lea              rax, [rip + digit$2F1_alt6]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n140_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt6:
                        lea              rax, [rip + digit$2F1_alt7]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n143_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt7:
                        lea              rax, [rip + digit$2F1_alt8]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n146_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt8:
                        lea              rax, [rip + digit$2F1_alt9]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n149_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt9:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1016], rax
                        mov              r13, qword ptr [rbp + 1032]
                                                                              jmp   n152_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_β:
                        test             r15, r15
                                                                              jne   digit$2F1_ω
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1024], 0
                        test             rax, rax
                                                                              jne   digit$2F1_βres
                                                                              jmp   digit$2F1_step
digit$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1048]
                        mov              rax, qword ptr [rbp + 1032]
                        cmp              r13, rax;                            je    digit$2F1_altdet
                        lea              rdx, [rip + digit$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1064];         jmp   rcx
digit$2F1_altdet:       xor              eax, eax
                        lea              rsp, [rbp + 1072]
                        mov              rbp, qword ptr [rbp + 1064];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_ω:
                        mov              rcx, qword ptr [rbp + 1056]
                        mov              r13, qword ptr [rbp + 1032]
                        lea              rsp, [rbp + 1072]
                        mov              rbp, qword ptr [rbp + 1064];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__solve$2F8:
                        sub              rsp, 7552
                        mov              qword ptr [rsp + 7528], rcx
                        mov              qword ptr [rsp + 7536], rdx
                        mov              qword ptr [rsp + 7544], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 7552]
                        mov              qword ptr [rsp + 7520], rax
                        mov              qword ptr [rsp + 7512], r13
                        mov              qword ptr [rsp + 7504], 0
                        mov              qword ptr [rsp + 7496], 0
                        mov              qword ptr [rsp + 7488], r12
                        mov              rdi, rsp
                        mov              esi, 7296
                        mov              edx, 7488
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 8
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
solve$2F8_α_body:
                        .type            n195_var_ref_bx, @function
n195_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx;         jmp   n196_var_ref_α
                        .size            n195_var_ref_bx, .-n195_var_ref_bx
                        .type            n196_var_ref_bx, @function
n196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7312]
                        mov              qword ptr [rbp + 7280], rax
                        mov              qword ptr [rbp + 7288], rdx;         jmp   n197_call_α
                        .size            n196_var_ref_bx, .-n196_var_ref_bx
                        .type            n197_call_bx, @function
n197_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_call_α:            mov              r11, 82
                        mov              rax, qword ptr [rbp + 7280]
                        mov              qword ptr [rbp + 7232], rax
                        mov              rax, qword ptr [rbp + 7288]
                        mov              qword ptr [rbp + 7240], rax
                        mov              rax, qword ptr [rbp + 7264]
                        mov              qword ptr [rbp + 7216], rax
                        mov              rax, qword ptr [rbp + 7272]
                        mov              qword ptr [rbp + 7224], rax
                        lea              rdi, [rbp + 7216]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7200], rax
                        mov              qword ptr [rbp + 7208], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n198_var_ref_α
n197_call_β:            mov              r11, 82;                             jmp   solve$2F8_step
                        .size            n197_call_bx, .-n197_call_bx
                        .type            n198_var_ref_bx, @function
n198_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7168], rax
                        mov              qword ptr [rbp + 7176], rdx;         jmp   n199_var_ref_α
                        .size            n198_var_ref_bx, .-n198_var_ref_bx
                        .type            n199_var_ref_bx, @function
n199_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7376]
                        mov              qword ptr [rbp + 7184], rax
                        mov              qword ptr [rbp + 7192], rdx;         jmp   n200_call_α
                        .size            n199_var_ref_bx, .-n199_var_ref_bx
                        .type            n200_call_bx, @function
n200_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_call_α:            mov              r11, 85
                        mov              rax, qword ptr [rbp + 7184]
                        mov              qword ptr [rbp + 7136], rax
                        mov              rax, qword ptr [rbp + 7192]
                        mov              qword ptr [rbp + 7144], rax
                        mov              rax, qword ptr [rbp + 7168]
                        mov              qword ptr [rbp + 7120], rax
                        mov              rax, qword ptr [rbp + 7176]
                        mov              qword ptr [rbp + 7128], rax
                        lea              rdi, [rbp + 7120]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7104], rax
                        mov              qword ptr [rbp + 7112], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n201_var_ref_α
n200_call_β:            mov              r11, 85;                             jmp   solve$2F8_step
                        .size            n200_call_bx, .-n200_call_bx
                        .type            n201_var_ref_bx, @function
n201_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7072], rax
                        mov              qword ptr [rbp + 7080], rdx;         jmp   n202_var_ref_α
                        .size            n201_var_ref_bx, .-n201_var_ref_bx
                        .type            n202_var_ref_bx, @function
n202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7408]
                        mov              qword ptr [rbp + 7088], rax
                        mov              qword ptr [rbp + 7096], rdx;         jmp   n203_call_α
                        .size            n202_var_ref_bx, .-n202_var_ref_bx
                        .type            n203_call_bx, @function
n203_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_call_α:            mov              r11, 88
                        mov              rax, qword ptr [rbp + 7088]
                        mov              qword ptr [rbp + 7040], rax
                        mov              rax, qword ptr [rbp + 7096]
                        mov              qword ptr [rbp + 7048], rax
                        mov              rax, qword ptr [rbp + 7072]
                        mov              qword ptr [rbp + 7024], rax
                        mov              rax, qword ptr [rbp + 7080]
                        mov              qword ptr [rbp + 7032], rax
                        lea              rdi, [rbp + 7024]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7008], rax
                        mov              qword ptr [rbp + 7016], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n204_var_ref_α
n203_call_β:            mov              r11, 88;                             jmp   solve$2F8_step
                        .size            n203_call_bx, .-n203_call_bx
                        .type            n204_var_ref_bx, @function
n204_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx;         jmp   n205_var_ref_α
                        .size            n204_var_ref_bx, .-n204_var_ref_bx
                        .type            n205_var_ref_bx, @function
n205_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7360]
                        mov              qword ptr [rbp + 6992], rax
                        mov              qword ptr [rbp + 7000], rdx;         jmp   n206_call_α
                        .size            n205_var_ref_bx, .-n205_var_ref_bx
                        .type            n206_call_bx, @function
n206_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_call_α:            mov              r11, 91
                        mov              rax, qword ptr [rbp + 6992]
                        mov              qword ptr [rbp + 6944], rax
                        mov              rax, qword ptr [rbp + 7000]
                        mov              qword ptr [rbp + 6952], rax
                        mov              rax, qword ptr [rbp + 6976]
                        mov              qword ptr [rbp + 6928], rax
                        mov              rax, qword ptr [rbp + 6984]
                        mov              qword ptr [rbp + 6936], rax
                        lea              rdi, [rbp + 6928]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6912], rax
                        mov              qword ptr [rbp + 6920], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n207_var_ref_α
n206_call_β:            mov              r11, 91;                             jmp   solve$2F8_step
                        .size            n206_call_bx, .-n206_call_bx
                        .type            n207_var_ref_bx, @function
n207_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx;         jmp   n208_var_ref_α
                        .size            n207_var_ref_bx, .-n207_var_ref_bx
                        .type            n208_var_ref_bx, @function
n208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7328]
                        mov              qword ptr [rbp + 6896], rax
                        mov              qword ptr [rbp + 6904], rdx;         jmp   n209_call_α
                        .size            n208_var_ref_bx, .-n208_var_ref_bx
                        .type            n209_call_bx, @function
n209_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_call_α:            mov              r11, 94
                        mov              rax, qword ptr [rbp + 6896]
                        mov              qword ptr [rbp + 6848], rax
                        mov              rax, qword ptr [rbp + 6904]
                        mov              qword ptr [rbp + 6856], rax
                        mov              rax, qword ptr [rbp + 6880]
                        mov              qword ptr [rbp + 6832], rax
                        mov              rax, qword ptr [rbp + 6888]
                        mov              qword ptr [rbp + 6840], rax
                        lea              rdi, [rbp + 6832]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6816], rax
                        mov              qword ptr [rbp + 6824], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n210_var_ref_α
n209_call_β:            mov              r11, 94;                             jmp   solve$2F8_step
                        .size            n209_call_bx, .-n209_call_bx
                        .type            n210_var_ref_bx, @function
n210_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx;         jmp   n211_var_ref_α
                        .size            n210_var_ref_bx, .-n210_var_ref_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7344]
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx;         jmp   n212_call_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_call_bx, @function
n212_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_call_α:            mov              r11, 97
                        mov              rax, qword ptr [rbp + 6800]
                        mov              qword ptr [rbp + 6752], rax
                        mov              rax, qword ptr [rbp + 6808]
                        mov              qword ptr [rbp + 6760], rax
                        mov              rax, qword ptr [rbp + 6784]
                        mov              qword ptr [rbp + 6736], rax
                        mov              rax, qword ptr [rbp + 6792]
                        mov              qword ptr [rbp + 6744], rax
                        lea              rdi, [rbp + 6736]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6720], rax
                        mov              qword ptr [rbp + 6728], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n213_var_ref_α
n212_call_β:            mov              r11, 97;                             jmp   solve$2F8_step
                        .size            n212_call_bx, .-n212_call_bx
                        .type            n213_var_ref_bx, @function
n213_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx;         jmp   n214_var_ref_α
                        .size            n213_var_ref_bx, .-n213_var_ref_bx
                        .type            n214_var_ref_bx, @function
n214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7424]
                        mov              qword ptr [rbp + 6704], rax
                        mov              qword ptr [rbp + 6712], rdx;         jmp   n215_call_α
                        .size            n214_var_ref_bx, .-n214_var_ref_bx
                        .type            n215_call_bx, @function
n215_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_call_α:            mov              r11, 100
                        mov              rax, qword ptr [rbp + 6704]
                        mov              qword ptr [rbp + 6656], rax
                        mov              rax, qword ptr [rbp + 6712]
                        mov              qword ptr [rbp + 6664], rax
                        mov              rax, qword ptr [rbp + 6688]
                        mov              qword ptr [rbp + 6640], rax
                        mov              rax, qword ptr [rbp + 6696]
                        mov              qword ptr [rbp + 6648], rax
                        lea              rdi, [rbp + 6640]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6624], rax
                        mov              qword ptr [rbp + 6632], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n216_var_ref_α
n215_call_β:            mov              r11, 100;                            jmp   solve$2F8_step
                        .size            n215_call_bx, .-n215_call_bx
                        .type            n216_var_ref_bx, @function
n216_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 128]
                        mov              qword ptr [rbp + 6592], rax
                        mov              qword ptr [rbp + 6600], rdx;         jmp   n217_var_ref_α
                        .size            n216_var_ref_bx, .-n216_var_ref_bx
                        .type            n217_var_ref_bx, @function
n217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7392]
                        mov              qword ptr [rbp + 6608], rax
                        mov              qword ptr [rbp + 6616], rdx;         jmp   n218_call_α
                        .size            n217_var_ref_bx, .-n217_var_ref_bx
                        .type            n218_call_bx, @function
n218_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_call_α:            mov              r11, 103
                        mov              rax, qword ptr [rbp + 6608]
                        mov              qword ptr [rbp + 6560], rax
                        mov              rax, qword ptr [rbp + 6616]
                        mov              qword ptr [rbp + 6568], rax
                        mov              rax, qword ptr [rbp + 6592]
                        mov              qword ptr [rbp + 6544], rax
                        mov              rax, qword ptr [rbp + 6600]
                        mov              qword ptr [rbp + 6552], rax
                        lea              rdi, [rbp + 6544]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6528], rax
                        mov              qword ptr [rbp + 6536], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n219_var_ref_α
n218_call_β:            mov              r11, 103;                            jmp   solve$2F8_step
                        .size            n218_call_bx, .-n218_call_bx
                        .type            n219_var_ref_bx, @function
n219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7360]
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx;         jmp   n220_call_proc_staged_α
                        .size            n219_var_ref_bx, .-n219_var_ref_bx
                        .type            n220_call_proc_staged_bx, @function
n220_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_call_proc_staged_α:
                        mov              r11, 105
                        mov              qword ptr [rbp + 6480], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_430_200
                        mov              rax, qword ptr [rbp + 6512]
                        mov              rdx, qword ptr [rbp + 6520]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_430_201
.Lcall_proc_staged_α_430_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 6512]
                        mov              rdx, qword ptr [rbp + 6520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_430_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_430_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_430_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_430_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_430_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_430_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_430_3:
                        mov              qword ptr [rbp + 6480], rax
                        mov              qword ptr [rbp + 6488], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_430_21
                        add              rsp, 32
.Lcall_proc_staged_α_430_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_430_2
.Lcall_proc_staged_α_430_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 6480], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_430_2
.Lcall_proc_staged_α_430_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_430_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   solve$2F8_step
.Lcall_proc_staged_α_430_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_430_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 6448]
                        mov              rdx, qword ptr [rbp + 6456]
.Lcall_proc_staged_α_430_29:
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n221_var_ref_α
n220_call_proc_staged_β:
                        mov              r11, 105
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_430_22
                        mov              rax, qword ptr [rbp + 6480]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_430_22
                        mov              rcx, qword ptr [rbp + 6488]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_430_22:
                                                                              jmp   solve$2F8_step
.Lcall_proc_staged_α_430_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n221_var_ref_α
.Lcall_proc_staged_α_430_0:
                        .quad            .Lcall_proc_staged_α_430_0_s
.Lcall_proc_staged_α_430_0_s:
                        .string          "digit/1"
                        .size            n220_call_proc_staged_bx, .-n220_call_proc_staged_bx
                        .type            n221_var_ref_bx, @function
n221_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7376]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx;         jmp   n222_call_proc_staged_α
                        .size            n221_var_ref_bx, .-n221_var_ref_bx
                        .type            n222_call_proc_staged_bx, @function
n222_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_call_proc_staged_α:
                        mov              r11, 107
                        mov              qword ptr [rbp + 6400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_434_200
                        mov              rax, qword ptr [rbp + 6432]
                        mov              rdx, qword ptr [rbp + 6440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_434_201
.Lcall_proc_staged_α_434_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 6432]
                        mov              rdx, qword ptr [rbp + 6440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_434_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_434_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_434_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_434_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_434_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_434_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_434_3:
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_434_21
                        add              rsp, 32
.Lcall_proc_staged_α_434_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_434_2
.Lcall_proc_staged_α_434_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 6400], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_434_2
.Lcall_proc_staged_α_434_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_434_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n220_call_proc_staged_β
.Lcall_proc_staged_α_434_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_434_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 6368]
                        mov              rdx, qword ptr [rbp + 6376]
.Lcall_proc_staged_α_434_29:
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                        cmp              al, 104;                             je    n220_call_proc_staged_β
                                                                              jmp   n223_var_α
n222_call_proc_staged_β:
                        mov              r11, 107
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_434_22
                        mov              rax, qword ptr [rbp + 6400]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_434_22
                        mov              rcx, qword ptr [rbp + 6408]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_434_22:
                                                                              jmp   n220_call_proc_staged_β
.Lcall_proc_staged_α_434_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                        cmp              al, 104;                             je    n220_call_proc_staged_β
                                                                              jmp   n223_var_α
.Lcall_proc_staged_α_434_0:
                        .quad            .Lcall_proc_staged_α_434_0_s
.Lcall_proc_staged_α_434_0_s:
                        .string          "digit/1"
                        .size            n222_call_proc_staged_bx, .-n222_call_proc_staged_bx
                        .type            n223_var_bx, @function
n223_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_var_α:             mov              r11, 108
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 6240], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 6248], rax;         jmp   n224_call_α
                        .size            n223_var_bx, .-n223_var_bx
                        .type            n224_call_bx, @function
n224_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:            mov              r11, 109
                        mov              rax, qword ptr [rbp + 6240]
                        mov              qword ptr [rbp + 6288], rax
                        mov              rax, qword ptr [rbp + 6248]
                        mov              qword ptr [rbp + 6296], rax
                        lea              rdi, [rbp + 6288]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6272], rax
                        mov              qword ptr [rbp + 6280], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n225_var_α
n224_call_β:            mov              r11, 109;                            jmp   solve$2F8_step
                        .size            n224_call_bx, .-n224_call_bx
                        .type            n225_var_bx, @function
n225_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_α:             mov              r11, 110
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 6256], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 6264], rax;         jmp   n226_call_α
                        .size            n225_var_bx, .-n225_var_bx
                        .type            n226_call_bx, @function
n226_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_call_α:            mov              r11, 111
                        mov              rax, qword ptr [rbp + 6256]
                        mov              qword ptr [rbp + 6336], rax
                        mov              rax, qword ptr [rbp + 6264]
                        mov              qword ptr [rbp + 6344], rax
                        lea              rdi, [rbp + 6336]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6320], rax
                        mov              qword ptr [rbp + 6328], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n227_call_α
n226_call_β:            mov              r11, 111;                            jmp   solve$2F8_step
                        .size            n226_call_bx, .-n226_call_bx
                        .type            n227_call_bx, @function
n227_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_call_α:            mov              r11, 112
                        mov              rax, qword ptr [rbp + 6256]
                        mov              qword ptr [rbp + 6208], rax
                        mov              rax, qword ptr [rbp + 6264]
                        mov              qword ptr [rbp + 6216], rax
                        mov              rax, qword ptr [rbp + 6240]
                        mov              qword ptr [rbp + 6192], rax
                        mov              rax, qword ptr [rbp + 6248]
                        mov              qword ptr [rbp + 6200], rax
                        lea              rdi, [rbp + 6192]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6176], rax
                        mov              qword ptr [rbp + 6184], rdx
                        cmp              al, 104;                             je    n222_call_proc_staged_β
                                                                              jmp   n228_lit_integer_α
n227_call_β:            mov              r11, 112;                            jmp   n222_call_proc_staged_β
                        .size            n227_call_bx, .-n227_call_bx
                        .type            n228_lit_integer_bx, @function
n228_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_lit_integer_α:     mov              r11, 113
                        mov              qword ptr [rbp + 6096], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_442_0]
                        mov              qword ptr [rbp + 6104], rax;         jmp   n229_var_ref_α
.Llit_integer_α_442_0:  .quad            0
                        .size            n228_lit_integer_bx, .-n228_lit_integer_bx
                        .type            n229_var_ref_bx, @function
n229_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7360]
                        mov              qword ptr [rbp + 6112], rax
                        mov              qword ptr [rbp + 6120], rdx;         jmp   n230_var_ref_α
                        .size            n229_var_ref_bx, .-n229_var_ref_bx
                        .type            n230_var_ref_bx, @function
n230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              r11, 115
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7376]
                        mov              qword ptr [rbp + 6128], rax
                        mov              qword ptr [rbp + 6136], rdx;         jmp   n231_var_ref_α
                        .size            n230_var_ref_bx, .-n230_var_ref_bx
                        .type            n231_var_ref_bx, @function
n231_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7392]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx;         jmp   n232_var_ref_α
                        .size            n231_var_ref_bx, .-n231_var_ref_bx
                        .type            n232_var_ref_bx, @function
n232_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_var_ref_α:         mov              r11, 117
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7456]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx;         jmp   n233_call_proc_staged_α
                        .size            n232_var_ref_bx, .-n232_var_ref_bx
                        .type            n233_call_proc_staged_bx, @function
n233_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_call_proc_staged_α:
                        mov              r11, 118
                        mov              qword ptr [rbp + 6064], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_452_200
                        mov              rax, qword ptr [rbp + 6096]
                        mov              rdx, qword ptr [rbp + 6104]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_452_201
.Lcall_proc_staged_α_452_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 6096]
                        mov              rdx, qword ptr [rbp + 6104]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_452_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_452_202
                        mov              rax, qword ptr [rbp + 6112]
                        mov              rdx, qword ptr [rbp + 6120]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_452_203
.Lcall_proc_staged_α_452_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 6112]
                        mov              rdx, qword ptr [rbp + 6120]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_452_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_452_204
                        mov              rax, qword ptr [rbp + 6128]
                        mov              rdx, qword ptr [rbp + 6136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_452_205
.Lcall_proc_staged_α_452_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 6128]
                        mov              rdx, qword ptr [rbp + 6136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_452_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_452_206
                        mov              rax, qword ptr [rbp + 6144]
                        mov              rdx, qword ptr [rbp + 6152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_452_207
.Lcall_proc_staged_α_452_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 6144]
                        mov              rdx, qword ptr [rbp + 6152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_452_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_452_208
                        mov              rax, qword ptr [rbp + 6160]
                        mov              rdx, qword ptr [rbp + 6168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_452_209
.Lcall_proc_staged_α_452_208:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 6160]
                        mov              rdx, qword ptr [rbp + 6168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_452_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_452_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_452_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_452_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_452_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_452_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_452_3:
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_452_21
                        add              rsp, 32
.Lcall_proc_staged_α_452_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_452_2
.Lcall_proc_staged_α_452_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 6064], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_452_2
.Lcall_proc_staged_α_452_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_452_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n222_call_proc_staged_β
.Lcall_proc_staged_α_452_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_452_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 5968]
                        mov              rdx, qword ptr [rbp + 5976]
.Lcall_proc_staged_α_452_29:
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx
                        cmp              al, 104;                             je    n222_call_proc_staged_β
                                                                              jmp   n234_var_ref_α
n233_call_proc_staged_β:
                        mov              r11, 118
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_452_22
                        mov              rax, qword ptr [rbp + 6064]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_452_22
                        mov              rcx, qword ptr [rbp + 6072]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_452_22:
                                                                              jmp   n222_call_proc_staged_β
.Lcall_proc_staged_α_452_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx
                        cmp              al, 104;                             je    n222_call_proc_staged_β
                                                                              jmp   n234_var_ref_α
.Lcall_proc_staged_α_452_0:
                        .quad            .Lcall_proc_staged_α_452_0_s
.Lcall_proc_staged_α_452_0_s:
                        .string          "sumdigit/5"
                        .size            n233_call_proc_staged_bx, .-n233_call_proc_staged_bx
                        .type            n234_var_ref_bx, @function
n234_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_var_ref_α:         mov              r11, 119
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7408]
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx;         jmp   n235_call_proc_staged_α
                        .size            n234_var_ref_bx, .-n234_var_ref_bx
                        .type            n235_call_proc_staged_bx, @function
n235_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_call_proc_staged_α:
                        mov              r11, 120
                        mov              qword ptr [rbp + 5920], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_456_200
                        mov              rax, qword ptr [rbp + 5952]
                        mov              rdx, qword ptr [rbp + 5960]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_456_201
.Lcall_proc_staged_α_456_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5952]
                        mov              rdx, qword ptr [rbp + 5960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_456_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_456_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_456_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_456_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_456_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_456_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_456_3:
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_456_21
                        add              rsp, 32
.Lcall_proc_staged_α_456_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_456_2
.Lcall_proc_staged_α_456_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5920], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_456_2
.Lcall_proc_staged_α_456_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_456_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n233_call_proc_staged_β
.Lcall_proc_staged_α_456_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_456_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 5888]
                        mov              rdx, qword ptr [rbp + 5896]
.Lcall_proc_staged_α_456_29:
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx
                        cmp              al, 104;                             je    n233_call_proc_staged_β
                                                                              jmp   n236_var_α
n235_call_proc_staged_β:
                        mov              r11, 120
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_456_22
                        mov              rax, qword ptr [rbp + 5920]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_456_22
                        mov              rcx, qword ptr [rbp + 5928]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_456_22:
                                                                              jmp   n233_call_proc_staged_β
.Lcall_proc_staged_α_456_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx
                        cmp              al, 104;                             je    n233_call_proc_staged_β
                                                                              jmp   n236_var_α
.Lcall_proc_staged_α_456_0:
                        .quad            .Lcall_proc_staged_α_456_0_s
.Lcall_proc_staged_α_456_0_s:
                        .string          "digit/1"
                        .size            n235_call_proc_staged_bx, .-n235_call_proc_staged_bx
                        .type            n236_var_bx, @function
n236_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             mov              r11, 121
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 5760], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 5768], rax;         jmp   n237_call_α
                        .size            n236_var_bx, .-n236_var_bx
                        .type            n237_call_bx, @function
n237_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:            mov              r11, 122
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 5808], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 5816], rax
                        lea              rdi, [rbp + 5808]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5792], rax
                        mov              qword ptr [rbp + 5800], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n238_var_α
n237_call_β:            mov              r11, 122;                            jmp   solve$2F8_step
                        .size            n237_call_bx, .-n237_call_bx
                        .type            n238_var_bx, @function
n238_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             mov              r11, 123
                        mov              rax, qword ptr [rbp + 7392]
                        mov              qword ptr [rbp + 5776], rax
                        mov              rax, qword ptr [rbp + 7400]
                        mov              qword ptr [rbp + 5784], rax;         jmp   n239_call_α
                        .size            n238_var_bx, .-n238_var_bx
                        .type            n239_call_bx, @function
n239_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_call_α:            mov              r11, 124
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 5856], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 5864], rax
                        lea              rdi, [rbp + 5856]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5840], rax
                        mov              qword ptr [rbp + 5848], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n240_call_α
n239_call_β:            mov              r11, 124;                            jmp   solve$2F8_step
                        .size            n239_call_bx, .-n239_call_bx
                        .type            n240_call_bx, @function
n240_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_call_α:            mov              r11, 125
                        mov              rax, qword ptr [rbp + 5776]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 5784]
                        mov              qword ptr [rbp + 5736], rax
                        mov              rax, qword ptr [rbp + 5760]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5768]
                        mov              qword ptr [rbp + 5720], rax
                        lea              rdi, [rbp + 5712]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5696], rax
                        mov              qword ptr [rbp + 5704], rdx
                        cmp              al, 104;                             je    n235_call_proc_staged_β
                                                                              jmp   n241_var_α
n240_call_β:            mov              r11, 125;                            jmp   n235_call_proc_staged_β
                        .size            n240_call_bx, .-n240_call_bx
                        .type            n241_var_bx, @function
n241_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             mov              r11, 126
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 5568], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 5576], rax;         jmp   n242_call_α
                        .size            n241_var_bx, .-n241_var_bx
                        .type            n242_call_bx, @function
n242_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_call_α:            mov              r11, 127
                        mov              rax, qword ptr [rbp + 5568]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5576]
                        mov              qword ptr [rbp + 5624], rax
                        lea              rdi, [rbp + 5616]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n243_var_α
n242_call_β:            mov              r11, 127;                            jmp   solve$2F8_step
                        .size            n242_call_bx, .-n242_call_bx
                        .type            n243_var_bx, @function
n243_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             mov              r11, 128
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 5592], rax;         jmp   n244_call_α
                        .size            n243_var_bx, .-n243_var_bx
                        .type            n244_call_bx, @function
n244_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_call_α:            mov              r11, 129
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 5664], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 5672], rax
                        lea              rdi, [rbp + 5664]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5648], rax
                        mov              qword ptr [rbp + 5656], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n245_call_α
n244_call_β:            mov              r11, 129;                            jmp   solve$2F8_step
                        .size            n244_call_bx, .-n244_call_bx
                        .type            n245_call_bx, @function
n245_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_call_α:            mov              r11, 130
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 5544], rax
                        mov              rax, qword ptr [rbp + 5568]
                        mov              qword ptr [rbp + 5520], rax
                        mov              rax, qword ptr [rbp + 5576]
                        mov              qword ptr [rbp + 5528], rax
                        lea              rdi, [rbp + 5520]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5504], rax
                        mov              qword ptr [rbp + 5512], rdx
                        cmp              al, 104;                             je    n235_call_proc_staged_β
                                                                              jmp   n246_var_α
n245_call_β:            mov              r11, 130;                            jmp   n235_call_proc_staged_β
                        .size            n245_call_bx, .-n245_call_bx
                        .type            n246_var_bx, @function
n246_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             mov              r11, 131
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 5376], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 5384], rax;         jmp   n247_call_α
                        .size            n246_var_bx, .-n246_var_bx
                        .type            n247_call_bx, @function
n247_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_call_α:            mov              r11, 132
                        mov              rax, qword ptr [rbp + 5376]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5384]
                        mov              qword ptr [rbp + 5432], rax
                        lea              rdi, [rbp + 5424]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5408], rax
                        mov              qword ptr [rbp + 5416], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n248_var_α
n247_call_β:            mov              r11, 132;                            jmp   solve$2F8_step
                        .size            n247_call_bx, .-n247_call_bx
                        .type            n248_var_bx, @function
n248_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:             mov              r11, 133
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 5400], rax;         jmp   n249_call_α
                        .size            n248_var_bx, .-n248_var_bx
                        .type            n249_call_bx, @function
n249_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            mov              r11, 134
                        mov              rax, qword ptr [rbp + 5392]
                        mov              qword ptr [rbp + 5472], rax
                        mov              rax, qword ptr [rbp + 5400]
                        mov              qword ptr [rbp + 5480], rax
                        lea              rdi, [rbp + 5472]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5456], rax
                        mov              qword ptr [rbp + 5464], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n250_call_α
n249_call_β:            mov              r11, 134;                            jmp   solve$2F8_step
                        .size            n249_call_bx, .-n249_call_bx
                        .type            n250_call_bx, @function
n250_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_call_α:            mov              r11, 135
                        mov              rax, qword ptr [rbp + 5392]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5400]
                        mov              qword ptr [rbp + 5352], rax
                        mov              rax, qword ptr [rbp + 5376]
                        mov              qword ptr [rbp + 5328], rax
                        mov              rax, qword ptr [rbp + 5384]
                        mov              qword ptr [rbp + 5336], rax
                        lea              rdi, [rbp + 5328]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5312], rax
                        mov              qword ptr [rbp + 5320], rdx
                        cmp              al, 104;                             je    n235_call_proc_staged_β
                                                                              jmp   n251_var_ref_α
n250_call_β:            mov              r11, 135;                            jmp   n235_call_proc_staged_β
                        .size            n250_call_bx, .-n250_call_bx
                        .type            n251_var_ref_bx, @function
n251_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:         mov              r11, 136
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7424]
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx;         jmp   n252_call_proc_staged_α
                        .size            n251_var_ref_bx, .-n251_var_ref_bx
                        .type            n252_call_proc_staged_bx, @function
n252_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_call_proc_staged_α:
                        mov              r11, 137
                        mov              qword ptr [rbp + 5264], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_481_200
                        mov              rax, qword ptr [rbp + 5296]
                        mov              rdx, qword ptr [rbp + 5304]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_481_201
.Lcall_proc_staged_α_481_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5296]
                        mov              rdx, qword ptr [rbp + 5304]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_481_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_481_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_481_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_481_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_481_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_481_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_481_3:
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_481_21
                        add              rsp, 32
.Lcall_proc_staged_α_481_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_481_2
.Lcall_proc_staged_α_481_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5264], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_481_2
.Lcall_proc_staged_α_481_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_481_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n235_call_proc_staged_β
.Lcall_proc_staged_α_481_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_481_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 5232]
                        mov              rdx, qword ptr [rbp + 5240]
.Lcall_proc_staged_α_481_29:
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx
                        cmp              al, 104;                             je    n235_call_proc_staged_β
                                                                              jmp   n253_var_α
n252_call_proc_staged_β:
                        mov              r11, 137
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_481_22
                        mov              rax, qword ptr [rbp + 5264]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_481_22
                        mov              rcx, qword ptr [rbp + 5272]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_481_22:
                                                                              jmp   n235_call_proc_staged_β
.Lcall_proc_staged_α_481_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx
                        cmp              al, 104;                             je    n235_call_proc_staged_β
                                                                              jmp   n253_var_α
.Lcall_proc_staged_α_481_0:
                        .quad            .Lcall_proc_staged_α_481_0_s
.Lcall_proc_staged_α_481_0_s:
                        .string          "digit/1"
                        .size            n252_call_proc_staged_bx, .-n252_call_proc_staged_bx
                        .type            n253_var_bx, @function
n253_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:             mov              r11, 138
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 5112], rax;         jmp   n254_call_α
                        .size            n253_var_bx, .-n253_var_bx
                        .type            n254_call_bx, @function
n254_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_call_α:            mov              r11, 139
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5160], rax
                        lea              rdi, [rbp + 5152]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5136], rax
                        mov              qword ptr [rbp + 5144], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n255_var_α
n254_call_β:            mov              r11, 139;                            jmp   solve$2F8_step
                        .size            n254_call_bx, .-n254_call_bx
                        .type            n255_var_bx, @function
n255_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:             mov              r11, 140
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 5128], rax;         jmp   n256_call_α
                        .size            n255_var_bx, .-n255_var_bx
                        .type            n256_call_bx, @function
n256_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_call_α:            mov              r11, 141
                        mov              rax, qword ptr [rbp + 5120]
                        mov              qword ptr [rbp + 5200], rax
                        mov              rax, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 5208], rax
                        lea              rdi, [rbp + 5200]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5184], rax
                        mov              qword ptr [rbp + 5192], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n257_call_α
n256_call_β:            mov              r11, 141;                            jmp   solve$2F8_step
                        .size            n256_call_bx, .-n256_call_bx
                        .type            n257_call_bx, @function
n257_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_call_α:            mov              r11, 142
                        mov              rax, qword ptr [rbp + 5120]
                        mov              qword ptr [rbp + 5072], rax
                        mov              rax, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 5080], rax
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5064], rax
                        lea              rdi, [rbp + 5056]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                        cmp              al, 104;                             je    n252_call_proc_staged_β
                                                                              jmp   n258_var_α
n257_call_β:            mov              r11, 142;                            jmp   n252_call_proc_staged_β
                        .size            n257_call_bx, .-n257_call_bx
                        .type            n258_var_bx, @function
n258_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             mov              r11, 143
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 4920], rax;         jmp   n259_call_α
                        .size            n258_var_bx, .-n258_var_bx
                        .type            n259_call_bx, @function
n259_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_call_α:            mov              r11, 144
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 4968], rax
                        lea              rdi, [rbp + 4960]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4944], rax
                        mov              qword ptr [rbp + 4952], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n260_var_α
n259_call_β:            mov              r11, 144;                            jmp   solve$2F8_step
                        .size            n259_call_bx, .-n259_call_bx
                        .type            n260_var_bx, @function
n260_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:             mov              r11, 145
                        mov              rax, qword ptr [rbp + 7392]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 7400]
                        mov              qword ptr [rbp + 4936], rax;         jmp   n261_call_α
                        .size            n260_var_bx, .-n260_var_bx
                        .type            n261_call_bx, @function
n261_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:            mov              r11, 146
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 5008], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 5016], rax
                        lea              rdi, [rbp + 5008]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4992], rax
                        mov              qword ptr [rbp + 5000], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n262_call_α
n261_call_β:            mov              r11, 146;                            jmp   solve$2F8_step
                        .size            n261_call_bx, .-n261_call_bx
                        .type            n262_call_bx, @function
n262_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_call_α:            mov              r11, 147
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 4880], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 4888], rax
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 4872], rax
                        lea              rdi, [rbp + 4864]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4848], rax
                        mov              qword ptr [rbp + 4856], rdx
                        cmp              al, 104;                             je    n252_call_proc_staged_β
                                                                              jmp   n263_var_α
n262_call_β:            mov              r11, 147;                            jmp   n252_call_proc_staged_β
                        .size            n262_call_bx, .-n262_call_bx
                        .type            n263_var_bx, @function
n263_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:             mov              r11, 148
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 4728], rax;         jmp   n264_call_α
                        .size            n263_var_bx, .-n263_var_bx
                        .type            n264_call_bx, @function
n264_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_call_α:            mov              r11, 149
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4768], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4776], rax
                        lea              rdi, [rbp + 4768]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4752], rax
                        mov              qword ptr [rbp + 4760], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n265_var_α
n264_call_β:            mov              r11, 149;                            jmp   solve$2F8_step
                        .size            n264_call_bx, .-n264_call_bx
                        .type            n265_var_bx, @function
n265_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             mov              r11, 150
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 4744], rax;         jmp   n266_call_α
                        .size            n265_var_bx, .-n265_var_bx
                        .type            n266_call_bx, @function
n266_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_call_α:            mov              r11, 151
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4824], rax
                        lea              rdi, [rbp + 4816]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n267_call_α
n266_call_β:            mov              r11, 151;                            jmp   solve$2F8_step
                        .size            n266_call_bx, .-n266_call_bx
                        .type            n267_call_bx, @function
n267_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:            mov              r11, 152
                        mov              rax, qword ptr [rbp + 4736]
                        mov              qword ptr [rbp + 4688], rax
                        mov              rax, qword ptr [rbp + 4744]
                        mov              qword ptr [rbp + 4696], rax
                        mov              rax, qword ptr [rbp + 4720]
                        mov              qword ptr [rbp + 4672], rax
                        mov              rax, qword ptr [rbp + 4728]
                        mov              qword ptr [rbp + 4680], rax
                        lea              rdi, [rbp + 4672]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4656], rax
                        mov              qword ptr [rbp + 4664], rdx
                        cmp              al, 104;                             je    n252_call_proc_staged_β
                                                                              jmp   n268_var_α
n267_call_β:            mov              r11, 152;                            jmp   n252_call_proc_staged_β
                        .size            n267_call_bx, .-n267_call_bx
                        .type            n268_var_bx, @function
n268_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_var_α:             mov              r11, 153
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 4536], rax;         jmp   n269_call_α
                        .size            n268_var_bx, .-n268_var_bx
                        .type            n269_call_bx, @function
n269_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_call_α:            mov              r11, 154
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4576], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4584], rax
                        lea              rdi, [rbp + 4576]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4560], rax
                        mov              qword ptr [rbp + 4568], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n270_var_α
n269_call_β:            mov              r11, 154;                            jmp   solve$2F8_step
                        .size            n269_call_bx, .-n269_call_bx
                        .type            n270_var_bx, @function
n270_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:             mov              r11, 155
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 4552], rax;         jmp   n271_call_α
                        .size            n270_var_bx, .-n270_var_bx
                        .type            n271_call_bx, @function
n271_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_call_α:            mov              r11, 156
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4632], rax
                        lea              rdi, [rbp + 4624]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n272_call_α
n271_call_β:            mov              r11, 156;                            jmp   solve$2F8_step
                        .size            n271_call_bx, .-n271_call_bx
                        .type            n272_call_bx, @function
n272_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_call_α:            mov              r11, 157
                        mov              rax, qword ptr [rbp + 4544]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4552]
                        mov              qword ptr [rbp + 4504], rax
                        mov              rax, qword ptr [rbp + 4528]
                        mov              qword ptr [rbp + 4480], rax
                        mov              rax, qword ptr [rbp + 4536]
                        mov              qword ptr [rbp + 4488], rax
                        lea              rdi, [rbp + 4480]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4464], rax
                        mov              qword ptr [rbp + 4472], rdx
                        cmp              al, 104;                             je    n252_call_proc_staged_β
                                                                              jmp   n273_var_ref_α
n272_call_β:            mov              r11, 157;                            jmp   n252_call_proc_staged_β
                        .size            n272_call_bx, .-n272_call_bx
                        .type            n273_var_ref_bx, @function
n273_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7456]
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx;         jmp   n274_var_ref_α
                        .size            n273_var_ref_bx, .-n273_var_ref_bx
                        .type            n274_var_ref_bx, @function
n274_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              r11, 159
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7408]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx;         jmp   n275_var_ref_α
                        .size            n274_var_ref_bx, .-n274_var_ref_bx
                        .type            n275_var_ref_bx, @function
n275_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:         mov              r11, 160
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7424]
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx;         jmp   n276_var_ref_α
                        .size            n275_var_ref_bx, .-n275_var_ref_bx
                        .type            n276_var_ref_bx, @function
n276_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7376]
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx;         jmp   n277_var_ref_α
                        .size            n276_var_ref_bx, .-n276_var_ref_bx
                        .type            n277_var_ref_bx, @function
n277_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7440]
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx;         jmp   n278_call_proc_staged_α
                        .size            n277_var_ref_bx, .-n277_var_ref_bx
                        .type            n278_call_proc_staged_bx, @function
n278_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_call_proc_staged_α:
                        mov              r11, 163
                        mov              qword ptr [rbp + 4352], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_521_200
                        mov              rax, qword ptr [rbp + 4384]
                        mov              rdx, qword ptr [rbp + 4392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_521_201
.Lcall_proc_staged_α_521_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4384]
                        mov              rdx, qword ptr [rbp + 4392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_521_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_521_202
                        mov              rax, qword ptr [rbp + 4400]
                        mov              rdx, qword ptr [rbp + 4408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_521_203
.Lcall_proc_staged_α_521_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 4400]
                        mov              rdx, qword ptr [rbp + 4408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_521_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_521_204
                        mov              rax, qword ptr [rbp + 4416]
                        mov              rdx, qword ptr [rbp + 4424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_521_205
.Lcall_proc_staged_α_521_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 4416]
                        mov              rdx, qword ptr [rbp + 4424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_521_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_521_206
                        mov              rax, qword ptr [rbp + 4432]
                        mov              rdx, qword ptr [rbp + 4440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_521_207
.Lcall_proc_staged_α_521_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 4432]
                        mov              rdx, qword ptr [rbp + 4440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_521_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_521_208
                        mov              rax, qword ptr [rbp + 4448]
                        mov              rdx, qword ptr [rbp + 4456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_521_209
.Lcall_proc_staged_α_521_208:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 4448]
                        mov              rdx, qword ptr [rbp + 4456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_521_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_521_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_521_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_521_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_521_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_521_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_521_3:
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_521_21
                        add              rsp, 32
.Lcall_proc_staged_α_521_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_521_2
.Lcall_proc_staged_α_521_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4352], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_521_2
.Lcall_proc_staged_α_521_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_521_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n252_call_proc_staged_β
.Lcall_proc_staged_α_521_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_521_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 4256]
                        mov              rdx, qword ptr [rbp + 4264]
.Lcall_proc_staged_α_521_29:
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        cmp              al, 104;                             je    n252_call_proc_staged_β
                                                                              jmp   n279_var_ref_α
n278_call_proc_staged_β:
                        mov              r11, 163
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_521_22
                        mov              rax, qword ptr [rbp + 4352]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_521_22
                        mov              rcx, qword ptr [rbp + 4360]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_521_22:
                                                                              jmp   n252_call_proc_staged_β
.Lcall_proc_staged_α_521_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        cmp              al, 104;                             je    n252_call_proc_staged_β
                                                                              jmp   n279_var_ref_α
.Lcall_proc_staged_α_521_0:
                        .quad            .Lcall_proc_staged_α_521_0_s
.Lcall_proc_staged_α_521_0_s:
                        .string          "sumdigit/5"
                        .size            n278_call_proc_staged_bx, .-n278_call_proc_staged_bx
                        .type            n279_var_ref_bx, @function
n279_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7344]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx;         jmp   n280_call_proc_staged_α
                        .size            n279_var_ref_bx, .-n279_var_ref_bx
                        .type            n280_call_proc_staged_bx, @function
n280_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_call_proc_staged_α:
                        mov              r11, 165
                        mov              qword ptr [rbp + 4208], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_525_200
                        mov              rax, qword ptr [rbp + 4240]
                        mov              rdx, qword ptr [rbp + 4248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_525_201
.Lcall_proc_staged_α_525_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4240]
                        mov              rdx, qword ptr [rbp + 4248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_525_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_525_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_525_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_525_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_525_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_525_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_525_3:
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_525_21
                        add              rsp, 32
.Lcall_proc_staged_α_525_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_525_2
.Lcall_proc_staged_α_525_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4208], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_525_2
.Lcall_proc_staged_α_525_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_525_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n278_call_proc_staged_β
.Lcall_proc_staged_α_525_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_525_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 4176]
                        mov              rdx, qword ptr [rbp + 4184]
.Lcall_proc_staged_α_525_29:
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                        cmp              al, 104;                             je    n278_call_proc_staged_β
                                                                              jmp   n281_var_α
n280_call_proc_staged_β:
                        mov              r11, 165
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_525_22
                        mov              rax, qword ptr [rbp + 4208]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_525_22
                        mov              rcx, qword ptr [rbp + 4216]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_525_22:
                                                                              jmp   n278_call_proc_staged_β
.Lcall_proc_staged_α_525_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                        cmp              al, 104;                             je    n278_call_proc_staged_β
                                                                              jmp   n281_var_α
.Lcall_proc_staged_α_525_0:
                        .quad            .Lcall_proc_staged_α_525_0_s
.Lcall_proc_staged_α_525_0_s:
                        .string          "digit/1"
                        .size            n280_call_proc_staged_bx, .-n280_call_proc_staged_bx
                        .type            n281_var_bx, @function
n281_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             mov              r11, 166
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 4056], rax;         jmp   n282_call_α
                        .size            n281_var_bx, .-n281_var_bx
                        .type            n282_call_bx, @function
n282_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_call_α:            mov              r11, 167
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4104], rax
                        lea              rdi, [rbp + 4096]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n283_var_α
n282_call_β:            mov              r11, 167;                            jmp   solve$2F8_step
                        .size            n282_call_bx, .-n282_call_bx
                        .type            n283_var_bx, @function
n283_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             mov              r11, 168
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 4072], rax;         jmp   n284_call_α
                        .size            n283_var_bx, .-n283_var_bx
                        .type            n284_call_bx, @function
n284_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_call_α:            mov              r11, 169
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4152], rax
                        lea              rdi, [rbp + 4144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n285_call_α
n284_call_β:            mov              r11, 169;                            jmp   solve$2F8_step
                        .size            n284_call_bx, .-n284_call_bx
                        .type            n285_call_bx, @function
n285_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_call_α:            mov              r11, 170
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4024], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 4008], rax
                        lea              rdi, [rbp + 4000]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                        cmp              al, 104;                             je    n280_call_proc_staged_β
                                                                              jmp   n286_var_α
n285_call_β:            mov              r11, 170;                            jmp   n280_call_proc_staged_β
                        .size            n285_call_bx, .-n285_call_bx
                        .type            n286_var_bx, @function
n286_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:             mov              r11, 171
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 3864], rax;         jmp   n287_call_α
                        .size            n286_var_bx, .-n286_var_bx
                        .type            n287_call_bx, @function
n287_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_call_α:            mov              r11, 172
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3912], rax
                        lea              rdi, [rbp + 3904]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3888], rax
                        mov              qword ptr [rbp + 3896], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n288_var_α
n287_call_β:            mov              r11, 172;                            jmp   solve$2F8_step
                        .size            n287_call_bx, .-n287_call_bx
                        .type            n288_var_bx, @function
n288_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_α:             mov              r11, 173
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 3880], rax;         jmp   n289_call_α
                        .size            n288_var_bx, .-n288_var_bx
                        .type            n289_call_bx, @function
n289_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_call_α:            mov              r11, 174
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3960], rax
                        lea              rdi, [rbp + 3952]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n290_call_α
n289_call_β:            mov              r11, 174;                            jmp   solve$2F8_step
                        .size            n289_call_bx, .-n289_call_bx
                        .type            n290_call_bx, @function
n290_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_call_α:            mov              r11, 175
                        mov              rax, qword ptr [rbp + 3872]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3880]
                        mov              qword ptr [rbp + 3832], rax
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3816], rax
                        lea              rdi, [rbp + 3808]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3792], rax
                        mov              qword ptr [rbp + 3800], rdx
                        cmp              al, 104;                             je    n280_call_proc_staged_β
                                                                              jmp   n291_var_α
n290_call_β:            mov              r11, 175;                            jmp   n280_call_proc_staged_β
                        .size            n290_call_bx, .-n290_call_bx
                        .type            n291_var_bx, @function
n291_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_var_α:             mov              r11, 176
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 3672], rax;         jmp   n292_call_α
                        .size            n291_var_bx, .-n291_var_bx
                        .type            n292_call_bx, @function
n292_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_call_α:            mov              r11, 177
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3720], rax
                        lea              rdi, [rbp + 3712]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n293_var_α
n292_call_β:            mov              r11, 177;                            jmp   solve$2F8_step
                        .size            n292_call_bx, .-n292_call_bx
                        .type            n293_var_bx, @function
n293_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:             mov              r11, 178
                        mov              rax, qword ptr [rbp + 7392]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 7400]
                        mov              qword ptr [rbp + 3688], rax;         jmp   n294_call_α
                        .size            n293_var_bx, .-n293_var_bx
                        .type            n294_call_bx, @function
n294_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:            mov              r11, 179
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3768], rax
                        lea              rdi, [rbp + 3760]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n295_call_α
n294_call_β:            mov              r11, 179;                            jmp   solve$2F8_step
                        .size            n294_call_bx, .-n294_call_bx
                        .type            n295_call_bx, @function
n295_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_call_α:            mov              r11, 180
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3640], rax
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3624], rax
                        lea              rdi, [rbp + 3616]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3600], rax
                        mov              qword ptr [rbp + 3608], rdx
                        cmp              al, 104;                             je    n280_call_proc_staged_β
                                                                              jmp   n296_var_α
n295_call_β:            mov              r11, 180;                            jmp   n280_call_proc_staged_β
                        .size            n295_call_bx, .-n295_call_bx
                        .type            n296_var_bx, @function
n296_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 3480], rax;         jmp   n297_call_α
                        .size            n296_var_bx, .-n296_var_bx
                        .type            n297_call_bx, @function
n297_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_call_α:            mov              r11, 182
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3528], rax
                        lea              rdi, [rbp + 3520]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3504], rax
                        mov              qword ptr [rbp + 3512], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n298_var_α
n297_call_β:            mov              r11, 182;                            jmp   solve$2F8_step
                        .size            n297_call_bx, .-n297_call_bx
                        .type            n298_var_bx, @function
n298_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:             mov              r11, 183
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 3496], rax;         jmp   n299_call_α
                        .size            n298_var_bx, .-n298_var_bx
                        .type            n299_call_bx, @function
n299_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            mov              r11, 184
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3576], rax
                        lea              rdi, [rbp + 3568]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n300_call_α
n299_call_β:            mov              r11, 184;                            jmp   solve$2F8_step
                        .size            n299_call_bx, .-n299_call_bx
                        .type            n300_call_bx, @function
n300_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_call_α:            mov              r11, 185
                        mov              rax, qword ptr [rbp + 3488]
                        mov              qword ptr [rbp + 3440], rax
                        mov              rax, qword ptr [rbp + 3496]
                        mov              qword ptr [rbp + 3448], rax
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3432], rax
                        lea              rdi, [rbp + 3424]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3408], rax
                        mov              qword ptr [rbp + 3416], rdx
                        cmp              al, 104;                             je    n280_call_proc_staged_β
                                                                              jmp   n301_var_α
n300_call_β:            mov              r11, 185;                            jmp   n280_call_proc_staged_β
                        .size            n300_call_bx, .-n300_call_bx
                        .type            n301_var_bx, @function
n301_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:             mov              r11, 186
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 3288], rax;         jmp   n302_call_α
                        .size            n301_var_bx, .-n301_var_bx
                        .type            n302_call_bx, @function
n302_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_call_α:            mov              r11, 187
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3336], rax
                        lea              rdi, [rbp + 3328]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3312], rax
                        mov              qword ptr [rbp + 3320], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n303_var_α
n302_call_β:            mov              r11, 187;                            jmp   solve$2F8_step
                        .size            n302_call_bx, .-n302_call_bx
                        .type            n303_var_bx, @function
n303_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:             mov              r11, 188
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 3304], rax;         jmp   n304_call_α
                        .size            n303_var_bx, .-n303_var_bx
                        .type            n304_call_bx, @function
n304_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_call_α:            mov              r11, 189
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3384], rax
                        lea              rdi, [rbp + 3376]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n305_call_α
n304_call_β:            mov              r11, 189;                            jmp   solve$2F8_step
                        .size            n304_call_bx, .-n304_call_bx
                        .type            n305_call_bx, @function
n305_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_call_α:            mov              r11, 190
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3256], rax
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3240], rax
                        lea              rdi, [rbp + 3232]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              al, 104;                             je    n280_call_proc_staged_β
                                                                              jmp   n306_var_ref_α
n305_call_β:            mov              r11, 190;                            jmp   n280_call_proc_staged_β
                        .size            n305_call_bx, .-n305_call_bx
                        .type            n306_var_ref_bx, @function
n306_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7440]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx;         jmp   n307_var_ref_α
                        .size            n306_var_ref_bx, .-n306_var_ref_bx
                        .type            n307_var_ref_bx, @function
n307_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7376]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx;         jmp   n308_var_ref_α
                        .size            n307_var_ref_bx, .-n307_var_ref_bx
                        .type            n308_var_ref_bx, @function
n308_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7344]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx;         jmp   n309_var_ref_α
                        .size            n308_var_ref_bx, .-n308_var_ref_bx
                        .type            n309_var_ref_bx, @function
n309_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:         mov              r11, 194
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7408]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n310_var_ref_α
                        .size            n309_var_ref_bx, .-n309_var_ref_bx
                        .type            n310_var_ref_bx, @function
n310_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7296]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n311_call_proc_staged_α
                        .size            n310_var_ref_bx, .-n310_var_ref_bx
                        .type            n311_call_proc_staged_bx, @function
n311_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_call_proc_staged_α:
                        mov              r11, 196
                        mov              qword ptr [rbp + 3104], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_572_200
                        mov              rax, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_572_201
.Lcall_proc_staged_α_572_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_572_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_572_202
                        mov              rax, qword ptr [rbp + 3152]
                        mov              rdx, qword ptr [rbp + 3160]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_572_203
.Lcall_proc_staged_α_572_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3152]
                        mov              rdx, qword ptr [rbp + 3160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_572_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_572_204
                        mov              rax, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_572_205
.Lcall_proc_staged_α_572_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_572_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_572_206
                        mov              rax, qword ptr [rbp + 3184]
                        mov              rdx, qword ptr [rbp + 3192]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_572_207
.Lcall_proc_staged_α_572_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 3184]
                        mov              rdx, qword ptr [rbp + 3192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_572_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_572_208
                        mov              rax, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_572_209
.Lcall_proc_staged_α_572_208:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_572_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_572_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_572_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_572_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_572_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_572_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_572_3:
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_572_21
                        add              rsp, 32
.Lcall_proc_staged_α_572_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_572_2
.Lcall_proc_staged_α_572_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3104], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_572_2
.Lcall_proc_staged_α_572_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_572_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n280_call_proc_staged_β
.Lcall_proc_staged_α_572_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_572_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3008]
                        mov              rdx, qword ptr [rbp + 3016]
.Lcall_proc_staged_α_572_29:
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              al, 104;                             je    n280_call_proc_staged_β
                                                                              jmp   n312_var_ref_α
n311_call_proc_staged_β:
                        mov              r11, 196
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_572_22
                        mov              rax, qword ptr [rbp + 3104]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_572_22
                        mov              rcx, qword ptr [rbp + 3112]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_572_22:
                                                                              jmp   n280_call_proc_staged_β
.Lcall_proc_staged_α_572_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              al, 104;                             je    n280_call_proc_staged_β
                                                                              jmp   n312_var_ref_α
.Lcall_proc_staged_α_572_0:
                        .quad            .Lcall_proc_staged_α_572_0_s
.Lcall_proc_staged_α_572_0_s:
                        .string          "sumdigit/5"
                        .size            n311_call_proc_staged_bx, .-n311_call_proc_staged_bx
                        .type            n312_var_ref_bx, @function
n312_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7312]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx;         jmp   n313_call_proc_staged_α
                        .size            n312_var_ref_bx, .-n312_var_ref_bx
                        .type            n313_call_proc_staged_bx, @function
n313_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_call_proc_staged_α:
                        mov              r11, 198
                        mov              qword ptr [rbp + 2960], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_576_200
                        mov              rax, qword ptr [rbp + 2992]
                        mov              rdx, qword ptr [rbp + 3000]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_576_201
.Lcall_proc_staged_α_576_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2992]
                        mov              rdx, qword ptr [rbp + 3000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_576_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_576_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_576_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_576_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_576_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_576_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_576_3:
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_576_21
                        add              rsp, 32
.Lcall_proc_staged_α_576_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_576_2
.Lcall_proc_staged_α_576_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2960], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_576_2
.Lcall_proc_staged_α_576_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_576_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n311_call_proc_staged_β
.Lcall_proc_staged_α_576_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_576_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2928]
                        mov              rdx, qword ptr [rbp + 2936]
.Lcall_proc_staged_α_576_29:
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              al, 104;                             je    n311_call_proc_staged_β
                                                                              jmp   n314_var_α
n313_call_proc_staged_β:
                        mov              r11, 198
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_576_22
                        mov              rax, qword ptr [rbp + 2960]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_576_22
                        mov              rcx, qword ptr [rbp + 2968]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_576_22:
                                                                              jmp   n311_call_proc_staged_β
.Lcall_proc_staged_α_576_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              al, 104;                             je    n311_call_proc_staged_β
                                                                              jmp   n314_var_α
.Lcall_proc_staged_α_576_0:
                        .quad            .Lcall_proc_staged_α_576_0_s
.Lcall_proc_staged_α_576_0_s:
                        .string          "leftdigit/1"
                        .size            n313_call_proc_staged_bx, .-n313_call_proc_staged_bx
                        .type            n314_var_bx, @function
n314_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_var_α:             mov              r11, 199
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n315_call_α
                        .size            n314_var_bx, .-n314_var_bx
                        .type            n315_call_bx, @function
n315_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_call_α:            mov              r11, 200
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n316_var_α
n315_call_β:            mov              r11, 200;                            jmp   solve$2F8_step
                        .size            n315_call_bx, .-n315_call_bx
                        .type            n316_var_bx, @function
n316_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:             mov              r11, 201
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 2824], rax;         jmp   n317_call_α
                        .size            n316_var_bx, .-n316_var_bx
                        .type            n317_call_bx, @function
n317_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:            mov              r11, 202
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2904], rax
                        lea              rdi, [rbp + 2896]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2880], rax
                        mov              qword ptr [rbp + 2888], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n318_call_α
n317_call_β:            mov              r11, 202;                            jmp   solve$2F8_step
                        .size            n317_call_bx, .-n317_call_bx
                        .type            n318_call_bx, @function
n318_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_call_α:            mov              r11, 203
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2768], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2776], rax
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2752], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2760], rax
                        lea              rdi, [rbp + 2752]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2736], rax
                        mov              qword ptr [rbp + 2744], rdx
                        cmp              al, 104;                             je    n313_call_proc_staged_β
                                                                              jmp   n319_var_α
n318_call_β:            mov              r11, 203;                            jmp   n313_call_proc_staged_β
                        .size            n318_call_bx, .-n318_call_bx
                        .type            n319_var_bx, @function
n319_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_var_α:             mov              r11, 204
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 2616], rax;         jmp   n320_call_α
                        .size            n319_var_bx, .-n319_var_bx
                        .type            n320_call_bx, @function
n320_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_call_α:            mov              r11, 205
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2656], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2664], rax
                        lea              rdi, [rbp + 2656]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n321_var_α
n320_call_β:            mov              r11, 205;                            jmp   solve$2F8_step
                        .size            n320_call_bx, .-n320_call_bx
                        .type            n321_var_bx, @function
n321_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_var_α:             mov              r11, 206
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 2632], rax;         jmp   n322_call_α
                        .size            n321_var_bx, .-n321_var_bx
                        .type            n322_call_bx, @function
n322_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_call_α:            mov              r11, 207
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2712], rax
                        lea              rdi, [rbp + 2704]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n323_call_α
n322_call_β:            mov              r11, 207;                            jmp   solve$2F8_step
                        .size            n322_call_bx, .-n322_call_bx
                        .type            n323_call_bx, @function
n323_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_call_α:            mov              r11, 208
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2584], rax
                        mov              rax, qword ptr [rbp + 2608]
                        mov              qword ptr [rbp + 2560], rax
                        mov              rax, qword ptr [rbp + 2616]
                        mov              qword ptr [rbp + 2568], rax
                        lea              rdi, [rbp + 2560]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx
                        cmp              al, 104;                             je    n313_call_proc_staged_β
                                                                              jmp   n324_var_α
n323_call_β:            mov              r11, 208;                            jmp   n313_call_proc_staged_β
                        .size            n323_call_bx, .-n323_call_bx
                        .type            n324_var_bx, @function
n324_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_var_α:             mov              r11, 209
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n325_call_α
                        .size            n324_var_bx, .-n324_var_bx
                        .type            n325_call_bx, @function
n325_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_call_α:            mov              r11, 210
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2464], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2472], rax
                        lea              rdi, [rbp + 2464]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n326_var_α
n325_call_β:            mov              r11, 210;                            jmp   solve$2F8_step
                        .size            n325_call_bx, .-n325_call_bx
                        .type            n326_var_bx, @function
n326_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_var_α:             mov              r11, 211
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 2440], rax;         jmp   n327_call_α
                        .size            n326_var_bx, .-n326_var_bx
                        .type            n327_call_bx, @function
n327_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_call_α:            mov              r11, 212
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2512]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n328_call_α
n327_call_β:            mov              r11, 212;                            jmp   solve$2F8_step
                        .size            n327_call_bx, .-n327_call_bx
                        .type            n328_call_bx, @function
n328_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_call_α:            mov              r11, 213
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2416]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2424]
                        mov              qword ptr [rbp + 2376], rax
                        lea              rdi, [rbp + 2368]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              al, 104;                             je    n313_call_proc_staged_β
                                                                              jmp   n329_var_α
n328_call_β:            mov              r11, 213;                            jmp   n313_call_proc_staged_β
                        .size            n328_call_bx, .-n328_call_bx
                        .type            n329_var_bx, @function
n329_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_var_α:             mov              r11, 214
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 2232], rax;         jmp   n330_call_α
                        .size            n329_var_bx, .-n329_var_bx
                        .type            n330_call_bx, @function
n330_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_call_α:            mov              r11, 215
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2272]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n331_var_α
n330_call_β:            mov              r11, 215;                            jmp   solve$2F8_step
                        .size            n330_call_bx, .-n330_call_bx
                        .type            n331_var_bx, @function
n331_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             mov              r11, 216
                        mov              rax, qword ptr [rbp + 7392]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 7400]
                        mov              qword ptr [rbp + 2248], rax;         jmp   n332_call_α
                        .size            n331_var_bx, .-n331_var_bx
                        .type            n332_call_bx, @function
n332_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_call_α:            mov              r11, 217
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2328], rax
                        lea              rdi, [rbp + 2320]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2304], rax
                        mov              qword ptr [rbp + 2312], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n333_call_α
n332_call_β:            mov              r11, 217;                            jmp   solve$2F8_step
                        .size            n332_call_bx, .-n332_call_bx
                        .type            n333_call_bx, @function
n333_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_call_α:            mov              r11, 218
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2176]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    n313_call_proc_staged_β
                                                                              jmp   n334_var_α
n333_call_β:            mov              r11, 218;                            jmp   n313_call_proc_staged_β
                        .size            n333_call_bx, .-n333_call_bx
                        .type            n334_var_bx, @function
n334_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_var_α:             mov              r11, 219
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n335_call_α
                        .size            n334_var_bx, .-n334_var_bx
                        .type            n335_call_bx, @function
n335_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_call_α:            mov              r11, 220
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n336_var_α
n335_call_β:            mov              r11, 220;                            jmp   solve$2F8_step
                        .size            n335_call_bx, .-n335_call_bx
                        .type            n336_var_bx, @function
n336_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:             mov              r11, 221
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n337_call_α
                        .size            n336_var_bx, .-n336_var_bx
                        .type            n337_call_bx, @function
n337_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_call_α:            mov              r11, 222
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2136], rax
                        lea              rdi, [rbp + 2128]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n338_call_α
n337_call_β:            mov              r11, 222;                            jmp   solve$2F8_step
                        .size            n337_call_bx, .-n337_call_bx
                        .type            n338_call_bx, @function
n338_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_call_α:            mov              r11, 223
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1984]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    n313_call_proc_staged_β
                                                                              jmp   n339_var_α
n338_call_β:            mov              r11, 223;                            jmp   n313_call_proc_staged_β
                        .size            n338_call_bx, .-n338_call_bx
                        .type            n339_var_bx, @function
n339_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_var_α:             mov              r11, 224
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n340_call_α
                        .size            n339_var_bx, .-n339_var_bx
                        .type            n340_call_bx, @function
n340_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_call_α:            mov              r11, 225
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n341_var_α
n340_call_β:            mov              r11, 225;                            jmp   solve$2F8_step
                        .size            n340_call_bx, .-n340_call_bx
                        .type            n341_var_bx, @function
n341_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_var_α:             mov              r11, 226
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n342_call_α
                        .size            n341_var_bx, .-n341_var_bx
                        .type            n342_call_bx, @function
n342_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_call_α:            mov              r11, 227
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1944], rax
                        lea              rdi, [rbp + 1936]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n343_call_α
n342_call_β:            mov              r11, 227;                            jmp   solve$2F8_step
                        .size            n342_call_bx, .-n342_call_bx
                        .type            n343_call_bx, @function
n343_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_call_α:            mov              r11, 228
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 1816], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1800], rax
                        lea              rdi, [rbp + 1792]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
                        cmp              al, 104;                             je    n313_call_proc_staged_β
                                                                              jmp   n344_var_ref_α
n343_call_β:            mov              r11, 228;                            jmp   n313_call_proc_staged_β
                        .size            n343_call_bx, .-n343_call_bx
                        .type            n344_var_ref_bx, @function
n344_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_var_ref_α:         mov              r11, 229
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7328]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n345_call_proc_staged_α
                        .size            n344_var_ref_bx, .-n344_var_ref_bx
                        .type            n345_call_proc_staged_bx, @function
n345_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_call_proc_staged_α:
                        mov              r11, 230
                        mov              qword ptr [rbp + 1728], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_622_200
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_622_201
.Lcall_proc_staged_α_622_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_622_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_622_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_622_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_622_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_622_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_622_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_622_3:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_622_21
                        add              rsp, 32
.Lcall_proc_staged_α_622_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_622_2
.Lcall_proc_staged_α_622_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1728], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_622_2
.Lcall_proc_staged_α_622_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_622_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n313_call_proc_staged_β
.Lcall_proc_staged_α_622_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_622_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1696]
                        mov              rdx, qword ptr [rbp + 1704]
.Lcall_proc_staged_α_622_29:
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              al, 104;                             je    n313_call_proc_staged_β
                                                                              jmp   n346_var_α
n345_call_proc_staged_β:
                        mov              r11, 230
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_622_22
                        mov              rax, qword ptr [rbp + 1728]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_622_22
                        mov              rcx, qword ptr [rbp + 1736]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_622_22:
                                                                              jmp   n313_call_proc_staged_β
.Lcall_proc_staged_α_622_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              al, 104;                             je    n313_call_proc_staged_β
                                                                              jmp   n346_var_α
.Lcall_proc_staged_α_622_0:
                        .quad            .Lcall_proc_staged_α_622_0_s
.Lcall_proc_staged_α_622_0_s:
                        .string          "leftdigit/1"
                        .size            n345_call_proc_staged_bx, .-n345_call_proc_staged_bx
                        .type            n346_var_bx, @function
n346_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:             mov              r11, 231
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n347_call_α
                        .size            n346_var_bx, .-n346_var_bx
                        .type            n347_call_bx, @function
n347_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_call_α:            mov              r11, 232
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1624], rax
                        lea              rdi, [rbp + 1616]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n348_var_α
n347_call_β:            mov              r11, 232;                            jmp   solve$2F8_step
                        .size            n347_call_bx, .-n347_call_bx
                        .type            n348_var_bx, @function
n348_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:             mov              r11, 233
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n349_call_α
                        .size            n348_var_bx, .-n348_var_bx
                        .type            n349_call_bx, @function
n349_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_call_α:            mov              r11, 234
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1672], rax
                        lea              rdi, [rbp + 1664]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n350_call_α
n349_call_β:            mov              r11, 234;                            jmp   solve$2F8_step
                        .size            n349_call_bx, .-n349_call_bx
                        .type            n350_call_bx, @function
n350_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_call_α:            mov              r11, 235
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              al, 104;                             je    n345_call_proc_staged_β
                                                                              jmp   n351_var_α
n350_call_β:            mov              r11, 235;                            jmp   n345_call_proc_staged_β
                        .size            n350_call_bx, .-n350_call_bx
                        .type            n351_var_bx, @function
n351_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:             mov              r11, 236
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n352_call_α
                        .size            n351_var_bx, .-n351_var_bx
                        .type            n352_call_bx, @function
n352_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_α:            mov              r11, 237
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1432], rax
                        lea              rdi, [rbp + 1424]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n353_var_α
n352_call_β:            mov              r11, 237;                            jmp   solve$2F8_step
                        .size            n352_call_bx, .-n352_call_bx
                        .type            n353_var_bx, @function
n353_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_var_α:             mov              r11, 238
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n354_call_α
                        .size            n353_var_bx, .-n353_var_bx
                        .type            n354_call_bx, @function
n354_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_call_α:            mov              r11, 239
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n355_call_α
n354_call_β:            mov              r11, 239;                            jmp   solve$2F8_step
                        .size            n354_call_bx, .-n354_call_bx
                        .type            n355_call_bx, @function
n355_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_call_α:            mov              r11, 240
                        mov              rax, qword ptr [rbp + 1392]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1400]
                        mov              qword ptr [rbp + 1352], rax
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1328], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1336], rax
                        lea              rdi, [rbp + 1328]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx
                        cmp              al, 104;                             je    n345_call_proc_staged_β
                                                                              jmp   n356_var_α
n355_call_β:            mov              r11, 240;                            jmp   n345_call_proc_staged_β
                        .size            n355_call_bx, .-n355_call_bx
                        .type            n356_var_bx, @function
n356_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_var_α:             mov              r11, 241
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n357_call_α
                        .size            n356_var_bx, .-n356_var_bx
                        .type            n357_call_bx, @function
n357_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_call_α:            mov              r11, 242
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n358_var_α
n357_call_β:            mov              r11, 242;                            jmp   solve$2F8_step
                        .size            n357_call_bx, .-n357_call_bx
                        .type            n358_var_bx, @function
n358_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_var_α:             mov              r11, 243
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n359_call_α
                        .size            n358_var_bx, .-n358_var_bx
                        .type            n359_call_bx, @function
n359_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_call_α:            mov              r11, 244
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n360_call_α
n359_call_β:            mov              r11, 244;                            jmp   solve$2F8_step
                        .size            n359_call_bx, .-n359_call_bx
                        .type            n360_call_bx, @function
n360_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_α:            mov              r11, 245
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              al, 104;                             je    n345_call_proc_staged_β
                                                                              jmp   n361_var_α
n360_call_β:            mov              r11, 245;                            jmp   n345_call_proc_staged_β
                        .size            n360_call_bx, .-n360_call_bx
                        .type            n361_var_bx, @function
n361_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_var_α:             mov              r11, 246
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n362_call_α
                        .size            n361_var_bx, .-n361_var_bx
                        .type            n362_call_bx, @function
n362_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_call_α:            mov              r11, 247
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n363_var_α
n362_call_β:            mov              r11, 247;                            jmp   solve$2F8_step
                        .size            n362_call_bx, .-n362_call_bx
                        .type            n363_var_bx, @function
n363_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_var_α:             mov              r11, 248
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n364_call_α
                        .size            n363_var_bx, .-n363_var_bx
                        .type            n364_call_bx, @function
n364_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_call_α:            mov              r11, 249
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1088]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n365_call_α
n364_call_β:            mov              r11, 249;                            jmp   solve$2F8_step
                        .size            n364_call_bx, .-n364_call_bx
                        .type            n365_call_bx, @function
n365_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_call_α:            mov              r11, 250
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    n345_call_proc_staged_β
                                                                              jmp   n366_var_α
n365_call_β:            mov              r11, 250;                            jmp   n345_call_proc_staged_β
                        .size            n365_call_bx, .-n365_call_bx
                        .type            n366_var_bx, @function
n366_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_var_α:             mov              r11, 251
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 808], rax;          jmp   n367_call_α
                        .size            n366_var_bx, .-n366_var_bx
                        .type            n367_call_bx, @function
n367_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_call_α:            mov              r11, 252
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n368_var_α
n367_call_β:            mov              r11, 252;                            jmp   solve$2F8_step
                        .size            n367_call_bx, .-n367_call_bx
                        .type            n368_var_bx, @function
n368_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:             mov              r11, 253
                        mov              rax, qword ptr [rbp + 7392]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 7400]
                        mov              qword ptr [rbp + 824], rax;          jmp   n369_call_α
                        .size            n368_var_bx, .-n368_var_bx
                        .type            n369_call_bx, @function
n369_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_call_α:            mov              r11, 254
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n370_call_α
n369_call_β:            mov              r11, 254;                            jmp   solve$2F8_step
                        .size            n369_call_bx, .-n369_call_bx
                        .type            n370_call_bx, @function
n370_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_call_α:            mov              r11, 255
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 760], rax
                        lea              rdi, [rbp + 752]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    n345_call_proc_staged_β
                                                                              jmp   n371_var_α
n370_call_β:            mov              r11, 255;                            jmp   n345_call_proc_staged_β
                        .size            n370_call_bx, .-n370_call_bx
                        .type            n371_var_bx, @function
n371_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_var_α:             mov              r11, 256
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 616], rax;          jmp   n372_call_α
                        .size            n371_var_bx, .-n371_var_bx
                        .type            n372_call_bx, @function
n372_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            mov              r11, 257
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n373_var_α
n372_call_β:            mov              r11, 257;                            jmp   solve$2F8_step
                        .size            n372_call_bx, .-n372_call_bx
                        .type            n373_var_bx, @function
n373_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:             mov              r11, 258
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 632], rax;          jmp   n374_call_α
                        .size            n373_var_bx, .-n373_var_bx
                        .type            n374_call_bx, @function
n374_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            mov              r11, 259
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n375_call_α
n374_call_β:            mov              r11, 259;                            jmp   solve$2F8_step
                        .size            n374_call_bx, .-n374_call_bx
                        .type            n375_call_bx, @function
n375_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:            mov              r11, 260
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 584], rax
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 568], rax
                        lea              rdi, [rbp + 560]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    n345_call_proc_staged_β
                                                                              jmp   n376_var_α
n375_call_β:            mov              r11, 260;                            jmp   n345_call_proc_staged_β
                        .size            n375_call_bx, .-n375_call_bx
                        .type            n376_var_bx, @function
n376_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_var_α:             mov              r11, 261
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 424], rax;          jmp   n377_call_α
                        .size            n376_var_bx, .-n376_var_bx
                        .type            n377_call_bx, @function
n377_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_call_α:            mov              r11, 262
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n378_var_α
n377_call_β:            mov              r11, 262;                            jmp   solve$2F8_step
                        .size            n377_call_bx, .-n377_call_bx
                        .type            n378_var_bx, @function
n378_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:             mov              r11, 263
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 440], rax;          jmp   n379_call_α
                        .size            n378_var_bx, .-n378_var_bx
                        .type            n379_call_bx, @function
n379_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_call_α:            mov              r11, 264
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n380_call_α
n379_call_β:            mov              r11, 264;                            jmp   solve$2F8_step
                        .size            n379_call_bx, .-n379_call_bx
                        .type            n380_call_bx, @function
n380_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_call_α:            mov              r11, 265
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    n345_call_proc_staged_β
                                                                              jmp   n381_var_ref_α
n380_call_β:            mov              r11, 265;                            jmp   n345_call_proc_staged_β
                        .size            n380_call_bx, .-n380_call_bx
                        .type            n381_var_ref_bx, @function
n381_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:         mov              r11, 266
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7296]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n382_var_ref_α
                        .size            n381_var_ref_bx, .-n381_var_ref_bx
                        .type            n382_var_ref_bx, @function
n382_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_var_ref_α:         mov              r11, 267
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7312]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n383_var_ref_α
                        .size            n382_var_ref_bx, .-n382_var_ref_bx
                        .type            n383_var_ref_bx, @function
n383_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_var_ref_α:         mov              r11, 268
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7328]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n384_var_ref_α
                        .size            n383_var_ref_bx, .-n383_var_ref_bx
                        .type            n384_var_ref_bx, @function
n384_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_var_ref_α:         mov              r11, 269
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7344]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n385_var_ref_α
                        .size            n384_var_ref_bx, .-n384_var_ref_bx
                        .type            n385_var_ref_bx, @function
n385_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_var_ref_α:         mov              r11, 270
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7328]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n386_call_proc_staged_α
                        .size            n385_var_ref_bx, .-n385_var_ref_bx
                        .type            n386_call_proc_staged_bx, @function
n386_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_call_proc_staged_α:
                        mov              r11, 271
                        mov              qword ptr [rbp + 240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_683_200
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_683_201
.Lcall_proc_staged_α_683_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_683_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_683_202
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_683_203
.Lcall_proc_staged_α_683_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_683_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_683_204
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_683_205
.Lcall_proc_staged_α_683_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_683_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_683_206
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_683_207
.Lcall_proc_staged_α_683_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_683_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_683_208
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_683_209
.Lcall_proc_staged_α_683_208:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_683_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_683_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_683_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 5
                        mov              rsi, rbp
                        lea              rdx, [rbp + 7552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tail_args_safe@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              r10d, eax
                        pop              rax
                        add              rsp, 8
                        test             r10, r10;                            je    .Lcall_proc_staged_α_683_99
                        mov              r10, qword ptr [rbp + 7512]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_683_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_683_99
                        mov              rcx, qword ptr [rbp + 7528]
                        mov              rdx, qword ptr [rbp + 7536]
                        lea              rsp, [rbp + 7552]
                        mov              rbp, qword ptr [rbp + 7544];         jmp   rax
.Lcall_proc_staged_α_683_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_683_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_683_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_683_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_683_3:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_683_21
                        add              rsp, 32
.Lcall_proc_staged_α_683_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_683_2
.Lcall_proc_staged_α_683_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 240], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_683_2
.Lcall_proc_staged_α_683_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_683_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n345_call_proc_staged_β
.Lcall_proc_staged_α_683_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_683_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
.Lcall_proc_staged_α_683_29:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n345_call_proc_staged_β
                                                                              jmp   solve$2F8_ret0
n386_call_proc_staged_β:
                        mov              r11, 271
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_683_22
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_683_22
                        mov              rcx, qword ptr [rbp + 248]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_683_22:
                                                                              jmp   n345_call_proc_staged_β
.Lcall_proc_staged_α_683_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n345_call_proc_staged_β
                                                                              jmp   solve$2F8_ret0
.Lcall_proc_staged_α_683_0:
                        .quad            .Lcall_proc_staged_α_683_0_s
.Lcall_proc_staged_α_683_0_s:
                        .string          "sumdigit/5"
                        .size            n386_call_proc_staged_bx, .-n386_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_ret0:
                        lea              rax, [rip + n386_call_proc_staged_β]
                        mov              qword ptr [rbp + 7504], rax
                                                                              jmp   solve$2F8_γ
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_step:
                        mov              rdi, qword ptr [rbp + 7488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7504], 0
                        mov              qword ptr [rbp + 7312], 0
                        mov              qword ptr [rbp + 7320], 0
                        mov              qword ptr [rbp + 7376], 0
                        mov              qword ptr [rbp + 7384], 0
                        mov              qword ptr [rbp + 7408], 0
                        mov              qword ptr [rbp + 7416], 0
                        mov              qword ptr [rbp + 7360], 0
                        mov              qword ptr [rbp + 7368], 0
                        mov              qword ptr [rbp + 7328], 0
                        mov              qword ptr [rbp + 7336], 0
                        mov              qword ptr [rbp + 7344], 0
                        mov              qword ptr [rbp + 7352], 0
                        mov              qword ptr [rbp + 7424], 0
                        mov              qword ptr [rbp + 7432], 0
                        mov              qword ptr [rbp + 7392], 0
                        mov              qword ptr [rbp + 7400], 0
                        mov              qword ptr [rbp + 7456], 0
                        mov              qword ptr [rbp + 7464], 0
                        mov              qword ptr [rbp + 7440], 0
                        mov              qword ptr [rbp + 7448], 0
                        mov              qword ptr [rbp + 7296], 0
                        mov              qword ptr [rbp + 7304], 0
                        mov              rax, qword ptr [rbp + 7496]
                        test             rax, rax
                                                                              je    solve$2F8_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_β:
                        test             r15, r15
                                                                              jne   solve$2F8_ω
                        mov              rax, qword ptr [rbp + 7504]
                        mov              qword ptr [rbp + 7504], 0
                        test             rax, rax
                                                                              jne   solve$2F8_βres
                                                                              jmp   solve$2F8_step
solve$2F8_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 7528]
                        mov              rax, qword ptr [rbp + 7512]
                        cmp              r13, rax;                            je    solve$2F8_altdet
                        lea              rdx, [rip + solve$2F8_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 7544];         jmp   rcx
solve$2F8_altdet:       xor              eax, eax
                        lea              rsp, [rbp + 7552]
                        mov              rbp, qword ptr [rbp + 7544];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_ω:
                        mov              rcx, qword ptr [rbp + 7536]
                        mov              r13, qword ptr [rbp + 7512]
                        lea              rsp, [rbp + 7552]
                        mov              rbp, qword ptr [rbp + 7544];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__leftdigit$2F1:
                        sub              rsp, 976
                        mov              qword ptr [rsp + 952], rcx
                        mov              qword ptr [rsp + 960], rdx
                        mov              qword ptr [rsp + 968], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 976]
                        mov              qword ptr [rsp + 944], rax
                        mov              qword ptr [rsp + 936], r13
                        mov              qword ptr [rsp + 928], 0
                        mov              qword ptr [rsp + 920], 0
                        mov              qword ptr [rsp + 912], r12
                        lea              rax, [rip + leftdigit$2F1_alt1]
                        mov              qword ptr [rsp + 920], rax
                        lea              rdi, [rsp + 912]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 896
                        mov              edx, 912
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
leftdigit$2F1_α_body:
                        .type            n684_var_ref_bx, @function
n684_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n684_var_ref_α:         mov              r11, 272
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n685_lit_integer_α
                        .size            n684_var_ref_bx, .-n684_var_ref_bx
                        .type            n685_lit_integer_bx, @function
n685_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n685_lit_integer_α:     mov              r11, 273
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_713_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n686_call_α
.Llit_integer_α_713_0:  .quad            1
                        .size            n685_lit_integer_bx, .-n685_lit_integer_bx
                        .type            n686_call_bx, @function
n686_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n686_call_α:            mov              r11, 274
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 104]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_step
                                                                              jmp   leftdigit$2F1_γ
n686_call_β:            mov              r11, 274;                            jmp   leftdigit$2F1_step
                        .size            n686_call_bx, .-n686_call_bx
                        .type            n687_var_ref_bx, @function
n687_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n687_var_ref_α:         mov              r11, 275
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n688_lit_integer_α
                        .size            n687_var_ref_bx, .-n687_var_ref_bx
                        .type            n688_lit_integer_bx, @function
n688_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n688_lit_integer_α:     mov              r11, 276
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_717_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n689_call_α
.Llit_integer_α_717_0:  .quad            2
                        .size            n688_lit_integer_bx, .-n688_lit_integer_bx
                        .type            n689_call_bx, @function
n689_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n689_call_α:            mov              r11, 277
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 144], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 152], rax
                        lea              rdi, [rbp + 144]
                        movabs           rsi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_step
                                                                              jmp   leftdigit$2F1_γ
n689_call_β:            mov              r11, 277;                            jmp   leftdigit$2F1_step
                        .size            n689_call_bx, .-n689_call_bx
                        .type            n690_var_ref_bx, @function
n690_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n690_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n691_lit_integer_α
                        .size            n690_var_ref_bx, .-n690_var_ref_bx
                        .type            n691_lit_integer_bx, @function
n691_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n691_lit_integer_α:     mov              r11, 279
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_721_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n692_call_α
.Llit_integer_α_721_0:  .quad            3
                        .size            n691_lit_integer_bx, .-n691_lit_integer_bx
                        .type            n692_call_bx, @function
n692_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n692_call_α:            mov              r11, 280
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        movabs           rsi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_step
                                                                              jmp   leftdigit$2F1_γ
n692_call_β:            mov              r11, 280;                            jmp   leftdigit$2F1_step
                        .size            n692_call_bx, .-n692_call_bx
                        .type            n693_var_ref_bx, @function
n693_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n693_var_ref_α:         mov              r11, 281
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n694_lit_integer_α
                        .size            n693_var_ref_bx, .-n693_var_ref_bx
                        .type            n694_lit_integer_bx, @function
n694_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n694_lit_integer_α:     mov              r11, 282
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_725_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n695_call_α
.Llit_integer_α_725_0:  .quad            4
                        .size            n694_lit_integer_bx, .-n694_lit_integer_bx
                        .type            n695_call_bx, @function
n695_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n695_call_α:            mov              r11, 283
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        movabs           rsi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_step
                                                                              jmp   leftdigit$2F1_γ
n695_call_β:            mov              r11, 283;                            jmp   leftdigit$2F1_step
                        .size            n695_call_bx, .-n695_call_bx
                        .type            n696_var_ref_bx, @function
n696_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n696_var_ref_α:         mov              r11, 284
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n697_lit_integer_α
                        .size            n696_var_ref_bx, .-n696_var_ref_bx
                        .type            n697_lit_integer_bx, @function
n697_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_integer_α:     mov              r11, 285
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_729_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n698_call_α
.Llit_integer_α_729_0:  .quad            5
                        .size            n697_lit_integer_bx, .-n697_lit_integer_bx
                        .type            n698_call_bx, @function
n698_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n698_call_α:            mov              r11, 286
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        movabs           rsi, 5
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_step
                                                                              jmp   leftdigit$2F1_γ
n698_call_β:            mov              r11, 286;                            jmp   leftdigit$2F1_step
                        .size            n698_call_bx, .-n698_call_bx
                        .type            n699_var_ref_bx, @function
n699_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n699_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n700_lit_integer_α
                        .size            n699_var_ref_bx, .-n699_var_ref_bx
                        .type            n700_lit_integer_bx, @function
n700_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_integer_α:     mov              r11, 288
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_733_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n701_call_α
.Llit_integer_α_733_0:  .quad            6
                        .size            n700_lit_integer_bx, .-n700_lit_integer_bx
                        .type            n701_call_bx, @function
n701_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n701_call_α:            mov              r11, 289
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        movabs           rsi, 6
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_step
                                                                              jmp   leftdigit$2F1_γ
n701_call_β:            mov              r11, 289;                            jmp   leftdigit$2F1_step
                        .size            n701_call_bx, .-n701_call_bx
                        .type            n702_var_ref_bx, @function
n702_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n702_var_ref_α:         mov              r11, 290
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n703_lit_integer_α
                        .size            n702_var_ref_bx, .-n702_var_ref_bx
                        .type            n703_lit_integer_bx, @function
n703_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n703_lit_integer_α:     mov              r11, 291
                        mov              qword ptr [rbp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_737_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n704_call_α
.Llit_integer_α_737_0:  .quad            7
                        .size            n703_lit_integer_bx, .-n703_lit_integer_bx
                        .type            n704_call_bx, @function
n704_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n704_call_α:            mov              r11, 292
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        movabs           rsi, 7
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_step
                                                                              jmp   leftdigit$2F1_γ
n704_call_β:            mov              r11, 292;                            jmp   leftdigit$2F1_step
                        .size            n704_call_bx, .-n704_call_bx
                        .type            n705_var_ref_bx, @function
n705_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n705_var_ref_α:         mov              r11, 293
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n706_lit_integer_α
                        .size            n705_var_ref_bx, .-n705_var_ref_bx
                        .type            n706_lit_integer_bx, @function
n706_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n706_lit_integer_α:     mov              r11, 294
                        mov              qword ptr [rbp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_741_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n707_call_α
.Llit_integer_α_741_0:  .quad            8
                        .size            n706_lit_integer_bx, .-n706_lit_integer_bx
                        .type            n707_call_bx, @function
n707_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n707_call_α:            mov              r11, 295
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        movabs           rsi, 8
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_step
                                                                              jmp   leftdigit$2F1_γ
n707_call_β:            mov              r11, 295;                            jmp   leftdigit$2F1_step
                        .size            n707_call_bx, .-n707_call_bx
                        .type            n708_var_ref_bx, @function
n708_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n708_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n709_lit_integer_α
                        .size            n708_var_ref_bx, .-n708_var_ref_bx
                        .type            n709_lit_integer_bx, @function
n709_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n709_lit_integer_α:     mov              r11, 297
                        mov              qword ptr [rbp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_745_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n710_call_α
.Llit_integer_α_745_0:  .quad            9
                        .size            n709_lit_integer_bx, .-n709_lit_integer_bx
                        .type            n710_call_bx, @function
n710_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n710_call_α:            mov              r11, 298
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        movabs           rsi, 9
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              al, 104;                             je    leftdigit$2F1_step
                                                                              jmp   leftdigit$2F1_γ
n710_call_β:            mov              r11, 298;                            jmp   leftdigit$2F1_step
                        .size            n710_call_bx, .-n710_call_bx
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_step:
                        mov              rdi, qword ptr [rbp + 912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], 0
                        mov              rax, qword ptr [rbp + 920]
                        test             rax, rax
                                                                              je    leftdigit$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt1:
                        lea              rax, [rip + leftdigit$2F1_alt2]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n687_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt2:
                        lea              rax, [rip + leftdigit$2F1_alt3]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n690_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt3:
                        lea              rax, [rip + leftdigit$2F1_alt4]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n693_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt4:
                        lea              rax, [rip + leftdigit$2F1_alt5]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n696_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt5:
                        lea              rax, [rip + leftdigit$2F1_alt6]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n699_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt6:
                        lea              rax, [rip + leftdigit$2F1_alt7]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n702_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt7:
                        lea              rax, [rip + leftdigit$2F1_alt8]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n705_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt8:
                        xor              eax, eax
                        mov              qword ptr [rbp + 920], rax
                        mov              r13, qword ptr [rbp + 936]
                                                                              jmp   n708_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_β:
                        test             r15, r15
                                                                              jne   leftdigit$2F1_ω
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 928], 0
                        test             rax, rax
                                                                              jne   leftdigit$2F1_βres
                                                                              jmp   leftdigit$2F1_step
leftdigit$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 952]
                        mov              rax, qword ptr [rbp + 936]
                        cmp              r13, rax;                            je    leftdigit$2F1_altdet
                        lea              rdx, [rip + leftdigit$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 968];          jmp   rcx
leftdigit$2F1_altdet:   xor              eax, eax
                        lea              rsp, [rbp + 976]
                        mov              rbp, qword ptr [rbp + 968];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_ω:
                        mov              rcx, qword ptr [rbp + 960]
                        mov              r13, qword ptr [rbp + 936]
                        lea              rsp, [rbp + 976]
                        mov              rbp, qword ptr [rbp + 968];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 2960
                        mov              qword ptr [rsp + 2936], rcx
                        mov              qword ptr [rsp + 2944], rdx
                        mov              qword ptr [rsp + 2952], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 2960]
                        mov              qword ptr [rsp + 2928], rax
                        mov              qword ptr [rsp + 2920], r13
                        mov              qword ptr [rsp + 2912], 0
                        mov              qword ptr [rsp + 2904], 0
                        mov              qword ptr [rsp + 2896], r12
                        mov              rdi, rsp
                        mov              esi, 2640
                        mov              edx, 2896
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n747_lit_string_bx, @function
n747_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n747_lit_string_α:      mov              r11, 299
                        mov              qword ptr [rbp + 2624], 2            # result
                        mov              dword ptr [rbp + 2628], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_749_0]
                        mov              qword ptr [rbp + 2632], rax;         jmp   n748_call_α
.Llit_string_α_749_0:   .quad            .Llit_string_α_749_0_s
.Llit_string_α_749_0_s: .string          "wall_us/1"
                        .size            n747_lit_string_bx, .-n747_lit_string_bx
                        .type            n748_call_bx, @function
n748_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n748_call_α:            mov              r11, 300
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2592]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   main$2F0_step
n748_call_β:            mov              r11, 300;                            jmp   main$2F0_step
                        .size            n748_call_bx, .-n748_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 2896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2912], 0
                        mov              qword ptr [rbp + 2720], 0
                        mov              qword ptr [rbp + 2728], 0
                        mov              qword ptr [rbp + 2688], 0
                        mov              qword ptr [rbp + 2696], 0
                        mov              qword ptr [rbp + 2864], 0
                        mov              qword ptr [rbp + 2872], 0
                        mov              qword ptr [rbp + 2848], 0
                        mov              qword ptr [rbp + 2856], 0
                        mov              qword ptr [rbp + 2832], 0
                        mov              qword ptr [rbp + 2840], 0
                        mov              qword ptr [rbp + 2816], 0
                        mov              qword ptr [rbp + 2824], 0
                        mov              qword ptr [rbp + 2800], 0
                        mov              qword ptr [rbp + 2808], 0
                        mov              qword ptr [rbp + 2784], 0
                        mov              qword ptr [rbp + 2792], 0
                        mov              qword ptr [rbp + 2768], 0
                        mov              qword ptr [rbp + 2776], 0
                        mov              qword ptr [rbp + 2752], 0
                        mov              qword ptr [rbp + 2760], 0
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              qword ptr [rbp + 2704], 0
                        mov              qword ptr [rbp + 2712], 0
                        mov              qword ptr [rbp + 2672], 0
                        mov              qword ptr [rbp + 2680], 0
                        mov              qword ptr [rbp + 2656], 0
                        mov              qword ptr [rbp + 2664], 0
                        mov              qword ptr [rbp + 2640], 0
                        mov              qword ptr [rbp + 2648], 0
                        mov              rax, qword ptr [rbp + 2904]
                        test             rax, rax
                                                                              je    main$2F0_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_β:
                        test             r15, r15
                                                                              jne   main$2F0_ω
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2912], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2936]
                        mov              rax, qword ptr [rbp + 2920]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 2952];         jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 2960]
                        mov              rbp, qword ptr [rbp + 2952];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 2944]
                        mov              r13, qword ptr [rbp + 2920]
                        lea              rsp, [rbp + 2960]
                        mov              rbp, qword ptr [rbp + 2952];         jmp   rcx
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        mov              rdi, qword ptr [rsp]
                        add              rdi, 8
                        mov              esi, dword ptr [rsp + 8]
                        sub              esi, 1
                        call             rt_main_args_stage@PLT
                        call             rt_gcheap_warmup@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            call             rt_pl_root_omega@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        lea              rdi, [rsp + 64]
                        call             rt_pl_quad_seed@PLT
                        lea              rax, [rsp + 128]
                        mov              qword ptr [rsp + 96], rax
                        mov              qword ptr [rsp + 88], r13
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 64], r12
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
main_α_body:
                        .type            n751_call_proc_staged_bx, @function
n751_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n751_call_proc_staged_α:
                        mov              r11, 301
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_753_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_753_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_753_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_753_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_753_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_753_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_753_21
                        add              rsp, 32
.Lcall_proc_staged_α_753_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_753_2
.Lcall_proc_staged_α_753_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_753_2
.Lcall_proc_staged_α_753_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_753_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_753_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_753_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 0]
                        mov              rdx, qword ptr [rbp + 8]
.Lcall_proc_staged_α_753_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n751_call_proc_staged_β:
                        mov              r11, 301
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_753_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_753_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_753_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_753_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_753_0:
                        .quad            .Lcall_proc_staged_α_753_0_s
.Lcall_proc_staged_α_753_0_s:
                        .string          "main/0"
                        .size            n751_call_proc_staged_bx, .-n751_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
main_step:
                        mov              rdi, qword ptr [rbp + 64]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], 0
                        mov              rax, qword ptr [rbp + 72]
                        test             rax, rax
                                                                              je    main_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main_β:
                        test             r15, r15
                                                                              jne   main_ω
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 80], 0
                        test             rax, rax
                                                                              jne   main_βres
                                                                              jmp   main_step
main_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 104]
                        xor              eax, eax
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main_ω:
                        mov              rcx, qword ptr [rbp + 112]
                        mov              r13, qword ptr [rbp + 88]
                        lea              rsp, [rbp + 128]
                        mov              rbp, qword ptr [rbp + 120];          jmp   rcx
module_init:
                        sub              rsp, 8
                        .section         .rodata
.Lstartup_pname0:       .string          "sumdigit/5"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__sumdigit$2F5
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            5
                        .long            0
                        .long            1776
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "digit/1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__digit$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            992
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "solve/8"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__solve$2F8
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            8
                        .long            0
                        .long            7472
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "leftdigit/1"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__leftdigit$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            896
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "main/0"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__main$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            2880
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
