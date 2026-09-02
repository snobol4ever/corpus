                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__del$2F3:
                        sub              rsp, 1280
                        mov              qword ptr [rsp + 1256], rcx
                        mov              qword ptr [rsp + 1264], rdx
                        mov              qword ptr [rsp + 1272], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1240], r13
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1216], r12
                        lea              rax, [rip + del$2F3_alt1]
                        mov              qword ptr [rsp + 1224], rax
                        lea              rdi, [rsp + 1216]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1120
                        mov              edx, 1216
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
del$2F3_α_body:
                        .type            n0_var_ref_bx, @function
n0_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n0_var_ref_α:           mov              r11, 1
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n1_var_ref_α
                        .size            n0_var_ref_bx, .-n0_var_ref_bx
                        .type            n1_var_ref_bx, @function
n1_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1_var_ref_α:           mov              r11, 2
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n2_call_α
                        .size            n1_var_ref_bx, .-n1_var_ref_bx
                        .type            n2_call_bx, @function
n2_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n2_call_α:              mov              r11, 3
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
                        cmp              al, 104;                             je    del$2F3_step
                                                                              jmp   n3_var_ref_α
n2_call_β:              mov              r11, 3;                              jmp   del$2F3_step
                        .size            n2_call_bx, .-n2_call_bx
                        .type            n3_var_ref_bx, @function
n3_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n3_var_ref_α:           mov              r11, 4
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n4_lit_string_α
                        .size            n3_var_ref_bx, .-n3_var_ref_bx
                        .type            n4_lit_string_bx, @function
n4_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n4_lit_string_α:        mov              r11, 5
                        mov              qword ptr [rbp + 352], 2             # result
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_38_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n5_var_ref_α
.Llit_string_α_38_0:    .quad            .Llit_string_α_38_0_s
.Llit_string_α_38_0_s:  .string          "."
                        .size            n4_lit_string_bx, .-n4_lit_string_bx
                        .type            n5_var_ref_bx, @function
n5_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n5_var_ref_α:           mov              r11, 6
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n6_var_ref_α
                        .size            n5_var_ref_bx, .-n5_var_ref_bx
                        .type            n6_var_ref_bx, @function
n6_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n6_var_ref_α:           mov              r11, 7
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n7_call_α
                        .size            n6_var_ref_bx, .-n6_var_ref_bx
                        .type            n7_call_bx, @function
n7_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n7_call_α:              mov              r11, 8
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    del$2F3_step
                                                                              jmp   n8_call_α
n7_call_β:              mov              r11, 8;                              jmp   del$2F3_step
                        .size            n7_call_bx, .-n7_call_bx
                        .type            n8_call_bx, @function
n8_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n8_call_α:              mov              r11, 9
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    del$2F3_step
                                                                              jmp   n9_var_ref_α
n8_call_β:              mov              r11, 9;                              jmp   del$2F3_step
                        .size            n8_call_bx, .-n8_call_bx
                        .type            n9_var_ref_bx, @function
n9_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n9_var_ref_α:           mov              r11, 10
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n10_var_ref_α
                        .size            n9_var_ref_bx, .-n9_var_ref_bx
                        .type            n10_var_ref_bx, @function
n10_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n10_var_ref_α:          mov              r11, 11
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1120]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n11_call_α
                        .size            n10_var_ref_bx, .-n10_var_ref_bx
                        .type            n11_call_bx, @function
n11_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n11_call_α:             mov              r11, 12
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    del$2F3_step
                                                                              jmp   del$2F3_γ
n11_call_β:             mov              r11, 12;                             jmp   del$2F3_step
                        .size            n11_call_bx, .-n11_call_bx
                        .type            n12_var_ref_bx, @function
n12_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n12_var_ref_α:          mov              r11, 13
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n13_var_ref_α
                        .size            n12_var_ref_bx, .-n12_var_ref_bx
                        .type            n13_var_ref_bx, @function
n13_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n13_var_ref_α:          mov              r11, 14
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n14_call_α
                        .size            n13_var_ref_bx, .-n13_var_ref_bx
                        .type            n14_call_bx, @function
n14_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n14_call_α:             mov              r11, 15
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1064], rax
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1040], rax
                        mov              rax, qword ptr [rbp + 1096]
                        mov              qword ptr [rbp + 1048], rax
                        lea              rdi, [rbp + 1040]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx
                        cmp              al, 104;                             je    del$2F3_step
                                                                              jmp   n15_var_ref_α
n14_call_β:             mov              r11, 15;                             jmp   del$2F3_step
                        .size            n14_call_bx, .-n14_call_bx
                        .type            n15_var_ref_bx, @function
n15_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n15_var_ref_α:          mov              r11, 16
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n16_lit_string_α
                        .size            n15_var_ref_bx, .-n15_var_ref_bx
                        .type            n16_lit_string_bx, @function
n16_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n16_lit_string_α:       mov              r11, 17
                        mov              qword ptr [rbp + 1008], 2            # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_57_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n17_var_ref_α
.Llit_string_α_57_0:    .quad            .Llit_string_α_57_0_s
.Llit_string_α_57_0_s:  .string          "."
                        .size            n16_lit_string_bx, .-n16_lit_string_bx
                        .type            n17_var_ref_bx, @function
n17_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n17_var_ref_α:          mov              r11, 18
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n18_var_ref_α
                        .size            n17_var_ref_bx, .-n17_var_ref_bx
                        .type            n18_var_ref_bx, @function
n18_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n18_var_ref_α:          mov              r11, 19
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n19_call_α
                        .size            n18_var_ref_bx, .-n18_var_ref_bx
                        .type            n19_call_bx, @function
n19_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n19_call_α:             mov              r11, 20
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    del$2F3_step
                                                                              jmp   n20_call_α
n19_call_β:             mov              r11, 20;                             jmp   del$2F3_step
                        .size            n19_call_bx, .-n19_call_bx
                        .type            n20_call_bx, @function
n20_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n20_call_α:             mov              r11, 21
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    del$2F3_step
                                                                              jmp   n21_var_ref_α
n20_call_β:             mov              r11, 21;                             jmp   del$2F3_step
                        .size            n20_call_bx, .-n20_call_bx
                        .type            n21_var_ref_bx, @function
n21_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n21_var_ref_α:          mov              r11, 22
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n22_lit_string_α
                        .size            n21_var_ref_bx, .-n21_var_ref_bx
                        .type            n22_lit_string_bx, @function
n22_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n22_lit_string_α:       mov              r11, 23
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_66_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n23_var_ref_α
.Llit_string_α_66_0:    .quad            .Llit_string_α_66_0_s
.Llit_string_α_66_0_s:  .string          "."
                        .size            n22_lit_string_bx, .-n22_lit_string_bx
                        .type            n23_var_ref_bx, @function
n23_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n23_var_ref_α:          mov              r11, 24
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx;          jmp   n24_var_ref_α
                        .size            n23_var_ref_bx, .-n23_var_ref_bx
                        .type            n24_var_ref_bx, @function
n24_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n24_var_ref_α:          mov              r11, 25
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n25_call_α
                        .size            n24_var_ref_bx, .-n24_var_ref_bx
                        .type            n25_call_bx, @function
n25_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n25_call_α:             mov              r11, 26
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 744], rax
                        lea              rdi, [rbp + 736]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 720], rax
                        mov              qword ptr [rbp + 728], rdx
                        cmp              al, 104;                             je    del$2F3_step
                                                                              jmp   n26_call_α
n25_call_β:             mov              r11, 26;                             jmp   del$2F3_step
                        .size            n25_call_bx, .-n25_call_bx
                        .type            n26_call_bx, @function
n26_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n26_call_α:             mov              r11, 27
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    del$2F3_step
                                                                              jmp   n27_var_ref_α
n26_call_β:             mov              r11, 27;                             jmp   del$2F3_step
                        .size            n26_call_bx, .-n26_call_bx
                        .type            n27_var_ref_bx, @function
n27_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n27_var_ref_α:          mov              r11, 28
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1136]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n28_var_ref_α
                        .size            n27_var_ref_bx, .-n27_var_ref_bx
                        .type            n28_var_ref_bx, @function
n28_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n28_var_ref_α:          mov              r11, 29
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1152]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n29_var_ref_α
                        .size            n28_var_ref_bx, .-n28_var_ref_bx
                        .type            n29_var_ref_bx, @function
n29_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n29_var_ref_α:          mov              r11, 30
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1168]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n30_call_proc_staged_α
                        .size            n29_var_ref_bx, .-n29_var_ref_bx
                        .type            n30_call_proc_staged_bx, @function
n30_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n30_call_proc_staged_α: mov              r11, 31
                        mov              qword ptr [rbp + 528], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_80_200
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_80_201
.Lcall_proc_staged_α_80_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_80_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_80_202
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_80_203
.Lcall_proc_staged_α_80_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_80_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_80_204
                        mov              rax, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_80_205
.Lcall_proc_staged_α_80_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 592]
                        mov              rdx, qword ptr [rbp + 600]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_80_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_80_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_80_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_80_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_80_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_80_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_80_3:
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_80_21
                        add              rsp, 32
.Lcall_proc_staged_α_80_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_80_2
.Lcall_proc_staged_α_80_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 528], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_80_2
.Lcall_proc_staged_α_80_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_80_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   del$2F3_step
.Lcall_proc_staged_α_80_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_80_29
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
.Lcall_proc_staged_α_80_29:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    del$2F3_step
                                                                              jmp   del$2F3_ret1
n30_call_proc_staged_β: mov              r11, 31
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_80_22
                        mov              rax, qword ptr [rbp + 528]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_80_22
                        mov              rcx, qword ptr [rbp + 536]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_80_22:
                                                                              jmp   del$2F3_step
.Lcall_proc_staged_α_80_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    del$2F3_step
                                                                              jmp   del$2F3_ret1
.Lcall_proc_staged_α_80_0:
                        .quad            .Lcall_proc_staged_α_80_0_s
.Lcall_proc_staged_α_80_0_s:
                        .string          "del/3"
                        .size            n30_call_proc_staged_bx, .-n30_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
del$2F3_ret1:
                        lea              rax, [rip + n30_call_proc_staged_β]
                        mov              qword ptr [rbp + 1232], rax
                                                                              jmp   del$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
del$2F3_step:
                        mov              rdi, qword ptr [rbp + 1216]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1232], 0
                        lea              rdi, [rbp + 64]
                        xor              eax, eax
                        mov              ecx, 96
                        rep              stosb
                        mov              rax, qword ptr [rbp + 1224]
                        test             rax, rax
                                                                              je    del$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
del$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1224], rax
                                                                              jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
del$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
del$2F3_β:
                        test             r15, r15
                                                                              jne   del$2F3_ω
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1232], 0
                        test             rax, rax
                                                                              jne   del$2F3_βres
                                                                              jmp   del$2F3_step
del$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
del$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              rax, qword ptr [rbp + 1240]
                        cmp              r13, rax;                            je    del$2F3_altdet
                        lea              rdx, [rip + del$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1272];         jmp   rcx
del$2F3_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 1280]
                        mov              rbp, qword ptr [rbp + 1272];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
del$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1264]
                        mov              r13, qword ptr [rbp + 1240]
                        lea              rsp, [rbp + 1280]
                        mov              rbp, qword ptr [rbp + 1272];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__el$2F2:
                        sub              rsp, 896
                        mov              qword ptr [rsp + 872], rcx
                        mov              qword ptr [rsp + 880], rdx
                        mov              qword ptr [rsp + 888], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 856], r13
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 832], r12
                        lea              rax, [rip + el$2F2_alt1]
                        mov              qword ptr [rsp + 840], rax
                        lea              rdi, [rsp + 832]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 768
                        mov              edx, 832
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
el$2F2_α_body:
                        .type            n81_var_ref_bx, @function
n81_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n82_var_ref_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n83_call_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_call_bx, @function
n83_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             mov              r11, 34
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    el$2F2_step
                                                                              jmp   n84_var_ref_α
n83_call_β:             mov              r11, 34;                             jmp   el$2F2_step
                        .size            n83_call_bx, .-n83_call_bx
                        .type            n84_var_ref_bx, @function
n84_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_var_ref_α:          mov              r11, 35
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n85_lit_string_α
                        .size            n84_var_ref_bx, .-n84_var_ref_bx
                        .type            n85_lit_string_bx, @function
n85_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_string_α:       mov              r11, 36
                        mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_109_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n86_var_ref_α
.Llit_string_α_109_0:   .quad            .Llit_string_α_109_0_s
.Llit_string_α_109_0_s: .string          "."
                        .size            n85_lit_string_bx, .-n85_lit_string_bx
                        .type            n86_var_ref_bx, @function
n86_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_var_ref_α:          mov              r11, 37
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n87_var_ref_α
                        .size            n86_var_ref_bx, .-n86_var_ref_bx
                        .type            n87_var_ref_bx, @function
n87_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_var_ref_α:          mov              r11, 38
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n88_call_α
                        .size            n87_var_ref_bx, .-n87_var_ref_bx
                        .type            n88_call_bx, @function
n88_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_call_α:             mov              r11, 39
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    el$2F2_step
                                                                              jmp   n89_call_α
n88_call_β:             mov              r11, 39;                             jmp   el$2F2_step
                        .size            n88_call_bx, .-n88_call_bx
                        .type            n89_call_bx, @function
n89_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_call_α:             mov              r11, 40
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    el$2F2_step
                                                                              jmp   el$2F2_γ
n89_call_β:             mov              r11, 40;                             jmp   el$2F2_step
                        .size            n89_call_bx, .-n89_call_bx
                        .type            n90_var_ref_bx, @function
n90_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_var_ref_α:          mov              r11, 41
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n91_var_ref_α
                        .size            n90_var_ref_bx, .-n90_var_ref_bx
                        .type            n91_var_ref_bx, @function
n91_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_var_ref_α:          mov              r11, 42
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx;          jmp   n92_call_α
                        .size            n91_var_ref_bx, .-n91_var_ref_bx
                        .type            n92_call_bx, @function
n92_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_call_α:             mov              r11, 43
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 712], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 696], rax
                        lea              rdi, [rbp + 688]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    el$2F2_step
                                                                              jmp   n93_var_ref_α
n92_call_β:             mov              r11, 43;                             jmp   el$2F2_step
                        .size            n92_call_bx, .-n92_call_bx
                        .type            n93_var_ref_bx, @function
n93_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_var_ref_α:          mov              r11, 44
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n94_lit_string_α
                        .size            n93_var_ref_bx, .-n93_var_ref_bx
                        .type            n94_lit_string_bx, @function
n94_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_123_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n95_var_ref_α
.Llit_string_α_123_0:   .quad            .Llit_string_α_123_0_s
.Llit_string_α_123_0_s: .string          "."
                        .size            n94_lit_string_bx, .-n94_lit_string_bx
                        .type            n95_var_ref_bx, @function
n95_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_var_ref_α:          mov              r11, 46
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n96_var_ref_α
                        .size            n95_var_ref_bx, .-n95_var_ref_bx
                        .type            n96_var_ref_bx, @function
n96_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_var_ref_α:          mov              r11, 47
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n97_call_α
                        .size            n96_var_ref_bx, .-n96_var_ref_bx
                        .type            n97_call_bx, @function
n97_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_call_α:             mov              r11, 48
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    el$2F2_step
                                                                              jmp   n98_call_α
n97_call_β:             mov              r11, 48;                             jmp   el$2F2_step
                        .size            n97_call_bx, .-n97_call_bx
                        .type            n98_call_bx, @function
n98_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_call_α:             mov              r11, 49
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 584]
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
                        cmp              al, 104;                             je    el$2F2_step
                                                                              jmp   n99_var_ref_α
n98_call_β:             mov              r11, 49;                             jmp   el$2F2_step
                        .size            n98_call_bx, .-n98_call_bx
                        .type            n99_var_ref_bx, @function
n99_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_var_ref_α:          mov              r11, 50
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n100_var_ref_α
                        .size            n99_var_ref_bx, .-n99_var_ref_bx
                        .type            n100_var_ref_bx, @function
n100_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_var_ref_α:         mov              r11, 51
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n101_call_proc_staged_α
                        .size            n100_var_ref_bx, .-n100_var_ref_bx
                        .type            n101_call_proc_staged_bx, @function
n101_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_call_proc_staged_α:
                        mov              r11, 52
                        mov              qword ptr [rbp + 400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_135_200
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_135_201
.Lcall_proc_staged_α_135_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_135_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_135_202
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_135_203
.Lcall_proc_staged_α_135_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_135_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_135_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_135_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_135_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_135_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_135_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_135_3:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_135_21
                        add              rsp, 32
.Lcall_proc_staged_α_135_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_135_2
.Lcall_proc_staged_α_135_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 400], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_135_2
.Lcall_proc_staged_α_135_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_135_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   el$2F2_step
.Lcall_proc_staged_α_135_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_135_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
.Lcall_proc_staged_α_135_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    el$2F2_step
                                                                              jmp   el$2F2_ret1
n101_call_proc_staged_β:
                        mov              r11, 52
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_135_22
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_135_22
                        mov              rcx, qword ptr [rbp + 408]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_135_22:
                                                                              jmp   el$2F2_step
.Lcall_proc_staged_α_135_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    el$2F2_step
                                                                              jmp   el$2F2_ret1
.Lcall_proc_staged_α_135_0:
                        .quad            .Lcall_proc_staged_α_135_0_s
.Lcall_proc_staged_α_135_0_s:
                        .string          "el/2"
                        .size            n101_call_proc_staged_bx, .-n101_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
el$2F2_ret1:
                        lea              rax, [rip + n101_call_proc_staged_β]
                        mov              qword ptr [rbp + 848], rax
                                                                              jmp   el$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
el$2F2_step:
                        mov              rdi, qword ptr [rbp + 832]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 848], 0
                        lea              rdi, [rbp + 48]
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rax, qword ptr [rbp + 840]
                        test             rax, rax
                                                                              je    el$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
el$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 840], rax
                                                                              jmp   n90_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
el$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
el$2F2_β:
                        test             r15, r15
                                                                              jne   el$2F2_ω
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 848], 0
                        test             rax, rax
                                                                              jne   el$2F2_βres
                                                                              jmp   el$2F2_step
el$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
el$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 872]
                        mov              rax, qword ptr [rbp + 856]
                        cmp              r13, rax;                            je    el$2F2_altdet
                        lea              rdx, [rip + el$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 888];          jmp   rcx
el$2F2_altdet:          xor              eax, eax
                        lea              rsp, [rbp + 896]
                        mov              rbp, qword ptr [rbp + 888];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
el$2F2_ω:
                        mov              rcx, qword ptr [rbp + 880]
                        mov              r13, qword ptr [rbp + 856]
                        lea              rsp, [rbp + 896]
                        mov              rbp, qword ptr [rbp + 888];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__connect$2F2:
                        sub              rsp, 10688
                        mov              qword ptr [rsp + 10664], rcx
                        mov              qword ptr [rsp + 10672], rdx
                        mov              qword ptr [rsp + 10680], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 10648], r13
                        mov              qword ptr [rsp + 10640], 0
                        mov              qword ptr [rsp + 10632], 0
                        mov              qword ptr [rsp + 10624], r12
                        lea              rax, [rip + connect$2F2_alt1]
                        mov              qword ptr [rsp + 10632], rax
                        lea              rdi, [rsp + 10624]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 10608
                        mov              edx, 10624
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
connect$2F2_α_body:
                        .type            n136_var_ref_bx, @function
n136_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n136_var_ref_α:         mov              r11, 53
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n137_lit_string_α
                        .size            n136_var_ref_bx, .-n136_var_ref_bx
                        .type            n137_lit_string_bx, @function
n137_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n137_lit_string_α:      mov              r11, 54
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_438_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n138_call_α
.Llit_string_α_438_0:   .quad            .Llit_string_α_438_0_s
.Llit_string_α_438_0_s: .string          "a"
                        .size            n137_lit_string_bx, .-n137_lit_string_bx
                        .type            n138_call_bx, @function
n138_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n138_call_α:            mov              r11, 55
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 552]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              rsi, qword ptr [rip + .Lcall_α_439_2]
                                                                              jmp   .Lcall_α_439_3
.Lcall_α_439_2:         .quad            .Lcall_α_439_2_s
.Lcall_α_439_2_s:       .string          "a"
.Lcall_α_439_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n139_var_ref_α
n138_call_β:            mov              r11, 55;                             jmp   connect$2F2_step
                        .size            n138_call_bx, .-n138_call_bx
                        .type            n139_var_ref_bx, @function
n139_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n139_var_ref_α:         mov              r11, 56
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n140_lit_string_α
                        .size            n139_var_ref_bx, .-n139_var_ref_bx
                        .type            n140_lit_string_bx, @function
n140_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n140_lit_string_α:      mov              r11, 57
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_442_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n141_lit_string_α
.Llit_string_α_442_0:   .quad            .Llit_string_α_442_0_s
.Llit_string_α_442_0_s: .string          "."
                        .size            n140_lit_string_bx, .-n140_lit_string_bx
                        .type            n141_lit_string_bx, @function
n141_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n141_lit_string_α:      mov              r11, 58
                        mov              qword ptr [rbp + 368], 2             # result
                        mov              dword ptr [rbp + 372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_443_0]
                        mov              qword ptr [rbp + 376], rax;          jmp   n142_lit_string_α
.Llit_string_α_443_0:   .quad            .Llit_string_α_443_0_s
.Llit_string_α_443_0_s: .string          "b"
                        .size            n141_lit_string_bx, .-n141_lit_string_bx
                        .type            n142_lit_string_bx, @function
n142_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n142_lit_string_α:      mov              r11, 59
                        mov              qword ptr [rbp + 352], 2             # result
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_444_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n143_lit_string_α
.Llit_string_α_444_0:   .quad            .Llit_string_α_444_0_s
.Llit_string_α_444_0_s: .string          "."
                        .size            n142_lit_string_bx, .-n142_lit_string_bx
                        .type            n143_lit_string_bx, @function
n143_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n143_lit_string_α:      mov              r11, 60
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_445_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n144_lit_string_α
.Llit_string_α_445_0:   .quad            .Llit_string_α_445_0_s
.Llit_string_α_445_0_s: .string          "j"
                        .size            n143_lit_string_bx, .-n143_lit_string_bx
                        .type            n144_lit_string_bx, @function
n144_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n144_lit_string_α:      mov              r11, 61
                        mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_446_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n145_lit_string_α
.Llit_string_α_446_0:   .quad            .Llit_string_α_446_0_s
.Llit_string_α_446_0_s: .string          "."
                        .size            n144_lit_string_bx, .-n144_lit_string_bx
                        .type            n145_lit_string_bx, @function
n145_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n145_lit_string_α:      mov              r11, 62
                        mov              qword ptr [rbp + 144], 2             # result
                        mov              dword ptr [rbp + 148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_447_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n146_lit_string_α
.Llit_string_α_447_0:   .quad            .Llit_string_α_447_0_s
.Llit_string_α_447_0_s: .string          "k"
                        .size            n145_lit_string_bx, .-n145_lit_string_bx
                        .type            n146_lit_string_bx, @function
n146_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n146_lit_string_α:      mov              r11, 63
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_448_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n147_call_α
.Llit_string_α_448_0:   .quad            .Llit_string_α_448_0_s
.Llit_string_α_448_0_s: .string          "[]"
                        .size            n146_lit_string_bx, .-n146_lit_string_bx
                        .type            n147_call_bx, @function
n147_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n147_call_α:            mov              r11, 64
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n148_call_α
n147_call_β:            mov              r11, 64;                             jmp   connect$2F2_ω
                        .size            n147_call_bx, .-n147_call_bx
                        .type            n148_call_bx, @function
n148_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n148_call_α:            mov              r11, 65
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 296], rax
                        lea              rdi, [rbp + 288]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n149_call_α
n148_call_β:            mov              r11, 65;                             jmp   connect$2F2_ω
                        .size            n148_call_bx, .-n148_call_bx
                        .type            n149_call_bx, @function
n149_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n149_call_α:            mov              r11, 66
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 440], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 408], rax
                        lea              rdi, [rbp + 400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n150_call_α
n149_call_β:            mov              r11, 66;                             jmp   connect$2F2_step
                        .size            n149_call_bx, .-n149_call_bx
                        .type            n150_call_bx, @function
n150_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n150_call_α:            mov              r11, 67
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 88], rax
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n150_call_β:            mov              r11, 67;                             jmp   connect$2F2_step
                        .size            n150_call_bx, .-n150_call_bx
                        .type            n151_var_ref_bx, @function
n151_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n151_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n152_lit_string_α
                        .size            n151_var_ref_bx, .-n151_var_ref_bx
                        .type            n152_lit_string_bx, @function
n152_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n152_lit_string_α:      mov              r11, 69
                        mov              qword ptr [rbp + 1088], 2            # result
                        mov              dword ptr [rbp + 1092], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_455_0]
                        mov              qword ptr [rbp + 1096], rax;         jmp   n153_call_α
.Llit_string_α_455_0:   .quad            .Llit_string_α_455_0_s
.Llit_string_α_455_0_s: .string          "b"
                        .size            n152_lit_string_bx, .-n152_lit_string_bx
                        .type            n153_call_bx, @function
n153_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n153_call_α:            mov              r11, 70
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1024], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1032], rax
                        lea              rdi, [rbp + 1024]
                        mov              rsi, qword ptr [rip + .Lcall_α_456_2]
                                                                              jmp   .Lcall_α_456_3
.Lcall_α_456_2:         .quad            .Lcall_α_456_2_s
.Lcall_α_456_2_s:       .string          "b"
.Lcall_α_456_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1008], rax
                        mov              qword ptr [rbp + 1016], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n154_var_ref_α
n153_call_β:            mov              r11, 70;                             jmp   connect$2F2_step
                        .size            n153_call_bx, .-n153_call_bx
                        .type            n154_var_ref_bx, @function
n154_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n154_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n155_lit_string_α
                        .size            n154_var_ref_bx, .-n154_var_ref_bx
                        .type            n155_lit_string_bx, @function
n155_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n155_lit_string_α:      mov              r11, 72
                        mov              qword ptr [rbp + 992], 2             # result
                        mov              dword ptr [rbp + 996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_459_0]
                        mov              qword ptr [rbp + 1000], rax;         jmp   n156_lit_string_α
.Llit_string_α_459_0:   .quad            .Llit_string_α_459_0_s
.Llit_string_α_459_0_s: .string          "."
                        .size            n155_lit_string_bx, .-n155_lit_string_bx
                        .type            n156_lit_string_bx, @function
n156_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n156_lit_string_α:      mov              r11, 73
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_460_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n157_lit_string_α
.Llit_string_α_460_0:   .quad            .Llit_string_α_460_0_s
.Llit_string_α_460_0_s: .string          "a"
                        .size            n156_lit_string_bx, .-n156_lit_string_bx
                        .type            n157_lit_string_bx, @function
n157_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_lit_string_α:      mov              r11, 74
                        mov              qword ptr [rbp + 880], 2             # result
                        mov              dword ptr [rbp + 884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_461_0]
                        mov              qword ptr [rbp + 888], rax;          jmp   n158_lit_string_α
.Llit_string_α_461_0:   .quad            .Llit_string_α_461_0_s
.Llit_string_α_461_0_s: .string          "."
                        .size            n157_lit_string_bx, .-n157_lit_string_bx
                        .type            n158_lit_string_bx, @function
n158_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_462_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n159_lit_string_α
.Llit_string_α_462_0:   .quad            .Llit_string_α_462_0_s
.Llit_string_α_462_0_s: .string          "c"
                        .size            n158_lit_string_bx, .-n158_lit_string_bx
                        .type            n159_lit_string_bx, @function
n159_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_lit_string_α:      mov              r11, 76
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_463_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n160_lit_string_α
.Llit_string_α_463_0:   .quad            .Llit_string_α_463_0_s
.Llit_string_α_463_0_s: .string          "."
                        .size            n159_lit_string_bx, .-n159_lit_string_bx
                        .type            n160_lit_string_bx, @function
n160_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_lit_string_α:      mov              r11, 77
                        mov              qword ptr [rbp + 672], 2             # result
                        mov              dword ptr [rbp + 676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_464_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n161_lit_string_α
.Llit_string_α_464_0:   .quad            .Llit_string_α_464_0_s
.Llit_string_α_464_0_s: .string          "p"
                        .size            n160_lit_string_bx, .-n160_lit_string_bx
                        .type            n161_lit_string_bx, @function
n161_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_lit_string_α:      mov              r11, 78
                        mov              qword ptr [rbp + 656], 2             # result
                        mov              dword ptr [rbp + 660], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_465_0]
                        mov              qword ptr [rbp + 664], rax;          jmp   n162_call_α
.Llit_string_α_465_0:   .quad            .Llit_string_α_465_0_s
.Llit_string_α_465_0_s: .string          "[]"
                        .size            n161_lit_string_bx, .-n161_lit_string_bx
                        .type            n162_call_bx, @function
n162_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_call_α:            mov              r11, 79
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 728], rax
                        mov              rax, qword ptr [rbp + 768]
                        mov              qword ptr [rbp + 704], rax
                        mov              rax, qword ptr [rbp + 776]
                        mov              qword ptr [rbp + 712], rax
                        lea              rdi, [rbp + 704]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n163_call_α
n162_call_β:            mov              r11, 79;                             jmp   connect$2F2_ω
                        .size            n162_call_bx, .-n162_call_bx
                        .type            n163_call_bx, @function
n163_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_call_α:            mov              r11, 80
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 840], rax
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 824], rax
                        lea              rdi, [rbp + 816]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n164_call_α
n163_call_β:            mov              r11, 80;                             jmp   connect$2F2_ω
                        .size            n163_call_bx, .-n163_call_bx
                        .type            n164_call_bx, @function
n164_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_call_α:            mov              r11, 81
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 952], rax
                        mov              rax, qword ptr [rbp + 992]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 1000]
                        mov              qword ptr [rbp + 936], rax
                        lea              rdi, [rbp + 928]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n165_call_α
n164_call_β:            mov              r11, 81;                             jmp   connect$2F2_step
                        .size            n164_call_bx, .-n164_call_bx
                        .type            n165_call_bx, @function
n165_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_call_α:            mov              r11, 82
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 616], rax
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 600], rax
                        lea              rdi, [rbp + 592]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n165_call_β:            mov              r11, 82;                             jmp   connect$2F2_step
                        .size            n165_call_bx, .-n165_call_bx
                        .type            n166_var_ref_bx, @function
n166_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx;         jmp   n167_lit_string_α
                        .size            n166_var_ref_bx, .-n166_var_ref_bx
                        .type            n167_lit_string_bx, @function
n167_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_lit_string_α:      mov              r11, 84
                        mov              qword ptr [rbp + 1616], 2            # result
                        mov              dword ptr [rbp + 1620], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_472_0]
                        mov              qword ptr [rbp + 1624], rax;         jmp   n168_call_α
.Llit_string_α_472_0:   .quad            .Llit_string_α_472_0_s
.Llit_string_α_472_0_s: .string          "c"
                        .size            n167_lit_string_bx, .-n167_lit_string_bx
                        .type            n168_call_bx, @function
n168_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            mov              r11, 85
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1560], rax
                        lea              rdi, [rbp + 1552]
                        mov              rsi, qword ptr [rip + .Lcall_α_473_2]
                                                                              jmp   .Lcall_α_473_3
.Lcall_α_473_2:         .quad            .Lcall_α_473_2_s
.Lcall_α_473_2_s:       .string          "c"
.Lcall_α_473_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1536], rax
                        mov              qword ptr [rbp + 1544], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n169_var_ref_α
n168_call_β:            mov              r11, 85;                             jmp   connect$2F2_step
                        .size            n168_call_bx, .-n168_call_bx
                        .type            n169_var_ref_bx, @function
n169_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n170_lit_string_α
                        .size            n169_var_ref_bx, .-n169_var_ref_bx
                        .type            n170_lit_string_bx, @function
n170_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_lit_string_α:      mov              r11, 87
                        mov              qword ptr [rbp + 1520], 2            # result
                        mov              dword ptr [rbp + 1524], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_476_0]
                        mov              qword ptr [rbp + 1528], rax;         jmp   n171_lit_string_α
.Llit_string_α_476_0:   .quad            .Llit_string_α_476_0_s
.Llit_string_α_476_0_s: .string          "."
                        .size            n170_lit_string_bx, .-n170_lit_string_bx
                        .type            n171_lit_string_bx, @function
n171_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_lit_string_α:      mov              r11, 88
                        mov              qword ptr [rbp + 1424], 2            # result
                        mov              dword ptr [rbp + 1428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_477_0]
                        mov              qword ptr [rbp + 1432], rax;         jmp   n172_lit_string_α
.Llit_string_α_477_0:   .quad            .Llit_string_α_477_0_s
.Llit_string_α_477_0_s: .string          "b"
                        .size            n171_lit_string_bx, .-n171_lit_string_bx
                        .type            n172_lit_string_bx, @function
n172_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_lit_string_α:      mov              r11, 89
                        mov              qword ptr [rbp + 1408], 2            # result
                        mov              dword ptr [rbp + 1412], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_478_0]
                        mov              qword ptr [rbp + 1416], rax;         jmp   n173_lit_string_α
.Llit_string_α_478_0:   .quad            .Llit_string_α_478_0_s
.Llit_string_α_478_0_s: .string          "."
                        .size            n172_lit_string_bx, .-n172_lit_string_bx
                        .type            n173_lit_string_bx, @function
n173_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_lit_string_α:      mov              r11, 90
                        mov              qword ptr [rbp + 1312], 2            # result
                        mov              dword ptr [rbp + 1316], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_479_0]
                        mov              qword ptr [rbp + 1320], rax;         jmp   n174_lit_string_α
.Llit_string_α_479_0:   .quad            .Llit_string_α_479_0_s
.Llit_string_α_479_0_s: .string          "d"
                        .size            n173_lit_string_bx, .-n173_lit_string_bx
                        .type            n174_lit_string_bx, @function
n174_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_lit_string_α:      mov              r11, 91
                        mov              qword ptr [rbp + 1296], 2            # result
                        mov              dword ptr [rbp + 1300], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_480_0]
                        mov              qword ptr [rbp + 1304], rax;         jmp   n175_lit_string_α
.Llit_string_α_480_0:   .quad            .Llit_string_α_480_0_s
.Llit_string_α_480_0_s: .string          "."
                        .size            n174_lit_string_bx, .-n174_lit_string_bx
                        .type            n175_lit_string_bx, @function
n175_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_lit_string_α:      mov              r11, 92
                        mov              qword ptr [rbp + 1200], 2            # result
                        mov              dword ptr [rbp + 1204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_481_0]
                        mov              qword ptr [rbp + 1208], rax;         jmp   n176_lit_string_α
.Llit_string_α_481_0:   .quad            .Llit_string_α_481_0_s
.Llit_string_α_481_0_s: .string          "l"
                        .size            n175_lit_string_bx, .-n175_lit_string_bx
                        .type            n176_lit_string_bx, @function
n176_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_lit_string_α:      mov              r11, 93
                        mov              qword ptr [rbp + 1184], 2            # result
                        mov              dword ptr [rbp + 1188], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_482_0]
                        mov              qword ptr [rbp + 1192], rax;         jmp   n177_call_α
