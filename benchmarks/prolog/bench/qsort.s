                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__partition$2F4:
                        sub              rsp, 2400
                        mov              qword ptr [rsp + 2376], rcx
                        mov              qword ptr [rsp + 2384], rdx
                        mov              qword ptr [rsp + 2392], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 2400]
                        mov              qword ptr [rsp + 2368], rax
                        mov              qword ptr [rsp + 2360], r13
                        mov              qword ptr [rsp + 2352], 0
                        mov              qword ptr [rsp + 2344], 0
                        mov              qword ptr [rsp + 2336], r12
                        lea              rax, [rip + partition$2F4_alt1]
                        mov              qword ptr [rsp + 2344], rax
                        lea              rdi, [rsp + 2336]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 2224
                        mov              edx, 2336
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 4
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
partition$2F4_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n1_lit_string_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_lit_string_bx, @function
n1_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_lit_string_α:        mov              r11, 2
                        mov              qword ptr [rbp + 1040], 2            # result
                        mov              dword ptr [rbp + 1044], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_66_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n2_var_ref_α
.Llit_string_α_66_0:    .quad            .Llit_string_α_66_0_s
.Llit_string_α_66_0_s:  .string          "."
                        .size            n1_lit_string_bx, .-n1_lit_string_bx
                        .type            n2_var_ref_bx, @function
n2_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_var_ref_α:           mov              r11, 3
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n3_var_ref_α
                        .size            n2_var_ref_bx, .-n2_var_ref_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n4_call_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_call_bx, @function
n4_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_call_α:              mov              r11, 5
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1016], rax
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 952]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 984], rax
                        lea              rdi, [rbp + 976]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 960], rax
                        mov              qword ptr [rbp + 968], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n5_call_α
n4_call_β:              mov              r11, 5;                              jmp   partition$2F4_step
                        .size            n4_call_bx, .-n4_call_bx
                        .type            n5_call_bx, @function
n5_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_call_α:              mov              r11, 6
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 872], rax
                        lea              rdi, [rbp + 864]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n6_var_ref_α
n5_call_β:              mov              r11, 6;                              jmp   partition$2F4_step
                        .size            n5_call_bx, .-n5_call_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n7_var_ref_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_var_ref_bx, @function
n7_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_var_ref_α:           mov              r11, 8
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n8_call_α
                        .size            n7_var_ref_bx, .-n7_var_ref_bx
                        .type            n8_call_bx, @function
n8_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              mov              r11, 9
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n9_var_ref_α
n8_call_β:              mov              r11, 9;                              jmp   partition$2F4_step
                        .size            n8_call_bx, .-n8_call_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n10_lit_string_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_lit_string_bx, @function
n10_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_lit_string_α:       mov              r11, 11
                        mov              qword ptr [rbp + 736], 2             # result
                        mov              dword ptr [rbp + 740], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_80_0]
                        mov              qword ptr [rbp + 744], rax;          jmp   n11_var_ref_α
.Llit_string_α_80_0:    .quad            .Llit_string_α_80_0_s
.Llit_string_α_80_0_s:  .string          "."
                        .size            n10_lit_string_bx, .-n10_lit_string_bx
                        .type            n11_var_ref_bx, @function
n11_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_var_ref_α:          mov              r11, 12
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n12_var_ref_α
                        .size            n11_var_ref_bx, .-n11_var_ref_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n13_call_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_call_bx, @function
n13_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_call_α:             mov              r11, 14
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 680], rax
                        lea              rdi, [rbp + 672]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n14_call_α
n13_call_β:             mov              r11, 14;                             jmp   partition$2F4_step
                        .size            n13_call_bx, .-n13_call_bx
                        .type            n14_call_bx, @function
n14_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             mov              r11, 15
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 664]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n15_var_ref_α
n14_call_β:             mov              r11, 15;                             jmp   partition$2F4_step
                        .size            n14_call_bx, .-n14_call_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx;          jmp   n16_var_ref_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_var_ref_bx, @function
n16_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_var_ref_α:          mov              r11, 17
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2272]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n17_call_α
                        .size            n16_var_ref_bx, .-n16_var_ref_bx
                        .type            n17_call_bx, @function
n17_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_call_α:             mov              r11, 18
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n18_var_α
n17_call_β:             mov              r11, 18;                             jmp   partition$2F4_step
                        .size            n17_call_bx, .-n17_call_bx
                        .type            n18_var_bx, @function
n18_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_α:              mov              r11, 19
                        mov              rax, qword ptr [rbp + 2288]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 2296]
                        mov              qword ptr [rbp + 328], rax;          jmp   n19_call_α
                        .size            n18_var_bx, .-n18_var_bx
                        .type            n19_call_bx, @function
n19_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_α:             mov              r11, 20
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n20_var_α
n19_call_β:             mov              r11, 20;                             jmp   partition$2F4_step
                        .size            n19_call_bx, .-n19_call_bx
                        .type            n20_var_bx, @function
n20_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_var_α:              mov              r11, 21
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 344], rax;          jmp   n21_call_α
                        .size            n20_var_bx, .-n20_var_bx
                        .type            n21_call_bx, @function
n21_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_call_α:             mov              r11, 22
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 424], rax
                        lea              rdi, [rbp + 416]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_eguard@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n22_call_α
n21_call_β:             mov              r11, 22;                             jmp   partition$2F4_step
                        .size            n21_call_bx, .-n21_call_bx
                        .type            n22_call_bx, @function
n22_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_call_α:             mov              r11, 23
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_le@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n23_cut_α
n22_call_β:             mov              r11, 23;                             jmp   partition$2F4_step
                        .size            n22_call_bx, .-n22_call_bx
                        .type            n23_cut_bx, @function
n23_cut_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_cut_α:              mov              r11, 24
                        mov              qword ptr [rbp + 2344], 0
                        mov              qword ptr [rbp + 2352], 0
                        lea              rdi, [rbp + 2336]
                        call             rt_pl_cut_barrier@PLT
                        mov              rsp, rbp;                            jmp   n24_var_ref_α
                        .size            n23_cut_bx, .-n23_cut_bx
                        .type            n24_var_ref_bx, @function
n24_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n25_var_ref_α
                        .size            n24_var_ref_bx, .-n24_var_ref_bx
                        .type            n25_var_ref_bx, @function
n25_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_var_ref_α:          mov              r11, 26
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n26_var_ref_α
                        .size            n25_var_ref_bx, .-n25_var_ref_bx
                        .type            n26_var_ref_bx, @function
n26_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_var_ref_α:          mov              r11, 27
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n27_var_ref_α
                        .size            n26_var_ref_bx, .-n26_var_ref_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2272]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n28_call_proc_staged_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_call_proc_staged_bx, @function
n28_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_call_proc_staged_α: mov              r11, 29
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_110_200
                        mov              rax, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_110_201
.Lcall_proc_staged_α_110_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 192]
                        mov              rdx, qword ptr [rbp + 200]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_110_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_110_202
                        mov              rax, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_110_203
.Lcall_proc_staged_α_110_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 208]
                        mov              rdx, qword ptr [rbp + 216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_110_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_110_204
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_110_205
.Lcall_proc_staged_α_110_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_110_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_110_206
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_110_207
.Lcall_proc_staged_α_110_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_110_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_110_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_110_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 4
                        mov              rsi, rbp
                        lea              rdx, [rbp + 2400]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_110_99
                        mov              r10, qword ptr [rbp + 2360]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_110_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_110_99
                        mov              rcx, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2384]
                        lea              rsp, [rbp + 2400]
                        mov              rbp, qword ptr [rbp + 2392];         jmp   rax
.Lcall_proc_staged_α_110_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_110_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_110_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_110_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_110_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_110_21
                        add              rsp, 32
.Lcall_proc_staged_α_110_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_110_2
.Lcall_proc_staged_α_110_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_110_2
.Lcall_proc_staged_α_110_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_110_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   partition$2F4_ω
.Lcall_proc_staged_α_110_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_110_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 80]
                        mov              rdx, qword ptr [rbp + 88]
.Lcall_proc_staged_α_110_29:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    partition$2F4_ω
                                                                              jmp   partition$2F4_ret0
n28_call_proc_staged_β: mov              r11, 29
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_110_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_110_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_110_22:
                                                                              jmp   partition$2F4_ω
.Lcall_proc_staged_α_110_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        cmp              al, 104;                             je    partition$2F4_ω
                                                                              jmp   partition$2F4_ret0
.Lcall_proc_staged_α_110_0:
                        .quad            .Lcall_proc_staged_α_110_0_s
.Lcall_proc_staged_α_110_0_s:
                        .string          "partition/4"
                        .size            n28_call_proc_staged_bx, .-n28_call_proc_staged_bx
                        .type            n29_var_ref_bx, @function
n29_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n30_lit_string_α
                        .size            n29_var_ref_bx, .-n29_var_ref_bx
                        .type            n30_lit_string_bx, @function
n30_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_lit_string_α:       mov              r11, 31
                        mov              qword ptr [rbp + 1824], 2            # result
                        mov              dword ptr [rbp + 1828], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_113_0]
                        mov              qword ptr [rbp + 1832], rax;         jmp   n31_var_ref_α
.Llit_string_α_113_0:   .quad            .Llit_string_α_113_0_s
.Llit_string_α_113_0_s: .string          "."
                        .size            n30_lit_string_bx, .-n30_lit_string_bx
                        .type            n31_var_ref_bx, @function
n31_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n31_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1728], rax
                        mov              qword ptr [rbp + 1736], rdx;         jmp   n32_var_ref_α
                        .size            n31_var_ref_bx, .-n31_var_ref_bx
                        .type            n32_var_ref_bx, @function
n32_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n32_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx;         jmp   n33_call_α
                        .size            n32_var_ref_bx, .-n32_var_ref_bx
                        .type            n33_call_bx, @function
n33_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n33_call_α:             mov              r11, 34
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1792], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1800], rax
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1776], rax
                        mov              rax, qword ptr [rbp + 1736]
                        mov              qword ptr [rbp + 1784], rax
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1768], rax
                        lea              rdi, [rbp + 1760]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1744], rax
                        mov              qword ptr [rbp + 1752], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n34_call_α
n33_call_β:             mov              r11, 34;                             jmp   partition$2F4_step
                        .size            n33_call_bx, .-n33_call_bx
                        .type            n34_call_bx, @function
n34_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n34_call_α:             mov              r11, 35
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1672], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1656], rax
                        lea              rdi, [rbp + 1648]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1632], rax
                        mov              qword ptr [rbp + 1640], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n35_var_ref_α
n34_call_β:             mov              r11, 35;                             jmp   partition$2F4_step
                        .size            n34_call_bx, .-n34_call_bx
                        .type            n35_var_ref_bx, @function
n35_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n35_var_ref_α:          mov              r11, 36
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n36_var_ref_α
                        .size            n35_var_ref_bx, .-n35_var_ref_bx
                        .type            n36_var_ref_bx, @function
n36_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n36_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 1616], rax
                        mov              qword ptr [rbp + 1624], rdx;         jmp   n37_call_α
                        .size            n36_var_ref_bx, .-n36_var_ref_bx
                        .type            n37_call_bx, @function
n37_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n37_call_α:             mov              r11, 38
                        mov              rax, qword ptr [rbp + 1616]
                        mov              qword ptr [rbp + 1568], rax
                        mov              rax, qword ptr [rbp + 1624]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n38_var_ref_α
n37_call_β:             mov              r11, 38;                             jmp   partition$2F4_step
                        .size            n37_call_bx, .-n37_call_bx
                        .type            n38_var_ref_bx, @function
n38_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n38_var_ref_α:          mov              r11, 39
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx;         jmp   n39_var_ref_α
                        .size            n38_var_ref_bx, .-n38_var_ref_bx
                        .type            n39_var_ref_bx, @function
n39_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n39_var_ref_α:          mov              r11, 40
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 1520], rax
                        mov              qword ptr [rbp + 1528], rdx;         jmp   n40_call_α
                        .size            n39_var_ref_bx, .-n39_var_ref_bx
                        .type            n40_call_bx, @function
n40_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n40_call_α:             mov              r11, 41
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1512]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1456]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n41_var_ref_α
n40_call_β:             mov              r11, 41;                             jmp   partition$2F4_step
                        .size            n40_call_bx, .-n40_call_bx
                        .type            n41_var_ref_bx, @function
n41_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n41_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n42_lit_string_α
                        .size            n41_var_ref_bx, .-n41_var_ref_bx
                        .type            n42_lit_string_bx, @function
n42_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n42_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rbp + 1424], 2            # result
                        mov              dword ptr [rbp + 1428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_132_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n43_var_ref_α
.Llit_string_α_132_0:   .quad            .Llit_string_α_132_0_s
.Llit_string_α_132_0_s: .string          "."
                        .size            n42_lit_string_bx, .-n42_lit_string_bx
                        .type            n43_var_ref_bx, @function
n43_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n43_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n44_var_ref_α
                        .size            n43_var_ref_bx, .-n43_var_ref_bx
                        .type            n44_var_ref_bx, @function
n44_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n44_var_ref_α:          mov              r11, 45
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 1312], rax
                        mov              qword ptr [rbp + 1320], rdx;         jmp   n45_call_α
                        .size            n44_var_ref_bx, .-n44_var_ref_bx
                        .type            n45_call_bx, @function
n45_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n45_call_α:             mov              r11, 46
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n46_call_α
n45_call_β:             mov              r11, 46;                             jmp   partition$2F4_step
                        .size            n45_call_bx, .-n45_call_bx
                        .type            n46_call_bx, @function
n46_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n46_call_α:             mov              r11, 47
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1248]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n47_var_ref_α
n46_call_β:             mov              r11, 47;                             jmp   partition$2F4_step
                        .size            n46_call_bx, .-n46_call_bx
                        .type            n47_var_ref_bx, @function
n47_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n47_var_ref_α:          mov              r11, 48
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2224]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n48_var_ref_α
                        .size            n47_var_ref_bx, .-n47_var_ref_bx
                        .type            n48_var_ref_bx, @function
n48_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n48_var_ref_α:          mov              r11, 49
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2240]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n49_var_ref_α
                        .size            n48_var_ref_bx, .-n48_var_ref_bx
                        .type            n49_var_ref_bx, @function
n49_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n49_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2304]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx;         jmp   n50_var_ref_α
                        .size            n49_var_ref_bx, .-n49_var_ref_bx
                        .type            n50_var_ref_bx, @function
n50_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n50_var_ref_α:          mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2256]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n51_call_proc_staged_α
                        .size            n50_var_ref_bx, .-n50_var_ref_bx
                        .type            n51_call_proc_staged_bx, @function
n51_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n51_call_proc_staged_α: mov              r11, 52
                        mov              qword ptr [rbp + 1136], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_148_200
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_148_201
.Lcall_proc_staged_α_148_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_148_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_148_202
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_148_203
.Lcall_proc_staged_α_148_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_148_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_148_204
                        mov              rax, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_148_205
.Lcall_proc_staged_α_148_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1200]
                        mov              rdx, qword ptr [rbp + 1208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_148_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_148_206
                        mov              rax, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_148_207
.Lcall_proc_staged_α_148_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 1216]
                        mov              rdx, qword ptr [rbp + 1224]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_148_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_148_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_148_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 4
                        mov              rsi, rbp
                        lea              rdx, [rbp + 2400]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_148_99
                        mov              r10, qword ptr [rbp + 2360]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_148_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_148_99
                        mov              rcx, qword ptr [rbp + 2376]
                        mov              rdx, qword ptr [rbp + 2384]
                        lea              rsp, [rbp + 2400]
                        mov              rbp, qword ptr [rbp + 2392];         jmp   rax
.Lcall_proc_staged_α_148_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_148_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_148_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_148_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_148_3:
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_148_21
                        add              rsp, 32
