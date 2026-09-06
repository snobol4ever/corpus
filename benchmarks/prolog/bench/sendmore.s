                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sumdigit$2F5:
                        sub              rsp, 2144
                        mov              qword ptr [rsp + 2120], rcx
                        mov              qword ptr [rsp + 2128], rdx
                        mov              qword ptr [rsp + 2136], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 2144]
                        mov              qword ptr [rsp + 2112], rax
                        mov              qword ptr [rsp + 2104], r13
                        mov              qword ptr [rsp + 2096], 0
                        mov              qword ptr [rsp + 2088], 0
                        mov              qword ptr [rsp + 2080], r12
                        mov              rdi, rsp
                        mov              esi, 1968
                        mov              edx, 2080
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
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n1_var_ref_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2016]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n2_call_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1896], rax
                        lea              rdi, [rbp + 1888]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx
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
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n4_var_ref_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_var_ref_bx, @function
n4_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2032]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n5_call_α
                        .size            n4_var_ref_bx, .-n4_var_ref_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              mov              r11, 6
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1776], rax
                        mov              qword ptr [rbp + 1784], rdx
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
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n7_var_ref_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2048]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n8_call_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_call_bx, @function
n8_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              mov              r11, 9
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1696]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
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
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n10_var_ref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1984]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx;         jmp   n11_call_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_call_bx, @function
n11_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:             mov              r11, 12
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
                                                                              jmp   n12_var_ref_α
n11_call_β:             mov              r11, 12;                             jmp   sumdigit$2F5_step
                        .size            n11_call_bx, .-n11_call_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 1552], rax
                        mov              qword ptr [rbp + 1560], rdx;         jmp   n13_var_ref_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1968]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx;         jmp   n14_call_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_call_bx, @function
n14_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             mov              r11, 15
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
                                                                              jmp   n15_var_ref_α
n14_call_β:             mov              r11, 15;                             jmp   sumdigit$2F5_step
                        .size            n14_call_bx, .-n14_call_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2000]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n16_var_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_var_bx, @function
n16_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n17_call_α
                        .size            n16_var_bx, .-n16_var_bx
                        .type            n17_call_bx, @function
n17_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             mov              r11, 18
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1208]
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
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n18_var_α
n17_call_β:             mov              r11, 18;                             jmp   sumdigit$2F5_step
                        .size            n17_call_bx, .-n17_call_bx
                        .type            n18_var_bx, @function
n18_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              r11, 19
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n19_call_α
                        .size            n18_var_bx, .-n18_var_bx
                        .type            n19_call_bx, @function
n19_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_α:             mov              r11, 20
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1296]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n20_call_α
n19_call_β:             mov              r11, 20;                             jmp   sumdigit$2F5_step
                        .size            n19_call_bx, .-n19_call_bx
                        .type            n20_call_bx, @function
n20_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             mov              r11, 21
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n21_call_α
n20_call_β:             mov              r11, 21;                             jmp   sumdigit$2F5_step
                        .size            n20_call_bx, .-n20_call_bx
                        .type            n21_call_bx, @function
n21_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:             mov              r11, 22
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n22_var_α
n21_call_β:             mov              r11, 22;                             jmp   sumdigit$2F5_step
                        .size            n21_call_bx, .-n21_call_bx
                        .type            n22_var_bx, @function
n22_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_α:              mov              r11, 23
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n23_call_α
                        .size            n22_var_bx, .-n22_var_bx
                        .type            n23_call_bx, @function
n23_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_α:             mov              r11, 24
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1416], rax
                        lea              rdi, [rbp + 1408]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n24_call_α
n23_call_β:             mov              r11, 24;                             jmp   sumdigit$2F5_step
                        .size            n23_call_bx, .-n23_call_bx
                        .type            n24_call_bx, @function
n24_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_call_α:             mov              r11, 25
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1112], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1096], rax
                        lea              rdi, [rbp + 1088]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n25_call_α
n24_call_β:             mov              r11, 25;                             jmp   sumdigit$2F5_step
                        .size            n24_call_bx, .-n24_call_bx
                        .type            n25_call_bx, @function
n25_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:             mov              r11, 26
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1456]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n26_call_α
n25_call_β:             mov              r11, 26;                             jmp   sumdigit$2F5_step
                        .size            n25_call_bx, .-n25_call_bx
                        .type            n26_call_bx, @function
n26_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:             mov              r11, 27
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1016], rax
                        lea              rdi, [rbp + 1008]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n27_bound_α
n26_call_β:             mov              r11, 27;                             jmp   sumdigit$2F5_step
                        .size            n26_call_bx, .-n26_call_bx
                        .type            n27_bound_bx, @function
n27_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_bound_α:            mov              r11, 28
                        mov              qword ptr [rbp + 128], r12
                        lea              rdi, [rbp + 2080]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n28_var_α
                        .size            n27_bound_bx, .-n27_bound_bx
                        .type            n28_var_bx, @function
n28_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_α:              mov              r11, 29
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 872], rax;          jmp   n29_call_α
                        .size            n28_var_bx, .-n28_var_bx
                        .type            n29_call_bx, @function
n29_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:             mov              r11, 30
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              al, 104;                             je    n40_unmark_α
                                                                              jmp   n30_lit_integer_α
n29_call_β:             mov              r11, 30;                             jmp   n40_unmark_α
                        .size            n29_call_bx, .-n29_call_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rbp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_101_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n31_call_α
.Llit_integer_α_101_0:  .quad            10
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_call_bx, @function
n31_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:             mov              r11, 32
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              al, 104;                             je    n40_unmark_α
                                                                              jmp   n32_call_α
n31_call_β:             mov              r11, 32;                             jmp   n40_unmark_α
                        .size            n31_call_bx, .-n31_call_bx
                        .type            n32_call_bx, @function
n32_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:             mov              r11, 33
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              al, 104;                             je    n40_unmark_α
                                                                              jmp   n33_var_ref_α
n32_call_β:             mov              r11, 33;                             jmp   n40_unmark_α
                        .size            n32_call_bx, .-n32_call_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1984]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n34_var_ref_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_var_ref_bx, @function
n34_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2000]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n35_call_α
                        .size            n34_var_ref_bx, .-n34_var_ref_bx
                        .type            n35_call_bx, @function
n35_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:             mov              r11, 36
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
                        cmp              al, 104;                             je    n53_unmark_α
                                                                              jmp   n36_var_ref_α
n35_call_β:             mov              r11, 36;                             jmp   n53_unmark_α
                        .size            n35_call_bx, .-n35_call_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1968]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n37_lit_integer_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_lit_integer_bx, @function
n37_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_lit_integer_α:      mov              r11, 38
                        mov              qword ptr [rbp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_111_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n38_call_α
.Llit_integer_α_111_0:  .quad            0
                        .size            n37_lit_integer_bx, .-n37_lit_integer_bx
                        .type            n38_call_bx, @function
n38_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             mov              r11, 39
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
                        cmp              al, 104;                             je    n53_unmark_α
                                                                              jmp   n39_move_label_α
n38_call_β:             mov              r11, 39;                             jmp   n53_unmark_α
                        .size            n38_call_bx, .-n38_call_bx
                        .type            n39_move_label_bx, @function
n39_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_move_label_α:       mov              r11, 40
                        lea              rax, [rip + n54_indirect_goto_α]
                        mov              qword ptr [rbp + 112], rax;          jmp   sumdigit$2F5_γ
                        .size            n39_move_label_bx, .-n39_move_label_bx
                        .type            n40_unmark_bx, @function
n40_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_unmark_α:           mov              r11, 41
                        mov              rdi, qword ptr [rbp + 128]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   sumdigit$2F5_step
                                                                              jmp   n41_var_ref_α
                        .size            n40_unmark_bx, .-n40_unmark_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1984]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n42_var_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_var_bx, @function
n42_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_α:              mov              r11, 43
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 632], rax;          jmp   n43_call_α
                        .size            n42_var_bx, .-n42_var_bx
                        .type            n43_call_bx, @function
n43_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_call_α:             mov              r11, 44
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 632]
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
                        cmp              al, 104;                             je    n53_unmark_α
                                                                              jmp   n44_lit_integer_α
n43_call_β:             mov              r11, 44;                             jmp   n53_unmark_α
                        .size            n43_call_bx, .-n43_call_bx
                        .type            n44_lit_integer_bx, @function
n44_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_lit_integer_α:      mov              r11, 45
                        mov              qword ptr [rbp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_122_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n45_call_α
.Llit_integer_α_122_0:  .quad            10
                        .size            n44_lit_integer_bx, .-n44_lit_integer_bx
                        .type            n45_call_bx, @function
n45_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:             mov              r11, 46
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    n53_unmark_α
                                                                              jmp   n46_call_α
n45_call_β:             mov              r11, 46;                             jmp   n53_unmark_α
                        .size            n45_call_bx, .-n45_call_bx
                        .type            n46_call_bx, @function
n46_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:             mov              r11, 47
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 696]
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
                        cmp              al, 104;                             je    n53_unmark_α
                                                                              jmp   n47_call_α
n46_call_β:             mov              r11, 47;                             jmp   n53_unmark_α
                        .size            n46_call_bx, .-n46_call_bx
                        .type            n47_call_bx, @function
n47_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_call_α:             mov              r11, 48
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    n53_unmark_α
                                                                              jmp   n48_call_α
n47_call_β:             mov              r11, 48;                             jmp   n53_unmark_α
                        .size            n47_call_bx, .-n47_call_bx
                        .type            n48_call_bx, @function
n48_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_call_α:             mov              r11, 49
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
                        cmp              al, 104;                             je    n53_unmark_α
                                                                              jmp   n49_var_ref_α
n48_call_β:             mov              r11, 49;                             jmp   n53_unmark_α
                        .size            n48_call_bx, .-n48_call_bx
                        .type            n49_var_ref_bx, @function
n49_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1968]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n50_lit_integer_α
                        .size            n49_var_ref_bx, .-n49_var_ref_bx
                        .type            n50_lit_integer_bx, @function
n50_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_lit_integer_α:      mov              r11, 51
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_129_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n51_call_α
.Llit_integer_α_129_0:  .quad            1
                        .size            n50_lit_integer_bx, .-n50_lit_integer_bx
                        .type            n51_call_bx, @function
n51_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:             mov              r11, 52
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
                        cmp              al, 104;                             je    n53_unmark_α
                                                                              jmp   n52_move_label_α
n51_call_β:             mov              r11, 52;                             jmp   n53_unmark_α
                        .size            n51_call_bx, .-n51_call_bx
                        .type            n52_move_label_bx, @function
n52_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_move_label_α:       mov              r11, 53
                        lea              rax, [rip + n54_indirect_goto_α]
                        mov              qword ptr [rbp + 112], rax;          jmp   sumdigit$2F5_γ
                        .size            n52_move_label_bx, .-n52_move_label_bx
                        .type            n53_unmark_bx, @function
n53_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_unmark_α:           mov              r11, 54
                        mov              rdi, qword ptr [rbp + 128]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   sumdigit$2F5_step
                                                                              jmp   n54_indirect_goto_α
                        .size            n53_unmark_bx, .-n53_unmark_bx
                        .type            n54_indirect_goto_bx, @function
n54_indirect_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_indirect_goto_α:    mov              r11, 55;                             jmp   sumdigit$2F5_step
n54_indirect_goto_β:    mov              r11, 55;                             jmp   qword ptr [rbp + 112]
                        .size            n54_indirect_goto_bx, .-n54_indirect_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_ret0:
                        lea              rax, [rip + n54_indirect_goto_β]
                        mov              qword ptr [rbp + 2096], rax
                                                                              jmp   sumdigit$2F5_γ
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_step:
                        mov              rdi, qword ptr [rbp + 2080]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2096], 0
                        mov              qword ptr [rbp + 2016], 0
                        mov              qword ptr [rbp + 2024], 0
                        mov              qword ptr [rbp + 2032], 0
                        mov              qword ptr [rbp + 2040], 0
                        mov              qword ptr [rbp + 2048], 0
                        mov              qword ptr [rbp + 2056], 0
                        mov              qword ptr [rbp + 1984], 0
                        mov              qword ptr [rbp + 1992], 0
                        mov              qword ptr [rbp + 1968], 0
                        mov              qword ptr [rbp + 1976], 0
                        mov              qword ptr [rbp + 2000], 0
                        mov              qword ptr [rbp + 2008], 0
                        mov              rax, qword ptr [rbp + 2088]
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
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2096], 0
                        test             rax, rax
                                                                              jne   sumdigit$2F5_βres
                                                                              jmp   sumdigit$2F5_step
