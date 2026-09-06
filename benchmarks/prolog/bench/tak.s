                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__tak$2F4:
                        sub              rsp, 2896
                        mov              qword ptr [rsp + 2872], rcx
                        mov              qword ptr [rsp + 2880], rdx
                        mov              qword ptr [rsp + 2888], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 2896]
                        mov              qword ptr [rsp + 2864], rax
                        mov              qword ptr [rsp + 2856], r13
                        mov              qword ptr [rsp + 2848], 0
                        mov              qword ptr [rsp + 2840], 0
                        mov              qword ptr [rsp + 2832], r12
                        lea              rax, [rip + tak$2F4_alt1]
                        mov              qword ptr [rsp + 2840], rax
                        lea              rdi, [rsp + 2832]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 2656
                        mov              edx, 2832
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
tak$2F4_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n1_var_ref_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n2_call_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n3_var_ref_α
n2_call_β:              mov              r11, 3;                              jmp   tak$2F4_step
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n4_var_ref_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_var_ref_bx, @function
n4_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_var_ref_α:           mov              r11, 5
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2704]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n5_call_α
                        .size            n4_var_ref_bx, .-n4_var_ref_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              mov              r11, 6
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 488], rax
                        lea              rdi, [rbp + 480]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n6_var_ref_α
n5_call_β:              mov              r11, 6;                              jmp   tak$2F4_step
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n7_var_ref_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n8_call_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_call_bx, @function
n8_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              mov              r11, 9
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n9_var_ref_α
n8_call_β:              mov              r11, 9;                              jmp   tak$2F4_step
                        .size            n8_call_bx, .-n8_call_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n10_var_ref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n11_call_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_call_bx, @function
n11_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:             mov              r11, 12
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n12_var_α
n11_call_β:             mov              r11, 12;                             jmp   tak$2F4_step
                        .size            n11_call_bx, .-n11_call_bx
                        .type            n12_var_bx, @function
n12_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_α:              mov              r11, 13
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 248], rax;          jmp   n13_var_α
                        .size            n12_var_bx, .-n12_var_bx
                        .type            n13_var_bx, @function
n13_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_α:              mov              r11, 14
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 264], rax;          jmp   n14_call_α
                        .size            n13_var_bx, .-n13_var_bx
                        .type            n14_call_bx, @function
n14_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             mov              r11, 15
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_le@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n15_var_ref_α
n14_call_β:             mov              r11, 15;                             jmp   tak$2F4_step
                        .size            n14_call_bx, .-n14_call_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n16_var_ref_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_var_ref_bx, @function
n16_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n17_call_α
                        .size            n16_var_ref_bx, .-n16_var_ref_bx
                        .type            n17_call_bx, @function
n17_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             mov              r11, 18
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 120], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        lea              rdi, [rbp + 96]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   tak$2F4_γ
n17_call_β:             mov              r11, 18;                             jmp   tak$2F4_step
                        .size            n17_call_bx, .-n17_call_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2624], rax
                        mov              qword ptr [rbp + 2632], rdx;         jmp   n19_var_ref_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_var_ref_bx, @function
n19_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_var_ref_α:          mov              r11, 20
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 2640], rax
                        mov              qword ptr [rbp + 2648], rdx;         jmp   n20_call_α
                        .size            n19_var_ref_bx, .-n19_var_ref_bx
                        .type            n20_call_bx, @function
n20_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             mov              r11, 21
                        mov              rax, qword ptr [rbp + 2640]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2648]
                        mov              qword ptr [rbp + 2600], rax
                        mov              rax, qword ptr [rbp + 2624]
                        mov              qword ptr [rbp + 2576], rax
                        mov              rax, qword ptr [rbp + 2632]
                        mov              qword ptr [rbp + 2584], rax
                        lea              rdi, [rbp + 2576]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2560], rax
                        mov              qword ptr [rbp + 2568], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n21_var_ref_α
n20_call_β:             mov              r11, 21;                             jmp   tak$2F4_step
                        .size            n20_call_bx, .-n20_call_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2528], rax
                        mov              qword ptr [rbp + 2536], rdx;         jmp   n22_var_ref_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_var_ref_bx, @function