.Lcall_proc_staged_α_148_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_148_2
.Lcall_proc_staged_α_148_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1136], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_148_2
.Lcall_proc_staged_α_148_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_148_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   partition$2F4_step
.Lcall_proc_staged_α_148_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_148_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 1056]
                        mov              rdx, qword ptr [rbp + 1064]
.Lcall_proc_staged_α_148_29:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   partition$2F4_ret1
n51_call_proc_staged_β: mov              r11, 52
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_148_22
                        mov              rax, qword ptr [rbp + 1136]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_148_22
                        mov              rcx, qword ptr [rbp + 1144]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_148_22:
                                                                              jmp   partition$2F4_step
.Lcall_proc_staged_α_148_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   partition$2F4_ret1
.Lcall_proc_staged_α_148_0:
                        .quad            .Lcall_proc_staged_α_148_0_s
.Lcall_proc_staged_α_148_0_s:
                        .string          "partition/4"
                        .size            n51_call_proc_staged_bx, .-n51_call_proc_staged_bx
                        .type            n52_var_ref_bx, @function
n52_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n52_var_ref_α:          mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2192], rax
                        mov              qword ptr [rbp + 2200], rdx;         jmp   n53_lit_string_α
                        .size            n52_var_ref_bx, .-n52_var_ref_bx
                        .type            n53_lit_string_bx, @function
n53_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n53_lit_string_α:       mov              r11, 54
                        mov              qword ptr [rbp + 2208], 2            # result
                        mov              dword ptr [rbp + 2212], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_151_0]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n54_call_α
.Llit_string_α_151_0:   .quad            .Llit_string_α_151_0_s
.Llit_string_α_151_0_s: .string          "[]"
                        .size            n53_lit_string_bx, .-n53_lit_string_bx
                        .type            n54_call_bx, @function
n54_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n54_call_α:             mov              r11, 55
                        mov              rax, qword ptr [rbp + 2192]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2200]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rdi, [rbp + 2144]
                        mov              rsi, qword ptr [rip + .Lcall_α_152_2]
                                                                              jmp   .Lcall_α_152_3
.Lcall_α_152_2:         .quad            .Lcall_α_152_2_s
.Lcall_α_152_2_s:       .string          "[]"
.Lcall_α_152_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n55_var_ref_α
n54_call_β:             mov              r11, 55;                             jmp   partition$2F4_step
                        .size            n54_call_bx, .-n54_call_bx
                        .type            n55_var_ref_bx, @function
n55_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n55_var_ref_α:          mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2096], rax
                        mov              qword ptr [rbp + 2104], rdx;         jmp   n56_var_ref_α
                        .size            n55_var_ref_bx, .-n55_var_ref_bx
                        .type            n56_var_ref_bx, @function
n56_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n56_var_ref_α:          mov              r11, 57
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2288]
                        mov              qword ptr [rbp + 2112], rax
                        mov              qword ptr [rbp + 2120], rdx;         jmp   n57_call_α
                        .size            n56_var_ref_bx, .-n56_var_ref_bx
                        .type            n57_call_bx, @function
n57_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n57_call_α:             mov              r11, 58
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2056], rax
                        lea              rdi, [rbp + 2048]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2032], rax
                        mov              qword ptr [rbp + 2040], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n58_var_ref_α
n57_call_β:             mov              r11, 58;                             jmp   partition$2F4_step
                        .size            n57_call_bx, .-n57_call_bx
                        .type            n58_var_ref_bx, @function
n58_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n58_var_ref_α:          mov              r11, 59
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 2000], rax
                        mov              qword ptr [rbp + 2008], rdx;         jmp   n59_lit_string_α
                        .size            n58_var_ref_bx, .-n58_var_ref_bx
                        .type            n59_lit_string_bx, @function
n59_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n59_lit_string_α:       mov              r11, 60
                        mov              qword ptr [rbp + 2016], 2            # result
                        mov              dword ptr [rbp + 2020], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_160_0]
                        mov              qword ptr [rbp + 2024], rax;         jmp   n60_call_α
.Llit_string_α_160_0:   .quad            .Llit_string_α_160_0_s
.Llit_string_α_160_0_s: .string          "[]"
                        .size            n59_lit_string_bx, .-n59_lit_string_bx
                        .type            n60_call_bx, @function
n60_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n60_call_α:             mov              r11, 61
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 1960], rax
                        lea              rdi, [rbp + 1952]
                        mov              rsi, qword ptr [rip + .Lcall_α_161_2]
                                                                              jmp   .Lcall_α_161_3
.Lcall_α_161_2:         .quad            .Lcall_α_161_2_s
.Lcall_α_161_2_s:       .string          "[]"
.Lcall_α_161_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   n61_var_ref_α
n60_call_β:             mov              r11, 61;                             jmp   partition$2F4_step
                        .size            n60_call_bx, .-n60_call_bx
                        .type            n61_var_ref_bx, @function
n61_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n61_var_ref_α:          mov              r11, 62
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 64]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx;         jmp   n62_lit_string_α
                        .size            n61_var_ref_bx, .-n61_var_ref_bx
                        .type            n62_lit_string_bx, @function
n62_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n62_lit_string_α:       mov              r11, 63
                        mov              qword ptr [rbp + 1920], 2            # result
                        mov              dword ptr [rbp + 1924], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_164_0]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n63_call_α
.Llit_string_α_164_0:   .quad            .Llit_string_α_164_0_s
.Llit_string_α_164_0_s: .string          "[]"
                        .size            n62_lit_string_bx, .-n62_lit_string_bx
                        .type            n63_call_bx, @function
n63_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n63_call_α:             mov              r11, 64
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1864], rax
                        lea              rdi, [rbp + 1856]
                        mov              rsi, qword ptr [rip + .Lcall_α_165_2]
                                                                              jmp   .Lcall_α_165_3
.Lcall_α_165_2:         .quad            .Lcall_α_165_2_s
.Lcall_α_165_2_s:       .string          "[]"
.Lcall_α_165_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1840], rax
                        mov              qword ptr [rbp + 1848], rdx
                        cmp              al, 104;                             je    partition$2F4_step
                                                                              jmp   partition$2F4_γ
n63_call_β:             mov              r11, 64;                             jmp   partition$2F4_step
                        .size            n63_call_bx, .-n63_call_bx
#-----------------------------------------------------------------------------------------------------------------------
partition$2F4_ret0:
                        lea              rax, [rip + n28_call_proc_staged_β]
                        mov              qword ptr [rbp + 2352], rax
                                                                              jmp   partition$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
partition$2F4_ret1:
                        lea              rax, [rip + n51_call_proc_staged_β]
                        mov              qword ptr [rbp + 2352], rax
                                                                              jmp   partition$2F4_γ
#-----------------------------------------------------------------------------------------------------------------------
partition$2F4_step:
                        mov              rdi, qword ptr [rbp + 2336]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2352], 0
                        mov              qword ptr [rbp + 2240], 0
                        mov              qword ptr [rbp + 2248], 0
                        mov              qword ptr [rbp + 2304], 0
                        mov              qword ptr [rbp + 2312], 0
                        mov              qword ptr [rbp + 2272], 0
                        mov              qword ptr [rbp + 2280], 0
                        mov              qword ptr [rbp + 2288], 0
                        mov              qword ptr [rbp + 2296], 0
                        mov              qword ptr [rbp + 2224], 0
                        mov              qword ptr [rbp + 2232], 0
                        mov              qword ptr [rbp + 2256], 0
                        mov              qword ptr [rbp + 2264], 0
                        mov              rax, qword ptr [rbp + 2344]
                        test             rax, rax
                                                                              je    partition$2F4_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
partition$2F4_alt1:
                        lea              rax, [rip + partition$2F4_alt2]
                        mov              qword ptr [rbp + 2344], rax
                                                                              jmp   n29_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
partition$2F4_alt2:
                        xor              eax, eax
                        mov              qword ptr [rbp + 2344], rax
                        mov              r13, qword ptr [rbp + 2360]
                                                                              jmp   n52_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
partition$2F4_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
partition$2F4_β:
                        test             r15, r15
                                                                              jne   partition$2F4_ω
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2352], 0
                        test             rax, rax
                                                                              jne   partition$2F4_βres
                                                                              jmp   partition$2F4_step
partition$2F4_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
partition$2F4_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2376]
                        mov              rax, qword ptr [rbp + 2360]
                        cmp              r13, rax;                            je    partition$2F4_altdet
                        lea              rdx, [rip + partition$2F4_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 2392];         jmp   rcx
partition$2F4_altdet:   xor              eax, eax
                        lea              rsp, [rbp + 2400]
                        mov              rbp, qword ptr [rbp + 2392];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
partition$2F4_ω:
                        mov              rcx, qword ptr [rbp + 2384]
                        mov              r13, qword ptr [rbp + 2360]
                        lea              rsp, [rbp + 2400]
                        mov              rbp, qword ptr [rbp + 2392];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__qsort$2F3:
                        sub              rsp, 1520
                        mov              qword ptr [rsp + 1496], rcx
                        mov              qword ptr [rsp + 1504], rdx
                        mov              qword ptr [rsp + 1512], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 1520]
                        mov              qword ptr [rsp + 1488], rax
                        mov              qword ptr [rsp + 1480], r13
                        mov              qword ptr [rsp + 1472], 0
                        mov              qword ptr [rsp + 1464], 0
                        mov              qword ptr [rsp + 1456], r12
                        lea              rax, [rip + qsort$2F3_alt1]
                        mov              qword ptr [rsp + 1464], rax
                        lea              rdi, [rsp + 1456]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1328
                        mov              edx, 1456
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
qsort$2F3_α_body:
                        .type            n166_var_ref_bx, @function
n166_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 65
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n167_lit_string_α
                        .size            n166_var_ref_bx, .-n166_var_ref_bx
                        .type            n167_lit_string_bx, @function
n167_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      mov              r11, 66
                        mov              qword ptr [rbp + 1024], 2            # result
                        mov              dword ptr [rbp + 1028], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_205_0]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n168_var_ref_α
.Llit_string_α_205_0:   .quad            .Llit_string_α_205_0_s
.Llit_string_α_205_0_s: .string          "."
                        .size            n167_lit_string_bx, .-n167_lit_string_bx
                        .type            n168_var_ref_bx, @function
n168_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_var_ref_α:         mov              r11, 67
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n169_var_ref_α
                        .size            n168_var_ref_bx, .-n168_var_ref_bx
                        .type            n169_var_ref_bx, @function
n169_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n170_call_α
                        .size            n169_var_ref_bx, .-n169_var_ref_bx
                        .type            n170_call_bx, @function
n170_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_call_α:            mov              r11, 69
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 992], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 1000], rax
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 968], rax
                        lea              rdi, [rbp + 960]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              al, 104;                             je    qsort$2F3_step
                                                                              jmp   n171_call_α
n170_call_β:            mov              r11, 69;                             jmp   qsort$2F3_step
                        .size            n170_call_bx, .-n170_call_bx
                        .type            n171_call_bx, @function
n171_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_call_α:            mov              r11, 70
                        mov              rax, qword ptr [rbp + 944]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 952]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    qsort$2F3_step
                                                                              jmp   n172_var_ref_α
n171_call_β:            mov              r11, 70;                             jmp   qsort$2F3_step
                        .size            n171_call_bx, .-n171_call_bx
                        .type            n172_var_ref_bx, @function
n172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n173_var_ref_α
                        .size            n172_var_ref_bx, .-n172_var_ref_bx
                        .type            n173_var_ref_bx, @function
n173_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n174_call_α
                        .size            n173_var_ref_bx, .-n173_var_ref_bx
                        .type            n174_call_bx, @function
n174_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_call_α:            mov              r11, 73
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx
                        cmp              al, 104;                             je    qsort$2F3_step
                                                                              jmp   n175_var_ref_α
n174_call_β:            mov              r11, 73;                             jmp   qsort$2F3_step
                        .size            n174_call_bx, .-n174_call_bx
                        .type            n175_var_ref_bx, @function
n175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n176_var_ref_α
                        .size            n175_var_ref_bx, .-n175_var_ref_bx
                        .type            n176_var_ref_bx, @function
n176_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              r11, 75
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx;          jmp   n177_call_α
                        .size            n176_var_ref_bx, .-n176_var_ref_bx
                        .type            n177_call_bx, @function
n177_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_call_α:            mov              r11, 76
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    qsort$2F3_step
                                                                              jmp   n178_var_ref_α
n177_call_β:            mov              r11, 76;                             jmp   qsort$2F3_step
                        .size            n177_call_bx, .-n177_call_bx
                        .type            n178_var_ref_bx, @function
n178_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1424]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n179_var_ref_α
                        .size            n178_var_ref_bx, .-n178_var_ref_bx
                        .type            n179_var_ref_bx, @function
n179_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_var_ref_α:         mov              r11, 78
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n180_var_ref_α
                        .size            n179_var_ref_bx, .-n179_var_ref_bx
                        .type            n180_var_ref_bx, @function
n180_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_var_ref_α:         mov              r11, 79
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n181_var_ref_α
                        .size            n180_var_ref_bx, .-n180_var_ref_bx
                        .type            n181_var_ref_bx, @function
n181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n182_call_proc_staged_α
                        .size            n181_var_ref_bx, .-n181_var_ref_bx
                        .type            n182_call_proc_staged_bx, @function
n182_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_call_proc_staged_α:
                        mov              r11, 81
                        mov              qword ptr [rbp + 544], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_231_200
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_231_201
.Lcall_proc_staged_α_231_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_231_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_231_202
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_231_203
.Lcall_proc_staged_α_231_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_231_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_231_204
                        mov              rax, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_231_205
.Lcall_proc_staged_α_231_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 608]
                        mov              rdx, qword ptr [rbp + 616]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_231_205:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_231_206
                        mov              rax, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 48], rax
                        mov              qword ptr [r8 + 56], rdx;            jmp   .Lcall_proc_staged_α_231_207
.Lcall_proc_staged_α_231_206:
                        mov              edi, 3
                        mov              rsi, qword ptr [rbp + 624]
                        mov              rdx, qword ptr [rbp + 632]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_231_207:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_231_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_231_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_231_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_231_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_231_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_231_3:
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_231_21
                        add              rsp, 32
.Lcall_proc_staged_α_231_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_231_2
.Lcall_proc_staged_α_231_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 544], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_231_2
.Lcall_proc_staged_α_231_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_231_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   qsort$2F3_step
.Lcall_proc_staged_α_231_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_231_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
.Lcall_proc_staged_α_231_29:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    qsort$2F3_step
                                                                              jmp   n183_var_ref_α
n182_call_proc_staged_β:
                        mov              r11, 81
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_231_22
                        mov              rax, qword ptr [rbp + 544]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_231_22
                        mov              rcx, qword ptr [rbp + 552]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_231_22:
                                                                              jmp   qsort$2F3_step
.Lcall_proc_staged_α_231_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    qsort$2F3_step
                                                                              jmp   n183_var_ref_α
.Lcall_proc_staged_α_231_0:
                        .quad            .Lcall_proc_staged_α_231_0_s
.Lcall_proc_staged_α_231_0_s:
                        .string          "partition/4"
                        .size            n182_call_proc_staged_bx, .-n182_call_proc_staged_bx
                        .type            n183_var_ref_bx, @function
n183_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_var_ref_α:         mov              r11, 82
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1392]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n184_var_ref_α
                        .size            n183_var_ref_bx, .-n183_var_ref_bx
                        .type            n184_var_ref_bx, @function
n184_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n185_var_ref_α
                        .size            n184_var_ref_bx, .-n184_var_ref_bx
                        .type            n185_var_ref_bx, @function
n185_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1408]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n186_call_proc_staged_α
                        .size            n185_var_ref_bx, .-n185_var_ref_bx
                        .type            n186_call_proc_staged_bx, @function