sumdigit$2F5_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2120]
                        mov              rax, qword ptr [rbp + 2104]
                        cmp              r13, rax;                            je    sumdigit$2F5_altdet
                        lea              rdx, [rip + sumdigit$2F5_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 2136];         jmp   rcx
sumdigit$2F5_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 2144]
                        mov              rbp, qword ptr [rbp + 2136];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_ω:
                        mov              rcx, qword ptr [rbp + 2128]
                        mov              r13, qword ptr [rbp + 2104]
                        lea              rsp, [rbp + 2144]
                        mov              rbp, qword ptr [rbp + 2136];         jmp   rcx
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
                        .type            n137_var_ref_bx, @function
n137_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_var_ref_α:         mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n138_lit_integer_α
                        .size            n137_var_ref_bx, .-n137_var_ref_bx
                        .type            n138_lit_integer_bx, @function
n138_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_lit_integer_α:     mov              r11, 57
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_169_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n139_call_α
.Llit_integer_α_169_0:  .quad            0
                        .size            n138_lit_integer_bx, .-n138_lit_integer_bx
                        .type            n139_call_bx, @function
n139_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_call_α:            mov              r11, 58
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
n139_call_β:            mov              r11, 58;                             jmp   digit$2F1_step
                        .size            n139_call_bx, .-n139_call_bx
                        .type            n140_var_ref_bx, @function
n140_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_var_ref_α:         mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n141_lit_integer_α
                        .size            n140_var_ref_bx, .-n140_var_ref_bx
                        .type            n141_lit_integer_bx, @function
n141_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_integer_α:     mov              r11, 60
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_173_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n142_call_α
.Llit_integer_α_173_0:  .quad            1
                        .size            n141_lit_integer_bx, .-n141_lit_integer_bx
                        .type            n142_call_bx, @function
n142_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_call_α:            mov              r11, 61
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
n142_call_β:            mov              r11, 61;                             jmp   digit$2F1_step
                        .size            n142_call_bx, .-n142_call_bx
                        .type            n143_var_ref_bx, @function
n143_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_var_ref_α:         mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n144_lit_integer_α
                        .size            n143_var_ref_bx, .-n143_var_ref_bx
                        .type            n144_lit_integer_bx, @function
n144_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_integer_α:     mov              r11, 63
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_177_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n145_call_α
.Llit_integer_α_177_0:  .quad            2
                        .size            n144_lit_integer_bx, .-n144_lit_integer_bx
                        .type            n145_call_bx, @function
n145_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_call_α:            mov              r11, 64
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
n145_call_β:            mov              r11, 64;                             jmp   digit$2F1_step
                        .size            n145_call_bx, .-n145_call_bx
                        .type            n146_var_ref_bx, @function
n146_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_var_ref_α:         mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n147_lit_integer_α
                        .size            n146_var_ref_bx, .-n146_var_ref_bx
                        .type            n147_lit_integer_bx, @function
n147_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_lit_integer_α:     mov              r11, 66
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_181_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n148_call_α
.Llit_integer_α_181_0:  .quad            3
                        .size            n147_lit_integer_bx, .-n147_lit_integer_bx
                        .type            n148_call_bx, @function
n148_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_call_α:            mov              r11, 67
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
n148_call_β:            mov              r11, 67;                             jmp   digit$2F1_step
                        .size            n148_call_bx, .-n148_call_bx
                        .type            n149_var_ref_bx, @function
n149_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n150_lit_integer_α
                        .size            n149_var_ref_bx, .-n149_var_ref_bx
                        .type            n150_lit_integer_bx, @function
n150_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_lit_integer_α:     mov              r11, 69
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_185_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n151_call_α
.Llit_integer_α_185_0:  .quad            4
                        .size            n150_lit_integer_bx, .-n150_lit_integer_bx
                        .type            n151_call_bx, @function
n151_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_call_α:            mov              r11, 70
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
n151_call_β:            mov              r11, 70;                             jmp   digit$2F1_step
                        .size            n151_call_bx, .-n151_call_bx
                        .type            n152_var_ref_bx, @function
n152_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n153_lit_integer_α
                        .size            n152_var_ref_bx, .-n152_var_ref_bx
                        .type            n153_lit_integer_bx, @function
n153_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_lit_integer_α:     mov              r11, 72
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_189_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n154_call_α
.Llit_integer_α_189_0:  .quad            5
                        .size            n153_lit_integer_bx, .-n153_lit_integer_bx
                        .type            n154_call_bx, @function
n154_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_call_α:            mov              r11, 73
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
n154_call_β:            mov              r11, 73;                             jmp   digit$2F1_step
                        .size            n154_call_bx, .-n154_call_bx
                        .type            n155_var_ref_bx, @function
n155_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n156_lit_integer_α
                        .size            n155_var_ref_bx, .-n155_var_ref_bx
                        .type            n156_lit_integer_bx, @function
n156_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_integer_α:     mov              r11, 75
                        mov              qword ptr [rbp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_193_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n157_call_α
.Llit_integer_α_193_0:  .quad            6
                        .size            n156_lit_integer_bx, .-n156_lit_integer_bx
                        .type            n157_call_bx, @function
n157_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_call_α:            mov              r11, 76
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
n157_call_β:            mov              r11, 76;                             jmp   digit$2F1_step
                        .size            n157_call_bx, .-n157_call_bx
                        .type            n158_var_ref_bx, @function
n158_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n159_lit_integer_α
                        .size            n158_var_ref_bx, .-n158_var_ref_bx
                        .type            n159_lit_integer_bx, @function
n159_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_integer_α:     mov              r11, 78
                        mov              qword ptr [rbp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_197_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n160_call_α
.Llit_integer_α_197_0:  .quad            7
                        .size            n159_lit_integer_bx, .-n159_lit_integer_bx
                        .type            n160_call_bx, @function
n160_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_call_α:            mov              r11, 79
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
n160_call_β:            mov              r11, 79;                             jmp   digit$2F1_step
                        .size            n160_call_bx, .-n160_call_bx
                        .type            n161_var_ref_bx, @function
n161_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n162_lit_integer_α
                        .size            n161_var_ref_bx, .-n161_var_ref_bx
                        .type            n162_lit_integer_bx, @function
n162_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_lit_integer_α:     mov              r11, 81
                        mov              qword ptr [rbp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_201_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n163_call_α
.Llit_integer_α_201_0:  .quad            8
                        .size            n162_lit_integer_bx, .-n162_lit_integer_bx
                        .type            n163_call_bx, @function
n163_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_call_α:            mov              r11, 82
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
n163_call_β:            mov              r11, 82;                             jmp   digit$2F1_step
                        .size            n163_call_bx, .-n163_call_bx
                        .type            n164_var_ref_bx, @function
n164_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n165_lit_integer_α
                        .size            n164_var_ref_bx, .-n164_var_ref_bx
                        .type            n165_lit_integer_bx, @function
n165_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_lit_integer_α:     mov              r11, 84
                        mov              qword ptr [rbp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_205_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n166_call_α
.Llit_integer_α_205_0:  .quad            9
                        .size            n165_lit_integer_bx, .-n165_lit_integer_bx
                        .type            n166_call_bx, @function
n166_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_call_α:            mov              r11, 85
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
n166_call_β:            mov              r11, 85;                             jmp   digit$2F1_step
                        .size            n166_call_bx, .-n166_call_bx
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
                                                                              jmp   n140_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt2:
                        lea              rax, [rip + digit$2F1_alt3]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n143_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt3:
                        lea              rax, [rip + digit$2F1_alt4]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n146_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt4:
                        lea              rax, [rip + digit$2F1_alt5]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n149_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt5:
                        lea              rax, [rip + digit$2F1_alt6]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n152_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt6:
                        lea              rax, [rip + digit$2F1_alt7]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n155_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt7:
                        lea              rax, [rip + digit$2F1_alt8]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n158_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt8:
                        lea              rax, [rip + digit$2F1_alt9]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n161_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt9:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1016], rax
                        mov              r13, qword ptr [rbp + 1032]
                                                                              jmp   n164_var_ref_α
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
                        .type            n207_var_ref_bx, @function
n207_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7264], rax
                        mov              qword ptr [rbp + 7272], rdx;         jmp   n208_var_ref_α
                        .size            n207_var_ref_bx, .-n207_var_ref_bx
                        .type            n208_var_ref_bx, @function
n208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7312]
                        mov              qword ptr [rbp + 7280], rax
                        mov              qword ptr [rbp + 7288], rdx;         jmp   n209_call_α
                        .size            n208_var_ref_bx, .-n208_var_ref_bx
                        .type            n209_call_bx, @function
n209_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_call_α:            mov              r11, 88
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
                                                                              jmp   n210_var_ref_α
n209_call_β:            mov              r11, 88;                             jmp   solve$2F8_step
                        .size            n209_call_bx, .-n209_call_bx
                        .type            n210_var_ref_bx, @function
n210_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7168], rax
                        mov              qword ptr [rbp + 7176], rdx;         jmp   n211_var_ref_α
                        .size            n210_var_ref_bx, .-n210_var_ref_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7376]
                        mov              qword ptr [rbp + 7184], rax
                        mov              qword ptr [rbp + 7192], rdx;         jmp   n212_call_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_call_bx, @function
n212_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_call_α:            mov              r11, 91
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
                                                                              jmp   n213_var_ref_α
n212_call_β:            mov              r11, 91;                             jmp   solve$2F8_step
                        .size            n212_call_bx, .-n212_call_bx
                        .type            n213_var_ref_bx, @function
n213_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 7072], rax
                        mov              qword ptr [rbp + 7080], rdx;         jmp   n214_var_ref_α
                        .size            n213_var_ref_bx, .-n213_var_ref_bx
                        .type            n214_var_ref_bx, @function
n214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7408]
                        mov              qword ptr [rbp + 7088], rax
                        mov              qword ptr [rbp + 7096], rdx;         jmp   n215_call_α
                        .size            n214_var_ref_bx, .-n214_var_ref_bx
                        .type            n215_call_bx, @function
n215_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_call_α:            mov              r11, 94
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
                                                                              jmp   n216_var_ref_α
n215_call_β:            mov              r11, 94;                             jmp   solve$2F8_step
                        .size            n215_call_bx, .-n215_call_bx
                        .type            n216_var_ref_bx, @function
n216_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx;         jmp   n217_var_ref_α
                        .size            n216_var_ref_bx, .-n216_var_ref_bx
                        .type            n217_var_ref_bx, @function
n217_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7360]
                        mov              qword ptr [rbp + 6992], rax
                        mov              qword ptr [rbp + 7000], rdx;         jmp   n218_call_α
                        .size            n217_var_ref_bx, .-n217_var_ref_bx
                        .type            n218_call_bx, @function
n218_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_call_α:            mov              r11, 97
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
                                                                              jmp   n219_var_ref_α
n218_call_β:            mov              r11, 97;                             jmp   solve$2F8_step
                        .size            n218_call_bx, .-n218_call_bx
                        .type            n219_var_ref_bx, @function
n219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx;         jmp   n220_var_ref_α
                        .size            n219_var_ref_bx, .-n219_var_ref_bx
                        .type            n220_var_ref_bx, @function
n220_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7328]
                        mov              qword ptr [rbp + 6896], rax
                        mov              qword ptr [rbp + 6904], rdx;         jmp   n221_call_α
                        .size            n220_var_ref_bx, .-n220_var_ref_bx
                        .type            n221_call_bx, @function
n221_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_call_α:            mov              r11, 100
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
                                                                              jmp   n222_var_ref_α
n221_call_β:            mov              r11, 100;                            jmp   solve$2F8_step
                        .size            n221_call_bx, .-n221_call_bx
                        .type            n222_var_ref_bx, @function
n222_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 6784], rax
                        mov              qword ptr [rbp + 6792], rdx;         jmp   n223_var_ref_α
                        .size            n222_var_ref_bx, .-n222_var_ref_bx
                        .type            n223_var_ref_bx, @function
n223_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7344]
                        mov              qword ptr [rbp + 6800], rax
                        mov              qword ptr [rbp + 6808], rdx;         jmp   n224_call_α
                        .size            n223_var_ref_bx, .-n223_var_ref_bx
                        .type            n224_call_bx, @function
n224_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:            mov              r11, 103
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
                                                                              jmp   n225_var_ref_α
n224_call_β:            mov              r11, 103;                            jmp   solve$2F8_step
                        .size            n224_call_bx, .-n224_call_bx
                        .type            n225_var_ref_bx, @function