n22_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_var_ref_α:          mov              r11, 23
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2704]
                        mov              qword ptr [rbp + 2544], rax
                        mov              qword ptr [rbp + 2552], rdx;         jmp   n23_call_α
                        .size            n22_var_ref_bx, .-n22_var_ref_bx
                        .type            n23_call_bx, @function
n23_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_call_α:             mov              r11, 24
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2536]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rdi, [rbp + 2480]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n24_var_ref_α
n23_call_β:             mov              r11, 24;                             jmp   tak$2F4_step
                        .size            n23_call_bx, .-n23_call_bx
                        .type            n24_var_ref_bx, @function
n24_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2432], rax
                        mov              qword ptr [rbp + 2440], rdx;         jmp   n25_var_ref_α
                        .size            n24_var_ref_bx, .-n24_var_ref_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx;         jmp   n26_call_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_call_bx, @function
n26_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:             mov              r11, 27
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2392], rax
                        lea              rdi, [rbp + 2384]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n27_var_ref_α
n26_call_β:             mov              r11, 27;                             jmp   tak$2F4_step
                        .size            n26_call_bx, .-n26_call_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 2336], rax
                        mov              qword ptr [rbp + 2344], rdx;         jmp   n28_var_ref_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_var_ref_bx, @function
n28_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx;         jmp   n29_call_α
                        .size            n28_var_ref_bx, .-n28_var_ref_bx
                        .type            n29_call_bx, @function
n29_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_call_α:             mov              r11, 30
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n30_var_α
n29_call_β:             mov              r11, 30;                             jmp   tak$2F4_step
                        .size            n29_call_bx, .-n29_call_bx
                        .type            n30_var_bx, @function
n30_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_var_α:              mov              r11, 31
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2240], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2248], rax;         jmp   n31_var_α
                        .size            n30_var_bx, .-n30_var_bx
                        .type            n31_var_bx, @function
n31_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_α:              mov              r11, 32
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 2264], rax;         jmp   n32_call_α
                        .size            n31_var_bx, .-n31_var_bx
                        .type            n32_call_bx, @function
n32_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_call_α:             mov              r11, 33
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2200], rax
                        lea              rdi, [rbp + 2192]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_gt@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2176], rax
                        mov              qword ptr [rbp + 2184], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n33_var_ref_α
n32_call_β:             mov              r11, 33;                             jmp   tak$2F4_step
                        .size            n32_call_bx, .-n32_call_bx
                        .type            n33_var_ref_bx, @function
n33_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_var_ref_α:          mov              r11, 34
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx;         jmp   n34_var_α
                        .size            n33_var_ref_bx, .-n33_var_ref_bx
                        .type            n34_var_bx, @function
n34_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_var_α:              mov              r11, 35
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n35_call_α
                        .size            n34_var_bx, .-n34_var_bx
                        .type            n35_call_bx, @function
n35_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_call_α:             mov              r11, 36
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2056]
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
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n36_lit_integer_α
n35_call_β:             mov              r11, 36;                             jmp   tak$2F4_step
                        .size            n35_call_bx, .-n35_call_bx
                        .type            n36_lit_integer_bx, @function
n36_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_lit_integer_α:      mov              r11, 37
                        mov              qword ptr [rbp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_134_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n37_call_α
.Llit_integer_α_134_0:  .quad            1
                        .size            n36_lit_integer_bx, .-n36_lit_integer_bx
                        .type            n37_call_bx, @function
n37_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:             mov              r11, 38
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rdi, [rbp + 2144]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n38_call_α
n37_call_β:             mov              r11, 38;                             jmp   tak$2F4_step
                        .size            n37_call_bx, .-n37_call_bx
                        .type            n38_call_bx, @function
n38_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_call_α:             mov              r11, 39
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2008], rax
                        lea              rdi, [rbp + 2000]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1984], rax
                        mov              qword ptr [rbp + 1992], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n39_call_α