n186_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_call_proc_staged_α:
                        mov              r11, 85
                        mov              qword ptr [rbp + 384], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_239_200
                        mov              rax, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_239_201
.Lcall_proc_staged_α_239_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 416]
                        mov              rdx, qword ptr [rbp + 424]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_239_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_239_202
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_239_203
.Lcall_proc_staged_α_239_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_239_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_239_204
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_239_205
.Lcall_proc_staged_α_239_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_239_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_239_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_239_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_239_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_239_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_239_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_239_3:
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_239_21
                        add              rsp, 32
.Lcall_proc_staged_α_239_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_239_2
.Lcall_proc_staged_α_239_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 384], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_239_2
.Lcall_proc_staged_α_239_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_239_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n182_call_proc_staged_β
.Lcall_proc_staged_α_239_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_239_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
.Lcall_proc_staged_α_239_29:
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n182_call_proc_staged_β
                                                                              jmp   n187_var_ref_α
n186_call_proc_staged_β:
                        mov              r11, 85
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_239_22
                        mov              rax, qword ptr [rbp + 384]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_239_22
                        mov              rcx, qword ptr [rbp + 392]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_239_22:
                                                                              jmp   n182_call_proc_staged_β
.Lcall_proc_staged_α_239_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    n182_call_proc_staged_β
                                                                              jmp   n187_var_ref_α
.Lcall_proc_staged_α_239_0:
                        .quad            .Lcall_proc_staged_α_239_0_s
.Lcall_proc_staged_α_239_0_s:
                        .string          "qsort/3"
                        .size            n186_call_proc_staged_bx, .-n186_call_proc_staged_bx
                        .type            n187_var_ref_bx, @function
n187_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1328]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n188_var_ref_α
                        .size            n187_var_ref_bx, .-n187_var_ref_bx
                        .type            n188_var_ref_bx, @function
n188_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx;          jmp   n189_lit_string_α
                        .size            n188_var_ref_bx, .-n188_var_ref_bx
                        .type            n189_lit_string_bx, @function
n189_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      mov              r11, 88
                        mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_244_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n190_var_ref_α
.Llit_string_α_244_0:   .quad            .Llit_string_α_244_0_s
.Llit_string_α_244_0_s: .string          "."
                        .size            n189_lit_string_bx, .-n189_lit_string_bx
                        .type            n190_var_ref_bx, @function
n190_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1376]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n191_var_ref_α
                        .size            n190_var_ref_bx, .-n190_var_ref_bx
                        .type            n191_var_ref_bx, @function
n191_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_var_ref_α:         mov              r11, 90
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 192], rax
                        mov              qword ptr [rbp + 200], rdx;          jmp   n192_call_α
                        .size            n191_var_ref_bx, .-n191_var_ref_bx
                        .type            n192_call_bx, @function
n192_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_call_α:            mov              r11, 91
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    qsort$2F3_step
                                                                              jmp   n193_call_proc_staged_α
n192_call_β:            mov              r11, 91;                             jmp   qsort$2F3_step
                        .size            n192_call_bx, .-n192_call_bx
                        .type            n193_call_proc_staged_bx, @function
n193_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_call_proc_staged_α:
                        mov              r11, 92
                        mov              qword ptr [rbp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_251_200
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_251_201
.Lcall_proc_staged_α_251_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_251_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_251_202
                        mov              rax, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_251_203
.Lcall_proc_staged_α_251_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 176]
                        mov              rdx, qword ptr [rbp + 184]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_251_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_251_204
                        mov              rax, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_251_205
.Lcall_proc_staged_α_251_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 224]
                        mov              rdx, qword ptr [rbp + 232]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_251_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_251_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_251_1
                        sub              rsp, 8
                        push             rax
                        mov              edi, 3
                        mov              rsi, rbp
                        lea              rdx, [rbp + 1520]
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
                        test             r10, r10;                            je    .Lcall_proc_staged_α_251_99
                        mov              r10, qword ptr [rbp + 1480]
                        cmp              r13, r10;                            jne   .Lcall_proc_staged_α_251_99
                        lea              r10, [rsp + 16]
                        cmp              r10, rbp;                            jne   .Lcall_proc_staged_α_251_99
                        mov              rcx, qword ptr [rbp + 1496]
                        mov              rdx, qword ptr [rbp + 1504]
                        lea              rsp, [rbp + 1520]
                        mov              rbp, qword ptr [rbp + 1512];         jmp   rax
.Lcall_proc_staged_α_251_99:
                        lea              rcx, [rip + .Lcall_proc_staged_α_251_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_251_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_251_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_251_3:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_251_21
                        add              rsp, 32
.Lcall_proc_staged_α_251_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_251_2
.Lcall_proc_staged_α_251_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 128], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_251_2
.Lcall_proc_staged_α_251_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_251_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n186_call_proc_staged_β
.Lcall_proc_staged_α_251_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_251_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 64]
                        mov              rdx, qword ptr [rbp + 72]
.Lcall_proc_staged_α_251_29:
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n186_call_proc_staged_β
                                                                              jmp   qsort$2F3_ret0
n193_call_proc_staged_β:
                        mov              r11, 92
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_251_22
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_251_22
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_251_22:
                                                                              jmp   n186_call_proc_staged_β
.Lcall_proc_staged_α_251_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    n186_call_proc_staged_β
                                                                              jmp   qsort$2F3_ret0
.Lcall_proc_staged_α_251_0:
                        .quad            .Lcall_proc_staged_α_251_0_s
.Lcall_proc_staged_α_251_0_s:
                        .string          "qsort/3"
                        .size            n193_call_proc_staged_bx, .-n193_call_proc_staged_bx
                        .type            n194_var_ref_bx, @function
n194_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_var_ref_α:         mov              r11, 93
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1296], rax
                        mov              qword ptr [rbp + 1304], rdx;         jmp   n195_lit_string_α
                        .size            n194_var_ref_bx, .-n194_var_ref_bx
                        .type            n195_lit_string_bx, @function
n195_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_lit_string_α:      mov              r11, 94
                        mov              qword ptr [rbp + 1312], 2            # result
                        mov              dword ptr [rbp + 1316], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_254_0]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n196_call_α
.Llit_string_α_254_0:   .quad            .Llit_string_α_254_0_s
.Llit_string_α_254_0_s: .string          "[]"
                        .size            n195_lit_string_bx, .-n195_lit_string_bx
                        .type            n196_call_bx, @function
n196_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_call_α:            mov              r11, 95
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1248]
                        mov              rsi, qword ptr [rip + .Lcall_α_255_2]
                                                                              jmp   .Lcall_α_255_3
.Lcall_α_255_2:         .quad            .Lcall_α_255_2_s
.Lcall_α_255_2_s:       .string          "[]"
.Lcall_α_255_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              al, 104;                             je    qsort$2F3_step
                                                                              jmp   n197_var_ref_α
n196_call_β:            mov              r11, 95;                             jmp   qsort$2F3_step
                        .size            n196_call_bx, .-n196_call_bx
                        .type            n197_var_ref_bx, @function
n197_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_var_ref_α:         mov              r11, 96
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1200], rax
                        mov              qword ptr [rbp + 1208], rdx;         jmp   n198_var_ref_α
                        .size            n197_var_ref_bx, .-n197_var_ref_bx
                        .type            n198_var_ref_bx, @function
n198_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx;         jmp   n199_call_α
                        .size            n198_var_ref_bx, .-n198_var_ref_bx
                        .type            n199_call_bx, @function
n199_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_call_α:            mov              r11, 98
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1224]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              al, 104;                             je    qsort$2F3_step
                                                                              jmp   n200_var_ref_α
n199_call_β:            mov              r11, 98;                             jmp   qsort$2F3_step
                        .size            n199_call_bx, .-n199_call_bx
                        .type            n200_var_ref_bx, @function
n200_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_var_ref_α:         mov              r11, 99
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n201_var_ref_α
                        .size            n200_var_ref_bx, .-n200_var_ref_bx
                        .type            n201_var_ref_bx, @function
n201_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_var_ref_α:         mov              r11, 100
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1344]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n202_call_α
                        .size            n201_var_ref_bx, .-n201_var_ref_bx
                        .type            n202_call_bx, @function
n202_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_call_α:            mov              r11, 101
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              al, 104;                             je    qsort$2F3_step
                                                                              jmp   qsort$2F3_γ
n202_call_β:            mov              r11, 101;                            jmp   qsort$2F3_step
                        .size            n202_call_bx, .-n202_call_bx
#-----------------------------------------------------------------------------------------------------------------------
qsort$2F3_ret0:
                        lea              rax, [rip + n193_call_proc_staged_β]
                        mov              qword ptr [rbp + 1472], rax
                                                                              jmp   qsort$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
qsort$2F3_step:
                        mov              rdi, qword ptr [rbp + 1456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1472], 0
                        mov              qword ptr [rbp + 1344], 0
                        mov              qword ptr [rbp + 1352], 0
                        mov              qword ptr [rbp + 1408], 0
                        mov              qword ptr [rbp + 1416], 0
                        mov              qword ptr [rbp + 1376], 0
                        mov              qword ptr [rbp + 1384], 0
                        mov              qword ptr [rbp + 1424], 0
                        mov              qword ptr [rbp + 1432], 0
                        mov              qword ptr [rbp + 1328], 0
                        mov              qword ptr [rbp + 1336], 0
                        mov              qword ptr [rbp + 1392], 0
                        mov              qword ptr [rbp + 1400], 0
                        mov              qword ptr [rbp + 1360], 0
                        mov              qword ptr [rbp + 1368], 0
                        mov              rax, qword ptr [rbp + 1464]
                        test             rax, rax
                                                                              je    qsort$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
qsort$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1464], rax
                        mov              r13, qword ptr [rbp + 1480]
                                                                              jmp   n194_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
qsort$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
qsort$2F3_β:
                        test             r15, r15
                                                                              jne   qsort$2F3_ω
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1472], 0
                        test             rax, rax
                                                                              jne   qsort$2F3_βres
                                                                              jmp   qsort$2F3_step
qsort$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
qsort$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1496]
                        mov              rax, qword ptr [rbp + 1480]
                        cmp              r13, rax;                            je    qsort$2F3_altdet
                        lea              rdx, [rip + qsort$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1512];         jmp   rcx
qsort$2F3_altdet:       xor              eax, eax
                        lea              rsp, [rbp + 1520]
                        mov              rbp, qword ptr [rbp + 1512];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
qsort$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1504]
                        mov              r13, qword ptr [rbp + 1480]
                        lea              rsp, [rbp + 1520]
                        mov              rbp, qword ptr [rbp + 1512];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 5936
                        mov              qword ptr [rsp + 5912], rcx
                        mov              qword ptr [rsp + 5920], rdx
                        mov              qword ptr [rsp + 5928], rbp
                        mov              rbp, rsp
                        lea              rax, [rsp + 5936]
                        mov              qword ptr [rsp + 5904], rax
                        mov              qword ptr [rsp + 5896], r13
                        mov              qword ptr [rsp + 5888], 0
                        mov              qword ptr [rsp + 5880], 0
                        mov              qword ptr [rsp + 5872], r12
                        mov              rdi, rsp
                        mov              esi, 5840
                        mov              edx, 5872
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n266_lit_string_bx, @function
n266_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rbp + 5792], 2            # result
                        mov              dword ptr [rbp + 5796], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_423_0]
                        mov              qword ptr [rbp + 5800], rax;         jmp   n267_lit_integer_α
.Llit_string_α_423_0:   .quad            .Llit_string_α_423_0_s
.Llit_string_α_423_0_s: .string          "."
                        .size            n266_lit_string_bx, .-n266_lit_string_bx
                        .type            n267_lit_integer_bx, @function
n267_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_lit_integer_α:     mov              r11, 103
                        mov              qword ptr [rbp + 5696], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_424_0]
                        mov              qword ptr [rbp + 5704], rax;         jmp   n268_lit_string_α
.Llit_integer_α_424_0:  .quad            27
                        .size            n267_lit_integer_bx, .-n267_lit_integer_bx
                        .type            n268_lit_string_bx, @function
n268_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rbp + 5680], 2            # result
                        mov              dword ptr [rbp + 5684], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_425_0]
                        mov              qword ptr [rbp + 5688], rax;         jmp   n269_lit_integer_α
.Llit_string_α_425_0:   .quad            .Llit_string_α_425_0_s
.Llit_string_α_425_0_s: .string          "."
                        .size            n268_lit_string_bx, .-n268_lit_string_bx
                        .type            n269_lit_integer_bx, @function
n269_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_lit_integer_α:     mov              r11, 105
                        mov              qword ptr [rbp + 5584], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_426_0]
                        mov              qword ptr [rbp + 5592], rax;         jmp   n270_lit_string_α
.Llit_integer_α_426_0:  .quad            74
                        .size            n269_lit_integer_bx, .-n269_lit_integer_bx
                        .type            n270_lit_string_bx, @function
n270_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_lit_string_α:      mov              r11, 106
                        mov              qword ptr [rbp + 5568], 2            # result
                        mov              dword ptr [rbp + 5572], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_427_0]
                        mov              qword ptr [rbp + 5576], rax;         jmp   n271_lit_integer_α
.Llit_string_α_427_0:   .quad            .Llit_string_α_427_0_s
.Llit_string_α_427_0_s: .string          "."
                        .size            n270_lit_string_bx, .-n270_lit_string_bx
                        .type            n271_lit_integer_bx, @function
n271_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_lit_integer_α:     mov              r11, 107
                        mov              qword ptr [rbp + 5472], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_428_0]
                        mov              qword ptr [rbp + 5480], rax;         jmp   n272_lit_string_α
.Llit_integer_α_428_0:  .quad            17
                        .size            n271_lit_integer_bx, .-n271_lit_integer_bx
                        .type            n272_lit_string_bx, @function
n272_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:      mov              r11, 108
                        mov              qword ptr [rbp + 5456], 2            # result
                        mov              dword ptr [rbp + 5460], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_429_0]
                        mov              qword ptr [rbp + 5464], rax;         jmp   n273_lit_integer_α
.Llit_string_α_429_0:   .quad            .Llit_string_α_429_0_s
.Llit_string_α_429_0_s: .string          "."
                        .size            n272_lit_string_bx, .-n272_lit_string_bx
                        .type            n273_lit_integer_bx, @function
n273_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_lit_integer_α:     mov              r11, 109
                        mov              qword ptr [rbp + 5360], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_430_0]
                        mov              qword ptr [rbp + 5368], rax;         jmp   n274_lit_string_α
.Llit_integer_α_430_0:  .quad            33
                        .size            n273_lit_integer_bx, .-n273_lit_integer_bx
                        .type            n274_lit_string_bx, @function
n274_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_lit_string_α:      mov              r11, 110
                        mov              qword ptr [rbp + 5344], 2            # result
                        mov              dword ptr [rbp + 5348], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_431_0]
                        mov              qword ptr [rbp + 5352], rax;         jmp   n275_lit_integer_α
.Llit_string_α_431_0:   .quad            .Llit_string_α_431_0_s
.Llit_string_α_431_0_s: .string          "."
                        .size            n274_lit_string_bx, .-n274_lit_string_bx
                        .type            n275_lit_integer_bx, @function
n275_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_integer_α:     mov              r11, 111
                        mov              qword ptr [rbp + 5248], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_432_0]
                        mov              qword ptr [rbp + 5256], rax;         jmp   n276_lit_string_α
.Llit_integer_α_432_0:  .quad            94
                        .size            n275_lit_integer_bx, .-n275_lit_integer_bx
                        .type            n276_lit_string_bx, @function
n276_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:      mov              r11, 112
                        mov              qword ptr [rbp + 5232], 2            # result
                        mov              dword ptr [rbp + 5236], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_433_0]
                        mov              qword ptr [rbp + 5240], rax;         jmp   n277_lit_integer_α