n225_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:         mov              r11, 104
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 6688], rax
                        mov              qword ptr [rbp + 6696], rdx;         jmp   n226_var_ref_α
                        .size            n225_var_ref_bx, .-n225_var_ref_bx
                        .type            n226_var_ref_bx, @function
n226_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:         mov              r11, 105
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7424]
                        mov              qword ptr [rbp + 6704], rax
                        mov              qword ptr [rbp + 6712], rdx;         jmp   n227_call_α
                        .size            n226_var_ref_bx, .-n226_var_ref_bx
                        .type            n227_call_bx, @function
n227_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_call_α:            mov              r11, 106
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
                                                                              jmp   n228_var_ref_α
n227_call_β:            mov              r11, 106;                            jmp   solve$2F8_step
                        .size            n227_call_bx, .-n227_call_bx
                        .type            n228_var_ref_bx, @function
n228_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_var_ref_α:         mov              r11, 107
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 128]
                        mov              qword ptr [rbp + 6592], rax
                        mov              qword ptr [rbp + 6600], rdx;         jmp   n229_var_ref_α
                        .size            n228_var_ref_bx, .-n228_var_ref_bx
                        .type            n229_var_ref_bx, @function
n229_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7392]
                        mov              qword ptr [rbp + 6608], rax
                        mov              qword ptr [rbp + 6616], rdx;         jmp   n230_call_α
                        .size            n229_var_ref_bx, .-n229_var_ref_bx
                        .type            n230_call_bx, @function
n230_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_call_α:            mov              r11, 109
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
                                                                              jmp   n231_var_ref_α
n230_call_β:            mov              r11, 109;                            jmp   solve$2F8_step
                        .size            n230_call_bx, .-n230_call_bx
                        .type            n231_var_ref_bx, @function
n231_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7360]
                        mov              qword ptr [rbp + 6512], rax
                        mov              qword ptr [rbp + 6520], rdx;         jmp   n232_call_proc_staged_α
                        .size            n231_var_ref_bx, .-n231_var_ref_bx
                        .type            n232_call_proc_staged_bx, @function
n232_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_call_proc_staged_α:
                        mov              r11, 111
                        mov              qword ptr [rbp + 6480], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_442_200
                        mov              rax, qword ptr [rbp + 6512]
                        mov              rdx, qword ptr [rbp + 6520]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_442_201
.Lcall_proc_staged_α_442_200:
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
.Lcall_proc_staged_α_442_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_442_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_442_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_442_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_442_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_442_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_442_3:
                        mov              qword ptr [rbp + 6480], rax
                        mov              qword ptr [rbp + 6488], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_442_21
                        add              rsp, 32
.Lcall_proc_staged_α_442_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_442_2
.Lcall_proc_staged_α_442_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 6480], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_442_2
.Lcall_proc_staged_α_442_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_442_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   solve$2F8_step
.Lcall_proc_staged_α_442_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_442_29
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
.Lcall_proc_staged_α_442_29:
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n233_var_ref_α
n232_call_proc_staged_β:
                        mov              r11, 111
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_442_22
                        mov              rax, qword ptr [rbp + 6480]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_442_22
                        mov              rcx, qword ptr [rbp + 6488]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_442_22:
                                                                              jmp   solve$2F8_step
.Lcall_proc_staged_α_442_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n233_var_ref_α
.Lcall_proc_staged_α_442_0:
                        .quad            .Lcall_proc_staged_α_442_0_s
.Lcall_proc_staged_α_442_0_s:
                        .string          "digit/1"
                        .size            n232_call_proc_staged_bx, .-n232_call_proc_staged_bx
                        .type            n233_var_ref_bx, @function
n233_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_var_ref_α:         mov              r11, 112
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7376]
                        mov              qword ptr [rbp + 6432], rax
                        mov              qword ptr [rbp + 6440], rdx;         jmp   n234_call_proc_staged_α
                        .size            n233_var_ref_bx, .-n233_var_ref_bx
                        .type            n234_call_proc_staged_bx, @function
n234_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_call_proc_staged_α:
                        mov              r11, 113
                        mov              qword ptr [rbp + 6400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_446_200
                        mov              rax, qword ptr [rbp + 6432]
                        mov              rdx, qword ptr [rbp + 6440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_446_201
.Lcall_proc_staged_α_446_200:
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
.Lcall_proc_staged_α_446_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_446_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_446_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_446_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_446_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_446_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_446_3:
                        mov              qword ptr [rbp + 6400], rax
                        mov              qword ptr [rbp + 6408], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_446_21
                        add              rsp, 32
.Lcall_proc_staged_α_446_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_446_2
.Lcall_proc_staged_α_446_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 6400], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_446_2
.Lcall_proc_staged_α_446_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_446_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n232_call_proc_staged_β
.Lcall_proc_staged_α_446_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_446_29
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
.Lcall_proc_staged_α_446_29:
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                        cmp              al, 104;                             je    n232_call_proc_staged_β
                                                                              jmp   n235_var_α
n234_call_proc_staged_β:
                        mov              r11, 113
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_446_22
                        mov              rax, qword ptr [rbp + 6400]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_446_22
                        mov              rcx, qword ptr [rbp + 6408]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_446_22:
                                                                              jmp   n232_call_proc_staged_β
.Lcall_proc_staged_α_446_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 6368], rax
                        mov              qword ptr [rbp + 6376], rdx
                        cmp              al, 104;                             je    n232_call_proc_staged_β
                                                                              jmp   n235_var_α
.Lcall_proc_staged_α_446_0:
                        .quad            .Lcall_proc_staged_α_446_0_s
.Lcall_proc_staged_α_446_0_s:
                        .string          "digit/1"
                        .size            n234_call_proc_staged_bx, .-n234_call_proc_staged_bx
                        .type            n235_var_bx, @function
n235_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:             mov              r11, 114
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 6240], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 6248], rax;         jmp   n236_call_α
                        .size            n235_var_bx, .-n235_var_bx
                        .type            n236_call_bx, @function
n236_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_call_α:            mov              r11, 115
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
                                                                              jmp   n237_var_α
n236_call_β:            mov              r11, 115;                            jmp   solve$2F8_step
                        .size            n236_call_bx, .-n236_call_bx
                        .type            n237_var_bx, @function
n237_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             mov              r11, 116
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 6256], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 6264], rax;         jmp   n238_call_α
                        .size            n237_var_bx, .-n237_var_bx
                        .type            n238_call_bx, @function
n238_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_call_α:            mov              r11, 117
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
                                                                              jmp   n239_call_α
n238_call_β:            mov              r11, 117;                            jmp   solve$2F8_step
                        .size            n238_call_bx, .-n238_call_bx
                        .type            n239_call_bx, @function
n239_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_call_α:            mov              r11, 118
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
                        cmp              al, 104;                             je    n234_call_proc_staged_β
                                                                              jmp   n240_lit_integer_α
n239_call_β:            mov              r11, 118;                            jmp   n234_call_proc_staged_β
                        .size            n239_call_bx, .-n239_call_bx
                        .type            n240_lit_integer_bx, @function
n240_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_lit_integer_α:     mov              r11, 119
                        mov              qword ptr [rbp + 6096], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_454_0]
                        mov              qword ptr [rbp + 6104], rax;         jmp   n241_var_ref_α
.Llit_integer_α_454_0:  .quad            0
                        .size            n240_lit_integer_bx, .-n240_lit_integer_bx
                        .type            n241_var_ref_bx, @function
n241_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              r11, 120
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7360]
                        mov              qword ptr [rbp + 6112], rax
                        mov              qword ptr [rbp + 6120], rdx;         jmp   n242_var_ref_α
                        .size            n241_var_ref_bx, .-n241_var_ref_bx
                        .type            n242_var_ref_bx, @function
n242_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_var_ref_α:         mov              r11, 121
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7376]
                        mov              qword ptr [rbp + 6128], rax
                        mov              qword ptr [rbp + 6136], rdx;         jmp   n243_var_ref_α
                        .size            n242_var_ref_bx, .-n242_var_ref_bx
                        .type            n243_var_ref_bx, @function
n243_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7392]
                        mov              qword ptr [rbp + 6144], rax
                        mov              qword ptr [rbp + 6152], rdx;         jmp   n244_var_ref_α
                        .size            n243_var_ref_bx, .-n243_var_ref_bx
                        .type            n244_var_ref_bx, @function
n244_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7456]
                        mov              qword ptr [rbp + 6160], rax
                        mov              qword ptr [rbp + 6168], rdx;         jmp   n245_call_proc_staged_α
                        .size            n244_var_ref_bx, .-n244_var_ref_bx
                        .type            n245_call_proc_staged_bx, @function
n245_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_call_proc_staged_α:
                        mov              r11, 124
                        mov              qword ptr [rbp + 6064], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_464_200
                        mov              rax, qword ptr [rbp + 6096]
                        mov              rdx, qword ptr [rbp + 6104]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_464_201
.Lcall_proc_staged_α_464_200:
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
.Lcall_proc_staged_α_464_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_464_202
                        mov              rax, qword ptr [rbp + 6112]
                        mov              rdx, qword ptr [rbp + 6120]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_464_203
.Lcall_proc_staged_α_464_202:
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
.Lcall_proc_staged_α_464_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_464_204
                        mov              rax, qword ptr [rbp + 6128]
                        mov              rdx, qword ptr [rbp + 6136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_464_205
.Lcall_proc_staged_α_464_204:
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
.Lcall_proc_staged_α_464_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_464_206
                        mov              rax, qword ptr [rbp + 6144]
                        mov              rdx, qword ptr [rbp + 6152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_464_207
.Lcall_proc_staged_α_464_206:
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
.Lcall_proc_staged_α_464_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_464_208
                        mov              rax, qword ptr [rbp + 6160]
                        mov              rdx, qword ptr [rbp + 6168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_464_209
.Lcall_proc_staged_α_464_208:
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
.Lcall_proc_staged_α_464_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_464_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_464_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_464_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_464_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_464_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_464_3:
                        mov              qword ptr [rbp + 6064], rax
                        mov              qword ptr [rbp + 6072], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_464_21
                        add              rsp, 32
.Lcall_proc_staged_α_464_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_464_2
.Lcall_proc_staged_α_464_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 6064], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_464_2
.Lcall_proc_staged_α_464_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_464_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n234_call_proc_staged_β
.Lcall_proc_staged_α_464_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_464_29
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
.Lcall_proc_staged_α_464_29:
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx
                        cmp              al, 104;                             je    n234_call_proc_staged_β
                                                                              jmp   n246_var_ref_α
n245_call_proc_staged_β:
                        mov              r11, 124
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_464_22
                        mov              rax, qword ptr [rbp + 6064]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_464_22
                        mov              rcx, qword ptr [rbp + 6072]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_464_22:
                                                                              jmp   n234_call_proc_staged_β
.Lcall_proc_staged_α_464_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx
                        cmp              al, 104;                             je    n234_call_proc_staged_β
                                                                              jmp   n246_var_ref_α
.Lcall_proc_staged_α_464_0:
                        .quad            .Lcall_proc_staged_α_464_0_s
.Lcall_proc_staged_α_464_0_s:
                        .string          "sumdigit/5"
                        .size            n245_call_proc_staged_bx, .-n245_call_proc_staged_bx
                        .type            n246_var_ref_bx, @function
n246_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7408]
                        mov              qword ptr [rbp + 5952], rax
                        mov              qword ptr [rbp + 5960], rdx;         jmp   n247_call_proc_staged_α
                        .size            n246_var_ref_bx, .-n246_var_ref_bx
                        .type            n247_call_proc_staged_bx, @function
n247_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_call_proc_staged_α:
                        mov              r11, 126
                        mov              qword ptr [rbp + 5920], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_468_200
                        mov              rax, qword ptr [rbp + 5952]
                        mov              rdx, qword ptr [rbp + 5960]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_468_201
.Lcall_proc_staged_α_468_200:
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
.Lcall_proc_staged_α_468_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_468_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_468_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_468_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_468_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_468_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_468_3:
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_468_21
                        add              rsp, 32
.Lcall_proc_staged_α_468_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_468_2
.Lcall_proc_staged_α_468_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5920], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_468_2
.Lcall_proc_staged_α_468_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_468_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n245_call_proc_staged_β
.Lcall_proc_staged_α_468_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_468_29
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
.Lcall_proc_staged_α_468_29:
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx
                        cmp              al, 104;                             je    n245_call_proc_staged_β
                                                                              jmp   n248_var_α
