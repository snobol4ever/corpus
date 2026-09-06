                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__fib$2F2:
                        sub              rsp, 1936
                        mov              qword ptr [rsp + 1912], rcx
                        mov              qword ptr [rsp + 1920], rdx
                        mov              qword ptr [rsp + 1928], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1936]
                        mov              qword ptr [rsp + 1904], rax
                        mov              qword ptr [rsp + 1896], r13
                        mov              qword ptr [rsp + 1888], 0
                        mov              qword ptr [rsp + 1880], 0
                        mov              qword ptr [rsp + 1872], r12
                        lea              rax, [rip + fib$2F2_alt1]
                        mov              qword ptr [rsp + 1880], rax
                        lea              rdi, [rsp + 1872]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1760
                        mov              edx, 1872
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
fib$2F2_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n1_lit_integer_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_lit_integer_bx, @function
n1_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_integer_α:       mov              r11, 2
                        mov              qword ptr [rbp + 224], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_52_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n2_call_α
.Llit_integer_α_52_0:   .quad            0
                        .size            n1_lit_integer_bx, .-n1_lit_integer_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        movabs           rsi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n3_var_ref_α
n2_call_β:              mov              r11, 3;                              jmp   fib$2F2_step
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n4_lit_integer_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_lit_integer_bx, @function
n4_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_integer_α:       mov              r11, 5
                        mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_56_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n5_call_α
.Llit_integer_α_56_0:   .quad            1
                        .size            n4_lit_integer_bx, .-n4_lit_integer_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              mov              r11, 6
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n6_cut_α
n5_call_β:              mov              r11, 6;                              jmp   fib$2F2_step
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_cut_bx, @function
n6_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_cut_α:               mov              r11, 7
                        mov              qword ptr [rbp + 1880], 0
                        mov              qword ptr [rbp + 1888], 0
                        lea              rdi, [rbp + 1872]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   fib$2F2_γ
                        .size            n6_cut_bx, .-n6_cut_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n8_lit_integer_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_lit_integer_bx, @function
n8_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_lit_integer_α:       mov              r11, 9
                        mov              qword ptr [rbp + 416], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_62_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n9_call_α
.Llit_integer_α_62_0:   .quad            1
                        .size            n8_lit_integer_bx, .-n8_lit_integer_bx
                        .type            n9_call_bx, @function
n9_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_call_α:              mov              r11, 10
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n10_var_ref_α
n9_call_β:              mov              r11, 10;                             jmp   fib$2F2_step
                        .size            n9_call_bx, .-n9_call_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx;          jmp   n11_lit_integer_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_lit_integer_bx, @function
n11_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_lit_integer_α:      mov              r11, 12
                        mov              qword ptr [rbp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_66_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n12_call_α
.Llit_integer_α_66_0:   .quad            1
                        .size            n11_lit_integer_bx, .-n11_lit_integer_bx
                        .type            n12_call_bx, @function
n12_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_call_α:             mov              r11, 13
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        lea              rdi, [rbp + 256]
                        movabs           rsi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_ci@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n13_cut_α
n12_call_β:             mov              r11, 13;                             jmp   fib$2F2_step
                        .size            n12_call_bx, .-n12_call_bx
                        .type            n13_cut_bx, @function
n13_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_cut_α:              mov              r11, 14
                        mov              qword ptr [rbp + 1880], 0
                        mov              qword ptr [rbp + 1888], 0
                        lea              rdi, [rbp + 1872]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   fib$2F2_γ
                        .size            n13_cut_bx, .-n13_cut_bx
                        .type            n14_var_ref_bx, @function
n14_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_var_ref_α:          mov              r11, 15
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx;         jmp   n15_var_ref_α
                        .size            n14_var_ref_bx, .-n14_var_ref_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1840]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx;         jmp   n16_call_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_call_bx, @function
n16_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_call_α:             mov              r11, 17
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1704], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1680], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1688], rax
                        lea              rdi, [rbp + 1680]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1664], rax
                        mov              qword ptr [rbp + 1672], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n17_var_ref_α
n16_call_β:             mov              r11, 17;                             jmp   fib$2F2_step
                        .size            n16_call_bx, .-n16_call_bx
                        .type            n17_var_ref_bx, @function
n17_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx;         jmp   n18_var_ref_α
                        .size            n17_var_ref_bx, .-n17_var_ref_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 1648], rax
                        mov              qword ptr [rbp + 1656], rdx;         jmp   n19_call_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_call_bx, @function
n19_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_α:             mov              r11, 20
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1632]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1640]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1584]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n20_var_α
n19_call_β:             mov              r11, 20;                             jmp   fib$2F2_step
                        .size            n19_call_bx, .-n19_call_bx
                        .type            n20_var_bx, @function