n38_call_β:             mov              r11, 39;                             jmp   tak$2F4_step
                        .size            n38_call_bx, .-n38_call_bx
                        .type            n39_call_bx, @function
n39_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_call_α:             mov              r11, 40
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1976]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1920]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n40_var_ref_α
n39_call_β:             mov              r11, 40;                             jmp   tak$2F4_step
                        .size            n39_call_bx, .-n39_call_bx
                        .type            n40_var_ref_bx, @function
n40_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2800]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx;         jmp   n41_var_ref_α
                        .size            n40_var_ref_bx, .-n40_var_ref_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2704]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx;         jmp   n42_var_ref_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_var_ref_bx, @function
n42_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_var_ref_α:          mov              r11, 43
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 1872], rax
                        mov              qword ptr [rbp + 1880], rdx;         jmp   n43_var_ref_α
                        .size            n42_var_ref_bx, .-n42_var_ref_bx
                        .type            n43_var_ref_bx, @function
n43_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2720]
                        mov              qword ptr [rbp + 1888], rax
                        mov              qword ptr [rbp + 1896], rdx;         jmp   n44_call_proc_staged_α
                        .size            n43_var_ref_bx, .-n43_var_ref_bx
                        .type            n44_call_proc_staged_bx, @function
n44_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_call_proc_staged_α: mov              r11, 45
                        mov              qword ptr [rbp + 1808], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_147_200
                        mov              rax, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_147_201
.Lcall_proc_staged_α_147_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1840]
                        mov              rdx, qword ptr [rbp + 1848]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_147_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_147_202
                        mov              rax, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_147_203
.Lcall_proc_staged_α_147_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1856]
                        mov              rdx, qword ptr [rbp + 1864]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_147_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_147_204
                        mov              rax, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_147_205
.Lcall_proc_staged_α_147_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1872]
                        mov              rdx, qword ptr [rbp + 1880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_147_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_147_206
                        mov              rax, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_147_207
.Lcall_proc_staged_α_147_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1888]
                        mov              rdx, qword ptr [rbp + 1896]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_147_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_147_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_147_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_147_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_147_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_147_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_147_3:
                        mov              qword ptr [rbp + 1808], rax
                        mov              qword ptr [rbp + 1816], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_147_21
                        add              rsp, 32
.Lcall_proc_staged_α_147_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_147_2
.Lcall_proc_staged_α_147_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1808], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_147_2
.Lcall_proc_staged_α_147_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_147_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   tak$2F4_step
.Lcall_proc_staged_α_147_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_147_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1728]
                        mov              rdx, qword ptr [rbp + 1736]
.Lcall_proc_staged_α_147_29:
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n45_var_ref_α
n44_call_proc_staged_β: mov              r11, 45
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_147_22
                        mov              rax, qword ptr [rbp + 1808]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_147_22
                        mov              rcx, qword ptr [rbp + 1816]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_147_22:
                                                                              jmp   tak$2F4_step
.Lcall_proc_staged_α_147_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n45_var_ref_α
.Lcall_proc_staged_α_147_0:
                        .quad            .Lcall_proc_staged_α_147_0_s
.Lcall_proc_staged_α_147_0_s:
                        .string          "tak/4"
                        .size            n44_call_proc_staged_bx, .-n44_call_proc_staged_bx
                        .type            n45_var_ref_bx, @function
n45_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n46_var_α
                        .size            n45_var_ref_bx, .-n45_var_ref_bx
                        .type            n46_var_bx, @function
n46_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_var_α:              mov              r11, 47
                        mov              rax, qword ptr [rbp + 2704]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 2712]
                        mov              qword ptr [rbp + 1608], rax;         jmp   n47_call_α
                        .size            n46_var_bx, .-n46_var_bx
                        .type            n47_call_bx, @function
n47_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_call_α:             mov              r11, 48
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1640], rax
                        lea              rdi, [rbp + 1632]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n48_lit_integer_α
n47_call_β:             mov              r11, 48;                             jmp   tak$2F4_step
                        .size            n47_call_bx, .-n47_call_bx
                        .type            n48_lit_integer_bx, @function
