                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sumdigit$2F5:
                        sub              rsp, 1664
                        mov              qword ptr [rsp + 1640], rcx
                        mov              qword ptr [rsp + 1648], rdx
                        mov              qword ptr [rsp + 1656], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1664]
                        mov              qword ptr [rsp + 1632], rax
                        mov              qword ptr [rsp + 1624], r13
                        mov              qword ptr [rsp + 1616], 0
                        mov              qword ptr [rsp + 1608], 0
                        mov              qword ptr [rsp + 1600], r12
                        mov              rdi, rsp
                        mov              esi, 1488
                        mov              edx, 1600
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
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n1_var_ref_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1536]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n2_call_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
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
                                                                              jmp   n3_var_ref_α
n2_call_β:              mov              r11, 3;                              jmp   sumdigit$2F5_step
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n4_var_ref_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_var_ref_bx, @function
n4_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1552]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n5_call_α
                        .size            n4_var_ref_bx, .-n4_var_ref_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              mov              r11, 6
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
                                                                              jmp   n6_var_ref_α
n5_call_β:              mov              r11, 6;                              jmp   sumdigit$2F5_step
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n7_var_ref_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1568]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n8_call_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_call_bx, @function
n8_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              mov              r11, 9
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
                                                                              jmp   n9_var_ref_α
n8_call_β:              mov              r11, 9;                              jmp   sumdigit$2F5_step
                        .size            n8_call_bx, .-n8_call_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n10_var_ref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n11_call_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_call_bx, @function
n11_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:             mov              r11, 12
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
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
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n13_var_ref_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n14_call_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_call_bx, @function
n14_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             mov              r11, 15
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n15_var_ref_α
n14_call_β:             mov              r11, 15;                             jmp   sumdigit$2F5_step
                        .size            n14_call_bx, .-n14_call_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1520]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n16_var_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_var_bx, @function
n16_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_α:              mov              r11, 17
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 968], rax;          jmp   n17_var_α
                        .size            n16_var_bx, .-n16_var_bx
                        .type            n17_var_bx, @function
n17_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_α:              mov              r11, 18
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 984], rax;          jmp   n18_call_α
                        .size            n17_var_bx, .-n17_var_bx
                        .type            n18_call_bx, @function
n18_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_call_α:             mov              r11, 19
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
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n19_var_α
n18_call_β:             mov              r11, 19;                             jmp   sumdigit$2F5_step
                        .size            n18_call_bx, .-n18_call_bx
                        .type            n19_var_bx, @function
n19_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_α:              mov              r11, 20
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n20_call_α
                        .size            n19_var_bx, .-n19_var_bx
                        .type            n20_call_bx, @function
n20_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             mov              r11, 21
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n21_call_α
n20_call_β:             mov              r11, 21;                             jmp   sumdigit$2F5_step
                        .size            n20_call_bx, .-n20_call_bx
                        .type            n21_call_bx, @function
n21_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:             mov              r11, 22
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    sumdigit$2F5_step
                                                                              jmp   n22_bound_α
n21_call_β:             mov              r11, 22;                             jmp   sumdigit$2F5_step
                        .size            n21_call_bx, .-n21_call_bx
                        .type            n22_bound_bx, @function
n22_bound_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_bound_α:            mov              r11, 23
                        mov              qword ptr [rbp + 128], r12
                        lea              rdi, [rbp + 1600]
                        mov              rsi, rbp
                        call             rt_pl_disj_open@PLT;                 jmp   n23_var_α
                        .size            n22_bound_bx, .-n22_bound_bx
                        .type            n23_var_bx, @function
n23_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_α:              mov              r11, 24
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 728], rax;          jmp   n24_lit_integer_α
                        .size            n23_var_bx, .-n23_var_bx
                        .type            n24_lit_integer_bx, @function
n24_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_lit_integer_α:      mov              r11, 25
                        mov              qword ptr [rbp + 736], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_85_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n25_call_α
.Llit_integer_α_85_0:   .quad            10
                        .size            n24_lit_integer_bx, .-n24_lit_integer_bx
                        .type            n25_call_bx, @function
n25_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:             mov              r11, 26
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_lt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    n33_unmark_α
                                                                              jmp   n26_var_ref_α
n25_call_β:             mov              r11, 26;                             jmp   n33_unmark_α
                        .size            n25_call_bx, .-n25_call_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n27_var_ref_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1520]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx;          jmp   n28_call_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_call_bx, @function
n28_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:             mov              r11, 29
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
                        cmp              al, 104;                             je    n43_unmark_α
                                                                              jmp   n29_var_ref_α
n28_call_β:             mov              r11, 29;                             jmp   n43_unmark_α
                        .size            n28_call_bx, .-n28_call_bx
                        .type            n29_var_ref_bx, @function
n29_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n30_lit_integer_α
                        .size            n29_var_ref_bx, .-n29_var_ref_bx
                        .type            n30_lit_integer_bx, @function
n30_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_integer_α:      mov              r11, 31
                        mov              qword ptr [rbp + 272], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_94_0]
                        mov              qword ptr [rbp + 280], rax;          jmp   n31_call_α
.Llit_integer_α_94_0:   .quad            0
                        .size            n30_lit_integer_bx, .-n30_lit_integer_bx
                        .type            n31_call_bx, @function
n31_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_call_α:             mov              r11, 32
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
                        cmp              al, 104;                             je    n43_unmark_α
                                                                              jmp   n32_move_label_α
n31_call_β:             mov              r11, 32;                             jmp   n43_unmark_α
                        .size            n31_call_bx, .-n31_call_bx
                        .type            n32_move_label_bx, @function
n32_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_move_label_α:       mov              r11, 33
                        lea              rax, [rip + n44_indirect_goto_α]
                        mov              qword ptr [rbp + 112], rax;          jmp   sumdigit$2F5_γ
                        .size            n32_move_label_bx, .-n32_move_label_bx
                        .type            n33_unmark_bx, @function
n33_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_unmark_α:           mov              r11, 34
                        mov              rdi, qword ptr [rbp + 128]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   sumdigit$2F5_step
                                                                              jmp   n34_var_ref_α
                        .size            n33_unmark_bx, .-n33_unmark_bx
                        .type            n34_var_ref_bx, @function
n34_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1504]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n35_var_α
                        .size            n34_var_ref_bx, .-n34_var_ref_bx
                        .type            n35_var_bx, @function
n35_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_α:              mov              r11, 36
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 632], rax;          jmp   n36_lit_integer_α
                        .size            n35_var_bx, .-n35_var_bx
                        .type            n36_lit_integer_bx, @function
n36_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              r11, 37
                        mov              qword ptr [rbp + 640], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_104_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n37_call_α
.Llit_integer_α_104_0:  .quad            10
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_call_bx, @function
n37_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:             mov              r11, 38
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
                        cmp              al, 104;                             je    n43_unmark_α
                                                                              jmp   n38_call_α
n37_call_β:             mov              r11, 38;                             jmp   n43_unmark_α
                        .size            n37_call_bx, .-n37_call_bx
                        .type            n38_call_bx, @function
n38_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             mov              r11, 39
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
                        cmp              al, 104;                             je    n43_unmark_α
                                                                              jmp   n39_var_ref_α
n38_call_β:             mov              r11, 39;                             jmp   n43_unmark_α
                        .size            n38_call_bx, .-n38_call_bx
                        .type            n39_var_ref_bx, @function
n39_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1488]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n40_lit_integer_α
                        .size            n39_var_ref_bx, .-n39_var_ref_bx
                        .type            n40_lit_integer_bx, @function
n40_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_lit_integer_α:      mov              r11, 41
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_109_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n41_call_α
.Llit_integer_α_109_0:  .quad            1
                        .size            n40_lit_integer_bx, .-n40_lit_integer_bx
                        .type            n41_call_bx, @function
n41_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_call_α:             mov              r11, 42
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
                        cmp              al, 104;                             je    n43_unmark_α
                                                                              jmp   n42_move_label_α
n41_call_β:             mov              r11, 42;                             jmp   n43_unmark_α
                        .size            n41_call_bx, .-n41_call_bx
                        .type            n42_move_label_bx, @function
n42_move_label_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_move_label_α:       mov              r11, 43
                        lea              rax, [rip + n44_indirect_goto_α]
                        mov              qword ptr [rbp + 112], rax;          jmp   sumdigit$2F5_γ
                        .size            n42_move_label_bx, .-n42_move_label_bx
                        .type            n43_unmark_bx, @function
n43_unmark_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_unmark_α:           mov              r11, 44
                        mov              rdi, qword ptr [rbp + 128]
                        call             rt_pl_tr_unwind@PLT
                        test             r15, r15;                            jne   sumdigit$2F5_step
                                                                              jmp   n44_indirect_goto_α
                        .size            n43_unmark_bx, .-n43_unmark_bx
                        .type            n44_indirect_goto_bx, @function
n44_indirect_goto_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_indirect_goto_α:    mov              r11, 45;                             jmp   sumdigit$2F5_step
n44_indirect_goto_β:    mov              r11, 45;                             jmp   qword ptr [rbp + 112]
                        .size            n44_indirect_goto_bx, .-n44_indirect_goto_bx
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_ret0:
                        lea              rax, [rip + n44_indirect_goto_β]
                        mov              qword ptr [rbp + 1616], rax
                                                                              jmp   sumdigit$2F5_γ
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_step:
                        mov              rdi, qword ptr [rbp + 1600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1616], 0
                        mov              qword ptr [rbp + 1536], 0
                        mov              qword ptr [rbp + 1544], 0
                        mov              qword ptr [rbp + 1552], 0
                        mov              qword ptr [rbp + 1560], 0
                        mov              qword ptr [rbp + 1568], 0
                        mov              qword ptr [rbp + 1576], 0
                        mov              qword ptr [rbp + 1504], 0
                        mov              qword ptr [rbp + 1512], 0
                        mov              qword ptr [rbp + 1488], 0
                        mov              qword ptr [rbp + 1496], 0
                        mov              qword ptr [rbp + 1520], 0
                        mov              qword ptr [rbp + 1528], 0
                        mov              rax, qword ptr [rbp + 1608]
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
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1616], 0
                        test             rax, rax
                                                                              jne   sumdigit$2F5_βres
                                                                              jmp   sumdigit$2F5_step
sumdigit$2F5_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1640]
                        mov              rax, qword ptr [rbp + 1624]
                        cmp              r13, rax;                            je    sumdigit$2F5_altdet
                        lea              rdx, [rip + sumdigit$2F5_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1656];         jmp   rcx
sumdigit$2F5_altdet:    xor              eax, eax
                        lea              rsp, [rbp + 1664]
                        mov              rbp, qword ptr [rbp + 1656];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sumdigit$2F5_ω:
                        mov              rcx, qword ptr [rbp + 1648]
                        mov              r13, qword ptr [rbp + 1624]
                        lea              rsp, [rbp + 1664]
                        mov              rbp, qword ptr [rbp + 1656];         jmp   rcx
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
                        .type            n117_var_ref_bx, @function
n117_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n117_var_ref_α:         mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n118_lit_integer_α
                        .size            n117_var_ref_bx, .-n117_var_ref_bx
                        .type            n118_lit_integer_bx, @function
n118_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n118_lit_integer_α:     mov              r11, 47
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_149_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n119_call_α
.Llit_integer_α_149_0:  .quad            0
                        .size            n118_lit_integer_bx, .-n118_lit_integer_bx
                        .type            n119_call_bx, @function