.Llit_string_α_433_0:   .quad            .Llit_string_α_433_0_s
.Llit_string_α_433_0_s: .string          "."
                        .size            n276_lit_string_bx, .-n276_lit_string_bx
                        .type            n277_lit_integer_bx, @function
n277_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_integer_α:     mov              r11, 113
                        mov              qword ptr [rbp + 5136], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_434_0]
                        mov              qword ptr [rbp + 5144], rax;         jmp   n278_lit_string_α
.Llit_integer_α_434_0:  .quad            18
                        .size            n277_lit_integer_bx, .-n277_lit_integer_bx
                        .type            n278_lit_string_bx, @function
n278_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:      mov              r11, 114
                        mov              qword ptr [rbp + 5120], 2            # result
                        mov              dword ptr [rbp + 5124], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_435_0]
                        mov              qword ptr [rbp + 5128], rax;         jmp   n279_lit_integer_α
.Llit_string_α_435_0:   .quad            .Llit_string_α_435_0_s
.Llit_string_α_435_0_s: .string          "."
                        .size            n278_lit_string_bx, .-n278_lit_string_bx
                        .type            n279_lit_integer_bx, @function
n279_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_integer_α:     mov              r11, 115
                        mov              qword ptr [rbp + 5024], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_436_0]
                        mov              qword ptr [rbp + 5032], rax;         jmp   n280_lit_string_α
.Llit_integer_α_436_0:  .quad            46
                        .size            n279_lit_integer_bx, .-n279_lit_integer_bx
                        .type            n280_lit_string_bx, @function
n280_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:      mov              r11, 116
                        mov              qword ptr [rbp + 5008], 2            # result
                        mov              dword ptr [rbp + 5012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_437_0]
                        mov              qword ptr [rbp + 5016], rax;         jmp   n281_lit_integer_α
.Llit_string_α_437_0:   .quad            .Llit_string_α_437_0_s
.Llit_string_α_437_0_s: .string          "."
                        .size            n280_lit_string_bx, .-n280_lit_string_bx
                        .type            n281_lit_integer_bx, @function
n281_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_integer_α:     mov              r11, 117
                        mov              qword ptr [rbp + 4912], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_438_0]
                        mov              qword ptr [rbp + 4920], rax;         jmp   n282_lit_string_α
.Llit_integer_α_438_0:  .quad            83
                        .size            n281_lit_integer_bx, .-n281_lit_integer_bx
                        .type            n282_lit_string_bx, @function
n282_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rbp + 4896], 2            # result
                        mov              dword ptr [rbp + 4900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_439_0]
                        mov              qword ptr [rbp + 4904], rax;         jmp   n283_lit_integer_α
.Llit_string_α_439_0:   .quad            .Llit_string_α_439_0_s
.Llit_string_α_439_0_s: .string          "."
                        .size            n282_lit_string_bx, .-n282_lit_string_bx
                        .type            n283_lit_integer_bx, @function
n283_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_lit_integer_α:     mov              r11, 119
                        mov              qword ptr [rbp + 4800], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_440_0]
                        mov              qword ptr [rbp + 4808], rax;         jmp   n284_lit_string_α
.Llit_integer_α_440_0:  .quad            65
                        .size            n283_lit_integer_bx, .-n283_lit_integer_bx
                        .type            n284_lit_string_bx, @function
n284_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_lit_string_α:      mov              r11, 120
                        mov              qword ptr [rbp + 4784], 2            # result
                        mov              dword ptr [rbp + 4788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_441_0]
                        mov              qword ptr [rbp + 4792], rax;         jmp   n285_lit_integer_α
.Llit_string_α_441_0:   .quad            .Llit_string_α_441_0_s
.Llit_string_α_441_0_s: .string          "."
                        .size            n284_lit_string_bx, .-n284_lit_string_bx
                        .type            n285_lit_integer_bx, @function
n285_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_lit_integer_α:     mov              r11, 121
                        mov              qword ptr [rbp + 4688], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_442_0]
                        mov              qword ptr [rbp + 4696], rax;         jmp   n286_lit_string_α
.Llit_integer_α_442_0:  .quad            2
                        .size            n285_lit_integer_bx, .-n285_lit_integer_bx
                        .type            n286_lit_string_bx, @function
n286_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rbp + 4672], 2            # result
                        mov              dword ptr [rbp + 4676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_443_0]
                        mov              qword ptr [rbp + 4680], rax;         jmp   n287_lit_integer_α
.Llit_string_α_443_0:   .quad            .Llit_string_α_443_0_s
.Llit_string_α_443_0_s: .string          "."
                        .size            n286_lit_string_bx, .-n286_lit_string_bx
                        .type            n287_lit_integer_bx, @function
n287_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_integer_α:     mov              r11, 123
                        mov              qword ptr [rbp + 4576], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_444_0]
                        mov              qword ptr [rbp + 4584], rax;         jmp   n288_lit_string_α
.Llit_integer_α_444_0:  .quad            32
                        .size            n287_lit_integer_bx, .-n287_lit_integer_bx
                        .type            n288_lit_string_bx, @function
n288_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_lit_string_α:      mov              r11, 124
                        mov              qword ptr [rbp + 4560], 2            # result
                        mov              dword ptr [rbp + 4564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_445_0]
                        mov              qword ptr [rbp + 4568], rax;         jmp   n289_lit_integer_α
.Llit_string_α_445_0:   .quad            .Llit_string_α_445_0_s
.Llit_string_α_445_0_s: .string          "."
                        .size            n288_lit_string_bx, .-n288_lit_string_bx
                        .type            n289_lit_integer_bx, @function
n289_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_lit_integer_α:     mov              r11, 125
                        mov              qword ptr [rbp + 4464], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_446_0]
                        mov              qword ptr [rbp + 4472], rax;         jmp   n290_lit_string_α
.Llit_integer_α_446_0:  .quad            53
                        .size            n289_lit_integer_bx, .-n289_lit_integer_bx
                        .type            n290_lit_string_bx, @function
n290_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rbp + 4448], 2            # result
                        mov              dword ptr [rbp + 4452], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_447_0]
                        mov              qword ptr [rbp + 4456], rax;         jmp   n291_lit_integer_α
.Llit_string_α_447_0:   .quad            .Llit_string_α_447_0_s
.Llit_string_α_447_0_s: .string          "."
                        .size            n290_lit_string_bx, .-n290_lit_string_bx
                        .type            n291_lit_integer_bx, @function
n291_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_integer_α:     mov              r11, 127
                        mov              qword ptr [rbp + 4352], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_448_0]
                        mov              qword ptr [rbp + 4360], rax;         jmp   n292_lit_string_α
.Llit_integer_α_448_0:  .quad            28
                        .size            n291_lit_integer_bx, .-n291_lit_integer_bx
                        .type            n292_lit_string_bx, @function
n292_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:      mov              r11, 128
                        mov              qword ptr [rbp + 4336], 2            # result
                        mov              dword ptr [rbp + 4340], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_449_0]
                        mov              qword ptr [rbp + 4344], rax;         jmp   n293_lit_integer_α
.Llit_string_α_449_0:   .quad            .Llit_string_α_449_0_s
.Llit_string_α_449_0_s: .string          "."
                        .size            n292_lit_string_bx, .-n292_lit_string_bx
                        .type            n293_lit_integer_bx, @function
n293_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_integer_α:     mov              r11, 129
                        mov              qword ptr [rbp + 4240], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_450_0]
                        mov              qword ptr [rbp + 4248], rax;         jmp   n294_lit_string_α
.Llit_integer_α_450_0:  .quad            85
                        .size            n293_lit_integer_bx, .-n293_lit_integer_bx
                        .type            n294_lit_string_bx, @function
n294_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:      mov              r11, 130
                        mov              qword ptr [rbp + 4224], 2            # result
                        mov              dword ptr [rbp + 4228], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_451_0]
                        mov              qword ptr [rbp + 4232], rax;         jmp   n295_lit_integer_α
.Llit_string_α_451_0:   .quad            .Llit_string_α_451_0_s
.Llit_string_α_451_0_s: .string          "."
                        .size            n294_lit_string_bx, .-n294_lit_string_bx
                        .type            n295_lit_integer_bx, @function
n295_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_integer_α:     mov              r11, 131
                        mov              qword ptr [rbp + 4128], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_452_0]
                        mov              qword ptr [rbp + 4136], rax;         jmp   n296_lit_string_α
.Llit_integer_α_452_0:  .quad            99
                        .size            n295_lit_integer_bx, .-n295_lit_integer_bx
                        .type            n296_lit_string_bx, @function
n296_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rbp + 4112], 2            # result
                        mov              dword ptr [rbp + 4116], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_453_0]
                        mov              qword ptr [rbp + 4120], rax;         jmp   n297_lit_integer_α
.Llit_string_α_453_0:   .quad            .Llit_string_α_453_0_s
.Llit_string_α_453_0_s: .string          "."
                        .size            n296_lit_string_bx, .-n296_lit_string_bx
                        .type            n297_lit_integer_bx, @function
n297_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_lit_integer_α:     mov              r11, 133
                        mov              qword ptr [rbp + 4016], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_454_0]
                        mov              qword ptr [rbp + 4024], rax;         jmp   n298_lit_string_α
.Llit_integer_α_454_0:  .quad            47
                        .size            n297_lit_integer_bx, .-n297_lit_integer_bx
                        .type            n298_lit_string_bx, @function
n298_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_lit_string_α:      mov              r11, 134
                        mov              qword ptr [rbp + 4000], 2            # result
                        mov              dword ptr [rbp + 4004], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_455_0]
                        mov              qword ptr [rbp + 4008], rax;         jmp   n299_lit_integer_α
.Llit_string_α_455_0:   .quad            .Llit_string_α_455_0_s
.Llit_string_α_455_0_s: .string          "."
                        .size            n298_lit_string_bx, .-n298_lit_string_bx
                        .type            n299_lit_integer_bx, @function
n299_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_lit_integer_α:     mov              r11, 135
                        mov              qword ptr [rbp + 3904], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_456_0]
                        mov              qword ptr [rbp + 3912], rax;         jmp   n300_lit_string_α
.Llit_integer_α_456_0:  .quad            28
                        .size            n299_lit_integer_bx, .-n299_lit_integer_bx
                        .type            n300_lit_string_bx, @function
n300_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_lit_string_α:      mov              r11, 136
                        mov              qword ptr [rbp + 3888], 2            # result
                        mov              dword ptr [rbp + 3892], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_457_0]
                        mov              qword ptr [rbp + 3896], rax;         jmp   n301_lit_integer_α
.Llit_string_α_457_0:   .quad            .Llit_string_α_457_0_s
.Llit_string_α_457_0_s: .string          "."
                        .size            n300_lit_string_bx, .-n300_lit_string_bx
                        .type            n301_lit_integer_bx, @function
n301_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_lit_integer_α:     mov              r11, 137
                        mov              qword ptr [rbp + 3792], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_458_0]
                        mov              qword ptr [rbp + 3800], rax;         jmp   n302_lit_string_α
.Llit_integer_α_458_0:  .quad            82
                        .size            n301_lit_integer_bx, .-n301_lit_integer_bx
                        .type            n302_lit_string_bx, @function
n302_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rbp + 3776], 2            # result
                        mov              dword ptr [rbp + 3780], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_459_0]
                        mov              qword ptr [rbp + 3784], rax;         jmp   n303_lit_integer_α
.Llit_string_α_459_0:   .quad            .Llit_string_α_459_0_s
.Llit_string_α_459_0_s: .string          "."
                        .size            n302_lit_string_bx, .-n302_lit_string_bx
                        .type            n303_lit_integer_bx, @function
n303_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_lit_integer_α:     mov              r11, 139
                        mov              qword ptr [rbp + 3680], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_460_0]
                        mov              qword ptr [rbp + 3688], rax;         jmp   n304_lit_string_α
.Llit_integer_α_460_0:  .quad            6
                        .size            n303_lit_integer_bx, .-n303_lit_integer_bx
                        .type            n304_lit_string_bx, @function
n304_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_lit_string_α:      mov              r11, 140
                        mov              qword ptr [rbp + 3664], 2            # result
                        mov              dword ptr [rbp + 3668], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_461_0]
                        mov              qword ptr [rbp + 3672], rax;         jmp   n305_lit_integer_α
.Llit_string_α_461_0:   .quad            .Llit_string_α_461_0_s
.Llit_string_α_461_0_s: .string          "."
                        .size            n304_lit_string_bx, .-n304_lit_string_bx
                        .type            n305_lit_integer_bx, @function
n305_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_integer_α:     mov              r11, 141
                        mov              qword ptr [rbp + 3568], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_462_0]
                        mov              qword ptr [rbp + 3576], rax;         jmp   n306_lit_string_α
.Llit_integer_α_462_0:  .quad            11
                        .size            n305_lit_integer_bx, .-n305_lit_integer_bx
                        .type            n306_lit_string_bx, @function
n306_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:      mov              r11, 142
                        mov              qword ptr [rbp + 3552], 2            # result
                        mov              dword ptr [rbp + 3556], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_463_0]
                        mov              qword ptr [rbp + 3560], rax;         jmp   n307_lit_integer_α
.Llit_string_α_463_0:   .quad            .Llit_string_α_463_0_s
.Llit_string_α_463_0_s: .string          "."
                        .size            n306_lit_string_bx, .-n306_lit_string_bx
                        .type            n307_lit_integer_bx, @function
n307_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_integer_α:     mov              r11, 143
                        mov              qword ptr [rbp + 3456], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_464_0]
                        mov              qword ptr [rbp + 3464], rax;         jmp   n308_lit_string_α
.Llit_integer_α_464_0:  .quad            55
                        .size            n307_lit_integer_bx, .-n307_lit_integer_bx
                        .type            n308_lit_string_bx, @function
n308_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rbp + 3440], 2            # result
                        mov              dword ptr [rbp + 3444], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_465_0]
                        mov              qword ptr [rbp + 3448], rax;         jmp   n309_lit_integer_α
.Llit_string_α_465_0:   .quad            .Llit_string_α_465_0_s
.Llit_string_α_465_0_s: .string          "."
                        .size            n308_lit_string_bx, .-n308_lit_string_bx
                        .type            n309_lit_integer_bx, @function
n309_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_integer_α:     mov              r11, 145
                        mov              qword ptr [rbp + 3344], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_466_0]
                        mov              qword ptr [rbp + 3352], rax;         jmp   n310_lit_string_α
.Llit_integer_α_466_0:  .quad            29
                        .size            n309_lit_integer_bx, .-n309_lit_integer_bx
                        .type            n310_lit_string_bx, @function
n310_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:      mov              r11, 146
                        mov              qword ptr [rbp + 3328], 2            # result
                        mov              dword ptr [rbp + 3332], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_467_0]
                        mov              qword ptr [rbp + 3336], rax;         jmp   n311_lit_integer_α
.Llit_string_α_467_0:   .quad            .Llit_string_α_467_0_s
.Llit_string_α_467_0_s: .string          "."
                        .size            n310_lit_string_bx, .-n310_lit_string_bx
                        .type            n311_lit_integer_bx, @function
n311_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_integer_α:     mov              r11, 147
                        mov              qword ptr [rbp + 3232], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_468_0]
                        mov              qword ptr [rbp + 3240], rax;         jmp   n312_lit_string_α
.Llit_integer_α_468_0:  .quad            39
                        .size            n311_lit_integer_bx, .-n311_lit_integer_bx
                        .type            n312_lit_string_bx, @function
n312_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rbp + 3216], 2            # result
                        mov              dword ptr [rbp + 3220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_469_0]
                        mov              qword ptr [rbp + 3224], rax;         jmp   n313_lit_integer_α
.Llit_string_α_469_0:   .quad            .Llit_string_α_469_0_s
.Llit_string_α_469_0_s: .string          "."
                        .size            n312_lit_string_bx, .-n312_lit_string_bx
                        .type            n313_lit_integer_bx, @function