n48_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_lit_integer_α:      mov              r11, 49
                        mov              qword ptr [rbp + 1664], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_153_0]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n49_call_α
.Llit_integer_α_153_0:  .quad            1
                        .size            n48_lit_integer_bx, .-n48_lit_integer_bx
                        .type            n49_call_bx, @function
n49_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_call_α:             mov              r11, 50
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1696]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n50_call_α
n49_call_β:             mov              r11, 50;                             jmp   tak$2F4_step
                        .size            n49_call_bx, .-n49_call_bx
                        .type            n50_call_bx, @function
n50_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_call_α:             mov              r11, 51
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1576], rax
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n51_call_α
n50_call_β:             mov              r11, 51;                             jmp   tak$2F4_step
                        .size            n50_call_bx, .-n50_call_bx
                        .type            n51_call_bx, @function
n51_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_call_α:             mov              r11, 52
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    n44_call_proc_staged_β
                                                                              jmp   n52_var_ref_α
n51_call_β:             mov              r11, 52;                             jmp   n44_call_proc_staged_β
                        .size            n51_call_bx, .-n51_call_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2784]
                        mov              qword ptr [rbp + 1392], rax
                        mov              qword ptr [rbp + 1400], rdx;         jmp   n53_var_ref_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_var_ref_bx, @function
n53_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_var_ref_α:          mov              r11, 54
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2656]
                        mov              qword ptr [rbp + 1408], rax
                        mov              qword ptr [rbp + 1416], rdx;         jmp   n54_var_ref_α
                        .size            n53_var_ref_bx, .-n53_var_ref_bx
                        .type            n54_var_ref_bx, @function
n54_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_var_ref_α:          mov              r11, 55
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 1424], rax
                        mov              qword ptr [rbp + 1432], rdx;         jmp   n55_var_ref_α
                        .size            n54_var_ref_bx, .-n54_var_ref_bx
                        .type            n55_var_ref_bx, @function
n55_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2736]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx;         jmp   n56_call_proc_staged_α
                        .size            n55_var_ref_bx, .-n55_var_ref_bx
                        .type            n56_call_proc_staged_bx, @function
n56_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_call_proc_staged_α: mov              r11, 57
                        mov              qword ptr [rbp + 1360], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_166_200
                        mov              rax, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_166_201
.Lcall_proc_staged_α_166_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1392]
                        mov              rdx, qword ptr [rbp + 1400]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_166_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_166_202
                        mov              rax, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_166_203
.Lcall_proc_staged_α_166_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1408]
                        mov              rdx, qword ptr [rbp + 1416]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_166_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_166_204
                        mov              rax, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_166_205
.Lcall_proc_staged_α_166_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1424]
                        mov              rdx, qword ptr [rbp + 1432]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_166_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_166_206
                        mov              rax, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_166_207
.Lcall_proc_staged_α_166_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1440]
                        mov              rdx, qword ptr [rbp + 1448]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_166_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_166_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_166_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_166_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_166_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_166_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_166_3:
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_166_21
                        add              rsp, 32
.Lcall_proc_staged_α_166_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_166_2
.Lcall_proc_staged_α_166_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1360], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_166_2
.Lcall_proc_staged_α_166_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_166_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n44_call_proc_staged_β
.Lcall_proc_staged_α_166_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_166_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1280]
                        mov              rdx, qword ptr [rbp + 1288]
.Lcall_proc_staged_α_166_29:
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    n44_call_proc_staged_β
                                                                              jmp   n57_var_ref_α
n56_call_proc_staged_β: mov              r11, 57
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_166_22
                        mov              rax, qword ptr [rbp + 1360]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_166_22
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_166_22:
                                                                              jmp   n44_call_proc_staged_β
.Lcall_proc_staged_α_166_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx
                        cmp              al, 104;                             je    n44_call_proc_staged_β
                                                                              jmp   n57_var_ref_α
.Lcall_proc_staged_α_166_0:
                        .quad            .Lcall_proc_staged_α_166_0_s
.Lcall_proc_staged_α_166_0_s:
                        .string          "tak/4"
                        .size            n56_call_proc_staged_bx, .-n56_call_proc_staged_bx
                        .type            n57_var_ref_bx, @function