n247_call_proc_staged_β:
                        mov              r11, 126
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_468_22
                        mov              rax, qword ptr [rbp + 5920]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_468_22
                        mov              rcx, qword ptr [rbp + 5928]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_468_22:
                                                                              jmp   n245_call_proc_staged_β
.Lcall_proc_staged_α_468_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5888], rax
                        mov              qword ptr [rbp + 5896], rdx
                        cmp              al, 104;                             je    n245_call_proc_staged_β
                                                                              jmp   n248_var_α
.Lcall_proc_staged_α_468_0:
                        .quad            .Lcall_proc_staged_α_468_0_s
.Lcall_proc_staged_α_468_0_s:
                        .string          "digit/1"
                        .size            n247_call_proc_staged_bx, .-n247_call_proc_staged_bx
                        .type            n248_var_bx, @function
n248_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_var_α:             mov              r11, 127
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 5760], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 5768], rax;         jmp   n249_call_α
                        .size            n248_var_bx, .-n248_var_bx
                        .type            n249_call_bx, @function
n249_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_call_α:            mov              r11, 128
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
                                                                              jmp   n250_var_α
n249_call_β:            mov              r11, 128;                            jmp   solve$2F8_step
                        .size            n249_call_bx, .-n249_call_bx
                        .type            n250_var_bx, @function
n250_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_α:             mov              r11, 129
                        mov              rax, qword ptr [rbp + 7392]
                        mov              qword ptr [rbp + 5776], rax
                        mov              rax, qword ptr [rbp + 7400]
                        mov              qword ptr [rbp + 5784], rax;         jmp   n251_call_α
                        .size            n250_var_bx, .-n250_var_bx
                        .type            n251_call_bx, @function
n251_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_call_α:            mov              r11, 130
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
                                                                              jmp   n252_call_α
n251_call_β:            mov              r11, 130;                            jmp   solve$2F8_step
                        .size            n251_call_bx, .-n251_call_bx
                        .type            n252_call_bx, @function
n252_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_call_α:            mov              r11, 131
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
                        cmp              al, 104;                             je    n247_call_proc_staged_β
                                                                              jmp   n253_var_α
n252_call_β:            mov              r11, 131;                            jmp   n247_call_proc_staged_β
                        .size            n252_call_bx, .-n252_call_bx
                        .type            n253_var_bx, @function
n253_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_α:             mov              r11, 132
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 5568], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 5576], rax;         jmp   n254_call_α
                        .size            n253_var_bx, .-n253_var_bx
                        .type            n254_call_bx, @function
n254_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_call_α:            mov              r11, 133
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
                                                                              jmp   n255_var_α
n254_call_β:            mov              r11, 133;                            jmp   solve$2F8_step
                        .size            n254_call_bx, .-n254_call_bx
                        .type            n255_var_bx, @function
n255_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_α:             mov              r11, 134
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 5592], rax;         jmp   n256_call_α
                        .size            n255_var_bx, .-n255_var_bx
                        .type            n256_call_bx, @function
n256_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_call_α:            mov              r11, 135
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
                                                                              jmp   n257_call_α
n256_call_β:            mov              r11, 135;                            jmp   solve$2F8_step
                        .size            n256_call_bx, .-n256_call_bx
                        .type            n257_call_bx, @function
n257_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_call_α:            mov              r11, 136
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
                        cmp              al, 104;                             je    n247_call_proc_staged_β
                                                                              jmp   n258_var_α
n257_call_β:            mov              r11, 136;                            jmp   n247_call_proc_staged_β
                        .size            n257_call_bx, .-n257_call_bx
                        .type            n258_var_bx, @function
n258_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             mov              r11, 137
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 5376], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 5384], rax;         jmp   n259_call_α
                        .size            n258_var_bx, .-n258_var_bx
                        .type            n259_call_bx, @function
n259_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_call_α:            mov              r11, 138
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
                                                                              jmp   n260_var_α
n259_call_β:            mov              r11, 138;                            jmp   solve$2F8_step
                        .size            n259_call_bx, .-n259_call_bx
                        .type            n260_var_bx, @function
n260_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:             mov              r11, 139
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 5400], rax;         jmp   n261_call_α
                        .size            n260_var_bx, .-n260_var_bx
                        .type            n261_call_bx, @function
n261_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_call_α:            mov              r11, 140
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
                                                                              jmp   n262_call_α
n261_call_β:            mov              r11, 140;                            jmp   solve$2F8_step
                        .size            n261_call_bx, .-n261_call_bx
                        .type            n262_call_bx, @function
n262_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_call_α:            mov              r11, 141
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
                        cmp              al, 104;                             je    n247_call_proc_staged_β
                                                                              jmp   n263_var_ref_α
n262_call_β:            mov              r11, 141;                            jmp   n247_call_proc_staged_β
                        .size            n262_call_bx, .-n262_call_bx
                        .type            n263_var_ref_bx, @function
n263_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7424]
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx;         jmp   n264_call_proc_staged_α
                        .size            n263_var_ref_bx, .-n263_var_ref_bx
                        .type            n264_call_proc_staged_bx, @function
n264_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_call_proc_staged_α:
                        mov              r11, 143
                        mov              qword ptr [rbp + 5264], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_493_200
                        mov              rax, qword ptr [rbp + 5296]
                        mov              rdx, qword ptr [rbp + 5304]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_493_201
.Lcall_proc_staged_α_493_200:
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
.Lcall_proc_staged_α_493_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_493_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_493_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_493_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_493_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_493_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_493_3:
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_493_21
                        add              rsp, 32
.Lcall_proc_staged_α_493_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_493_2
.Lcall_proc_staged_α_493_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 5264], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_493_2
.Lcall_proc_staged_α_493_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_493_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n247_call_proc_staged_β
.Lcall_proc_staged_α_493_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_493_29
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
.Lcall_proc_staged_α_493_29:
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx
                        cmp              al, 104;                             je    n247_call_proc_staged_β
                                                                              jmp   n265_var_α
n264_call_proc_staged_β:
                        mov              r11, 143
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_493_22
                        mov              rax, qword ptr [rbp + 5264]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_493_22
                        mov              rcx, qword ptr [rbp + 5272]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_493_22:
                                                                              jmp   n247_call_proc_staged_β
.Lcall_proc_staged_α_493_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx
                        cmp              al, 104;                             je    n247_call_proc_staged_β
                                                                              jmp   n265_var_α
.Lcall_proc_staged_α_493_0:
                        .quad            .Lcall_proc_staged_α_493_0_s
.Lcall_proc_staged_α_493_0_s:
                        .string          "digit/1"
                        .size            n264_call_proc_staged_bx, .-n264_call_proc_staged_bx
                        .type            n265_var_bx, @function
n265_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_var_α:             mov              r11, 144
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 5104], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 5112], rax;         jmp   n266_call_α
                        .size            n265_var_bx, .-n265_var_bx
                        .type            n266_call_bx, @function
n266_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_call_α:            mov              r11, 145
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
                                                                              jmp   n267_var_α
n266_call_β:            mov              r11, 145;                            jmp   solve$2F8_step
                        .size            n266_call_bx, .-n266_call_bx
                        .type            n267_var_bx, @function
n267_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:             mov              r11, 146
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 5120], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 5128], rax;         jmp   n268_call_α
                        .size            n267_var_bx, .-n267_var_bx
                        .type            n268_call_bx, @function
n268_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_call_α:            mov              r11, 147
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
                                                                              jmp   n269_call_α
n268_call_β:            mov              r11, 147;                            jmp   solve$2F8_step
                        .size            n268_call_bx, .-n268_call_bx
                        .type            n269_call_bx, @function
n269_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_call_α:            mov              r11, 148
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
                        cmp              al, 104;                             je    n264_call_proc_staged_β
                                                                              jmp   n270_var_α
n269_call_β:            mov              r11, 148;                            jmp   n264_call_proc_staged_β
                        .size            n269_call_bx, .-n269_call_bx
                        .type            n270_var_bx, @function
n270_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:             mov              r11, 149
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 4912], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 4920], rax;         jmp   n271_call_α
                        .size            n270_var_bx, .-n270_var_bx
                        .type            n271_call_bx, @function
n271_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_call_α:            mov              r11, 150
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
                                                                              jmp   n272_var_α
n271_call_β:            mov              r11, 150;                            jmp   solve$2F8_step
                        .size            n271_call_bx, .-n271_call_bx
                        .type            n272_var_bx, @function
n272_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_α:             mov              r11, 151
                        mov              rax, qword ptr [rbp + 7392]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 7400]
                        mov              qword ptr [rbp + 4936], rax;         jmp   n273_call_α
                        .size            n272_var_bx, .-n272_var_bx
                        .type            n273_call_bx, @function
n273_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:            mov              r11, 152
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
                                                                              jmp   n274_call_α
n273_call_β:            mov              r11, 152;                            jmp   solve$2F8_step
                        .size            n273_call_bx, .-n273_call_bx
                        .type            n274_call_bx, @function
n274_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_call_α:            mov              r11, 153
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
                        cmp              al, 104;                             je    n264_call_proc_staged_β
                                                                              jmp   n275_var_α
n274_call_β:            mov              r11, 153;                            jmp   n264_call_proc_staged_β
                        .size            n274_call_bx, .-n274_call_bx
                        .type            n275_var_bx, @function
n275_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_var_α:             mov              r11, 154
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 4728], rax;         jmp   n276_call_α
                        .size            n275_var_bx, .-n275_var_bx
                        .type            n276_call_bx, @function
n276_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_call_α:            mov              r11, 155
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
                                                                              jmp   n277_var_α
n276_call_β:            mov              r11, 155;                            jmp   solve$2F8_step
                        .size            n276_call_bx, .-n276_call_bx
                        .type            n277_var_bx, @function
n277_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_var_α:             mov              r11, 156
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 4744], rax;         jmp   n278_call_α
                        .size            n277_var_bx, .-n277_var_bx
                        .type            n278_call_bx, @function
n278_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_call_α:            mov              r11, 157
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
                                                                              jmp   n279_call_α
n278_call_β:            mov              r11, 157;                            jmp   solve$2F8_step
                        .size            n278_call_bx, .-n278_call_bx
                        .type            n279_call_bx, @function
n279_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_call_α:            mov              r11, 158
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
                        cmp              al, 104;                             je    n264_call_proc_staged_β
                                                                              jmp   n280_var_α
n279_call_β:            mov              r11, 158;                            jmp   n264_call_proc_staged_β
                        .size            n279_call_bx, .-n279_call_bx
                        .type            n280_var_bx, @function
n280_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_var_α:             mov              r11, 159
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 4536], rax;         jmp   n281_call_α
                        .size            n280_var_bx, .-n280_var_bx
                        .type            n281_call_bx, @function
n281_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_call_α:            mov              r11, 160
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
                                                                              jmp   n282_var_α
n281_call_β:            mov              r11, 160;                            jmp   solve$2F8_step
                        .size            n281_call_bx, .-n281_call_bx
                        .type            n282_var_bx, @function
n282_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_var_α:             mov              r11, 161
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 4552], rax;         jmp   n283_call_α
                        .size            n282_var_bx, .-n282_var_bx
                        .type            n283_call_bx, @function
n283_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_call_α:            mov              r11, 162
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
                                                                              jmp   n284_call_α
n283_call_β:            mov              r11, 162;                            jmp   solve$2F8_step
                        .size            n283_call_bx, .-n283_call_bx
                        .type            n284_call_bx, @function
n284_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_call_α:            mov              r11, 163
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
                        cmp              al, 104;                             je    n264_call_proc_staged_β
                                                                              jmp   n285_var_ref_α
n284_call_β:            mov              r11, 163;                            jmp   n264_call_proc_staged_β
                        .size            n284_call_bx, .-n284_call_bx
                        .type            n285_var_ref_bx, @function
n285_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7456]
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx;         jmp   n286_var_ref_α
                        .size            n285_var_ref_bx, .-n285_var_ref_bx
                        .type            n286_var_ref_bx, @function
n286_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7408]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx;         jmp   n287_var_ref_α
                        .size            n286_var_ref_bx, .-n286_var_ref_bx
                        .type            n287_var_ref_bx, @function
n287_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7424]
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx;         jmp   n288_var_ref_α
                        .size            n287_var_ref_bx, .-n287_var_ref_bx
                        .type            n288_var_ref_bx, @function