n313_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_lit_integer_α:     mov              r11, 149
                        mov              qword ptr [rbp + 3120], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_470_0]
                        mov              qword ptr [rbp + 3128], rax;         jmp   n314_lit_string_α
.Llit_integer_α_470_0:  .quad            81
                        .size            n313_lit_integer_bx, .-n313_lit_integer_bx
                        .type            n314_lit_string_bx, @function
n314_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_lit_string_α:      mov              r11, 150
                        mov              qword ptr [rbp + 3104], 2            # result
                        mov              dword ptr [rbp + 3108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_471_0]
                        mov              qword ptr [rbp + 3112], rax;         jmp   n315_lit_integer_α
.Llit_string_α_471_0:   .quad            .Llit_string_α_471_0_s
.Llit_string_α_471_0_s: .string          "."
                        .size            n314_lit_string_bx, .-n314_lit_string_bx
                        .type            n315_lit_integer_bx, @function
n315_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_lit_integer_α:     mov              r11, 151
                        mov              qword ptr [rbp + 3008], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_472_0]
                        mov              qword ptr [rbp + 3016], rax;         jmp   n316_lit_string_α
.Llit_integer_α_472_0:  .quad            90
                        .size            n315_lit_integer_bx, .-n315_lit_integer_bx
                        .type            n316_lit_string_bx, @function
n316_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rbp + 2992], 2            # result
                        mov              dword ptr [rbp + 2996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_473_0]
                        mov              qword ptr [rbp + 3000], rax;         jmp   n317_lit_integer_α
.Llit_string_α_473_0:   .quad            .Llit_string_α_473_0_s
.Llit_string_α_473_0_s: .string          "."
                        .size            n316_lit_string_bx, .-n316_lit_string_bx
                        .type            n317_lit_integer_bx, @function
n317_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_integer_α:     mov              r11, 153
                        mov              qword ptr [rbp + 2896], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_474_0]
                        mov              qword ptr [rbp + 2904], rax;         jmp   n318_lit_string_α
.Llit_integer_α_474_0:  .quad            37
                        .size            n317_lit_integer_bx, .-n317_lit_integer_bx
                        .type            n318_lit_string_bx, @function
n318_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_lit_string_α:      mov              r11, 154
                        mov              qword ptr [rbp + 2880], 2            # result
                        mov              dword ptr [rbp + 2884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_475_0]
                        mov              qword ptr [rbp + 2888], rax;         jmp   n319_lit_integer_α
.Llit_string_α_475_0:   .quad            .Llit_string_α_475_0_s
.Llit_string_α_475_0_s: .string          "."
                        .size            n318_lit_string_bx, .-n318_lit_string_bx
                        .type            n319_lit_integer_bx, @function
n319_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_lit_integer_α:     mov              r11, 155
                        mov              qword ptr [rbp + 2784], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_476_0]
                        mov              qword ptr [rbp + 2792], rax;         jmp   n320_lit_string_α
.Llit_integer_α_476_0:  .quad            10
                        .size            n319_lit_integer_bx, .-n319_lit_integer_bx
                        .type            n320_lit_string_bx, @function
n320_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:      mov              r11, 156
                        mov              qword ptr [rbp + 2768], 2            # result
                        mov              dword ptr [rbp + 2772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_477_0]
                        mov              qword ptr [rbp + 2776], rax;         jmp   n321_lit_integer_α
.Llit_string_α_477_0:   .quad            .Llit_string_α_477_0_s
.Llit_string_α_477_0_s: .string          "."
                        .size            n320_lit_string_bx, .-n320_lit_string_bx
                        .type            n321_lit_integer_bx, @function
n321_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_integer_α:     mov              r11, 157
                        mov              qword ptr [rbp + 2672], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_478_0]
                        mov              qword ptr [rbp + 2680], rax;         jmp   n322_lit_string_α
.Llit_integer_α_478_0:  .quad            0
                        .size            n321_lit_integer_bx, .-n321_lit_integer_bx
                        .type            n322_lit_string_bx, @function
n322_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      mov              r11, 158
                        mov              qword ptr [rbp + 2656], 2            # result
                        mov              dword ptr [rbp + 2660], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_479_0]
                        mov              qword ptr [rbp + 2664], rax;         jmp   n323_lit_integer_α
.Llit_string_α_479_0:   .quad            .Llit_string_α_479_0_s
.Llit_string_α_479_0_s: .string          "."
                        .size            n322_lit_string_bx, .-n322_lit_string_bx
                        .type            n323_lit_integer_bx, @function
n323_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_integer_α:     mov              r11, 159
                        mov              qword ptr [rbp + 2560], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_480_0]
                        mov              qword ptr [rbp + 2568], rax;         jmp   n324_lit_string_α
.Llit_integer_α_480_0:  .quad            66
                        .size            n323_lit_integer_bx, .-n323_lit_integer_bx
                        .type            n324_lit_string_bx, @function
n324_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:      mov              r11, 160
                        mov              qword ptr [rbp + 2544], 2            # result
                        mov              dword ptr [rbp + 2548], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_481_0]
                        mov              qword ptr [rbp + 2552], rax;         jmp   n325_lit_integer_α
.Llit_string_α_481_0:   .quad            .Llit_string_α_481_0_s
.Llit_string_α_481_0_s: .string          "."
                        .size            n324_lit_string_bx, .-n324_lit_string_bx
                        .type            n325_lit_integer_bx, @function
n325_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_integer_α:     mov              r11, 161
                        mov              qword ptr [rbp + 2448], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_482_0]
                        mov              qword ptr [rbp + 2456], rax;         jmp   n326_lit_string_α
.Llit_integer_α_482_0:  .quad            51
                        .size            n325_lit_integer_bx, .-n325_lit_integer_bx
                        .type            n326_lit_string_bx, @function
n326_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:      mov              r11, 162
                        mov              qword ptr [rbp + 2432], 2            # result
                        mov              dword ptr [rbp + 2436], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_483_0]
                        mov              qword ptr [rbp + 2440], rax;         jmp   n327_lit_integer_α
.Llit_string_α_483_0:   .quad            .Llit_string_α_483_0_s
.Llit_string_α_483_0_s: .string          "."
                        .size            n326_lit_string_bx, .-n326_lit_string_bx
                        .type            n327_lit_integer_bx, @function
n327_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_lit_integer_α:     mov              r11, 163
                        mov              qword ptr [rbp + 2336], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_484_0]
                        mov              qword ptr [rbp + 2344], rax;         jmp   n328_lit_string_α
.Llit_integer_α_484_0:  .quad            7
                        .size            n327_lit_integer_bx, .-n327_lit_integer_bx
                        .type            n328_lit_string_bx, @function
n328_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_lit_string_α:      mov              r11, 164
                        mov              qword ptr [rbp + 2320], 2            # result
                        mov              dword ptr [rbp + 2324], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_485_0]
                        mov              qword ptr [rbp + 2328], rax;         jmp   n329_lit_integer_α
.Llit_string_α_485_0:   .quad            .Llit_string_α_485_0_s
.Llit_string_α_485_0_s: .string          "."
                        .size            n328_lit_string_bx, .-n328_lit_string_bx
                        .type            n329_lit_integer_bx, @function
n329_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_lit_integer_α:     mov              r11, 165
                        mov              qword ptr [rbp + 2224], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_486_0]
                        mov              qword ptr [rbp + 2232], rax;         jmp   n330_lit_string_α
.Llit_integer_α_486_0:  .quad            21
                        .size            n329_lit_integer_bx, .-n329_lit_integer_bx
                        .type            n330_lit_string_bx, @function
n330_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_lit_string_α:      mov              r11, 166
                        mov              qword ptr [rbp + 2208], 2            # result
                        mov              dword ptr [rbp + 2212], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_487_0]
                        mov              qword ptr [rbp + 2216], rax;         jmp   n331_lit_integer_α
.Llit_string_α_487_0:   .quad            .Llit_string_α_487_0_s
.Llit_string_α_487_0_s: .string          "."
                        .size            n330_lit_string_bx, .-n330_lit_string_bx
                        .type            n331_lit_integer_bx, @function
n331_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_lit_integer_α:     mov              r11, 167
                        mov              qword ptr [rbp + 2112], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_488_0]
                        mov              qword ptr [rbp + 2120], rax;         jmp   n332_lit_string_α
.Llit_integer_α_488_0:  .quad            85
                        .size            n331_lit_integer_bx, .-n331_lit_integer_bx
                        .type            n332_lit_string_bx, @function
n332_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      mov              r11, 168
                        mov              qword ptr [rbp + 2096], 2            # result
                        mov              dword ptr [rbp + 2100], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_489_0]
                        mov              qword ptr [rbp + 2104], rax;         jmp   n333_lit_integer_α
.Llit_string_α_489_0:   .quad            .Llit_string_α_489_0_s
.Llit_string_α_489_0_s: .string          "."
                        .size            n332_lit_string_bx, .-n332_lit_string_bx
                        .type            n333_lit_integer_bx, @function
n333_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_lit_integer_α:     mov              r11, 169
                        mov              qword ptr [rbp + 2000], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_490_0]
                        mov              qword ptr [rbp + 2008], rax;         jmp   n334_lit_string_α
.Llit_integer_α_490_0:  .quad            27
                        .size            n333_lit_integer_bx, .-n333_lit_integer_bx
                        .type            n334_lit_string_bx, @function
n334_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_lit_string_α:      mov              r11, 170
                        mov              qword ptr [rbp + 1984], 2            # result
                        mov              dword ptr [rbp + 1988], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_491_0]
                        mov              qword ptr [rbp + 1992], rax;         jmp   n335_lit_integer_α
.Llit_string_α_491_0:   .quad            .Llit_string_α_491_0_s
.Llit_string_α_491_0_s: .string          "."
                        .size            n334_lit_string_bx, .-n334_lit_string_bx
                        .type            n335_lit_integer_bx, @function
n335_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_integer_α:     mov              r11, 171
                        mov              qword ptr [rbp + 1888], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_492_0]
                        mov              qword ptr [rbp + 1896], rax;         jmp   n336_lit_string_α
.Llit_integer_α_492_0:  .quad            31
                        .size            n335_lit_integer_bx, .-n335_lit_integer_bx
                        .type            n336_lit_string_bx, @function
n336_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:      mov              r11, 172
                        mov              qword ptr [rbp + 1872], 2            # result
                        mov              dword ptr [rbp + 1876], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_493_0]
                        mov              qword ptr [rbp + 1880], rax;         jmp   n337_lit_integer_α
.Llit_string_α_493_0:   .quad            .Llit_string_α_493_0_s
.Llit_string_α_493_0_s: .string          "."
                        .size            n336_lit_string_bx, .-n336_lit_string_bx
                        .type            n337_lit_integer_bx, @function
n337_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_integer_α:     mov              r11, 173
                        mov              qword ptr [rbp + 1776], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_494_0]
                        mov              qword ptr [rbp + 1784], rax;         jmp   n338_lit_string_α
.Llit_integer_α_494_0:  .quad            63
                        .size            n337_lit_integer_bx, .-n337_lit_integer_bx
                        .type            n338_lit_string_bx, @function
n338_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rbp + 1760], 2            # result
                        mov              dword ptr [rbp + 1764], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_495_0]
                        mov              qword ptr [rbp + 1768], rax;         jmp   n339_lit_integer_α
.Llit_string_α_495_0:   .quad            .Llit_string_α_495_0_s
.Llit_string_α_495_0_s: .string          "."
                        .size            n338_lit_string_bx, .-n338_lit_string_bx
                        .type            n339_lit_integer_bx, @function
n339_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_integer_α:     mov              r11, 175
                        mov              qword ptr [rbp + 1664], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_496_0]
                        mov              qword ptr [rbp + 1672], rax;         jmp   n340_lit_string_α
.Llit_integer_α_496_0:  .quad            75
                        .size            n339_lit_integer_bx, .-n339_lit_integer_bx
                        .type            n340_lit_string_bx, @function
n340_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:      mov              r11, 176
                        mov              qword ptr [rbp + 1648], 2            # result
                        mov              dword ptr [rbp + 1652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_497_0]
                        mov              qword ptr [rbp + 1656], rax;         jmp   n341_lit_integer_α
.Llit_string_α_497_0:   .quad            .Llit_string_α_497_0_s
.Llit_string_α_497_0_s: .string          "."
                        .size            n340_lit_string_bx, .-n340_lit_string_bx
                        .type            n341_lit_integer_bx, @function
n341_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_integer_α:     mov              r11, 177
                        mov              qword ptr [rbp + 1552], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_498_0]
                        mov              qword ptr [rbp + 1560], rax;         jmp   n342_lit_string_α
.Llit_integer_α_498_0:  .quad            4
                        .size            n341_lit_integer_bx, .-n341_lit_integer_bx
                        .type            n342_lit_string_bx, @function
n342_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_lit_string_α:      mov              r11, 178
                        mov              qword ptr [rbp + 1536], 2            # result
                        mov              dword ptr [rbp + 1540], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_499_0]
                        mov              qword ptr [rbp + 1544], rax;         jmp   n343_lit_integer_α
.Llit_string_α_499_0:   .quad            .Llit_string_α_499_0_s
.Llit_string_α_499_0_s: .string          "."
                        .size            n342_lit_string_bx, .-n342_lit_string_bx
                        .type            n343_lit_integer_bx, @function
n343_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_lit_integer_α:     mov              r11, 179
                        mov              qword ptr [rbp + 1440], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_500_0]
                        mov              qword ptr [rbp + 1448], rax;         jmp   n344_lit_string_α
.Llit_integer_α_500_0:  .quad            95
                        .size            n343_lit_integer_bx, .-n343_lit_integer_bx
                        .type            n344_lit_string_bx, @function
n344_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_lit_string_α:      mov              r11, 180
                        mov              qword ptr [rbp + 1424], 2            # result
                        mov              dword ptr [rbp + 1428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_501_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n345_lit_integer_α
.Llit_string_α_501_0:   .quad            .Llit_string_α_501_0_s
.Llit_string_α_501_0_s: .string          "."
                        .size            n344_lit_string_bx, .-n344_lit_string_bx
                        .type            n345_lit_integer_bx, @function
n345_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_lit_integer_α:     mov              r11, 181
                        mov              qword ptr [rbp + 1328], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_502_0]
                        mov              qword ptr [rbp + 1336], rax;         jmp   n346_lit_string_α
.Llit_integer_α_502_0:  .quad            99
                        .size            n345_lit_integer_bx, .-n345_lit_integer_bx
                        .type            n346_lit_string_bx, @function
n346_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_lit_string_α:      mov              r11, 182
                        mov              qword ptr [rbp + 1312], 2            # result
                        mov              dword ptr [rbp + 1316], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_503_0]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n347_lit_integer_α
.Llit_string_α_503_0:   .quad            .Llit_string_α_503_0_s
.Llit_string_α_503_0_s: .string          "."
                        .size            n346_lit_string_bx, .-n346_lit_string_bx
                        .type            n347_lit_integer_bx, @function
n347_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_integer_α:     mov              r11, 183
                        mov              qword ptr [rbp + 1216], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_504_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n348_lit_string_α
.Llit_integer_α_504_0:  .quad            11
                        .size            n347_lit_integer_bx, .-n347_lit_integer_bx
                        .type            n348_lit_string_bx, @function
n348_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_lit_string_α:      mov              r11, 184
                        mov              qword ptr [rbp + 1200], 2            # result
                        mov              dword ptr [rbp + 1204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_505_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n349_lit_integer_α
.Llit_string_α_505_0:   .quad            .Llit_string_α_505_0_s
.Llit_string_α_505_0_s: .string          "."
                        .size            n348_lit_string_bx, .-n348_lit_string_bx
                        .type            n349_lit_integer_bx, @function
n349_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_lit_integer_α:     mov              r11, 185
                        mov              qword ptr [rbp + 1104], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_506_0]
                        mov              qword ptr [rbp + 1112], rax;         jmp   n350_lit_string_α