n57_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_var_ref_α:          mov              r11, 58
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n58_var_α
                        .size            n57_var_ref_bx, .-n57_var_ref_bx
                        .type            n58_var_bx, @function
n58_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_α:              mov              r11, 59
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 1160], rax;         jmp   n59_call_α
                        .size            n58_var_bx, .-n58_var_bx
                        .type            n59_call_bx, @function
n59_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_call_α:             mov              r11, 60
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1192], rax
                        lea              rdi, [rbp + 1184]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n60_lit_integer_α
n59_call_β:             mov              r11, 60;                             jmp   tak$2F4_step
                        .size            n59_call_bx, .-n59_call_bx
                        .type            n60_lit_integer_bx, @function
n60_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_lit_integer_α:      mov              r11, 61
                        mov              qword ptr [rbp + 1216], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_172_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n61_call_α
.Llit_integer_α_172_0:  .quad            1
                        .size            n60_lit_integer_bx, .-n60_lit_integer_bx
                        .type            n61_call_bx, @function
n61_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_call_α:             mov              r11, 62
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1248]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n62_call_α
n61_call_β:             mov              r11, 62;                             jmp   tak$2F4_step
                        .size            n61_call_bx, .-n61_call_bx
                        .type            n62_call_bx, @function
n62_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_call_α:             mov              r11, 63
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1104]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    tak$2F4_step
                                                                              jmp   n63_call_α
n62_call_β:             mov              r11, 63;                             jmp   tak$2F4_step
                        .size            n62_call_bx, .-n62_call_bx
                        .type            n63_call_bx, @function
n63_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:             mov              r11, 64
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
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    n56_call_proc_staged_β
                                                                              jmp   n64_var_ref_α
n63_call_β:             mov              r11, 64;                             jmp   n56_call_proc_staged_β
                        .size            n63_call_bx, .-n63_call_bx
                        .type            n64_var_ref_bx, @function
n64_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n64_var_ref_α:          mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2768]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n65_var_ref_α
                        .size            n64_var_ref_bx, .-n64_var_ref_bx
                        .type            n65_var_ref_bx, @function
n65_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n65_var_ref_α:          mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2688]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx;          jmp   n66_var_ref_α
                        .size            n65_var_ref_bx, .-n65_var_ref_bx
                        .type            n66_var_ref_bx, @function
n66_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n66_var_ref_α:          mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2704]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx;          jmp   n67_var_ref_α
                        .size            n66_var_ref_bx, .-n66_var_ref_bx
                        .type            n67_var_ref_bx, @function
n67_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n67_var_ref_α:          mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx;         jmp   n68_call_proc_staged_α
                        .size            n67_var_ref_bx, .-n67_var_ref_bx
                        .type            n68_call_proc_staged_bx, @function
n68_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n68_call_proc_staged_α: mov              r11, 69
                        mov              qword ptr [rbp + 912], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_185_200
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_185_201
.Lcall_proc_staged_α_185_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_185_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_185_202
                        mov              rax, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_185_203
.Lcall_proc_staged_α_185_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 960]
                        mov              rdx, qword ptr [rbp + 968]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_185_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_185_204
                        mov              rax, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_185_205
.Lcall_proc_staged_α_185_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 976]
                        mov              rdx, qword ptr [rbp + 984]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_185_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_185_206
                        mov              rax, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_185_207
.Lcall_proc_staged_α_185_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 992]
                        mov              rdx, qword ptr [rbp + 1000]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_185_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_185_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_185_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_185_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_185_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_185_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_185_3:
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_185_21
                        add              rsp, 32
.Lcall_proc_staged_α_185_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_185_2
.Lcall_proc_staged_α_185_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 912], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_185_2
.Lcall_proc_staged_α_185_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_185_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n56_call_proc_staged_β
.Lcall_proc_staged_α_185_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_185_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
.Lcall_proc_staged_α_185_29:
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    n56_call_proc_staged_β
                                                                              jmp   n69_var_ref_α