.Llit_string_α_482_0:   .quad            .Llit_string_α_482_0_s
.Llit_string_α_482_0_s: .string          "[]"
                        .size            n176_lit_string_bx, .-n176_lit_string_bx
                        .type            n177_call_bx, @function
n177_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_call_α:            mov              r11, 94
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 1264], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 1272], rax
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 1248], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 1256], rax
                        mov              rax, qword ptr [rbp + 1296]
                        mov              qword ptr [rbp + 1232], rax
                        mov              rax, qword ptr [rbp + 1304]
                        mov              qword ptr [rbp + 1240], rax
                        lea              rdi, [rbp + 1232]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1216], rax
                        mov              qword ptr [rbp + 1224], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n178_call_α
n177_call_β:            mov              r11, 94;                             jmp   connect$2F2_ω
                        .size            n177_call_bx, .-n177_call_bx
                        .type            n178_call_bx, @function
n178_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n178_call_α:            mov              r11, 95
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1376], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1384], rax
                        mov              rax, qword ptr [rbp + 1312]
                        mov              qword ptr [rbp + 1360], rax
                        mov              rax, qword ptr [rbp + 1320]
                        mov              qword ptr [rbp + 1368], rax
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1344], rax
                        mov              rax, qword ptr [rbp + 1416]
                        mov              qword ptr [rbp + 1352], rax
                        lea              rdi, [rbp + 1344]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n179_call_α
n178_call_β:            mov              r11, 95;                             jmp   connect$2F2_ω
                        .size            n178_call_bx, .-n178_call_bx
                        .type            n179_call_bx, @function
n179_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n179_call_α:            mov              r11, 96
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1488], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1496], rax
                        mov              rax, qword ptr [rbp + 1424]
                        mov              qword ptr [rbp + 1472], rax
                        mov              rax, qword ptr [rbp + 1432]
                        mov              qword ptr [rbp + 1480], rax
                        mov              rax, qword ptr [rbp + 1520]
                        mov              qword ptr [rbp + 1456], rax
                        mov              rax, qword ptr [rbp + 1528]
                        mov              qword ptr [rbp + 1464], rax
                        lea              rdi, [rbp + 1456]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1440], rax
                        mov              qword ptr [rbp + 1448], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n180_call_α
n179_call_β:            mov              r11, 96;                             jmp   connect$2F2_step
                        .size            n179_call_bx, .-n179_call_bx
                        .type            n180_call_bx, @function
n180_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n180_call_α:            mov              r11, 97
                        mov              rax, qword ptr [rbp + 1440]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1448]
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
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n180_call_β:            mov              r11, 97;                             jmp   connect$2F2_step
                        .size            n180_call_bx, .-n180_call_bx
                        .type            n181_var_ref_bx, @function
n181_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n181_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2128], rax
                        mov              qword ptr [rbp + 2136], rdx;         jmp   n182_lit_string_α
                        .size            n181_var_ref_bx, .-n181_var_ref_bx
                        .type            n182_lit_string_bx, @function
n182_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n182_lit_string_α:      mov              r11, 99
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_489_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n183_call_α
.Llit_string_α_489_0:   .quad            .Llit_string_α_489_0_s
.Llit_string_α_489_0_s: .string          "d"
                        .size            n182_lit_string_bx, .-n182_lit_string_bx
                        .type            n183_call_bx, @function
n183_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n183_call_α:            mov              r11, 100
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2088], rax
                        lea              rdi, [rbp + 2080]
                        mov              rsi, qword ptr [rip + .Lcall_α_490_2]
                                                                              jmp   .Lcall_α_490_3
.Lcall_α_490_2:         .quad            .Lcall_α_490_2_s
.Lcall_α_490_2_s:       .string          "d"
.Lcall_α_490_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2064], rax
                        mov              qword ptr [rbp + 2072], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n184_var_ref_α
n183_call_β:            mov              r11, 100;                            jmp   connect$2F2_step
                        .size            n183_call_bx, .-n183_call_bx
                        .type            n184_var_ref_bx, @function
n184_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n184_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1696], rax
                        mov              qword ptr [rbp + 1704], rdx;         jmp   n185_lit_string_α
                        .size            n184_var_ref_bx, .-n184_var_ref_bx
                        .type            n185_lit_string_bx, @function
n185_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n185_lit_string_α:      mov              r11, 102
                        mov              qword ptr [rbp + 2048], 2            # result
                        mov              dword ptr [rbp + 2052], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_493_0]
                        mov              qword ptr [rbp + 2056], rax;         jmp   n186_lit_string_α
.Llit_string_α_493_0:   .quad            .Llit_string_α_493_0_s
.Llit_string_α_493_0_s: .string          "."
                        .size            n185_lit_string_bx, .-n185_lit_string_bx
                        .type            n186_lit_string_bx, @function
n186_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n186_lit_string_α:      mov              r11, 103
                        mov              qword ptr [rbp + 1952], 2            # result
                        mov              dword ptr [rbp + 1956], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_494_0]
                        mov              qword ptr [rbp + 1960], rax;         jmp   n187_lit_string_α
.Llit_string_α_494_0:   .quad            .Llit_string_α_494_0_s
.Llit_string_α_494_0_s: .string          "c"
                        .size            n186_lit_string_bx, .-n186_lit_string_bx
                        .type            n187_lit_string_bx, @function
n187_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n187_lit_string_α:      mov              r11, 104
                        mov              qword ptr [rbp + 1936], 2            # result
                        mov              dword ptr [rbp + 1940], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_495_0]
                        mov              qword ptr [rbp + 1944], rax;         jmp   n188_lit_string_α
.Llit_string_α_495_0:   .quad            .Llit_string_α_495_0_s
.Llit_string_α_495_0_s: .string          "."
                        .size            n187_lit_string_bx, .-n187_lit_string_bx
                        .type            n188_lit_string_bx, @function
n188_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n188_lit_string_α:      mov              r11, 105
                        mov              qword ptr [rbp + 1840], 2            # result
                        mov              dword ptr [rbp + 1844], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_496_0]
                        mov              qword ptr [rbp + 1848], rax;         jmp   n189_lit_string_α
.Llit_string_α_496_0:   .quad            .Llit_string_α_496_0_s
.Llit_string_α_496_0_s: .string          "e"
                        .size            n188_lit_string_bx, .-n188_lit_string_bx
                        .type            n189_lit_string_bx, @function
n189_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n189_lit_string_α:      mov              r11, 106
                        mov              qword ptr [rbp + 1824], 2            # result
                        mov              dword ptr [rbp + 1828], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_497_0]
                        mov              qword ptr [rbp + 1832], rax;         jmp   n190_lit_string_α
.Llit_string_α_497_0:   .quad            .Llit_string_α_497_0_s
.Llit_string_α_497_0_s: .string          "."
                        .size            n189_lit_string_bx, .-n189_lit_string_bx
                        .type            n190_lit_string_bx, @function
n190_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n190_lit_string_α:      mov              r11, 107
                        mov              qword ptr [rbp + 1728], 2            # result
                        mov              dword ptr [rbp + 1732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_498_0]
                        mov              qword ptr [rbp + 1736], rax;         jmp   n191_lit_string_α
.Llit_string_α_498_0:   .quad            .Llit_string_α_498_0_s
.Llit_string_α_498_0_s: .string          "q"
                        .size            n190_lit_string_bx, .-n190_lit_string_bx
                        .type            n191_lit_string_bx, @function
n191_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n191_lit_string_α:      mov              r11, 108
                        mov              qword ptr [rbp + 1712], 2            # result
                        mov              dword ptr [rbp + 1716], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_499_0]
                        mov              qword ptr [rbp + 1720], rax;         jmp   n192_call_α
.Llit_string_α_499_0:   .quad            .Llit_string_α_499_0_s
.Llit_string_α_499_0_s: .string          "[]"
                        .size            n191_lit_string_bx, .-n191_lit_string_bx
                        .type            n192_call_bx, @function
n192_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n192_call_α:            mov              r11, 109
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
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n193_call_α
n192_call_β:            mov              r11, 109;                            jmp   connect$2F2_ω
                        .size            n192_call_bx, .-n192_call_bx
                        .type            n193_call_bx, @function
n193_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n193_call_α:            mov              r11, 110
                        mov              rax, qword ptr [rbp + 1744]
                        mov              qword ptr [rbp + 1904], rax
                        mov              rax, qword ptr [rbp + 1752]
                        mov              qword ptr [rbp + 1912], rax
                        mov              rax, qword ptr [rbp + 1840]
                        mov              qword ptr [rbp + 1888], rax
                        mov              rax, qword ptr [rbp + 1848]
                        mov              qword ptr [rbp + 1896], rax
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 1880], rax
                        lea              rdi, [rbp + 1872]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1856], rax
                        mov              qword ptr [rbp + 1864], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n194_call_α
n193_call_β:            mov              r11, 110;                            jmp   connect$2F2_ω
                        .size            n193_call_bx, .-n193_call_bx
                        .type            n194_call_bx, @function
n194_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n194_call_α:            mov              r11, 111
                        mov              rax, qword ptr [rbp + 1856]
                        mov              qword ptr [rbp + 2016], rax
                        mov              rax, qword ptr [rbp + 1864]
                        mov              qword ptr [rbp + 2024], rax
                        mov              rax, qword ptr [rbp + 1952]
                        mov              qword ptr [rbp + 2000], rax
                        mov              rax, qword ptr [rbp + 1960]
                        mov              qword ptr [rbp + 2008], rax
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 1992], rax
                        lea              rdi, [rbp + 1984]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1968], rax
                        mov              qword ptr [rbp + 1976], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n195_call_α
n194_call_β:            mov              r11, 111;                            jmp   connect$2F2_step
                        .size            n194_call_bx, .-n194_call_bx
                        .type            n195_call_bx, @function
n195_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n195_call_α:            mov              r11, 112
                        mov              rax, qword ptr [rbp + 1968]
                        mov              qword ptr [rbp + 1664], rax
                        mov              rax, qword ptr [rbp + 1976]
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
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n195_call_β:            mov              r11, 112;                            jmp   connect$2F2_step
                        .size            n195_call_bx, .-n195_call_bx
                        .type            n196_var_ref_bx, @function
n196_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n196_var_ref_α:         mov              r11, 113
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2656], rax
                        mov              qword ptr [rbp + 2664], rdx;         jmp   n197_lit_string_α
                        .size            n196_var_ref_bx, .-n196_var_ref_bx
                        .type            n197_lit_string_bx, @function
n197_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n197_lit_string_α:      mov              r11, 114
                        mov              qword ptr [rbp + 2672], 2            # result
                        mov              dword ptr [rbp + 2676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_506_0]
                        mov              qword ptr [rbp + 2680], rax;         jmp   n198_call_α
.Llit_string_α_506_0:   .quad            .Llit_string_α_506_0_s
.Llit_string_α_506_0_s: .string          "e"
                        .size            n197_lit_string_bx, .-n197_lit_string_bx
                        .type            n198_call_bx, @function
n198_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n198_call_α:            mov              r11, 115
                        mov              rax, qword ptr [rbp + 2656]
                        mov              qword ptr [rbp + 2608], rax
                        mov              rax, qword ptr [rbp + 2664]
                        mov              qword ptr [rbp + 2616], rax
                        lea              rdi, [rbp + 2608]
                        mov              rsi, qword ptr [rip + .Lcall_α_507_2]
                                                                              jmp   .Lcall_α_507_3
.Lcall_α_507_2:         .quad            .Lcall_α_507_2_s
.Lcall_α_507_2_s:       .string          "e"
.Lcall_α_507_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2592], rax
                        mov              qword ptr [rbp + 2600], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n199_var_ref_α
n198_call_β:            mov              r11, 115;                            jmp   connect$2F2_step
                        .size            n198_call_bx, .-n198_call_bx
                        .type            n199_var_ref_bx, @function
n199_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n199_var_ref_α:         mov              r11, 116
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2224], rax
                        mov              qword ptr [rbp + 2232], rdx;         jmp   n200_lit_string_α
                        .size            n199_var_ref_bx, .-n199_var_ref_bx
                        .type            n200_lit_string_bx, @function
n200_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n200_lit_string_α:      mov              r11, 117
                        mov              qword ptr [rbp + 2576], 2            # result
                        mov              dword ptr [rbp + 2580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_510_0]
                        mov              qword ptr [rbp + 2584], rax;         jmp   n201_lit_string_α
.Llit_string_α_510_0:   .quad            .Llit_string_α_510_0_s
.Llit_string_α_510_0_s: .string          "."
                        .size            n200_lit_string_bx, .-n200_lit_string_bx
                        .type            n201_lit_string_bx, @function
n201_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n201_lit_string_α:      mov              r11, 118
                        mov              qword ptr [rbp + 2480], 2            # result
                        mov              dword ptr [rbp + 2484], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_511_0]
                        mov              qword ptr [rbp + 2488], rax;         jmp   n202_lit_string_α
.Llit_string_α_511_0:   .quad            .Llit_string_α_511_0_s
.Llit_string_α_511_0_s: .string          "d"
                        .size            n201_lit_string_bx, .-n201_lit_string_bx
                        .type            n202_lit_string_bx, @function
n202_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n202_lit_string_α:      mov              r11, 119
                        mov              qword ptr [rbp + 2464], 2            # result
                        mov              dword ptr [rbp + 2468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_512_0]
                        mov              qword ptr [rbp + 2472], rax;         jmp   n203_lit_string_α
.Llit_string_α_512_0:   .quad            .Llit_string_α_512_0_s
.Llit_string_α_512_0_s: .string          "."
                        .size            n202_lit_string_bx, .-n202_lit_string_bx
                        .type            n203_lit_string_bx, @function
n203_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n203_lit_string_α:      mov              r11, 120
                        mov              qword ptr [rbp + 2368], 2            # result
                        mov              dword ptr [rbp + 2372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_513_0]
                        mov              qword ptr [rbp + 2376], rax;         jmp   n204_lit_string_α
.Llit_string_α_513_0:   .quad            .Llit_string_α_513_0_s
.Llit_string_α_513_0_s: .string          "f"
                        .size            n203_lit_string_bx, .-n203_lit_string_bx
                        .type            n204_lit_string_bx, @function
n204_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n204_lit_string_α:      mov              r11, 121
                        mov              qword ptr [rbp + 2352], 2            # result
                        mov              dword ptr [rbp + 2356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_514_0]
                        mov              qword ptr [rbp + 2360], rax;         jmp   n205_lit_string_α
.Llit_string_α_514_0:   .quad            .Llit_string_α_514_0_s
.Llit_string_α_514_0_s: .string          "."
                        .size            n204_lit_string_bx, .-n204_lit_string_bx
                        .type            n205_lit_string_bx, @function
n205_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n205_lit_string_α:      mov              r11, 122
                        mov              qword ptr [rbp + 2256], 2            # result
                        mov              dword ptr [rbp + 2260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_515_0]
                        mov              qword ptr [rbp + 2264], rax;         jmp   n206_lit_string_α
.Llit_string_α_515_0:   .quad            .Llit_string_α_515_0_s
.Llit_string_α_515_0_s: .string          "m"
                        .size            n205_lit_string_bx, .-n205_lit_string_bx
                        .type            n206_lit_string_bx, @function
n206_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n206_lit_string_α:      mov              r11, 123
                        mov              qword ptr [rbp + 2240], 2            # result
                        mov              dword ptr [rbp + 2244], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_516_0]
                        mov              qword ptr [rbp + 2248], rax;         jmp   n207_call_α
.Llit_string_α_516_0:   .quad            .Llit_string_α_516_0_s
.Llit_string_α_516_0_s: .string          "[]"
                        .size            n206_lit_string_bx, .-n206_lit_string_bx
                        .type            n207_call_bx, @function
n207_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n207_call_α:            mov              r11, 124
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2328], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2288]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n208_call_α
n207_call_β:            mov              r11, 124;                            jmp   connect$2F2_ω
                        .size            n207_call_bx, .-n207_call_bx
                        .type            n208_call_bx, @function
n208_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n208_call_α:            mov              r11, 125
                        mov              rax, qword ptr [rbp + 2272]
                        mov              qword ptr [rbp + 2432], rax
                        mov              rax, qword ptr [rbp + 2280]
                        mov              qword ptr [rbp + 2440], rax
                        mov              rax, qword ptr [rbp + 2368]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2376]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2408], rax
                        lea              rdi, [rbp + 2400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n209_call_α
n208_call_β:            mov              r11, 125;                            jmp   connect$2F2_ω
                        .size            n208_call_bx, .-n208_call_bx
                        .type            n209_call_bx, @function
n209_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n209_call_α:            mov              r11, 126
                        mov              rax, qword ptr [rbp + 2384]
                        mov              qword ptr [rbp + 2544], rax
                        mov              rax, qword ptr [rbp + 2392]
                        mov              qword ptr [rbp + 2552], rax
                        mov              rax, qword ptr [rbp + 2480]
                        mov              qword ptr [rbp + 2528], rax
                        mov              rax, qword ptr [rbp + 2488]
                        mov              qword ptr [rbp + 2536], rax
                        mov              rax, qword ptr [rbp + 2576]
                        mov              qword ptr [rbp + 2512], rax
                        mov              rax, qword ptr [rbp + 2584]
                        mov              qword ptr [rbp + 2520], rax
                        lea              rdi, [rbp + 2512]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2496], rax
                        mov              qword ptr [rbp + 2504], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n210_call_α
n209_call_β:            mov              r11, 126;                            jmp   connect$2F2_step
                        .size            n209_call_bx, .-n209_call_bx
                        .type            n210_call_bx, @function
n210_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n210_call_α:            mov              r11, 127
                        mov              rax, qword ptr [rbp + 2496]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2504]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n210_call_β:            mov              r11, 127;                            jmp   connect$2F2_step
                        .size            n210_call_bx, .-n210_call_bx
                        .type            n211_var_ref_bx, @function
n211_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n211_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3184], rax
                        mov              qword ptr [rbp + 3192], rdx;         jmp   n212_lit_string_α
                        .size            n211_var_ref_bx, .-n211_var_ref_bx
                        .type            n212_lit_string_bx, @function
n212_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n212_lit_string_α:      mov              r11, 129
                        mov              qword ptr [rbp + 3200], 2            # result
                        mov              dword ptr [rbp + 3204], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_523_0]
                        mov              qword ptr [rbp + 3208], rax;         jmp   n213_call_α
.Llit_string_α_523_0:   .quad            .Llit_string_α_523_0_s
.Llit_string_α_523_0_s: .string          "f"
                        .size            n212_lit_string_bx, .-n212_lit_string_bx
                        .type            n213_call_bx, @function
n213_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_call_α:            mov              r11, 130
                        mov              rax, qword ptr [rbp + 3184]
                        mov              qword ptr [rbp + 3136], rax
                        mov              rax, qword ptr [rbp + 3192]
                        mov              qword ptr [rbp + 3144], rax
                        lea              rdi, [rbp + 3136]
                        mov              rsi, qword ptr [rip + .Lcall_α_524_2]
                                                                              jmp   .Lcall_α_524_3
.Lcall_α_524_2:         .quad            .Lcall_α_524_2_s
.Lcall_α_524_2_s:       .string          "f"
.Lcall_α_524_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3120], rax
                        mov              qword ptr [rbp + 3128], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n214_var_ref_α
n213_call_β:            mov              r11, 130;                            jmp   connect$2F2_step
                        .size            n213_call_bx, .-n213_call_bx
                        .type            n214_var_ref_bx, @function
n214_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 2752], rax
                        mov              qword ptr [rbp + 2760], rdx;         jmp   n215_lit_string_α
                        .size            n214_var_ref_bx, .-n214_var_ref_bx
                        .type            n215_lit_string_bx, @function
n215_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rbp + 3104], 2            # result
                        mov              dword ptr [rbp + 3108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_527_0]
                        mov              qword ptr [rbp + 3112], rax;         jmp   n216_lit_string_α
.Llit_string_α_527_0:   .quad            .Llit_string_α_527_0_s
.Llit_string_α_527_0_s: .string          "."
                        .size            n215_lit_string_bx, .-n215_lit_string_bx
                        .type            n216_lit_string_bx, @function
n216_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_lit_string_α:      mov              r11, 133
                        mov              qword ptr [rbp + 3008], 2            # result
                        mov              dword ptr [rbp + 3012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_528_0]
                        mov              qword ptr [rbp + 3016], rax;         jmp   n217_lit_string_α
.Llit_string_α_528_0:   .quad            .Llit_string_α_528_0_s
.Llit_string_α_528_0_s: .string          "e"
                        .size            n216_lit_string_bx, .-n216_lit_string_bx
                        .type            n217_lit_string_bx, @function
n217_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_lit_string_α:      mov              r11, 134
                        mov              qword ptr [rbp + 2992], 2            # result
                        mov              dword ptr [rbp + 2996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_529_0]
                        mov              qword ptr [rbp + 3000], rax;         jmp   n218_lit_string_α
.Llit_string_α_529_0:   .quad            .Llit_string_α_529_0_s
.Llit_string_α_529_0_s: .string          "."
                        .size            n217_lit_string_bx, .-n217_lit_string_bx
                        .type            n218_lit_string_bx, @function
n218_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_lit_string_α:      mov              r11, 135
                        mov              qword ptr [rbp + 2896], 2            # result
                        mov              dword ptr [rbp + 2900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_530_0]
                        mov              qword ptr [rbp + 2904], rax;         jmp   n219_lit_string_α
.Llit_string_α_530_0:   .quad            .Llit_string_α_530_0_s
.Llit_string_α_530_0_s: .string          "g"
                        .size            n218_lit_string_bx, .-n218_lit_string_bx
                        .type            n219_lit_string_bx, @function
n219_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_lit_string_α:      mov              r11, 136
                        mov              qword ptr [rbp + 2880], 2            # result
                        mov              dword ptr [rbp + 2884], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_531_0]
                        mov              qword ptr [rbp + 2888], rax;         jmp   n220_lit_string_α
.Llit_string_α_531_0:   .quad            .Llit_string_α_531_0_s
.Llit_string_α_531_0_s: .string          "."
                        .size            n219_lit_string_bx, .-n219_lit_string_bx
                        .type            n220_lit_string_bx, @function
n220_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      mov              r11, 137
                        mov              qword ptr [rbp + 2784], 2            # result
                        mov              dword ptr [rbp + 2788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_532_0]
                        mov              qword ptr [rbp + 2792], rax;         jmp   n221_lit_string_α
.Llit_string_α_532_0:   .quad            .Llit_string_α_532_0_s
.Llit_string_α_532_0_s: .string          "r"
                        .size            n220_lit_string_bx, .-n220_lit_string_bx
                        .type            n221_lit_string_bx, @function
n221_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_lit_string_α:      mov              r11, 138
                        mov              qword ptr [rbp + 2768], 2            # result
                        mov              dword ptr [rbp + 2772], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_533_0]
                        mov              qword ptr [rbp + 2776], rax;         jmp   n222_call_α
.Llit_string_α_533_0:   .quad            .Llit_string_α_533_0_s
.Llit_string_α_533_0_s: .string          "[]"
                        .size            n221_lit_string_bx, .-n221_lit_string_bx
                        .type            n222_call_bx, @function
n222_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_call_α:            mov              r11, 139
                        mov              rax, qword ptr [rbp + 2768]
                        mov              qword ptr [rbp + 2848], rax
                        mov              rax, qword ptr [rbp + 2776]
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
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n223_call_α
n222_call_β:            mov              r11, 139;                            jmp   connect$2F2_ω
                        .size            n222_call_bx, .-n222_call_bx
                        .type            n223_call_bx, @function
n223_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:            mov              r11, 140
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
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n224_call_α
n223_call_β:            mov              r11, 140;                            jmp   connect$2F2_ω
                        .size            n223_call_bx, .-n223_call_bx
                        .type            n224_call_bx, @function
n224_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:            mov              r11, 141
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
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n225_call_α
n224_call_β:            mov              r11, 141;                            jmp   connect$2F2_step
                        .size            n224_call_bx, .-n224_call_bx
                        .type            n225_call_bx, @function
n225_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_call_α:            mov              r11, 142
                        mov              rax, qword ptr [rbp + 3024]
                        mov              qword ptr [rbp + 2720], rax
                        mov              rax, qword ptr [rbp + 3032]
                        mov              qword ptr [rbp + 2728], rax
                        mov              rax, qword ptr [rbp + 2752]
                        mov              qword ptr [rbp + 2704], rax
                        mov              rax, qword ptr [rbp + 2760]
                        mov              qword ptr [rbp + 2712], rax
                        lea              rdi, [rbp + 2704]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2688], rax
                        mov              qword ptr [rbp + 2696], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n225_call_β:            mov              r11, 142;                            jmp   connect$2F2_step
                        .size            n225_call_bx, .-n225_call_bx
                        .type            n226_var_ref_bx, @function
n226_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_ref_α:         mov              r11, 143
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 3712], rax
                        mov              qword ptr [rbp + 3720], rdx;         jmp   n227_lit_string_α
                        .size            n226_var_ref_bx, .-n226_var_ref_bx
                        .type            n227_lit_string_bx, @function
n227_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_lit_string_α:      mov              r11, 144
                        mov              qword ptr [rbp + 3728], 2            # result
                        mov              dword ptr [rbp + 3732], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_540_0]
                        mov              qword ptr [rbp + 3736], rax;         jmp   n228_call_α
.Llit_string_α_540_0:   .quad            .Llit_string_α_540_0_s
.Llit_string_α_540_0_s: .string          "g"
                        .size            n227_lit_string_bx, .-n227_lit_string_bx
                        .type            n228_call_bx, @function
n228_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_call_α:            mov              r11, 145
                        mov              rax, qword ptr [rbp + 3712]
                        mov              qword ptr [rbp + 3664], rax
                        mov              rax, qword ptr [rbp + 3720]
                        mov              qword ptr [rbp + 3672], rax
                        lea              rdi, [rbp + 3664]
                        mov              rsi, qword ptr [rip + .Lcall_α_541_2]
                                                                              jmp   .Lcall_α_541_3
.Lcall_α_541_2:         .quad            .Lcall_α_541_2_s
.Lcall_α_541_2_s:       .string          "g"
.Lcall_α_541_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3648], rax
                        mov              qword ptr [rbp + 3656], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n229_var_ref_α
n228_call_β:            mov              r11, 145;                            jmp   connect$2F2_step
                        .size            n228_call_bx, .-n228_call_bx
                        .type            n229_var_ref_bx, @function
n229_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3280], rax
                        mov              qword ptr [rbp + 3288], rdx;         jmp   n230_lit_string_α
                        .size            n229_var_ref_bx, .-n229_var_ref_bx
                        .type            n230_lit_string_bx, @function
n230_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rbp + 3632], 2            # result
                        mov              dword ptr [rbp + 3636], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_544_0]
                        mov              qword ptr [rbp + 3640], rax;         jmp   n231_lit_string_α
.Llit_string_α_544_0:   .quad            .Llit_string_α_544_0_s
.Llit_string_α_544_0_s: .string          "."
                        .size            n230_lit_string_bx, .-n230_lit_string_bx
                        .type            n231_lit_string_bx, @function
n231_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_lit_string_α:      mov              r11, 148
                        mov              qword ptr [rbp + 3536], 2            # result
                        mov              dword ptr [rbp + 3540], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_545_0]
                        mov              qword ptr [rbp + 3544], rax;         jmp   n232_lit_string_α
.Llit_string_α_545_0:   .quad            .Llit_string_α_545_0_s
.Llit_string_α_545_0_s: .string          "f"
                        .size            n231_lit_string_bx, .-n231_lit_string_bx
                        .type            n232_lit_string_bx, @function
n232_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_lit_string_α:      mov              r11, 149
                        mov              qword ptr [rbp + 3520], 2            # result
                        mov              dword ptr [rbp + 3524], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_546_0]
                        mov              qword ptr [rbp + 3528], rax;         jmp   n233_lit_string_α
.Llit_string_α_546_0:   .quad            .Llit_string_α_546_0_s
.Llit_string_α_546_0_s: .string          "."
                        .size            n232_lit_string_bx, .-n232_lit_string_bx
                        .type            n233_lit_string_bx, @function
n233_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_lit_string_α:      mov              r11, 150
                        mov              qword ptr [rbp + 3424], 2            # result
                        mov              dword ptr [rbp + 3428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_547_0]
                        mov              qword ptr [rbp + 3432], rax;         jmp   n234_lit_string_α
.Llit_string_α_547_0:   .quad            .Llit_string_α_547_0_s
.Llit_string_α_547_0_s: .string          "h"
                        .size            n233_lit_string_bx, .-n233_lit_string_bx
                        .type            n234_lit_string_bx, @function
n234_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_lit_string_α:      mov              r11, 151
                        mov              qword ptr [rbp + 3408], 2            # result
                        mov              dword ptr [rbp + 3412], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_548_0]
                        mov              qword ptr [rbp + 3416], rax;         jmp   n235_lit_string_α
.Llit_string_α_548_0:   .quad            .Llit_string_α_548_0_s
.Llit_string_α_548_0_s: .string          "."
                        .size            n234_lit_string_bx, .-n234_lit_string_bx
                        .type            n235_lit_string_bx, @function
n235_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_lit_string_α:      mov              r11, 152
                        mov              qword ptr [rbp + 3312], 2            # result
                        mov              dword ptr [rbp + 3316], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_549_0]
                        mov              qword ptr [rbp + 3320], rax;         jmp   n236_lit_string_α
.Llit_string_α_549_0:   .quad            .Llit_string_α_549_0_s
.Llit_string_α_549_0_s: .string          "n"
                        .size            n235_lit_string_bx, .-n235_lit_string_bx
                        .type            n236_lit_string_bx, @function
n236_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_lit_string_α:      mov              r11, 153
                        mov              qword ptr [rbp + 3296], 2            # result
                        mov              dword ptr [rbp + 3300], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_550_0]
                        mov              qword ptr [rbp + 3304], rax;         jmp   n237_call_α
.Llit_string_α_550_0:   .quad            .Llit_string_α_550_0_s
.Llit_string_α_550_0_s: .string          "[]"
                        .size            n236_lit_string_bx, .-n236_lit_string_bx
                        .type            n237_call_bx, @function
n237_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:            mov              r11, 154
                        mov              rax, qword ptr [rbp + 3296]
                        mov              qword ptr [rbp + 3376], rax
                        mov              rax, qword ptr [rbp + 3304]
                        mov              qword ptr [rbp + 3384], rax
                        mov              rax, qword ptr [rbp + 3312]
                        mov              qword ptr [rbp + 3360], rax
                        mov              rax, qword ptr [rbp + 3320]
                        mov              qword ptr [rbp + 3368], rax
                        mov              rax, qword ptr [rbp + 3408]
                        mov              qword ptr [rbp + 3344], rax
                        mov              rax, qword ptr [rbp + 3416]
                        mov              qword ptr [rbp + 3352], rax
                        lea              rdi, [rbp + 3344]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3328], rax
                        mov              qword ptr [rbp + 3336], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n238_call_α
n237_call_β:            mov              r11, 154;                            jmp   connect$2F2_ω
                        .size            n237_call_bx, .-n237_call_bx
                        .type            n238_call_bx, @function
n238_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_call_α:            mov              r11, 155
                        mov              rax, qword ptr [rbp + 3328]
                        mov              qword ptr [rbp + 3488], rax
                        mov              rax, qword ptr [rbp + 3336]
                        mov              qword ptr [rbp + 3496], rax
                        mov              rax, qword ptr [rbp + 3424]
                        mov              qword ptr [rbp + 3472], rax
                        mov              rax, qword ptr [rbp + 3432]
                        mov              qword ptr [rbp + 3480], rax
                        mov              rax, qword ptr [rbp + 3520]
                        mov              qword ptr [rbp + 3456], rax
                        mov              rax, qword ptr [rbp + 3528]
                        mov              qword ptr [rbp + 3464], rax
                        lea              rdi, [rbp + 3456]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3440], rax
                        mov              qword ptr [rbp + 3448], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n239_call_α
n238_call_β:            mov              r11, 155;                            jmp   connect$2F2_ω
                        .size            n238_call_bx, .-n238_call_bx
                        .type            n239_call_bx, @function
n239_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_call_α:            mov              r11, 156
                        mov              rax, qword ptr [rbp + 3440]
                        mov              qword ptr [rbp + 3600], rax
                        mov              rax, qword ptr [rbp + 3448]
                        mov              qword ptr [rbp + 3608], rax
                        mov              rax, qword ptr [rbp + 3536]
                        mov              qword ptr [rbp + 3584], rax
                        mov              rax, qword ptr [rbp + 3544]
                        mov              qword ptr [rbp + 3592], rax
                        mov              rax, qword ptr [rbp + 3632]
                        mov              qword ptr [rbp + 3568], rax
                        mov              rax, qword ptr [rbp + 3640]
                        mov              qword ptr [rbp + 3576], rax
                        lea              rdi, [rbp + 3568]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3552], rax
                        mov              qword ptr [rbp + 3560], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n240_call_α
n239_call_β:            mov              r11, 156;                            jmp   connect$2F2_step
                        .size            n239_call_bx, .-n239_call_bx
                        .type            n240_call_bx, @function
n240_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_call_α:            mov              r11, 157
                        mov              rax, qword ptr [rbp + 3552]
                        mov              qword ptr [rbp + 3248], rax
                        mov              rax, qword ptr [rbp + 3560]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3216], rax
                        mov              qword ptr [rbp + 3224], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n240_call_β:            mov              r11, 157;                            jmp   connect$2F2_step
                        .size            n240_call_bx, .-n240_call_bx
                        .type            n241_var_ref_bx, @function
n241_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4240], rax
                        mov              qword ptr [rbp + 4248], rdx;         jmp   n242_lit_string_α
                        .size            n241_var_ref_bx, .-n241_var_ref_bx
                        .type            n242_lit_string_bx, @function
n242_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_lit_string_α:      mov              r11, 159
                        mov              qword ptr [rbp + 4256], 2            # result
                        mov              dword ptr [rbp + 4260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_557_0]
                        mov              qword ptr [rbp + 4264], rax;         jmp   n243_call_α
.Llit_string_α_557_0:   .quad            .Llit_string_α_557_0_s
.Llit_string_α_557_0_s: .string          "h"
                        .size            n242_lit_string_bx, .-n242_lit_string_bx
                        .type            n243_call_bx, @function
n243_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_call_α:            mov              r11, 160
                        mov              rax, qword ptr [rbp + 4240]
                        mov              qword ptr [rbp + 4192], rax
                        mov              rax, qword ptr [rbp + 4248]
                        mov              qword ptr [rbp + 4200], rax
                        lea              rdi, [rbp + 4192]
                        mov              rsi, qword ptr [rip + .Lcall_α_558_2]
                                                                              jmp   .Lcall_α_558_3
.Lcall_α_558_2:         .quad            .Lcall_α_558_2_s
.Lcall_α_558_2_s:       .string          "h"
.Lcall_α_558_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4176], rax
                        mov              qword ptr [rbp + 4184], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n244_var_ref_α