.Llit_integer_α_506_0:  .quad            28
                        .size            n349_lit_integer_bx, .-n349_lit_integer_bx
                        .type            n350_lit_string_bx, @function
n350_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:      mov              r11, 186
                        mov              qword ptr [rbp + 1088], 2            # result
                        mov              dword ptr [rbp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_507_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n351_lit_integer_α
.Llit_string_α_507_0:   .quad            .Llit_string_α_507_0_s
.Llit_string_α_507_0_s: .string          "."
                        .size            n350_lit_string_bx, .-n350_lit_string_bx
                        .type            n351_lit_integer_bx, @function
n351_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_integer_α:     mov              r11, 187
                        mov              qword ptr [rbp + 992], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_508_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n352_lit_string_α
.Llit_integer_α_508_0:  .quad            61
                        .size            n351_lit_integer_bx, .-n351_lit_integer_bx
                        .type            n352_lit_string_bx, @function
n352_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:      mov              r11, 188
                        mov              qword ptr [rbp + 976], 2             # result
                        mov              dword ptr [rbp + 980], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_509_0]
                        mov              qword ptr [rbp + 984], rax;          jmp   n353_lit_integer_α
.Llit_string_α_509_0:   .quad            .Llit_string_α_509_0_s
.Llit_string_α_509_0_s: .string          "."
                        .size            n352_lit_string_bx, .-n352_lit_string_bx
                        .type            n353_lit_integer_bx, @function
n353_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_integer_α:     mov              r11, 189
                        mov              qword ptr [rbp + 880], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_510_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n354_lit_string_α
.Llit_integer_α_510_0:  .quad            74
                        .size            n353_lit_integer_bx, .-n353_lit_integer_bx
                        .type            n354_lit_string_bx, @function
n354_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rbp + 864], 2             # result
                        mov              dword ptr [rbp + 868], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_511_0]
                        mov              qword ptr [rbp + 872], rax;          jmp   n355_lit_integer_α
.Llit_string_α_511_0:   .quad            .Llit_string_α_511_0_s
.Llit_string_α_511_0_s: .string          "."
                        .size            n354_lit_string_bx, .-n354_lit_string_bx
                        .type            n355_lit_integer_bx, @function
n355_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_integer_α:     mov              r11, 191
                        mov              qword ptr [rbp + 768], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_512_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n356_lit_string_α
.Llit_integer_α_512_0:  .quad            18
                        .size            n355_lit_integer_bx, .-n355_lit_integer_bx
                        .type            n356_lit_string_bx, @function
n356_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_513_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n357_lit_integer_α
.Llit_string_α_513_0:   .quad            .Llit_string_α_513_0_s
.Llit_string_α_513_0_s: .string          "."
                        .size            n356_lit_string_bx, .-n356_lit_string_bx
                        .type            n357_lit_integer_bx, @function
n357_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_lit_integer_α:     mov              r11, 193
                        mov              qword ptr [rbp + 656], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_514_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n358_lit_string_α
.Llit_integer_α_514_0:  .quad            92
                        .size            n357_lit_integer_bx, .-n357_lit_integer_bx
                        .type            n358_lit_string_bx, @function
n358_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_lit_string_α:      mov              r11, 194
                        mov              qword ptr [rbp + 640], 2             # result
                        mov              dword ptr [rbp + 644], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_515_0]
                        mov              qword ptr [rbp + 648], rax;          jmp   n359_lit_integer_α
.Llit_string_α_515_0:   .quad            .Llit_string_α_515_0_s
.Llit_string_α_515_0_s: .string          "."
                        .size            n358_lit_string_bx, .-n358_lit_string_bx
                        .type            n359_lit_integer_bx, @function
n359_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_lit_integer_α:     mov              r11, 195
                        mov              qword ptr [rbp + 544], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_516_0]
                        mov              qword ptr [rbp + 552], rax;          jmp   n360_lit_string_α
.Llit_integer_α_516_0:  .quad            40
                        .size            n359_lit_integer_bx, .-n359_lit_integer_bx
                        .type            n360_lit_string_bx, @function
n360_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_lit_string_α:      mov              r11, 196
                        mov              qword ptr [rbp + 528], 2             # result
                        mov              dword ptr [rbp + 532], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_517_0]
                        mov              qword ptr [rbp + 536], rax;          jmp   n361_lit_integer_α
.Llit_string_α_517_0:   .quad            .Llit_string_α_517_0_s
.Llit_string_α_517_0_s: .string          "."
                        .size            n360_lit_string_bx, .-n360_lit_string_bx
                        .type            n361_lit_integer_bx, @function
n361_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_lit_integer_α:     mov              r11, 197
                        mov              qword ptr [rbp + 432], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_518_0]
                        mov              qword ptr [rbp + 440], rax;          jmp   n362_lit_string_α
.Llit_integer_α_518_0:  .quad            53
                        .size            n361_lit_integer_bx, .-n361_lit_integer_bx
                        .type            n362_lit_string_bx, @function
n362_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:      mov              r11, 198
                        mov              qword ptr [rbp + 416], 2             # result
                        mov              dword ptr [rbp + 420], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_519_0]
                        mov              qword ptr [rbp + 424], rax;          jmp   n363_lit_integer_α
.Llit_string_α_519_0:   .quad            .Llit_string_α_519_0_s
.Llit_string_α_519_0_s: .string          "."
                        .size            n362_lit_string_bx, .-n362_lit_string_bx
                        .type            n363_lit_integer_bx, @function
n363_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_lit_integer_α:     mov              r11, 199
                        mov              qword ptr [rbp + 320], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_520_0]
                        mov              qword ptr [rbp + 328], rax;          jmp   n364_lit_string_α
.Llit_integer_α_520_0:  .quad            59
                        .size            n363_lit_integer_bx, .-n363_lit_integer_bx
                        .type            n364_lit_string_bx, @function
n364_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_lit_string_α:      mov              r11, 200
                        mov              qword ptr [rbp + 304], 2             # result
                        mov              dword ptr [rbp + 308], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_521_0]
                        mov              qword ptr [rbp + 312], rax;          jmp   n365_lit_integer_α
.Llit_string_α_521_0:   .quad            .Llit_string_α_521_0_s
.Llit_string_α_521_0_s: .string          "."
                        .size            n364_lit_string_bx, .-n364_lit_string_bx
                        .type            n365_lit_integer_bx, @function
n365_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_integer_α:     mov              r11, 201
                        mov              qword ptr [rbp + 208], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_522_0]
                        mov              qword ptr [rbp + 216], rax;          jmp   n366_lit_string_α
.Llit_integer_α_522_0:  .quad            8
                        .size            n365_lit_integer_bx, .-n365_lit_integer_bx
                        .type            n366_lit_string_bx, @function
n366_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:      mov              r11, 202
                        mov              qword ptr [rbp + 192], 2             # result
                        mov              dword ptr [rbp + 196], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_523_0]
                        mov              qword ptr [rbp + 200], rax;          jmp   n367_call_α
.Llit_string_α_523_0:   .quad            .Llit_string_α_523_0_s
.Llit_string_α_523_0_s: .string          "[]"
                        .size            n366_lit_string_bx, .-n366_lit_string_bx
                        .type            n367_call_bx, @function
n367_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_call_α:            mov              r11, 203
                        mov              rax, qword ptr [rbp + 192]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 200]
                        mov              qword ptr [rbp + 280], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n368_call_α
n367_call_β:            mov              r11, 203;                            jmp   main$2F0_ω
                        .size            n367_call_bx, .-n367_call_bx
                        .type            n368_call_bx, @function
n368_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_call_α:            mov              r11, 204
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 376], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 360], rax
                        lea              rdi, [rbp + 352]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n369_call_α
n368_call_β:            mov              r11, 204;                            jmp   main$2F0_ω
                        .size            n368_call_bx, .-n368_call_bx
                        .type            n369_call_bx, @function
n369_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_call_α:            mov              r11, 205
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 504], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 528]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 536]
                        mov              qword ptr [rbp + 472], rax
                        lea              rdi, [rbp + 464]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n370_call_α
n369_call_β:            mov              r11, 205;                            jmp   main$2F0_ω
                        .size            n369_call_bx, .-n369_call_bx
                        .type            n370_call_bx, @function
n370_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_call_α:            mov              r11, 206
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 600], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 584], rax
                        lea              rdi, [rbp + 576]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n371_call_α
n370_call_β:            mov              r11, 206;                            jmp   main$2F0_ω
                        .size            n370_call_bx, .-n370_call_bx
                        .type            n371_call_bx, @function
n371_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_call_α:            mov              r11, 207
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n372_call_α
n371_call_β:            mov              r11, 207;                            jmp   main$2F0_ω
                        .size            n371_call_bx, .-n371_call_bx
                        .type            n372_call_bx, @function
n372_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            mov              r11, 208
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n373_call_α
n372_call_β:            mov              r11, 208;                            jmp   main$2F0_ω
                        .size            n372_call_bx, .-n372_call_bx
                        .type            n373_call_bx, @function
n373_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_call_α:            mov              r11, 209
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 976]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 984]
                        mov              qword ptr [rbp + 920], rax
                        lea              rdi, [rbp + 912]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n374_call_α
n373_call_β:            mov              r11, 209;                            jmp   main$2F0_ω
                        .size            n373_call_bx, .-n373_call_bx
                        .type            n374_call_bx, @function
n374_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            mov              r11, 210
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 1048], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n375_call_α
n374_call_β:            mov              r11, 210;                            jmp   main$2F0_ω
                        .size            n374_call_bx, .-n374_call_bx
                        .type            n375_call_bx, @function
n375_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:            mov              r11, 211
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1160], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1144], rax
                        lea              rdi, [rbp + 1136]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n376_call_α
n375_call_β:            mov              r11, 211;                            jmp   main$2F0_ω
                        .size            n375_call_bx, .-n375_call_bx
                        .type            n376_call_bx, @function
n376_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_call_α:            mov              r11, 212
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1288], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1256], rax
                        lea              rdi, [rbp + 1248]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1232], rax
                        mov              qword ptr [rbp + 1240], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n377_call_α
n376_call_β:            mov              r11, 212;                            jmp   main$2F0_ω
                        .size            n376_call_bx, .-n376_call_bx
                        .type            n377_call_bx, @function
n377_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_call_α:            mov              r11, 213
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1400], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1368], rax
                        lea              rdi, [rbp + 1360]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n378_call_α
n377_call_β:            mov              r11, 213;                            jmp   main$2F0_ω
                        .size            n377_call_bx, .-n377_call_bx
                        .type            n378_call_bx, @function
n378_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:            mov              r11, 214
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1512], rax
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1448]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1536]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1544]
                        mov              qword ptr [rbp + 1480], rax
                        lea              rdi, [rbp + 1472]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n379_call_α
n378_call_β:            mov              r11, 214;                            jmp   main$2F0_ω
                        .size            n378_call_bx, .-n378_call_bx
                        .type            n379_call_bx, @function
n379_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_call_α:            mov              r11, 215
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1624], rax
                        mov              rax, qword ptr [rbp + 1552]
                        mov              qword ptr [rbp + 1600], rax
                        mov              rax, qword ptr [rbp + 1560]
                        mov              qword ptr [rbp + 1608], rax
                        mov              rax, qword ptr [rbp + 1648]
                        mov              qword ptr [rbp + 1584], rax
                        mov              rax, qword ptr [rbp + 1656]
                        mov              qword ptr [rbp + 1592], rax
                        lea              rdi, [rbp + 1584]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1568], rax
                        mov              qword ptr [rbp + 1576], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n380_call_α
n379_call_β:            mov              r11, 215;                            jmp   main$2F0_ω
                        .size            n379_call_bx, .-n379_call_bx
                        .type            n380_call_bx, @function
n380_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_call_α:            mov              r11, 216
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1736], rax
                        mov              rax, qword ptr [rbp + 1664]
                        mov              qword ptr [rbp + 1712], rax
                        mov              rax, qword ptr [rbp + 1672]
                        mov              qword ptr [rbp + 1720], rax
                        mov              rax, qword ptr [rbp + 1760]
                        mov              qword ptr [rbp + 1696], rax
                        mov              rax, qword ptr [rbp + 1768]
                        mov              qword ptr [rbp + 1704], rax
                        lea              rdi, [rbp + 1696]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1680], rax
                        mov              qword ptr [rbp + 1688], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n381_call_α
n380_call_β:            mov              r11, 216;                            jmp   main$2F0_ω
                        .size            n380_call_bx, .-n380_call_bx
                        .type            n381_call_bx, @function
n381_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_call_α:            mov              r11, 217
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1848], rax
                        mov              rax, qword ptr [rbp + 1776]
                        mov              qword ptr [rbp + 1824], rax
                        mov              rax, qword ptr [rbp + 1784]
                        mov              qword ptr [rbp + 1832], rax
                        mov              rax, qword ptr [rbp + 1872]
                        mov              qword ptr [rbp + 1808], rax
                        mov              rax, qword ptr [rbp + 1880]
                        mov              qword ptr [rbp + 1816], rax
                        lea              rdi, [rbp + 1808]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1792], rax
                        mov              qword ptr [rbp + 1800], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n382_call_α
n381_call_β:            mov              r11, 217;                            jmp   main$2F0_ω
                        .size            n381_call_bx, .-n381_call_bx
                        .type            n382_call_bx, @function
n382_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_call_α:            mov              r11, 218
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1960], rax
                        mov              rax, qword ptr [rbp + 1888]
                        mov              qword ptr [rbp + 1936], rax
                        mov              rax, qword ptr [rbp + 1896]
                        mov              qword ptr [rbp + 1944], rax
                        mov              rax, qword ptr [rbp + 1984]
                        mov              qword ptr [rbp + 1920], rax
                        mov              rax, qword ptr [rbp + 1992]
                        mov              qword ptr [rbp + 1928], rax
                        lea              rdi, [rbp + 1920]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1904], rax
                        mov              qword ptr [rbp + 1912], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n383_call_α
n382_call_β:            mov              r11, 218;                            jmp   main$2F0_ω
                        .size            n382_call_bx, .-n382_call_bx
                        .type            n383_call_bx, @function
n383_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_call_α:            mov              r11, 219
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 2072], rax
                        mov              rax, qword ptr [rbp + 2000]
                        mov              qword ptr [rbp + 2048], rax
                        mov              rax, qword ptr [rbp + 2008]
                        mov              qword ptr [rbp + 2056], rax
                        mov              rax, qword ptr [rbp + 2096]
                        mov              qword ptr [rbp + 2032], rax
                        mov              rax, qword ptr [rbp + 2104]
                        mov              qword ptr [rbp + 2040], rax
                        lea              rdi, [rbp + 2032]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2016], rax
                        mov              qword ptr [rbp + 2024], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n384_call_α
n383_call_β:            mov              r11, 219;                            jmp   main$2F0_ω
                        .size            n383_call_bx, .-n383_call_bx
                        .type            n384_call_bx, @function
n384_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_call_α:            mov              r11, 220
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 2184], rax
                        mov              rax, qword ptr [rbp + 2112]
                        mov              qword ptr [rbp + 2160], rax
                        mov              rax, qword ptr [rbp + 2120]
                        mov              qword ptr [rbp + 2168], rax
                        mov              rax, qword ptr [rbp + 2208]
                        mov              qword ptr [rbp + 2144], rax
                        mov              rax, qword ptr [rbp + 2216]
                        mov              qword ptr [rbp + 2152], rax
                        lea              rdi, [rbp + 2144]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n385_call_α
n384_call_β:            mov              r11, 220;                            jmp   main$2F0_ω
                        .size            n384_call_bx, .-n384_call_bx
                        .type            n385_call_bx, @function