n119_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n119_call_α:            mov              r11, 48
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
n119_call_β:            mov              r11, 48;                             jmp   digit$2F1_step
                        .size            n119_call_bx, .-n119_call_bx
                        .type            n120_var_ref_bx, @function
n120_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n120_var_ref_α:         mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n121_lit_integer_α
                        .size            n120_var_ref_bx, .-n120_var_ref_bx
                        .type            n121_lit_integer_bx, @function
n121_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n121_lit_integer_α:     mov              r11, 50
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_153_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n122_call_α
.Llit_integer_α_153_0:  .quad            1
                        .size            n121_lit_integer_bx, .-n121_lit_integer_bx
                        .type            n122_call_bx, @function
n122_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n122_call_α:            mov              r11, 51
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
n122_call_β:            mov              r11, 51;                             jmp   digit$2F1_step
                        .size            n122_call_bx, .-n122_call_bx
                        .type            n123_var_ref_bx, @function
n123_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n123_var_ref_α:         mov              r11, 52
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n124_lit_integer_α
                        .size            n123_var_ref_bx, .-n123_var_ref_bx
                        .type            n124_lit_integer_bx, @function
n124_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_integer_α:     mov              r11, 53
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_157_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n125_call_α
.Llit_integer_α_157_0:  .quad            2
                        .size            n124_lit_integer_bx, .-n124_lit_integer_bx
                        .type            n125_call_bx, @function
n125_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_call_α:            mov              r11, 54
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
n125_call_β:            mov              r11, 54;                             jmp   digit$2F1_step
                        .size            n125_call_bx, .-n125_call_bx
                        .type            n126_var_ref_bx, @function
n126_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n126_var_ref_α:         mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n127_lit_integer_α
                        .size            n126_var_ref_bx, .-n126_var_ref_bx
                        .type            n127_lit_integer_bx, @function
n127_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n127_lit_integer_α:     mov              r11, 56
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_161_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n128_call_α
.Llit_integer_α_161_0:  .quad            3
                        .size            n127_lit_integer_bx, .-n127_lit_integer_bx
                        .type            n128_call_bx, @function
n128_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_call_α:            mov              r11, 57
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
n128_call_β:            mov              r11, 57;                             jmp   digit$2F1_step
                        .size            n128_call_bx, .-n128_call_bx
                        .type            n129_var_ref_bx, @function
n129_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n129_var_ref_α:         mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n130_lit_integer_α
                        .size            n129_var_ref_bx, .-n129_var_ref_bx
                        .type            n130_lit_integer_bx, @function
n130_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n130_lit_integer_α:     mov              r11, 59
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_165_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n131_call_α
.Llit_integer_α_165_0:  .quad            4
                        .size            n130_lit_integer_bx, .-n130_lit_integer_bx
                        .type            n131_call_bx, @function
n131_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n131_call_α:            mov              r11, 60
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
n131_call_β:            mov              r11, 60;                             jmp   digit$2F1_step
                        .size            n131_call_bx, .-n131_call_bx
                        .type            n132_var_ref_bx, @function
n132_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n132_var_ref_α:         mov              r11, 61
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n133_lit_integer_α
                        .size            n132_var_ref_bx, .-n132_var_ref_bx
                        .type            n133_lit_integer_bx, @function
n133_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n133_lit_integer_α:     mov              r11, 62
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_169_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n134_call_α
.Llit_integer_α_169_0:  .quad            5
                        .size            n133_lit_integer_bx, .-n133_lit_integer_bx
                        .type            n134_call_bx, @function
n134_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n134_call_α:            mov              r11, 63
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
n134_call_β:            mov              r11, 63;                             jmp   digit$2F1_step
                        .size            n134_call_bx, .-n134_call_bx
                        .type            n135_var_ref_bx, @function
n135_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n135_var_ref_α:         mov              r11, 64
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n136_lit_integer_α
                        .size            n135_var_ref_bx, .-n135_var_ref_bx
                        .type            n136_lit_integer_bx, @function
n136_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_lit_integer_α:     mov              r11, 65
                        mov              qword ptr [rbp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_173_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n137_call_α
.Llit_integer_α_173_0:  .quad            6
                        .size            n136_lit_integer_bx, .-n136_lit_integer_bx
                        .type            n137_call_bx, @function
n137_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_call_α:            mov              r11, 66
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
n137_call_β:            mov              r11, 66;                             jmp   digit$2F1_step
                        .size            n137_call_bx, .-n137_call_bx
                        .type            n138_var_ref_bx, @function
n138_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_var_ref_α:         mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n139_lit_integer_α
                        .size            n138_var_ref_bx, .-n138_var_ref_bx
                        .type            n139_lit_integer_bx, @function
n139_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_lit_integer_α:     mov              r11, 68
                        mov              qword ptr [rbp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_177_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n140_call_α
.Llit_integer_α_177_0:  .quad            7
                        .size            n139_lit_integer_bx, .-n139_lit_integer_bx
                        .type            n140_call_bx, @function
n140_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_call_α:            mov              r11, 69
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
n140_call_β:            mov              r11, 69;                             jmp   digit$2F1_step
                        .size            n140_call_bx, .-n140_call_bx
                        .type            n141_var_ref_bx, @function
n141_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_var_ref_α:         mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n142_lit_integer_α
                        .size            n141_var_ref_bx, .-n141_var_ref_bx
                        .type            n142_lit_integer_bx, @function
n142_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_integer_α:     mov              r11, 71
                        mov              qword ptr [rbp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_181_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n143_call_α
.Llit_integer_α_181_0:  .quad            8
                        .size            n142_lit_integer_bx, .-n142_lit_integer_bx
                        .type            n143_call_bx, @function
n143_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_call_α:            mov              r11, 72
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
n143_call_β:            mov              r11, 72;                             jmp   digit$2F1_step
                        .size            n143_call_bx, .-n143_call_bx
                        .type            n144_var_ref_bx, @function
n144_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_var_ref_α:         mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n145_lit_integer_α
                        .size            n144_var_ref_bx, .-n144_var_ref_bx
                        .type            n145_lit_integer_bx, @function
n145_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_integer_α:     mov              r11, 74
                        mov              qword ptr [rbp + 976], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_185_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n146_call_α
.Llit_integer_α_185_0:  .quad            9
                        .size            n145_lit_integer_bx, .-n145_lit_integer_bx
                        .type            n146_call_bx, @function
n146_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_call_α:            mov              r11, 75
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
n146_call_β:            mov              r11, 75;                             jmp   digit$2F1_step
                        .size            n146_call_bx, .-n146_call_bx
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
                                                                              jmp   n120_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt2:
                        lea              rax, [rip + digit$2F1_alt3]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n123_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt3:
                        lea              rax, [rip + digit$2F1_alt4]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n126_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt4:
                        lea              rax, [rip + digit$2F1_alt5]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n129_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt5:
                        lea              rax, [rip + digit$2F1_alt6]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n132_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt6:
                        lea              rax, [rip + digit$2F1_alt7]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n135_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt7:
                        lea              rax, [rip + digit$2F1_alt8]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n138_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt8:
                        lea              rax, [rip + digit$2F1_alt9]
                        mov              qword ptr [rbp + 1016], rax
                                                                              jmp   n141_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
digit$2F1_alt9:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1016], rax
                        mov              r13, qword ptr [rbp + 1032]
                                                                              jmp   n144_var_ref_α
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
                        sub              rsp, 5056
                        mov              qword ptr [rsp + 5032], rcx
                        mov              qword ptr [rsp + 5040], rdx
                        mov              qword ptr [rsp + 5048], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 5056]
                        mov              qword ptr [rsp + 5024], rax
                        mov              qword ptr [rsp + 5016], r13
                        mov              qword ptr [rsp + 5008], 0
                        mov              qword ptr [rsp + 5000], 0
                        mov              qword ptr [rsp + 4992], r12
                        mov              rdi, rsp
                        mov              esi, 4800
                        mov              edx, 4992
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 8
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
solve$2F8_α_body:
                        .type            n187_var_ref_bx, @function
n187_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx;         jmp   n188_var_ref_α
                        .size            n187_var_ref_bx, .-n187_var_ref_bx
                        .type            n188_var_ref_bx, @function
n188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 4784], rax
                        mov              qword ptr [rbp + 4792], rdx;         jmp   n189_call_α
                        .size            n188_var_ref_bx, .-n188_var_ref_bx
                        .type            n189_call_bx, @function
n189_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_call_α:            mov              r11, 78
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 4744], rax
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4728], rax
                        lea              rdi, [rbp + 4720]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n190_var_ref_α
n189_call_β:            mov              r11, 78;                             jmp   solve$2F8_step
                        .size            n189_call_bx, .-n189_call_bx
                        .type            n190_var_ref_bx, @function
n190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4672], rax
                        mov              qword ptr [rbp + 4680], rdx;         jmp   n191_var_ref_α
                        .size            n190_var_ref_bx, .-n190_var_ref_bx
                        .type            n191_var_ref_bx, @function
n191_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 4688], rax
                        mov              qword ptr [rbp + 4696], rdx;         jmp   n192_call_α
                        .size            n191_var_ref_bx, .-n191_var_ref_bx
                        .type            n192_call_bx, @function
n192_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_call_α:            mov              r11, 81
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4640], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4648], rax
                        mov              rax, qword ptr [rbp + 4672]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4680]
                        mov              qword ptr [rbp + 4632], rax
                        lea              rdi, [rbp + 4624]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n193_var_ref_α
n192_call_β:            mov              r11, 81;                             jmp   solve$2F8_step
                        .size            n192_call_bx, .-n192_call_bx
                        .type            n193_var_ref_bx, @function
n193_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 4576], rax
                        mov              qword ptr [rbp + 4584], rdx;         jmp   n194_var_ref_α
                        .size            n193_var_ref_bx, .-n193_var_ref_bx
                        .type            n194_var_ref_bx, @function
n194_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4912]
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx;         jmp   n195_call_α
                        .size            n194_var_ref_bx, .-n194_var_ref_bx
                        .type            n195_call_bx, @function
n195_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_call_α:            mov              r11, 84
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4552], rax
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4536], rax
                        lea              rdi, [rbp + 4528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4512], rax
                        mov              qword ptr [rbp + 4520], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n196_var_ref_α
n195_call_β:            mov              r11, 84;                             jmp   solve$2F8_step
                        .size            n195_call_bx, .-n195_call_bx
                        .type            n196_var_ref_bx, @function
n196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 85
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx;         jmp   n197_var_ref_α
                        .size            n196_var_ref_bx, .-n196_var_ref_bx
                        .type            n197_var_ref_bx, @function
n197_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx;         jmp   n198_call_α
                        .size            n197_var_ref_bx, .-n197_var_ref_bx
                        .type            n198_call_bx, @function
n198_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_call_α:            mov              r11, 87
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4448], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4456], rax
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4440], rax
                        lea              rdi, [rbp + 4432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4416], rax
                        mov              qword ptr [rbp + 4424], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n199_var_ref_α
n198_call_β:            mov              r11, 87;                             jmp   solve$2F8_step
                        .size            n198_call_bx, .-n198_call_bx
                        .type            n199_var_ref_bx, @function
n199_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:         mov              r11, 88
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 80]
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx;         jmp   n200_var_ref_α
                        .size            n199_var_ref_bx, .-n199_var_ref_bx
                        .type            n200_var_ref_bx, @function