n243_call_β:            mov              r11, 160;                            jmp   connect$2F2_step
                        .size            n243_call_bx, .-n243_call_bx
                        .type            n244_var_ref_bx, @function
n244_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 3808], rax
                        mov              qword ptr [rbp + 3816], rdx;         jmp   n245_lit_string_α
                        .size            n244_var_ref_bx, .-n244_var_ref_bx
                        .type            n245_lit_string_bx, @function
n245_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_lit_string_α:      mov              r11, 162
                        mov              qword ptr [rbp + 4160], 2            # result
                        mov              dword ptr [rbp + 4164], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_561_0]
                        mov              qword ptr [rbp + 4168], rax;         jmp   n246_lit_string_α
.Llit_string_α_561_0:   .quad            .Llit_string_α_561_0_s
.Llit_string_α_561_0_s: .string          "."
                        .size            n245_lit_string_bx, .-n245_lit_string_bx
                        .type            n246_lit_string_bx, @function
n246_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n246_lit_string_α:      mov              r11, 163
                        mov              qword ptr [rbp + 4064], 2            # result
                        mov              dword ptr [rbp + 4068], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_562_0]
                        mov              qword ptr [rbp + 4072], rax;         jmp   n247_lit_string_α
.Llit_string_α_562_0:   .quad            .Llit_string_α_562_0_s
.Llit_string_α_562_0_s: .string          "i"
                        .size            n246_lit_string_bx, .-n246_lit_string_bx
                        .type            n247_lit_string_bx, @function
n247_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n247_lit_string_α:      mov              r11, 164
                        mov              qword ptr [rbp + 4048], 2            # result
                        mov              dword ptr [rbp + 4052], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_563_0]
                        mov              qword ptr [rbp + 4056], rax;         jmp   n248_lit_string_α
.Llit_string_α_563_0:   .quad            .Llit_string_α_563_0_s
.Llit_string_α_563_0_s: .string          "."
                        .size            n247_lit_string_bx, .-n247_lit_string_bx
                        .type            n248_lit_string_bx, @function
n248_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n248_lit_string_α:      mov              r11, 165
                        mov              qword ptr [rbp + 3952], 2            # result
                        mov              dword ptr [rbp + 3956], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_564_0]
                        mov              qword ptr [rbp + 3960], rax;         jmp   n249_lit_string_α
.Llit_string_α_564_0:   .quad            .Llit_string_α_564_0_s
.Llit_string_α_564_0_s: .string          "g"
                        .size            n248_lit_string_bx, .-n248_lit_string_bx
                        .type            n249_lit_string_bx, @function
n249_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n249_lit_string_α:      mov              r11, 166
                        mov              qword ptr [rbp + 3936], 2            # result
                        mov              dword ptr [rbp + 3940], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_565_0]
                        mov              qword ptr [rbp + 3944], rax;         jmp   n250_lit_string_α
.Llit_string_α_565_0:   .quad            .Llit_string_α_565_0_s
.Llit_string_α_565_0_s: .string          "."
                        .size            n249_lit_string_bx, .-n249_lit_string_bx
                        .type            n250_lit_string_bx, @function
n250_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n250_lit_string_α:      mov              r11, 167
                        mov              qword ptr [rbp + 3840], 2            # result
                        mov              dword ptr [rbp + 3844], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_566_0]
                        mov              qword ptr [rbp + 3848], rax;         jmp   n251_lit_string_α
.Llit_string_α_566_0:   .quad            .Llit_string_α_566_0_s
.Llit_string_α_566_0_s: .string          "s"
                        .size            n250_lit_string_bx, .-n250_lit_string_bx
                        .type            n251_lit_string_bx, @function
n251_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n251_lit_string_α:      mov              r11, 168
                        mov              qword ptr [rbp + 3824], 2            # result
                        mov              dword ptr [rbp + 3828], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_567_0]
                        mov              qword ptr [rbp + 3832], rax;         jmp   n252_call_α
.Llit_string_α_567_0:   .quad            .Llit_string_α_567_0_s
.Llit_string_α_567_0_s: .string          "[]"
                        .size            n251_lit_string_bx, .-n251_lit_string_bx
                        .type            n252_call_bx, @function
n252_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n252_call_α:            mov              r11, 169
                        mov              rax, qword ptr [rbp + 3824]
                        mov              qword ptr [rbp + 3904], rax
                        mov              rax, qword ptr [rbp + 3832]
                        mov              qword ptr [rbp + 3912], rax
                        mov              rax, qword ptr [rbp + 3840]
                        mov              qword ptr [rbp + 3888], rax
                        mov              rax, qword ptr [rbp + 3848]
                        mov              qword ptr [rbp + 3896], rax
                        mov              rax, qword ptr [rbp + 3936]
                        mov              qword ptr [rbp + 3872], rax
                        mov              rax, qword ptr [rbp + 3944]
                        mov              qword ptr [rbp + 3880], rax
                        lea              rdi, [rbp + 3872]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3856], rax
                        mov              qword ptr [rbp + 3864], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n253_call_α
n252_call_β:            mov              r11, 169;                            jmp   connect$2F2_ω
                        .size            n252_call_bx, .-n252_call_bx
                        .type            n253_call_bx, @function
n253_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n253_call_α:            mov              r11, 170
                        mov              rax, qword ptr [rbp + 3856]
                        mov              qword ptr [rbp + 4016], rax
                        mov              rax, qword ptr [rbp + 3864]
                        mov              qword ptr [rbp + 4024], rax
                        mov              rax, qword ptr [rbp + 3952]
                        mov              qword ptr [rbp + 4000], rax
                        mov              rax, qword ptr [rbp + 3960]
                        mov              qword ptr [rbp + 4008], rax
                        mov              rax, qword ptr [rbp + 4048]
                        mov              qword ptr [rbp + 3984], rax
                        mov              rax, qword ptr [rbp + 4056]
                        mov              qword ptr [rbp + 3992], rax
                        lea              rdi, [rbp + 3984]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3968], rax
                        mov              qword ptr [rbp + 3976], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n254_call_α
n253_call_β:            mov              r11, 170;                            jmp   connect$2F2_ω
                        .size            n253_call_bx, .-n253_call_bx
                        .type            n254_call_bx, @function
n254_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n254_call_α:            mov              r11, 171
                        mov              rax, qword ptr [rbp + 3968]
                        mov              qword ptr [rbp + 4128], rax
                        mov              rax, qword ptr [rbp + 3976]
                        mov              qword ptr [rbp + 4136], rax
                        mov              rax, qword ptr [rbp + 4064]
                        mov              qword ptr [rbp + 4112], rax
                        mov              rax, qword ptr [rbp + 4072]
                        mov              qword ptr [rbp + 4120], rax
                        mov              rax, qword ptr [rbp + 4160]
                        mov              qword ptr [rbp + 4096], rax
                        mov              rax, qword ptr [rbp + 4168]
                        mov              qword ptr [rbp + 4104], rax
                        lea              rdi, [rbp + 4096]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4080], rax
                        mov              qword ptr [rbp + 4088], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n255_call_α
n254_call_β:            mov              r11, 171;                            jmp   connect$2F2_step
                        .size            n254_call_bx, .-n254_call_bx
                        .type            n255_call_bx, @function
n255_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n255_call_α:            mov              r11, 172
                        mov              rax, qword ptr [rbp + 4080]
                        mov              qword ptr [rbp + 3776], rax
                        mov              rax, qword ptr [rbp + 4088]
                        mov              qword ptr [rbp + 3784], rax
                        mov              rax, qword ptr [rbp + 3808]
                        mov              qword ptr [rbp + 3760], rax
                        mov              rax, qword ptr [rbp + 3816]
                        mov              qword ptr [rbp + 3768], rax
                        lea              rdi, [rbp + 3760]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 3744], rax
                        mov              qword ptr [rbp + 3752], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n255_call_β:            mov              r11, 172;                            jmp   connect$2F2_step
                        .size            n255_call_bx, .-n255_call_bx
                        .type            n256_var_ref_bx, @function
n256_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n256_var_ref_α:         mov              r11, 173
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 4768], rax
                        mov              qword ptr [rbp + 4776], rdx;         jmp   n257_lit_string_α
                        .size            n256_var_ref_bx, .-n256_var_ref_bx
                        .type            n257_lit_string_bx, @function
n257_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n257_lit_string_α:      mov              r11, 174
                        mov              qword ptr [rbp + 4784], 2            # result
                        mov              dword ptr [rbp + 4788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_574_0]
                        mov              qword ptr [rbp + 4792], rax;         jmp   n258_call_α
.Llit_string_α_574_0:   .quad            .Llit_string_α_574_0_s
.Llit_string_α_574_0_s: .string          "i"
                        .size            n257_lit_string_bx, .-n257_lit_string_bx
                        .type            n258_call_bx, @function
n258_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n258_call_α:            mov              r11, 175
                        mov              rax, qword ptr [rbp + 4768]
                        mov              qword ptr [rbp + 4720], rax
                        mov              rax, qword ptr [rbp + 4776]
                        mov              qword ptr [rbp + 4728], rax
                        lea              rdi, [rbp + 4720]
                        mov              rsi, qword ptr [rip + .Lcall_α_575_2]
                                                                              jmp   .Lcall_α_575_3
.Lcall_α_575_2:         .quad            .Lcall_α_575_2_s
.Lcall_α_575_2_s:       .string          "i"
.Lcall_α_575_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4704], rax
                        mov              qword ptr [rbp + 4712], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n259_var_ref_α
n258_call_β:            mov              r11, 175;                            jmp   connect$2F2_step
                        .size            n258_call_bx, .-n258_call_bx
                        .type            n259_var_ref_bx, @function
n259_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n259_var_ref_α:         mov              r11, 176
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4336], rax
                        mov              qword ptr [rbp + 4344], rdx;         jmp   n260_lit_string_α
                        .size            n259_var_ref_bx, .-n259_var_ref_bx
                        .type            n260_lit_string_bx, @function
n260_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n260_lit_string_α:      mov              r11, 177
                        mov              qword ptr [rbp + 4688], 2            # result
                        mov              dword ptr [rbp + 4692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_578_0]
                        mov              qword ptr [rbp + 4696], rax;         jmp   n261_lit_string_α
.Llit_string_α_578_0:   .quad            .Llit_string_α_578_0_s
.Llit_string_α_578_0_s: .string          "."
                        .size            n260_lit_string_bx, .-n260_lit_string_bx
                        .type            n261_lit_string_bx, @function
n261_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n261_lit_string_α:      mov              r11, 178
                        mov              qword ptr [rbp + 4592], 2            # result
                        mov              dword ptr [rbp + 4596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_579_0]
                        mov              qword ptr [rbp + 4600], rax;         jmp   n262_lit_string_α
.Llit_string_α_579_0:   .quad            .Llit_string_α_579_0_s
.Llit_string_α_579_0_s: .string          "j"
                        .size            n261_lit_string_bx, .-n261_lit_string_bx
                        .type            n262_lit_string_bx, @function
n262_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n262_lit_string_α:      mov              r11, 179
                        mov              qword ptr [rbp + 4576], 2            # result
                        mov              dword ptr [rbp + 4580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_580_0]
                        mov              qword ptr [rbp + 4584], rax;         jmp   n263_lit_string_α
.Llit_string_α_580_0:   .quad            .Llit_string_α_580_0_s
.Llit_string_α_580_0_s: .string          "."
                        .size            n262_lit_string_bx, .-n262_lit_string_bx
                        .type            n263_lit_string_bx, @function
n263_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n263_lit_string_α:      mov              r11, 180
                        mov              qword ptr [rbp + 4480], 2            # result
                        mov              dword ptr [rbp + 4484], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_581_0]
                        mov              qword ptr [rbp + 4488], rax;         jmp   n264_lit_string_α
.Llit_string_α_581_0:   .quad            .Llit_string_α_581_0_s
.Llit_string_α_581_0_s: .string          "h"
                        .size            n263_lit_string_bx, .-n263_lit_string_bx
                        .type            n264_lit_string_bx, @function
n264_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n264_lit_string_α:      mov              r11, 181
                        mov              qword ptr [rbp + 4464], 2            # result
                        mov              dword ptr [rbp + 4468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_582_0]
                        mov              qword ptr [rbp + 4472], rax;         jmp   n265_lit_string_α
.Llit_string_α_582_0:   .quad            .Llit_string_α_582_0_s
.Llit_string_α_582_0_s: .string          "."
                        .size            n264_lit_string_bx, .-n264_lit_string_bx
                        .type            n265_lit_string_bx, @function
n265_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n265_lit_string_α:      mov              r11, 182
                        mov              qword ptr [rbp + 4368], 2            # result
                        mov              dword ptr [rbp + 4372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_583_0]
                        mov              qword ptr [rbp + 4376], rax;         jmp   n266_lit_string_α
.Llit_string_α_583_0:   .quad            .Llit_string_α_583_0_s
.Llit_string_α_583_0_s: .string          "o"
                        .size            n265_lit_string_bx, .-n265_lit_string_bx
                        .type            n266_lit_string_bx, @function
n266_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n266_lit_string_α:      mov              r11, 183
                        mov              qword ptr [rbp + 4352], 2            # result
                        mov              dword ptr [rbp + 4356], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_584_0]
                        mov              qword ptr [rbp + 4360], rax;         jmp   n267_call_α
.Llit_string_α_584_0:   .quad            .Llit_string_α_584_0_s
.Llit_string_α_584_0_s: .string          "[]"
                        .size            n266_lit_string_bx, .-n266_lit_string_bx
                        .type            n267_call_bx, @function
n267_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n267_call_α:            mov              r11, 184
                        mov              rax, qword ptr [rbp + 4352]
                        mov              qword ptr [rbp + 4432], rax
                        mov              rax, qword ptr [rbp + 4360]
                        mov              qword ptr [rbp + 4440], rax
                        mov              rax, qword ptr [rbp + 4368]
                        mov              qword ptr [rbp + 4416], rax
                        mov              rax, qword ptr [rbp + 4376]
                        mov              qword ptr [rbp + 4424], rax
                        mov              rax, qword ptr [rbp + 4464]
                        mov              qword ptr [rbp + 4400], rax
                        mov              rax, qword ptr [rbp + 4472]
                        mov              qword ptr [rbp + 4408], rax
                        lea              rdi, [rbp + 4400]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4384], rax
                        mov              qword ptr [rbp + 4392], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n268_call_α
n267_call_β:            mov              r11, 184;                            jmp   connect$2F2_ω
                        .size            n267_call_bx, .-n267_call_bx
                        .type            n268_call_bx, @function
n268_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n268_call_α:            mov              r11, 185
                        mov              rax, qword ptr [rbp + 4384]
                        mov              qword ptr [rbp + 4544], rax
                        mov              rax, qword ptr [rbp + 4392]
                        mov              qword ptr [rbp + 4552], rax
                        mov              rax, qword ptr [rbp + 4480]
                        mov              qword ptr [rbp + 4528], rax
                        mov              rax, qword ptr [rbp + 4488]
                        mov              qword ptr [rbp + 4536], rax
                        mov              rax, qword ptr [rbp + 4576]
                        mov              qword ptr [rbp + 4512], rax
                        mov              rax, qword ptr [rbp + 4584]
                        mov              qword ptr [rbp + 4520], rax
                        lea              rdi, [rbp + 4512]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4496], rax
                        mov              qword ptr [rbp + 4504], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n269_call_α
n268_call_β:            mov              r11, 185;                            jmp   connect$2F2_ω
                        .size            n268_call_bx, .-n268_call_bx
                        .type            n269_call_bx, @function
n269_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n269_call_α:            mov              r11, 186
                        mov              rax, qword ptr [rbp + 4496]
                        mov              qword ptr [rbp + 4656], rax
                        mov              rax, qword ptr [rbp + 4504]
                        mov              qword ptr [rbp + 4664], rax
                        mov              rax, qword ptr [rbp + 4592]
                        mov              qword ptr [rbp + 4640], rax
                        mov              rax, qword ptr [rbp + 4600]
                        mov              qword ptr [rbp + 4648], rax
                        mov              rax, qword ptr [rbp + 4688]
                        mov              qword ptr [rbp + 4624], rax
                        mov              rax, qword ptr [rbp + 4696]
                        mov              qword ptr [rbp + 4632], rax
                        lea              rdi, [rbp + 4624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4608], rax
                        mov              qword ptr [rbp + 4616], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n270_call_α
n269_call_β:            mov              r11, 186;                            jmp   connect$2F2_step
                        .size            n269_call_bx, .-n269_call_bx
                        .type            n270_call_bx, @function
n270_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n270_call_α:            mov              r11, 187
                        mov              rax, qword ptr [rbp + 4608]
                        mov              qword ptr [rbp + 4304], rax
                        mov              rax, qword ptr [rbp + 4616]
                        mov              qword ptr [rbp + 4312], rax
                        mov              rax, qword ptr [rbp + 4336]
                        mov              qword ptr [rbp + 4288], rax
                        mov              rax, qword ptr [rbp + 4344]
                        mov              qword ptr [rbp + 4296], rax
                        lea              rdi, [rbp + 4288]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4272], rax
                        mov              qword ptr [rbp + 4280], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n270_call_β:            mov              r11, 187;                            jmp   connect$2F2_step
                        .size            n270_call_bx, .-n270_call_bx
                        .type            n271_var_ref_bx, @function
n271_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n271_var_ref_α:         mov              r11, 188
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5296], rax
                        mov              qword ptr [rbp + 5304], rdx;         jmp   n272_lit_string_α
                        .size            n271_var_ref_bx, .-n271_var_ref_bx
                        .type            n272_lit_string_bx, @function
n272_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n272_lit_string_α:      mov              r11, 189
                        mov              qword ptr [rbp + 5312], 2            # result
                        mov              dword ptr [rbp + 5316], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_591_0]
                        mov              qword ptr [rbp + 5320], rax;         jmp   n273_call_α
.Llit_string_α_591_0:   .quad            .Llit_string_α_591_0_s
.Llit_string_α_591_0_s: .string          "j"
                        .size            n272_lit_string_bx, .-n272_lit_string_bx
                        .type            n273_call_bx, @function
n273_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n273_call_α:            mov              r11, 190
                        mov              rax, qword ptr [rbp + 5296]
                        mov              qword ptr [rbp + 5248], rax
                        mov              rax, qword ptr [rbp + 5304]
                        mov              qword ptr [rbp + 5256], rax
                        lea              rdi, [rbp + 5248]
                        mov              rsi, qword ptr [rip + .Lcall_α_592_2]
                                                                              jmp   .Lcall_α_592_3
.Lcall_α_592_2:         .quad            .Lcall_α_592_2_s
.Lcall_α_592_2_s:       .string          "j"
.Lcall_α_592_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5232], rax
                        mov              qword ptr [rbp + 5240], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n274_var_ref_α
n273_call_β:            mov              r11, 190;                            jmp   connect$2F2_step
                        .size            n273_call_bx, .-n273_call_bx
                        .type            n274_var_ref_bx, @function
n274_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n274_var_ref_α:         mov              r11, 191
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 4864], rax
                        mov              qword ptr [rbp + 4872], rdx;         jmp   n275_lit_string_α
                        .size            n274_var_ref_bx, .-n274_var_ref_bx
                        .type            n275_lit_string_bx, @function
n275_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n275_lit_string_α:      mov              r11, 192
                        mov              qword ptr [rbp + 5216], 2            # result
                        mov              dword ptr [rbp + 5220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_595_0]
                        mov              qword ptr [rbp + 5224], rax;         jmp   n276_lit_string_α
.Llit_string_α_595_0:   .quad            .Llit_string_α_595_0_s
.Llit_string_α_595_0_s: .string          "."
                        .size            n275_lit_string_bx, .-n275_lit_string_bx
                        .type            n276_lit_string_bx, @function
n276_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n276_lit_string_α:      mov              r11, 193
                        mov              qword ptr [rbp + 5120], 2            # result
                        mov              dword ptr [rbp + 5124], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_596_0]
                        mov              qword ptr [rbp + 5128], rax;         jmp   n277_lit_string_α
.Llit_string_α_596_0:   .quad            .Llit_string_α_596_0_s
.Llit_string_α_596_0_s: .string          "a"
                        .size            n276_lit_string_bx, .-n276_lit_string_bx
                        .type            n277_lit_string_bx, @function
n277_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n277_lit_string_α:      mov              r11, 194
                        mov              qword ptr [rbp + 5104], 2            # result
                        mov              dword ptr [rbp + 5108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_597_0]
                        mov              qword ptr [rbp + 5112], rax;         jmp   n278_lit_string_α
.Llit_string_α_597_0:   .quad            .Llit_string_α_597_0_s
.Llit_string_α_597_0_s: .string          "."
                        .size            n277_lit_string_bx, .-n277_lit_string_bx
                        .type            n278_lit_string_bx, @function
n278_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n278_lit_string_α:      mov              r11, 195
                        mov              qword ptr [rbp + 5008], 2            # result
                        mov              dword ptr [rbp + 5012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_598_0]
                        mov              qword ptr [rbp + 5016], rax;         jmp   n279_lit_string_α
.Llit_string_α_598_0:   .quad            .Llit_string_α_598_0_s
.Llit_string_α_598_0_s: .string          "i"
                        .size            n278_lit_string_bx, .-n278_lit_string_bx
                        .type            n279_lit_string_bx, @function
n279_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n279_lit_string_α:      mov              r11, 196
                        mov              qword ptr [rbp + 4992], 2            # result
                        mov              dword ptr [rbp + 4996], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_599_0]
                        mov              qword ptr [rbp + 5000], rax;         jmp   n280_lit_string_α
.Llit_string_α_599_0:   .quad            .Llit_string_α_599_0_s
.Llit_string_α_599_0_s: .string          "."
                        .size            n279_lit_string_bx, .-n279_lit_string_bx
                        .type            n280_lit_string_bx, @function
n280_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n280_lit_string_α:      mov              r11, 197
                        mov              qword ptr [rbp + 4896], 2            # result
                        mov              dword ptr [rbp + 4900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_600_0]
                        mov              qword ptr [rbp + 4904], rax;         jmp   n281_lit_string_α
.Llit_string_α_600_0:   .quad            .Llit_string_α_600_0_s
.Llit_string_α_600_0_s: .string          "t"
                        .size            n280_lit_string_bx, .-n280_lit_string_bx
                        .type            n281_lit_string_bx, @function
n281_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n281_lit_string_α:      mov              r11, 198
                        mov              qword ptr [rbp + 4880], 2            # result
                        mov              dword ptr [rbp + 4884], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_601_0]
                        mov              qword ptr [rbp + 4888], rax;         jmp   n282_call_α
.Llit_string_α_601_0:   .quad            .Llit_string_α_601_0_s
.Llit_string_α_601_0_s: .string          "[]"
                        .size            n281_lit_string_bx, .-n281_lit_string_bx
                        .type            n282_call_bx, @function
n282_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n282_call_α:            mov              r11, 199
                        mov              rax, qword ptr [rbp + 4880]
                        mov              qword ptr [rbp + 4960], rax
                        mov              rax, qword ptr [rbp + 4888]
                        mov              qword ptr [rbp + 4968], rax
                        mov              rax, qword ptr [rbp + 4896]
                        mov              qword ptr [rbp + 4944], rax
                        mov              rax, qword ptr [rbp + 4904]
                        mov              qword ptr [rbp + 4952], rax
                        mov              rax, qword ptr [rbp + 4992]
                        mov              qword ptr [rbp + 4928], rax
                        mov              rax, qword ptr [rbp + 5000]
                        mov              qword ptr [rbp + 4936], rax
                        lea              rdi, [rbp + 4928]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4912], rax
                        mov              qword ptr [rbp + 4920], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n283_call_α
n282_call_β:            mov              r11, 199;                            jmp   connect$2F2_ω
                        .size            n282_call_bx, .-n282_call_bx
                        .type            n283_call_bx, @function
n283_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n283_call_α:            mov              r11, 200
                        mov              rax, qword ptr [rbp + 4912]
                        mov              qword ptr [rbp + 5072], rax
                        mov              rax, qword ptr [rbp + 4920]
                        mov              qword ptr [rbp + 5080], rax
                        mov              rax, qword ptr [rbp + 5008]
                        mov              qword ptr [rbp + 5056], rax
                        mov              rax, qword ptr [rbp + 5016]
                        mov              qword ptr [rbp + 5064], rax
                        mov              rax, qword ptr [rbp + 5104]
                        mov              qword ptr [rbp + 5040], rax
                        mov              rax, qword ptr [rbp + 5112]
                        mov              qword ptr [rbp + 5048], rax
                        lea              rdi, [rbp + 5040]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5024], rax
                        mov              qword ptr [rbp + 5032], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n284_call_α
n283_call_β:            mov              r11, 200;                            jmp   connect$2F2_ω
                        .size            n283_call_bx, .-n283_call_bx
                        .type            n284_call_bx, @function
n284_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n284_call_α:            mov              r11, 201
                        mov              rax, qword ptr [rbp + 5024]
                        mov              qword ptr [rbp + 5184], rax
                        mov              rax, qword ptr [rbp + 5032]
                        mov              qword ptr [rbp + 5192], rax
                        mov              rax, qword ptr [rbp + 5120]
                        mov              qword ptr [rbp + 5168], rax
                        mov              rax, qword ptr [rbp + 5128]
                        mov              qword ptr [rbp + 5176], rax
                        mov              rax, qword ptr [rbp + 5216]
                        mov              qword ptr [rbp + 5152], rax
                        mov              rax, qword ptr [rbp + 5224]
                        mov              qword ptr [rbp + 5160], rax
                        lea              rdi, [rbp + 5152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5136], rax
                        mov              qword ptr [rbp + 5144], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n285_call_α
n284_call_β:            mov              r11, 201;                            jmp   connect$2F2_step
                        .size            n284_call_bx, .-n284_call_bx
                        .type            n285_call_bx, @function
n285_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n285_call_α:            mov              r11, 202
                        mov              rax, qword ptr [rbp + 5136]
                        mov              qword ptr [rbp + 4832], rax
                        mov              rax, qword ptr [rbp + 5144]
                        mov              qword ptr [rbp + 4840], rax
                        mov              rax, qword ptr [rbp + 4864]
                        mov              qword ptr [rbp + 4816], rax
                        mov              rax, qword ptr [rbp + 4872]
                        mov              qword ptr [rbp + 4824], rax
                        lea              rdi, [rbp + 4816]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 4800], rax
                        mov              qword ptr [rbp + 4808], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n285_call_β:            mov              r11, 202;                            jmp   connect$2F2_step
                        .size            n285_call_bx, .-n285_call_bx
                        .type            n286_var_ref_bx, @function
n286_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n286_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 5824], rax
                        mov              qword ptr [rbp + 5832], rdx;         jmp   n287_lit_string_α
                        .size            n286_var_ref_bx, .-n286_var_ref_bx
                        .type            n287_lit_string_bx, @function
n287_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n287_lit_string_α:      mov              r11, 204
                        mov              qword ptr [rbp + 5840], 2            # result
                        mov              dword ptr [rbp + 5844], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_608_0]
                        mov              qword ptr [rbp + 5848], rax;         jmp   n288_call_α
.Llit_string_α_608_0:   .quad            .Llit_string_α_608_0_s
.Llit_string_α_608_0_s: .string          "k"
                        .size            n287_lit_string_bx, .-n287_lit_string_bx
                        .type            n288_call_bx, @function
n288_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n288_call_α:            mov              r11, 205
                        mov              rax, qword ptr [rbp + 5824]
                        mov              qword ptr [rbp + 5776], rax
                        mov              rax, qword ptr [rbp + 5832]
                        mov              qword ptr [rbp + 5784], rax
                        lea              rdi, [rbp + 5776]
                        mov              rsi, qword ptr [rip + .Lcall_α_609_2]
                                                                              jmp   .Lcall_α_609_3
.Lcall_α_609_2:         .quad            .Lcall_α_609_2_s
.Lcall_α_609_2_s:       .string          "k"
.Lcall_α_609_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5760], rax
                        mov              qword ptr [rbp + 5768], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n289_var_ref_α
n288_call_β:            mov              r11, 205;                            jmp   connect$2F2_step
                        .size            n288_call_bx, .-n288_call_bx
                        .type            n289_var_ref_bx, @function
n289_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n289_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5392], rax
                        mov              qword ptr [rbp + 5400], rdx;         jmp   n290_lit_string_α
                        .size            n289_var_ref_bx, .-n289_var_ref_bx
                        .type            n290_lit_string_bx, @function
n290_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n290_lit_string_α:      mov              r11, 207
                        mov              qword ptr [rbp + 5744], 2            # result
                        mov              dword ptr [rbp + 5748], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_612_0]
                        mov              qword ptr [rbp + 5752], rax;         jmp   n291_lit_string_α
.Llit_string_α_612_0:   .quad            .Llit_string_α_612_0_s
.Llit_string_α_612_0_s: .string          "."
                        .size            n290_lit_string_bx, .-n290_lit_string_bx
                        .type            n291_lit_string_bx, @function
n291_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n291_lit_string_α:      mov              r11, 208
                        mov              qword ptr [rbp + 5648], 2            # result
                        mov              dword ptr [rbp + 5652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_613_0]
                        mov              qword ptr [rbp + 5656], rax;         jmp   n292_lit_string_α
.Llit_string_α_613_0:   .quad            .Llit_string_α_613_0_s
.Llit_string_α_613_0_s: .string          "o"
                        .size            n291_lit_string_bx, .-n291_lit_string_bx
                        .type            n292_lit_string_bx, @function
n292_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n292_lit_string_α:      mov              r11, 209
                        mov              qword ptr [rbp + 5632], 2            # result
                        mov              dword ptr [rbp + 5636], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_614_0]
                        mov              qword ptr [rbp + 5640], rax;         jmp   n293_lit_string_α
.Llit_string_α_614_0:   .quad            .Llit_string_α_614_0_s
.Llit_string_α_614_0_s: .string          "."
                        .size            n292_lit_string_bx, .-n292_lit_string_bx
                        .type            n293_lit_string_bx, @function
n293_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n293_lit_string_α:      mov              r11, 210
                        mov              qword ptr [rbp + 5536], 2            # result
                        mov              dword ptr [rbp + 5540], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_615_0]
                        mov              qword ptr [rbp + 5544], rax;         jmp   n294_lit_string_α
.Llit_string_α_615_0:   .quad            .Llit_string_α_615_0_s
.Llit_string_α_615_0_s: .string          "l"
                        .size            n293_lit_string_bx, .-n293_lit_string_bx
                        .type            n294_lit_string_bx, @function
n294_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n294_lit_string_α:      mov              r11, 211
                        mov              qword ptr [rbp + 5520], 2            # result
                        mov              dword ptr [rbp + 5524], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_616_0]
                        mov              qword ptr [rbp + 5528], rax;         jmp   n295_lit_string_α
.Llit_string_α_616_0:   .quad            .Llit_string_α_616_0_s
.Llit_string_α_616_0_s: .string          "."
                        .size            n294_lit_string_bx, .-n294_lit_string_bx
                        .type            n295_lit_string_bx, @function
n295_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n295_lit_string_α:      mov              r11, 212
                        mov              qword ptr [rbp + 5424], 2            # result
                        mov              dword ptr [rbp + 5428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_617_0]
                        mov              qword ptr [rbp + 5432], rax;         jmp   n296_lit_string_α
.Llit_string_α_617_0:   .quad            .Llit_string_α_617_0_s
.Llit_string_α_617_0_s: .string          "a"
                        .size            n295_lit_string_bx, .-n295_lit_string_bx
                        .type            n296_lit_string_bx, @function
n296_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n296_lit_string_α:      mov              r11, 213
                        mov              qword ptr [rbp + 5408], 2            # result
                        mov              dword ptr [rbp + 5412], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_618_0]
                        mov              qword ptr [rbp + 5416], rax;         jmp   n297_call_α
.Llit_string_α_618_0:   .quad            .Llit_string_α_618_0_s
.Llit_string_α_618_0_s: .string          "[]"
                        .size            n296_lit_string_bx, .-n296_lit_string_bx
                        .type            n297_call_bx, @function
n297_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n297_call_α:            mov              r11, 214
                        mov              rax, qword ptr [rbp + 5408]
                        mov              qword ptr [rbp + 5488], rax
                        mov              rax, qword ptr [rbp + 5416]
                        mov              qword ptr [rbp + 5496], rax
                        mov              rax, qword ptr [rbp + 5424]
                        mov              qword ptr [rbp + 5472], rax
                        mov              rax, qword ptr [rbp + 5432]
                        mov              qword ptr [rbp + 5480], rax
                        mov              rax, qword ptr [rbp + 5520]
                        mov              qword ptr [rbp + 5456], rax
                        mov              rax, qword ptr [rbp + 5528]
                        mov              qword ptr [rbp + 5464], rax
                        lea              rdi, [rbp + 5456]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5440], rax
                        mov              qword ptr [rbp + 5448], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n298_call_α
n297_call_β:            mov              r11, 214;                            jmp   connect$2F2_ω
                        .size            n297_call_bx, .-n297_call_bx
                        .type            n298_call_bx, @function
n298_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_call_α:            mov              r11, 215
                        mov              rax, qword ptr [rbp + 5440]
                        mov              qword ptr [rbp + 5600], rax
                        mov              rax, qword ptr [rbp + 5448]
                        mov              qword ptr [rbp + 5608], rax
                        mov              rax, qword ptr [rbp + 5536]
                        mov              qword ptr [rbp + 5584], rax
                        mov              rax, qword ptr [rbp + 5544]
                        mov              qword ptr [rbp + 5592], rax
                        mov              rax, qword ptr [rbp + 5632]
                        mov              qword ptr [rbp + 5568], rax
                        mov              rax, qword ptr [rbp + 5640]
                        mov              qword ptr [rbp + 5576], rax
                        lea              rdi, [rbp + 5568]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5552], rax
                        mov              qword ptr [rbp + 5560], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n299_call_α
n298_call_β:            mov              r11, 215;                            jmp   connect$2F2_ω
                        .size            n298_call_bx, .-n298_call_bx
                        .type            n299_call_bx, @function
n299_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_call_α:            mov              r11, 216
                        mov              rax, qword ptr [rbp + 5552]
                        mov              qword ptr [rbp + 5712], rax
                        mov              rax, qword ptr [rbp + 5560]
                        mov              qword ptr [rbp + 5720], rax
                        mov              rax, qword ptr [rbp + 5648]
                        mov              qword ptr [rbp + 5696], rax
                        mov              rax, qword ptr [rbp + 5656]
                        mov              qword ptr [rbp + 5704], rax
                        mov              rax, qword ptr [rbp + 5744]
                        mov              qword ptr [rbp + 5680], rax
                        mov              rax, qword ptr [rbp + 5752]
                        mov              qword ptr [rbp + 5688], rax
                        lea              rdi, [rbp + 5680]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5664], rax
                        mov              qword ptr [rbp + 5672], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n300_call_α
n299_call_β:            mov              r11, 216;                            jmp   connect$2F2_step
                        .size            n299_call_bx, .-n299_call_bx
                        .type            n300_call_bx, @function