n385_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_call_α:            mov              r11, 221
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2296], rax
                        mov              rax, qword ptr [rbp + 2224]
                        mov              qword ptr [rbp + 2272], rax
                        mov              rax, qword ptr [rbp + 2232]
                        mov              qword ptr [rbp + 2280], rax
                        mov              rax, qword ptr [rbp + 2320]
                        mov              qword ptr [rbp + 2256], rax
                        mov              rax, qword ptr [rbp + 2328]
                        mov              qword ptr [rbp + 2264], rax
                        lea              rdi, [rbp + 2256]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2240], rax
                        mov              qword ptr [rbp + 2248], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n386_call_α
n385_call_β:            mov              r11, 221;                            jmp   main$2F0_ω
                        .size            n385_call_bx, .-n385_call_bx
                        .type            n386_call_bx, @function
n386_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_call_α:            mov              r11, 222
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2408], rax
                        mov              rax, qword ptr [rbp + 2336]
                        mov              qword ptr [rbp + 2384], rax
                        mov              rax, qword ptr [rbp + 2344]
                        mov              qword ptr [rbp + 2392], rax
                        mov              rax, qword ptr [rbp + 2432]
                        mov              qword ptr [rbp + 2368], rax
                        mov              rax, qword ptr [rbp + 2440]
                        mov              qword ptr [rbp + 2376], rax
                        lea              rdi, [rbp + 2368]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2352], rax
                        mov              qword ptr [rbp + 2360], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n387_call_α
n386_call_β:            mov              r11, 222;                            jmp   main$2F0_ω
                        .size            n386_call_bx, .-n386_call_bx
                        .type            n387_call_bx, @function
n387_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_call_α:            mov              r11, 223
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2520], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2496], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2504], rax
                        mov              rax, qword ptr [rbp + 2544]
                        mov              qword ptr [rbp + 2480], rax
                        mov              rax, qword ptr [rbp + 2552]
                        mov              qword ptr [rbp + 2488], rax
                        lea              rdi, [rbp + 2480]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n388_call_α
n387_call_β:            mov              r11, 223;                            jmp   main$2F0_ω
                        .size            n387_call_bx, .-n387_call_bx
                        .type            n388_call_bx, @function
n388_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_call_α:            mov              r11, 224
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2624], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2632], rax
                        mov              rax, qword ptr [rbp + 2560]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2568]
                        mov              qword ptr [rbp + 2616], rax
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2592], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2600], rax
                        lea              rdi, [rbp + 2592]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2576], rax
                        mov              qword ptr [rbp + 2584], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n389_call_α
n388_call_β:            mov              r11, 224;                            jmp   main$2F0_ω
                        .size            n388_call_bx, .-n388_call_bx
                        .type            n389_call_bx, @function
n389_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_call_α:            mov              r11, 225
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2736], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2744], rax
                        mov              rax, qword ptr [rbp + 2672]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 2680]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2776]
                        mov              qword ptr [rbp + 2712], rax
                        lea              rdi, [rbp + 2704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n390_call_α
n389_call_β:            mov              r11, 225;                            jmp   main$2F0_ω
                        .size            n389_call_bx, .-n389_call_bx
                        .type            n390_call_bx, @function
n390_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_call_α:            mov              r11, 226
                        mov              rax, qword ptr [rbp + 2688]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2696]
                        mov              qword ptr [rbp + 2856], rax
                        mov              rax, qword ptr [rbp + 2784]
                        mov              qword ptr [rbp + 2832], rax
                        mov              rax, qword ptr [rbp + 2792]
                        mov              qword ptr [rbp + 2840], rax
                        mov              rax, qword ptr [rbp + 2880]
                        mov              qword ptr [rbp + 2816], rax
                        mov              rax, qword ptr [rbp + 2888]
                        mov              qword ptr [rbp + 2824], rax
                        lea              rdi, [rbp + 2816]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2800], rax
                        mov              qword ptr [rbp + 2808], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n391_call_α
n390_call_β:            mov              r11, 226;                            jmp   main$2F0_ω
                        .size            n390_call_bx, .-n390_call_bx
                        .type            n391_call_bx, @function
n391_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_call_α:            mov              r11, 227
                        mov              rax, qword ptr [rbp + 2800]
                        mov              qword ptr [rbp + 2960], rax
                        mov              rax, qword ptr [rbp + 2808]
                        mov              qword ptr [rbp + 2968], rax
                        mov              rax, qword ptr [rbp + 2896]
                        mov              qword ptr [rbp + 2944], rax
                        mov              rax, qword ptr [rbp + 2904]
                        mov              qword ptr [rbp + 2952], rax
                        mov              rax, qword ptr [rbp + 2992]
                        mov              qword ptr [rbp + 2928], rax
                        mov              rax, qword ptr [rbp + 3000]
                        mov              qword ptr [rbp + 2936], rax
                        lea              rdi, [rbp + 2928]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2912], rax
                        mov              qword ptr [rbp + 2920], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n392_call_α
n391_call_β:            mov              r11, 227;                            jmp   main$2F0_ω
                        .size            n391_call_bx, .-n391_call_bx
                        .type            n392_call_bx, @function
n392_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_call_α:            mov              r11, 228
                        mov              rax, qword ptr [rbp + 2912]
                        mov              qword ptr [rbp + 3072], rax
                        mov              rax, qword ptr [rbp + 2920]
                        mov              qword ptr [rbp + 3080], rax
                        mov              rax, qword ptr [rbp + 3008]
                        mov              qword ptr [rbp + 3056], rax
                        mov              rax, qword ptr [rbp + 3016]
                        mov              qword ptr [rbp + 3064], rax
                        mov              rax, qword ptr [rbp + 3104]
                        mov              qword ptr [rbp + 3040], rax
                        mov              rax, qword ptr [rbp + 3112]
                        mov              qword ptr [rbp + 3048], rax
                        lea              rdi, [rbp + 3040]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3024], rax
                        mov              qword ptr [rbp + 3032], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n393_call_α
n392_call_β:            mov              r11, 228;                            jmp   main$2F0_ω
                        .size            n392_call_bx, .-n392_call_bx
                        .type            n393_call_bx, @function
n393_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_call_α:            mov              r11, 229
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 3184], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 3192], rax
                        mov              rax, qword ptr [rbp + 3120]
                        mov              qword ptr [rbp + 3168], rax
                        mov              rax, qword ptr [rbp + 3128]
                        mov              qword ptr [rbp + 3176], rax
                        mov              rax, qword ptr [rbp + 3216]
                        mov              qword ptr [rbp + 3152], rax
                        mov              rax, qword ptr [rbp + 3224]
                        mov              qword ptr [rbp + 3160], rax
                        lea              rdi, [rbp + 3152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3136], rax
                        mov              qword ptr [rbp + 3144], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n394_call_α
n393_call_β:            mov              r11, 229;                            jmp   main$2F0_ω
                        .size            n393_call_bx, .-n393_call_bx
                        .type            n394_call_bx, @function
n394_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_call_α:            mov              r11, 230
                        mov              rax, qword ptr [rbp + 3136]
                        mov              qword ptr [rbp + 3296], rax
                        mov              rax, qword ptr [rbp + 3144]
                        mov              qword ptr [rbp + 3304], rax
                        mov              rax, qword ptr [rbp + 3232]
                        mov              qword ptr [rbp + 3280], rax
                        mov              rax, qword ptr [rbp + 3240]
                        mov              qword ptr [rbp + 3288], rax
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3264], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3272], rax
                        lea              rdi, [rbp + 3264]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3248], rax
                        mov              qword ptr [rbp + 3256], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n395_call_α
n394_call_β:            mov              r11, 230;                            jmp   main$2F0_ω
                        .size            n394_call_bx, .-n394_call_bx
                        .type            n395_call_bx, @function
n395_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_call_α:            mov              r11, 231
                        mov              rax, qword ptr [rbp + 3248]
                        mov              qword ptr [rbp + 3408], rax
                        mov              rax, qword ptr [rbp + 3256]
                        mov              qword ptr [rbp + 3416], rax
                        mov              rax, qword ptr [rbp + 3344]
                        mov              qword ptr [rbp + 3392], rax
                        mov              rax, qword ptr [rbp + 3352]
                        mov              qword ptr [rbp + 3400], rax
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3384], rax
                        lea              rdi, [rbp + 3376]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3360], rax
                        mov              qword ptr [rbp + 3368], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n396_call_α
n395_call_β:            mov              r11, 231;                            jmp   main$2F0_ω
                        .size            n395_call_bx, .-n395_call_bx
                        .type            n396_call_bx, @function
n396_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_call_α:            mov              r11, 232
                        mov              rax, qword ptr [rbp + 3360]
                        mov              qword ptr [rbp + 3520], rax
                        mov              rax, qword ptr [rbp + 3368]
                        mov              qword ptr [rbp + 3528], rax
                        mov              rax, qword ptr [rbp + 3456]
                        mov              qword ptr [rbp + 3504], rax
                        mov              rax, qword ptr [rbp + 3464]
                        mov              qword ptr [rbp + 3512], rax
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3560]
                        mov              qword ptr [rbp + 3496], rax
                        lea              rdi, [rbp + 3488]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3472], rax
                        mov              qword ptr [rbp + 3480], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n397_call_α
n396_call_β:            mov              r11, 232;                            jmp   main$2F0_ω
                        .size            n396_call_bx, .-n396_call_bx
                        .type            n397_call_bx, @function
n397_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_call_α:            mov              r11, 233
                        mov              rax, qword ptr [rbp + 3472]
                        mov              qword ptr [rbp + 3632], rax
                        mov              rax, qword ptr [rbp + 3480]
                        mov              qword ptr [rbp + 3640], rax
                        mov              rax, qword ptr [rbp + 3568]
                        mov              qword ptr [rbp + 3616], rax
                        mov              rax, qword ptr [rbp + 3576]
                        mov              qword ptr [rbp + 3624], rax
                        mov              rax, qword ptr [rbp + 3664]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3672]
                        mov              qword ptr [rbp + 3608], rax
                        lea              rdi, [rbp + 3600]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3584], rax
                        mov              qword ptr [rbp + 3592], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n398_call_α
n397_call_β:            mov              r11, 233;                            jmp   main$2F0_ω
                        .size            n397_call_bx, .-n397_call_bx
                        .type            n398_call_bx, @function
n398_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_call_α:            mov              r11, 234
                        mov              rax, qword ptr [rbp + 3584]
                        mov              qword ptr [rbp + 3744], rax
                        mov              rax, qword ptr [rbp + 3592]
                        mov              qword ptr [rbp + 3752], rax
                        mov              rax, qword ptr [rbp + 3680]
                        mov              qword ptr [rbp + 3728], rax
                        mov              rax, qword ptr [rbp + 3688]
                        mov              qword ptr [rbp + 3736], rax
                        mov              rax, qword ptr [rbp + 3776]
                        mov              qword ptr [rbp + 3712], rax
                        mov              rax, qword ptr [rbp + 3784]
                        mov              qword ptr [rbp + 3720], rax
                        lea              rdi, [rbp + 3712]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3696], rax
                        mov              qword ptr [rbp + 3704], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n399_call_α
n398_call_β:            mov              r11, 234;                            jmp   main$2F0_ω
                        .size            n398_call_bx, .-n398_call_bx
                        .type            n399_call_bx, @function
n399_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_call_α:            mov              r11, 235
                        mov              rax, qword ptr [rbp + 3696]
                        mov              qword ptr [rbp + 3856], rax
                        mov              rax, qword ptr [rbp + 3704]
                        mov              qword ptr [rbp + 3864], rax
                        mov              rax, qword ptr [rbp + 3792]
                        mov              qword ptr [rbp + 3840], rax
                        mov              rax, qword ptr [rbp + 3800]
                        mov              qword ptr [rbp + 3848], rax
                        mov              rax, qword ptr [rbp + 3888]
                        mov              qword ptr [rbp + 3824], rax
                        mov              rax, qword ptr [rbp + 3896]
                        mov              qword ptr [rbp + 3832], rax
                        lea              rdi, [rbp + 3824]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n400_call_α
n399_call_β:            mov              r11, 235;                            jmp   main$2F0_ω
                        .size            n399_call_bx, .-n399_call_bx
                        .type            n400_call_bx, @function
n400_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_call_α:            mov              r11, 236
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3968], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3976], rax
                        mov              rax, qword ptr [rbp + 3904]
                        mov              qword ptr [rbp + 3952], rax
                        mov              rax, qword ptr [rbp + 3912]
                        mov              qword ptr [rbp + 3960], rax
                        mov              rax, qword ptr [rbp + 4000]
                        mov              qword ptr [rbp + 3936], rax
                        mov              rax, qword ptr [rbp + 4008]
                        mov              qword ptr [rbp + 3944], rax
                        lea              rdi, [rbp + 3936]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3920], rax
                        mov              qword ptr [rbp + 3928], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n401_call_α
n400_call_β:            mov              r11, 236;                            jmp   main$2F0_ω
                        .size            n400_call_bx, .-n400_call_bx
                        .type            n401_call_bx, @function
n401_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_call_α:            mov              r11, 237
                        mov              rax, qword ptr [rbp + 3920]
                        mov              qword ptr [rbp + 4080], rax
                        mov              rax, qword ptr [rbp + 3928]
                        mov              qword ptr [rbp + 4088], rax
                        mov              rax, qword ptr [rbp + 4016]
                        mov              qword ptr [rbp + 4064], rax
                        mov              rax, qword ptr [rbp + 4024]
                        mov              qword ptr [rbp + 4072], rax
                        mov              rax, qword ptr [rbp + 4112]
                        mov              qword ptr [rbp + 4048], rax
                        mov              rax, qword ptr [rbp + 4120]
                        mov              qword ptr [rbp + 4056], rax
                        lea              rdi, [rbp + 4048]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4032], rax
                        mov              qword ptr [rbp + 4040], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n402_call_α
n401_call_β:            mov              r11, 237;                            jmp   main$2F0_ω
                        .size            n401_call_bx, .-n401_call_bx
                        .type            n402_call_bx, @function
n402_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_call_α:            mov              r11, 238
                        mov              rax, qword ptr [rbp + 4032]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4040]
                        mov              qword ptr [rbp + 4200], rax
                        mov              rax, qword ptr [rbp + 4128]
                        mov              qword ptr [rbp + 4176], rax
                        mov              rax, qword ptr [rbp + 4136]
                        mov              qword ptr [rbp + 4184], rax
                        mov              rax, qword ptr [rbp + 4224]
                        mov              qword ptr [rbp + 4160], rax
                        mov              rax, qword ptr [rbp + 4232]
                        mov              qword ptr [rbp + 4168], rax
                        lea              rdi, [rbp + 4160]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4144], rax
                        mov              qword ptr [rbp + 4152], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n403_call_α
n402_call_β:            mov              r11, 238;                            jmp   main$2F0_ω
                        .size            n402_call_bx, .-n402_call_bx
                        .type            n403_call_bx, @function
n403_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_call_α:            mov              r11, 239
                        mov              rax, qword ptr [rbp + 4144]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4152]
                        mov              qword ptr [rbp + 4312], rax
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4296], rax
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4272], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4280], rax
                        lea              rdi, [rbp + 4272]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4256], rax
                        mov              qword ptr [rbp + 4264], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n404_call_α
n403_call_β:            mov              r11, 239;                            jmp   main$2F0_ω
                        .size            n403_call_bx, .-n403_call_bx
                        .type            n404_call_bx, @function
n404_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_call_α:            mov              r11, 240
                        mov              rax, qword ptr [rbp + 4256]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 4264]
                        mov              qword ptr [rbp + 4424], rax
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4408], rax
                        mov              rax, qword ptr [rbp + 4448]
                        mov              qword ptr [rbp + 4384], rax
                        mov              rax, qword ptr [rbp + 4456]
                        mov              qword ptr [rbp + 4392], rax
                        lea              rdi, [rbp + 4384]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4368], rax
                        mov              qword ptr [rbp + 4376], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n405_call_α