n200_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4832]
                        mov              qword ptr [rbp + 4400], rax
                        mov              qword ptr [rbp + 4408], rdx;         jmp   n201_call_α
                        .size            n200_var_ref_bx, .-n200_var_ref_bx
                        .type            n201_call_bx, @function
n201_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_call_α:            mov              r11, 90
                        mov              rax, qword ptr [rbp + 4400]
                        mov              qword ptr [rbp + 4352], rax
                        mov              rax, qword ptr [rbp + 4408]
                        mov              qword ptr [rbp + 4360], rax
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4336], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4344], rax
                        lea              rdi, [rbp + 4336]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4320], rax
                        mov              qword ptr [rbp + 4328], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n202_var_ref_α
n201_call_β:            mov              r11, 90;                             jmp   solve$2F8_step
                        .size            n201_call_bx, .-n201_call_bx
                        .type            n202_var_ref_bx, @function
n202_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 96]
                        mov              qword ptr [rbp + 4288], rax
                        mov              qword ptr [rbp + 4296], rdx;         jmp   n203_var_ref_α
                        .size            n202_var_ref_bx, .-n202_var_ref_bx
                        .type            n203_var_ref_bx, @function
n203_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 4304], rax
                        mov              qword ptr [rbp + 4312], rdx;         jmp   n204_call_α
                        .size            n203_var_ref_bx, .-n203_var_ref_bx
                        .type            n204_call_bx, @function
n204_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_call_α:            mov              r11, 93
                        mov              rax, qword ptr [rbp + 4304]
                        mov              qword ptr [rbp + 4256], rax
                        mov              rax, qword ptr [rbp + 4312]
                        mov              qword ptr [rbp + 4264], rax
                        mov              rax, qword ptr [rbp + 4288]
                        mov              qword ptr [rbp + 4240], rax
                        mov              rax, qword ptr [rbp + 4296]
                        mov              qword ptr [rbp + 4248], rax
                        lea              rdi, [rbp + 4240]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4224], rax
                        mov              qword ptr [rbp + 4232], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n205_var_ref_α
n204_call_β:            mov              r11, 93;                             jmp   solve$2F8_step
                        .size            n204_call_bx, .-n204_call_bx
                        .type            n205_var_ref_bx, @function
n205_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_var_ref_α:         mov              r11, 94
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 112]
                        mov              qword ptr [rbp + 4192], rax
                        mov              qword ptr [rbp + 4200], rdx;         jmp   n206_var_ref_α
                        .size            n205_var_ref_bx, .-n205_var_ref_bx
                        .type            n206_var_ref_bx, @function
n206_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4928]
                        mov              qword ptr [rbp + 4208], rax
                        mov              qword ptr [rbp + 4216], rdx;         jmp   n207_call_α
                        .size            n206_var_ref_bx, .-n206_var_ref_bx
                        .type            n207_call_bx, @function
n207_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_call_α:            mov              r11, 96
                        mov              rax, qword ptr [rbp + 4208]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4216]
                        mov              qword ptr [rbp + 4168], rax
                        mov              rax, qword ptr [rbp + 4192]
                        mov              qword ptr [rbp + 4144], rax
                        mov              rax, qword ptr [rbp + 4200]
                        mov              qword ptr [rbp + 4152], rax
                        lea              rdi, [rbp + 4144]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4128], rax
                        mov              qword ptr [rbp + 4136], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n208_var_ref_α
n207_call_β:            mov              r11, 96;                             jmp   solve$2F8_step
                        .size            n207_call_bx, .-n207_call_bx
                        .type            n208_var_ref_bx, @function
n208_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 128]
                        mov              qword ptr [rbp + 4096], rax
                        mov              qword ptr [rbp + 4104], rdx;         jmp   n209_var_ref_α
                        .size            n208_var_ref_bx, .-n208_var_ref_bx
                        .type            n209_var_ref_bx, @function
n209_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4896]
                        mov              qword ptr [rbp + 4112], rax
                        mov              qword ptr [rbp + 4120], rdx;         jmp   n210_call_α
                        .size            n209_var_ref_bx, .-n209_var_ref_bx
                        .type            n210_call_bx, @function
n210_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_call_α:            mov              r11, 99
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4072], rax
                        mov              rax, qword ptr [rbp + 4096]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4104]
                        mov              qword ptr [rbp + 4056], rax
                        lea              rdi, [rbp + 4048]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n211_var_ref_α
n210_call_β:            mov              r11, 99;                             jmp   solve$2F8_step
                        .size            n210_call_bx, .-n210_call_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 4016], rax
                        mov              qword ptr [rbp + 4024], rdx;         jmp   n212_call_proc_staged_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_call_proc_staged_bx, @function
n212_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_call_proc_staged_α:
                        mov              r11, 101
                        mov              qword ptr [rbp + 3984], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_370_200
                        mov              rax, qword ptr [rbp + 4016]
                        mov              rdx, qword ptr [rbp + 4024]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_370_201
.Lcall_proc_staged_α_370_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 4016]
                        mov              rdx, qword ptr [rbp + 4024]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_370_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_370_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_370_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_370_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_370_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_370_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_370_3:
                        mov              qword ptr [rbp + 3984], rax
                        mov              qword ptr [rbp + 3992], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_370_21
                        add              rsp, 32
.Lcall_proc_staged_α_370_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_370_2
.Lcall_proc_staged_α_370_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3984], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_370_2
.Lcall_proc_staged_α_370_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_370_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   solve$2F8_step
.Lcall_proc_staged_α_370_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_370_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3952]
                        mov              rdx, qword ptr [rbp + 3960]
.Lcall_proc_staged_α_370_29:
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n213_var_ref_α
n212_call_proc_staged_β:
                        mov              r11, 101
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_370_22
                        mov              rax, qword ptr [rbp + 3984]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_370_22
                        mov              rcx, qword ptr [rbp + 3992]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_370_22:
                                                                              jmp   solve$2F8_step
.Lcall_proc_staged_α_370_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3952], rax
                        mov              qword ptr [rbp + 3960], rdx
                        cmp              al, 104;                             je    solve$2F8_step
                                                                              jmp   n213_var_ref_α
.Lcall_proc_staged_α_370_0:
                        .quad            .Lcall_proc_staged_α_370_0_s
.Lcall_proc_staged_α_370_0_s:
                        .string          "digit/1"
                        .size            n212_call_proc_staged_bx, .-n212_call_proc_staged_bx
                        .type            n213_var_ref_bx, @function
n213_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              r11, 102
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 3936], rax
                        mov              qword ptr [rbp + 3944], rdx;         jmp   n214_call_proc_staged_α
                        .size            n213_var_ref_bx, .-n213_var_ref_bx
                        .type            n214_call_proc_staged_bx, @function
n214_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_call_proc_staged_α:
                        mov              r11, 103
                        mov              qword ptr [rbp + 3904], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_374_200
                        mov              rax, qword ptr [rbp + 3936]
                        mov              rdx, qword ptr [rbp + 3944]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_374_201
.Lcall_proc_staged_α_374_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3936]
                        mov              rdx, qword ptr [rbp + 3944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_374_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_374_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_374_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_374_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_374_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_374_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_374_3:
                        mov              qword ptr [rbp + 3904], rax
                        mov              qword ptr [rbp + 3912], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_374_21
                        add              rsp, 32
.Lcall_proc_staged_α_374_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_374_2
.Lcall_proc_staged_α_374_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3904], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_374_2
.Lcall_proc_staged_α_374_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_374_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n212_call_proc_staged_β
.Lcall_proc_staged_α_374_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_374_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3872]
                        mov              rdx, qword ptr [rbp + 3880]
.Lcall_proc_staged_α_374_29:
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        cmp              al, 104;                             je    n212_call_proc_staged_β
                                                                              jmp   n215_var_α
n214_call_proc_staged_β:
                        mov              r11, 103
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_374_22
                        mov              rax, qword ptr [rbp + 3904]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_374_22
                        mov              rcx, qword ptr [rbp + 3912]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_374_22:
                                                                              jmp   n212_call_proc_staged_β
.Lcall_proc_staged_α_374_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3872], rax
                        mov              qword ptr [rbp + 3880], rdx
                        cmp              al, 104;                             je    n212_call_proc_staged_β
                                                                              jmp   n215_var_α
.Lcall_proc_staged_α_374_0:
                        .quad            .Lcall_proc_staged_α_374_0_s
.Lcall_proc_staged_α_374_0_s:
                        .string          "digit/1"
                        .size            n214_call_proc_staged_bx, .-n214_call_proc_staged_bx
                        .type            n215_var_bx, @function
n215_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_var_α:             mov              r11, 104
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 3848], rax;         jmp   n216_var_α
                        .size            n215_var_bx, .-n215_var_bx
                        .type            n216_var_bx, @function
n216_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_var_α:             mov              r11, 105
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 3864], rax;         jmp   n217_call_α
                        .size            n216_var_bx, .-n216_var_bx
                        .type            n217_call_bx, @function
n217_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:            mov              r11, 106
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 3808], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 3816], rax
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3792], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3800], rax
                        lea              rdi, [rbp + 3792]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3776], rax
                        mov              qword ptr [rbp + 3784], rdx
                        cmp              al, 104;                             je    n214_call_proc_staged_β
                                                                              jmp   n218_lit_integer_α
n217_call_β:            mov              r11, 106;                            jmp   n214_call_proc_staged_β
                        .size            n217_call_bx, .-n217_call_bx
                        .type            n218_lit_integer_bx, @function
n218_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_integer_α:     mov              r11, 107
                        mov              qword ptr [rbp + 3696], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_380_0]
                        mov              qword ptr [rbp + 3704], rax;         jmp   n219_var_ref_α
.Llit_integer_α_380_0:  .quad            0
                        .size            n218_lit_integer_bx, .-n218_lit_integer_bx
                        .type            n219_var_ref_bx, @function
n219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              r11, 108
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4864]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx;         jmp   n220_var_ref_α
                        .size            n219_var_ref_bx, .-n219_var_ref_bx
                        .type            n220_var_ref_bx, @function
n220_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_var_ref_α:         mov              r11, 109
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 3728], rax
                        mov              qword ptr [rbp + 3736], rdx;         jmp   n221_var_ref_α
                        .size            n220_var_ref_bx, .-n220_var_ref_bx
                        .type            n221_var_ref_bx, @function
n221_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              r11, 110
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4896]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx;         jmp   n222_var_ref_α
                        .size            n221_var_ref_bx, .-n221_var_ref_bx
                        .type            n222_var_ref_bx, @function
n222_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              r11, 111
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4960]
                        mov              qword ptr [rbp + 3760], rax
                        mov              qword ptr [rbp + 3768], rdx;         jmp   n223_call_proc_staged_α
                        .size            n222_var_ref_bx, .-n222_var_ref_bx
                        .type            n223_call_proc_staged_bx, @function
n223_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_call_proc_staged_α:
                        mov              r11, 112
                        mov              qword ptr [rbp + 3664], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_390_200
                        mov              rax, qword ptr [rbp + 3696]
                        mov              rdx, qword ptr [rbp + 3704]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_390_201
.Lcall_proc_staged_α_390_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3696]
                        mov              rdx, qword ptr [rbp + 3704]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_390_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_390_202
                        mov              rax, qword ptr [rbp + 3712]
                        mov              rdx, qword ptr [rbp + 3720]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_390_203