n300_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_call_α:            mov              r11, 217
                        mov              rax, qword ptr [rbp + 5664]
                        mov              qword ptr [rbp + 5360], rax
                        mov              rax, qword ptr [rbp + 5672]
                        mov              qword ptr [rbp + 5368], rax
                        mov              rax, qword ptr [rbp + 5392]
                        mov              qword ptr [rbp + 5344], rax
                        mov              rax, qword ptr [rbp + 5400]
                        mov              qword ptr [rbp + 5352], rax
                        lea              rdi, [rbp + 5344]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5328], rax
                        mov              qword ptr [rbp + 5336], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n300_call_β:            mov              r11, 217;                            jmp   connect$2F2_step
                        .size            n300_call_bx, .-n300_call_bx
                        .type            n301_var_ref_bx, @function
n301_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6352], rax
                        mov              qword ptr [rbp + 6360], rdx;         jmp   n302_lit_string_α
                        .size            n301_var_ref_bx, .-n301_var_ref_bx
                        .type            n302_lit_string_bx, @function
n302_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:      mov              r11, 219
                        mov              qword ptr [rbp + 6368], 2            # result
                        mov              dword ptr [rbp + 6372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_625_0]
                        mov              qword ptr [rbp + 6376], rax;         jmp   n303_call_α
.Llit_string_α_625_0:   .quad            .Llit_string_α_625_0_s
.Llit_string_α_625_0_s: .string          "l"
                        .size            n302_lit_string_bx, .-n302_lit_string_bx
                        .type            n303_call_bx, @function
n303_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:            mov              r11, 220
                        mov              rax, qword ptr [rbp + 6352]
                        mov              qword ptr [rbp + 6304], rax
                        mov              rax, qword ptr [rbp + 6360]
                        mov              qword ptr [rbp + 6312], rax
                        lea              rdi, [rbp + 6304]
                        mov              rsi, qword ptr [rip + .Lcall_α_626_2]
                                                                              jmp   .Lcall_α_626_3
.Lcall_α_626_2:         .quad            .Lcall_α_626_2_s
.Lcall_α_626_2_s:       .string          "l"
.Lcall_α_626_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6288], rax
                        mov              qword ptr [rbp + 6296], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n304_var_ref_α
n303_call_β:            mov              r11, 220;                            jmp   connect$2F2_step
                        .size            n303_call_bx, .-n303_call_bx
                        .type            n304_var_ref_bx, @function
n304_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              r11, 221
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 5920], rax
                        mov              qword ptr [rbp + 5928], rdx;         jmp   n305_lit_string_α
                        .size            n304_var_ref_bx, .-n304_var_ref_bx
                        .type            n305_lit_string_bx, @function
n305_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_lit_string_α:      mov              r11, 222
                        mov              qword ptr [rbp + 6272], 2            # result
                        mov              dword ptr [rbp + 6276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_629_0]
                        mov              qword ptr [rbp + 6280], rax;         jmp   n306_lit_string_α
.Llit_string_α_629_0:   .quad            .Llit_string_α_629_0_s
.Llit_string_α_629_0_s: .string          "."
                        .size            n305_lit_string_bx, .-n305_lit_string_bx
                        .type            n306_lit_string_bx, @function
n306_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_lit_string_α:      mov              r11, 223
                        mov              qword ptr [rbp + 6176], 2            # result
                        mov              dword ptr [rbp + 6180], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_630_0]
                        mov              qword ptr [rbp + 6184], rax;         jmp   n307_lit_string_α
.Llit_string_α_630_0:   .quad            .Llit_string_α_630_0_s
.Llit_string_α_630_0_s: .string          "k"
                        .size            n306_lit_string_bx, .-n306_lit_string_bx
                        .type            n307_lit_string_bx, @function
n307_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_lit_string_α:      mov              r11, 224
                        mov              qword ptr [rbp + 6160], 2            # result
                        mov              dword ptr [rbp + 6164], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_631_0]
                        mov              qword ptr [rbp + 6168], rax;         jmp   n308_lit_string_α
.Llit_string_α_631_0:   .quad            .Llit_string_α_631_0_s
.Llit_string_α_631_0_s: .string          "."
                        .size            n307_lit_string_bx, .-n307_lit_string_bx
                        .type            n308_lit_string_bx, @function
n308_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:      mov              r11, 225
                        mov              qword ptr [rbp + 6064], 2            # result
                        mov              dword ptr [rbp + 6068], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_632_0]
                        mov              qword ptr [rbp + 6072], rax;         jmp   n309_lit_string_α
.Llit_string_α_632_0:   .quad            .Llit_string_α_632_0_s
.Llit_string_α_632_0_s: .string          "m"
                        .size            n308_lit_string_bx, .-n308_lit_string_bx
                        .type            n309_lit_string_bx, @function
n309_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_lit_string_α:      mov              r11, 226
                        mov              qword ptr [rbp + 6048], 2            # result
                        mov              dword ptr [rbp + 6052], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_633_0]
                        mov              qword ptr [rbp + 6056], rax;         jmp   n310_lit_string_α
.Llit_string_α_633_0:   .quad            .Llit_string_α_633_0_s
.Llit_string_α_633_0_s: .string          "."
                        .size            n309_lit_string_bx, .-n309_lit_string_bx
                        .type            n310_lit_string_bx, @function
n310_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_lit_string_α:      mov              r11, 227
                        mov              qword ptr [rbp + 5952], 2            # result
                        mov              dword ptr [rbp + 5956], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_634_0]
                        mov              qword ptr [rbp + 5960], rax;         jmp   n311_lit_string_α
.Llit_string_α_634_0:   .quad            .Llit_string_α_634_0_s
.Llit_string_α_634_0_s: .string          "c"
                        .size            n310_lit_string_bx, .-n310_lit_string_bx
                        .type            n311_lit_string_bx, @function
n311_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_lit_string_α:      mov              r11, 228
                        mov              qword ptr [rbp + 5936], 2            # result
                        mov              dword ptr [rbp + 5940], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_635_0]
                        mov              qword ptr [rbp + 5944], rax;         jmp   n312_call_α
.Llit_string_α_635_0:   .quad            .Llit_string_α_635_0_s
.Llit_string_α_635_0_s: .string          "[]"
                        .size            n311_lit_string_bx, .-n311_lit_string_bx
                        .type            n312_call_bx, @function
n312_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:            mov              r11, 229
                        mov              rax, qword ptr [rbp + 5936]
                        mov              qword ptr [rbp + 6016], rax
                        mov              rax, qword ptr [rbp + 5944]
                        mov              qword ptr [rbp + 6024], rax
                        mov              rax, qword ptr [rbp + 5952]
                        mov              qword ptr [rbp + 6000], rax
                        mov              rax, qword ptr [rbp + 5960]
                        mov              qword ptr [rbp + 6008], rax
                        mov              rax, qword ptr [rbp + 6048]
                        mov              qword ptr [rbp + 5984], rax
                        mov              rax, qword ptr [rbp + 6056]
                        mov              qword ptr [rbp + 5992], rax
                        lea              rdi, [rbp + 5984]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5968], rax
                        mov              qword ptr [rbp + 5976], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n313_call_α
n312_call_β:            mov              r11, 229;                            jmp   connect$2F2_ω
                        .size            n312_call_bx, .-n312_call_bx
                        .type            n313_call_bx, @function
n313_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_call_α:            mov              r11, 230
                        mov              rax, qword ptr [rbp + 5968]
                        mov              qword ptr [rbp + 6128], rax
                        mov              rax, qword ptr [rbp + 5976]
                        mov              qword ptr [rbp + 6136], rax
                        mov              rax, qword ptr [rbp + 6064]
                        mov              qword ptr [rbp + 6112], rax
                        mov              rax, qword ptr [rbp + 6072]
                        mov              qword ptr [rbp + 6120], rax
                        mov              rax, qword ptr [rbp + 6160]
                        mov              qword ptr [rbp + 6096], rax
                        mov              rax, qword ptr [rbp + 6168]
                        mov              qword ptr [rbp + 6104], rax
                        lea              rdi, [rbp + 6096]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6080], rax
                        mov              qword ptr [rbp + 6088], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n314_call_α
n313_call_β:            mov              r11, 230;                            jmp   connect$2F2_ω
                        .size            n313_call_bx, .-n313_call_bx
                        .type            n314_call_bx, @function
n314_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_call_α:            mov              r11, 231
                        mov              rax, qword ptr [rbp + 6080]
                        mov              qword ptr [rbp + 6240], rax
                        mov              rax, qword ptr [rbp + 6088]
                        mov              qword ptr [rbp + 6248], rax
                        mov              rax, qword ptr [rbp + 6176]
                        mov              qword ptr [rbp + 6224], rax
                        mov              rax, qword ptr [rbp + 6184]
                        mov              qword ptr [rbp + 6232], rax
                        mov              rax, qword ptr [rbp + 6272]
                        mov              qword ptr [rbp + 6208], rax
                        mov              rax, qword ptr [rbp + 6280]
                        mov              qword ptr [rbp + 6216], rax
                        lea              rdi, [rbp + 6208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6192], rax
                        mov              qword ptr [rbp + 6200], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n315_call_α
n314_call_β:            mov              r11, 231;                            jmp   connect$2F2_step
                        .size            n314_call_bx, .-n314_call_bx
                        .type            n315_call_bx, @function
n315_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_call_α:            mov              r11, 232
                        mov              rax, qword ptr [rbp + 6192]
                        mov              qword ptr [rbp + 5888], rax
                        mov              rax, qword ptr [rbp + 6200]
                        mov              qword ptr [rbp + 5896], rax
                        mov              rax, qword ptr [rbp + 5920]
                        mov              qword ptr [rbp + 5872], rax
                        mov              rax, qword ptr [rbp + 5928]
                        mov              qword ptr [rbp + 5880], rax
                        lea              rdi, [rbp + 5872]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 5856], rax
                        mov              qword ptr [rbp + 5864], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n315_call_β:            mov              r11, 232;                            jmp   connect$2F2_step
                        .size            n315_call_bx, .-n315_call_bx
                        .type            n316_var_ref_bx, @function
n316_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_var_ref_α:         mov              r11, 233
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 6880], rax
                        mov              qword ptr [rbp + 6888], rdx;         jmp   n317_lit_string_α
                        .size            n316_var_ref_bx, .-n316_var_ref_bx
                        .type            n317_lit_string_bx, @function
n317_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_lit_string_α:      mov              r11, 234
                        mov              qword ptr [rbp + 6896], 2            # result
                        mov              dword ptr [rbp + 6900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_642_0]
                        mov              qword ptr [rbp + 6904], rax;         jmp   n318_call_α
.Llit_string_α_642_0:   .quad            .Llit_string_α_642_0_s
.Llit_string_α_642_0_s: .string          "m"
                        .size            n317_lit_string_bx, .-n317_lit_string_bx
                        .type            n318_call_bx, @function
n318_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_call_α:            mov              r11, 235
                        mov              rax, qword ptr [rbp + 6880]
                        mov              qword ptr [rbp + 6832], rax
                        mov              rax, qword ptr [rbp + 6888]
                        mov              qword ptr [rbp + 6840], rax
                        lea              rdi, [rbp + 6832]
                        mov              rsi, qword ptr [rip + .Lcall_α_643_2]
                                                                              jmp   .Lcall_α_643_3
.Lcall_α_643_2:         .quad            .Lcall_α_643_2_s
.Lcall_α_643_2_s:       .string          "m"
.Lcall_α_643_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6816], rax
                        mov              qword ptr [rbp + 6824], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n319_var_ref_α
n318_call_β:            mov              r11, 235;                            jmp   connect$2F2_step
                        .size            n318_call_bx, .-n318_call_bx
                        .type            n319_var_ref_bx, @function
n319_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_var_ref_α:         mov              r11, 236
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6448], rax
                        mov              qword ptr [rbp + 6456], rdx;         jmp   n320_lit_string_α
                        .size            n319_var_ref_bx, .-n319_var_ref_bx
                        .type            n320_lit_string_bx, @function
n320_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_lit_string_α:      mov              r11, 237
                        mov              qword ptr [rbp + 6800], 2            # result
                        mov              dword ptr [rbp + 6804], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_646_0]
                        mov              qword ptr [rbp + 6808], rax;         jmp   n321_lit_string_α
.Llit_string_α_646_0:   .quad            .Llit_string_α_646_0_s
.Llit_string_α_646_0_s: .string          "."
                        .size            n320_lit_string_bx, .-n320_lit_string_bx
                        .type            n321_lit_string_bx, @function
n321_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_lit_string_α:      mov              r11, 238
                        mov              qword ptr [rbp + 6704], 2            # result
                        mov              dword ptr [rbp + 6708], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_647_0]
                        mov              qword ptr [rbp + 6712], rax;         jmp   n322_lit_string_α
.Llit_string_α_647_0:   .quad            .Llit_string_α_647_0_s
.Llit_string_α_647_0_s: .string          "l"
                        .size            n321_lit_string_bx, .-n321_lit_string_bx
                        .type            n322_lit_string_bx, @function
n322_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n322_lit_string_α:      mov              r11, 239
                        mov              qword ptr [rbp + 6688], 2            # result
                        mov              dword ptr [rbp + 6692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_648_0]
                        mov              qword ptr [rbp + 6696], rax;         jmp   n323_lit_string_α
.Llit_string_α_648_0:   .quad            .Llit_string_α_648_0_s
.Llit_string_α_648_0_s: .string          "."
                        .size            n322_lit_string_bx, .-n322_lit_string_bx
                        .type            n323_lit_string_bx, @function
n323_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n323_lit_string_α:      mov              r11, 240
                        mov              qword ptr [rbp + 6592], 2            # result
                        mov              dword ptr [rbp + 6596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_649_0]
                        mov              qword ptr [rbp + 6600], rax;         jmp   n324_lit_string_α
.Llit_string_α_649_0:   .quad            .Llit_string_α_649_0_s
.Llit_string_α_649_0_s: .string          "n"
                        .size            n323_lit_string_bx, .-n323_lit_string_bx
                        .type            n324_lit_string_bx, @function
n324_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n324_lit_string_α:      mov              r11, 241
                        mov              qword ptr [rbp + 6576], 2            # result
                        mov              dword ptr [rbp + 6580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_650_0]
                        mov              qword ptr [rbp + 6584], rax;         jmp   n325_lit_string_α
.Llit_string_α_650_0:   .quad            .Llit_string_α_650_0_s
.Llit_string_α_650_0_s: .string          "."
                        .size            n324_lit_string_bx, .-n324_lit_string_bx
                        .type            n325_lit_string_bx, @function
n325_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n325_lit_string_α:      mov              r11, 242
                        mov              qword ptr [rbp + 6480], 2            # result
                        mov              dword ptr [rbp + 6484], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_651_0]
                        mov              qword ptr [rbp + 6488], rax;         jmp   n326_lit_string_α
.Llit_string_α_651_0:   .quad            .Llit_string_α_651_0_s
.Llit_string_α_651_0_s: .string          "e"
                        .size            n325_lit_string_bx, .-n325_lit_string_bx
                        .type            n326_lit_string_bx, @function
n326_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n326_lit_string_α:      mov              r11, 243
                        mov              qword ptr [rbp + 6464], 2            # result
                        mov              dword ptr [rbp + 6468], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_652_0]
                        mov              qword ptr [rbp + 6472], rax;         jmp   n327_call_α
.Llit_string_α_652_0:   .quad            .Llit_string_α_652_0_s
.Llit_string_α_652_0_s: .string          "[]"
                        .size            n326_lit_string_bx, .-n326_lit_string_bx
                        .type            n327_call_bx, @function
n327_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n327_call_α:            mov              r11, 244
                        mov              rax, qword ptr [rbp + 6464]
                        mov              qword ptr [rbp + 6544], rax
                        mov              rax, qword ptr [rbp + 6472]
                        mov              qword ptr [rbp + 6552], rax
                        mov              rax, qword ptr [rbp + 6480]
                        mov              qword ptr [rbp + 6528], rax
                        mov              rax, qword ptr [rbp + 6488]
                        mov              qword ptr [rbp + 6536], rax
                        mov              rax, qword ptr [rbp + 6576]
                        mov              qword ptr [rbp + 6512], rax
                        mov              rax, qword ptr [rbp + 6584]
                        mov              qword ptr [rbp + 6520], rax
                        lea              rdi, [rbp + 6512]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6496], rax
                        mov              qword ptr [rbp + 6504], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n328_call_α
n327_call_β:            mov              r11, 244;                            jmp   connect$2F2_ω
                        .size            n327_call_bx, .-n327_call_bx
                        .type            n328_call_bx, @function
n328_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n328_call_α:            mov              r11, 245
                        mov              rax, qword ptr [rbp + 6496]
                        mov              qword ptr [rbp + 6656], rax
                        mov              rax, qword ptr [rbp + 6504]
                        mov              qword ptr [rbp + 6664], rax
                        mov              rax, qword ptr [rbp + 6592]
                        mov              qword ptr [rbp + 6640], rax
                        mov              rax, qword ptr [rbp + 6600]
                        mov              qword ptr [rbp + 6648], rax
                        mov              rax, qword ptr [rbp + 6688]
                        mov              qword ptr [rbp + 6624], rax
                        mov              rax, qword ptr [rbp + 6696]
                        mov              qword ptr [rbp + 6632], rax
                        lea              rdi, [rbp + 6624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6608], rax
                        mov              qword ptr [rbp + 6616], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n329_call_α
n328_call_β:            mov              r11, 245;                            jmp   connect$2F2_ω
                        .size            n328_call_bx, .-n328_call_bx
                        .type            n329_call_bx, @function
n329_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n329_call_α:            mov              r11, 246
                        mov              rax, qword ptr [rbp + 6608]
                        mov              qword ptr [rbp + 6768], rax
                        mov              rax, qword ptr [rbp + 6616]
                        mov              qword ptr [rbp + 6776], rax
                        mov              rax, qword ptr [rbp + 6704]
                        mov              qword ptr [rbp + 6752], rax
                        mov              rax, qword ptr [rbp + 6712]
                        mov              qword ptr [rbp + 6760], rax
                        mov              rax, qword ptr [rbp + 6800]
                        mov              qword ptr [rbp + 6736], rax
                        mov              rax, qword ptr [rbp + 6808]
                        mov              qword ptr [rbp + 6744], rax
                        lea              rdi, [rbp + 6736]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6720], rax
                        mov              qword ptr [rbp + 6728], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n330_call_α
n329_call_β:            mov              r11, 246;                            jmp   connect$2F2_step
                        .size            n329_call_bx, .-n329_call_bx
                        .type            n330_call_bx, @function
n330_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n330_call_α:            mov              r11, 247
                        mov              rax, qword ptr [rbp + 6720]
                        mov              qword ptr [rbp + 6416], rax
                        mov              rax, qword ptr [rbp + 6728]
                        mov              qword ptr [rbp + 6424], rax
                        mov              rax, qword ptr [rbp + 6448]
                        mov              qword ptr [rbp + 6400], rax
                        mov              rax, qword ptr [rbp + 6456]
                        mov              qword ptr [rbp + 6408], rax
                        lea              rdi, [rbp + 6400]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 6384], rax
                        mov              qword ptr [rbp + 6392], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n330_call_β:            mov              r11, 247;                            jmp   connect$2F2_step
                        .size            n330_call_bx, .-n330_call_bx
                        .type            n331_var_ref_bx, @function
n331_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n331_var_ref_α:         mov              r11, 248
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7408], rax
                        mov              qword ptr [rbp + 7416], rdx;         jmp   n332_lit_string_α
                        .size            n331_var_ref_bx, .-n331_var_ref_bx
                        .type            n332_lit_string_bx, @function
n332_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n332_lit_string_α:      mov              r11, 249
                        mov              qword ptr [rbp + 7424], 2            # result
                        mov              dword ptr [rbp + 7428], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_659_0]
                        mov              qword ptr [rbp + 7432], rax;         jmp   n333_call_α
.Llit_string_α_659_0:   .quad            .Llit_string_α_659_0_s
.Llit_string_α_659_0_s: .string          "n"
                        .size            n332_lit_string_bx, .-n332_lit_string_bx
                        .type            n333_call_bx, @function
n333_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n333_call_α:            mov              r11, 250
                        mov              rax, qword ptr [rbp + 7408]
                        mov              qword ptr [rbp + 7360], rax
                        mov              rax, qword ptr [rbp + 7416]
                        mov              qword ptr [rbp + 7368], rax
                        lea              rdi, [rbp + 7360]
                        mov              rsi, qword ptr [rip + .Lcall_α_660_2]
                                                                              jmp   .Lcall_α_660_3
.Lcall_α_660_2:         .quad            .Lcall_α_660_2_s
.Lcall_α_660_2_s:       .string          "n"
.Lcall_α_660_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7344], rax
                        mov              qword ptr [rbp + 7352], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n334_var_ref_α
n333_call_β:            mov              r11, 250;                            jmp   connect$2F2_step
                        .size            n333_call_bx, .-n333_call_bx
                        .type            n334_var_ref_bx, @function
n334_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n334_var_ref_α:         mov              r11, 251
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 6976], rax
                        mov              qword ptr [rbp + 6984], rdx;         jmp   n335_lit_string_α
                        .size            n334_var_ref_bx, .-n334_var_ref_bx
                        .type            n335_lit_string_bx, @function
n335_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n335_lit_string_α:      mov              r11, 252
                        mov              qword ptr [rbp + 7328], 2            # result
                        mov              dword ptr [rbp + 7332], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_663_0]
                        mov              qword ptr [rbp + 7336], rax;         jmp   n336_lit_string_α
.Llit_string_α_663_0:   .quad            .Llit_string_α_663_0_s
.Llit_string_α_663_0_s: .string          "."
                        .size            n335_lit_string_bx, .-n335_lit_string_bx
                        .type            n336_lit_string_bx, @function
n336_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n336_lit_string_α:      mov              r11, 253
                        mov              qword ptr [rbp + 7232], 2            # result
                        mov              dword ptr [rbp + 7236], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_664_0]
                        mov              qword ptr [rbp + 7240], rax;         jmp   n337_lit_string_α
.Llit_string_α_664_0:   .quad            .Llit_string_α_664_0_s
.Llit_string_α_664_0_s: .string          "m"
                        .size            n336_lit_string_bx, .-n336_lit_string_bx
                        .type            n337_lit_string_bx, @function
n337_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n337_lit_string_α:      mov              r11, 254
                        mov              qword ptr [rbp + 7216], 2            # result
                        mov              dword ptr [rbp + 7220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_665_0]
                        mov              qword ptr [rbp + 7224], rax;         jmp   n338_lit_string_α
.Llit_string_α_665_0:   .quad            .Llit_string_α_665_0_s
.Llit_string_α_665_0_s: .string          "."
                        .size            n337_lit_string_bx, .-n337_lit_string_bx
                        .type            n338_lit_string_bx, @function
n338_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n338_lit_string_α:      mov              r11, 255
                        mov              qword ptr [rbp + 7120], 2            # result
                        mov              dword ptr [rbp + 7124], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_666_0]
                        mov              qword ptr [rbp + 7128], rax;         jmp   n339_lit_string_α
.Llit_string_α_666_0:   .quad            .Llit_string_α_666_0_s
.Llit_string_α_666_0_s: .string          "o"
                        .size            n338_lit_string_bx, .-n338_lit_string_bx
                        .type            n339_lit_string_bx, @function
n339_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n339_lit_string_α:      mov              r11, 256
                        mov              qword ptr [rbp + 7104], 2            # result
                        mov              dword ptr [rbp + 7108], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_667_0]
                        mov              qword ptr [rbp + 7112], rax;         jmp   n340_lit_string_α
.Llit_string_α_667_0:   .quad            .Llit_string_α_667_0_s
.Llit_string_α_667_0_s: .string          "."
                        .size            n339_lit_string_bx, .-n339_lit_string_bx
                        .type            n340_lit_string_bx, @function
n340_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n340_lit_string_α:      mov              r11, 257
                        mov              qword ptr [rbp + 7008], 2            # result
                        mov              dword ptr [rbp + 7012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_668_0]
                        mov              qword ptr [rbp + 7016], rax;         jmp   n341_lit_string_α
.Llit_string_α_668_0:   .quad            .Llit_string_α_668_0_s
.Llit_string_α_668_0_s: .string          "g"
                        .size            n340_lit_string_bx, .-n340_lit_string_bx
                        .type            n341_lit_string_bx, @function
n341_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n341_lit_string_α:      mov              r11, 258
                        mov              qword ptr [rbp + 6992], 2            # result
                        mov              dword ptr [rbp + 6996], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_669_0]
                        mov              qword ptr [rbp + 7000], rax;         jmp   n342_call_α
.Llit_string_α_669_0:   .quad            .Llit_string_α_669_0_s
.Llit_string_α_669_0_s: .string          "[]"
                        .size            n341_lit_string_bx, .-n341_lit_string_bx
                        .type            n342_call_bx, @function
n342_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n342_call_α:            mov              r11, 259
                        mov              rax, qword ptr [rbp + 6992]
                        mov              qword ptr [rbp + 7072], rax
                        mov              rax, qword ptr [rbp + 7000]
                        mov              qword ptr [rbp + 7080], rax
                        mov              rax, qword ptr [rbp + 7008]
                        mov              qword ptr [rbp + 7056], rax
                        mov              rax, qword ptr [rbp + 7016]
                        mov              qword ptr [rbp + 7064], rax
                        mov              rax, qword ptr [rbp + 7104]
                        mov              qword ptr [rbp + 7040], rax
                        mov              rax, qword ptr [rbp + 7112]
                        mov              qword ptr [rbp + 7048], rax
                        lea              rdi, [rbp + 7040]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7024], rax
                        mov              qword ptr [rbp + 7032], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n343_call_α
n342_call_β:            mov              r11, 259;                            jmp   connect$2F2_ω
                        .size            n342_call_bx, .-n342_call_bx
                        .type            n343_call_bx, @function
n343_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n343_call_α:            mov              r11, 260
                        mov              rax, qword ptr [rbp + 7024]
                        mov              qword ptr [rbp + 7184], rax
                        mov              rax, qword ptr [rbp + 7032]
                        mov              qword ptr [rbp + 7192], rax
                        mov              rax, qword ptr [rbp + 7120]
                        mov              qword ptr [rbp + 7168], rax
                        mov              rax, qword ptr [rbp + 7128]
                        mov              qword ptr [rbp + 7176], rax
                        mov              rax, qword ptr [rbp + 7216]
                        mov              qword ptr [rbp + 7152], rax
                        mov              rax, qword ptr [rbp + 7224]
                        mov              qword ptr [rbp + 7160], rax
                        lea              rdi, [rbp + 7152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7136], rax
                        mov              qword ptr [rbp + 7144], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n344_call_α
n343_call_β:            mov              r11, 260;                            jmp   connect$2F2_ω
                        .size            n343_call_bx, .-n343_call_bx
                        .type            n344_call_bx, @function
n344_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n344_call_α:            mov              r11, 261
                        mov              rax, qword ptr [rbp + 7136]
                        mov              qword ptr [rbp + 7296], rax
                        mov              rax, qword ptr [rbp + 7144]
                        mov              qword ptr [rbp + 7304], rax
                        mov              rax, qword ptr [rbp + 7232]
                        mov              qword ptr [rbp + 7280], rax
                        mov              rax, qword ptr [rbp + 7240]
                        mov              qword ptr [rbp + 7288], rax
                        mov              rax, qword ptr [rbp + 7328]
                        mov              qword ptr [rbp + 7264], rax
                        mov              rax, qword ptr [rbp + 7336]
                        mov              qword ptr [rbp + 7272], rax
                        lea              rdi, [rbp + 7264]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7248], rax
                        mov              qword ptr [rbp + 7256], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n345_call_α
n344_call_β:            mov              r11, 261;                            jmp   connect$2F2_step
                        .size            n344_call_bx, .-n344_call_bx
                        .type            n345_call_bx, @function
n345_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n345_call_α:            mov              r11, 262
                        mov              rax, qword ptr [rbp + 7248]
                        mov              qword ptr [rbp + 6944], rax
                        mov              rax, qword ptr [rbp + 7256]
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
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n345_call_β:            mov              r11, 262;                            jmp   connect$2F2_step
                        .size            n345_call_bx, .-n345_call_bx
                        .type            n346_var_ref_bx, @function
n346_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n346_var_ref_α:         mov              r11, 263
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 7936], rax
                        mov              qword ptr [rbp + 7944], rdx;         jmp   n347_lit_string_α
                        .size            n346_var_ref_bx, .-n346_var_ref_bx
                        .type            n347_lit_string_bx, @function
n347_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n347_lit_string_α:      mov              r11, 264
                        mov              qword ptr [rbp + 7952], 2            # result
                        mov              dword ptr [rbp + 7956], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_676_0]
                        mov              qword ptr [rbp + 7960], rax;         jmp   n348_call_α
.Llit_string_α_676_0:   .quad            .Llit_string_α_676_0_s
.Llit_string_α_676_0_s: .string          "o"
                        .size            n347_lit_string_bx, .-n347_lit_string_bx
                        .type            n348_call_bx, @function
n348_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n348_call_α:            mov              r11, 265
                        mov              rax, qword ptr [rbp + 7936]
                        mov              qword ptr [rbp + 7888], rax
                        mov              rax, qword ptr [rbp + 7944]
                        mov              qword ptr [rbp + 7896], rax
                        lea              rdi, [rbp + 7888]
                        mov              rsi, qword ptr [rip + .Lcall_α_677_2]
                                                                              jmp   .Lcall_α_677_3
.Lcall_α_677_2:         .quad            .Lcall_α_677_2_s
.Lcall_α_677_2_s:       .string          "o"
.Lcall_α_677_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7872], rax
                        mov              qword ptr [rbp + 7880], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n349_var_ref_α
n348_call_β:            mov              r11, 265;                            jmp   connect$2F2_step
                        .size            n348_call_bx, .-n348_call_bx
                        .type            n349_var_ref_bx, @function
n349_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n349_var_ref_α:         mov              r11, 266
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 7504], rax
                        mov              qword ptr [rbp + 7512], rdx;         jmp   n350_lit_string_α
                        .size            n349_var_ref_bx, .-n349_var_ref_bx
                        .type            n350_lit_string_bx, @function
n350_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n350_lit_string_α:      mov              r11, 267
                        mov              qword ptr [rbp + 7856], 2            # result
                        mov              dword ptr [rbp + 7860], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_680_0]
                        mov              qword ptr [rbp + 7864], rax;         jmp   n351_lit_string_α
.Llit_string_α_680_0:   .quad            .Llit_string_α_680_0_s
.Llit_string_α_680_0_s: .string          "."
                        .size            n350_lit_string_bx, .-n350_lit_string_bx
                        .type            n351_lit_string_bx, @function
n351_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n351_lit_string_α:      mov              r11, 268
                        mov              qword ptr [rbp + 7760], 2            # result
                        mov              dword ptr [rbp + 7764], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_681_0]
                        mov              qword ptr [rbp + 7768], rax;         jmp   n352_lit_string_α
.Llit_string_α_681_0:   .quad            .Llit_string_α_681_0_s
.Llit_string_α_681_0_s: .string          "n"
                        .size            n351_lit_string_bx, .-n351_lit_string_bx
                        .type            n352_lit_string_bx, @function
n352_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n352_lit_string_α:      mov              r11, 269
                        mov              qword ptr [rbp + 7744], 2            # result
                        mov              dword ptr [rbp + 7748], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_682_0]
                        mov              qword ptr [rbp + 7752], rax;         jmp   n353_lit_string_α
.Llit_string_α_682_0:   .quad            .Llit_string_α_682_0_s
.Llit_string_α_682_0_s: .string          "."
                        .size            n352_lit_string_bx, .-n352_lit_string_bx
                        .type            n353_lit_string_bx, @function
n353_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n353_lit_string_α:      mov              r11, 270
                        mov              qword ptr [rbp + 7648], 2            # result
                        mov              dword ptr [rbp + 7652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_683_0]
                        mov              qword ptr [rbp + 7656], rax;         jmp   n354_lit_string_α
.Llit_string_α_683_0:   .quad            .Llit_string_α_683_0_s
.Llit_string_α_683_0_s: .string          "k"
                        .size            n353_lit_string_bx, .-n353_lit_string_bx
                        .type            n354_lit_string_bx, @function
n354_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n354_lit_string_α:      mov              r11, 271
                        mov              qword ptr [rbp + 7632], 2            # result
                        mov              dword ptr [rbp + 7636], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_684_0]
                        mov              qword ptr [rbp + 7640], rax;         jmp   n355_lit_string_α
.Llit_string_α_684_0:   .quad            .Llit_string_α_684_0_s
.Llit_string_α_684_0_s: .string          "."
                        .size            n354_lit_string_bx, .-n354_lit_string_bx
                        .type            n355_lit_string_bx, @function
n355_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n355_lit_string_α:      mov              r11, 272
                        mov              qword ptr [rbp + 7536], 2            # result
                        mov              dword ptr [rbp + 7540], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_685_0]
                        mov              qword ptr [rbp + 7544], rax;         jmp   n356_lit_string_α
.Llit_string_α_685_0:   .quad            .Llit_string_α_685_0_s
.Llit_string_α_685_0_s: .string          "i"
                        .size            n355_lit_string_bx, .-n355_lit_string_bx
                        .type            n356_lit_string_bx, @function
n356_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n356_lit_string_α:      mov              r11, 273
                        mov              qword ptr [rbp + 7520], 2            # result
                        mov              dword ptr [rbp + 7524], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_686_0]
                        mov              qword ptr [rbp + 7528], rax;         jmp   n357_call_α
.Llit_string_α_686_0:   .quad            .Llit_string_α_686_0_s
.Llit_string_α_686_0_s: .string          "[]"
                        .size            n356_lit_string_bx, .-n356_lit_string_bx
                        .type            n357_call_bx, @function
n357_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n357_call_α:            mov              r11, 274
                        mov              rax, qword ptr [rbp + 7520]
                        mov              qword ptr [rbp + 7600], rax
                        mov              rax, qword ptr [rbp + 7528]
                        mov              qword ptr [rbp + 7608], rax
                        mov              rax, qword ptr [rbp + 7536]
                        mov              qword ptr [rbp + 7584], rax
                        mov              rax, qword ptr [rbp + 7544]
                        mov              qword ptr [rbp + 7592], rax
                        mov              rax, qword ptr [rbp + 7632]
                        mov              qword ptr [rbp + 7568], rax
                        mov              rax, qword ptr [rbp + 7640]
                        mov              qword ptr [rbp + 7576], rax
                        lea              rdi, [rbp + 7568]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7552], rax
                        mov              qword ptr [rbp + 7560], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n358_call_α
n357_call_β:            mov              r11, 274;                            jmp   connect$2F2_ω
                        .size            n357_call_bx, .-n357_call_bx
                        .type            n358_call_bx, @function