n288_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7376]
                        mov              qword ptr [rbp + 4432], rax
                        mov              qword ptr [rbp + 4440], rdx;         jmp   n289_var_ref_α
                        .size            n288_var_ref_bx, .-n288_var_ref_bx
                        .type            n289_var_ref_bx, @function
n289_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7440]
                        mov              qword ptr [rbp + 4448], rax
                        mov              qword ptr [rbp + 4456], rdx;         jmp   n290_call_proc_staged_α
                        .size            n289_var_ref_bx, .-n289_var_ref_bx
                        .type            n290_call_proc_staged_bx, @function
n290_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_call_proc_staged_α:
                        mov              r11, 169
                        mov              qword ptr [rbp + 4352], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_533_200
                        mov              rax, qword ptr [rbp + 4384]
                        mov              rdx, qword ptr [rbp + 4392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_533_201
.Lcall_proc_staged_α_533_200:
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
.Lcall_proc_staged_α_533_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_533_202
                        mov              rax, qword ptr [rbp + 4400]
                        mov              rdx, qword ptr [rbp + 4408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_533_203
.Lcall_proc_staged_α_533_202:
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
.Lcall_proc_staged_α_533_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_533_204
                        mov              rax, qword ptr [rbp + 4416]
                        mov              rdx, qword ptr [rbp + 4424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_533_205
.Lcall_proc_staged_α_533_204:
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
.Lcall_proc_staged_α_533_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_533_206
                        mov              rax, qword ptr [rbp + 4432]
                        mov              rdx, qword ptr [rbp + 4440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_533_207
.Lcall_proc_staged_α_533_206:
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
.Lcall_proc_staged_α_533_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_533_208
                        mov              rax, qword ptr [rbp + 4448]
                        mov              rdx, qword ptr [rbp + 4456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_533_209
.Lcall_proc_staged_α_533_208:
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
.Lcall_proc_staged_α_533_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_533_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_533_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_533_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_533_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_533_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_533_3:
                        mov              qword ptr [rbp + 4352], rax
                        mov              qword ptr [rbp + 4360], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_533_21
                        add              rsp, 32
.Lcall_proc_staged_α_533_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_533_2
.Lcall_proc_staged_α_533_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4352], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_533_2
.Lcall_proc_staged_α_533_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_533_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n264_call_proc_staged_β
.Lcall_proc_staged_α_533_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_533_29
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
.Lcall_proc_staged_α_533_29:
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        cmp              al, 104;                             je    n264_call_proc_staged_β
                                                                              jmp   n291_var_ref_α
n290_call_proc_staged_β:
                        mov              r11, 169
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_533_22
                        mov              rax, qword ptr [rbp + 4352]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_533_22
                        mov              rcx, qword ptr [rbp + 4360]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_533_22:
                                                                              jmp   n264_call_proc_staged_β
.Lcall_proc_staged_α_533_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        cmp              al, 104;                             je    n264_call_proc_staged_β
                                                                              jmp   n291_var_ref_α
.Lcall_proc_staged_α_533_0:
                        .quad            .Lcall_proc_staged_α_533_0_s
.Lcall_proc_staged_α_533_0_s:
                        .string          "sumdigit/5"
                        .size            n290_call_proc_staged_bx, .-n290_call_proc_staged_bx
                        .type            n291_var_ref_bx, @function
n291_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_var_ref_α:         mov              r11, 170
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7344]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx;         jmp   n292_call_proc_staged_α
                        .size            n291_var_ref_bx, .-n291_var_ref_bx
                        .type            n292_call_proc_staged_bx, @function
n292_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_call_proc_staged_α:
                        mov              r11, 171
                        mov              qword ptr [rbp + 4208], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_537_200
                        mov              rax, qword ptr [rbp + 4240]
                        mov              rdx, qword ptr [rbp + 4248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_537_201
.Lcall_proc_staged_α_537_200:
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
.Lcall_proc_staged_α_537_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_537_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_537_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_537_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_537_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_537_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_537_3:
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_537_21
                        add              rsp, 32
.Lcall_proc_staged_α_537_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_537_2
.Lcall_proc_staged_α_537_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 4208], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_537_2
.Lcall_proc_staged_α_537_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_537_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n290_call_proc_staged_β
.Lcall_proc_staged_α_537_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_537_29
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
.Lcall_proc_staged_α_537_29:
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                        cmp              al, 104;                             je    n290_call_proc_staged_β
                                                                              jmp   n293_var_α
n292_call_proc_staged_β:
                        mov              r11, 171
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_537_22
                        mov              rax, qword ptr [rbp + 4208]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_537_22
                        mov              rcx, qword ptr [rbp + 4216]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_537_22:
                                                                              jmp   n290_call_proc_staged_β
.Lcall_proc_staged_α_537_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                        cmp              al, 104;                             je    n290_call_proc_staged_β
                                                                              jmp   n293_var_α
.Lcall_proc_staged_α_537_0:
                        .quad            .Lcall_proc_staged_α_537_0_s
.Lcall_proc_staged_α_537_0_s:
                        .string          "digit/1"
                        .size            n292_call_proc_staged_bx, .-n292_call_proc_staged_bx
                        .type            n293_var_bx, @function
n293_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:             mov              r11, 172
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 4056], rax;         jmp   n294_call_α
                        .size            n293_var_bx, .-n293_var_bx
                        .type            n294_call_bx, @function
n294_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:            mov              r11, 173
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
                                                                              jmp   n295_var_α
n294_call_β:            mov              r11, 173;                            jmp   solve$2F8_step
                        .size            n294_call_bx, .-n294_call_bx
                        .type            n295_var_bx, @function
n295_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:             mov              r11, 174
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 4072], rax;         jmp   n296_call_α
                        .size            n295_var_bx, .-n295_var_bx
                        .type            n296_call_bx, @function
n296_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_call_α:            mov              r11, 175
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
                                                                              jmp   n297_call_α
n296_call_β:            mov              r11, 175;                            jmp   solve$2F8_step
                        .size            n296_call_bx, .-n296_call_bx
                        .type            n297_call_bx, @function
n297_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_call_α:            mov              r11, 176
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
                        cmp              al, 104;                             je    n292_call_proc_staged_β
                                                                              jmp   n298_var_α
n297_call_β:            mov              r11, 176;                            jmp   n292_call_proc_staged_β
                        .size            n297_call_bx, .-n297_call_bx
                        .type            n298_var_bx, @function
n298_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_var_α:             mov              r11, 177
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 3864], rax;         jmp   n299_call_α
                        .size            n298_var_bx, .-n298_var_bx
                        .type            n299_call_bx, @function
n299_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            mov              r11, 178
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
                                                                              jmp   n300_var_α
n299_call_β:            mov              r11, 178;                            jmp   solve$2F8_step
                        .size            n299_call_bx, .-n299_call_bx
                        .type            n300_var_bx, @function
n300_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_var_α:             mov              r11, 179
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 3880], rax;         jmp   n301_call_α
                        .size            n300_var_bx, .-n300_var_bx
                        .type            n301_call_bx, @function
n301_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_call_α:            mov              r11, 180
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
                                                                              jmp   n302_call_α
n301_call_β:            mov              r11, 180;                            jmp   solve$2F8_step
                        .size            n301_call_bx, .-n301_call_bx
                        .type            n302_call_bx, @function
n302_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_call_α:            mov              r11, 181
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
                        cmp              al, 104;                             je    n292_call_proc_staged_β
                                                                              jmp   n303_var_α
n302_call_β:            mov              r11, 181;                            jmp   n292_call_proc_staged_β
                        .size            n302_call_bx, .-n302_call_bx
                        .type            n303_var_bx, @function
n303_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:             mov              r11, 182
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 3672], rax;         jmp   n304_call_α
                        .size            n303_var_bx, .-n303_var_bx
                        .type            n304_call_bx, @function
n304_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_call_α:            mov              r11, 183
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
                                                                              jmp   n305_var_α
n304_call_β:            mov              r11, 183;                            jmp   solve$2F8_step
                        .size            n304_call_bx, .-n304_call_bx
                        .type            n305_var_bx, @function
n305_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_var_α:             mov              r11, 184
                        mov              rax, qword ptr [rbp + 7392]
                        mov              qword ptr [rbp + 3680], rax
                        mov              rax, qword ptr [rbp + 7400]
                        mov              qword ptr [rbp + 3688], rax;         jmp   n306_call_α
                        .size            n305_var_bx, .-n305_var_bx
                        .type            n306_call_bx, @function
n306_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_call_α:            mov              r11, 185
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
                                                                              jmp   n307_call_α
n306_call_β:            mov              r11, 185;                            jmp   solve$2F8_step
                        .size            n306_call_bx, .-n306_call_bx
                        .type            n307_call_bx, @function
n307_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_call_α:            mov              r11, 186
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
                        cmp              al, 104;                             je    n292_call_proc_staged_β
                                                                              jmp   n308_var_α
n307_call_β:            mov              r11, 186;                            jmp   n292_call_proc_staged_β
                        .size            n307_call_bx, .-n307_call_bx
                        .type            n308_var_bx, @function
n308_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_var_α:             mov              r11, 187
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 3480], rax;         jmp   n309_call_α
                        .size            n308_var_bx, .-n308_var_bx
                        .type            n309_call_bx, @function
n309_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_call_α:            mov              r11, 188
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
                                                                              jmp   n310_var_α
n309_call_β:            mov              r11, 188;                            jmp   solve$2F8_step
                        .size            n309_call_bx, .-n309_call_bx
                        .type            n310_var_bx, @function
n310_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             mov              r11, 189
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 3496], rax;         jmp   n311_call_α
                        .size            n310_var_bx, .-n310_var_bx
                        .type            n311_call_bx, @function
n311_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_call_α:            mov              r11, 190
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
                                                                              jmp   n312_call_α
n311_call_β:            mov              r11, 190;                            jmp   solve$2F8_step
                        .size            n311_call_bx, .-n311_call_bx
                        .type            n312_call_bx, @function
n312_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:            mov              r11, 191
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
                        cmp              al, 104;                             je    n292_call_proc_staged_β
                                                                              jmp   n313_var_α
n312_call_β:            mov              r11, 191;                            jmp   n292_call_proc_staged_β
                        .size            n312_call_bx, .-n312_call_bx
                        .type            n313_var_bx, @function
n313_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             mov              r11, 192
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 3288], rax;         jmp   n314_call_α
                        .size            n313_var_bx, .-n313_var_bx
                        .type            n314_call_bx, @function
n314_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_call_α:            mov              r11, 193
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
                                                                              jmp   n315_var_α
n314_call_β:            mov              r11, 193;                            jmp   solve$2F8_step
                        .size            n314_call_bx, .-n314_call_bx
                        .type            n315_var_bx, @function
n315_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:             mov              r11, 194
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 3304], rax;         jmp   n316_call_α
                        .size            n315_var_bx, .-n315_var_bx
                        .type            n316_call_bx, @function
n316_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_call_α:            mov              r11, 195
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
                                                                              jmp   n317_call_α
n316_call_β:            mov              r11, 195;                            jmp   solve$2F8_step
                        .size            n316_call_bx, .-n316_call_bx
                        .type            n317_call_bx, @function
n317_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:            mov              r11, 196
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
                        cmp              al, 104;                             je    n292_call_proc_staged_β
                                                                              jmp   n318_var_ref_α
n317_call_β:            mov              r11, 196;                            jmp   n292_call_proc_staged_β
                        .size            n317_call_bx, .-n317_call_bx
                        .type            n318_var_ref_bx, @function
n318_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              r11, 197
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7440]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx;         jmp   n319_var_ref_α
                        .size            n318_var_ref_bx, .-n318_var_ref_bx
                        .type            n319_var_ref_bx, @function
n319_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7376]
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx;         jmp   n320_var_ref_α
                        .size            n319_var_ref_bx, .-n319_var_ref_bx
                        .type            n320_var_ref_bx, @function
n320_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7344]
                        mov              qword ptr [rbp + 3168], rax
                        mov              qword ptr [rbp + 3176], rdx;         jmp   n321_var_ref_α
                        .size            n320_var_ref_bx, .-n320_var_ref_bx
                        .type            n321_var_ref_bx, @function
n321_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7408]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n322_var_ref_α
                        .size            n321_var_ref_bx, .-n321_var_ref_bx
                        .type            n322_var_ref_bx, @function
n322_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 201
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7296]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx;         jmp   n323_call_proc_staged_α
                        .size            n322_var_ref_bx, .-n322_var_ref_bx
                        .type            n323_call_proc_staged_bx, @function