.Lcall_proc_staged_α_390_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 3712]
                        mov              rdx, qword ptr [rbp + 3720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_390_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_390_204
                        mov              rax, qword ptr [rbp + 3728]
                        mov              rdx, qword ptr [rbp + 3736]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_390_205
.Lcall_proc_staged_α_390_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 3728]
                        mov              rdx, qword ptr [rbp + 3736]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_390_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_390_206
                        mov              rax, qword ptr [rbp + 3744]
                        mov              rdx, qword ptr [rbp + 3752]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_390_207
.Lcall_proc_staged_α_390_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 3744]
                        mov              rdx, qword ptr [rbp + 3752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_390_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_390_208
                        mov              rax, qword ptr [rbp + 3760]
                        mov              rdx, qword ptr [rbp + 3768]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_390_209
.Lcall_proc_staged_α_390_208:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 3760]
                        mov              rdx, qword ptr [rbp + 3768]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_390_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_390_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_390_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_390_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_390_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_390_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_390_3:
                        mov              qword ptr [rbp + 3664], rax
                        mov              qword ptr [rbp + 3672], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_390_21
                        add              rsp, 32
.Lcall_proc_staged_α_390_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_390_2
.Lcall_proc_staged_α_390_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3664], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_390_2
.Lcall_proc_staged_α_390_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_390_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n214_call_proc_staged_β
.Lcall_proc_staged_α_390_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_390_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3568]
                        mov              rdx, qword ptr [rbp + 3576]
.Lcall_proc_staged_α_390_29:
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                        cmp              al, 104;                             je    n214_call_proc_staged_β
                                                                              jmp   n224_var_ref_α
n223_call_proc_staged_β:
                        mov              r11, 112
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_390_22
                        mov              rax, qword ptr [rbp + 3664]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_390_22
                        mov              rcx, qword ptr [rbp + 3672]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_390_22:
                                                                              jmp   n214_call_proc_staged_β
.Lcall_proc_staged_α_390_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3568], rax
                        mov              qword ptr [rbp + 3576], rdx
                        cmp              al, 104;                             je    n214_call_proc_staged_β
                                                                              jmp   n224_var_ref_α
.Lcall_proc_staged_α_390_0:
                        .quad            .Lcall_proc_staged_α_390_0_s
.Lcall_proc_staged_α_390_0_s:
                        .string          "sumdigit/5"
                        .size            n223_call_proc_staged_bx, .-n223_call_proc_staged_bx
                        .type            n224_var_ref_bx, @function
n224_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4912]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx;         jmp   n225_call_proc_staged_α
                        .size            n224_var_ref_bx, .-n224_var_ref_bx
                        .type            n225_call_proc_staged_bx, @function
n225_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_call_proc_staged_α:
                        mov              r11, 114
                        mov              qword ptr [rbp + 3520], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_394_200
                        mov              rax, qword ptr [rbp + 3552]
                        mov              rdx, qword ptr [rbp + 3560]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_394_201
.Lcall_proc_staged_α_394_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3552]
                        mov              rdx, qword ptr [rbp + 3560]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_394_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_394_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_394_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_394_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_394_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_394_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_394_3:
                        mov              qword ptr [rbp + 3520], rax
                        mov              qword ptr [rbp + 3528], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_394_21
                        add              rsp, 32
.Lcall_proc_staged_α_394_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_394_2
.Lcall_proc_staged_α_394_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3520], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_394_2
.Lcall_proc_staged_α_394_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_394_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n223_call_proc_staged_β
.Lcall_proc_staged_α_394_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_394_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3488]
                        mov              rdx, qword ptr [rbp + 3496]
.Lcall_proc_staged_α_394_29:
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              al, 104;                             je    n223_call_proc_staged_β
                                                                              jmp   n226_var_α
n225_call_proc_staged_β:
                        mov              r11, 114
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_394_22
                        mov              rax, qword ptr [rbp + 3520]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_394_22
                        mov              rcx, qword ptr [rbp + 3528]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_394_22:
                                                                              jmp   n223_call_proc_staged_β
.Lcall_proc_staged_α_394_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3488], rax
                        mov              qword ptr [rbp + 3496], rdx
                        cmp              al, 104;                             je    n223_call_proc_staged_β
                                                                              jmp   n226_var_α
.Lcall_proc_staged_α_394_0:
                        .quad            .Lcall_proc_staged_α_394_0_s
.Lcall_proc_staged_α_394_0_s:
                        .string          "digit/1"
                        .size            n225_call_proc_staged_bx, .-n225_call_proc_staged_bx
                        .type            n226_var_bx, @function
n226_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             mov              r11, 115
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 3464], rax;         jmp   n227_var_α
                        .size            n226_var_bx, .-n226_var_bx
                        .type            n227_var_bx, @function
n227_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             mov              r11, 116
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 3480], rax;         jmp   n228_call_α
                        .size            n227_var_bx, .-n227_var_bx
                        .type            n228_call_bx, @function
n228_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_call_α:            mov              r11, 117
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3424], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3432], rax
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3416], rax
                        lea              rdi, [rbp + 3408]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3392], rax
                        mov              qword ptr [rbp + 3400], rdx
                        cmp              al, 104;                             je    n225_call_proc_staged_β
                                                                              jmp   n229_var_α
n228_call_β:            mov              r11, 117;                            jmp   n225_call_proc_staged_β
                        .size            n228_call_bx, .-n228_call_bx
                        .type            n229_var_bx, @function
n229_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_α:             mov              r11, 118
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 3368], rax;         jmp   n230_var_α
                        .size            n229_var_bx, .-n229_var_bx
                        .type            n230_var_bx, @function
n230_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_α:             mov              r11, 119
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 3384], rax;         jmp   n231_call_α
                        .size            n230_var_bx, .-n230_var_bx
                        .type            n231_call_bx, @function
n231_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_call_α:            mov              r11, 120
                        mov              rax, qword ptr [rbp + 3376]
                        mov              qword ptr [rbp + 3328], rax
                        mov              rax, qword ptr [rbp + 3384]
                        mov              qword ptr [rbp + 3336], rax
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3312], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3320], rax
                        lea              rdi, [rbp + 3312]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3296], rax
                        mov              qword ptr [rbp + 3304], rdx
                        cmp              al, 104;                             je    n225_call_proc_staged_β
                                                                              jmp   n232_var_α
n231_call_β:            mov              r11, 120;                            jmp   n225_call_proc_staged_β
                        .size            n231_call_bx, .-n231_call_bx
                        .type            n232_var_bx, @function
n232_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             mov              r11, 121
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 3272], rax;         jmp   n233_var_α
                        .size            n232_var_bx, .-n232_var_bx
                        .type            n233_var_bx, @function
n233_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_var_α:             mov              r11, 122
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 3288], rax;         jmp   n234_call_α
                        .size            n233_var_bx, .-n233_var_bx
                        .type            n234_call_bx, @function
n234_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_call_α:            mov              r11, 123
                        mov              rax, qword ptr [rbp + 3280]
                        mov              qword ptr [rbp + 3232], rax
                        mov              rax, qword ptr [rbp + 3288]
                        mov              qword ptr [rbp + 3240], rax
                        mov              rax, qword ptr [rbp + 3264]
                        mov              qword ptr [rbp + 3216], rax
                        mov              rax, qword ptr [rbp + 3272]
                        mov              qword ptr [rbp + 3224], rax
                        lea              rdi, [rbp + 3216]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3200], rax
                        mov              qword ptr [rbp + 3208], rdx
                        cmp              al, 104;                             je    n225_call_proc_staged_β
                                                                              jmp   n235_var_ref_α
n234_call_β:            mov              r11, 123;                            jmp   n225_call_proc_staged_β
                        .size            n234_call_bx, .-n234_call_bx
                        .type            n235_var_ref_bx, @function
n235_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_ref_α:         mov              r11, 124
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4928]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n236_call_proc_staged_α
                        .size            n235_var_ref_bx, .-n235_var_ref_bx
                        .type            n236_call_proc_staged_bx, @function
n236_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_call_proc_staged_α:
                        mov              r11, 125
                        mov              qword ptr [rbp + 3152], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_413_200
                        mov              rax, qword ptr [rbp + 3184]
                        mov              rdx, qword ptr [rbp + 3192]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_413_201
.Lcall_proc_staged_α_413_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 3184]
                        mov              rdx, qword ptr [rbp + 3192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_413_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_413_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_413_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_413_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_413_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_413_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_413_3:
                        mov              qword ptr [rbp + 3152], rax
                        mov              qword ptr [rbp + 3160], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_413_21
                        add              rsp, 32
.Lcall_proc_staged_α_413_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_413_2
.Lcall_proc_staged_α_413_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 3152], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_413_2
.Lcall_proc_staged_α_413_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_413_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n225_call_proc_staged_β
.Lcall_proc_staged_α_413_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_413_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 3120]
                        mov              rdx, qword ptr [rbp + 3128]
.Lcall_proc_staged_α_413_29:
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              al, 104;                             je    n225_call_proc_staged_β
                                                                              jmp   n237_var_α
n236_call_proc_staged_β:
                        mov              r11, 125
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_413_22
                        mov              rax, qword ptr [rbp + 3152]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_413_22
                        mov              rcx, qword ptr [rbp + 3160]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_413_22:
                                                                              jmp   n225_call_proc_staged_β
.Lcall_proc_staged_α_413_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              al, 104;                             je    n225_call_proc_staged_β
                                                                              jmp   n237_var_α
.Lcall_proc_staged_α_413_0:
                        .quad            .Lcall_proc_staged_α_413_0_s
.Lcall_proc_staged_α_413_0_s:
                        .string          "digit/1"
                        .size            n236_call_proc_staged_bx, .-n236_call_proc_staged_bx
                        .type            n237_var_bx, @function
n237_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_var_α:             mov              r11, 126
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 3088], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 3096], rax;         jmp   n238_var_α
                        .size            n237_var_bx, .-n237_var_bx
                        .type            n238_var_bx, @function
n238_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_var_α:             mov              r11, 127
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 3104], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 3112], rax;         jmp   n239_call_α
                        .size            n238_var_bx, .-n238_var_bx
                        .type            n239_call_bx, @function
n239_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_call_α:            mov              r11, 128
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3064], rax
                        mov              rax, qword ptr [rbp + 3088]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3096]
                        mov              qword ptr [rbp + 3048], rax
                        lea              rdi, [rbp + 3040]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              al, 104;                             je    n236_call_proc_staged_β
                                                                              jmp   n240_var_α
n239_call_β:            mov              r11, 128;                            jmp   n236_call_proc_staged_β
                        .size            n239_call_bx, .-n239_call_bx
                        .type            n240_var_bx, @function
n240_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             mov              r11, 129
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 2992], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 3000], rax;         jmp   n241_var_α
                        .size            n240_var_bx, .-n240_var_bx
                        .type            n241_var_bx, @function
n241_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_α:             mov              r11, 130
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 3008], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 3016], rax;         jmp   n242_call_α
                        .size            n241_var_bx, .-n241_var_bx
                        .type            n242_call_bx, @function
n242_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_call_α:            mov              r11, 131
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 2968], rax
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2952], rax
                        lea              rdi, [rbp + 2944]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2928], rax
                        mov              qword ptr [rbp + 2936], rdx
                        cmp              al, 104;                             je    n236_call_proc_staged_β
                                                                              jmp   n243_var_α