n358_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n358_call_α:            mov              r11, 275
                        mov              rax, qword ptr [rbp + 7552]
                        mov              qword ptr [rbp + 7712], rax
                        mov              rax, qword ptr [rbp + 7560]
                        mov              qword ptr [rbp + 7720], rax
                        mov              rax, qword ptr [rbp + 7648]
                        mov              qword ptr [rbp + 7696], rax
                        mov              rax, qword ptr [rbp + 7656]
                        mov              qword ptr [rbp + 7704], rax
                        mov              rax, qword ptr [rbp + 7744]
                        mov              qword ptr [rbp + 7680], rax
                        mov              rax, qword ptr [rbp + 7752]
                        mov              qword ptr [rbp + 7688], rax
                        lea              rdi, [rbp + 7680]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7664], rax
                        mov              qword ptr [rbp + 7672], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n359_call_α
n358_call_β:            mov              r11, 275;                            jmp   connect$2F2_ω
                        .size            n358_call_bx, .-n358_call_bx
                        .type            n359_call_bx, @function
n359_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n359_call_α:            mov              r11, 276
                        mov              rax, qword ptr [rbp + 7664]
                        mov              qword ptr [rbp + 7824], rax
                        mov              rax, qword ptr [rbp + 7672]
                        mov              qword ptr [rbp + 7832], rax
                        mov              rax, qword ptr [rbp + 7760]
                        mov              qword ptr [rbp + 7808], rax
                        mov              rax, qword ptr [rbp + 7768]
                        mov              qword ptr [rbp + 7816], rax
                        mov              rax, qword ptr [rbp + 7856]
                        mov              qword ptr [rbp + 7792], rax
                        mov              rax, qword ptr [rbp + 7864]
                        mov              qword ptr [rbp + 7800], rax
                        lea              rdi, [rbp + 7792]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7776], rax
                        mov              qword ptr [rbp + 7784], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n360_call_α
n359_call_β:            mov              r11, 276;                            jmp   connect$2F2_step
                        .size            n359_call_bx, .-n359_call_bx
                        .type            n360_call_bx, @function
n360_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n360_call_α:            mov              r11, 277
                        mov              rax, qword ptr [rbp + 7776]
                        mov              qword ptr [rbp + 7472], rax
                        mov              rax, qword ptr [rbp + 7784]
                        mov              qword ptr [rbp + 7480], rax
                        mov              rax, qword ptr [rbp + 7504]
                        mov              qword ptr [rbp + 7456], rax
                        mov              rax, qword ptr [rbp + 7512]
                        mov              qword ptr [rbp + 7464], rax
                        lea              rdi, [rbp + 7456]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7440], rax
                        mov              qword ptr [rbp + 7448], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n360_call_β:            mov              r11, 277;                            jmp   connect$2F2_step
                        .size            n360_call_bx, .-n360_call_bx
                        .type            n361_var_ref_bx, @function
n361_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:         mov              r11, 278
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8464], rax
                        mov              qword ptr [rbp + 8472], rdx;         jmp   n362_lit_string_α
                        .size            n361_var_ref_bx, .-n361_var_ref_bx
                        .type            n362_lit_string_bx, @function
n362_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:      mov              r11, 279
                        mov              qword ptr [rbp + 8480], 2            # result
                        mov              dword ptr [rbp + 8484], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_693_0]
                        mov              qword ptr [rbp + 8488], rax;         jmp   n363_call_α
.Llit_string_α_693_0:   .quad            .Llit_string_α_693_0_s
.Llit_string_α_693_0_s: .string          "p"
                        .size            n362_lit_string_bx, .-n362_lit_string_bx
                        .type            n363_call_bx, @function
n363_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_call_α:            mov              r11, 280
                        mov              rax, qword ptr [rbp + 8464]
                        mov              qword ptr [rbp + 8416], rax
                        mov              rax, qword ptr [rbp + 8472]
                        mov              qword ptr [rbp + 8424], rax
                        lea              rdi, [rbp + 8416]
                        mov              rsi, qword ptr [rip + .Lcall_α_694_2]
                                                                              jmp   .Lcall_α_694_3
.Lcall_α_694_2:         .quad            .Lcall_α_694_2_s
.Lcall_α_694_2_s:       .string          "p"
.Lcall_α_694_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8400], rax
                        mov              qword ptr [rbp + 8408], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n364_var_ref_α
n363_call_β:            mov              r11, 280;                            jmp   connect$2F2_step
                        .size            n363_call_bx, .-n363_call_bx
                        .type            n364_var_ref_bx, @function
n364_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:         mov              r11, 281
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 8032], rax
                        mov              qword ptr [rbp + 8040], rdx;         jmp   n365_lit_string_α
                        .size            n364_var_ref_bx, .-n364_var_ref_bx
                        .type            n365_lit_string_bx, @function
n365_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:      mov              r11, 282
                        mov              qword ptr [rbp + 8384], 2            # result
                        mov              dword ptr [rbp + 8388], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_697_0]
                        mov              qword ptr [rbp + 8392], rax;         jmp   n366_lit_string_α
.Llit_string_α_697_0:   .quad            .Llit_string_α_697_0_s
.Llit_string_α_697_0_s: .string          "."
                        .size            n365_lit_string_bx, .-n365_lit_string_bx
                        .type            n366_lit_string_bx, @function
n366_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_lit_string_α:      mov              r11, 283
                        mov              qword ptr [rbp + 8288], 2            # result
                        mov              dword ptr [rbp + 8292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_698_0]
                        mov              qword ptr [rbp + 8296], rax;         jmp   n367_lit_string_α
.Llit_string_α_698_0:   .quad            .Llit_string_α_698_0_s
.Llit_string_α_698_0_s: .string          "b"
                        .size            n366_lit_string_bx, .-n366_lit_string_bx
                        .type            n367_lit_string_bx, @function
n367_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_lit_string_α:      mov              r11, 284
                        mov              qword ptr [rbp + 8272], 2            # result
                        mov              dword ptr [rbp + 8276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_699_0]
                        mov              qword ptr [rbp + 8280], rax;         jmp   n368_lit_string_α
.Llit_string_α_699_0:   .quad            .Llit_string_α_699_0_s
.Llit_string_α_699_0_s: .string          "."
                        .size            n367_lit_string_bx, .-n367_lit_string_bx
                        .type            n368_lit_string_bx, @function
n368_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_lit_string_α:      mov              r11, 285
                        mov              qword ptr [rbp + 8176], 2            # result
                        mov              dword ptr [rbp + 8180], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_700_0]
                        mov              qword ptr [rbp + 8184], rax;         jmp   n369_lit_string_α
.Llit_string_α_700_0:   .quad            .Llit_string_α_700_0_s
.Llit_string_α_700_0_s: .string          "q"
                        .size            n368_lit_string_bx, .-n368_lit_string_bx
                        .type            n369_lit_string_bx, @function
n369_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_lit_string_α:      mov              r11, 286
                        mov              qword ptr [rbp + 8160], 2            # result
                        mov              dword ptr [rbp + 8164], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_701_0]
                        mov              qword ptr [rbp + 8168], rax;         jmp   n370_lit_string_α
.Llit_string_α_701_0:   .quad            .Llit_string_α_701_0_s
.Llit_string_α_701_0_s: .string          "."
                        .size            n369_lit_string_bx, .-n369_lit_string_bx
                        .type            n370_lit_string_bx, @function
n370_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_lit_string_α:      mov              r11, 287
                        mov              qword ptr [rbp + 8064], 2            # result
                        mov              dword ptr [rbp + 8068], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_702_0]
                        mov              qword ptr [rbp + 8072], rax;         jmp   n371_lit_string_α
.Llit_string_α_702_0:   .quad            .Llit_string_α_702_0_s
.Llit_string_α_702_0_s: .string          "t"
                        .size            n370_lit_string_bx, .-n370_lit_string_bx
                        .type            n371_lit_string_bx, @function
n371_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      mov              r11, 288
                        mov              qword ptr [rbp + 8048], 2            # result
                        mov              dword ptr [rbp + 8052], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_703_0]
                        mov              qword ptr [rbp + 8056], rax;         jmp   n372_call_α
.Llit_string_α_703_0:   .quad            .Llit_string_α_703_0_s
.Llit_string_α_703_0_s: .string          "[]"
                        .size            n371_lit_string_bx, .-n371_lit_string_bx
                        .type            n372_call_bx, @function
n372_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_call_α:            mov              r11, 289
                        mov              rax, qword ptr [rbp + 8048]
                        mov              qword ptr [rbp + 8128], rax
                        mov              rax, qword ptr [rbp + 8056]
                        mov              qword ptr [rbp + 8136], rax
                        mov              rax, qword ptr [rbp + 8064]
                        mov              qword ptr [rbp + 8112], rax
                        mov              rax, qword ptr [rbp + 8072]
                        mov              qword ptr [rbp + 8120], rax
                        mov              rax, qword ptr [rbp + 8160]
                        mov              qword ptr [rbp + 8096], rax
                        mov              rax, qword ptr [rbp + 8168]
                        mov              qword ptr [rbp + 8104], rax
                        lea              rdi, [rbp + 8096]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8080], rax
                        mov              qword ptr [rbp + 8088], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n373_call_α
n372_call_β:            mov              r11, 289;                            jmp   connect$2F2_ω
                        .size            n372_call_bx, .-n372_call_bx
                        .type            n373_call_bx, @function
n373_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_call_α:            mov              r11, 290
                        mov              rax, qword ptr [rbp + 8080]
                        mov              qword ptr [rbp + 8240], rax
                        mov              rax, qword ptr [rbp + 8088]
                        mov              qword ptr [rbp + 8248], rax
                        mov              rax, qword ptr [rbp + 8176]
                        mov              qword ptr [rbp + 8224], rax
                        mov              rax, qword ptr [rbp + 8184]
                        mov              qword ptr [rbp + 8232], rax
                        mov              rax, qword ptr [rbp + 8272]
                        mov              qword ptr [rbp + 8208], rax
                        mov              rax, qword ptr [rbp + 8280]
                        mov              qword ptr [rbp + 8216], rax
                        lea              rdi, [rbp + 8208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8192], rax
                        mov              qword ptr [rbp + 8200], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n374_call_α
n373_call_β:            mov              r11, 290;                            jmp   connect$2F2_ω
                        .size            n373_call_bx, .-n373_call_bx
                        .type            n374_call_bx, @function
n374_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            mov              r11, 291
                        mov              rax, qword ptr [rbp + 8192]
                        mov              qword ptr [rbp + 8352], rax
                        mov              rax, qword ptr [rbp + 8200]
                        mov              qword ptr [rbp + 8360], rax
                        mov              rax, qword ptr [rbp + 8288]
                        mov              qword ptr [rbp + 8336], rax
                        mov              rax, qword ptr [rbp + 8296]
                        mov              qword ptr [rbp + 8344], rax
                        mov              rax, qword ptr [rbp + 8384]
                        mov              qword ptr [rbp + 8320], rax
                        mov              rax, qword ptr [rbp + 8392]
                        mov              qword ptr [rbp + 8328], rax
                        lea              rdi, [rbp + 8320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8304], rax
                        mov              qword ptr [rbp + 8312], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n375_call_α
n374_call_β:            mov              r11, 291;                            jmp   connect$2F2_step
                        .size            n374_call_bx, .-n374_call_bx
                        .type            n375_call_bx, @function
n375_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:            mov              r11, 292
                        mov              rax, qword ptr [rbp + 8304]
                        mov              qword ptr [rbp + 8000], rax
                        mov              rax, qword ptr [rbp + 8312]
                        mov              qword ptr [rbp + 8008], rax
                        mov              rax, qword ptr [rbp + 8032]
                        mov              qword ptr [rbp + 7984], rax
                        mov              rax, qword ptr [rbp + 8040]
                        mov              qword ptr [rbp + 7992], rax
                        lea              rdi, [rbp + 7984]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 7968], rax
                        mov              qword ptr [rbp + 7976], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n375_call_β:            mov              r11, 292;                            jmp   connect$2F2_step
                        .size            n375_call_bx, .-n375_call_bx
                        .type            n376_var_ref_bx, @function
n376_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:         mov              r11, 293
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 8992], rax
                        mov              qword ptr [rbp + 9000], rdx;         jmp   n377_lit_string_α
                        .size            n376_var_ref_bx, .-n376_var_ref_bx
                        .type            n377_lit_string_bx, @function
n377_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_lit_string_α:      mov              r11, 294
                        mov              qword ptr [rbp + 9008], 2            # result
                        mov              dword ptr [rbp + 9012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_710_0]
                        mov              qword ptr [rbp + 9016], rax;         jmp   n378_call_α
.Llit_string_α_710_0:   .quad            .Llit_string_α_710_0_s
.Llit_string_α_710_0_s: .string          "q"
                        .size            n377_lit_string_bx, .-n377_lit_string_bx
                        .type            n378_call_bx, @function
n378_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_call_α:            mov              r11, 295
                        mov              rax, qword ptr [rbp + 8992]
                        mov              qword ptr [rbp + 8944], rax
                        mov              rax, qword ptr [rbp + 9000]
                        mov              qword ptr [rbp + 8952], rax
                        lea              rdi, [rbp + 8944]
                        mov              rsi, qword ptr [rip + .Lcall_α_711_2]
                                                                              jmp   .Lcall_α_711_3
.Lcall_α_711_2:         .quad            .Lcall_α_711_2_s
.Lcall_α_711_2_s:       .string          "q"
.Lcall_α_711_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8928], rax
                        mov              qword ptr [rbp + 8936], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n379_var_ref_α
n378_call_β:            mov              r11, 295;                            jmp   connect$2F2_step
                        .size            n378_call_bx, .-n378_call_bx
                        .type            n379_var_ref_bx, @function
n379_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_var_ref_α:         mov              r11, 296
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 8560], rax
                        mov              qword ptr [rbp + 8568], rdx;         jmp   n380_lit_string_α
                        .size            n379_var_ref_bx, .-n379_var_ref_bx
                        .type            n380_lit_string_bx, @function
n380_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_lit_string_α:      mov              r11, 297
                        mov              qword ptr [rbp + 8912], 2            # result
                        mov              dword ptr [rbp + 8916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_714_0]
                        mov              qword ptr [rbp + 8920], rax;         jmp   n381_lit_string_α
.Llit_string_α_714_0:   .quad            .Llit_string_α_714_0_s
.Llit_string_α_714_0_s: .string          "."
                        .size            n380_lit_string_bx, .-n380_lit_string_bx
                        .type            n381_lit_string_bx, @function
n381_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_lit_string_α:      mov              r11, 298
                        mov              qword ptr [rbp + 8816], 2            # result
                        mov              dword ptr [rbp + 8820], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_715_0]
                        mov              qword ptr [rbp + 8824], rax;         jmp   n382_lit_string_α
.Llit_string_α_715_0:   .quad            .Llit_string_α_715_0_s
.Llit_string_α_715_0_s: .string          "p"
                        .size            n381_lit_string_bx, .-n381_lit_string_bx
                        .type            n382_lit_string_bx, @function
n382_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_lit_string_α:      mov              r11, 299
                        mov              qword ptr [rbp + 8800], 2            # result
                        mov              dword ptr [rbp + 8804], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_716_0]
                        mov              qword ptr [rbp + 8808], rax;         jmp   n383_lit_string_α
.Llit_string_α_716_0:   .quad            .Llit_string_α_716_0_s
.Llit_string_α_716_0_s: .string          "."
                        .size            n382_lit_string_bx, .-n382_lit_string_bx
                        .type            n383_lit_string_bx, @function
n383_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n383_lit_string_α:      mov              r11, 300
                        mov              qword ptr [rbp + 8704], 2            # result
                        mov              dword ptr [rbp + 8708], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_717_0]
                        mov              qword ptr [rbp + 8712], rax;         jmp   n384_lit_string_α
.Llit_string_α_717_0:   .quad            .Llit_string_α_717_0_s
.Llit_string_α_717_0_s: .string          "r"
                        .size            n383_lit_string_bx, .-n383_lit_string_bx
                        .type            n384_lit_string_bx, @function
n384_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n384_lit_string_α:      mov              r11, 301
                        mov              qword ptr [rbp + 8688], 2            # result
                        mov              dword ptr [rbp + 8692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_718_0]
                        mov              qword ptr [rbp + 8696], rax;         jmp   n385_lit_string_α
.Llit_string_α_718_0:   .quad            .Llit_string_α_718_0_s
.Llit_string_α_718_0_s: .string          "."
                        .size            n384_lit_string_bx, .-n384_lit_string_bx
                        .type            n385_lit_string_bx, @function
n385_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n385_lit_string_α:      mov              r11, 302
                        mov              qword ptr [rbp + 8592], 2            # result
                        mov              dword ptr [rbp + 8596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_719_0]
                        mov              qword ptr [rbp + 8600], rax;         jmp   n386_lit_string_α
.Llit_string_α_719_0:   .quad            .Llit_string_α_719_0_s
.Llit_string_α_719_0_s: .string          "d"
                        .size            n385_lit_string_bx, .-n385_lit_string_bx
                        .type            n386_lit_string_bx, @function
n386_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n386_lit_string_α:      mov              r11, 303
                        mov              qword ptr [rbp + 8576], 2            # result
                        mov              dword ptr [rbp + 8580], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_720_0]
                        mov              qword ptr [rbp + 8584], rax;         jmp   n387_call_α
.Llit_string_α_720_0:   .quad            .Llit_string_α_720_0_s
.Llit_string_α_720_0_s: .string          "[]"
                        .size            n386_lit_string_bx, .-n386_lit_string_bx
                        .type            n387_call_bx, @function
n387_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n387_call_α:            mov              r11, 304
                        mov              rax, qword ptr [rbp + 8576]
                        mov              qword ptr [rbp + 8656], rax
                        mov              rax, qword ptr [rbp + 8584]
                        mov              qword ptr [rbp + 8664], rax
                        mov              rax, qword ptr [rbp + 8592]
                        mov              qword ptr [rbp + 8640], rax
                        mov              rax, qword ptr [rbp + 8600]
                        mov              qword ptr [rbp + 8648], rax
                        mov              rax, qword ptr [rbp + 8688]
                        mov              qword ptr [rbp + 8624], rax
                        mov              rax, qword ptr [rbp + 8696]
                        mov              qword ptr [rbp + 8632], rax
                        lea              rdi, [rbp + 8624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8608], rax
                        mov              qword ptr [rbp + 8616], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n388_call_α
n387_call_β:            mov              r11, 304;                            jmp   connect$2F2_ω
                        .size            n387_call_bx, .-n387_call_bx
                        .type            n388_call_bx, @function
n388_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n388_call_α:            mov              r11, 305
                        mov              rax, qword ptr [rbp + 8608]
                        mov              qword ptr [rbp + 8768], rax
                        mov              rax, qword ptr [rbp + 8616]
                        mov              qword ptr [rbp + 8776], rax
                        mov              rax, qword ptr [rbp + 8704]
                        mov              qword ptr [rbp + 8752], rax
                        mov              rax, qword ptr [rbp + 8712]
                        mov              qword ptr [rbp + 8760], rax
                        mov              rax, qword ptr [rbp + 8800]
                        mov              qword ptr [rbp + 8736], rax
                        mov              rax, qword ptr [rbp + 8808]
                        mov              qword ptr [rbp + 8744], rax
                        lea              rdi, [rbp + 8736]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8720], rax
                        mov              qword ptr [rbp + 8728], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n389_call_α
n388_call_β:            mov              r11, 305;                            jmp   connect$2F2_ω
                        .size            n388_call_bx, .-n388_call_bx
                        .type            n389_call_bx, @function
n389_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n389_call_α:            mov              r11, 306
                        mov              rax, qword ptr [rbp + 8720]
                        mov              qword ptr [rbp + 8880], rax
                        mov              rax, qword ptr [rbp + 8728]
                        mov              qword ptr [rbp + 8888], rax
                        mov              rax, qword ptr [rbp + 8816]
                        mov              qword ptr [rbp + 8864], rax
                        mov              rax, qword ptr [rbp + 8824]
                        mov              qword ptr [rbp + 8872], rax
                        mov              rax, qword ptr [rbp + 8912]
                        mov              qword ptr [rbp + 8848], rax
                        mov              rax, qword ptr [rbp + 8920]
                        mov              qword ptr [rbp + 8856], rax
                        lea              rdi, [rbp + 8848]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8832], rax
                        mov              qword ptr [rbp + 8840], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n390_call_α
n389_call_β:            mov              r11, 306;                            jmp   connect$2F2_step
                        .size            n389_call_bx, .-n389_call_bx
                        .type            n390_call_bx, @function
n390_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n390_call_α:            mov              r11, 307
                        mov              rax, qword ptr [rbp + 8832]
                        mov              qword ptr [rbp + 8528], rax
                        mov              rax, qword ptr [rbp + 8840]
                        mov              qword ptr [rbp + 8536], rax
                        mov              rax, qword ptr [rbp + 8560]
                        mov              qword ptr [rbp + 8512], rax
                        mov              rax, qword ptr [rbp + 8568]
                        mov              qword ptr [rbp + 8520], rax
                        lea              rdi, [rbp + 8512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 8496], rax
                        mov              qword ptr [rbp + 8504], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n390_call_β:            mov              r11, 307;                            jmp   connect$2F2_step
                        .size            n390_call_bx, .-n390_call_bx
                        .type            n391_var_ref_bx, @function
n391_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n391_var_ref_α:         mov              r11, 308
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 9520], rax
                        mov              qword ptr [rbp + 9528], rdx;         jmp   n392_lit_string_α
                        .size            n391_var_ref_bx, .-n391_var_ref_bx
                        .type            n392_lit_string_bx, @function
n392_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n392_lit_string_α:      mov              r11, 309
                        mov              qword ptr [rbp + 9536], 2            # result
                        mov              dword ptr [rbp + 9540], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_727_0]
                        mov              qword ptr [rbp + 9544], rax;         jmp   n393_call_α
.Llit_string_α_727_0:   .quad            .Llit_string_α_727_0_s
.Llit_string_α_727_0_s: .string          "r"
                        .size            n392_lit_string_bx, .-n392_lit_string_bx
                        .type            n393_call_bx, @function
n393_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n393_call_α:            mov              r11, 310
                        mov              rax, qword ptr [rbp + 9520]
                        mov              qword ptr [rbp + 9472], rax
                        mov              rax, qword ptr [rbp + 9528]
                        mov              qword ptr [rbp + 9480], rax
                        lea              rdi, [rbp + 9472]
                        mov              rsi, qword ptr [rip + .Lcall_α_728_2]
                                                                              jmp   .Lcall_α_728_3
.Lcall_α_728_2:         .quad            .Lcall_α_728_2_s
.Lcall_α_728_2_s:       .string          "r"
.Lcall_α_728_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9456], rax
                        mov              qword ptr [rbp + 9464], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n394_var_ref_α
n393_call_β:            mov              r11, 310;                            jmp   connect$2F2_step
                        .size            n393_call_bx, .-n393_call_bx
                        .type            n394_var_ref_bx, @function
n394_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n394_var_ref_α:         mov              r11, 311
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 9088], rax
                        mov              qword ptr [rbp + 9096], rdx;         jmp   n395_lit_string_α
                        .size            n394_var_ref_bx, .-n394_var_ref_bx
                        .type            n395_lit_string_bx, @function
n395_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n395_lit_string_α:      mov              r11, 312
                        mov              qword ptr [rbp + 9440], 2            # result
                        mov              dword ptr [rbp + 9444], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_731_0]
                        mov              qword ptr [rbp + 9448], rax;         jmp   n396_lit_string_α
.Llit_string_α_731_0:   .quad            .Llit_string_α_731_0_s
.Llit_string_α_731_0_s: .string          "."
                        .size            n395_lit_string_bx, .-n395_lit_string_bx
                        .type            n396_lit_string_bx, @function
n396_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n396_lit_string_α:      mov              r11, 313
                        mov              qword ptr [rbp + 9344], 2            # result
                        mov              dword ptr [rbp + 9348], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_732_0]
                        mov              qword ptr [rbp + 9352], rax;         jmp   n397_lit_string_α
.Llit_string_α_732_0:   .quad            .Llit_string_α_732_0_s
.Llit_string_α_732_0_s: .string          "q"
                        .size            n396_lit_string_bx, .-n396_lit_string_bx
                        .type            n397_lit_string_bx, @function
n397_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n397_lit_string_α:      mov              r11, 314
                        mov              qword ptr [rbp + 9328], 2            # result
                        mov              dword ptr [rbp + 9332], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_733_0]
                        mov              qword ptr [rbp + 9336], rax;         jmp   n398_lit_string_α
.Llit_string_α_733_0:   .quad            .Llit_string_α_733_0_s
.Llit_string_α_733_0_s: .string          "."
                        .size            n397_lit_string_bx, .-n397_lit_string_bx
                        .type            n398_lit_string_bx, @function
n398_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n398_lit_string_α:      mov              r11, 315
                        mov              qword ptr [rbp + 9232], 2            # result
                        mov              dword ptr [rbp + 9236], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_734_0]
                        mov              qword ptr [rbp + 9240], rax;         jmp   n399_lit_string_α
.Llit_string_α_734_0:   .quad            .Llit_string_α_734_0_s
.Llit_string_α_734_0_s: .string          "s"
                        .size            n398_lit_string_bx, .-n398_lit_string_bx
                        .type            n399_lit_string_bx, @function
n399_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n399_lit_string_α:      mov              r11, 316
                        mov              qword ptr [rbp + 9216], 2            # result
                        mov              dword ptr [rbp + 9220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_735_0]
                        mov              qword ptr [rbp + 9224], rax;         jmp   n400_lit_string_α
.Llit_string_α_735_0:   .quad            .Llit_string_α_735_0_s
.Llit_string_α_735_0_s: .string          "."
                        .size            n399_lit_string_bx, .-n399_lit_string_bx
                        .type            n400_lit_string_bx, @function
n400_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n400_lit_string_α:      mov              r11, 317
                        mov              qword ptr [rbp + 9120], 2            # result
                        mov              dword ptr [rbp + 9124], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_736_0]
                        mov              qword ptr [rbp + 9128], rax;         jmp   n401_lit_string_α
.Llit_string_α_736_0:   .quad            .Llit_string_α_736_0_s
.Llit_string_α_736_0_s: .string          "f"
                        .size            n400_lit_string_bx, .-n400_lit_string_bx
                        .type            n401_lit_string_bx, @function
n401_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n401_lit_string_α:      mov              r11, 318
                        mov              qword ptr [rbp + 9104], 2            # result
                        mov              dword ptr [rbp + 9108], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_737_0]
                        mov              qword ptr [rbp + 9112], rax;         jmp   n402_call_α
.Llit_string_α_737_0:   .quad            .Llit_string_α_737_0_s
.Llit_string_α_737_0_s: .string          "[]"
                        .size            n401_lit_string_bx, .-n401_lit_string_bx
                        .type            n402_call_bx, @function
n402_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n402_call_α:            mov              r11, 319
                        mov              rax, qword ptr [rbp + 9104]
                        mov              qword ptr [rbp + 9184], rax
                        mov              rax, qword ptr [rbp + 9112]
                        mov              qword ptr [rbp + 9192], rax
                        mov              rax, qword ptr [rbp + 9120]
                        mov              qword ptr [rbp + 9168], rax
                        mov              rax, qword ptr [rbp + 9128]
                        mov              qword ptr [rbp + 9176], rax
                        mov              rax, qword ptr [rbp + 9216]
                        mov              qword ptr [rbp + 9152], rax
                        mov              rax, qword ptr [rbp + 9224]
                        mov              qword ptr [rbp + 9160], rax
                        lea              rdi, [rbp + 9152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9136], rax
                        mov              qword ptr [rbp + 9144], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n403_call_α
n402_call_β:            mov              r11, 319;                            jmp   connect$2F2_ω
                        .size            n402_call_bx, .-n402_call_bx
                        .type            n403_call_bx, @function
n403_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n403_call_α:            mov              r11, 320
                        mov              rax, qword ptr [rbp + 9136]
                        mov              qword ptr [rbp + 9296], rax
                        mov              rax, qword ptr [rbp + 9144]
                        mov              qword ptr [rbp + 9304], rax
                        mov              rax, qword ptr [rbp + 9232]
                        mov              qword ptr [rbp + 9280], rax
                        mov              rax, qword ptr [rbp + 9240]
                        mov              qword ptr [rbp + 9288], rax
                        mov              rax, qword ptr [rbp + 9328]
                        mov              qword ptr [rbp + 9264], rax
                        mov              rax, qword ptr [rbp + 9336]
                        mov              qword ptr [rbp + 9272], rax
                        lea              rdi, [rbp + 9264]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9248], rax
                        mov              qword ptr [rbp + 9256], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n404_call_α
n403_call_β:            mov              r11, 320;                            jmp   connect$2F2_ω
                        .size            n403_call_bx, .-n403_call_bx
                        .type            n404_call_bx, @function
n404_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n404_call_α:            mov              r11, 321
                        mov              rax, qword ptr [rbp + 9248]
                        mov              qword ptr [rbp + 9408], rax
                        mov              rax, qword ptr [rbp + 9256]
                        mov              qword ptr [rbp + 9416], rax
                        mov              rax, qword ptr [rbp + 9344]
                        mov              qword ptr [rbp + 9392], rax
                        mov              rax, qword ptr [rbp + 9352]
                        mov              qword ptr [rbp + 9400], rax
                        mov              rax, qword ptr [rbp + 9440]
                        mov              qword ptr [rbp + 9376], rax
                        mov              rax, qword ptr [rbp + 9448]
                        mov              qword ptr [rbp + 9384], rax
                        lea              rdi, [rbp + 9376]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9360], rax
                        mov              qword ptr [rbp + 9368], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n405_call_α
n404_call_β:            mov              r11, 321;                            jmp   connect$2F2_step
                        .size            n404_call_bx, .-n404_call_bx
                        .type            n405_call_bx, @function
n405_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n405_call_α:            mov              r11, 322
                        mov              rax, qword ptr [rbp + 9360]
                        mov              qword ptr [rbp + 9056], rax
                        mov              rax, qword ptr [rbp + 9368]
                        mov              qword ptr [rbp + 9064], rax
                        mov              rax, qword ptr [rbp + 9088]
                        mov              qword ptr [rbp + 9040], rax
                        mov              rax, qword ptr [rbp + 9096]
                        mov              qword ptr [rbp + 9048], rax
                        lea              rdi, [rbp + 9040]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9024], rax
                        mov              qword ptr [rbp + 9032], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n405_call_β:            mov              r11, 322;                            jmp   connect$2F2_step
                        .size            n405_call_bx, .-n405_call_bx
                        .type            n406_var_ref_bx, @function
n406_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n406_var_ref_α:         mov              r11, 323
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 10048], rax
                        mov              qword ptr [rbp + 10056], rdx;        jmp   n407_lit_string_α
                        .size            n406_var_ref_bx, .-n406_var_ref_bx
                        .type            n407_lit_string_bx, @function
n407_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n407_lit_string_α:      mov              r11, 324
                        mov              qword ptr [rbp + 10064], 2           # result
                        mov              dword ptr [rbp + 10068], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_744_0]
                        mov              qword ptr [rbp + 10072], rax;        jmp   n408_call_α
.Llit_string_α_744_0:   .quad            .Llit_string_α_744_0_s
.Llit_string_α_744_0_s: .string          "s"
                        .size            n407_lit_string_bx, .-n407_lit_string_bx
                        .type            n408_call_bx, @function
n408_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n408_call_α:            mov              r11, 325
                        mov              rax, qword ptr [rbp + 10048]
                        mov              qword ptr [rbp + 10000], rax
                        mov              rax, qword ptr [rbp + 10056]
                        mov              qword ptr [rbp + 10008], rax
                        lea              rdi, [rbp + 10000]
                        mov              rsi, qword ptr [rip + .Lcall_α_745_2]
                                                                              jmp   .Lcall_α_745_3
.Lcall_α_745_2:         .quad            .Lcall_α_745_2_s
.Lcall_α_745_2_s:       .string          "s"
.Lcall_α_745_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9984], rax
                        mov              qword ptr [rbp + 9992], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n409_var_ref_α
n408_call_β:            mov              r11, 325;                            jmp   connect$2F2_step
                        .size            n408_call_bx, .-n408_call_bx
                        .type            n409_var_ref_bx, @function
n409_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n409_var_ref_α:         mov              r11, 326
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 9616], rax
                        mov              qword ptr [rbp + 9624], rdx;         jmp   n410_lit_string_α
                        .size            n409_var_ref_bx, .-n409_var_ref_bx
                        .type            n410_lit_string_bx, @function
n410_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n410_lit_string_α:      mov              r11, 327
                        mov              qword ptr [rbp + 9968], 2            # result
                        mov              dword ptr [rbp + 9972], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_748_0]
                        mov              qword ptr [rbp + 9976], rax;         jmp   n411_lit_string_α
.Llit_string_α_748_0:   .quad            .Llit_string_α_748_0_s
.Llit_string_α_748_0_s: .string          "."
                        .size            n410_lit_string_bx, .-n410_lit_string_bx
                        .type            n411_lit_string_bx, @function
n411_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n411_lit_string_α:      mov              r11, 328
                        mov              qword ptr [rbp + 9872], 2            # result
                        mov              dword ptr [rbp + 9876], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_749_0]
                        mov              qword ptr [rbp + 9880], rax;         jmp   n412_lit_string_α
.Llit_string_α_749_0:   .quad            .Llit_string_α_749_0_s
.Llit_string_α_749_0_s: .string          "r"
                        .size            n411_lit_string_bx, .-n411_lit_string_bx
                        .type            n412_lit_string_bx, @function
n412_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n412_lit_string_α:      mov              r11, 329
                        mov              qword ptr [rbp + 9856], 2            # result
                        mov              dword ptr [rbp + 9860], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_750_0]
                        mov              qword ptr [rbp + 9864], rax;         jmp   n413_lit_string_α
.Llit_string_α_750_0:   .quad            .Llit_string_α_750_0_s
.Llit_string_α_750_0_s: .string          "."
                        .size            n412_lit_string_bx, .-n412_lit_string_bx
                        .type            n413_lit_string_bx, @function
n413_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n413_lit_string_α:      mov              r11, 330
                        mov              qword ptr [rbp + 9760], 2            # result
                        mov              dword ptr [rbp + 9764], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_751_0]
                        mov              qword ptr [rbp + 9768], rax;         jmp   n414_lit_string_α
.Llit_string_α_751_0:   .quad            .Llit_string_α_751_0_s
.Llit_string_α_751_0_s: .string          "t"
                        .size            n413_lit_string_bx, .-n413_lit_string_bx
                        .type            n414_lit_string_bx, @function
n414_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n414_lit_string_α:      mov              r11, 331
                        mov              qword ptr [rbp + 9744], 2            # result
                        mov              dword ptr [rbp + 9748], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_752_0]
                        mov              qword ptr [rbp + 9752], rax;         jmp   n415_lit_string_α
.Llit_string_α_752_0:   .quad            .Llit_string_α_752_0_s
.Llit_string_α_752_0_s: .string          "."
                        .size            n414_lit_string_bx, .-n414_lit_string_bx
                        .type            n415_lit_string_bx, @function