n20_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n21_lit_integer_α
                        .size            n20_var_bx, .-n20_var_bx
                        .type            n21_lit_integer_bx, @function
n21_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_lit_integer_α:      mov              r11, 22
                        mov              qword ptr [rbp + 1552], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_82_0]
                        mov              qword ptr [rbp + 1560], rax;         jmp   n22_call_α
.Llit_integer_α_82_0:   .quad            1
                        .size            n21_lit_integer_bx, .-n21_lit_integer_bx
                        .type            n22_call_bx, @function
n22_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_α:             mov              r11, 23
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                        lea              rdi, [rbp + 1488]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n23_var_ref_α
n22_call_β:             mov              r11, 23;                             jmp   fib$2F2_step
                        .size            n22_call_bx, .-n22_call_bx
                        .type            n23_var_ref_bx, @function
n23_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1824]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n24_var_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_var_bx, @function
n24_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_α:              mov              r11, 25
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n25_call_α
                        .size            n24_var_bx, .-n24_var_bx
                        .type            n25_call_bx, @function
n25_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:             mov              r11, 26
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1384], rax
                        lea              rdi, [rbp + 1376]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n26_lit_integer_α
n25_call_β:             mov              r11, 26;                             jmp   fib$2F2_step
                        .size            n25_call_bx, .-n25_call_bx
                        .type            n26_lit_integer_bx, @function
n26_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_lit_integer_α:      mov              r11, 27
                        mov              qword ptr [rbp + 1408], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_89_0]
                        mov              qword ptr [rbp + 1416], rax;         jmp   n27_call_α
.Llit_integer_α_89_0:   .quad            1
                        .size            n26_lit_integer_bx, .-n26_lit_integer_bx
                        .type            n27_call_bx, @function
n27_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_call_α:             mov              r11, 28
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1440], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1448], rax
                        lea              rdi, [rbp + 1440]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n28_call_α
n27_call_β:             mov              r11, 28;                             jmp   fib$2F2_step
                        .size            n27_call_bx, .-n27_call_bx
                        .type            n28_call_bx, @function
n28_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_α:             mov              r11, 29
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1304], rax
                        lea              rdi, [rbp + 1296]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n29_call_α
n28_call_β:             mov              r11, 29;                             jmp   fib$2F2_step
                        .size            n28_call_bx, .-n28_call_bx
                        .type            n29_call_bx, @function
n29_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:             mov              r11, 30
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n30_var_ref_α
n29_call_β:             mov              r11, 30;                             jmp   fib$2F2_step
                        .size            n29_call_bx, .-n29_call_bx
                        .type            n30_var_ref_bx, @function
n30_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_ref_α:          mov              r11, 31
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1808]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n31_var_α
                        .size            n30_var_ref_bx, .-n30_var_ref_bx
                        .type            n31_var_bx, @function
n31_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              mov              r11, 32
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1080], rax;         jmp   n32_call_α
                        .size            n31_var_bx, .-n31_var_bx
                        .type            n32_call_bx, @function
n32_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:             mov              r11, 33
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1104]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n33_lit_integer_α
n32_call_β:             mov              r11, 33;                             jmp   fib$2F2_step
                        .size            n32_call_bx, .-n32_call_bx
                        .type            n33_lit_integer_bx, @function
n33_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_lit_integer_α:      mov              r11, 34
                        mov              qword ptr [rbp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_98_0]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n34_call_α
.Llit_integer_α_98_0:   .quad            2
                        .size            n33_lit_integer_bx, .-n33_lit_integer_bx
                        .type            n34_call_bx, @function
n34_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             mov              r11, 35
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1144]
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
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n35_call_α
n34_call_β:             mov              r11, 35;                             jmp   fib$2F2_step
                        .size            n34_call_bx, .-n34_call_bx
                        .type            n35_call_bx, @function
n35_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:             mov              r11, 36
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1144]
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
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n36_call_α
n35_call_β:             mov              r11, 36;                             jmp   fib$2F2_step
                        .size            n35_call_bx, .-n35_call_bx
                        .type            n36_call_bx, @function
n36_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_call_α:             mov              r11, 37
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n37_var_ref_α
n36_call_β:             mov              r11, 37;                             jmp   fib$2F2_step
                        .size            n36_call_bx, .-n36_call_bx
                        .type            n37_var_ref_bx, @function
n37_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1824]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n38_var_ref_α
                        .size            n37_var_ref_bx, .-n37_var_ref_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1776]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n39_call_proc_staged_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_call_proc_staged_bx, @function
n39_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_call_proc_staged_α: mov              r11, 40
                        mov              qword ptr [rbp + 864], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_107_200
                        mov              rax, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_107_201
.Lcall_proc_staged_α_107_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 896]
                        mov              rdx, qword ptr [rbp + 904]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_107_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_107_202
                        mov              rax, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_107_203