n323_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_call_proc_staged_α:
                        mov              r11, 202
                        mov              qword ptr [rbp + 3104], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_584_200
                        mov              rax, qword ptr [rbp + 3136]
                        mov              rdx, qword ptr [rbp + 3144]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_584_201
.Lcall_proc_staged_α_584_200:
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
.Lcall_proc_staged_α_584_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_584_202
                        mov              rax, qword ptr [rbp + 3152]
                        mov              rdx, qword ptr [rbp + 3160]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_584_203
.Lcall_proc_staged_α_584_202:
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
.Lcall_proc_staged_α_584_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_584_204
                        mov              rax, qword ptr [rbp + 3168]
                        mov              rdx, qword ptr [rbp + 3176]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_584_205
.Lcall_proc_staged_α_584_204:
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
.Lcall_proc_staged_α_584_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_584_206
                        mov              rax, qword ptr [rbp + 3184]
                        mov              rdx, qword ptr [rbp + 3192]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_584_207
.Lcall_proc_staged_α_584_206:
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
.Lcall_proc_staged_α_584_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_584_208
                        mov              rax, qword ptr [rbp + 3200]
                        mov              rdx, qword ptr [rbp + 3208]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_584_209
.Lcall_proc_staged_α_584_208:
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
.Lcall_proc_staged_α_584_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_584_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_584_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_584_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_584_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_584_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_584_3:
                        mov              qword ptr [rbp + 3104], rax
                        mov              qword ptr [rbp + 3112], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_584_21
                        add              rsp, 32
.Lcall_proc_staged_α_584_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_584_2
.Lcall_proc_staged_α_584_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3104], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_584_2
.Lcall_proc_staged_α_584_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_584_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n292_call_proc_staged_β
.Lcall_proc_staged_α_584_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_584_29
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
.Lcall_proc_staged_α_584_29:
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              al, 104;                             je    n292_call_proc_staged_β
                                                                              jmp   n324_var_ref_α
n323_call_proc_staged_β:
                        mov              r11, 202
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_584_22
                        mov              rax, qword ptr [rbp + 3104]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_584_22
                        mov              rcx, qword ptr [rbp + 3112]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_584_22:
                                                                              jmp   n292_call_proc_staged_β
.Lcall_proc_staged_α_584_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3008], rax
                        mov              qword ptr [rbp + 3016], rdx
                        cmp              al, 104;                             je    n292_call_proc_staged_β
                                                                              jmp   n324_var_ref_α
.Lcall_proc_staged_α_584_0:
                        .quad            .Lcall_proc_staged_α_584_0_s
.Lcall_proc_staged_α_584_0_s:
                        .string          "sumdigit/5"
                        .size            n323_call_proc_staged_bx, .-n323_call_proc_staged_bx
                        .type            n324_var_ref_bx, @function
n324_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7312]
                        mov              qword ptr [rbp + 2992], rax
                        mov              qword ptr [rbp + 3000], rdx;         jmp   n325_call_proc_staged_α
                        .size            n324_var_ref_bx, .-n324_var_ref_bx
                        .type            n325_call_proc_staged_bx, @function
n325_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_call_proc_staged_α:
                        mov              r11, 204
                        mov              qword ptr [rbp + 2960], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_588_200
                        mov              rax, qword ptr [rbp + 2992]
                        mov              rdx, qword ptr [rbp + 3000]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_588_201
.Lcall_proc_staged_α_588_200:
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
.Lcall_proc_staged_α_588_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_588_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_588_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_588_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_588_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_588_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_588_3:
                        mov              qword ptr [rbp + 2960], rax
                        mov              qword ptr [rbp + 2968], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_588_21
                        add              rsp, 32
.Lcall_proc_staged_α_588_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_588_2
.Lcall_proc_staged_α_588_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2960], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_588_2
.Lcall_proc_staged_α_588_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_588_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n323_call_proc_staged_β
.Lcall_proc_staged_α_588_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_588_29
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
.Lcall_proc_staged_α_588_29:
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              al, 104;                             je    n323_call_proc_staged_β
                                                                              jmp   n326_var_α
n325_call_proc_staged_β:
                        mov              r11, 204
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_588_22
                        mov              rax, qword ptr [rbp + 2960]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_588_22
                        mov              rcx, qword ptr [rbp + 2968]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_588_22:
                                                                              jmp   n323_call_proc_staged_β
.Lcall_proc_staged_α_588_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              al, 104;                             je    n323_call_proc_staged_β
                                                                              jmp   n326_var_α
.Lcall_proc_staged_α_588_0:
                        .quad            .Lcall_proc_staged_α_588_0_s
.Lcall_proc_staged_α_588_0_s:
                        .string          "leftdigit/1"
                        .size            n325_call_proc_staged_bx, .-n325_call_proc_staged_bx
                        .type            n326_var_bx, @function
n326_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_var_α:             mov              r11, 205
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n327_call_α
                        .size            n326_var_bx, .-n326_var_bx
                        .type            n327_call_bx, @function
n327_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_call_α:            mov              r11, 206
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
                                                                              jmp   n328_var_α
n327_call_β:            mov              r11, 206;                            jmp   solve$2F8_step
                        .size            n327_call_bx, .-n327_call_bx
                        .type            n328_var_bx, @function
n328_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_var_α:             mov              r11, 207
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 2824], rax;         jmp   n329_call_α
                        .size            n328_var_bx, .-n328_var_bx
                        .type            n329_call_bx, @function
n329_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_call_α:            mov              r11, 208
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
                                                                              jmp   n330_call_α
n329_call_β:            mov              r11, 208;                            jmp   solve$2F8_step
                        .size            n329_call_bx, .-n329_call_bx
                        .type            n330_call_bx, @function
n330_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_call_α:            mov              r11, 209
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
                        cmp              al, 104;                             je    n325_call_proc_staged_β
                                                                              jmp   n331_var_α
n330_call_β:            mov              r11, 209;                            jmp   n325_call_proc_staged_β
                        .size            n330_call_bx, .-n330_call_bx
                        .type            n331_var_bx, @function
n331_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_α:             mov              r11, 210
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 2616], rax;         jmp   n332_call_α
                        .size            n331_var_bx, .-n331_var_bx
                        .type            n332_call_bx, @function
n332_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_call_α:            mov              r11, 211
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
                                                                              jmp   n333_var_α
n332_call_β:            mov              r11, 211;                            jmp   solve$2F8_step
                        .size            n332_call_bx, .-n332_call_bx
                        .type            n333_var_bx, @function
n333_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_var_α:             mov              r11, 212
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 2632], rax;         jmp   n334_call_α
                        .size            n333_var_bx, .-n333_var_bx
                        .type            n334_call_bx, @function
n334_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_call_α:            mov              r11, 213
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
                                                                              jmp   n335_call_α
n334_call_β:            mov              r11, 213;                            jmp   solve$2F8_step
                        .size            n334_call_bx, .-n334_call_bx
                        .type            n335_call_bx, @function
n335_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_call_α:            mov              r11, 214
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
                        cmp              al, 104;                             je    n325_call_proc_staged_β
                                                                              jmp   n336_var_α
n335_call_β:            mov              r11, 214;                            jmp   n325_call_proc_staged_β
                        .size            n335_call_bx, .-n335_call_bx
                        .type            n336_var_bx, @function
n336_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_var_α:             mov              r11, 215
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n337_call_α
                        .size            n336_var_bx, .-n336_var_bx
                        .type            n337_call_bx, @function
n337_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_call_α:            mov              r11, 216
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
                                                                              jmp   n338_var_α
n337_call_β:            mov              r11, 216;                            jmp   solve$2F8_step
                        .size            n337_call_bx, .-n337_call_bx
                        .type            n338_var_bx, @function
n338_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_var_α:             mov              r11, 217
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 2440], rax;         jmp   n339_call_α
                        .size            n338_var_bx, .-n338_var_bx
                        .type            n339_call_bx, @function
n339_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_call_α:            mov              r11, 218
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
                                                                              jmp   n340_call_α
n339_call_β:            mov              r11, 218;                            jmp   solve$2F8_step
                        .size            n339_call_bx, .-n339_call_bx
                        .type            n340_call_bx, @function
n340_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_call_α:            mov              r11, 219
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
                        cmp              al, 104;                             je    n325_call_proc_staged_β
                                                                              jmp   n341_var_α
n340_call_β:            mov              r11, 219;                            jmp   n325_call_proc_staged_β
                        .size            n340_call_bx, .-n340_call_bx
                        .type            n341_var_bx, @function
n341_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_var_α:             mov              r11, 220
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 2232], rax;         jmp   n342_call_α
                        .size            n341_var_bx, .-n341_var_bx
                        .type            n342_call_bx, @function
n342_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_call_α:            mov              r11, 221
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
                                                                              jmp   n343_var_α
n342_call_β:            mov              r11, 221;                            jmp   solve$2F8_step
                        .size            n342_call_bx, .-n342_call_bx
                        .type            n343_var_bx, @function
n343_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_var_α:             mov              r11, 222
                        mov              rax, qword ptr [rbp + 7392]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 7400]
                        mov              qword ptr [rbp + 2248], rax;         jmp   n344_call_α
                        .size            n343_var_bx, .-n343_var_bx
                        .type            n344_call_bx, @function
n344_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_call_α:            mov              r11, 223
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
                                                                              jmp   n345_call_α
n344_call_β:            mov              r11, 223;                            jmp   solve$2F8_step
                        .size            n344_call_bx, .-n344_call_bx
                        .type            n345_call_bx, @function
n345_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_call_α:            mov              r11, 224
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
                        cmp              al, 104;                             je    n325_call_proc_staged_β
                                                                              jmp   n346_var_α
n345_call_β:            mov              r11, 224;                            jmp   n325_call_proc_staged_β
                        .size            n345_call_bx, .-n345_call_bx
                        .type            n346_var_bx, @function
n346_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_var_α:             mov              r11, 225
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n347_call_α
                        .size            n346_var_bx, .-n346_var_bx
                        .type            n347_call_bx, @function
n347_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_call_α:            mov              r11, 226
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
                                                                              jmp   n348_var_α
n347_call_β:            mov              r11, 226;                            jmp   solve$2F8_step
                        .size            n347_call_bx, .-n347_call_bx
                        .type            n348_var_bx, @function
n348_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_var_α:             mov              r11, 227
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n349_call_α
                        .size            n348_var_bx, .-n348_var_bx
                        .type            n349_call_bx, @function
n349_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_call_α:            mov              r11, 228
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
                                                                              jmp   n350_call_α
n349_call_β:            mov              r11, 228;                            jmp   solve$2F8_step
                        .size            n349_call_bx, .-n349_call_bx
                        .type            n350_call_bx, @function
n350_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_call_α:            mov              r11, 229
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
                        cmp              al, 104;                             je    n325_call_proc_staged_β
                                                                              jmp   n351_var_α
n350_call_β:            mov              r11, 229;                            jmp   n325_call_proc_staged_β
                        .size            n350_call_bx, .-n350_call_bx
                        .type            n351_var_bx, @function
n351_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_var_α:             mov              r11, 230
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n352_call_α
                        .size            n351_var_bx, .-n351_var_bx
                        .type            n352_call_bx, @function
n352_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_call_α:            mov              r11, 231
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
                                                                              jmp   n353_var_α
n352_call_β:            mov              r11, 231;                            jmp   solve$2F8_step
                        .size            n352_call_bx, .-n352_call_bx
                        .type            n353_var_bx, @function
n353_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_var_α:             mov              r11, 232
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 1864], rax;         jmp   n354_call_α
                        .size            n353_var_bx, .-n353_var_bx
                        .type            n354_call_bx, @function
n354_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_call_α:            mov              r11, 233
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
                                                                              jmp   n355_call_α
n354_call_β:            mov              r11, 233;                            jmp   solve$2F8_step
                        .size            n354_call_bx, .-n354_call_bx
                        .type            n355_call_bx, @function
n355_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_call_α:            mov              r11, 234
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
                        cmp              al, 104;                             je    n325_call_proc_staged_β
                                                                              jmp   n356_var_ref_α
n355_call_β:            mov              r11, 234;                            jmp   n325_call_proc_staged_β
                        .size            n355_call_bx, .-n355_call_bx
                        .type            n356_var_ref_bx, @function
n356_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_var_ref_α:         mov              r11, 235
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7328]
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx;         jmp   n357_call_proc_staged_α
                        .size            n356_var_ref_bx, .-n356_var_ref_bx
                        .type            n357_call_proc_staged_bx, @function