n415_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n415_lit_string_α:      mov              r11, 332
                        mov              qword ptr [rbp + 9648], 2            # result
                        mov              dword ptr [rbp + 9652], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_753_0]
                        mov              qword ptr [rbp + 9656], rax;         jmp   n416_lit_string_α
.Llit_string_α_753_0:   .quad            .Llit_string_α_753_0_s
.Llit_string_α_753_0_s: .string          "h"
                        .size            n415_lit_string_bx, .-n415_lit_string_bx
                        .type            n416_lit_string_bx, @function
n416_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n416_lit_string_α:      mov              r11, 333
                        mov              qword ptr [rbp + 9632], 2            # result
                        mov              dword ptr [rbp + 9636], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_754_0]
                        mov              qword ptr [rbp + 9640], rax;         jmp   n417_call_α
.Llit_string_α_754_0:   .quad            .Llit_string_α_754_0_s
.Llit_string_α_754_0_s: .string          "[]"
                        .size            n416_lit_string_bx, .-n416_lit_string_bx
                        .type            n417_call_bx, @function
n417_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n417_call_α:            mov              r11, 334
                        mov              rax, qword ptr [rbp + 9632]
                        mov              qword ptr [rbp + 9712], rax
                        mov              rax, qword ptr [rbp + 9640]
                        mov              qword ptr [rbp + 9720], rax
                        mov              rax, qword ptr [rbp + 9648]
                        mov              qword ptr [rbp + 9696], rax
                        mov              rax, qword ptr [rbp + 9656]
                        mov              qword ptr [rbp + 9704], rax
                        mov              rax, qword ptr [rbp + 9744]
                        mov              qword ptr [rbp + 9680], rax
                        mov              rax, qword ptr [rbp + 9752]
                        mov              qword ptr [rbp + 9688], rax
                        lea              rdi, [rbp + 9680]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9664], rax
                        mov              qword ptr [rbp + 9672], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n418_call_α
n417_call_β:            mov              r11, 334;                            jmp   connect$2F2_ω
                        .size            n417_call_bx, .-n417_call_bx
                        .type            n418_call_bx, @function
n418_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n418_call_α:            mov              r11, 335
                        mov              rax, qword ptr [rbp + 9664]
                        mov              qword ptr [rbp + 9824], rax
                        mov              rax, qword ptr [rbp + 9672]
                        mov              qword ptr [rbp + 9832], rax
                        mov              rax, qword ptr [rbp + 9760]
                        mov              qword ptr [rbp + 9808], rax
                        mov              rax, qword ptr [rbp + 9768]
                        mov              qword ptr [rbp + 9816], rax
                        mov              rax, qword ptr [rbp + 9856]
                        mov              qword ptr [rbp + 9792], rax
                        mov              rax, qword ptr [rbp + 9864]
                        mov              qword ptr [rbp + 9800], rax
                        lea              rdi, [rbp + 9792]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9776], rax
                        mov              qword ptr [rbp + 9784], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n419_call_α
n418_call_β:            mov              r11, 335;                            jmp   connect$2F2_ω
                        .size            n418_call_bx, .-n418_call_bx
                        .type            n419_call_bx, @function
n419_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_call_α:            mov              r11, 336
                        mov              rax, qword ptr [rbp + 9776]
                        mov              qword ptr [rbp + 9936], rax
                        mov              rax, qword ptr [rbp + 9784]
                        mov              qword ptr [rbp + 9944], rax
                        mov              rax, qword ptr [rbp + 9872]
                        mov              qword ptr [rbp + 9920], rax
                        mov              rax, qword ptr [rbp + 9880]
                        mov              qword ptr [rbp + 9928], rax
                        mov              rax, qword ptr [rbp + 9968]
                        mov              qword ptr [rbp + 9904], rax
                        mov              rax, qword ptr [rbp + 9976]
                        mov              qword ptr [rbp + 9912], rax
                        lea              rdi, [rbp + 9904]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9888], rax
                        mov              qword ptr [rbp + 9896], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n420_call_α
n419_call_β:            mov              r11, 336;                            jmp   connect$2F2_step
                        .size            n419_call_bx, .-n419_call_bx
                        .type            n420_call_bx, @function
n420_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_call_α:            mov              r11, 337
                        mov              rax, qword ptr [rbp + 9888]
                        mov              qword ptr [rbp + 9584], rax
                        mov              rax, qword ptr [rbp + 9896]
                        mov              qword ptr [rbp + 9592], rax
                        mov              rax, qword ptr [rbp + 9616]
                        mov              qword ptr [rbp + 9568], rax
                        mov              rax, qword ptr [rbp + 9624]
                        mov              qword ptr [rbp + 9576], rax
                        lea              rdi, [rbp + 9568]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 9552], rax
                        mov              qword ptr [rbp + 9560], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n420_call_β:            mov              r11, 337;                            jmp   connect$2F2_step
                        .size            n420_call_bx, .-n420_call_bx
                        .type            n421_var_ref_bx, @function
n421_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_var_ref_α:         mov              r11, 338
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 10576], rax
                        mov              qword ptr [rbp + 10584], rdx;        jmp   n422_lit_string_α
                        .size            n421_var_ref_bx, .-n421_var_ref_bx
                        .type            n422_lit_string_bx, @function
n422_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_lit_string_α:      mov              r11, 339
                        mov              qword ptr [rbp + 10592], 2           # result
                        mov              dword ptr [rbp + 10596], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_761_0]
                        mov              qword ptr [rbp + 10600], rax;        jmp   n423_call_α
.Llit_string_α_761_0:   .quad            .Llit_string_α_761_0_s
.Llit_string_α_761_0_s: .string          "t"
                        .size            n422_lit_string_bx, .-n422_lit_string_bx
                        .type            n423_call_bx, @function
n423_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_call_α:            mov              r11, 340
                        mov              rax, qword ptr [rbp + 10576]
                        mov              qword ptr [rbp + 10528], rax
                        mov              rax, qword ptr [rbp + 10584]
                        mov              qword ptr [rbp + 10536], rax
                        lea              rdi, [rbp + 10528]
                        mov              rsi, qword ptr [rip + .Lcall_α_762_2]
                                                                              jmp   .Lcall_α_762_3
.Lcall_α_762_2:         .quad            .Lcall_α_762_2_s
.Lcall_α_762_2_s:       .string          "t"
.Lcall_α_762_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 10512], rax
                        mov              qword ptr [rbp + 10520], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n424_var_ref_α
n423_call_β:            mov              r11, 340;                            jmp   connect$2F2_step
                        .size            n423_call_bx, .-n423_call_bx
                        .type            n424_var_ref_bx, @function
n424_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_var_ref_α:         mov              r11, 341
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 10144], rax
                        mov              qword ptr [rbp + 10152], rdx;        jmp   n425_lit_string_α
                        .size            n424_var_ref_bx, .-n424_var_ref_bx
                        .type            n425_lit_string_bx, @function
n425_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_lit_string_α:      mov              r11, 342
                        mov              qword ptr [rbp + 10496], 2           # result
                        mov              dword ptr [rbp + 10500], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_765_0]
                        mov              qword ptr [rbp + 10504], rax;        jmp   n426_lit_string_α
.Llit_string_α_765_0:   .quad            .Llit_string_α_765_0_s
.Llit_string_α_765_0_s: .string          "."
                        .size            n425_lit_string_bx, .-n425_lit_string_bx
                        .type            n426_lit_string_bx, @function
n426_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:      mov              r11, 343
                        mov              qword ptr [rbp + 10400], 2           # result
                        mov              dword ptr [rbp + 10404], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_766_0]
                        mov              qword ptr [rbp + 10408], rax;        jmp   n427_lit_string_α
.Llit_string_α_766_0:   .quad            .Llit_string_α_766_0_s
.Llit_string_α_766_0_s: .string          "p"
                        .size            n426_lit_string_bx, .-n426_lit_string_bx
                        .type            n427_lit_string_bx, @function
n427_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_lit_string_α:      mov              r11, 344
                        mov              qword ptr [rbp + 10384], 2           # result
                        mov              dword ptr [rbp + 10388], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_767_0]
                        mov              qword ptr [rbp + 10392], rax;        jmp   n428_lit_string_α
.Llit_string_α_767_0:   .quad            .Llit_string_α_767_0_s
.Llit_string_α_767_0_s: .string          "."
                        .size            n427_lit_string_bx, .-n427_lit_string_bx
                        .type            n428_lit_string_bx, @function
n428_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_lit_string_α:      mov              r11, 345
                        mov              qword ptr [rbp + 10288], 2           # result
                        mov              dword ptr [rbp + 10292], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_768_0]
                        mov              qword ptr [rbp + 10296], rax;        jmp   n429_lit_string_α
.Llit_string_α_768_0:   .quad            .Llit_string_α_768_0_s
.Llit_string_α_768_0_s: .string          "s"
                        .size            n428_lit_string_bx, .-n428_lit_string_bx
                        .type            n429_lit_string_bx, @function
n429_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:      mov              r11, 346
                        mov              qword ptr [rbp + 10272], 2           # result
                        mov              dword ptr [rbp + 10276], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_769_0]
                        mov              qword ptr [rbp + 10280], rax;        jmp   n430_lit_string_α
.Llit_string_α_769_0:   .quad            .Llit_string_α_769_0_s
.Llit_string_α_769_0_s: .string          "."
                        .size            n429_lit_string_bx, .-n429_lit_string_bx
                        .type            n430_lit_string_bx, @function
n430_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_lit_string_α:      mov              r11, 347
                        mov              qword ptr [rbp + 10176], 2           # result
                        mov              dword ptr [rbp + 10180], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_770_0]
                        mov              qword ptr [rbp + 10184], rax;        jmp   n431_lit_string_α
.Llit_string_α_770_0:   .quad            .Llit_string_α_770_0_s
.Llit_string_α_770_0_s: .string          "j"
                        .size            n430_lit_string_bx, .-n430_lit_string_bx
                        .type            n431_lit_string_bx, @function
n431_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_lit_string_α:      mov              r11, 348
                        mov              qword ptr [rbp + 10160], 2           # result
                        mov              dword ptr [rbp + 10164], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_771_0]
                        mov              qword ptr [rbp + 10168], rax;        jmp   n432_call_α
.Llit_string_α_771_0:   .quad            .Llit_string_α_771_0_s
.Llit_string_α_771_0_s: .string          "[]"
                        .size            n431_lit_string_bx, .-n431_lit_string_bx
                        .type            n432_call_bx, @function
n432_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_call_α:            mov              r11, 349
                        mov              rax, qword ptr [rbp + 10160]
                        mov              qword ptr [rbp + 10240], rax
                        mov              rax, qword ptr [rbp + 10168]
                        mov              qword ptr [rbp + 10248], rax
                        mov              rax, qword ptr [rbp + 10176]
                        mov              qword ptr [rbp + 10224], rax
                        mov              rax, qword ptr [rbp + 10184]
                        mov              qword ptr [rbp + 10232], rax
                        mov              rax, qword ptr [rbp + 10272]
                        mov              qword ptr [rbp + 10208], rax
                        mov              rax, qword ptr [rbp + 10280]
                        mov              qword ptr [rbp + 10216], rax
                        lea              rdi, [rbp + 10208]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 10192], rax
                        mov              qword ptr [rbp + 10200], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n433_call_α
n432_call_β:            mov              r11, 349;                            jmp   connect$2F2_ω
                        .size            n432_call_bx, .-n432_call_bx
                        .type            n433_call_bx, @function
n433_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_call_α:            mov              r11, 350
                        mov              rax, qword ptr [rbp + 10192]
                        mov              qword ptr [rbp + 10352], rax
                        mov              rax, qword ptr [rbp + 10200]
                        mov              qword ptr [rbp + 10360], rax
                        mov              rax, qword ptr [rbp + 10288]
                        mov              qword ptr [rbp + 10336], rax
                        mov              rax, qword ptr [rbp + 10296]
                        mov              qword ptr [rbp + 10344], rax
                        mov              rax, qword ptr [rbp + 10384]
                        mov              qword ptr [rbp + 10320], rax
                        mov              rax, qword ptr [rbp + 10392]
                        mov              qword ptr [rbp + 10328], rax
                        lea              rdi, [rbp + 10320]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 10304], rax
                        mov              qword ptr [rbp + 10312], rdx
                        cmp              al, 104;                             je    connect$2F2_ω
                                                                              jmp   n434_call_α
n433_call_β:            mov              r11, 350;                            jmp   connect$2F2_ω
                        .size            n433_call_bx, .-n433_call_bx
                        .type            n434_call_bx, @function
n434_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_call_α:            mov              r11, 351
                        mov              rax, qword ptr [rbp + 10304]
                        mov              qword ptr [rbp + 10464], rax
                        mov              rax, qword ptr [rbp + 10312]
                        mov              qword ptr [rbp + 10472], rax
                        mov              rax, qword ptr [rbp + 10400]
                        mov              qword ptr [rbp + 10448], rax
                        mov              rax, qword ptr [rbp + 10408]
                        mov              qword ptr [rbp + 10456], rax
                        mov              rax, qword ptr [rbp + 10496]
                        mov              qword ptr [rbp + 10432], rax
                        mov              rax, qword ptr [rbp + 10504]
                        mov              qword ptr [rbp + 10440], rax
                        lea              rdi, [rbp + 10432]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 10416], rax
                        mov              qword ptr [rbp + 10424], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   n435_call_α
n434_call_β:            mov              r11, 351;                            jmp   connect$2F2_step
                        .size            n434_call_bx, .-n434_call_bx
                        .type            n435_call_bx, @function
n435_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_call_α:            mov              r11, 352
                        mov              rax, qword ptr [rbp + 10416]
                        mov              qword ptr [rbp + 10112], rax
                        mov              rax, qword ptr [rbp + 10424]
                        mov              qword ptr [rbp + 10120], rax
                        mov              rax, qword ptr [rbp + 10144]
                        mov              qword ptr [rbp + 10096], rax
                        mov              rax, qword ptr [rbp + 10152]
                        mov              qword ptr [rbp + 10104], rax
                        lea              rdi, [rbp + 10096]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 10080], rax
                        mov              qword ptr [rbp + 10088], rdx
                        cmp              al, 104;                             je    connect$2F2_step
                                                                              jmp   connect$2F2_γ
n435_call_β:            mov              r11, 352;                            jmp   connect$2F2_step
                        .size            n435_call_bx, .-n435_call_bx
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_step:
                        mov              rdi, qword ptr [rbp + 10624]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 10640], 0
                        mov              rax, qword ptr [rbp + 10632]
                        test             rax, rax
                                                                              je    connect$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt1:
                        lea              rax, [rip + connect$2F2_alt2]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n151_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt2:
                        lea              rax, [rip + connect$2F2_alt3]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n166_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt3:
                        lea              rax, [rip + connect$2F2_alt4]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n181_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt4:
                        lea              rax, [rip + connect$2F2_alt5]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n196_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt5:
                        lea              rax, [rip + connect$2F2_alt6]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n211_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt6:
                        lea              rax, [rip + connect$2F2_alt7]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n226_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt7:
                        lea              rax, [rip + connect$2F2_alt8]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n241_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt8:
                        lea              rax, [rip + connect$2F2_alt9]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n256_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt9:
                        lea              rax, [rip + connect$2F2_alt10]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n271_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt10:
                        lea              rax, [rip + connect$2F2_alt11]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n286_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt11:
                        lea              rax, [rip + connect$2F2_alt12]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n301_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt12:
                        lea              rax, [rip + connect$2F2_alt13]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n316_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt13:
                        lea              rax, [rip + connect$2F2_alt14]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n331_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt14:
                        lea              rax, [rip + connect$2F2_alt15]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n346_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt15:
                        lea              rax, [rip + connect$2F2_alt16]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n361_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt16:
                        lea              rax, [rip + connect$2F2_alt17]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n376_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt17:
                        lea              rax, [rip + connect$2F2_alt18]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n391_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt18:
                        lea              rax, [rip + connect$2F2_alt19]
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n406_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_alt19:
                        xor              eax, eax
                        mov              qword ptr [rbp + 10632], rax
                                                                              jmp   n421_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_β:
                        test             r15, r15
                                                                              jne   connect$2F2_ω
                        mov              rax, qword ptr [rbp + 10640]
                        mov              qword ptr [rbp + 10640], 0
                        test             rax, rax
                                                                              jne   connect$2F2_βres
                                                                              jmp   connect$2F2_step
connect$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 10664]
                        mov              rax, qword ptr [rbp + 10648]
                        cmp              r13, rax;                            je    connect$2F2_altdet
                        lea              rdx, [rip + connect$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 10680];        jmp   rcx
connect$2F2_altdet:     xor              eax, eax
                        lea              rsp, [rbp + 10688]
                        mov              rbp, qword ptr [rbp + 10680];        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
connect$2F2_ω:
                        mov              rcx, qword ptr [rbp + 10672]
                        mov              r13, qword ptr [rbp + 10648]
                        lea              rsp, [rbp + 10688]
                        mov              rbp, qword ptr [rbp + 10680];        jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__cycle_ham$2F2:
                        sub              rsp, 1200
                        mov              qword ptr [rsp + 1176], rcx
                        mov              qword ptr [rsp + 1184], rdx
                        mov              qword ptr [rsp + 1192], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1160], r13
                        mov              qword ptr [rsp + 1152], 0
                        mov              qword ptr [rsp + 1144], 0
                        mov              qword ptr [rsp + 1136], r12
                        mov              rdi, rsp
                        mov              esi, 1056
                        mov              edx, 1136
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
cycle_ham$2F2_α_body:
                        .type            n776_var_ref_bx, @function
n776_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n776_var_ref_α:         mov              r11, 353
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n777_lit_string_α
                        .size            n776_var_ref_bx, .-n776_var_ref_bx
                        .type            n777_lit_string_bx, @function
n777_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n777_lit_string_α:      mov              r11, 354
                        mov              qword ptr [rbp + 1040], 2            # result
                        mov              dword ptr [rbp + 1044], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_806_0]
                        mov              qword ptr [rbp + 1048], rax;         jmp   n778_var_ref_α
.Llit_string_α_806_0:   .quad            .Llit_string_α_806_0_s
.Llit_string_α_806_0_s: .string          "."
                        .size            n777_lit_string_bx, .-n777_lit_string_bx
                        .type            n778_var_ref_bx, @function
n778_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n778_var_ref_α:         mov              r11, 355
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx;          jmp   n779_var_ref_α
                        .size            n778_var_ref_bx, .-n778_var_ref_bx
                        .type            n779_var_ref_bx, @function
n779_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n779_var_ref_α:         mov              r11, 356
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n780_call_α
                        .size            n779_var_ref_bx, .-n779_var_ref_bx
                        .type            n780_call_bx, @function
n780_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n780_call_α:            mov              r11, 357
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
                        cmp              al, 104;                             je    cycle_ham$2F2_step
                                                                              jmp   n781_call_α
n780_call_β:            mov              r11, 357;                            jmp   cycle_ham$2F2_step
                        .size            n780_call_bx, .-n780_call_bx
                        .type            n781_call_bx, @function
n781_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n781_call_α:            mov              r11, 358
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
                        cmp              al, 104;                             je    cycle_ham$2F2_step
                                                                              jmp   n782_var_ref_α
n781_call_β:            mov              r11, 358;                            jmp   cycle_ham$2F2_step
                        .size            n781_call_bx, .-n781_call_bx
                        .type            n782_var_ref_bx, @function
n782_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n782_var_ref_α:         mov              r11, 359
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n783_lit_string_α
                        .size            n782_var_ref_bx, .-n782_var_ref_bx
                        .type            n783_lit_string_bx, @function
n783_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n783_lit_string_α:      mov              r11, 360
                        mov              qword ptr [rbp + 832], 2             # result
                        mov              dword ptr [rbp + 836], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_815_0]
                        mov              qword ptr [rbp + 840], rax;          jmp   n784_var_ref_α
.Llit_string_α_815_0:   .quad            .Llit_string_α_815_0_s
.Llit_string_α_815_0_s: .string          "."
                        .size            n783_lit_string_bx, .-n783_lit_string_bx
                        .type            n784_var_ref_bx, @function
n784_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n784_var_ref_α:         mov              r11, 361
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 736], rax
                        mov              qword ptr [rbp + 744], rdx;          jmp   n785_lit_string_α
                        .size            n784_var_ref_bx, .-n784_var_ref_bx
                        .type            n785_lit_string_bx, @function
n785_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n785_lit_string_α:      mov              r11, 362
                        mov              qword ptr [rbp + 720], 2             # result
                        mov              dword ptr [rbp + 724], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_818_0]
                        mov              qword ptr [rbp + 728], rax;          jmp   n786_var_ref_α
.Llit_string_α_818_0:   .quad            .Llit_string_α_818_0_s
.Llit_string_α_818_0_s: .string          "."
                        .size            n785_lit_string_bx, .-n785_lit_string_bx
                        .type            n786_var_ref_bx, @function
n786_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n786_var_ref_α:         mov              r11, 363
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n787_var_ref_α
                        .size            n786_var_ref_bx, .-n786_var_ref_bx
                        .type            n787_var_ref_bx, @function
n787_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n787_var_ref_α:         mov              r11, 364
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n788_call_α
                        .size            n787_var_ref_bx, .-n787_var_ref_bx
                        .type            n788_call_bx, @function
n788_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n788_call_α:            mov              r11, 365
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 688], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 696], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 632]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 664], rax
                        lea              rdi, [rbp + 656]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        cmp              al, 104;                             je    cycle_ham$2F2_ω
                                                                              jmp   n789_call_α
n788_call_β:            mov              r11, 365;                            jmp   cycle_ham$2F2_ω
                        .size            n788_call_bx, .-n788_call_bx
                        .type            n789_call_bx, @function
n789_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n789_call_α:            mov              r11, 366
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 648]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 736]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 744]
                        mov              qword ptr [rbp + 792], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 776], rax
                        lea              rdi, [rbp + 768]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 752], rax
                        mov              qword ptr [rbp + 760], rdx
                        cmp              al, 104;                             je    cycle_ham$2F2_step
                                                                              jmp   n790_call_α
n789_call_β:            mov              r11, 366;                            jmp   cycle_ham$2F2_step
                        .size            n789_call_bx, .-n789_call_bx
                        .type            n790_call_bx, @function
n790_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n790_call_α:            mov              r11, 367
                        mov              rax, qword ptr [rbp + 752]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 760]
                        mov              qword ptr [rbp + 568], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 552], rax
                        lea              rdi, [rbp + 544]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx
                        cmp              al, 104;                             je    cycle_ham$2F2_step
                                                                              jmp   n791_lit_string_α
n790_call_β:            mov              r11, 367;                            jmp   cycle_ham$2F2_step
                        .size            n790_call_bx, .-n790_call_bx
                        .type            n791_lit_string_bx, @function
n791_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n791_lit_string_α:      mov              r11, 368
                        mov              qword ptr [rbp + 368], 2             # result
                        mov              dword ptr [rbp + 372], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_826_0]
                        mov              qword ptr [rbp + 376], rax;          jmp   n792_var_ref_α
.Llit_string_α_826_0:   .quad            .Llit_string_α_826_0_s
.Llit_string_α_826_0_s: .string          "."
                        .size            n791_lit_string_bx, .-n791_lit_string_bx
                        .type            n792_var_ref_bx, @function
n792_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n792_var_ref_α:         mov              r11, 369
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n793_var_ref_α
                        .size            n792_var_ref_bx, .-n792_var_ref_bx
                        .type            n793_var_ref_bx, @function
n793_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n793_var_ref_α:         mov              r11, 370
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1088]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n794_call_α
                        .size            n793_var_ref_bx, .-n793_var_ref_bx
                        .type            n794_call_bx, @function
n794_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n794_call_α:            mov              r11, 371
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 344], rax
                        mov              rax, qword ptr [rbp + 272]
                        mov              qword ptr [rbp + 320], rax
                        mov              rax, qword ptr [rbp + 280]
                        mov              qword ptr [rbp + 328], rax
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 312], rax
                        lea              rdi, [rbp + 304]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        cmp              al, 104;                             je    cycle_ham$2F2_step
                                                                              jmp   n795_lit_string_α
n794_call_β:            mov              r11, 371;                            jmp   cycle_ham$2F2_step
                        .size            n794_call_bx, .-n794_call_bx
                        .type            n795_lit_string_bx, @function
n795_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n795_lit_string_α:      mov              r11, 372
                        mov              qword ptr [rbp + 384], 2             # result
                        mov              dword ptr [rbp + 388], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_832_0]
                        mov              qword ptr [rbp + 392], rax;          jmp   n796_lit_string_α
.Llit_string_α_832_0:   .quad            .Llit_string_α_832_0_s
.Llit_string_α_832_0_s: .string          "[]"
                        .size            n795_lit_string_bx, .-n795_lit_string_bx
                        .type            n796_lit_string_bx, @function
n796_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n796_lit_string_α:      mov              r11, 373
                        mov              qword ptr [rbp + 512], 2             # result
                        mov              dword ptr [rbp + 516], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_833_0]
                        mov              qword ptr [rbp + 520], rax;          jmp   n797_var_ref_α
.Llit_string_α_833_0:   .quad            .Llit_string_α_833_0_s
.Llit_string_α_833_0_s: .string          "."
                        .size            n796_lit_string_bx, .-n796_lit_string_bx
                        .type            n797_var_ref_bx, @function
n797_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n797_var_ref_α:         mov              r11, 374
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx;          jmp   n798_var_ref_α
                        .size            n797_var_ref_bx, .-n797_var_ref_bx
                        .type            n798_var_ref_bx, @function
n798_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n798_var_ref_α:         mov              r11, 375
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1104]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n799_call_α
                        .size            n798_var_ref_bx, .-n798_var_ref_bx
                        .type            n799_call_bx, @function
n799_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n799_call_α:            mov              r11, 376
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 480], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 488], rax
                        mov              rax, qword ptr [rbp + 416]
                        mov              qword ptr [rbp + 464], rax
                        mov              rax, qword ptr [rbp + 424]
                        mov              qword ptr [rbp + 472], rax
                        mov              rax, qword ptr [rbp + 512]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 520]
                        mov              qword ptr [rbp + 456], rax
                        lea              rdi, [rbp + 448]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx
                        cmp              al, 104;                             je    cycle_ham$2F2_step
                                                                              jmp   n800_call_proc_staged_α
n799_call_β:            mov              r11, 376;                            jmp   cycle_ham$2F2_step
                        .size            n799_call_bx, .-n799_call_bx
                        .type            n800_call_proc_staged_bx, @function
n800_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n800_call_proc_staged_α:
                        mov              r11, 377
                        mov              qword ptr [rbp + 224], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_840_200
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_840_201
.Lcall_proc_staged_α_840_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_840_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_840_202
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_840_203
.Lcall_proc_staged_α_840_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_840_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_840_204
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_840_205
.Lcall_proc_staged_α_840_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_840_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_840_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_840_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_840_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_840_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_840_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_840_3:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_840_21
                        add              rsp, 32
.Lcall_proc_staged_α_840_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_840_2
.Lcall_proc_staged_α_840_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 224], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_840_2
.Lcall_proc_staged_α_840_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_840_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   cycle_ham$2F2_step
.Lcall_proc_staged_α_840_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_840_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
.Lcall_proc_staged_α_840_29:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    cycle_ham$2F2_step
                                                                              jmp   n801_var_ref_α
n800_call_proc_staged_β:
                        mov              r11, 377
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_840_22
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_840_22
                        mov              rcx, qword ptr [rbp + 232]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_840_22:
                                                                              jmp   cycle_ham$2F2_step
.Lcall_proc_staged_α_840_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    cycle_ham$2F2_step
                                                                              jmp   n801_var_ref_α
.Lcall_proc_staged_α_840_0:
                        .quad            .Lcall_proc_staged_α_840_0_s
.Lcall_proc_staged_α_840_0_s:
                        .string          "chain_ham/3"
                        .size            n800_call_proc_staged_bx, .-n800_call_proc_staged_bx
                        .type            n801_var_ref_bx, @function
n801_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n801_var_ref_α:         mov              r11, 378
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1056]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n802_var_ref_α
                        .size            n801_var_ref_bx, .-n801_var_ref_bx
                        .type            n802_var_ref_bx, @function
n802_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n802_var_ref_α:         mov              r11, 379
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1072]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n803_call_proc_staged_α
                        .size            n802_var_ref_bx, .-n802_var_ref_bx
                        .type            n803_call_proc_staged_bx, @function
n803_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n803_call_proc_staged_α:
                        mov              r11, 380
                        mov              qword ptr [rbp + 96], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_846_200
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_846_201
.Lcall_proc_staged_α_846_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_846_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_846_202
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_846_203
.Lcall_proc_staged_α_846_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_846_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_846_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 7
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_846_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_846_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_846_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_846_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_846_3:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_846_21
                        add              rsp, 32
.Lcall_proc_staged_α_846_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_846_2
.Lcall_proc_staged_α_846_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 96], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_846_2
.Lcall_proc_staged_α_846_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_846_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n800_call_proc_staged_β
.Lcall_proc_staged_α_846_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_846_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
.Lcall_proc_staged_α_846_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n800_call_proc_staged_β
                                                                              jmp   cycle_ham$2F2_ret0
n803_call_proc_staged_β:
                        mov              r11, 380
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_846_22
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_846_22
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_846_22:
                                                                              jmp   n800_call_proc_staged_β
.Lcall_proc_staged_α_846_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n800_call_proc_staged_β
                                                                              jmp   cycle_ham$2F2_ret0
.Lcall_proc_staged_α_846_0:
                        .quad            .Lcall_proc_staged_α_846_0_s
.Lcall_proc_staged_α_846_0_s:
                        .string          "edge/2"
                        .size            n803_call_proc_staged_bx, .-n803_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
cycle_ham$2F2_ret0:
                        lea              rax, [rip + n803_call_proc_staged_β]
                        mov              qword ptr [rbp + 1152], rax
                                                                              jmp   cycle_ham$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
cycle_ham$2F2_step:
                        mov              rdi, qword ptr [rbp + 1136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1152], 0
                        lea              rdi, [rbp + 48]
                        xor              eax, eax
                        mov              ecx, 96
                        rep              stosb
                        mov              rax, qword ptr [rbp + 1144]
                        test             rax, rax
                                                                              je    cycle_ham$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
cycle_ham$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
cycle_ham$2F2_β:
                        test             r15, r15
                                                                              jne   cycle_ham$2F2_ω
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1152], 0
                        test             rax, rax
                                                                              jne   cycle_ham$2F2_βres
                                                                              jmp   cycle_ham$2F2_step
cycle_ham$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
cycle_ham$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1176]
                        mov              rax, qword ptr [rbp + 1160]
                        cmp              r13, rax;                            je    cycle_ham$2F2_altdet
                        lea              rdx, [rip + cycle_ham$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1192];         jmp   rcx
cycle_ham$2F2_altdet:   xor              eax, eax
                        lea              rsp, [rbp + 1200]
                        mov              rbp, qword ptr [rbp + 1192];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
cycle_ham$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1184]
                        mov              r13, qword ptr [rbp + 1160]
                        lea              rsp, [rbp + 1200]
                        mov              rbp, qword ptr [rbp + 1192];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__ham1$2F1:
                        sub              rsp, 2576
                        mov              qword ptr [rsp + 2552], rcx
                        mov              qword ptr [rsp + 2560], rdx
                        mov              qword ptr [rsp + 2568], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 2536], r13
                        mov              qword ptr [rsp + 2528], 0
                        mov              qword ptr [rsp + 2520], 0
                        mov              qword ptr [rsp + 2512], r12
                        mov              rdi, rsp
                        mov              esi, 2480
                        mov              edx, 2512
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
ham1$2F1_α_body:
                        .type            n847_var_ref_bx, @function
n847_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n847_var_ref_α:         mov              r11, 381
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 2448], rax
                        mov              qword ptr [rbp + 2456], rdx;         jmp   n848_var_ref_α
                        .size            n847_var_ref_bx, .-n847_var_ref_bx
                        .type            n848_var_ref_bx, @function
n848_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n848_var_ref_α:         mov              r11, 382
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 2464], rax
                        mov              qword ptr [rbp + 2472], rdx;         jmp   n849_call_α
                        .size            n848_var_ref_bx, .-n848_var_ref_bx
                        .type            n849_call_bx, @function
n849_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n849_call_α:            mov              r11, 383
                        mov              rax, qword ptr [rbp + 2464]
                        mov              qword ptr [rbp + 2416], rax
                        mov              rax, qword ptr [rbp + 2472]
                        mov              qword ptr [rbp + 2424], rax
                        mov              rax, qword ptr [rbp + 2448]
                        mov              qword ptr [rbp + 2400], rax
                        mov              rax, qword ptr [rbp + 2456]
                        mov              qword ptr [rbp + 2408], rax
                        lea              rdi, [rbp + 2400]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2384], rax
                        mov              qword ptr [rbp + 2392], rdx
                        cmp              al, 104;                             je    ham1$2F1_step
                                                                              jmp   n850_lit_string_α
n849_call_β:            mov              r11, 383;                            jmp   ham1$2F1_step
                        .size            n849_call_bx, .-n849_call_bx
                        .type            n850_lit_string_bx, @function
n850_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n850_lit_string_α:      mov              r11, 384
                        mov              qword ptr [rbp + 2352], 2            # result
                        mov              dword ptr [rbp + 2356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_918_0]
                        mov              qword ptr [rbp + 2360], rax;         jmp   n851_lit_string_α
.Llit_string_α_918_0:   .quad            .Llit_string_α_918_0_s
.Llit_string_α_918_0_s: .string          "."
                        .size            n850_lit_string_bx, .-n850_lit_string_bx
                        .type            n851_lit_string_bx, @function
n851_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n851_lit_string_α:      mov              r11, 385
                        mov              qword ptr [rbp + 2256], 2            # result
                        mov              dword ptr [rbp + 2260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_919_0]
                        mov              qword ptr [rbp + 2264], rax;         jmp   n852_lit_string_α
.Llit_string_α_919_0:   .quad            .Llit_string_α_919_0_s
.Llit_string_α_919_0_s: .string          "a"
                        .size            n851_lit_string_bx, .-n851_lit_string_bx
                        .type            n852_lit_string_bx, @function
n852_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n852_lit_string_α:      mov              r11, 386
                        mov              qword ptr [rbp + 2240], 2            # result
                        mov              dword ptr [rbp + 2244], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_920_0]
                        mov              qword ptr [rbp + 2248], rax;         jmp   n853_lit_string_α
.Llit_string_α_920_0:   .quad            .Llit_string_α_920_0_s
.Llit_string_α_920_0_s: .string          "."
                        .size            n852_lit_string_bx, .-n852_lit_string_bx
                        .type            n853_lit_string_bx, @function
n853_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n853_lit_string_α:      mov              r11, 387
                        mov              qword ptr [rbp + 2144], 2            # result
                        mov              dword ptr [rbp + 2148], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_921_0]
                        mov              qword ptr [rbp + 2152], rax;         jmp   n854_lit_string_α
.Llit_string_α_921_0:   .quad            .Llit_string_α_921_0_s
.Llit_string_α_921_0_s: .string          "b"
                        .size            n853_lit_string_bx, .-n853_lit_string_bx
                        .type            n854_lit_string_bx, @function