.Lcall_proc_staged_α_107_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 912]
                        mov              rdx, qword ptr [rbp + 920]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_107_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_107_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_107_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_107_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_107_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_107_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_107_3:
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_107_21
                        add              rsp, 32
.Lcall_proc_staged_α_107_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_107_2
.Lcall_proc_staged_α_107_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 864], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_107_2
.Lcall_proc_staged_α_107_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_107_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   fib$2F2_step
.Lcall_proc_staged_α_107_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_107_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
.Lcall_proc_staged_α_107_29:
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n40_var_ref_α
n39_call_proc_staged_β: mov              r11, 40
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_107_22
                        mov              rax, qword ptr [rbp + 864]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_107_22
                        mov              rcx, qword ptr [rbp + 872]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_107_22:
                                                                              jmp   fib$2F2_step
.Lcall_proc_staged_α_107_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n40_var_ref_α
.Lcall_proc_staged_α_107_0:
                        .quad            .Lcall_proc_staged_α_107_0_s
.Lcall_proc_staged_α_107_0_s:
                        .string          "fib/2"
                        .size            n39_call_proc_staged_bx, .-n39_call_proc_staged_bx
                        .type            n40_var_ref_bx, @function
n40_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1808]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n41_var_ref_α
                        .size            n40_var_ref_bx, .-n40_var_ref_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1792]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n42_call_proc_staged_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_call_proc_staged_bx, @function
n42_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_call_proc_staged_α: mov              r11, 43
                        mov              qword ptr [rbp + 752], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_113_200
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_113_201
.Lcall_proc_staged_α_113_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_113_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_113_202
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_113_203
.Lcall_proc_staged_α_113_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_113_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_113_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_113_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_113_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_113_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_113_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_113_3:
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_113_21
                        add              rsp, 32
.Lcall_proc_staged_α_113_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_113_2
.Lcall_proc_staged_α_113_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 752], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_113_2
.Lcall_proc_staged_α_113_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_113_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n39_call_proc_staged_β
.Lcall_proc_staged_α_113_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_113_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
.Lcall_proc_staged_α_113_29:
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    n39_call_proc_staged_β
                                                                              jmp   n43_var_ref_α
n42_call_proc_staged_β: mov              r11, 43
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_113_22
                        mov              rax, qword ptr [rbp + 752]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_113_22
                        mov              rcx, qword ptr [rbp + 760]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_113_22:
                                                                              jmp   n39_call_proc_staged_β
.Lcall_proc_staged_α_113_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    n39_call_proc_staged_β
                                                                              jmp   n43_var_ref_α
.Lcall_proc_staged_α_113_0:
                        .quad            .Lcall_proc_staged_α_113_0_s
.Lcall_proc_staged_α_113_0_s:
                        .string          "fib/2"
                        .size            n42_call_proc_staged_bx, .-n42_call_proc_staged_bx
                        .type            n43_var_ref_bx, @function
n43_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1760]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n44_var_α
                        .size            n43_var_ref_bx, .-n43_var_ref_bx
                        .type            n44_var_bx, @function
n44_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_α:              mov              r11, 45
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 584], rax;          jmp   n45_call_α
                        .size            n44_var_bx, .-n44_var_bx
                        .type            n45_call_bx, @function
n45_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:             mov              r11, 46
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n46_var_α
n45_call_β:             mov              r11, 46;                             jmp   fib$2F2_step
                        .size            n45_call_bx, .-n45_call_bx
                        .type            n46_var_bx, @function
n46_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              r11, 47
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 648], rax;          jmp   n47_call_α
                        .size            n46_var_bx, .-n46_var_bx
                        .type            n47_call_bx, @function
n47_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_call_α:             mov              r11, 48
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 648]
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
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n48_call_α
n47_call_β:             mov              r11, 48;                             jmp   fib$2F2_step
                        .size            n47_call_bx, .-n47_call_bx
                        .type            n48_call_bx, @function
n48_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_call_α:             mov              r11, 49
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 552], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        lea              rdi, [rbp + 528]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_add@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    fib$2F2_step
                                                                              jmp   n49_call_α
n48_call_β:             mov              r11, 49;                             jmp   fib$2F2_step
                        .size            n48_call_bx, .-n48_call_bx
                        .type            n49_call_bx, @function
n49_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:             mov              r11, 50
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    n42_call_proc_staged_β
                                                                              jmp   fib$2F2_ret2
n49_call_β:             mov              r11, 50;                             jmp   n42_call_proc_staged_β
                        .size            n49_call_bx, .-n49_call_bx
#-----------------------------------------------------------------------------------------------------------------------
fib$2F2_ret2:
                        lea              rax, [rip + n42_call_proc_staged_β]
                        mov              qword ptr [rbp + 1888], rax
                                                                              jmp   fib$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