n242_call_β:            mov              r11, 131;                            jmp   n236_call_proc_staged_β
                        .size            n242_call_bx, .-n242_call_bx
                        .type            n243_var_bx, @function
n243_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             mov              r11, 132
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 2896], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 2904], rax;         jmp   n244_var_α
                        .size            n243_var_bx, .-n243_var_bx
                        .type            n244_var_bx, @function
n244_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:             mov              r11, 133
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 2912], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 2920], rax;         jmp   n245_call_α
                        .size            n244_var_bx, .-n244_var_bx
                        .type            n245_call_bx, @function
n245_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_call_α:            mov              r11, 134
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 2864], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 2872], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2856], rax
                        lea              rdi, [rbp + 2848]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2832], rax
                        mov              qword ptr [rbp + 2840], rdx
                        cmp              al, 104;                             je    n236_call_proc_staged_β
                                                                              jmp   n246_var_α
n245_call_β:            mov              r11, 134;                            jmp   n236_call_proc_staged_β
                        .size            n245_call_bx, .-n245_call_bx
                        .type            n246_var_bx, @function
n246_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_var_α:             mov              r11, 135
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 2800], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 2808], rax;         jmp   n247_var_α
                        .size            n246_var_bx, .-n246_var_bx
                        .type            n247_var_bx, @function
n247_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_var_α:             mov              r11, 136
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 2824], rax;         jmp   n248_call_α
                        .size            n247_var_bx, .-n247_var_bx
                        .type            n248_call_bx, @function
n248_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_call_α:            mov              r11, 137
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
                        cmp              al, 104;                             je    n236_call_proc_staged_β
                                                                              jmp   n249_var_ref_α
n248_call_β:            mov              r11, 137;                            jmp   n236_call_proc_staged_β
                        .size            n248_call_bx, .-n248_call_bx
                        .type            n249_var_ref_bx, @function
n249_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4960]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx;         jmp   n250_var_ref_α
                        .size            n249_var_ref_bx, .-n249_var_ref_bx
                        .type            n250_var_ref_bx, @function
n250_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_var_ref_α:         mov              r11, 139
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4912]
                        mov              qword ptr [rbp + 2672], rax
                        mov              qword ptr [rbp + 2680], rdx;         jmp   n251_var_ref_α
                        .size            n250_var_ref_bx, .-n250_var_ref_bx
                        .type            n251_var_ref_bx, @function
n251_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_var_ref_α:         mov              r11, 140
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4928]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx;         jmp   n252_var_ref_α
                        .size            n251_var_ref_bx, .-n251_var_ref_bx
                        .type            n252_var_ref_bx, @function
n252_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 2704], rax
                        mov              qword ptr [rbp + 2712], rdx;         jmp   n253_var_ref_α
                        .size            n252_var_ref_bx, .-n252_var_ref_bx
                        .type            n253_var_ref_bx, @function
n253_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4944]
                        mov              qword ptr [rbp + 2720], rax
                        mov              qword ptr [rbp + 2728], rdx;         jmp   n254_call_proc_staged_α
                        .size            n253_var_ref_bx, .-n253_var_ref_bx
                        .type            n254_call_proc_staged_bx, @function
n254_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_call_proc_staged_α:
                        mov              r11, 143
                        mov              qword ptr [rbp + 2624], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_445_200
                        mov              rax, qword ptr [rbp + 2656]
                        mov              rdx, qword ptr [rbp + 2664]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_445_201
.Lcall_proc_staged_α_445_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2656]
                        mov              rdx, qword ptr [rbp + 2664]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_445_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_445_202
                        mov              rax, qword ptr [rbp + 2672]
                        mov              rdx, qword ptr [rbp + 2680]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_445_203
.Lcall_proc_staged_α_445_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2672]
                        mov              rdx, qword ptr [rbp + 2680]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_445_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_445_204
                        mov              rax, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_445_205
.Lcall_proc_staged_α_445_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 2688]
                        mov              rdx, qword ptr [rbp + 2696]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_445_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_445_206
                        mov              rax, qword ptr [rbp + 2704]
                        mov              rdx, qword ptr [rbp + 2712]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_445_207
.Lcall_proc_staged_α_445_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 2704]
                        mov              rdx, qword ptr [rbp + 2712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_445_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_445_208
                        mov              rax, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_445_209
.Lcall_proc_staged_α_445_208:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 2720]
                        mov              rdx, qword ptr [rbp + 2728]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_445_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_445_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_445_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_445_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_445_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_445_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_445_3:
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_445_21
                        add              rsp, 32
.Lcall_proc_staged_α_445_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_445_2
.Lcall_proc_staged_α_445_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2624], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_445_2
.Lcall_proc_staged_α_445_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_445_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n236_call_proc_staged_β
.Lcall_proc_staged_α_445_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_445_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2528]
                        mov              rdx, qword ptr [rbp + 2536]
.Lcall_proc_staged_α_445_29:
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              al, 104;                             je    n236_call_proc_staged_β
                                                                              jmp   n255_var_ref_α
n254_call_proc_staged_β:
                        mov              r11, 143
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_445_22
                        mov              rax, qword ptr [rbp + 2624]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_445_22
                        mov              rcx, qword ptr [rbp + 2632]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_445_22:
                                                                              jmp   n236_call_proc_staged_β
.Lcall_proc_staged_α_445_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx
                        cmp              al, 104;                             je    n236_call_proc_staged_β
                                                                              jmp   n255_var_ref_α
.Lcall_proc_staged_α_445_0:
                        .quad            .Lcall_proc_staged_α_445_0_s
.Lcall_proc_staged_α_445_0_s:
                        .string          "sumdigit/5"
                        .size            n254_call_proc_staged_bx, .-n254_call_proc_staged_bx
                        .type            n255_var_ref_bx, @function
n255_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 2512], rax
                        mov              qword ptr [rbp + 2520], rdx;         jmp   n256_call_proc_staged_α
                        .size            n255_var_ref_bx, .-n255_var_ref_bx
                        .type            n256_call_proc_staged_bx, @function
n256_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_call_proc_staged_α:
                        mov              r11, 145
                        mov              qword ptr [rbp + 2480], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_449_200
                        mov              rax, qword ptr [rbp + 2512]
                        mov              rdx, qword ptr [rbp + 2520]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_449_201
.Lcall_proc_staged_α_449_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2512]
                        mov              rdx, qword ptr [rbp + 2520]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_449_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_449_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_449_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_449_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_449_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_449_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_449_3:
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_449_21
                        add              rsp, 32
.Lcall_proc_staged_α_449_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_449_2
.Lcall_proc_staged_α_449_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 2480], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_449_2
.Lcall_proc_staged_α_449_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_449_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n254_call_proc_staged_β
.Lcall_proc_staged_α_449_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_449_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 2448]
                        mov              rdx, qword ptr [rbp + 2456]
.Lcall_proc_staged_α_449_29:
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              al, 104;                             je    n254_call_proc_staged_β
                                                                              jmp   n257_var_α
n256_call_proc_staged_β:
                        mov              r11, 145
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_449_22
                        mov              rax, qword ptr [rbp + 2480]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_449_22
                        mov              rcx, qword ptr [rbp + 2488]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_449_22:
                                                                              jmp   n254_call_proc_staged_β
.Lcall_proc_staged_α_449_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx
                        cmp              al, 104;                             je    n254_call_proc_staged_β
                                                                              jmp   n257_var_α
.Lcall_proc_staged_α_449_0:
                        .quad            .Lcall_proc_staged_α_449_0_s
.Lcall_proc_staged_α_449_0_s:
                        .string          "digit/1"
                        .size            n256_call_proc_staged_bx, .-n256_call_proc_staged_bx
                        .type            n257_var_bx, @function
n257_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_var_α:             mov              r11, 146
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 2424], rax;         jmp   n258_var_α
                        .size            n257_var_bx, .-n257_var_bx
                        .type            n258_var_bx, @function
n258_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_var_α:             mov              r11, 147
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 2440], rax;         jmp   n259_call_α
                        .size            n258_var_bx, .-n258_var_bx
                        .type            n259_call_bx, @function
n259_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_call_α:            mov              r11, 148
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
                        cmp              al, 104;                             je    n256_call_proc_staged_β
                                                                              jmp   n260_var_α
n259_call_β:            mov              r11, 148;                            jmp   n256_call_proc_staged_β
                        .size            n259_call_bx, .-n259_call_bx
                        .type            n260_var_bx, @function
n260_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_var_α:             mov              r11, 149
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 2328], rax;         jmp   n261_var_α
                        .size            n260_var_bx, .-n260_var_bx
                        .type            n261_var_bx, @function
n261_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_var_α:             mov              r11, 150
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 2336], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 2344], rax;         jmp   n262_call_α
                        .size            n261_var_bx, .-n261_var_bx
                        .type            n262_call_bx, @function
n262_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_call_α:            mov              r11, 151
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2280], rax
                        lea              rdi, [rbp + 2272]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2256], rax
                        mov              qword ptr [rbp + 2264], rdx
                        cmp              al, 104;                             je    n256_call_proc_staged_β
                                                                              jmp   n263_var_α
n262_call_β:            mov              r11, 151;                            jmp   n256_call_proc_staged_β
                        .size            n262_call_bx, .-n262_call_bx
                        .type            n263_var_bx, @function
n263_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_var_α:             mov              r11, 152
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 2224], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 2232], rax;         jmp   n264_var_α
                        .size            n263_var_bx, .-n263_var_bx
                        .type            n264_var_bx, @function
n264_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_var_α:             mov              r11, 153
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 2248], rax;         jmp   n265_call_α
                        .size            n264_var_bx, .-n264_var_bx
                        .type            n265_call_bx, @function
n265_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_call_α:            mov              r11, 154
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
                        cmp              al, 104;                             je    n256_call_proc_staged_β
                                                                              jmp   n266_var_α
n265_call_β:            mov              r11, 154;                            jmp   n256_call_proc_staged_β
                        .size            n265_call_bx, .-n265_call_bx
                        .type            n266_var_bx, @function
n266_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_var_α:             mov              r11, 155
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 2128], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n267_var_α
                        .size            n266_var_bx, .-n266_var_bx
                        .type            n267_var_bx, @function
n267_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_var_α:             mov              r11, 156
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n268_call_α
                        .size            n267_var_bx, .-n267_var_bx
                        .type            n268_call_bx, @function
n268_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_call_α:            mov              r11, 157
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              al, 104;                             je    n256_call_proc_staged_β
                                                                              jmp   n269_var_α
n268_call_β:            mov              r11, 157;                            jmp   n256_call_proc_staged_β
                        .size            n268_call_bx, .-n268_call_bx
                        .type            n269_var_bx, @function
n269_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_var_α:             mov              r11, 158
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n270_var_α
                        .size            n269_var_bx, .-n269_var_bx
                        .type            n270_var_bx, @function
n270_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_var_α:             mov              r11, 159
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n271_call_α
                        .size            n270_var_bx, .-n270_var_bx
                        .type            n271_call_bx, @function
n271_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_call_α:            mov              r11, 160
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
                        cmp              al, 104;                             je    n256_call_proc_staged_β
                                                                              jmp   n272_var_ref_α
n271_call_β:            mov              r11, 160;                            jmp   n256_call_proc_staged_β
                        .size            n271_call_bx, .-n271_call_bx
                        .type            n272_var_ref_bx, @function