n854_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n854_lit_string_α:      mov              r11, 388
                        mov              qword ptr [rbp + 2128], 2            # result
                        mov              dword ptr [rbp + 2132], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_922_0]
                        mov              qword ptr [rbp + 2136], rax;         jmp   n855_lit_string_α
.Llit_string_α_922_0:   .quad            .Llit_string_α_922_0_s
.Llit_string_α_922_0_s: .string          "."
                        .size            n854_lit_string_bx, .-n854_lit_string_bx
                        .type            n855_lit_string_bx, @function
n855_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n855_lit_string_α:      mov              r11, 389
                        mov              qword ptr [rbp + 2032], 2            # result
                        mov              dword ptr [rbp + 2036], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_923_0]
                        mov              qword ptr [rbp + 2040], rax;         jmp   n856_lit_string_α
.Llit_string_α_923_0:   .quad            .Llit_string_α_923_0_s
.Llit_string_α_923_0_s: .string          "c"
                        .size            n855_lit_string_bx, .-n855_lit_string_bx
                        .type            n856_lit_string_bx, @function
n856_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n856_lit_string_α:      mov              r11, 390
                        mov              qword ptr [rbp + 2016], 2            # result
                        mov              dword ptr [rbp + 2020], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_924_0]
                        mov              qword ptr [rbp + 2024], rax;         jmp   n857_lit_string_α
.Llit_string_α_924_0:   .quad            .Llit_string_α_924_0_s
.Llit_string_α_924_0_s: .string          "."
                        .size            n856_lit_string_bx, .-n856_lit_string_bx
                        .type            n857_lit_string_bx, @function
n857_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n857_lit_string_α:      mov              r11, 391
                        mov              qword ptr [rbp + 1920], 2            # result
                        mov              dword ptr [rbp + 1924], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_925_0]
                        mov              qword ptr [rbp + 1928], rax;         jmp   n858_lit_string_α
.Llit_string_α_925_0:   .quad            .Llit_string_α_925_0_s
.Llit_string_α_925_0_s: .string          "d"
                        .size            n857_lit_string_bx, .-n857_lit_string_bx
                        .type            n858_lit_string_bx, @function
n858_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n858_lit_string_α:      mov              r11, 392
                        mov              qword ptr [rbp + 1904], 2            # result
                        mov              dword ptr [rbp + 1908], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_926_0]
                        mov              qword ptr [rbp + 1912], rax;         jmp   n859_lit_string_α
.Llit_string_α_926_0:   .quad            .Llit_string_α_926_0_s
.Llit_string_α_926_0_s: .string          "."
                        .size            n858_lit_string_bx, .-n858_lit_string_bx
                        .type            n859_lit_string_bx, @function
n859_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n859_lit_string_α:      mov              r11, 393
                        mov              qword ptr [rbp + 1808], 2            # result
                        mov              dword ptr [rbp + 1812], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_927_0]
                        mov              qword ptr [rbp + 1816], rax;         jmp   n860_lit_string_α
.Llit_string_α_927_0:   .quad            .Llit_string_α_927_0_s
.Llit_string_α_927_0_s: .string          "e"
                        .size            n859_lit_string_bx, .-n859_lit_string_bx
                        .type            n860_lit_string_bx, @function
n860_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n860_lit_string_α:      mov              r11, 394
                        mov              qword ptr [rbp + 1792], 2            # result
                        mov              dword ptr [rbp + 1796], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_928_0]
                        mov              qword ptr [rbp + 1800], rax;         jmp   n861_lit_string_α
.Llit_string_α_928_0:   .quad            .Llit_string_α_928_0_s
.Llit_string_α_928_0_s: .string          "."
                        .size            n860_lit_string_bx, .-n860_lit_string_bx
                        .type            n861_lit_string_bx, @function
n861_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n861_lit_string_α:      mov              r11, 395
                        mov              qword ptr [rbp + 1696], 2            # result
                        mov              dword ptr [rbp + 1700], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_929_0]
                        mov              qword ptr [rbp + 1704], rax;         jmp   n862_lit_string_α
.Llit_string_α_929_0:   .quad            .Llit_string_α_929_0_s
.Llit_string_α_929_0_s: .string          "f"
                        .size            n861_lit_string_bx, .-n861_lit_string_bx
                        .type            n862_lit_string_bx, @function
n862_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n862_lit_string_α:      mov              r11, 396
                        mov              qword ptr [rbp + 1680], 2            # result
                        mov              dword ptr [rbp + 1684], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_930_0]
                        mov              qword ptr [rbp + 1688], rax;         jmp   n863_lit_string_α
.Llit_string_α_930_0:   .quad            .Llit_string_α_930_0_s
.Llit_string_α_930_0_s: .string          "."
                        .size            n862_lit_string_bx, .-n862_lit_string_bx
                        .type            n863_lit_string_bx, @function
n863_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n863_lit_string_α:      mov              r11, 397
                        mov              qword ptr [rbp + 1584], 2            # result
                        mov              dword ptr [rbp + 1588], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_931_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n864_lit_string_α
.Llit_string_α_931_0:   .quad            .Llit_string_α_931_0_s
.Llit_string_α_931_0_s: .string          "g"
                        .size            n863_lit_string_bx, .-n863_lit_string_bx
                        .type            n864_lit_string_bx, @function
n864_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n864_lit_string_α:      mov              r11, 398
                        mov              qword ptr [rbp + 1568], 2            # result
                        mov              dword ptr [rbp + 1572], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_932_0]
                        mov              qword ptr [rbp + 1576], rax;         jmp   n865_lit_string_α
.Llit_string_α_932_0:   .quad            .Llit_string_α_932_0_s
.Llit_string_α_932_0_s: .string          "."
                        .size            n864_lit_string_bx, .-n864_lit_string_bx
                        .type            n865_lit_string_bx, @function
n865_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n865_lit_string_α:      mov              r11, 399
                        mov              qword ptr [rbp + 1472], 2            # result
                        mov              dword ptr [rbp + 1476], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_933_0]
                        mov              qword ptr [rbp + 1480], rax;         jmp   n866_lit_string_α
.Llit_string_α_933_0:   .quad            .Llit_string_α_933_0_s
.Llit_string_α_933_0_s: .string          "h"
                        .size            n865_lit_string_bx, .-n865_lit_string_bx
                        .type            n866_lit_string_bx, @function
n866_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n866_lit_string_α:      mov              r11, 400
                        mov              qword ptr [rbp + 1456], 2            # result
                        mov              dword ptr [rbp + 1460], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_934_0]
                        mov              qword ptr [rbp + 1464], rax;         jmp   n867_lit_string_α
.Llit_string_α_934_0:   .quad            .Llit_string_α_934_0_s
.Llit_string_α_934_0_s: .string          "."
                        .size            n866_lit_string_bx, .-n866_lit_string_bx
                        .type            n867_lit_string_bx, @function
n867_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n867_lit_string_α:      mov              r11, 401
                        mov              qword ptr [rbp + 1360], 2            # result
                        mov              dword ptr [rbp + 1364], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_935_0]
                        mov              qword ptr [rbp + 1368], rax;         jmp   n868_lit_string_α
.Llit_string_α_935_0:   .quad            .Llit_string_α_935_0_s
.Llit_string_α_935_0_s: .string          "i"
                        .size            n867_lit_string_bx, .-n867_lit_string_bx
                        .type            n868_lit_string_bx, @function
n868_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n868_lit_string_α:      mov              r11, 402
                        mov              qword ptr [rbp + 1344], 2            # result
                        mov              dword ptr [rbp + 1348], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_936_0]
                        mov              qword ptr [rbp + 1352], rax;         jmp   n869_lit_string_α
.Llit_string_α_936_0:   .quad            .Llit_string_α_936_0_s
.Llit_string_α_936_0_s: .string          "."
                        .size            n868_lit_string_bx, .-n868_lit_string_bx
                        .type            n869_lit_string_bx, @function
n869_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n869_lit_string_α:      mov              r11, 403
                        mov              qword ptr [rbp + 1248], 2            # result
                        mov              dword ptr [rbp + 1252], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_937_0]
                        mov              qword ptr [rbp + 1256], rax;         jmp   n870_lit_string_α
.Llit_string_α_937_0:   .quad            .Llit_string_α_937_0_s
.Llit_string_α_937_0_s: .string          "j"
                        .size            n869_lit_string_bx, .-n869_lit_string_bx
                        .type            n870_lit_string_bx, @function
n870_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n870_lit_string_α:      mov              r11, 404
                        mov              qword ptr [rbp + 1232], 2            # result
                        mov              dword ptr [rbp + 1236], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_938_0]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n871_lit_string_α
.Llit_string_α_938_0:   .quad            .Llit_string_α_938_0_s
.Llit_string_α_938_0_s: .string          "."
                        .size            n870_lit_string_bx, .-n870_lit_string_bx
                        .type            n871_lit_string_bx, @function
n871_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n871_lit_string_α:      mov              r11, 405
                        mov              qword ptr [rbp + 1136], 2            # result
                        mov              dword ptr [rbp + 1140], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_939_0]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n872_lit_string_α
.Llit_string_α_939_0:   .quad            .Llit_string_α_939_0_s
.Llit_string_α_939_0_s: .string          "k"
                        .size            n871_lit_string_bx, .-n871_lit_string_bx
                        .type            n872_lit_string_bx, @function
n872_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n872_lit_string_α:      mov              r11, 406
                        mov              qword ptr [rbp + 1120], 2            # result
                        mov              dword ptr [rbp + 1124], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_940_0]
                        mov              qword ptr [rbp + 1128], rax;         jmp   n873_lit_string_α
.Llit_string_α_940_0:   .quad            .Llit_string_α_940_0_s
.Llit_string_α_940_0_s: .string          "."
                        .size            n872_lit_string_bx, .-n872_lit_string_bx
                        .type            n873_lit_string_bx, @function
n873_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n873_lit_string_α:      mov              r11, 407
                        mov              qword ptr [rbp + 1024], 2            # result
                        mov              dword ptr [rbp + 1028], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_941_0]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n874_lit_string_α
.Llit_string_α_941_0:   .quad            .Llit_string_α_941_0_s
.Llit_string_α_941_0_s: .string          "l"
                        .size            n873_lit_string_bx, .-n873_lit_string_bx
                        .type            n874_lit_string_bx, @function
n874_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n874_lit_string_α:      mov              r11, 408
                        mov              qword ptr [rbp + 1008], 2            # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_942_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n875_lit_string_α
.Llit_string_α_942_0:   .quad            .Llit_string_α_942_0_s
.Llit_string_α_942_0_s: .string          "."
                        .size            n874_lit_string_bx, .-n874_lit_string_bx
                        .type            n875_lit_string_bx, @function
n875_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n875_lit_string_α:      mov              r11, 409
                        mov              qword ptr [rbp + 912], 2             # result
                        mov              dword ptr [rbp + 916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_943_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n876_lit_string_α
.Llit_string_α_943_0:   .quad            .Llit_string_α_943_0_s
.Llit_string_α_943_0_s: .string          "m"
                        .size            n875_lit_string_bx, .-n875_lit_string_bx
                        .type            n876_lit_string_bx, @function
n876_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n876_lit_string_α:      mov              r11, 410
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_944_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n877_lit_string_α
.Llit_string_α_944_0:   .quad            .Llit_string_α_944_0_s
.Llit_string_α_944_0_s: .string          "."
                        .size            n876_lit_string_bx, .-n876_lit_string_bx
                        .type            n877_lit_string_bx, @function
n877_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n877_lit_string_α:      mov              r11, 411
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_945_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n878_lit_string_α
.Llit_string_α_945_0:   .quad            .Llit_string_α_945_0_s
.Llit_string_α_945_0_s: .string          "n"
                        .size            n877_lit_string_bx, .-n877_lit_string_bx
                        .type            n878_lit_string_bx, @function
n878_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n878_lit_string_α:      mov              r11, 412
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_946_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n879_lit_string_α
.Llit_string_α_946_0:   .quad            .Llit_string_α_946_0_s
.Llit_string_α_946_0_s: .string          "."
                        .size            n878_lit_string_bx, .-n878_lit_string_bx
                        .type            n879_lit_string_bx, @function
n879_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n879_lit_string_α:      mov              r11, 413
                        mov              qword ptr [rbp + 688], 2             # result
                        mov              dword ptr [rbp + 692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_947_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n880_lit_string_α
.Llit_string_α_947_0:   .quad            .Llit_string_α_947_0_s
.Llit_string_α_947_0_s: .string          "o"
                        .size            n879_lit_string_bx, .-n879_lit_string_bx
                        .type            n880_lit_string_bx, @function
n880_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n880_lit_string_α:      mov              r11, 414
                        mov              qword ptr [rbp + 672], 2             # result
                        mov              dword ptr [rbp + 676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_948_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n881_lit_string_α
.Llit_string_α_948_0:   .quad            .Llit_string_α_948_0_s
.Llit_string_α_948_0_s: .string          "."
                        .size            n880_lit_string_bx, .-n880_lit_string_bx
                        .type            n881_lit_string_bx, @function
n881_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n881_lit_string_α:      mov              r11, 415
                        mov              qword ptr [rbp + 576], 2             # result
                        mov              dword ptr [rbp + 580], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_949_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n882_lit_string_α
.Llit_string_α_949_0:   .quad            .Llit_string_α_949_0_s
.Llit_string_α_949_0_s: .string          "p"
                        .size            n881_lit_string_bx, .-n881_lit_string_bx
                        .type            n882_lit_string_bx, @function
n882_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n882_lit_string_α:      mov              r11, 416
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_950_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n883_lit_string_α
.Llit_string_α_950_0:   .quad            .Llit_string_α_950_0_s
.Llit_string_α_950_0_s: .string          "."
                        .size            n882_lit_string_bx, .-n882_lit_string_bx
                        .type            n883_lit_string_bx, @function
n883_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n883_lit_string_α:      mov              r11, 417
                        mov              qword ptr [rbp + 464], 2             # result
                        mov              dword ptr [rbp + 468], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_951_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n884_lit_string_α
.Llit_string_α_951_0:   .quad            .Llit_string_α_951_0_s
.Llit_string_α_951_0_s: .string          "q"
                        .size            n883_lit_string_bx, .-n883_lit_string_bx
                        .type            n884_lit_string_bx, @function
n884_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n884_lit_string_α:      mov              r11, 418
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_952_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n885_lit_string_α
.Llit_string_α_952_0:   .quad            .Llit_string_α_952_0_s
.Llit_string_α_952_0_s: .string          "."
                        .size            n884_lit_string_bx, .-n884_lit_string_bx
                        .type            n885_lit_string_bx, @function
n885_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n885_lit_string_α:      mov              r11, 419
                        mov              qword ptr [rbp + 352], 2             # result
                        mov              dword ptr [rbp + 356], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_953_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n886_lit_string_α
.Llit_string_α_953_0:   .quad            .Llit_string_α_953_0_s
.Llit_string_α_953_0_s: .string          "r"
                        .size            n885_lit_string_bx, .-n885_lit_string_bx
                        .type            n886_lit_string_bx, @function
n886_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n886_lit_string_α:      mov              r11, 420
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_954_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n887_lit_string_α
.Llit_string_α_954_0:   .quad            .Llit_string_α_954_0_s
.Llit_string_α_954_0_s: .string          "."
                        .size            n886_lit_string_bx, .-n886_lit_string_bx
                        .type            n887_lit_string_bx, @function
n887_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n887_lit_string_α:      mov              r11, 421
                        mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_955_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n888_lit_string_α
.Llit_string_α_955_0:   .quad            .Llit_string_α_955_0_s
.Llit_string_α_955_0_s: .string          "s"
                        .size            n887_lit_string_bx, .-n887_lit_string_bx
                        .type            n888_lit_string_bx, @function
n888_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n888_lit_string_α:      mov              r11, 422
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_956_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n889_lit_string_α
.Llit_string_α_956_0:   .quad            .Llit_string_α_956_0_s
.Llit_string_α_956_0_s: .string          "."
                        .size            n888_lit_string_bx, .-n888_lit_string_bx
                        .type            n889_lit_string_bx, @function
n889_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n889_lit_string_α:      mov              r11, 423
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_957_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n890_lit_string_α
.Llit_string_α_957_0:   .quad            .Llit_string_α_957_0_s
.Llit_string_α_957_0_s: .string          "t"
                        .size            n889_lit_string_bx, .-n889_lit_string_bx
                        .type            n890_lit_string_bx, @function
n890_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n890_lit_string_α:      mov              r11, 424
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_958_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n891_call_α
.Llit_string_α_958_0:   .quad            .Llit_string_α_958_0_s
.Llit_string_α_958_0_s: .string          "[]"
                        .size            n890_lit_string_bx, .-n890_lit_string_bx
                        .type            n891_call_bx, @function
n891_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n891_call_α:            mov              r11, 425
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 200], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n892_call_α
n891_call_β:            mov              r11, 425;                            jmp   ham1$2F1_ω
                        .size            n891_call_bx, .-n891_call_bx
                        .type            n892_call_bx, @function
n892_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n892_call_α:            mov              r11, 426
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 312], rax
                        mov              rax, qword ptr [rbp + 240]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 248]
                        mov              qword ptr [rbp + 296], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n893_call_α
n892_call_β:            mov              r11, 426;                            jmp   ham1$2F1_ω
                        .size            n892_call_bx, .-n892_call_bx
                        .type            n893_call_bx, @function
n893_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n893_call_α:            mov              r11, 427
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 416], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 424], rax
                        mov              rax, qword ptr [rbp + 352]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 360]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 392], rax
                        lea              rdi, [rbp + 384]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 368], rax
                        mov              qword ptr [rbp + 376], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n894_call_α
n893_call_β:            mov              r11, 427;                            jmp   ham1$2F1_ω
                        .size            n893_call_bx, .-n893_call_bx
                        .type            n894_call_bx, @function
n894_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n894_call_α:            mov              r11, 428
                        mov              rax, qword ptr [rbp + 368]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 376]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n895_call_α
n894_call_β:            mov              r11, 428;                            jmp   ham1$2F1_ω
                        .size            n894_call_bx, .-n894_call_bx
                        .type            n895_call_bx, @function
n895_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n895_call_α:            mov              r11, 429
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n896_call_α
n895_call_β:            mov              r11, 429;                            jmp   ham1$2F1_ω
                        .size            n895_call_bx, .-n895_call_bx
                        .type            n896_call_bx, @function
n896_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n896_call_α:            mov              r11, 430
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n897_call_α
n896_call_β:            mov              r11, 430;                            jmp   ham1$2F1_ω
                        .size            n896_call_bx, .-n896_call_bx
                        .type            n897_call_bx, @function
n897_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n897_call_α:            mov              r11, 431
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 856], rax
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 832], rax
                        mov              rax, qword ptr [rbp + 904]
                        mov              qword ptr [rbp + 840], rax
                        lea              rdi, [rbp + 832]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n898_call_α
n897_call_β:            mov              r11, 431;                            jmp   ham1$2F1_ω
                        .size            n897_call_bx, .-n897_call_bx
                        .type            n898_call_bx, @function
n898_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n898_call_α:            mov              r11, 432
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 976], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 984], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 960], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 968], rax
                        mov              rax, qword ptr [rbp + 1008]
                        mov              qword ptr [rbp + 944], rax
                        mov              rax, qword ptr [rbp + 1016]
                        mov              qword ptr [rbp + 952], rax
                        lea              rdi, [rbp + 944]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n899_call_α
n898_call_β:            mov              r11, 432;                            jmp   ham1$2F1_ω
                        .size            n898_call_bx, .-n898_call_bx
                        .type            n899_call_bx, @function
n899_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n899_call_α:            mov              r11, 433
                        mov              rax, qword ptr [rbp + 928]
                        mov              qword ptr [rbp + 1088], rax
                        mov              rax, qword ptr [rbp + 936]
                        mov              qword ptr [rbp + 1096], rax
                        mov              rax, qword ptr [rbp + 1024]
                        mov              qword ptr [rbp + 1072], rax
                        mov              rax, qword ptr [rbp + 1032]
                        mov              qword ptr [rbp + 1080], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1064], rax
                        lea              rdi, [rbp + 1056]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n900_call_α
n899_call_β:            mov              r11, 433;                            jmp   ham1$2F1_ω
                        .size            n899_call_bx, .-n899_call_bx
                        .type            n900_call_bx, @function
n900_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n900_call_α:            mov              r11, 434
                        mov              rax, qword ptr [rbp + 1040]
                        mov              qword ptr [rbp + 1200], rax
                        mov              rax, qword ptr [rbp + 1048]
                        mov              qword ptr [rbp + 1208], rax
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1144]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 1176], rax
                        lea              rdi, [rbp + 1168]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n901_call_α
n900_call_β:            mov              r11, 434;                            jmp   ham1$2F1_ω
                        .size            n900_call_bx, .-n900_call_bx
                        .type            n901_call_bx, @function
n901_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n901_call_α:            mov              r11, 435
                        mov              rax, qword ptr [rbp + 1152]
                        mov              qword ptr [rbp + 1312], rax
                        mov              rax, qword ptr [rbp + 1160]
                        mov              qword ptr [rbp + 1320], rax
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n902_call_α
n901_call_β:            mov              r11, 435;                            jmp   ham1$2F1_ω
                        .size            n901_call_bx, .-n901_call_bx
                        .type            n902_call_bx, @function
n902_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n902_call_α:            mov              r11, 436
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 1432], rax
                        mov              rax, qword ptr [rbp + 1360]
                        mov              qword ptr [rbp + 1408], rax
                        mov              rax, qword ptr [rbp + 1368]
                        mov              qword ptr [rbp + 1416], rax
                        mov              rax, qword ptr [rbp + 1456]
                        mov              qword ptr [rbp + 1392], rax
                        mov              rax, qword ptr [rbp + 1464]
                        mov              qword ptr [rbp + 1400], rax
                        lea              rdi, [rbp + 1392]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n903_call_α
n902_call_β:            mov              r11, 436;                            jmp   ham1$2F1_ω
                        .size            n902_call_bx, .-n902_call_bx
                        .type            n903_call_bx, @function
n903_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n903_call_α:            mov              r11, 437
                        mov              rax, qword ptr [rbp + 1376]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1384]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1528], rax
                        mov              rax, qword ptr [rbp + 1568]
                        mov              qword ptr [rbp + 1504], rax
                        mov              rax, qword ptr [rbp + 1576]
                        mov              qword ptr [rbp + 1512], rax
                        lea              rdi, [rbp + 1504]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n904_call_α
n903_call_β:            mov              r11, 437;                            jmp   ham1$2F1_ω
                        .size            n903_call_bx, .-n903_call_bx
                        .type            n904_call_bx, @function
n904_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n904_call_α:            mov              r11, 438
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1648], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1656], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1632], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1640], rax
                        mov              rax, qword ptr [rbp + 1680]
                        mov              qword ptr [rbp + 1616], rax
                        mov              rax, qword ptr [rbp + 1688]
                        mov              qword ptr [rbp + 1624], rax
                        lea              rdi, [rbp + 1616]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1600], rax
                        mov              qword ptr [rbp + 1608], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n905_call_α
n904_call_β:            mov              r11, 438;                            jmp   ham1$2F1_ω
                        .size            n904_call_bx, .-n904_call_bx
                        .type            n905_call_bx, @function
n905_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n905_call_α:            mov              r11, 439
                        mov              rax, qword ptr [rbp + 1600]
                        mov              qword ptr [rbp + 1760], rax
                        mov              rax, qword ptr [rbp + 1608]
                        mov              qword ptr [rbp + 1768], rax
                        mov              rax, qword ptr [rbp + 1696]
                        mov              qword ptr [rbp + 1744], rax
                        mov              rax, qword ptr [rbp + 1704]
                        mov              qword ptr [rbp + 1752], rax
                        mov              rax, qword ptr [rbp + 1792]
                        mov              qword ptr [rbp + 1728], rax
                        mov              rax, qword ptr [rbp + 1800]
                        mov              qword ptr [rbp + 1736], rax
                        lea              rdi, [rbp + 1728]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1712], rax
                        mov              qword ptr [rbp + 1720], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n906_call_α
n905_call_β:            mov              r11, 439;                            jmp   ham1$2F1_ω
                        .size            n905_call_bx, .-n905_call_bx
                        .type            n906_call_bx, @function
n906_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n906_call_α:            mov              r11, 440
                        mov              rax, qword ptr [rbp + 1712]
                        mov              qword ptr [rbp + 1872], rax
                        mov              rax, qword ptr [rbp + 1720]
                        mov              qword ptr [rbp + 1880], rax
                        mov              rax, qword ptr [rbp + 1808]
                        mov              qword ptr [rbp + 1856], rax
                        mov              rax, qword ptr [rbp + 1816]
                        mov              qword ptr [rbp + 1864], rax
                        mov              rax, qword ptr [rbp + 1904]
                        mov              qword ptr [rbp + 1840], rax
                        mov              rax, qword ptr [rbp + 1912]
                        mov              qword ptr [rbp + 1848], rax
                        lea              rdi, [rbp + 1840]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1824], rax
                        mov              qword ptr [rbp + 1832], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n907_call_α
n906_call_β:            mov              r11, 440;                            jmp   ham1$2F1_ω
                        .size            n906_call_bx, .-n906_call_bx
                        .type            n907_call_bx, @function
n907_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n907_call_α:            mov              r11, 441
                        mov              rax, qword ptr [rbp + 1824]
                        mov              qword ptr [rbp + 1984], rax
                        mov              rax, qword ptr [rbp + 1832]
                        mov              qword ptr [rbp + 1992], rax
                        mov              rax, qword ptr [rbp + 1920]
                        mov              qword ptr [rbp + 1968], rax
                        mov              rax, qword ptr [rbp + 1928]
                        mov              qword ptr [rbp + 1976], rax
                        mov              rax, qword ptr [rbp + 2016]
                        mov              qword ptr [rbp + 1952], rax
                        mov              rax, qword ptr [rbp + 2024]
                        mov              qword ptr [rbp + 1960], rax
                        lea              rdi, [rbp + 1952]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1936], rax
                        mov              qword ptr [rbp + 1944], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n908_call_α
n907_call_β:            mov              r11, 441;                            jmp   ham1$2F1_ω
                        .size            n907_call_bx, .-n907_call_bx
                        .type            n908_call_bx, @function
n908_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n908_call_α:            mov              r11, 442
                        mov              rax, qword ptr [rbp + 1936]
                        mov              qword ptr [rbp + 2096], rax
                        mov              rax, qword ptr [rbp + 1944]
                        mov              qword ptr [rbp + 2104], rax
                        mov              rax, qword ptr [rbp + 2032]
                        mov              qword ptr [rbp + 2080], rax
                        mov              rax, qword ptr [rbp + 2040]
                        mov              qword ptr [rbp + 2088], rax
                        mov              rax, qword ptr [rbp + 2128]
                        mov              qword ptr [rbp + 2064], rax
                        mov              rax, qword ptr [rbp + 2136]
                        mov              qword ptr [rbp + 2072], rax
                        lea              rdi, [rbp + 2064]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2048], rax
                        mov              qword ptr [rbp + 2056], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n909_call_α
n908_call_β:            mov              r11, 442;                            jmp   ham1$2F1_ω
                        .size            n908_call_bx, .-n908_call_bx
                        .type            n909_call_bx, @function
n909_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n909_call_α:            mov              r11, 443
                        mov              rax, qword ptr [rbp + 2048]
                        mov              qword ptr [rbp + 2208], rax
                        mov              rax, qword ptr [rbp + 2056]
                        mov              qword ptr [rbp + 2216], rax
                        mov              rax, qword ptr [rbp + 2144]
                        mov              qword ptr [rbp + 2192], rax
                        mov              rax, qword ptr [rbp + 2152]
                        mov              qword ptr [rbp + 2200], rax
                        mov              rax, qword ptr [rbp + 2240]
                        mov              qword ptr [rbp + 2176], rax
                        mov              rax, qword ptr [rbp + 2248]
                        mov              qword ptr [rbp + 2184], rax
                        lea              rdi, [rbp + 2176]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2160], rax
                        mov              qword ptr [rbp + 2168], rdx
                        cmp              al, 104;                             je    ham1$2F1_ω
                                                                              jmp   n910_call_α
n909_call_β:            mov              r11, 443;                            jmp   ham1$2F1_ω
                        .size            n909_call_bx, .-n909_call_bx
                        .type            n910_call_bx, @function
n910_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n910_call_α:            mov              r11, 444
                        mov              rax, qword ptr [rbp + 2160]
                        mov              qword ptr [rbp + 2320], rax
                        mov              rax, qword ptr [rbp + 2168]
                        mov              qword ptr [rbp + 2328], rax
                        mov              rax, qword ptr [rbp + 2256]
                        mov              qword ptr [rbp + 2304], rax
                        mov              rax, qword ptr [rbp + 2264]
                        mov              qword ptr [rbp + 2312], rax
                        mov              rax, qword ptr [rbp + 2352]
                        mov              qword ptr [rbp + 2288], rax
                        mov              rax, qword ptr [rbp + 2360]
                        mov              qword ptr [rbp + 2296], rax
                        lea              rdi, [rbp + 2288]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2272], rax
                        mov              qword ptr [rbp + 2280], rdx
                        cmp              al, 104;                             je    ham1$2F1_step
                                                                              jmp   n911_var_ref_α
n910_call_β:            mov              r11, 444;                            jmp   ham1$2F1_step
                        .size            n910_call_bx, .-n910_call_bx
                        .type            n911_var_ref_bx, @function
n911_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n911_var_ref_α:         mov              r11, 445
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 2480]
                        mov              qword ptr [rbp + 2368], rax
                        mov              qword ptr [rbp + 2376], rdx;         jmp   n912_call_proc_staged_α
                        .size            n911_var_ref_bx, .-n911_var_ref_bx
                        .type            n912_call_proc_staged_bx, @function
n912_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n912_call_proc_staged_α:
                        mov              r11, 446
                        mov              qword ptr [rbp + 80], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_982_200
                        mov              rax, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_982_201
.Lcall_proc_staged_α_982_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 2272]
                        mov              rdx, qword ptr [rbp + 2280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_982_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_982_202
                        mov              rax, qword ptr [rbp + 2368]
                        mov              rdx, qword ptr [rbp + 2376]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_982_203
.Lcall_proc_staged_α_982_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 2368]
                        mov              rdx, qword ptr [rbp + 2376]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_982_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_982_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 3
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_982_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_982_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_982_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_982_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_982_3:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_982_21
                        add              rsp, 32
.Lcall_proc_staged_α_982_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_982_2
.Lcall_proc_staged_α_982_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 80], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_982_2
.Lcall_proc_staged_α_982_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_982_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   ham1$2F1_step
.Lcall_proc_staged_α_982_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_982_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 32]
                        mov              rdx, qword ptr [rbp + 40]
.Lcall_proc_staged_α_982_29:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    ham1$2F1_step
                                                                              jmp   ham1$2F1_ret0
n912_call_proc_staged_β:
                        mov              r11, 446
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_982_22
                        mov              rax, qword ptr [rbp + 80]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_982_22
                        mov              rcx, qword ptr [rbp + 88]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_982_22:
                                                                              jmp   ham1$2F1_step
.Lcall_proc_staged_α_982_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    ham1$2F1_step
                                                                              jmp   ham1$2F1_ret0
.Lcall_proc_staged_α_982_0:
                        .quad            .Lcall_proc_staged_α_982_0_s
.Lcall_proc_staged_α_982_0_s:
                        .string          "cycle_ham/2"
                        .size            n912_call_proc_staged_bx, .-n912_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
ham1$2F1_ret0:
                        lea              rax, [rip + n912_call_proc_staged_β]
                        mov              qword ptr [rbp + 2528], rax
                                                                              jmp   ham1$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
ham1$2F1_step:
                        mov              rdi, qword ptr [rbp + 2512]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 2528], 0
                        lea              rdi, [rbp + 32]
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rax, qword ptr [rbp + 2520]
                        test             rax, rax
                                                                              je    ham1$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
ham1$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
ham1$2F1_β:
                        test             r15, r15
                                                                              jne   ham1$2F1_ω
                        mov              rax, qword ptr [rbp + 2528]
                        mov              qword ptr [rbp + 2528], 0
                        test             rax, rax
                                                                              jne   ham1$2F1_βres
                                                                              jmp   ham1$2F1_step
ham1$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
ham1$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 2552]
                        mov              rax, qword ptr [rbp + 2536]
                        cmp              r13, rax;                            je    ham1$2F1_altdet
                        lea              rdx, [rip + ham1$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 2568];         jmp   rcx
ham1$2F1_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 2576]
                        mov              rbp, qword ptr [rbp + 2568];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
ham1$2F1_ω:
                        mov              rcx, qword ptr [rbp + 2560]
                        mov              r13, qword ptr [rbp + 2536]
                        lea              rsp, [rbp + 2576]
                        mov              rbp, qword ptr [rbp + 2568];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__chain_ham$2F3:
                        sub              rsp, 1776
                        mov              qword ptr [rsp + 1752], rcx
                        mov              qword ptr [rsp + 1760], rdx
                        mov              qword ptr [rsp + 1768], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1736], r13
                        mov              qword ptr [rsp + 1728], 0
                        mov              qword ptr [rsp + 1720], 0
                        mov              qword ptr [rsp + 1712], r12
                        lea              rax, [rip + chain_ham$2F3_alt1]
                        mov              qword ptr [rsp + 1720], rax
                        lea              rdi, [rsp + 1712]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1600
                        mov              edx, 1712
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
chain_ham$2F3_α_body:
                        .type            n983_var_ref_bx, @function
n983_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n983_var_ref_α:         mov              r11, 447
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n984_lit_string_α
                        .size            n983_var_ref_bx, .-n983_var_ref_bx
                        .type            n984_lit_string_bx, @function
n984_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n984_lit_string_α:      mov              r11, 448
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1029_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n985_var_ref_α
.Llit_string_α_1029_0:  .quad            .Llit_string_α_1029_0_s
.Llit_string_α_1029_0_s:
                        .string          "."
                        .size            n984_lit_string_bx, .-n984_lit_string_bx
                        .type            n985_var_ref_bx, @function
n985_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n985_var_ref_α:         mov              r11, 449
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1616]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n986_lit_string_α
                        .size            n985_var_ref_bx, .-n985_var_ref_bx
                        .type            n986_lit_string_bx, @function
n986_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n986_lit_string_α:      mov              r11, 450
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_1032_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n987_call_α
.Llit_string_α_1032_0:  .quad            .Llit_string_α_1032_0_s
.Llit_string_α_1032_0_s:
                        .string          "[]"
                        .size            n986_lit_string_bx, .-n986_lit_string_bx
                        .type            n987_call_bx, @function
n987_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n987_call_α:            mov              r11, 451
                        mov              rax, qword ptr [rbp + 448]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 456]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 464]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 472]
                        mov              qword ptr [rbp + 520], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 496], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 504], rax
                        lea              rdi, [rbp + 496]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx
                        cmp              al, 104;                             je    chain_ham$2F3_step
                                                                              jmp   n988_call_α