n68_call_proc_staged_β: mov              r11, 69
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_185_22
                        mov              rax, qword ptr [rbp + 912]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_185_22
                        mov              rcx, qword ptr [rbp + 920]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_185_22:
                                                                              jmp   n56_call_proc_staged_β
.Lcall_proc_staged_α_185_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    n56_call_proc_staged_β
                                                                              jmp   n69_var_ref_α
.Lcall_proc_staged_α_185_0:
                        .quad            .Lcall_proc_staged_α_185_0_s
.Lcall_proc_staged_α_185_0_s:
                        .string          "tak/4"
                        .size            n68_call_proc_staged_bx, .-n68_call_proc_staged_bx
                        .type            n69_var_ref_bx, @function
n69_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n69_var_ref_α:          mov              r11, 70
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2720]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n70_var_ref_α
                        .size            n69_var_ref_bx, .-n69_var_ref_bx
                        .type            n70_var_ref_bx, @function
n70_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n70_var_ref_α:          mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2736]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n71_var_ref_α
                        .size            n70_var_ref_bx, .-n70_var_ref_bx
                        .type            n71_var_ref_bx, @function
n71_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n71_var_ref_α:          mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2752]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n72_var_ref_α
                        .size            n71_var_ref_bx, .-n71_var_ref_bx
                        .type            n72_var_ref_bx, @function
n72_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n72_var_ref_α:          mov              r11, 73
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2672]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n73_call_proc_staged_α
                        .size            n72_var_ref_bx, .-n72_var_ref_bx
                        .type            n73_call_proc_staged_bx, @function
n73_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n73_call_proc_staged_α: mov              r11, 74
                        mov              qword ptr [rbp + 736], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_195_200
                        mov              rax, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_195_201
.Lcall_proc_staged_α_195_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 768]
                        mov              rdx, qword ptr [rbp + 776]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_195_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_195_202
                        mov              rax, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_195_203
.Lcall_proc_staged_α_195_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 784]
                        mov              rdx, qword ptr [rbp + 792]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_195_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_195_204
                        mov              rax, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_195_205
.Lcall_proc_staged_α_195_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 800]
                        mov              rdx, qword ptr [rbp + 808]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_195_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_195_206
                        mov              rax, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_195_207
.Lcall_proc_staged_α_195_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 816]
                        mov              rdx, qword ptr [rbp + 824]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_195_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_195_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 4
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_195_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 4
                        mov              rsi, rbp
                        lea              rdx, [rbp + 2896]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_195_99
                        mov              r10, qword ptr [rbp + 2856]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_195_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_195_99
                        mov              rcx, qword ptr [rbp + 2872]
                        mov              rdx, qword ptr [rbp + 2880]
                        lea              rsp, [rbp + 2896]
                        mov              rbp, qword ptr [rbp + 2888];         jmp   rax
.Lcall_proc_staged_α_195_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_195_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_195_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_195_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_195_3:
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_195_21
                        add              rsp, 32
.Lcall_proc_staged_α_195_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_195_2
.Lcall_proc_staged_α_195_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 736], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_195_2
.Lcall_proc_staged_α_195_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_195_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n68_call_proc_staged_β
.Lcall_proc_staged_α_195_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_195_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 656]
                        mov              rdx, qword ptr [rbp + 664]
.Lcall_proc_staged_α_195_29:
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    n68_call_proc_staged_β
                                                                              jmp   tak$2F4_ret1
n73_call_proc_staged_β: mov              r11, 74
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_195_22
                        mov              rax, qword ptr [rbp + 736]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_195_22
                        mov              rcx, qword ptr [rbp + 744]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_195_22:
                                                                              jmp   n68_call_proc_staged_β
.Lcall_proc_staged_α_195_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    n68_call_proc_staged_β
                                                                              jmp   tak$2F4_ret1
.Lcall_proc_staged_α_195_0:
                        .quad            .Lcall_proc_staged_α_195_0_s