n272_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4944]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx;         jmp   n273_var_ref_α
                        .size            n272_var_ref_bx, .-n272_var_ref_bx
                        .type            n273_var_ref_bx, @function
n273_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4880]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n274_var_ref_α
                        .size            n273_var_ref_bx, .-n273_var_ref_bx
                        .type            n274_var_ref_bx, @function
n274_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 1920], rax
                        mov              qword ptr [rbp + 1928], rdx;         jmp   n275_var_ref_α
                        .size            n274_var_ref_bx, .-n274_var_ref_bx
                        .type            n275_var_ref_bx, @function
n275_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_var_ref_α:         mov              r11, 164
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4912]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx;         jmp   n276_var_ref_α
                        .size            n275_var_ref_bx, .-n275_var_ref_bx
                        .type            n276_var_ref_bx, @function
n276_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4800]
                        mov              qword ptr [rbp + 1952], rax
                        mov              qword ptr [rbp + 1960], rdx;         jmp   n277_call_proc_staged_α
                        .size            n276_var_ref_bx, .-n276_var_ref_bx
                        .type            n277_call_proc_staged_bx, @function
n277_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_call_proc_staged_α:
                        mov              r11, 166
                        mov              qword ptr [rbp + 1856], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_486_200
                        mov              rax, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_486_201
.Lcall_proc_staged_α_486_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_486_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_486_202
                        mov              rax, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_486_203
.Lcall_proc_staged_α_486_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1904]
                        mov              rdx, qword ptr [rbp + 1912]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_486_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_486_204
                        mov              rax, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_486_205
.Lcall_proc_staged_α_486_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1920]
                        mov              rdx, qword ptr [rbp + 1928]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_486_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_486_206
                        mov              rax, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_486_207
.Lcall_proc_staged_α_486_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1936]
                        mov              rdx, qword ptr [rbp + 1944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_486_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_486_208
                        mov              rax, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_486_209
.Lcall_proc_staged_α_486_208:
                        mov              edi, 4
                        mov              rsi, qword ptr [rbp + 1952]
                        mov              rdx, qword ptr [rbp + 1960]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_486_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_486_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_486_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_486_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_486_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_486_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_486_3:
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_486_21
                        add              rsp, 32
.Lcall_proc_staged_α_486_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_486_2
.Lcall_proc_staged_α_486_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1856], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_486_2
.Lcall_proc_staged_α_486_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_486_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n256_call_proc_staged_β
.Lcall_proc_staged_α_486_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_486_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1760]
                        mov              rdx, qword ptr [rbp + 1768]
.Lcall_proc_staged_α_486_29:
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              al, 104;                             je    n256_call_proc_staged_β
                                                                              jmp   n278_var_ref_α
n277_call_proc_staged_β:
                        mov              r11, 166
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_486_22
                        mov              rax, qword ptr [rbp + 1856]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_486_22
                        mov              rcx, qword ptr [rbp + 1864]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_486_22:
                                                                              jmp   n256_call_proc_staged_β
.Lcall_proc_staged_α_486_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1760], rax
                        mov              qword ptr [rbp + 1768], rdx
                        cmp              al, 104;                             je    n256_call_proc_staged_β
                                                                              jmp   n278_var_ref_α
.Lcall_proc_staged_α_486_0:
                        .quad            .Lcall_proc_staged_α_486_0_s
.Lcall_proc_staged_α_486_0_s:
                        .string          "sumdigit/5"
                        .size            n277_call_proc_staged_bx, .-n277_call_proc_staged_bx
                        .type            n278_var_ref_bx, @function
n278_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_var_ref_α:         mov              r11, 167
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n279_call_proc_staged_α
                        .size            n278_var_ref_bx, .-n278_var_ref_bx
                        .type            n279_call_proc_staged_bx, @function
n279_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_call_proc_staged_α:
                        mov              r11, 168
                        mov              qword ptr [rbp + 1712], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_490_200
                        mov              rax, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_490_201
.Lcall_proc_staged_α_490_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1744]
                        mov              rdx, qword ptr [rbp + 1752]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_490_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_490_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_490_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_490_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_490_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_490_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_490_3:
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_490_21
                        add              rsp, 32
.Lcall_proc_staged_α_490_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_490_2
.Lcall_proc_staged_α_490_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1712], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_490_2
.Lcall_proc_staged_α_490_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_490_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n277_call_proc_staged_β
.Lcall_proc_staged_α_490_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_490_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1680]
                        mov              rdx, qword ptr [rbp + 1688]
.Lcall_proc_staged_α_490_29:
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    n277_call_proc_staged_β
                                                                              jmp   n280_var_α
n279_call_proc_staged_β:
                        mov              r11, 168
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_490_22
                        mov              rax, qword ptr [rbp + 1712]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_490_22
                        mov              rcx, qword ptr [rbp + 1720]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_490_22:
                                                                              jmp   n277_call_proc_staged_β
.Lcall_proc_staged_α_490_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    n277_call_proc_staged_β
                                                                              jmp   n280_var_α
.Lcall_proc_staged_α_490_0:
                        .quad            .Lcall_proc_staged_α_490_0_s
.Lcall_proc_staged_α_490_0_s:
                        .string          "leftdigit/1"
                        .size            n279_call_proc_staged_bx, .-n279_call_proc_staged_bx
                        .type            n280_var_bx, @function
n280_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_var_α:             mov              r11, 169
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n281_var_α
                        .size            n280_var_bx, .-n280_var_bx
                        .type            n281_var_bx, @function
n281_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_var_α:             mov              r11, 170
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n282_call_α
                        .size            n281_var_bx, .-n281_var_bx
                        .type            n282_call_bx, @function
n282_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_call_α:            mov              r11, 171
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1584], rax
                        mov              qword ptr [rbp + 1592], rdx
                        cmp              al, 104;                             je    n279_call_proc_staged_β
                                                                              jmp   n283_var_α
n282_call_β:            mov              r11, 171;                            jmp   n279_call_proc_staged_β
                        .size            n282_call_bx, .-n282_call_bx
                        .type            n283_var_bx, @function
n283_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_var_α:             mov              r11, 172
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 1560], rax;         jmp   n284_var_α
                        .size            n283_var_bx, .-n283_var_bx
                        .type            n284_var_bx, @function
n284_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_var_α:             mov              r11, 173
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n285_call_α
                        .size            n284_var_bx, .-n284_var_bx
                        .type            n285_call_bx, @function
n285_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_call_α:            mov              r11, 174
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              al, 104;                             je    n279_call_proc_staged_β
                                                                              jmp   n286_var_α
n285_call_β:            mov              r11, 174;                            jmp   n279_call_proc_staged_β
                        .size            n285_call_bx, .-n285_call_bx
                        .type            n286_var_bx, @function
n286_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_var_α:             mov              r11, 175
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n287_var_α
                        .size            n286_var_bx, .-n286_var_bx
                        .type            n287_var_bx, @function
n287_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_var_α:             mov              r11, 176
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n288_call_α
                        .size            n287_var_bx, .-n287_var_bx
                        .type            n288_call_bx, @function
n288_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_call_α:            mov              r11, 177
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx
                        cmp              al, 104;                             je    n279_call_proc_staged_β
                                                                              jmp   n289_var_α
n288_call_β:            mov              r11, 177;                            jmp   n279_call_proc_staged_β
                        .size            n288_call_bx, .-n288_call_bx
                        .type            n289_var_bx, @function
n289_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_var_α:             mov              r11, 178
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n290_var_α
                        .size            n289_var_bx, .-n289_var_bx
                        .type            n290_var_bx, @function
n290_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_var_α:             mov              r11, 179
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 1384], rax;         jmp   n291_call_α
                        .size            n290_var_bx, .-n290_var_bx
                        .type            n291_call_bx, @function
n291_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_call_α:            mov              r11, 180
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx
                        cmp              al, 104;                             je    n279_call_proc_staged_β
                                                                              jmp   n292_var_α
n291_call_β:            mov              r11, 180;                            jmp   n279_call_proc_staged_β
                        .size            n291_call_bx, .-n291_call_bx
                        .type            n292_var_bx, @function
n292_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_var_α:             mov              r11, 181
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 1272], rax;         jmp   n293_var_α
                        .size            n292_var_bx, .-n292_var_bx
                        .type            n293_var_bx, @function
n293_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_var_α:             mov              r11, 182
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 1288], rax;         jmp   n294_call_α
                        .size            n293_var_bx, .-n293_var_bx
                        .type            n294_call_bx, @function
n294_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_call_α:            mov              r11, 183
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    n279_call_proc_staged_β
                                                                              jmp   n295_var_α
n294_call_β:            mov              r11, 183;                            jmp   n279_call_proc_staged_β
                        .size            n294_call_bx, .-n294_call_bx
                        .type            n295_var_bx, @function
n295_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_var_α:             mov              r11, 184
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n296_var_α
                        .size            n295_var_bx, .-n295_var_bx
                        .type            n296_var_bx, @function
n296_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_var_α:             mov              r11, 185
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n297_call_α
                        .size            n296_var_bx, .-n296_var_bx
                        .type            n297_call_bx, @function
n297_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_call_α:            mov              r11, 186
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1128], rax
                        lea              rdi, [rbp + 1120]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx
                        cmp              al, 104;                             je    n279_call_proc_staged_β
                                                                              jmp   n298_var_ref_α
n297_call_β:            mov              r11, 186;                            jmp   n279_call_proc_staged_β
                        .size            n297_call_bx, .-n297_call_bx
                        .type            n298_var_ref_bx, @function
n298_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              r11, 187
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4832]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n299_call_proc_staged_α
                        .size            n298_var_ref_bx, .-n298_var_ref_bx
                        .type            n299_call_proc_staged_bx, @function
n299_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_call_proc_staged_α:
                        mov              r11, 188
                        mov              qword ptr [rbp + 1056], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_524_200
                        mov              rax, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_524_201
.Lcall_proc_staged_α_524_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1088]
                        mov              rdx, qword ptr [rbp + 1096]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_524_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_524_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_524_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_524_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_524_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_524_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_524_3:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_524_21
                        add              rsp, 32
.Lcall_proc_staged_α_524_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_524_2
.Lcall_proc_staged_α_524_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1056], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_524_2
.Lcall_proc_staged_α_524_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_524_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n279_call_proc_staged_β
.Lcall_proc_staged_α_524_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_524_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
.Lcall_proc_staged_α_524_29:
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    n279_call_proc_staged_β
                                                                              jmp   n300_var_α
n299_call_proc_staged_β:
                        mov              r11, 188
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_524_22
                        mov              rax, qword ptr [rbp + 1056]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_524_22
                        mov              rcx, qword ptr [rbp + 1064]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_524_22:
                                                                              jmp   n279_call_proc_staged_β
.Lcall_proc_staged_α_524_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    n279_call_proc_staged_β
                                                                              jmp   n300_var_α
.Lcall_proc_staged_α_524_0:
                        .quad            .Lcall_proc_staged_α_524_0_s
.Lcall_proc_staged_α_524_0_s:
                        .string          "leftdigit/1"
                        .size            n299_call_proc_staged_bx, .-n299_call_proc_staged_bx
                        .type            n300_var_bx, @function
n300_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_var_α:             mov              r11, 189
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n301_var_α
                        .size            n300_var_bx, .-n300_var_bx
                        .type            n301_var_bx, @function
n301_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_var_α:             mov              r11, 190
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n302_call_α
                        .size            n301_var_bx, .-n301_var_bx
                        .type            n302_call_bx, @function