n987_call_β:            mov              r11, 451;                            jmp   chain_ham$2F3_step
                        .size            n987_call_bx, .-n987_call_bx
                        .type            n988_call_bx, @function
n988_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n988_call_α:            mov              r11, 452
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 488]
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
                        cmp              al, 104;                             je    chain_ham$2F3_step
                                                                              jmp   n989_var_ref_α
n988_call_β:            mov              r11, 452;                            jmp   chain_ham$2F3_step
                        .size            n988_call_bx, .-n988_call_bx
                        .type            n989_var_ref_bx, @function
n989_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n989_var_ref_α:         mov              r11, 453
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n990_var_ref_α
                        .size            n989_var_ref_bx, .-n989_var_ref_bx
                        .type            n990_var_ref_bx, @function
n990_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n990_var_ref_α:         mov              r11, 454
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n991_call_α
                        .size            n990_var_ref_bx, .-n990_var_ref_bx
                        .type            n991_call_bx, @function
n991_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n991_call_α:            mov              r11, 455
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
                        cmp              al, 104;                             je    chain_ham$2F3_step
                                                                              jmp   n992_var_ref_α
n991_call_β:            mov              r11, 455;                            jmp   chain_ham$2F3_step
                        .size            n991_call_bx, .-n991_call_bx
                        .type            n992_var_ref_bx, @function
n992_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n992_var_ref_α:         mov              r11, 456
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n993_lit_string_α
                        .size            n992_var_ref_bx, .-n992_var_ref_bx
                        .type            n993_lit_string_bx, @function
n993_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n993_lit_string_α:      mov              r11, 457
                        mov              qword ptr [rbp + 256], 2             # result
                        mov              dword ptr [rbp + 260], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1042_0]
                        mov              qword ptr [rbp + 264], rax;          jmp   n994_var_ref_α
.Llit_string_α_1042_0:  .quad            .Llit_string_α_1042_0_s
.Llit_string_α_1042_0_s:
                        .string          "."
                        .size            n993_lit_string_bx, .-n993_lit_string_bx
                        .type            n994_var_ref_bx, @function
n994_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n994_var_ref_α:         mov              r11, 458
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1616]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n995_var_ref_α
                        .size            n994_var_ref_bx, .-n994_var_ref_bx
                        .type            n995_var_ref_bx, @function
n995_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n995_var_ref_α:         mov              r11, 459
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n996_call_α
                        .size            n995_var_ref_bx, .-n995_var_ref_bx
                        .type            n996_call_bx, @function
n996_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n996_call_α:            mov              r11, 460
                        mov              rax, qword ptr [rbp + 144]
                        mov              qword ptr [rbp + 224], rax
                        mov              rax, qword ptr [rbp + 152]
                        mov              qword ptr [rbp + 232], rax
                        mov              rax, qword ptr [rbp + 160]
                        mov              qword ptr [rbp + 208], rax
                        mov              rax, qword ptr [rbp + 168]
                        mov              qword ptr [rbp + 216], rax
                        mov              rax, qword ptr [rbp + 256]
                        mov              qword ptr [rbp + 192], rax
                        mov              rax, qword ptr [rbp + 264]
                        mov              qword ptr [rbp + 200], rax
                        lea              rdi, [rbp + 192]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 176], rax
                        mov              qword ptr [rbp + 184], rdx
                        cmp              al, 104;                             je    chain_ham$2F3_step
                                                                              jmp   n997_call_α
n996_call_β:            mov              r11, 460;                            jmp   chain_ham$2F3_step
                        .size            n996_call_bx, .-n996_call_bx
                        .type            n997_call_bx, @function
n997_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n997_call_α:            mov              r11, 461
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 96], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 104], rax
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    chain_ham$2F3_step
                                                                              jmp   chain_ham$2F3_γ
n997_call_β:            mov              r11, 461;                            jmp   chain_ham$2F3_step
                        .size            n997_call_bx, .-n997_call_bx
                        .type            n998_var_ref_bx, @function
n998_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n998_var_ref_α:         mov              r11, 462
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1456], rax
                        mov              qword ptr [rbp + 1464], rdx;         jmp   n999_lit_string_α
                        .size            n998_var_ref_bx, .-n998_var_ref_bx
                        .type            n999_lit_string_bx, @function
n999_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n999_lit_string_α:      mov              r11, 463
                        mov              qword ptr [rbp + 1584], 2            # result
                        mov              dword ptr [rbp + 1588], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1051_0]
                        mov              qword ptr [rbp + 1592], rax;         jmp   n1000_var_ref_α
.Llit_string_α_1051_0:  .quad            .Llit_string_α_1051_0_s
.Llit_string_α_1051_0_s:
                        .string          "."
                        .size            n999_lit_string_bx, .-n999_lit_string_bx
                        .type            n1000_var_ref_bx, @function
n1000_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1000_var_ref_α:        mov              r11, 464
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1616]
                        mov              qword ptr [rbp + 1488], rax
                        mov              qword ptr [rbp + 1496], rdx;         jmp   n1001_var_ref_α
                        .size            n1000_var_ref_bx, .-n1000_var_ref_bx
                        .type            n1001_var_ref_bx, @function
n1001_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1001_var_ref_α:        mov              r11, 465
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 1472], rax
                        mov              qword ptr [rbp + 1480], rdx;         jmp   n1002_call_α
                        .size            n1001_var_ref_bx, .-n1001_var_ref_bx
                        .type            n1002_call_bx, @function
n1002_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1002_call_α:           mov              r11, 466
                        mov              rax, qword ptr [rbp + 1472]
                        mov              qword ptr [rbp + 1552], rax
                        mov              rax, qword ptr [rbp + 1480]
                        mov              qword ptr [rbp + 1560], rax
                        mov              rax, qword ptr [rbp + 1488]
                        mov              qword ptr [rbp + 1536], rax
                        mov              rax, qword ptr [rbp + 1496]
                        mov              qword ptr [rbp + 1544], rax
                        mov              rax, qword ptr [rbp + 1584]
                        mov              qword ptr [rbp + 1520], rax
                        mov              rax, qword ptr [rbp + 1592]
                        mov              qword ptr [rbp + 1528], rax
                        lea              rdi, [rbp + 1520]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1504], rax
                        mov              qword ptr [rbp + 1512], rdx
                        cmp              al, 104;                             je    chain_ham$2F3_step
                                                                              jmp   n1003_call_α
n1002_call_β:           mov              r11, 466;                            jmp   chain_ham$2F3_step
                        .size            n1002_call_bx, .-n1002_call_bx
                        .type            n1003_call_bx, @function
n1003_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1003_call_α:           mov              r11, 467
                        mov              rax, qword ptr [rbp + 1504]
                        mov              qword ptr [rbp + 1424], rax
                        mov              rax, qword ptr [rbp + 1512]
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
                        cmp              al, 104;                             je    chain_ham$2F3_step
                                                                              jmp   n1004_var_ref_α
n1003_call_β:           mov              r11, 467;                            jmp   chain_ham$2F3_step
                        .size            n1003_call_bx, .-n1003_call_bx
                        .type            n1004_var_ref_bx, @function
n1004_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1004_var_ref_α:        mov              r11, 468
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 1360], rax
                        mov              qword ptr [rbp + 1368], rdx;         jmp   n1005_var_ref_α
                        .size            n1004_var_ref_bx, .-n1004_var_ref_bx
                        .type            n1005_var_ref_bx, @function
n1005_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1005_var_ref_α:        mov              r11, 469
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 1376], rax
                        mov              qword ptr [rbp + 1384], rdx;         jmp   n1006_call_α
                        .size            n1005_var_ref_bx, .-n1005_var_ref_bx
                        .type            n1006_call_bx, @function
n1006_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1006_call_α:           mov              r11, 470
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
                        cmp              al, 104;                             je    chain_ham$2F3_step
                                                                              jmp   n1007_var_ref_α
n1006_call_β:           mov              r11, 470;                            jmp   chain_ham$2F3_step
                        .size            n1006_call_bx, .-n1006_call_bx
                        .type            n1007_var_ref_bx, @function
n1007_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1007_var_ref_α:        mov              r11, 471
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx;         jmp   n1008_var_ref_α
                        .size            n1007_var_ref_bx, .-n1007_var_ref_bx
                        .type            n1008_var_ref_bx, @function
n1008_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1008_var_ref_α:        mov              r11, 472
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 1280], rax
                        mov              qword ptr [rbp + 1288], rdx;         jmp   n1009_call_α
                        .size            n1008_var_ref_bx, .-n1008_var_ref_bx
                        .type            n1009_call_bx, @function
n1009_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1009_call_α:           mov              r11, 473
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
                        cmp              al, 104;                             je    chain_ham$2F3_step
                                                                              jmp   n1010_var_ref_α
n1009_call_β:           mov              r11, 473;                            jmp   chain_ham$2F3_step
                        .size            n1009_call_bx, .-n1009_call_bx
                        .type            n1010_var_ref_bx, @function
n1010_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1010_var_ref_α:        mov              r11, 474
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 1152], rax
                        mov              qword ptr [rbp + 1160], rdx;         jmp   n1011_var_ref_α
                        .size            n1010_var_ref_bx, .-n1010_var_ref_bx
                        .type            n1011_var_ref_bx, @function
n1011_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1011_var_ref_α:        mov              r11, 475
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1680]
                        mov              qword ptr [rbp + 1168], rax
                        mov              qword ptr [rbp + 1176], rdx;         jmp   n1012_var_ref_α
                        .size            n1011_var_ref_bx, .-n1011_var_ref_bx
                        .type            n1012_var_ref_bx, @function
n1012_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1012_var_ref_α:        mov              r11, 476
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1632]
                        mov              qword ptr [rbp + 1184], rax
                        mov              qword ptr [rbp + 1192], rdx;         jmp   n1013_call_proc_staged_α
                        .size            n1012_var_ref_bx, .-n1012_var_ref_bx
                        .type            n1013_call_proc_staged_bx, @function
n1013_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1013_call_proc_staged_α:
                        mov              r11, 477
                        mov              qword ptr [rbp + 1120], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1075_200
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1075_201
.Lcall_proc_staged_α_1075_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1075_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1075_202
                        mov              rax, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1075_203
.Lcall_proc_staged_α_1075_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1168]
                        mov              rdx, qword ptr [rbp + 1176]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1075_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1075_204
                        mov              rax, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_1075_205
.Lcall_proc_staged_α_1075_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 1184]
                        mov              rdx, qword ptr [rbp + 1192]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1075_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1075_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 0
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1075_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1075_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1075_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1075_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1075_3:
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1075_21
                        add              rsp, 32
.Lcall_proc_staged_α_1075_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1075_2
.Lcall_proc_staged_α_1075_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 1120], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1075_2
.Lcall_proc_staged_α_1075_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1075_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   chain_ham$2F3_step
.Lcall_proc_staged_α_1075_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1075_29
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
.Lcall_proc_staged_α_1075_29:
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    chain_ham$2F3_step
                                                                              jmp   n1014_var_ref_α
n1013_call_proc_staged_β:
                        mov              r11, 477
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1075_22
                        mov              rax, qword ptr [rbp + 1120]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1075_22
                        mov              rcx, qword ptr [rbp + 1128]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1075_22:
                                                                              jmp   chain_ham$2F3_step
.Lcall_proc_staged_α_1075_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx
                        cmp              al, 104;                             je    chain_ham$2F3_step
                                                                              jmp   n1014_var_ref_α
.Lcall_proc_staged_α_1075_0:
                        .quad            .Lcall_proc_staged_α_1075_0_s
.Lcall_proc_staged_α_1075_0_s:
                        .string          "del/3"
                        .size            n1013_call_proc_staged_bx, .-n1013_call_proc_staged_bx
                        .type            n1014_var_ref_bx, @function
n1014_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1014_var_ref_α:        mov              r11, 478
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1616]
                        mov              qword ptr [rbp + 1024], rax
                        mov              qword ptr [rbp + 1032], rdx;         jmp   n1015_var_ref_α
                        .size            n1014_var_ref_bx, .-n1014_var_ref_bx
                        .type            n1015_var_ref_bx, @function
n1015_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1015_var_ref_α:        mov              r11, 479
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n1016_call_proc_staged_α
                        .size            n1015_var_ref_bx, .-n1015_var_ref_bx
                        .type            n1016_call_proc_staged_bx, @function
n1016_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1016_call_proc_staged_α:
                        mov              r11, 480
                        mov              qword ptr [rbp + 992], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1081_200
                        mov              rax, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1081_201
.Lcall_proc_staged_α_1081_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 1024]
                        mov              rdx, qword ptr [rbp + 1032]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1081_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1081_202
                        mov              rax, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1081_203
.Lcall_proc_staged_α_1081_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1040]
                        mov              rdx, qword ptr [rbp + 1048]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1081_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1081_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 7
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1081_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1081_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1081_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1081_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1081_3:
                        mov              qword ptr [rbp + 992], rax
                        mov              qword ptr [rbp + 1000], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1081_21
                        add              rsp, 32
.Lcall_proc_staged_α_1081_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1081_2
.Lcall_proc_staged_α_1081_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 992], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1081_2
.Lcall_proc_staged_α_1081_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1081_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1013_call_proc_staged_β
.Lcall_proc_staged_α_1081_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1081_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 944]
                        mov              rdx, qword ptr [rbp + 952]
.Lcall_proc_staged_α_1081_29:
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              al, 104;                             je    n1013_call_proc_staged_β
                                                                              jmp   n1017_lit_string_α
n1016_call_proc_staged_β:
                        mov              r11, 480
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1081_22
                        mov              rax, qword ptr [rbp + 992]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1081_22
                        mov              rcx, qword ptr [rbp + 1000]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1081_22:
                                                                              jmp   n1013_call_proc_staged_β
.Lcall_proc_staged_α_1081_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 944], rax
                        mov              qword ptr [rbp + 952], rdx
                        cmp              al, 104;                             je    n1013_call_proc_staged_β
                                                                              jmp   n1017_lit_string_α
.Lcall_proc_staged_α_1081_0:
                        .quad            .Lcall_proc_staged_α_1081_0_s
.Lcall_proc_staged_α_1081_0_s:
                        .string          "edge/2"
                        .size            n1016_call_proc_staged_bx, .-n1016_call_proc_staged_bx
                        .type            n1017_lit_string_bx, @function
n1017_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1017_lit_string_α:     mov              r11, 481
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1082_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n1018_var_ref_α
.Llit_string_α_1082_0:  .quad            .Llit_string_α_1082_0_s
.Llit_string_α_1082_0_s:
                        .string          "."
                        .size            n1017_lit_string_bx, .-n1017_lit_string_bx
                        .type            n1018_var_ref_bx, @function
n1018_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1018_var_ref_α:        mov              r11, 482
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1648]
                        mov              qword ptr [rbp + 688], rax
                        mov              qword ptr [rbp + 696], rdx;          jmp   n1019_var_ref_α
                        .size            n1018_var_ref_bx, .-n1018_var_ref_bx
                        .type            n1019_var_ref_bx, @function
n1019_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1019_var_ref_α:        mov              r11, 483
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1632]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n1020_call_α
                        .size            n1019_var_ref_bx, .-n1019_var_ref_bx
                        .type            n1020_call_bx, @function
n1020_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1020_call_α:           mov              r11, 484
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 760], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 744], rax
                        mov              rax, qword ptr [rbp + 784]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 792]
                        mov              qword ptr [rbp + 728], rax
                        lea              rdi, [rbp + 720]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    chain_ham$2F3_step
                                                                              jmp   n1021_lit_string_α
n1020_call_β:           mov              r11, 484;                            jmp   chain_ham$2F3_step
                        .size            n1020_call_bx, .-n1020_call_bx
                        .type            n1021_lit_string_bx, @function
n1021_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1021_lit_string_α:     mov              r11, 485
                        mov              qword ptr [rbp + 912], 2             # result
                        mov              dword ptr [rbp + 916], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_1088_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n1022_var_ref_α
.Llit_string_α_1088_0:  .quad            .Llit_string_α_1088_0_s
.Llit_string_α_1088_0_s:
                        .string          "."
                        .size            n1021_lit_string_bx, .-n1021_lit_string_bx
                        .type            n1022_var_ref_bx, @function
n1022_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1022_var_ref_α:        mov              r11, 486
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1616]
                        mov              qword ptr [rbp + 816], rax
                        mov              qword ptr [rbp + 824], rdx;          jmp   n1023_var_ref_α
                        .size            n1022_var_ref_bx, .-n1022_var_ref_bx
                        .type            n1023_var_ref_bx, @function
n1023_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1023_var_ref_α:        mov              r11, 487
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1600]
                        mov              qword ptr [rbp + 800], rax
                        mov              qword ptr [rbp + 808], rdx;          jmp   n1024_call_α
                        .size            n1023_var_ref_bx, .-n1023_var_ref_bx
                        .type            n1024_call_bx, @function
n1024_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1024_call_α:           mov              r11, 488
                        mov              rax, qword ptr [rbp + 800]
                        mov              qword ptr [rbp + 880], rax
                        mov              rax, qword ptr [rbp + 808]
                        mov              qword ptr [rbp + 888], rax
                        mov              rax, qword ptr [rbp + 816]
                        mov              qword ptr [rbp + 864], rax
                        mov              rax, qword ptr [rbp + 824]
                        mov              qword ptr [rbp + 872], rax
                        mov              rax, qword ptr [rbp + 912]
                        mov              qword ptr [rbp + 848], rax
                        mov              rax, qword ptr [rbp + 920]
                        mov              qword ptr [rbp + 856], rax
                        lea              rdi, [rbp + 848]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx
                        cmp              al, 104;                             je    chain_ham$2F3_step
                                                                              jmp   n1025_var_ref_α
n1024_call_β:           mov              r11, 488;                            jmp   chain_ham$2F3_step
                        .size            n1024_call_bx, .-n1024_call_bx
                        .type            n1025_var_ref_bx, @function
n1025_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1025_var_ref_α:        mov              r11, 489
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1664]
                        mov              qword ptr [rbp + 928], rax
                        mov              qword ptr [rbp + 936], rdx;          jmp   n1026_call_proc_staged_α
                        .size            n1025_var_ref_bx, .-n1025_var_ref_bx
                        .type            n1026_call_proc_staged_bx, @function
n1026_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1026_call_proc_staged_α:
                        mov              r11, 490
                        mov              qword ptr [rbp + 640], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1097_200
                        mov              rax, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1097_201
.Lcall_proc_staged_α_1097_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 704]
                        mov              rdx, qword ptr [rbp + 712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1097_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1097_202
                        mov              rax, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1097_203
.Lcall_proc_staged_α_1097_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 832]
                        mov              rdx, qword ptr [rbp + 840]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1097_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1097_204
                        mov              rax, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_1097_205
.Lcall_proc_staged_α_1097_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 928]
                        mov              rdx, qword ptr [rbp + 936]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1097_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1097_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1097_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1097_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1097_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1097_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1097_3:
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1097_21
                        add              rsp, 32
.Lcall_proc_staged_α_1097_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1097_2
.Lcall_proc_staged_α_1097_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 640], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1097_2
.Lcall_proc_staged_α_1097_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1097_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1016_call_proc_staged_β
.Lcall_proc_staged_α_1097_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1097_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 576]
                        mov              rdx, qword ptr [rbp + 584]
.Lcall_proc_staged_α_1097_29:
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    n1016_call_proc_staged_β
                                                                              jmp   chain_ham$2F3_ret1
n1026_call_proc_staged_β:
                        mov              r11, 490
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1097_22
                        mov              rax, qword ptr [rbp + 640]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1097_22
                        mov              rcx, qword ptr [rbp + 648]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1097_22:
                                                                              jmp   n1016_call_proc_staged_β
.Lcall_proc_staged_α_1097_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx
                        cmp              al, 104;                             je    n1016_call_proc_staged_β
                                                                              jmp   chain_ham$2F3_ret1
.Lcall_proc_staged_α_1097_0:
                        .quad            .Lcall_proc_staged_α_1097_0_s
.Lcall_proc_staged_α_1097_0_s:
                        .string          "chain_ham/3"
                        .size            n1026_call_proc_staged_bx, .-n1026_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
chain_ham$2F3_ret1:
                        lea              rax, [rip + n1026_call_proc_staged_β]
                        mov              qword ptr [rbp + 1728], rax
                                                                              jmp   chain_ham$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
chain_ham$2F3_step:
                        mov              rdi, qword ptr [rbp + 1712]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1728], 0
                        lea              rdi, [rbp + 64]
                        xor              eax, eax
                        mov              ecx, 112
                        rep              stosb
                        mov              rax, qword ptr [rbp + 1720]
                        test             rax, rax
                                                                              je    chain_ham$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
chain_ham$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1720], rax
                                                                              jmp   n998_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
chain_ham$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
chain_ham$2F3_β:
                        test             r15, r15
                                                                              jne   chain_ham$2F3_ω
                        mov              rax, qword ptr [rbp + 1728]
                        mov              qword ptr [rbp + 1728], 0
                        test             rax, rax
                                                                              jne   chain_ham$2F3_βres
                                                                              jmp   chain_ham$2F3_step
chain_ham$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
chain_ham$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1752]
                        mov              rax, qword ptr [rbp + 1736]
                        cmp              r13, rax;                            je    chain_ham$2F3_altdet
                        lea              rdx, [rip + chain_ham$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rcx
chain_ham$2F3_altdet:   xor              eax, eax
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
chain_ham$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1760]
                        mov              r13, qword ptr [rbp + 1736]
                        lea              rsp, [rbp + 1776]
                        mov              rbp, qword ptr [rbp + 1768];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__main$2F0:
                        sub              rsp, 272
                        mov              qword ptr [rsp + 248], rcx
                        mov              qword ptr [rsp + 256], rdx
                        mov              qword ptr [rsp + 264], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 232], r13
                        mov              qword ptr [rsp + 224], 0
                        mov              qword ptr [rsp + 216], 0
                        mov              qword ptr [rsp + 208], r12
                        mov              rdi, rsp
                        mov              esi, 176
                        mov              edx, 208
                        call             rt_jmp_frame_lexprep2@PLT
main$2F0_α_body:
                        .type            n1098_var_ref_bx, @function
n1098_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1098_var_ref_α:        mov              r11, 491
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n1099_call_proc_staged_α
                        .size            n1098_var_ref_bx, .-n1098_var_ref_bx
                        .type            n1099_call_proc_staged_bx, @function
n1099_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1099_call_proc_staged_α:
                        mov              r11, 492
                        mov              qword ptr [rbp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1106_200
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1106_201
.Lcall_proc_staged_α_1106_200:
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
.Lcall_proc_staged_α_1106_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1106_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 1
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1106_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1106_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1106_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1106_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1106_3:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1106_21
                        add              rsp, 32
.Lcall_proc_staged_α_1106_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1106_2
.Lcall_proc_staged_α_1106_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 128], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1106_2
.Lcall_proc_staged_α_1106_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1106_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main$2F0_step
.Lcall_proc_staged_α_1106_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1106_29
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
.Lcall_proc_staged_α_1106_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n1100_var_α
n1099_call_proc_staged_β:
                        mov              r11, 492
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1106_22
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1106_22
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1106_22:
                                                                              jmp   main$2F0_step
.Lcall_proc_staged_α_1106_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n1100_var_α
.Lcall_proc_staged_α_1106_0:
                        .quad            .Lcall_proc_staged_α_1106_0_s
.Lcall_proc_staged_α_1106_0_s:
                        .string          "ham1/1"
                        .size            n1099_call_proc_staged_bx, .-n1099_call_proc_staged_bx
                        .type            n1100_var_bx, @function
n1100_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1100_var_α:            mov              r11, 493
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 88], rax;           jmp   n1101_call_α
                        .size            n1100_var_bx, .-n1100_var_bx
                        .type            n1101_call_bx, @function
n1101_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1101_call_α:           mov              r11, 494
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
                        cmp              al, 104;                             je    n1099_call_proc_staged_β
                                                                              jmp   n1102_call_α
n1101_call_β:           mov              r11, 494;                            jmp   n1099_call_proc_staged_β
                        .size            n1101_call_bx, .-n1101_call_bx
                        .type            n1102_call_bx, @function
n1102_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1102_call_α:           mov              r11, 495
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
                        cmp              al, 104;                             je    n1099_call_proc_staged_β
                                                                              jmp   main$2F0_ret0
n1102_call_β:           mov              r11, 495;                            jmp   n1099_call_proc_staged_β
                        .size            n1102_call_bx, .-n1102_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n1099_call_proc_staged_β]
                        mov              qword ptr [rbp + 224], rax
                                                                              jmp   main$2F0_γ
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_step:
                        mov              rdi, qword ptr [rbp + 208]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], 0
                        lea              rdi, [rbp + 16]
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rax, qword ptr [rbp + 216]
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
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 224], 0
                        test             rax, rax
                                                                              jne   main$2F0_βres
                                                                              jmp   main$2F0_step
main$2F0_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 248]
                        mov              rax, qword ptr [rbp + 232]
                        cmp              r13, rax;                            je    main$2F0_altdet
                        lea              rdx, [rip + main$2F0_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 264];          jmp   rcx
main$2F0_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 272]
                        mov              rbp, qword ptr [rbp + 264];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ω:
                        mov              rcx, qword ptr [rbp + 256]
                        mov              r13, qword ptr [rbp + 232]
                        lea              rsp, [rbp + 272]
                        mov              rbp, qword ptr [rbp + 264];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__edge$2F2:
                        sub              rsp, 592
                        mov              qword ptr [rsp + 568], rcx
                        mov              qword ptr [rsp + 576], rdx
                        mov              qword ptr [rsp + 584], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 552], r13
                        mov              qword ptr [rsp + 544], 0
                        mov              qword ptr [rsp + 536], 0
                        mov              qword ptr [rsp + 528], r12
                        mov              rdi, rsp
                        mov              esi, 464
                        mov              edx, 528
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
edge$2F2_α_body:
                        .type            n1111_var_ref_bx, @function
n1111_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1111_var_ref_α:        mov              r11, 496
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n1112_var_ref_α
                        .size            n1111_var_ref_bx, .-n1111_var_ref_bx
                        .type            n1112_var_ref_bx, @function
n1112_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1112_var_ref_α:        mov              r11, 497
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n1113_call_α
                        .size            n1112_var_ref_bx, .-n1112_var_ref_bx
                        .type            n1113_call_bx, @function
n1113_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1113_call_α:           mov              r11, 498
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
                        cmp              al, 104;                             je    edge$2F2_step
                                                                              jmp   n1114_var_ref_α
n1113_call_β:           mov              r11, 498;                            jmp   edge$2F2_step
                        .size            n1113_call_bx, .-n1113_call_bx
                        .type            n1114_var_ref_bx, @function
n1114_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1114_var_ref_α:        mov              r11, 499
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n1115_var_ref_α
                        .size            n1114_var_ref_bx, .-n1114_var_ref_bx
                        .type            n1115_var_ref_bx, @function
n1115_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1115_var_ref_α:        mov              r11, 500
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx;          jmp   n1116_call_α
                        .size            n1115_var_ref_bx, .-n1115_var_ref_bx
                        .type            n1116_call_bx, @function
n1116_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1116_call_α:           mov              r11, 501
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
                        cmp              al, 104;                             je    edge$2F2_step
                                                                              jmp   n1117_var_ref_α
n1116_call_β:           mov              r11, 501;                            jmp   edge$2F2_step
                        .size            n1116_call_bx, .-n1116_call_bx
                        .type            n1117_var_ref_bx, @function
n1117_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1117_var_ref_α:        mov              r11, 502
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 496]
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx;          jmp   n1118_var_ref_α
                        .size            n1117_var_ref_bx, .-n1117_var_ref_bx
                        .type            n1118_var_ref_bx, @function
n1118_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1118_var_ref_α:        mov              r11, 503
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n1119_call_proc_staged_α
                        .size            n1118_var_ref_bx, .-n1118_var_ref_bx
                        .type            n1119_call_proc_staged_bx, @function
n1119_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1119_call_proc_staged_α:
                        mov              r11, 504
                        mov              qword ptr [rbp + 208], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1138_200
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1138_201
.Lcall_proc_staged_α_1138_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1138_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1138_202
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1138_203
.Lcall_proc_staged_α_1138_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1138_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1138_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 2
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1138_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1138_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1138_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1138_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1138_3:
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1138_21
                        add              rsp, 32
.Lcall_proc_staged_α_1138_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1138_2
.Lcall_proc_staged_α_1138_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 208], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1138_2
.Lcall_proc_staged_α_1138_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1138_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   edge$2F2_step
.Lcall_proc_staged_α_1138_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1138_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
.Lcall_proc_staged_α_1138_29:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    edge$2F2_step
                                                                              jmp   n1120_var_ref_α
n1119_call_proc_staged_β:
                        mov              r11, 504
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1138_22
                        mov              rax, qword ptr [rbp + 208]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1138_22
                        mov              rcx, qword ptr [rbp + 216]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1138_22:
                                                                              jmp   edge$2F2_step
.Lcall_proc_staged_α_1138_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    edge$2F2_step
                                                                              jmp   n1120_var_ref_α
.Lcall_proc_staged_α_1138_0:
                        .quad            .Lcall_proc_staged_α_1138_0_s
.Lcall_proc_staged_α_1138_0_s:
                        .string          "connect/2"
                        .size            n1119_call_proc_staged_bx, .-n1119_call_proc_staged_bx
                        .type            n1120_var_ref_bx, @function
n1120_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1120_var_ref_α:        mov              r11, 505
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 464]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n1121_var_ref_α
                        .size            n1120_var_ref_bx, .-n1120_var_ref_bx
                        .type            n1121_var_ref_bx, @function
n1121_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1121_var_ref_α:        mov              r11, 506
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 480]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n1122_call_proc_staged_α
                        .size            n1121_var_ref_bx, .-n1121_var_ref_bx
                        .type            n1122_call_proc_staged_bx, @function
n1122_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1122_call_proc_staged_α:
                        mov              r11, 507
                        mov              qword ptr [rbp + 96], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1144_200
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_1144_201
.Lcall_proc_staged_α_1144_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1144_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_1144_202
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_1144_203
.Lcall_proc_staged_α_1144_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_1144_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1144_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 1
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1144_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1144_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1144_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1144_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1144_3:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1144_21
                        add              rsp, 32
.Lcall_proc_staged_α_1144_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1144_2
.Lcall_proc_staged_α_1144_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 96], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1144_2
.Lcall_proc_staged_α_1144_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1144_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n1119_call_proc_staged_β
.Lcall_proc_staged_α_1144_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1144_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 48]
                        mov              rdx, qword ptr [rbp + 56]
.Lcall_proc_staged_α_1144_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n1119_call_proc_staged_β
                                                                              jmp   edge$2F2_ret0
n1122_call_proc_staged_β:
                        mov              r11, 507
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1144_22
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1144_22
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1144_22:
                                                                              jmp   n1119_call_proc_staged_β
.Lcall_proc_staged_α_1144_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n1119_call_proc_staged_β
                                                                              jmp   edge$2F2_ret0
.Lcall_proc_staged_α_1144_0:
                        .quad            .Lcall_proc_staged_α_1144_0_s
.Lcall_proc_staged_α_1144_0_s:
                        .string          "el/2"
                        .size            n1122_call_proc_staged_bx, .-n1122_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
edge$2F2_ret0:
                        lea              rax, [rip + n1122_call_proc_staged_β]
                        mov              qword ptr [rbp + 544], rax
                                                                              jmp   edge$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
edge$2F2_step:
                        mov              rdi, qword ptr [rbp + 528]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 544], 0
                        lea              rdi, [rbp + 48]
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rax, qword ptr [rbp + 536]
                        test             rax, rax
                                                                              je    edge$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
edge$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
edge$2F2_β:
                        test             r15, r15
                                                                              jne   edge$2F2_ω
                        mov              rax, qword ptr [rbp + 544]
                        mov              qword ptr [rbp + 544], 0
                        test             rax, rax
                                                                              jne   edge$2F2_βres
                                                                              jmp   edge$2F2_step
edge$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
edge$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 568]
                        mov              rax, qword ptr [rbp + 552]
                        cmp              r13, rax;                            je    edge$2F2_altdet
                        lea              rdx, [rip + edge$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 584];          jmp   rcx
edge$2F2_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 592]
                        mov              rbp, qword ptr [rbp + 584];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
edge$2F2_ω:
                        mov              rcx, qword ptr [rbp + 576]
                        mov              r13, qword ptr [rbp + 552]
                        lea              rsp, [rbp + 592]
                        mov              rbp, qword ptr [rbp + 584];          jmp   rcx
                        .globl           main
main:
                        sub              rsp, 65544
                        push             rdi
                        push             rsi
                        call             core_lib_init@PLT
                        call             module_init
                        call             rt_gcheap_warmup@PLT
                        call             rtcc_load_all@PLT
                        xor              esi, esi
                        lea              rcx, [rip + .Lmain_zf_γ]
                        lea              rdx, [rip + .Lmain_zf_ω]
                                                                              jmp   main_α
.Lmain_zf_γ:            xor              edi, edi
                        call             exit@PLT
.Lmain_zf_ω:            mov              edi, 1
                        call             exit@PLT
#-----------------------------------------------------------------------------------------------------------------------
main_α:
                        sub              rsp, 128
                        mov              qword ptr [rsp + 104], rcx
                        mov              qword ptr [rsp + 112], rdx
                        mov              qword ptr [rsp + 120], rbp
                        mov              rbp, rsp
                        lea              rdi, [rsp + 64]
                        call             rt_pl_quad_seed@PLT
                        mov              qword ptr [rsp + 88], r13
                        mov              qword ptr [rsp + 80], 0
                        mov              qword ptr [rsp + 72], 0
                        mov              qword ptr [rsp + 64], r12
                        mov              rdi, rsp
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
main_α_body:
                        .type            n1145_call_proc_staged_bx, @function
n1145_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n1145_call_proc_staged_α:
                        mov              r11, 508
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_1147_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 6
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_1147_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_1147_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_1147_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_1147_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_1147_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_1147_21
                        add              rsp, 32
.Lcall_proc_staged_α_1147_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_1147_2
.Lcall_proc_staged_α_1147_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_1147_2
.Lcall_proc_staged_α_1147_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_1147_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_1147_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_1147_29
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
.Lcall_proc_staged_α_1147_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n1145_call_proc_staged_β:
                        mov              r11, 508
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_1147_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_1147_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_1147_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_1147_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_1147_0:
                        .quad            .Lcall_proc_staged_α_1147_0_s
.Lcall_proc_staged_α_1147_0_s:
                        .string          "main/0"
                        .size            n1145_call_proc_staged_bx, .-n1145_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "del/3"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__del$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1200
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec0]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname1:       .string          "el/2"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__el$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            816
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "connect/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__connect$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            10608
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "cycle_ham/2"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__cycle_ham$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1120
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "ham1/1"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__ham1$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            2496
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "chain_ham/3"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__chain_ham$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1696
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "main/0"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__main$2F0
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            0
                        .long            0
                        .long            192
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "edge/2"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__edge$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            512
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