n404_call_β:            mov              r11, 240;                            jmp   main$2F0_ω
                        .size            n404_call_bx, .-n404_call_bx
                        .type            n405_call_bx, @function
n405_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_call_α:            mov              r11, 241
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4536], rax
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4520], rax
                        mov              rax, qword ptr [rbp + 4560]
                        mov              qword ptr [rbp + 4496], rax
                        mov              rax, qword ptr [rbp + 4568]
                        mov              qword ptr [rbp + 4504], rax
                        lea              rdi, [rbp + 4496]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4480], rax
                        mov              qword ptr [rbp + 4488], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n406_call_α
n405_call_β:            mov              r11, 241;                            jmp   main$2F0_ω
                        .size            n405_call_bx, .-n405_call_bx
                        .type            n406_call_bx, @function
n406_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_call_α:            mov              r11, 242
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4640], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4648], rax
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4632], rax
                        mov              rax, qword ptr [rbp + 4672]
                        mov              qword ptr [rbp + 4608], rax
                        mov              rax, qword ptr [rbp + 4680]
                        mov              qword ptr [rbp + 4616], rax
                        lea              rdi, [rbp + 4608]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4592], rax
                        mov              qword ptr [rbp + 4600], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n407_call_α
n406_call_β:            mov              r11, 242;                            jmp   main$2F0_ω
                        .size            n406_call_bx, .-n406_call_bx
                        .type            n407_call_bx, @function
n407_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_call_α:            mov              r11, 243
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4752], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4760], rax
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4736], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4744], rax
                        mov              rax, qword ptr [rbp + 4784]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 4792]
                        mov              qword ptr [rbp + 4728], rax
                        lea              rdi, [rbp + 4720]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n408_call_α
n407_call_β:            mov              r11, 243;                            jmp   main$2F0_ω
                        .size            n407_call_bx, .-n407_call_bx
                        .type            n408_call_bx, @function
n408_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_call_α:            mov              r11, 244
                        mov              rax, qword ptr [rbp + 4704]
                        mov              qword ptr [rbp + 4864], rax
                        mov              rax, qword ptr [rbp + 4712]
                        mov              qword ptr [rbp + 4872], rax
                        mov              rax, qword ptr [rbp + 4800]
                        mov              qword ptr [rbp + 4848], rax
                        mov              rax, qword ptr [rbp + 4808]
                        mov              qword ptr [rbp + 4856], rax
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 4832], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 4840], rax
                        lea              rdi, [rbp + 4832]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4816], rax
                        mov              qword ptr [rbp + 4824], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n409_call_α
n408_call_β:            mov              r11, 244;                            jmp   main$2F0_ω
                        .size            n408_call_bx, .-n408_call_bx
                        .type            n409_call_bx, @function
n409_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_call_α:            mov              r11, 245
                        mov              rax, qword ptr [rbp + 4816]
                        mov              qword ptr [rbp + 4976], rax
                        mov              rax, qword ptr [rbp + 4824]
                        mov              qword ptr [rbp + 4984], rax
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 4968], rax
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 4952], rax
                        lea              rdi, [rbp + 4944]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4928], rax
                        mov              qword ptr [rbp + 4936], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n410_call_α
n409_call_β:            mov              r11, 245;                            jmp   main$2F0_ω
                        .size            n409_call_bx, .-n409_call_bx
                        .type            n410_call_bx, @function
n410_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_call_α:            mov              r11, 246
                        mov              rax, qword ptr [rbp + 4928]
                        mov              qword ptr [rbp + 5088], rax
                        mov              rax, qword ptr [rbp + 4936]
                        mov              qword ptr [rbp + 5096], rax
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 5072], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 5080], rax
                        mov              rax, qword ptr [rbp + 5120]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 5064], rax
                        lea              rdi, [rbp + 5056]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5040], rax
                        mov              qword ptr [rbp + 5048], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n411_call_α
n410_call_β:            mov              r11, 246;                            jmp   main$2F0_ω
                        .size            n410_call_bx, .-n410_call_bx
                        .type            n411_call_bx, @function
n411_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_call_α:            mov              r11, 247
                        mov              rax, qword ptr [rbp + 5040]
                        mov              qword ptr [rbp + 5200], rax
                        mov              rax, qword ptr [rbp + 5048]
                        mov              qword ptr [rbp + 5208], rax
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 5184], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 5192], rax
                        mov              rax, qword ptr [rbp + 5232]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 5240]
                        mov              qword ptr [rbp + 5176], rax
                        lea              rdi, [rbp + 5168]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5152], rax
                        mov              qword ptr [rbp + 5160], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n412_call_α
n411_call_β:            mov              r11, 247;                            jmp   main$2F0_ω
                        .size            n411_call_bx, .-n411_call_bx
                        .type            n412_call_bx, @function
n412_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_call_α:            mov              r11, 248
                        mov              rax, qword ptr [rbp + 5152]
                        mov              qword ptr [rbp + 5312], rax
                        mov              rax, qword ptr [rbp + 5160]
                        mov              qword ptr [rbp + 5320], rax
                        mov              rax, qword ptr [rbp + 5248]
                        mov              qword ptr [rbp + 5296], rax
                        mov              rax, qword ptr [rbp + 5256]
                        mov              qword ptr [rbp + 5304], rax
                        mov              rax, qword ptr [rbp + 5344]
                        mov              qword ptr [rbp + 5280], rax
                        mov              rax, qword ptr [rbp + 5352]
                        mov              qword ptr [rbp + 5288], rax
                        lea              rdi, [rbp + 5280]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5264], rax
                        mov              qword ptr [rbp + 5272], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n413_call_α
n412_call_β:            mov              r11, 248;                            jmp   main$2F0_ω
                        .size            n412_call_bx, .-n412_call_bx
                        .type            n413_call_bx, @function
n413_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_call_α:            mov              r11, 249
                        mov              rax, qword ptr [rbp + 5264]
                        mov              qword ptr [rbp + 5424], rax
                        mov              rax, qword ptr [rbp + 5272]
                        mov              qword ptr [rbp + 5432], rax
                        mov              rax, qword ptr [rbp + 5360]
                        mov              qword ptr [rbp + 5408], rax
                        mov              rax, qword ptr [rbp + 5368]
                        mov              qword ptr [rbp + 5416], rax
                        mov              rax, qword ptr [rbp + 5456]
                        mov              qword ptr [rbp + 5392], rax
                        mov              rax, qword ptr [rbp + 5464]
                        mov              qword ptr [rbp + 5400], rax
                        lea              rdi, [rbp + 5392]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5376], rax
                        mov              qword ptr [rbp + 5384], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n414_call_α
n413_call_β:            mov              r11, 249;                            jmp   main$2F0_ω
                        .size            n413_call_bx, .-n413_call_bx
                        .type            n414_call_bx, @function
n414_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_call_α:            mov              r11, 250
                        mov              rax, qword ptr [rbp + 5376]
                        mov              qword ptr [rbp + 5536], rax
                        mov              rax, qword ptr [rbp + 5384]
                        mov              qword ptr [rbp + 5544], rax
                        mov              rax, qword ptr [rbp + 5472]
                        mov              qword ptr [rbp + 5520], rax
                        mov              rax, qword ptr [rbp + 5480]
                        mov              qword ptr [rbp + 5528], rax
                        mov              rax, qword ptr [rbp + 5568]
                        mov              qword ptr [rbp + 5504], rax
                        mov              rax, qword ptr [rbp + 5576]
                        mov              qword ptr [rbp + 5512], rax
                        lea              rdi, [rbp + 5504]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5488], rax
                        mov              qword ptr [rbp + 5496], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n415_call_α
n414_call_β:            mov              r11, 250;                            jmp   main$2F0_ω
                        .size            n414_call_bx, .-n414_call_bx
                        .type            n415_call_bx, @function
n415_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_call_α:            mov              r11, 251
                        mov              rax, qword ptr [rbp + 5488]
                        mov              qword ptr [rbp + 5648], rax
                        mov              rax, qword ptr [rbp + 5496]
                        mov              qword ptr [rbp + 5656], rax
                        mov              rax, qword ptr [rbp + 5584]
                        mov              qword ptr [rbp + 5632], rax
                        mov              rax, qword ptr [rbp + 5592]
                        mov              qword ptr [rbp + 5640], rax
                        mov              rax, qword ptr [rbp + 5680]
                        mov              qword ptr [rbp + 5616], rax
                        mov              rax, qword ptr [rbp + 5688]
                        mov              qword ptr [rbp + 5624], rax
                        lea              rdi, [rbp + 5616]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5600], rax
                        mov              qword ptr [rbp + 5608], rdx
                        cmp              al, 104;                             je    main$2F0_ω
                                                                              jmp   n416_call_α
n415_call_β:            mov              r11, 251;                            jmp   main$2F0_ω
                        .size            n415_call_bx, .-n415_call_bx
                        .type            n416_call_bx, @function
n416_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_call_α:            mov              r11, 252
                        mov              rax, qword ptr [rbp + 5600]
                        mov              qword ptr [rbp + 5760], rax
                        mov              rax, qword ptr [rbp + 5608]
                        mov              qword ptr [rbp + 5768], rax
                        mov              rax, qword ptr [rbp + 5696]
                        mov              qword ptr [rbp + 5744], rax
                        mov              rax, qword ptr [rbp + 5704]
                        mov              qword ptr [rbp + 5752], rax
                        mov              rax, qword ptr [rbp + 5792]
                        mov              qword ptr [rbp + 5728], rax
                        mov              rax, qword ptr [rbp + 5800]
                        mov              qword ptr [rbp + 5736], rax
                        lea              rdi, [rbp + 5728]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5712], rax
                        mov              qword ptr [rbp + 5720], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n417_var_ref_α
n416_call_β:            mov              r11, 252;                            jmp   main$2F0_step
                        .size            n416_call_bx, .-n416_call_bx
                        .type            n417_var_ref_bx, @function
n417_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_var_ref_α:         mov              r11, 253
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 5840]
                        mov              qword ptr [rbp + 5808], rax
                        mov              qword ptr [rbp + 5816], rdx;         jmp   n418_lit_string_α
                        .size            n417_var_ref_bx, .-n417_var_ref_bx
                        .type            n418_lit_string_bx, @function
n418_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_lit_string_α:      mov              r11, 254
                        mov              qword ptr [rbp + 5824], 2            # result
                        mov              dword ptr [rbp + 5828], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_576_0]
                        mov              qword ptr [rbp + 5832], rax;         jmp   n419_call_proc_staged_α
.Llit_string_α_576_0:   .quad            .Llit_string_α_576_0_s
.Llit_string_α_576_0_s: .string          "[]"
                        .size            n418_lit_string_bx, .-n418_lit_string_bx
                        .type            n419_call_proc_staged_bx, @function
n419_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_call_proc_staged_α:
                        mov              r11, 255
                        mov              qword ptr [rbp + 160], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_578_200
                        mov              rax, qword ptr [rbp + 5712]
                        mov              rdx, qword ptr [rbp + 5720]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_578_201
.Lcall_proc_staged_α_578_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 5712]
                        mov              rdx, qword ptr [rbp + 5720]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_578_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_578_202
                        mov              rax, qword ptr [rbp + 5808]
                        mov              rdx, qword ptr [rbp + 5816]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_578_203
.Lcall_proc_staged_α_578_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 5808]
                        mov              rdx, qword ptr [rbp + 5816]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_578_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_578_204
                        mov              rax, qword ptr [rbp + 5824]
                        mov              rdx, qword ptr [rbp + 5832]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_578_205
.Lcall_proc_staged_α_578_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 5824]
                        mov              rdx, qword ptr [rbp + 5832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_578_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_578_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_578_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_578_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_578_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_578_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_578_3:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_578_21
                        add              rsp, 32
.Lcall_proc_staged_α_578_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_578_2
.Lcall_proc_staged_α_578_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 160], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_578_2
.Lcall_proc_staged_α_578_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_578_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main$2F0_step
.Lcall_proc_staged_α_578_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_578_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 96]
                        mov              rdx, qword ptr [rbp + 104]
.Lcall_proc_staged_α_578_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n420_var_α
n419_call_proc_staged_β:
                        mov              r11, 255
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_578_22
                        mov              rax, qword ptr [rbp + 160]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_578_22
                        mov              rcx, qword ptr [rbp + 168]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_578_22:
                                                                              jmp   main$2F0_step
.Lcall_proc_staged_α_578_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n420_var_α
.Lcall_proc_staged_α_578_0:
                        .quad            .Lcall_proc_staged_α_578_0_s
.Lcall_proc_staged_α_578_0_s:
                        .string          "qsort/3"
                        .size            n419_call_proc_staged_bx, .-n419_call_proc_staged_bx
                        .type            n420_var_bx, @function
n420_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_var_α:             mov              r11, 256
                        mov              rax, qword ptr [rbp + 5840]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 5848]
                        mov              qword ptr [rbp + 88], rax;           jmp   n421_call_α
                        .size            n420_var_bx, .-n420_var_bx
                        .type            n421_call_bx, @function
n421_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_call_α:            mov              r11, 257
                        mov              rax, qword ptr [rbp + 80]
                        mov              qword ptr [rbp + 48], rax
                        mov              rax, qword ptr [rbp + 88]
                        mov              qword ptr [rbp + 56], rax
                        lea              rdi, [rbp + 48]
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_write@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    n419_call_proc_staged_β
                                                                              jmp   n422_call_α
n421_call_β:            mov              r11, 257;                            jmp   n419_call_proc_staged_β
                        .size            n421_call_bx, .-n421_call_bx
                        .type            n422_call_bx, @function
n422_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_call_α:            mov              r11, 258
                        lea              rdi, [rbp + 16]
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             dop_nl@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    n419_call_proc_staged_β
                                                                              jmp   main$2F0_ret0
n422_call_β:            mov              r11, 258;                            jmp   n419_call_proc_staged_β
                        .size            n422_call_bx, .-n422_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n419_call_proc_staged_β]
                        mov              qword ptr [rbp + 5888], rax
                                                                              jmp   main$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 5872]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5888], 0
                        mov              qword ptr [rbp + 5840], 0
                        mov              qword ptr [rbp + 5848], 0
                        mov              rax, qword ptr [rbp + 5880]
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
                        mov              rax, qword ptr [rbp + 5888]
                        mov              qword ptr [rbp + 5888], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 5912]
                        mov              rax, qword ptr [rbp + 5896]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 5928];         jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 5936]
                        mov              rbp, qword ptr [rbp + 5928];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 5920]
                        mov              r13, qword ptr [rbp + 5896]
                        lea              rsp, [rbp + 5936]
                        mov              rbp, qword ptr [rbp + 5928];         jmp   rcx
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
                        .type            n583_call_proc_staged_bx, @function
n583_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n583_call_proc_staged_α:
                        mov              r11, 259
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_585_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_585_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_585_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_585_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_585_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_585_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_585_21
                        add              rsp, 32
.Lcall_proc_staged_α_585_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_585_2
.Lcall_proc_staged_α_585_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_585_2
.Lcall_proc_staged_α_585_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_585_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_585_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_585_29
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
.Lcall_proc_staged_α_585_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n583_call_proc_staged_β:
                        mov              r11, 259
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_585_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_585_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_585_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_585_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_585_0:
                        .quad            .Lcall_proc_staged_α_585_0_s
.Lcall_proc_staged_α_585_0_s:
                        .string          "main/0"
                        .size            n583_call_proc_staged_bx, .-n583_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "partition/4"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__partition$2F4
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            4
                        .long            0
                        .long            2320
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "qsort/3"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__qsort$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1440
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "main/0"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__main$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            5856
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