n302_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_call_α:            mov              r11, 191
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
                        cmp              al, 104;                             je    n299_call_proc_staged_β
                                                                              jmp   n303_var_α
n302_call_β:            mov              r11, 191;                            jmp   n299_call_proc_staged_β
                        .size            n302_call_bx, .-n302_call_bx
                        .type            n303_var_bx, @function
n303_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_var_α:             mov              r11, 192
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 904], rax;          jmp   n304_var_α
                        .size            n303_var_bx, .-n303_var_bx
                        .type            n304_var_bx, @function
n304_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_α:             mov              r11, 193
                        mov              rax, qword ptr [rbp + 4848]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 4856]
                        mov              qword ptr [rbp + 920], rax;          jmp   n305_call_α
                        .size            n304_var_bx, .-n304_var_bx
                        .type            n305_call_bx, @function
n305_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_call_α:            mov              r11, 194
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    n299_call_proc_staged_β
                                                                              jmp   n306_var_α
n305_call_β:            mov              r11, 194;                            jmp   n299_call_proc_staged_β
                        .size            n305_call_bx, .-n305_call_bx
                        .type            n306_var_bx, @function
n306_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_var_α:             mov              r11, 195
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 808], rax;          jmp   n307_var_α
                        .size            n306_var_bx, .-n306_var_bx
                        .type            n307_var_bx, @function
n307_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_var_α:             mov              r11, 196
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 824], rax;          jmp   n308_call_α
                        .size            n307_var_bx, .-n307_var_bx
                        .type            n308_call_bx, @function
n308_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_call_α:            mov              r11, 197
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
                        cmp              al, 104;                             je    n299_call_proc_staged_β
                                                                              jmp   n309_var_α
n308_call_β:            mov              r11, 197;                            jmp   n299_call_proc_staged_β
                        .size            n308_call_bx, .-n308_call_bx
                        .type            n309_var_bx, @function
n309_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_var_α:             mov              r11, 198
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 712], rax;          jmp   n310_var_α
                        .size            n309_var_bx, .-n309_var_bx
                        .type            n310_var_bx, @function
n310_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_α:             mov              r11, 199
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 728], rax;          jmp   n311_call_α
                        .size            n310_var_bx, .-n310_var_bx
                        .type            n311_call_bx, @function
n311_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_call_α:            mov              r11, 200
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    n299_call_proc_staged_β
                                                                              jmp   n312_var_α
n311_call_β:            mov              r11, 200;                            jmp   n299_call_proc_staged_β
                        .size            n311_call_bx, .-n311_call_bx
                        .type            n312_var_bx, @function
n312_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_var_α:             mov              r11, 201
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 616], rax;          jmp   n313_var_α
                        .size            n312_var_bx, .-n312_var_bx
                        .type            n313_var_bx, @function
n313_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_var_α:             mov              r11, 202
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 632], rax;          jmp   n314_call_α
                        .size            n313_var_bx, .-n313_var_bx
                        .type            n314_call_bx, @function
n314_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_call_α:            mov              r11, 203
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
                        cmp              al, 104;                             je    n299_call_proc_staged_β
                                                                              jmp   n315_var_α
n314_call_β:            mov              r11, 203;                            jmp   n299_call_proc_staged_β
                        .size            n314_call_bx, .-n314_call_bx
                        .type            n315_var_bx, @function
n315_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_var_α:             mov              r11, 204
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 520], rax;          jmp   n316_var_α
                        .size            n315_var_bx, .-n315_var_bx
                        .type            n316_var_bx, @function
n316_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_var_α:             mov              r11, 205
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 536], rax;          jmp   n317_call_α
                        .size            n316_var_bx, .-n316_var_bx
                        .type            n317_call_bx, @function
n317_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_call_α:            mov              r11, 206
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    n299_call_proc_staged_β
                                                                              jmp   n318_var_α
n317_call_β:            mov              r11, 206;                            jmp   n299_call_proc_staged_β
                        .size            n317_call_bx, .-n317_call_bx
                        .type            n318_var_bx, @function
n318_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_var_α:             mov              r11, 207
                        mov              rax, qword ptr [rbp + 4832]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 4840]
                        mov              qword ptr [rbp + 424], rax;          jmp   n319_var_α
                        .size            n318_var_bx, .-n318_var_bx
                        .type            n319_var_bx, @function
n319_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_var_α:             mov              r11, 208
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 440], rax;          jmp   n320_call_α
                        .size            n319_var_bx, .-n319_var_bx
                        .type            n320_call_bx, @function
n320_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_call_α:            mov              r11, 209
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
                        cmp              al, 104;                             je    n299_call_proc_staged_β
                                                                              jmp   n321_var_ref_α
n320_call_β:            mov              r11, 209;                            jmp   n299_call_proc_staged_β
                        .size            n320_call_bx, .-n320_call_bx
                        .type            n321_var_ref_bx, @function
n321_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_var_ref_α:         mov              r11, 210
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4800]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n322_var_ref_α
                        .size            n321_var_ref_bx, .-n321_var_ref_bx
                        .type            n322_var_ref_bx, @function
n322_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4816]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n323_var_ref_α
                        .size            n322_var_ref_bx, .-n322_var_ref_bx
                        .type            n323_var_ref_bx, @function
n323_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4832]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n324_var_ref_α
                        .size            n323_var_ref_bx, .-n323_var_ref_bx
                        .type            n324_var_ref_bx, @function
n324_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4848]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n325_var_ref_α
                        .size            n324_var_ref_bx, .-n324_var_ref_bx
                        .type            n325_var_ref_bx, @function
n325_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_var_ref_α:         mov              r11, 214
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 4832]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n326_call_proc_staged_α
                        .size            n325_var_ref_bx, .-n325_var_ref_bx
                        .type            n326_call_proc_staged_bx, @function
n326_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_call_proc_staged_α:
                        mov              r11, 215
                        mov              qword ptr [rbp + 240], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_571_200
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_571_201
.Lcall_proc_staged_α_571_200:
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
.Lcall_proc_staged_α_571_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_571_202
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_571_203
.Lcall_proc_staged_α_571_202:
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
.Lcall_proc_staged_α_571_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_571_204
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_571_205
.Lcall_proc_staged_α_571_204:
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
.Lcall_proc_staged_α_571_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_571_206
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_571_207
.Lcall_proc_staged_α_571_206:
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
.Lcall_proc_staged_α_571_207:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_571_208
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 64], rax
                        mov              qword ptr [r8 + 72], rdx;            jmp   .Lcall_proc_staged_α_571_209
.Lcall_proc_staged_α_571_208:
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
.Lcall_proc_staged_α_571_209:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_571_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_571_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 5
                        mov              rsi, rbp
                        lea              rdx, [rbp + 5056]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_571_99
                        mov              r10, qword ptr [rbp + 5016]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_571_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_571_99
                        mov              rcx, qword ptr [rbp + 5032]
                        mov              rdx, qword ptr [rbp + 5040]
                        lea              rsp, [rbp + 5056]
                        mov              rbp, qword ptr [rbp + 5048];         jmp   rax
.Lcall_proc_staged_α_571_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_571_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_571_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_571_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_571_3:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_571_21
                        add              rsp, 32
.Lcall_proc_staged_α_571_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_571_2
.Lcall_proc_staged_α_571_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 240], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_571_2
.Lcall_proc_staged_α_571_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_571_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n299_call_proc_staged_β
.Lcall_proc_staged_α_571_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_571_29
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
.Lcall_proc_staged_α_571_29:
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n299_call_proc_staged_β
                                                                              jmp   solve$2F8_ret0
n326_call_proc_staged_β:
                        mov              r11, 215
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_571_22
                        mov              rax, qword ptr [rbp + 240]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_571_22
                        mov              rcx, qword ptr [rbp + 248]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_571_22:
                                                                              jmp   n299_call_proc_staged_β
.Lcall_proc_staged_α_571_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    n299_call_proc_staged_β
                                                                              jmp   solve$2F8_ret0
.Lcall_proc_staged_α_571_0:
                        .quad            .Lcall_proc_staged_α_571_0_s
.Lcall_proc_staged_α_571_0_s:
                        .string          "sumdigit/5"
                        .size            n326_call_proc_staged_bx, .-n326_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_ret0:
                        lea              rax, [rip + n326_call_proc_staged_β]
                        mov              qword ptr [rbp + 5008], rax
                                                                              jmp   solve$2F8_γ
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_step:
                        mov              rdi, qword ptr [rbp + 4992]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5008], 0
                        mov              qword ptr [rbp + 4816], 0
                        mov              qword ptr [rbp + 4824], 0
                        mov              qword ptr [rbp + 4880], 0
                        mov              qword ptr [rbp + 4888], 0
                        mov              qword ptr [rbp + 4912], 0
                        mov              qword ptr [rbp + 4920], 0
                        mov              qword ptr [rbp + 4864], 0
                        mov              qword ptr [rbp + 4872], 0
                        mov              qword ptr [rbp + 4832], 0
                        mov              qword ptr [rbp + 4840], 0
                        mov              qword ptr [rbp + 4848], 0
                        mov              qword ptr [rbp + 4856], 0
                        mov              qword ptr [rbp + 4928], 0
                        mov              qword ptr [rbp + 4936], 0
                        mov              qword ptr [rbp + 4896], 0
                        mov              qword ptr [rbp + 4904], 0
                        mov              qword ptr [rbp + 4960], 0
                        mov              qword ptr [rbp + 4968], 0
                        mov              qword ptr [rbp + 4944], 0
                        mov              qword ptr [rbp + 4952], 0
                        mov              qword ptr [rbp + 4800], 0
                        mov              qword ptr [rbp + 4808], 0
                        mov              rax, qword ptr [rbp + 5000]
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
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 5008], 0
                        test             rax, rax
                                                                              jne   solve$2F8_βres
                                                                              jmp   solve$2F8_step
solve$2F8_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 5032]
                        mov              rax, qword ptr [rbp + 5016]
                        cmp              r13, rax;                            je    solve$2F8_altdet
                        lea              rdx, [rip + solve$2F8_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 5048];         jmp   rcx
solve$2F8_altdet:       xor              eax, eax
                        lea              rsp, [rbp + 5056]
                        mov              rbp, qword ptr [rbp + 5048];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
solve$2F8_ω:
                        mov              rcx, qword ptr [rbp + 5040]
                        mov              r13, qword ptr [rbp + 5016]
                        lea              rsp, [rbp + 5056]
                        mov              rbp, qword ptr [rbp + 5048];         jmp   rcx
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
                        .type            n572_var_ref_bx, @function
n572_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n572_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx;          jmp   n573_lit_integer_α
                        .size            n572_var_ref_bx, .-n572_var_ref_bx
                        .type            n573_lit_integer_bx, @function
n573_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n573_lit_integer_α:     mov              r11, 217
                        mov              qword ptr [rbp + 112], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_601_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n574_call_α
.Llit_integer_α_601_0:  .quad            1
                        .size            n573_lit_integer_bx, .-n573_lit_integer_bx
                        .type            n574_call_bx, @function
n574_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n574_call_α:            mov              r11, 218
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
n574_call_β:            mov              r11, 218;                            jmp   leftdigit$2F1_step
                        .size            n574_call_bx, .-n574_call_bx
                        .type            n575_var_ref_bx, @function