fib$2F2_step:
                        mov              rdi, qword ptr [rbp + 1872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1888], 0
                        mov              qword ptr [rbp + 1840], 0
                        mov              qword ptr [rbp + 1848], 0
                        mov              qword ptr [rbp + 1760], 0
                        mov              qword ptr [rbp + 1768], 0
                        mov              qword ptr [rbp + 1824], 0
                        mov              qword ptr [rbp + 1832], 0
                        mov              qword ptr [rbp + 1808], 0
                        mov              qword ptr [rbp + 1816], 0
                        mov              qword ptr [rbp + 1776], 0
                        mov              qword ptr [rbp + 1784], 0
                        mov              qword ptr [rbp + 1792], 0
                        mov              qword ptr [rbp + 1800], 0
                        mov              rax, qword ptr [rbp + 1880]
                        test             rax, rax
                                                                              je    fib$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
fib$2F2_alt1:
                        lea              rax, [rip + fib$2F2_alt2]
                        mov              qword ptr [rbp + 1880], rax
                                                                              jmp   n7_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
fib$2F2_alt2:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1880], rax
                        mov              r13, qword ptr [rbp + 1896]
                                                                              jmp   n14_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
fib$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
fib$2F2_β:
                        test             r15, r15
                                                                              jne   fib$2F2_ω
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1888], 0
                        test             rax, rax
                                                                              jne   fib$2F2_βres
                                                                              jmp   fib$2F2_step
fib$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
fib$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1912]
                        mov              rax, qword ptr [rbp + 1896]
                        cmp              r13, rax;                            je    fib$2F2_altdet
                        lea              rdx, [rip + fib$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1928];         jmp   rcx
fib$2F2_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 1936]
                        mov              rbp, qword ptr [rbp + 1928];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
fib$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1920]
                        mov              r13, qword ptr [rbp + 1896]
                        lea              rsp, [rbp + 1936]
                        mov              rbp, qword ptr [rbp + 1928];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 144
                        mov              qword ptr [rsp + 120], rcx
                        mov              qword ptr [rsp + 128], rdx
                        mov              qword ptr [rsp + 136], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 144]
                        mov              qword ptr [rsp + 112], rax
                        mov              qword ptr [rsp + 104], r13
                        mov              qword ptr [rsp + 96], 0
                        mov              qword ptr [rsp + 88], 0
                        mov              qword ptr [rsp + 80], r12
                        mov              rdi, rsp
                        mov              esi, 64
                        mov              edx, 80
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n124_lit_string_bx, @function
n124_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n124_lit_string_α:      mov              r11, 51
                        mov              qword ptr [rbp + 48], 2              # result
                        mov              dword ptr [rbp + 52], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_126_0]
                        mov              qword ptr [rbp + 56], rax;           jmp   n125_call_α
.Llit_string_α_126_0:   .quad            .Llit_string_α_126_0_s
.Llit_string_α_126_0_s: .string          "wall_us/1"
                        .size            n124_lit_string_bx, .-n124_lit_string_bx
                        .type            n125_call_bx, @function
n125_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n125_call_α:            mov              r11, 52
                        mov              rax, qword ptr [rbp + 48]
                        mov              qword ptr [rbp + 16], rax
                        mov              rax, qword ptr [rbp + 56]
                        mov              qword ptr [rbp + 24], rax
                        lea              rdi, [rbp + 16]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_exist_raise@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   main$2F0_step
n125_call_β:            mov              r11, 52;                             jmp   main$2F0_step
                        .size            n125_call_bx, .-n125_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 80]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 96], 0
                        mov              rax, qword ptr [rbp + 88]
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
                        mov              rax, qword ptr [rbp + 96]
                        mov              qword ptr [rbp + 96], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 120]
                        mov              rax, qword ptr [rbp + 104]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 136];          jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 128]
                        mov              r13, qword ptr [rbp + 104]
                        lea              rsp, [rbp + 144]
                        mov              rbp, qword ptr [rbp + 136];          jmp   rcx
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
                        .type            n128_call_proc_staged_bx, @function
n128_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n128_call_proc_staged_α:
                        mov              r11, 53
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_130_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_130_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_130_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_130_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_130_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_130_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_130_21
                        add              rsp, 32
.Lcall_proc_staged_α_130_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_130_2
.Lcall_proc_staged_α_130_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_130_2
.Lcall_proc_staged_α_130_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_130_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_130_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_130_29
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
.Lcall_proc_staged_α_130_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n128_call_proc_staged_β:
                        mov              r11, 53
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_130_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_130_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_130_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_130_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_130_0:
                        .quad            .Lcall_proc_staged_α_130_0_s
.Lcall_proc_staged_α_130_0_s:
                        .string          "main/0"
                        .size            n128_call_proc_staged_bx, .-n128_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "fib/2"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__fib$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1856
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "main/0"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__main$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            64
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