n357_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_call_proc_staged_α:
                        mov              r11, 236
                        mov              qword ptr [rbp + 1728], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_634_200
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_634_201
.Lcall_proc_staged_α_634_200:
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
.Lcall_proc_staged_α_634_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_634_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_634_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_634_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_634_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_634_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_634_3:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_634_21
                        add              rsp, 32
.Lcall_proc_staged_α_634_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_634_2
.Lcall_proc_staged_α_634_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1728], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_634_2
.Lcall_proc_staged_α_634_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_634_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n325_call_proc_staged_β
.Lcall_proc_staged_α_634_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_634_29
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
.Lcall_proc_staged_α_634_29:
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              al, 104;                             je    n325_call_proc_staged_β
                                                                              jmp   n358_var_α
n357_call_proc_staged_β:
                        mov              r11, 236
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_634_22
                        mov              rax, qword ptr [rbp + 1728]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_634_22
                        mov              rcx, qword ptr [rbp + 1736]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_634_22:
                                                                              jmp   n325_call_proc_staged_β
.Lcall_proc_staged_α_634_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx
                        cmp              al, 104;                             je    n325_call_proc_staged_β
                                                                              jmp   n358_var_α
.Lcall_proc_staged_α_634_0:
                        .quad            .Lcall_proc_staged_α_634_0_s
.Lcall_proc_staged_α_634_0_s:
                        .string          "leftdigit/1"
                        .size            n357_call_proc_staged_bx, .-n357_call_proc_staged_bx
                        .type            n358_var_bx, @function
n358_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_var_α:             mov              r11, 237
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n359_call_α
                        .size            n358_var_bx, .-n358_var_bx
                        .type            n359_call_bx, @function
n359_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_call_α:            mov              r11, 238
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
                                                                              jmp   n360_var_α
n359_call_β:            mov              r11, 238;                            jmp   solve$2F8_step
                        .size            n359_call_bx, .-n359_call_bx
                        .type            n360_var_bx, @function
n360_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_var_α:             mov              r11, 239
                        mov              rax, qword ptr [rbp + 7312]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 7320]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n361_call_α
                        .size            n360_var_bx, .-n360_var_bx
                        .type            n361_call_bx, @function
n361_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_call_α:            mov              r11, 240
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
                                                                              jmp   n362_call_α
n361_call_β:            mov              r11, 240;                            jmp   solve$2F8_step
                        .size            n361_call_bx, .-n361_call_bx
                        .type            n362_call_bx, @function
n362_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_call_α:            mov              r11, 241
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
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   n363_var_α
n362_call_β:            mov              r11, 241;                            jmp   n357_call_proc_staged_β
                        .size            n362_call_bx, .-n362_call_bx
                        .type            n363_var_bx, @function
n363_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_var_α:             mov              r11, 242
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n364_call_α
                        .size            n363_var_bx, .-n363_var_bx
                        .type            n364_call_bx, @function
n364_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_call_α:            mov              r11, 243
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
                                                                              jmp   n365_var_α
n364_call_β:            mov              r11, 243;                            jmp   solve$2F8_step
                        .size            n364_call_bx, .-n364_call_bx
                        .type            n365_var_bx, @function
n365_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_var_α:             mov              r11, 244
                        mov              rax, qword ptr [rbp + 7344]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 7352]
                        mov              qword ptr [rbp + 1400], rax;         jmp   n366_call_α
                        .size            n365_var_bx, .-n365_var_bx
                        .type            n366_call_bx, @function
n366_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_call_α:            mov              r11, 245
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
                                                                              jmp   n367_call_α
n366_call_β:            mov              r11, 245;                            jmp   solve$2F8_step
                        .size            n366_call_bx, .-n366_call_bx
                        .type            n367_call_bx, @function
n367_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_call_α:            mov              r11, 246
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
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   n368_var_α
n367_call_β:            mov              r11, 246;                            jmp   n357_call_proc_staged_β
                        .size            n367_call_bx, .-n367_call_bx
                        .type            n368_var_bx, @function
n368_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_var_α:             mov              r11, 247
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n369_call_α
                        .size            n368_var_bx, .-n368_var_bx
                        .type            n369_call_bx, @function
n369_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_call_α:            mov              r11, 248
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
                                                                              jmp   n370_var_α
n369_call_β:            mov              r11, 248;                            jmp   solve$2F8_step
                        .size            n369_call_bx, .-n369_call_bx
                        .type            n370_var_bx, @function
n370_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_var_α:             mov              r11, 249
                        mov              rax, qword ptr [rbp + 7424]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 7432]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n371_call_α
                        .size            n370_var_bx, .-n370_var_bx
                        .type            n371_call_bx, @function
n371_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_call_α:            mov              r11, 250
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
                                                                              jmp   n372_call_α
n371_call_β:            mov              r11, 250;                            jmp   solve$2F8_step
                        .size            n371_call_bx, .-n371_call_bx
                        .type            n372_call_bx, @function
n372_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            mov              r11, 251
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
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   n373_var_α
n372_call_β:            mov              r11, 251;                            jmp   n357_call_proc_staged_β
                        .size            n372_call_bx, .-n372_call_bx
                        .type            n373_var_bx, @function
n373_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_var_α:             mov              r11, 252
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n374_call_α
                        .size            n373_var_bx, .-n373_var_bx
                        .type            n374_call_bx, @function
n374_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            mov              r11, 253
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
                                                                              jmp   n375_var_α
n374_call_β:            mov              r11, 253;                            jmp   solve$2F8_step
                        .size            n374_call_bx, .-n374_call_bx
                        .type            n375_var_bx, @function
n375_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_var_α:             mov              r11, 254
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n376_call_α
                        .size            n375_var_bx, .-n375_var_bx
                        .type            n376_call_bx, @function
n376_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_call_α:            mov              r11, 255
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
                                                                              jmp   n377_call_α
n376_call_β:            mov              r11, 255;                            jmp   solve$2F8_step
                        .size            n376_call_bx, .-n376_call_bx
                        .type            n377_call_bx, @function
n377_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_call_α:            mov              r11, 256
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
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   n378_var_α
n377_call_β:            mov              r11, 256;                            jmp   n357_call_proc_staged_β
                        .size            n377_call_bx, .-n377_call_bx
                        .type            n378_var_bx, @function
n378_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_var_α:             mov              r11, 257
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 808], rax;          jmp   n379_call_α
                        .size            n378_var_bx, .-n378_var_bx
                        .type            n379_call_bx, @function
n379_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_call_α:            mov              r11, 258
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
                                                                              jmp   n380_var_α
n379_call_β:            mov              r11, 258;                            jmp   solve$2F8_step
                        .size            n379_call_bx, .-n379_call_bx
                        .type            n380_var_bx, @function
n380_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_var_α:             mov              r11, 259
                        mov              rax, qword ptr [rbp + 7392]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 7400]
                        mov              qword ptr [rbp + 824], rax;          jmp   n381_call_α
                        .size            n380_var_bx, .-n380_var_bx
                        .type            n381_call_bx, @function
n381_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_call_α:            mov              r11, 260
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
                                                                              jmp   n382_call_α
n381_call_β:            mov              r11, 260;                            jmp   solve$2F8_step
                        .size            n381_call_bx, .-n381_call_bx
                        .type            n382_call_bx, @function
n382_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_call_α:            mov              r11, 261
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
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   n383_var_α
n382_call_β:            mov              r11, 261;                            jmp   n357_call_proc_staged_β
                        .size            n382_call_bx, .-n382_call_bx
                        .type            n383_var_bx, @function
n383_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_var_α:             mov              r11, 262
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 616], rax;          jmp   n384_call_α
                        .size            n383_var_bx, .-n383_var_bx
                        .type            n384_call_bx, @function
n384_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_call_α:            mov              r11, 263
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
                                                                              jmp   n385_var_α
n384_call_β:            mov              r11, 263;                            jmp   solve$2F8_step
                        .size            n384_call_bx, .-n384_call_bx
                        .type            n385_var_bx, @function
n385_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_var_α:             mov              r11, 264
                        mov              rax, qword ptr [rbp + 7376]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 7384]
                        mov              qword ptr [rbp + 632], rax;          jmp   n386_call_α
                        .size            n385_var_bx, .-n385_var_bx
                        .type            n386_call_bx, @function
n386_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_call_α:            mov              r11, 265
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
                                                                              jmp   n387_call_α
n386_call_β:            mov              r11, 265;                            jmp   solve$2F8_step
                        .size            n386_call_bx, .-n386_call_bx
                        .type            n387_call_bx, @function
n387_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_call_α:            mov              r11, 266
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
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   n388_var_α
n387_call_β:            mov              r11, 266;                            jmp   n357_call_proc_staged_β
                        .size            n387_call_bx, .-n387_call_bx
                        .type            n388_var_bx, @function
n388_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_var_α:             mov              r11, 267
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 424], rax;          jmp   n389_call_α
                        .size            n388_var_bx, .-n388_var_bx
                        .type            n389_call_bx, @function
n389_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_call_α:            mov              r11, 268
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
                                                                              jmp   n390_var_α
n389_call_β:            mov              r11, 268;                            jmp   solve$2F8_step
                        .size            n389_call_bx, .-n389_call_bx
                        .type            n390_var_bx, @function
n390_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_var_α:             mov              r11, 269
                        mov              rax, qword ptr [rbp + 7360]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 7368]
                        mov              qword ptr [rbp + 440], rax;          jmp   n391_call_α
                        .size            n390_var_bx, .-n390_var_bx
                        .type            n391_call_bx, @function
n391_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_call_α:            mov              r11, 270
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
                                                                              jmp   n392_call_α
n391_call_β:            mov              r11, 270;                            jmp   solve$2F8_step
                        .size            n391_call_bx, .-n391_call_bx
                        .type            n392_call_bx, @function
n392_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_call_α:            mov              r11, 271
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
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   n393_var_ref_α
n392_call_β:            mov              r11, 271;                            jmp   n357_call_proc_staged_β
                        .size            n392_call_bx, .-n392_call_bx
                        .type            n393_var_ref_bx, @function
n393_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_var_ref_α:         mov              r11, 272
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7296]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n394_var_ref_α
                        .size            n393_var_ref_bx, .-n393_var_ref_bx
                        .type            n394_var_ref_bx, @function
n394_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_var_ref_α:         mov              r11, 273
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7312]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n395_var_ref_α
                        .size            n394_var_ref_bx, .-n394_var_ref_bx
                        .type            n395_var_ref_bx, @function
n395_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_var_ref_α:         mov              r11, 274
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7328]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n396_var_ref_α
                        .size            n395_var_ref_bx, .-n395_var_ref_bx
                        .type            n396_var_ref_bx, @function
n396_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_var_ref_α:         mov              r11, 275
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7344]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n397_var_ref_α
                        .size            n396_var_ref_bx, .-n396_var_ref_bx
                        .type            n397_var_ref_bx, @function
n397_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_var_ref_α:         mov              r11, 276
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 7328]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n398_call_proc_staged_α
                        .size            n397_var_ref_bx, .-n397_var_ref_bx
                        .type            n398_call_proc_staged_bx, @function
n398_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_call_proc_staged_α:
                        mov              r11, 277
                        mov              qword ptr [rbp + 240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_695_200
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_695_201
.Lcall_proc_staged_α_695_200:
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
.Lcall_proc_staged_α_695_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_695_202
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_695_203
.Lcall_proc_staged_α_695_202:
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
.Lcall_proc_staged_α_695_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_695_204
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_695_205
.Lcall_proc_staged_α_695_204:
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
.Lcall_proc_staged_α_695_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_695_206
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_695_207
.Lcall_proc_staged_α_695_206:
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
.Lcall_proc_staged_α_695_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_695_208
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_695_209
.Lcall_proc_staged_α_695_208:
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
.Lcall_proc_staged_α_695_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_695_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_695_1
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_695_99
                        mov              r10, qword ptr [rbp + 7512]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_695_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_695_99
                        mov              rcx, qword ptr [rbp + 7528]
                        mov              rdx, qword ptr [rbp + 7536]
                        lea              rsp, [rbp + 7552]
                        mov              rbp, qword ptr [rbp + 7544];         jmp   rax
.Lcall_proc_staged_α_695_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_695_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_695_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_695_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_695_3:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_695_21
                        add              rsp, 32
.Lcall_proc_staged_α_695_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_695_2
.Lcall_proc_staged_α_695_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 240], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_695_2
.Lcall_proc_staged_α_695_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_695_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n357_call_proc_staged_β
.Lcall_proc_staged_α_695_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_695_29
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
.Lcall_proc_staged_α_695_29:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   solve$2F8_ret0
n398_call_proc_staged_β:
                        mov              r11, 277
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_695_22
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_695_22
                        mov              rcx, qword ptr [rbp + 248]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_695_22:
                                                                              jmp   n357_call_proc_staged_β