.Lcall_proc_staged_α_195_0_s:
                        .string          "tak/4"
                        .size            n73_call_proc_staged_bx, .-n73_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_ret1:
                        lea              rax, [rip + n73_call_proc_staged_β]
                        mov              qword ptr [rbp + 2848], rax
                                                                              jmp   tak$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_step:
                        mov              rdi, qword ptr [rbp + 2832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2848], 0
                        mov              qword ptr [rbp + 2688], 0
                        mov              qword ptr [rbp + 2696], 0
                        mov              qword ptr [rbp + 2704], 0
                        mov              qword ptr [rbp + 2712], 0
                        mov              qword ptr [rbp + 2656], 0
                        mov              qword ptr [rbp + 2664], 0
                        mov              qword ptr [rbp + 2672], 0
                        mov              qword ptr [rbp + 2680], 0
                        mov              qword ptr [rbp + 2800], 0
                        mov              qword ptr [rbp + 2808], 0
                        mov              qword ptr [rbp + 2720], 0
                        mov              qword ptr [rbp + 2728], 0
                        mov              qword ptr [rbp + 2784], 0
                        mov              qword ptr [rbp + 2792], 0
                        mov              qword ptr [rbp + 2736], 0
                        mov              qword ptr [rbp + 2744], 0
                        mov              qword ptr [rbp + 2768], 0
                        mov              qword ptr [rbp + 2776], 0
                        mov              qword ptr [rbp + 2752], 0
                        mov              qword ptr [rbp + 2760], 0
                        mov              rax, qword ptr [rbp + 2840]
                        test             rax, rax
                                                                              je    tak$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 2840], rax
                        mov              r13, qword ptr [rbp + 2856]
                                                                              jmp   n18_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_β:
                        test             r15, r15
                                                                              jne   tak$2F4_ω
                        mov              rax, qword ptr [rbp + 2848]
                        mov              qword ptr [rbp + 2848], 0
                        test             rax, rax
                                                                              jne   tak$2F4_βres
                                                                              jmp   tak$2F4_step
tak$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2872]
                        mov              rax, qword ptr [rbp + 2856]
                        cmp              r13, rax;                            je    tak$2F4_altdet
                        lea              rdx, [rip + tak$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 2888];         jmp   rcx
tak$2F4_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 2896]
                        mov              rbp, qword ptr [rbp + 2888];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
tak$2F4_ω:
                        mov              rcx, qword ptr [rbp + 2880]
                        mov              r13, qword ptr [rbp + 2856]
                        lea              rsp, [rbp + 2896]
                        mov              rbp, qword ptr [rbp + 2888];         jmp   rcx
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
                        .type            n196_lit_string_bx, @function
n196_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rbp + 48], 2              # result
                        mov              dword ptr [rbp + 52], 9
                        mov              rax, qword ptr [rip + .Llit_string_α_198_0]
                        mov              qword ptr [rbp + 56], rax;           jmp   n197_call_α
.Llit_string_α_198_0:   .quad            .Llit_string_α_198_0_s
.Llit_string_α_198_0_s: .string          "wall_us/1"
                        .size            n196_lit_string_bx, .-n196_lit_string_bx
                        .type            n197_call_bx, @function
n197_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_call_α:            mov              r11, 76
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
n197_call_β:            mov              r11, 76;                             jmp   main$2F0_step
                        .size            n197_call_bx, .-n197_call_bx
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
                        .type            n200_call_proc_staged_bx, @function
n200_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_call_proc_staged_α:
                        mov              r11, 77
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_202_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_202_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_202_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_202_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_202_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_202_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_202_21
                        add              rsp, 32
.Lcall_proc_staged_α_202_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_202_2
.Lcall_proc_staged_α_202_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_202_2
.Lcall_proc_staged_α_202_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_202_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_202_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_202_29
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
.Lcall_proc_staged_α_202_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n200_call_proc_staged_β:
                        mov              r11, 77
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_202_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_202_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_202_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_202_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_202_0:
                        .quad            .Lcall_proc_staged_α_202_0_s
.Lcall_proc_staged_α_202_0_s:
                        .string          "main/0"
                        .size            n200_call_proc_staged_bx, .-n200_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "tak/4"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__tak$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            2816
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