n575_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n575_var_ref_α:         mov              r11, 219
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n576_lit_integer_α
                        .size            n575_var_ref_bx, .-n575_var_ref_bx
                        .type            n576_lit_integer_bx, @function
n576_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n576_lit_integer_α:     mov              r11, 220
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_605_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n577_call_α
.Llit_integer_α_605_0:  .quad            2
                        .size            n576_lit_integer_bx, .-n576_lit_integer_bx
                        .type            n577_call_bx, @function
n577_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n577_call_α:            mov              r11, 221
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
n577_call_β:            mov              r11, 221;                            jmp   leftdigit$2F1_step
                        .size            n577_call_bx, .-n577_call_bx
                        .type            n578_var_ref_bx, @function
n578_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n578_var_ref_α:         mov              r11, 222
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n579_lit_integer_α
                        .size            n578_var_ref_bx, .-n578_var_ref_bx
                        .type            n579_lit_integer_bx, @function
n579_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n579_lit_integer_α:     mov              r11, 223
                        mov              qword ptr [rbp + 304], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_609_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n580_call_α
.Llit_integer_α_609_0:  .quad            3
                        .size            n579_lit_integer_bx, .-n579_lit_integer_bx
                        .type            n580_call_bx, @function
n580_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n580_call_α:            mov              r11, 224
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
n580_call_β:            mov              r11, 224;                            jmp   leftdigit$2F1_step
                        .size            n580_call_bx, .-n580_call_bx
                        .type            n581_var_ref_bx, @function
n581_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n581_var_ref_α:         mov              r11, 225
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n582_lit_integer_α
                        .size            n581_var_ref_bx, .-n581_var_ref_bx
                        .type            n582_lit_integer_bx, @function
n582_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n582_lit_integer_α:     mov              r11, 226
                        mov              qword ptr [rbp + 400], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_613_0]
                        mov              qword ptr [rbp + 408], rax;          jmp   n583_call_α
.Llit_integer_α_613_0:  .quad            4
                        .size            n582_lit_integer_bx, .-n582_lit_integer_bx
                        .type            n583_call_bx, @function
n583_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n583_call_α:            mov              r11, 227
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
n583_call_β:            mov              r11, 227;                            jmp   leftdigit$2F1_step
                        .size            n583_call_bx, .-n583_call_bx
                        .type            n584_var_ref_bx, @function
n584_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n584_var_ref_α:         mov              r11, 228
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n585_lit_integer_α
                        .size            n584_var_ref_bx, .-n584_var_ref_bx
                        .type            n585_lit_integer_bx, @function
n585_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n585_lit_integer_α:     mov              r11, 229
                        mov              qword ptr [rbp + 496], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_617_0]
                        mov              qword ptr [rbp + 504], rax;          jmp   n586_call_α
.Llit_integer_α_617_0:  .quad            5
                        .size            n585_lit_integer_bx, .-n585_lit_integer_bx
                        .type            n586_call_bx, @function
n586_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n586_call_α:            mov              r11, 230
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
n586_call_β:            mov              r11, 230;                            jmp   leftdigit$2F1_step
                        .size            n586_call_bx, .-n586_call_bx
                        .type            n587_var_ref_bx, @function
n587_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n587_var_ref_α:         mov              r11, 231
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n588_lit_integer_α
                        .size            n587_var_ref_bx, .-n587_var_ref_bx
                        .type            n588_lit_integer_bx, @function
n588_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n588_lit_integer_α:     mov              r11, 232
                        mov              qword ptr [rbp + 592], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_621_0]
                        mov              qword ptr [rbp + 600], rax;          jmp   n589_call_α
.Llit_integer_α_621_0:  .quad            6
                        .size            n588_lit_integer_bx, .-n588_lit_integer_bx
                        .type            n589_call_bx, @function
n589_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n589_call_α:            mov              r11, 233
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
n589_call_β:            mov              r11, 233;                            jmp   leftdigit$2F1_step
                        .size            n589_call_bx, .-n589_call_bx
                        .type            n590_var_ref_bx, @function
n590_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n590_var_ref_α:         mov              r11, 234
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n591_lit_integer_α
                        .size            n590_var_ref_bx, .-n590_var_ref_bx
                        .type            n591_lit_integer_bx, @function
n591_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n591_lit_integer_α:     mov              r11, 235
                        mov              qword ptr [rbp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_625_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n592_call_α
.Llit_integer_α_625_0:  .quad            7
                        .size            n591_lit_integer_bx, .-n591_lit_integer_bx
                        .type            n592_call_bx, @function
n592_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n592_call_α:            mov              r11, 236
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
n592_call_β:            mov              r11, 236;                            jmp   leftdigit$2F1_step
                        .size            n592_call_bx, .-n592_call_bx
                        .type            n593_var_ref_bx, @function
n593_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n593_var_ref_α:         mov              r11, 237
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n594_lit_integer_α
                        .size            n593_var_ref_bx, .-n593_var_ref_bx
                        .type            n594_lit_integer_bx, @function
n594_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n594_lit_integer_α:     mov              r11, 238
                        mov              qword ptr [rbp + 784], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_629_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n595_call_α
.Llit_integer_α_629_0:  .quad            8
                        .size            n594_lit_integer_bx, .-n594_lit_integer_bx
                        .type            n595_call_bx, @function
n595_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n595_call_α:            mov              r11, 239
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
n595_call_β:            mov              r11, 239;                            jmp   leftdigit$2F1_step
                        .size            n595_call_bx, .-n595_call_bx
                        .type            n596_var_ref_bx, @function
n596_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n596_var_ref_α:         mov              r11, 240
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n597_lit_integer_α
                        .size            n596_var_ref_bx, .-n596_var_ref_bx
                        .type            n597_lit_integer_bx, @function
n597_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n597_lit_integer_α:     mov              r11, 241
                        mov              qword ptr [rbp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_633_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n598_call_α
.Llit_integer_α_633_0:  .quad            9
                        .size            n597_lit_integer_bx, .-n597_lit_integer_bx
                        .type            n598_call_bx, @function
n598_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n598_call_α:            mov              r11, 242
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
n598_call_β:            mov              r11, 242;                            jmp   leftdigit$2F1_step
                        .size            n598_call_bx, .-n598_call_bx
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
                                                                              jmp   n575_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt2:
                        lea              rax, [rip + leftdigit$2F1_alt3]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n578_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt3:
                        lea              rax, [rip + leftdigit$2F1_alt4]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n581_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt4:
                        lea              rax, [rip + leftdigit$2F1_alt5]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n584_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt5:
                        lea              rax, [rip + leftdigit$2F1_alt6]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n587_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt6:
                        lea              rax, [rip + leftdigit$2F1_alt7]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n590_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt7:
                        lea              rax, [rip + leftdigit$2F1_alt8]
                        mov              qword ptr [rbp + 920], rax
                                                                              jmp   n593_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
leftdigit$2F1_alt8:
                        xor              eax, eax
                        mov              qword ptr [rbp + 920], rax
                        mov              r13, qword ptr [rbp + 936]
                                                                              jmp   n596_var_ref_α
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
                        sub              rsp, 2864
                        mov              qword ptr [rsp + 2840], rcx
                        mov              qword ptr [rsp + 2848], rdx
                        mov              qword ptr [rsp + 2856], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 2864]
                        mov              qword ptr [rsp + 2832], rax
                        mov              qword ptr [rsp + 2824], r13
                        mov              qword ptr [rsp + 2816], 0
                        mov              qword ptr [rsp + 2808], 0
                        mov              qword ptr [rsp + 2800], r12
                        mov              rdi, rsp
                        mov              esi, 2544
                        mov              edx, 2800
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n635_lit_string_bx, @function
n635_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n635_lit_string_α:      mov              r11, 243
                        mov              qword ptr [rbp + 2528], 2            # result
                        mov              dword ptr [rbp + 2532], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_637_0]
                        mov              qword ptr [rbp + 2536], rax;         jmp   n636_call_α
.Llit_string_α_637_0:   .quad            .Llit_string_α_637_0_s
.Llit_string_α_637_0_s: .string          "wall_us/1"
                        .size            n635_lit_string_bx, .-n635_lit_string_bx
                        .type            n636_call_bx, @function
n636_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n636_call_α:            mov              r11, 244
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2504], rax
                        lea              rdi, [rbp + 2496]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2480], rax
                        mov              qword ptr [rbp + 2488], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   main$2F0_step
n636_call_β:            mov              r11, 244;                            jmp   main$2F0_step
                        .size            n636_call_bx, .-n636_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 2800]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2816], 0
                        mov              qword ptr [rbp + 2624], 0
                        mov              qword ptr [rbp + 2632], 0
                        mov              qword ptr [rbp + 2592], 0
                        mov              qword ptr [rbp + 2600], 0
                        mov              qword ptr [rbp + 2768], 0
                        mov              qword ptr [rbp + 2776], 0
                        mov              qword ptr [rbp + 2752], 0
                        mov              qword ptr [rbp + 2760], 0
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              qword ptr [rbp + 2720], 0
                        mov              qword ptr [rbp + 2728], 0
                        mov              qword ptr [rbp + 2704], 0
                        mov              qword ptr [rbp + 2712], 0
                        mov              qword ptr [rbp + 2688], 0
                        mov              qword ptr [rbp + 2696], 0
                        mov              qword ptr [rbp + 2672], 0
                        mov              qword ptr [rbp + 2680], 0
                        mov              qword ptr [rbp + 2656], 0
                        mov              qword ptr [rbp + 2664], 0
                        mov              qword ptr [rbp + 2640], 0
                        mov              qword ptr [rbp + 2648], 0
                        mov              qword ptr [rbp + 2608], 0
                        mov              qword ptr [rbp + 2616], 0
                        mov              qword ptr [rbp + 2576], 0
                        mov              qword ptr [rbp + 2584], 0
                        mov              qword ptr [rbp + 2560], 0
                        mov              qword ptr [rbp + 2568], 0
                        mov              qword ptr [rbp + 2544], 0
                        mov              qword ptr [rbp + 2552], 0
                        mov              rax, qword ptr [rbp + 2808]
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
                        mov              rax, qword ptr [rbp + 2816]
                        mov              qword ptr [rbp + 2816], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2840]
                        mov              rax, qword ptr [rbp + 2824]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 2856];         jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 2864]
                        mov              rbp, qword ptr [rbp + 2856];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 2848]
                        mov              r13, qword ptr [rbp + 2824]
                        lea              rsp, [rbp + 2864]
                        mov              rbp, qword ptr [rbp + 2856];         jmp   rcx
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
                        .type            n639_call_proc_staged_bx, @function
n639_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n639_call_proc_staged_α:
                        mov              r11, 245
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_641_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_641_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_641_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_641_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_641_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_641_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_641_21
                        add              rsp, 32
.Lcall_proc_staged_α_641_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_641_2
.Lcall_proc_staged_α_641_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_641_2
.Lcall_proc_staged_α_641_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_641_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_key_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_641_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_641_29
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
.Lcall_proc_staged_α_641_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n639_call_proc_staged_β:
                        mov              r11, 245
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_641_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_641_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_641_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_641_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_641_0:
                        .quad            .Lcall_proc_staged_α_641_0_s
.Lcall_proc_staged_α_641_0_s:
                        .string          "main/0"
                        .size            n639_call_proc_staged_bx, .-n639_call_proc_staged_bx
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
                        .long            1584
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
                        .long            4976
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
                        .long            2784
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