.Lcall_proc_staged_α_695_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n357_call_proc_staged_β
                                                                              jmp   solve$2F8_ret0
.Lcall_proc_staged_α_695_0:
                        .quad            .Lcall_proc_staged_α_695_0_s
.Lcall_proc_staged_α_695_0_s:
                        .string          "sumdigit/5"
                        .size            n398_call_proc_staged_bx, .-n398_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_ret0:
                        lea              rax, [rip + n398_call_proc_staged_β]
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
                        .type            n696_var_ref_bx, @function
n696_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n696_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n697_lit_integer_α
                        .size            n696_var_ref_bx, .-n696_var_ref_bx
                        .type            n697_lit_integer_bx, @function
n697_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n697_lit_integer_α:     mov              r11, 279
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_725_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n698_call_α
.Llit_integer_α_725_0:  .quad            1
                        .size            n697_lit_integer_bx, .-n697_lit_integer_bx
                        .type            n698_call_bx, @function
n698_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n698_call_α:            mov              r11, 280
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
n698_call_β:            mov              r11, 280;                            jmp   leftdigit$2F1_step
                        .size            n698_call_bx, .-n698_call_bx
                        .type            n699_var_ref_bx, @function
n699_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n699_var_ref_α:         mov              r11, 281
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n700_lit_integer_α
                        .size            n699_var_ref_bx, .-n699_var_ref_bx
                        .type            n700_lit_integer_bx, @function
n700_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n700_lit_integer_α:     mov              r11, 282
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_729_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n701_call_α
.Llit_integer_α_729_0:  .quad            2
                        .size            n700_lit_integer_bx, .-n700_lit_integer_bx
                        .type            n701_call_bx, @function
n701_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n701_call_α:            mov              r11, 283
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
n701_call_β:            mov              r11, 283;                            jmp   leftdigit$2F1_step
                        .size            n701_call_bx, .-n701_call_bx
                        .type            n702_var_ref_bx, @function
n702_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n702_var_ref_α:         mov              r11, 284
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n703_lit_integer_α
                        .size            n702_var_ref_bx, .-n702_var_ref_bx
                        .type            n703_lit_integer_bx, @function
n703_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n703_lit_integer_α:     mov              r11, 285
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_733_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n704_call_α
.Llit_integer_α_733_0:  .quad            3
                        .size            n703_lit_integer_bx, .-n703_lit_integer_bx
                        .type            n704_call_bx, @function
n704_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n704_call_α:            mov              r11, 286
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
n704_call_β:            mov              r11, 286;                            jmp   leftdigit$2F1_step
                        .size            n704_call_bx, .-n704_call_bx
                        .type            n705_var_ref_bx, @function
n705_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n705_var_ref_α:         mov              r11, 287
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n706_lit_integer_α
                        .size            n705_var_ref_bx, .-n705_var_ref_bx
                        .type            n706_lit_integer_bx, @function
n706_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n706_lit_integer_α:     mov              r11, 288
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_737_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n707_call_α
.Llit_integer_α_737_0:  .quad            4
                        .size            n706_lit_integer_bx, .-n706_lit_integer_bx
                        .type            n707_call_bx, @function
n707_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n707_call_α:            mov              r11, 289
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
n707_call_β:            mov              r11, 289;                            jmp   leftdigit$2F1_step
                        .size            n707_call_bx, .-n707_call_bx
                        .type            n708_var_ref_bx, @function
n708_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n708_var_ref_α:         mov              r11, 290
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n709_lit_integer_α
                        .size            n708_var_ref_bx, .-n708_var_ref_bx
                        .type            n709_lit_integer_bx, @function
n709_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n709_lit_integer_α:     mov              r11, 291
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_741_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n710_call_α
.Llit_integer_α_741_0:  .quad            5
                        .size            n709_lit_integer_bx, .-n709_lit_integer_bx
                        .type            n710_call_bx, @function
n710_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n710_call_α:            mov              r11, 292
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
n710_call_β:            mov              r11, 292;                            jmp   leftdigit$2F1_step
                        .size            n710_call_bx, .-n710_call_bx
                        .type            n711_var_ref_bx, @function
n711_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n711_var_ref_α:         mov              r11, 293
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n712_lit_integer_α
                        .size            n711_var_ref_bx, .-n711_var_ref_bx
                        .type            n712_lit_integer_bx, @function
n712_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n712_lit_integer_α:     mov              r11, 294
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_745_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n713_call_α
.Llit_integer_α_745_0:  .quad            6
                        .size            n712_lit_integer_bx, .-n712_lit_integer_bx
                        .type            n713_call_bx, @function
n713_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n713_call_α:            mov              r11, 295
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
n713_call_β:            mov              r11, 295;                            jmp   leftdigit$2F1_step
                        .size            n713_call_bx, .-n713_call_bx
                        .type            n714_var_ref_bx, @function
n714_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n714_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n715_lit_integer_α
                        .size            n714_var_ref_bx, .-n714_var_ref_bx
                        .type            n715_lit_integer_bx, @function
n715_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n715_lit_integer_α:     mov              r11, 297
                        mov              qword ptr [rbp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_749_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n716_call_α
.Llit_integer_α_749_0:  .quad            7
                        .size            n715_lit_integer_bx, .-n715_lit_integer_bx
                        .type            n716_call_bx, @function
n716_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n716_call_α:            mov              r11, 298
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
n716_call_β:            mov              r11, 298;                            jmp   leftdigit$2F1_step
                        .size            n716_call_bx, .-n716_call_bx
                        .type            n717_var_ref_bx, @function
n717_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n717_var_ref_α:         mov              r11, 299
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n718_lit_integer_α
                        .size            n717_var_ref_bx, .-n717_var_ref_bx
                        .type            n718_lit_integer_bx, @function
n718_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n718_lit_integer_α:     mov              r11, 300
                        mov              qword ptr [rbp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_753_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n719_call_α
.Llit_integer_α_753_0:  .quad            8
                        .size            n718_lit_integer_bx, .-n718_lit_integer_bx
                        .type            n719_call_bx, @function
n719_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n719_call_α:            mov              r11, 301
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
n719_call_β:            mov              r11, 301;                            jmp   leftdigit$2F1_step
                        .size            n719_call_bx, .-n719_call_bx
                        .type            n720_var_ref_bx, @function
n720_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n720_var_ref_α:         mov              r11, 302
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n721_lit_integer_α
                        .size            n720_var_ref_bx, .-n720_var_ref_bx
                        .type            n721_lit_integer_bx, @function
n721_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n721_lit_integer_α:     mov              r11, 303
                        mov              qword ptr [rbp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_757_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n722_call_α
.Llit_integer_α_757_0:  .quad            9
                        .size            n721_lit_integer_bx, .-n721_lit_integer_bx
                        .type            n722_call_bx, @function
n722_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n722_call_α:            mov              r11, 304
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
n722_call_β:            mov              r11, 304;                            jmp   leftdigit$2F1_step
                        .size            n722_call_bx, .-n722_call_bx
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
                                                                              jmp   n699_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt2:
                        lea              rax, [rip + leftdigit$2F1_alt3]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n702_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt3:
                        lea              rax, [rip + leftdigit$2F1_alt4]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n705_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt4:
                        lea              rax, [rip + leftdigit$2F1_alt5]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n708_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt5:
                        lea              rax, [rip + leftdigit$2F1_alt6]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n711_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt6:
                        lea              rax, [rip + leftdigit$2F1_alt7]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n714_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt7:
                        lea              rax, [rip + leftdigit$2F1_alt8]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n717_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt8:
                        xor              eax, eax
                        mov              qword ptr [rbp + 920], rax
                        mov              r13, qword ptr [rbp + 936]
                                                                              jmp   n720_var_ref_α
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
                        sub              rsp, 3152
                        mov              qword ptr [rsp + 3128], rcx
                        mov              qword ptr [rsp + 3136], rdx
                        mov              qword ptr [rsp + 3144], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 3152]
                        mov              qword ptr [rsp + 3120], rax
                        mov              qword ptr [rsp + 3112], r13
                        mov              qword ptr [rsp + 3104], 0
                        mov              qword ptr [rsp + 3096], 0
                        mov              qword ptr [rsp + 3088], r12
                        mov              rdi, rsp
                        mov              esi, 2832
                        mov              edx, 3088
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n759_lit_string_bx, @function
n759_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n759_lit_string_α:      mov              r11, 305
                        mov              qword ptr [rbp + 2816], 2            # result
                        mov              dword ptr [rbp + 2820], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_761_0]
                        mov              qword ptr [rbp + 2824], rax;         jmp   n760_call_α
.Llit_string_α_761_0:   .quad            .Llit_string_α_761_0_s
.Llit_string_α_761_0_s: .string          "wall_us/1"
                        .size            n759_lit_string_bx, .-n759_lit_string_bx
                        .type            n760_call_bx, @function
n760_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n760_call_α:            mov              r11, 306
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2784], rax
                        mov              rax, qword ptr [rbp + 2824]
                        mov              qword ptr [rbp + 2792], rax
                        lea              rdi, [rbp + 2784]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2768], rax
                        mov              qword ptr [rbp + 2776], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   main$2F0_step
n760_call_β:            mov              r11, 306;                            jmp   main$2F0_step
                        .size            n760_call_bx, .-n760_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 3088]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3104], 0
                        mov              qword ptr [rbp + 2912], 0
                        mov              qword ptr [rbp + 2920], 0
                        mov              qword ptr [rbp + 2880], 0
                        mov              qword ptr [rbp + 2888], 0
                        mov              qword ptr [rbp + 3056], 0
                        mov              qword ptr [rbp + 3064], 0
                        mov              qword ptr [rbp + 3040], 0
                        mov              qword ptr [rbp + 3048], 0
                        mov              qword ptr [rbp + 3024], 0
                        mov              qword ptr [rbp + 3032], 0
                        mov              qword ptr [rbp + 3008], 0
                        mov              qword ptr [rbp + 3016], 0
                        mov              qword ptr [rbp + 2992], 0
                        mov              qword ptr [rbp + 3000], 0
                        mov              qword ptr [rbp + 2976], 0
                        mov              qword ptr [rbp + 2984], 0
                        mov              qword ptr [rbp + 2960], 0
                        mov              qword ptr [rbp + 2968], 0
                        mov              qword ptr [rbp + 2944], 0
                        mov              qword ptr [rbp + 2952], 0
                        mov              qword ptr [rbp + 2928], 0
                        mov              qword ptr [rbp + 2936], 0
                        mov              qword ptr [rbp + 2896], 0
                        mov              qword ptr [rbp + 2904], 0
                        mov              qword ptr [rbp + 2864], 0
                        mov              qword ptr [rbp + 2872], 0
                        mov              qword ptr [rbp + 2848], 0
                        mov              qword ptr [rbp + 2856], 0
                        mov              qword ptr [rbp + 2832], 0
                        mov              qword ptr [rbp + 2840], 0
                        mov              rax, qword ptr [rbp + 3096]
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
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3104], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 3128]
                        mov              rax, qword ptr [rbp + 3112]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 3144];         jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 3152]
                        mov              rbp, qword ptr [rbp + 3144];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 3136]
                        mov              r13, qword ptr [rbp + 3112]
                        lea              rsp, [rbp + 3152]
                        mov              rbp, qword ptr [rbp + 3144];         jmp   rcx
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
                        .type            n763_call_proc_staged_bx, @function
n763_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n763_call_proc_staged_α:
                        mov              r11, 307
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_765_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_765_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_765_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_765_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_765_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_765_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_765_21
                        add              rsp, 32
.Lcall_proc_staged_α_765_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_765_2
.Lcall_proc_staged_α_765_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_765_2
.Lcall_proc_staged_α_765_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_765_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_765_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_765_29
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
.Lcall_proc_staged_α_765_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n763_call_proc_staged_β:
                        mov              r11, 307
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_765_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_765_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_765_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_765_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_765_0:
                        .quad            .Lcall_proc_staged_α_765_0_s
.Lcall_proc_staged_α_765_0_s:
                        .string          "main/0"
                        .size            n763_call_proc_staged_bx, .-n763_call_proc_staged_bx
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
                        .long            2064
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
                        .long            3072
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
