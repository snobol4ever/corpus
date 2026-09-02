                        .intel_syntax    noprefix
                        .text
#-----------------------------------------------------------------------------------------------------------------------
FN__sel$2F3:
                        sub              rsp, 1280
                        mov              qword ptr [rsp + 1256], rcx
                        mov              qword ptr [rsp + 1264], rdx
                        mov              qword ptr [rsp + 1272], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1240], r13
                        mov              qword ptr [rsp + 1232], 0
                        mov              qword ptr [rsp + 1224], 0
                        mov              qword ptr [rsp + 1216], r12
                        lea              rax, [rip + sel$2F3_alt1]
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
sel$2F3_α_body:
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
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   n3_var_ref_α
n2_call_β:              mov              r11, 3;                              jmp   sel$2F3_step
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
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   n8_call_α
n7_call_β:              mov              r11, 8;                              jmp   sel$2F3_step
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
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   n9_var_ref_α
n8_call_β:              mov              r11, 9;                              jmp   sel$2F3_step
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
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   sel$2F3_γ
n11_call_β:             mov              r11, 12;                             jmp   sel$2F3_step
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
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   n15_var_ref_α
n14_call_β:             mov              r11, 15;                             jmp   sel$2F3_step
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
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   n20_call_α
n19_call_β:             mov              r11, 20;                             jmp   sel$2F3_step
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
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   n21_var_ref_α
n20_call_β:             mov              r11, 21;                             jmp   sel$2F3_step
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
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   n26_call_α
n25_call_β:             mov              r11, 26;                             jmp   sel$2F3_step
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
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   n27_var_ref_α
n26_call_β:             mov              r11, 27;                             jmp   sel$2F3_step
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
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   sel$2F3_step
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
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   sel$2F3_ret1
n30_call_proc_staged_β: mov              r11, 31
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_80_22
                        mov              rax, qword ptr [rbp + 528]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_80_22
                        mov              rcx, qword ptr [rbp + 536]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_80_22:
                                                                              jmp   sel$2F3_step
.Lcall_proc_staged_α_80_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    sel$2F3_step
                                                                              jmp   sel$2F3_ret1
.Lcall_proc_staged_α_80_0:
                        .quad            .Lcall_proc_staged_α_80_0_s
.Lcall_proc_staged_α_80_0_s:
                        .string          "sel/3"
                        .size            n30_call_proc_staged_bx, .-n30_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_ret1:
                        lea              rax, [rip + n30_call_proc_staged_β]
                        mov              qword ptr [rbp + 1232], rax
                                                                              jmp   sel$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_step:
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
                                                                              je    sel$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1224], rax
                                                                              jmp   n12_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_β:
                        test             r15, r15
                                                                              jne   sel$2F3_ω
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 1232], 0
                        test             rax, rax
                                                                              jne   sel$2F3_βres
                                                                              jmp   sel$2F3_step
sel$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1256]
                        mov              rax, qword ptr [rbp + 1240]
                        cmp              r13, rax;                            je    sel$2F3_altdet
                        lea              rdx, [rip + sel$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1272];         jmp   rcx
sel$2F3_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 1280]
                        mov              rbp, qword ptr [rbp + 1272];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
sel$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1264]
                        mov              r13, qword ptr [rbp + 1240]
                        lea              rsp, [rbp + 1280]
                        mov              rbp, qword ptr [rbp + 1272];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__q10$2F1:
                        sub              rsp, 1456
                        mov              qword ptr [rsp + 1432], rcx
                        mov              qword ptr [rsp + 1440], rdx
                        mov              qword ptr [rsp + 1448], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1416], r13
                        mov              qword ptr [rsp + 1408], 0
                        mov              qword ptr [rsp + 1400], 0
                        mov              qword ptr [rsp + 1392], r12
                        mov              rdi, rsp
                        mov              esi, 1360
                        mov              edx, 1392
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 1
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
q10$2F1_α_body:
                        .type            n81_var_ref_bx, @function
n81_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n81_var_ref_α:          mov              r11, 32
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1328], rax
                        mov              qword ptr [rbp + 1336], rdx;         jmp   n82_var_ref_α
                        .size            n81_var_ref_bx, .-n81_var_ref_bx
                        .type            n82_var_ref_bx, @function
n82_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n82_var_ref_α:          mov              r11, 33
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 1344], rax
                        mov              qword ptr [rbp + 1352], rdx;         jmp   n83_call_α
                        .size            n82_var_ref_bx, .-n82_var_ref_bx
                        .type            n83_call_bx, @function
n83_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n83_call_α:             mov              r11, 34
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1296], rax
                        mov              rax, qword ptr [rbp + 1352]
                        mov              qword ptr [rbp + 1304], rax
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1280], rax
                        mov              rax, qword ptr [rbp + 1336]
                        mov              qword ptr [rbp + 1288], rax
                        lea              rdi, [rbp + 1280]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1264], rax
                        mov              qword ptr [rbp + 1272], rdx
                        cmp              al, 104;                             je    q10$2F1_step
                                                                              jmp   n84_lit_string_α
n83_call_β:             mov              r11, 34;                             jmp   q10$2F1_step
                        .size            n83_call_bx, .-n83_call_bx
                        .type            n84_lit_string_bx, @function
n84_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n84_lit_string_α:       mov              r11, 35
                        mov              qword ptr [rbp + 1232], 2            # result
                        mov              dword ptr [rbp + 1236], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_122_0]
                        mov              qword ptr [rbp + 1240], rax;         jmp   n85_lit_integer_α
.Llit_string_α_122_0:   .quad            .Llit_string_α_122_0_s
.Llit_string_α_122_0_s: .string          "."
                        .size            n84_lit_string_bx, .-n84_lit_string_bx
                        .type            n85_lit_integer_bx, @function
n85_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n85_lit_integer_α:      mov              r11, 36
                        mov              qword ptr [rbp + 1136], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_123_0]
                        mov              qword ptr [rbp + 1144], rax;         jmp   n86_lit_string_α
.Llit_integer_α_123_0:  .quad            1
                        .size            n85_lit_integer_bx, .-n85_lit_integer_bx
                        .type            n86_lit_string_bx, @function
n86_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n86_lit_string_α:       mov              r11, 37
                        mov              qword ptr [rbp + 1120], 2            # result
                        mov              dword ptr [rbp + 1124], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_124_0]
                        mov              qword ptr [rbp + 1128], rax;         jmp   n87_lit_integer_α
.Llit_string_α_124_0:   .quad            .Llit_string_α_124_0_s
.Llit_string_α_124_0_s: .string          "."
                        .size            n86_lit_string_bx, .-n86_lit_string_bx
                        .type            n87_lit_integer_bx, @function
n87_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n87_lit_integer_α:      mov              r11, 38
                        mov              qword ptr [rbp + 1024], 3            # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_125_0]
                        mov              qword ptr [rbp + 1032], rax;         jmp   n88_lit_string_α
.Llit_integer_α_125_0:  .quad            2
                        .size            n87_lit_integer_bx, .-n87_lit_integer_bx
                        .type            n88_lit_string_bx, @function
n88_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n88_lit_string_α:       mov              r11, 39
                        mov              qword ptr [rbp + 1008], 2            # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_126_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n89_lit_integer_α
.Llit_string_α_126_0:   .quad            .Llit_string_α_126_0_s
.Llit_string_α_126_0_s: .string          "."
                        .size            n88_lit_string_bx, .-n88_lit_string_bx
                        .type            n89_lit_integer_bx, @function
n89_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n89_lit_integer_α:      mov              r11, 40
                        mov              qword ptr [rbp + 912], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_127_0]
                        mov              qword ptr [rbp + 920], rax;          jmp   n90_lit_string_α
.Llit_integer_α_127_0:  .quad            3
                        .size            n89_lit_integer_bx, .-n89_lit_integer_bx
                        .type            n90_lit_string_bx, @function
n90_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n90_lit_string_α:       mov              r11, 41
                        mov              qword ptr [rbp + 896], 2             # result
                        mov              dword ptr [rbp + 900], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_128_0]
                        mov              qword ptr [rbp + 904], rax;          jmp   n91_lit_integer_α
.Llit_string_α_128_0:   .quad            .Llit_string_α_128_0_s
.Llit_string_α_128_0_s: .string          "."
                        .size            n90_lit_string_bx, .-n90_lit_string_bx
                        .type            n91_lit_integer_bx, @function
n91_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n91_lit_integer_α:      mov              r11, 42
                        mov              qword ptr [rbp + 800], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_129_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n92_lit_string_α
.Llit_integer_α_129_0:  .quad            4
                        .size            n91_lit_integer_bx, .-n91_lit_integer_bx
                        .type            n92_lit_string_bx, @function
n92_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n92_lit_string_α:       mov              r11, 43
                        mov              qword ptr [rbp + 784], 2             # result
                        mov              dword ptr [rbp + 788], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_130_0]
                        mov              qword ptr [rbp + 792], rax;          jmp   n93_lit_integer_α
.Llit_string_α_130_0:   .quad            .Llit_string_α_130_0_s
.Llit_string_α_130_0_s: .string          "."
                        .size            n92_lit_string_bx, .-n92_lit_string_bx
                        .type            n93_lit_integer_bx, @function
n93_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n93_lit_integer_α:      mov              r11, 44
                        mov              qword ptr [rbp + 688], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_131_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n94_lit_string_α
.Llit_integer_α_131_0:  .quad            5
                        .size            n93_lit_integer_bx, .-n93_lit_integer_bx
                        .type            n94_lit_string_bx, @function
n94_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n94_lit_string_α:       mov              r11, 45
                        mov              qword ptr [rbp + 672], 2             # result
                        mov              dword ptr [rbp + 676], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_132_0]
                        mov              qword ptr [rbp + 680], rax;          jmp   n95_lit_integer_α
.Llit_string_α_132_0:   .quad            .Llit_string_α_132_0_s
.Llit_string_α_132_0_s: .string          "."
                        .size            n94_lit_string_bx, .-n94_lit_string_bx
                        .type            n95_lit_integer_bx, @function
n95_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n95_lit_integer_α:      mov              r11, 46
                        mov              qword ptr [rbp + 576], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_133_0]
                        mov              qword ptr [rbp + 584], rax;          jmp   n96_lit_string_α
.Llit_integer_α_133_0:  .quad            6
                        .size            n95_lit_integer_bx, .-n95_lit_integer_bx
                        .type            n96_lit_string_bx, @function
n96_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n96_lit_string_α:       mov              r11, 47
                        mov              qword ptr [rbp + 560], 2             # result
                        mov              dword ptr [rbp + 564], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_134_0]
                        mov              qword ptr [rbp + 568], rax;          jmp   n97_lit_integer_α
.Llit_string_α_134_0:   .quad            .Llit_string_α_134_0_s
.Llit_string_α_134_0_s: .string          "."
                        .size            n96_lit_string_bx, .-n96_lit_string_bx
                        .type            n97_lit_integer_bx, @function
n97_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n97_lit_integer_α:      mov              r11, 48
                        mov              qword ptr [rbp + 464], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_135_0]
                        mov              qword ptr [rbp + 472], rax;          jmp   n98_lit_string_α
.Llit_integer_α_135_0:  .quad            7
                        .size            n97_lit_integer_bx, .-n97_lit_integer_bx
                        .type            n98_lit_string_bx, @function
n98_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n98_lit_string_α:       mov              r11, 49
                        mov              qword ptr [rbp + 448], 2             # result
                        mov              dword ptr [rbp + 452], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_136_0]
                        mov              qword ptr [rbp + 456], rax;          jmp   n99_lit_integer_α
.Llit_string_α_136_0:   .quad            .Llit_string_α_136_0_s
.Llit_string_α_136_0_s: .string          "."
                        .size            n98_lit_string_bx, .-n98_lit_string_bx
                        .type            n99_lit_integer_bx, @function
n99_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n99_lit_integer_α:      mov              r11, 50
                        mov              qword ptr [rbp + 352], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_137_0]
                        mov              qword ptr [rbp + 360], rax;          jmp   n100_lit_string_α
.Llit_integer_α_137_0:  .quad            8
                        .size            n99_lit_integer_bx, .-n99_lit_integer_bx
                        .type            n100_lit_string_bx, @function
n100_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n100_lit_string_α:      mov              r11, 51
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_138_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n101_lit_integer_α
.Llit_string_α_138_0:   .quad            .Llit_string_α_138_0_s
.Llit_string_α_138_0_s: .string          "."
                        .size            n100_lit_string_bx, .-n100_lit_string_bx
                        .type            n101_lit_integer_bx, @function
n101_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n101_lit_integer_α:     mov              r11, 52
                        mov              qword ptr [rbp + 240], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_139_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n102_lit_string_α
.Llit_integer_α_139_0:  .quad            9
                        .size            n101_lit_integer_bx, .-n101_lit_integer_bx
                        .type            n102_lit_string_bx, @function
n102_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n102_lit_string_α:      mov              r11, 53
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_140_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n103_lit_integer_α
.Llit_string_α_140_0:   .quad            .Llit_string_α_140_0_s
.Llit_string_α_140_0_s: .string          "."
                        .size            n102_lit_string_bx, .-n102_lit_string_bx
                        .type            n103_lit_integer_bx, @function
n103_lit_integer_bx:
#-----------------------------------------------------------------------------------------------------------------------
n103_lit_integer_α:     mov              r11, 54
                        mov              qword ptr [rbp + 128], 3             # result
                        mov              rax, qword ptr [rip + .Llit_integer_α_141_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n104_lit_string_α
.Llit_integer_α_141_0:  .quad            10
                        .size            n103_lit_integer_bx, .-n103_lit_integer_bx
                        .type            n104_lit_string_bx, @function
n104_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n104_lit_string_α:      mov              r11, 55
                        mov              qword ptr [rbp + 112], 2             # result
                        mov              dword ptr [rbp + 116], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_142_0]
                        mov              qword ptr [rbp + 120], rax;          jmp   n105_call_α
.Llit_string_α_142_0:   .quad            .Llit_string_α_142_0_s
.Llit_string_α_142_0_s: .string          "[]"
                        .size            n104_lit_string_bx, .-n104_lit_string_bx
                        .type            n105_call_bx, @function
n105_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n105_call_α:            mov              r11, 56
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
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n106_call_α
n105_call_β:            mov              r11, 56;                             jmp   q10$2F1_ω
                        .size            n105_call_bx, .-n105_call_bx
                        .type            n106_call_bx, @function
n106_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n106_call_α:            mov              r11, 57
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
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n107_call_α
n106_call_β:            mov              r11, 57;                             jmp   q10$2F1_ω
                        .size            n106_call_bx, .-n106_call_bx
                        .type            n107_call_bx, @function
n107_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n107_call_α:            mov              r11, 58
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
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n108_call_α
n107_call_β:            mov              r11, 58;                             jmp   q10$2F1_ω
                        .size            n107_call_bx, .-n107_call_bx
                        .type            n108_call_bx, @function
n108_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n108_call_α:            mov              r11, 59
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
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n109_call_α
n108_call_β:            mov              r11, 59;                             jmp   q10$2F1_ω
                        .size            n108_call_bx, .-n108_call_bx
                        .type            n109_call_bx, @function
n109_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n109_call_α:            mov              r11, 60
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
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n110_call_α
n109_call_β:            mov              r11, 60;                             jmp   q10$2F1_ω
                        .size            n109_call_bx, .-n109_call_bx
                        .type            n110_call_bx, @function
n110_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n110_call_α:            mov              r11, 61
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
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n111_call_α
n110_call_β:            mov              r11, 61;                             jmp   q10$2F1_ω
                        .size            n110_call_bx, .-n110_call_bx
                        .type            n111_call_bx, @function
n111_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n111_call_α:            mov              r11, 62
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
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n112_call_α
n111_call_β:            mov              r11, 62;                             jmp   q10$2F1_ω
                        .size            n111_call_bx, .-n111_call_bx
                        .type            n112_call_bx, @function
n112_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n112_call_α:            mov              r11, 63
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
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n113_call_α
n112_call_β:            mov              r11, 63;                             jmp   q10$2F1_ω
                        .size            n112_call_bx, .-n112_call_bx
                        .type            n113_call_bx, @function
n113_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n113_call_α:            mov              r11, 64
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
                        cmp              al, 104;                             je    q10$2F1_ω
                                                                              jmp   n114_call_α
n113_call_β:            mov              r11, 64;                             jmp   q10$2F1_ω
                        .size            n113_call_bx, .-n113_call_bx
                        .type            n114_call_bx, @function
n114_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n114_call_α:            mov              r11, 65
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
                        cmp              al, 104;                             je    q10$2F1_step
                                                                              jmp   n115_var_ref_α
n114_call_β:            mov              r11, 65;                             jmp   q10$2F1_step
                        .size            n114_call_bx, .-n114_call_bx
                        .type            n115_var_ref_bx, @function
n115_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n115_var_ref_α:         mov              r11, 66
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1360]
                        mov              qword ptr [rbp + 1248], rax
                        mov              qword ptr [rbp + 1256], rdx;         jmp   n116_call_proc_staged_α
                        .size            n115_var_ref_bx, .-n115_var_ref_bx
                        .type            n116_call_proc_staged_bx, @function
n116_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n116_call_proc_staged_α:
                        mov              r11, 67
                        mov              qword ptr [rbp + 80], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_156_200
                        mov              rax, qword ptr [rbp + 1152]
                        mov              rdx, qword ptr [rbp + 1160]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_156_201
.Lcall_proc_staged_α_156_200:
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
.Lcall_proc_staged_α_156_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_156_202
                        mov              rax, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_156_203
.Lcall_proc_staged_α_156_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 1248]
                        mov              rdx, qword ptr [rbp + 1256]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_156_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_156_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_156_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_156_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_156_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_156_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_156_3:
                        mov              qword ptr [rbp + 80], rax
                        mov              qword ptr [rbp + 88], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_156_21
                        add              rsp, 32
.Lcall_proc_staged_α_156_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_156_2
.Lcall_proc_staged_α_156_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 80], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_156_2
.Lcall_proc_staged_α_156_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_156_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   q10$2F1_step
.Lcall_proc_staged_α_156_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_156_29
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
.Lcall_proc_staged_α_156_29:
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    q10$2F1_step
                                                                              jmp   q10$2F1_ret0
n116_call_proc_staged_β:
                        mov              r11, 67
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_156_22
                        mov              rax, qword ptr [rbp + 80]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_156_22
                        mov              rcx, qword ptr [rbp + 88]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_156_22:
                                                                              jmp   q10$2F1_step
.Lcall_proc_staged_α_156_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 32], rax
                        mov              qword ptr [rbp + 40], rdx
                        cmp              al, 104;                             je    q10$2F1_step
                                                                              jmp   q10$2F1_ret0
.Lcall_proc_staged_α_156_0:
                        .quad            .Lcall_proc_staged_α_156_0_s
.Lcall_proc_staged_α_156_0_s:
                        .string          "q/2"
                        .size            n116_call_proc_staged_bx, .-n116_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
q10$2F1_ret0:
                        lea              rax, [rip + n116_call_proc_staged_β]
                        mov              qword ptr [rbp + 1408], rax
                                                                              jmp   q10$2F1_γ
#-----------------------------------------------------------------------------------------------------------------------
q10$2F1_step:
                        mov              rdi, qword ptr [rbp + 1392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1408], 0
                        lea              rdi, [rbp + 32]
                        xor              eax, eax
                        mov              ecx, 16
                        rep              stosb
                        mov              rax, qword ptr [rbp + 1400]
                        test             rax, rax
                                                                              je    q10$2F1_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
q10$2F1_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
q10$2F1_β:
                        test             r15, r15
                                                                              jne   q10$2F1_ω
                        mov              rax, qword ptr [rbp + 1408]
                        mov              qword ptr [rbp + 1408], 0
                        test             rax, rax
                                                                              jne   q10$2F1_βres
                                                                              jmp   q10$2F1_step
q10$2F1_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
q10$2F1_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1432]
                        mov              rax, qword ptr [rbp + 1416]
                        cmp              r13, rax;                            je    q10$2F1_altdet
                        lea              rdx, [rip + q10$2F1_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1448];         jmp   rcx
q10$2F1_altdet:         xor              eax, eax
                        lea              rsp, [rbp + 1456]
                        mov              rbp, qword ptr [rbp + 1448];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q10$2F1_ω:
                        mov              rcx, qword ptr [rbp + 1440]
                        mov              r13, qword ptr [rbp + 1416]
                        lea              rsp, [rbp + 1456]
                        mov              rbp, qword ptr [rbp + 1448];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__test$2F2:
                        sub              rsp, 896
                        mov              qword ptr [rsp + 872], rcx
                        mov              qword ptr [rsp + 880], rdx
                        mov              qword ptr [rsp + 888], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 856], r13
                        mov              qword ptr [rsp + 848], 0
                        mov              qword ptr [rsp + 840], 0
                        mov              qword ptr [rsp + 832], r12
                        lea              rax, [rip + test$2F2_alt1]
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
test$2F2_α_body:
                        .type            n157_var_ref_bx, @function
n157_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n157_var_ref_α:         mov              r11, 68
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n158_lit_string_α
                        .size            n157_var_ref_bx, .-n157_var_ref_bx
                        .type            n158_lit_string_bx, @function
n158_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n158_lit_string_α:      mov              r11, 69
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_180_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n159_call_α
.Llit_string_α_180_0:   .quad            .Llit_string_α_180_0_s
.Llit_string_α_180_0_s: .string          "[]"
                        .size            n158_lit_string_bx, .-n158_lit_string_bx
                        .type            n159_call_bx, @function
n159_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n159_call_α:            mov              r11, 70
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lcall_α_181_2]
                                                                              jmp   .Lcall_α_181_3
.Lcall_α_181_2:         .quad            .Lcall_α_181_2_s
.Lcall_α_181_2_s:       .string          "[]"
.Lcall_α_181_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    test$2F2_step
                                                                              jmp   n160_var_ref_α
n159_call_β:            mov              r11, 70;                             jmp   test$2F2_step
                        .size            n159_call_bx, .-n159_call_bx
                        .type            n160_var_ref_bx, @function
n160_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n160_var_ref_α:         mov              r11, 71
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n161_var_ref_α
                        .size            n160_var_ref_bx, .-n160_var_ref_bx
                        .type            n161_var_ref_bx, @function
n161_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n161_var_ref_α:         mov              r11, 72
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n162_call_α
                        .size            n161_var_ref_bx, .-n161_var_ref_bx
                        .type            n162_call_bx, @function
n162_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n162_call_α:            mov              r11, 73
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
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
                        cmp              al, 104;                             je    test$2F2_step
                                                                              jmp   test$2F2_γ
n162_call_β:            mov              r11, 73;                             jmp   test$2F2_step
                        .size            n162_call_bx, .-n162_call_bx
                        .type            n163_var_ref_bx, @function
n163_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n163_var_ref_α:         mov              r11, 74
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx;          jmp   n164_lit_string_α
                        .size            n163_var_ref_bx, .-n163_var_ref_bx
                        .type            n164_lit_string_bx, @function
n164_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n164_lit_string_α:      mov              r11, 75
                        mov              qword ptr [rbp + 752], 2             # result
                        mov              dword ptr [rbp + 756], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_189_0]
                        mov              qword ptr [rbp + 760], rax;          jmp   n165_var_ref_α
.Llit_string_α_189_0:   .quad            .Llit_string_α_189_0_s
.Llit_string_α_189_0_s: .string          "."
                        .size            n164_lit_string_bx, .-n164_lit_string_bx
                        .type            n165_var_ref_bx, @function
n165_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n165_var_ref_α:         mov              r11, 76
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n166_var_ref_α
                        .size            n165_var_ref_bx, .-n165_var_ref_bx
                        .type            n166_var_ref_bx, @function
n166_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n166_var_ref_α:         mov              r11, 77
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n167_call_α
                        .size            n166_var_ref_bx, .-n166_var_ref_bx
                        .type            n167_call_bx, @function
n167_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n167_call_α:            mov              r11, 78
                        mov              rax, qword ptr [rbp + 640]
                        mov              qword ptr [rbp + 720], rax
                        mov              rax, qword ptr [rbp + 648]
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
                        cmp              al, 104;                             je    test$2F2_step
                                                                              jmp   n168_call_α
n167_call_β:            mov              r11, 78;                             jmp   test$2F2_step
                        .size            n167_call_bx, .-n167_call_bx
                        .type            n168_call_bx, @function
n168_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n168_call_α:            mov              r11, 79
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 592], rax
                        mov              rax, qword ptr [rbp + 680]
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
                        cmp              al, 104;                             je    test$2F2_step
                                                                              jmp   n169_var_ref_α
n168_call_β:            mov              r11, 79;                             jmp   test$2F2_step
                        .size            n168_call_bx, .-n168_call_bx
                        .type            n169_var_ref_bx, @function
n169_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n169_var_ref_α:         mov              r11, 80
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 528], rax
                        mov              qword ptr [rbp + 536], rdx;          jmp   n170_var_ref_α
                        .size            n169_var_ref_bx, .-n169_var_ref_bx
                        .type            n170_var_ref_bx, @function
n170_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n170_var_ref_α:         mov              r11, 81
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n171_call_α
                        .size            n170_var_ref_bx, .-n170_var_ref_bx
                        .type            n171_call_bx, @function
n171_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n171_call_α:            mov              r11, 82
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
                        cmp              al, 104;                             je    test$2F2_step
                                                                              jmp   n172_var_ref_α
n171_call_β:            mov              r11, 82;                             jmp   test$2F2_step
                        .size            n171_call_bx, .-n171_call_bx
                        .type            n172_var_ref_bx, @function
n172_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n172_var_ref_α:         mov              r11, 83
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 432], rax
                        mov              qword ptr [rbp + 440], rdx;          jmp   n173_var_ref_α
                        .size            n172_var_ref_bx, .-n172_var_ref_bx
                        .type            n173_var_ref_bx, @function
n173_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n173_var_ref_α:         mov              r11, 84
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n174_call_proc_staged_α
                        .size            n173_var_ref_bx, .-n173_var_ref_bx
                        .type            n174_call_proc_staged_bx, @function
n174_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n174_call_proc_staged_α:
                        mov              r11, 85
                        mov              qword ptr [rbp + 400], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_206_200
                        mov              rax, qword ptr [rbp + 432]
                        mov              rdx, qword ptr [rbp + 440]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_206_201
.Lcall_proc_staged_α_206_200:
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
.Lcall_proc_staged_α_206_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_206_202
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_206_203
.Lcall_proc_staged_α_206_202:
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
.Lcall_proc_staged_α_206_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_206_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_206_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_206_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_206_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_206_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_206_3:
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_206_21
                        add              rsp, 32
.Lcall_proc_staged_α_206_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_206_2
.Lcall_proc_staged_α_206_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 400], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_206_2
.Lcall_proc_staged_α_206_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_206_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   test$2F2_step
.Lcall_proc_staged_α_206_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_206_29
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
.Lcall_proc_staged_α_206_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    test$2F2_step
                                                                              jmp   n175_var_ref_α
n174_call_proc_staged_β:
                        mov              r11, 85
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_206_22
                        mov              rax, qword ptr [rbp + 400]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_206_22
                        mov              rcx, qword ptr [rbp + 408]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_206_22:
                                                                              jmp   test$2F2_step
.Lcall_proc_staged_α_206_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    test$2F2_step
                                                                              jmp   n175_var_ref_α
.Lcall_proc_staged_α_206_0:
                        .quad            .Lcall_proc_staged_α_206_0_s
.Lcall_proc_staged_α_206_0_s:
                        .string          "test/2"
                        .size            n174_call_proc_staged_bx, .-n174_call_proc_staged_bx
                        .type            n175_var_ref_bx, @function
n175_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n175_var_ref_α:         mov              r11, 86
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 784]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n176_var_ref_α
                        .size            n175_var_ref_bx, .-n175_var_ref_bx
                        .type            n176_var_ref_bx, @function
n176_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n176_var_ref_α:         mov              r11, 87
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 768]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n177_call_proc_staged_α
                        .size            n176_var_ref_bx, .-n176_var_ref_bx
                        .type            n177_call_proc_staged_bx, @function
n177_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n177_call_proc_staged_α:
                        mov              r11, 88
                        mov              qword ptr [rbp + 288], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_212_200
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_212_201
.Lcall_proc_staged_α_212_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_212_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_212_202
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_212_203
.Lcall_proc_staged_α_212_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_212_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_212_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_212_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_212_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_212_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_212_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_212_3:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_212_21
                        add              rsp, 32
.Lcall_proc_staged_α_212_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_212_2
.Lcall_proc_staged_α_212_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 288], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_212_2
.Lcall_proc_staged_α_212_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_212_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n174_call_proc_staged_β
.Lcall_proc_staged_α_212_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_212_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
.Lcall_proc_staged_α_212_29:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n174_call_proc_staged_β
                                                                              jmp   test$2F2_ret1
n177_call_proc_staged_β:
                        mov              r11, 88
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_212_22
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_212_22
                        mov              rcx, qword ptr [rbp + 296]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_212_22:
                                                                              jmp   n174_call_proc_staged_β
.Lcall_proc_staged_α_212_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n174_call_proc_staged_β
                                                                              jmp   test$2F2_ret1
.Lcall_proc_staged_α_212_0:
                        .quad            .Lcall_proc_staged_α_212_0_s
.Lcall_proc_staged_α_212_0_s:
                        .string          "nd/2"
                        .size            n177_call_proc_staged_bx, .-n177_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_ret1:
                        lea              rax, [rip + n177_call_proc_staged_β]
                        mov              qword ptr [rbp + 848], rax
                                                                              jmp   test$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_step:
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
                                                                              je    test$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 840], rax
                                                                              jmp   n163_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_β:
                        test             r15, r15
                                                                              jne   test$2F2_ω
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 848], 0
                        test             rax, rax
                                                                              jne   test$2F2_βres
                                                                              jmp   test$2F2_step
test$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 872]
                        mov              rax, qword ptr [rbp + 856]
                        cmp              r13, rax;                            je    test$2F2_altdet
                        lea              rdx, [rip + test$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 888];          jmp   rcx
test$2F2_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 896]
                        mov              rbp, qword ptr [rbp + 888];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
test$2F2_ω:
                        mov              rcx, qword ptr [rbp + 880]
                        mov              r13, qword ptr [rbp + 856]
                        lea              rsp, [rbp + 896]
                        mov              rbp, qword ptr [rbp + 888];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__nd$2F2:
                        sub              rsp, 1376
                        mov              qword ptr [rsp + 1352], rcx
                        mov              qword ptr [rsp + 1360], rdx
                        mov              qword ptr [rsp + 1368], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1336], r13
                        mov              qword ptr [rsp + 1328], 0
                        mov              qword ptr [rsp + 1320], 0
                        mov              qword ptr [rsp + 1312], r12
                        mov              rdi, rsp
                        mov              esi, 1184
                        mov              edx, 1312
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
nd$2F2_α_body:
                        .type            n213_var_ref_bx, @function
n213_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n213_var_ref_α:         mov              r11, 89
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1040], rax
                        mov              qword ptr [rbp + 1048], rdx;         jmp   n214_lit_string_α
                        .size            n213_var_ref_bx, .-n213_var_ref_bx
                        .type            n214_lit_string_bx, @function
n214_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n214_lit_string_α:      mov              r11, 90
                        mov              qword ptr [rbp + 1168], 2            # result
                        mov              dword ptr [rbp + 1172], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_248_0]
                        mov              qword ptr [rbp + 1176], rax;         jmp   n215_var_ref_α
.Llit_string_α_248_0:   .quad            .Llit_string_α_248_0_s
.Llit_string_α_248_0_s: .string          "p"
                        .size            n214_lit_string_bx, .-n214_lit_string_bx
                        .type            n215_var_ref_bx, @function
n215_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n215_var_ref_α:         mov              r11, 91
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 1056], rax
                        mov              qword ptr [rbp + 1064], rdx;         jmp   n216_var_ref_α
                        .size            n215_var_ref_bx, .-n215_var_ref_bx
                        .type            n216_var_ref_bx, @function
n216_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n216_var_ref_α:         mov              r11, 92
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1072], rax
                        mov              qword ptr [rbp + 1080], rdx;         jmp   n217_call_α
                        .size            n216_var_ref_bx, .-n216_var_ref_bx
                        .type            n217_call_bx, @function
n217_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n217_call_α:            mov              r11, 93
                        mov              rax, qword ptr [rbp + 1072]
                        mov              qword ptr [rbp + 1136], rax
                        mov              rax, qword ptr [rbp + 1080]
                        mov              qword ptr [rbp + 1144], rax
                        mov              rax, qword ptr [rbp + 1056]
                        mov              qword ptr [rbp + 1120], rax
                        mov              rax, qword ptr [rbp + 1064]
                        mov              qword ptr [rbp + 1128], rax
                        mov              rax, qword ptr [rbp + 1168]
                        mov              qword ptr [rbp + 1104], rax
                        mov              rax, qword ptr [rbp + 1176]
                        mov              qword ptr [rbp + 1112], rax
                        lea              rdi, [rbp + 1104]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx
                        cmp              al, 104;                             je    nd$2F2_step
                                                                              jmp   n218_call_α
n217_call_β:            mov              r11, 93;                             jmp   nd$2F2_step
                        .size            n217_call_bx, .-n217_call_bx
                        .type            n218_call_bx, @function
n218_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n218_call_α:            mov              r11, 94
                        mov              rax, qword ptr [rbp + 1088]
                        mov              qword ptr [rbp + 1008], rax
                        mov              rax, qword ptr [rbp + 1096]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 976], rax
                        mov              qword ptr [rbp + 984], rdx
                        cmp              al, 104;                             je    nd$2F2_step
                                                                              jmp   n219_var_ref_α
n218_call_β:            mov              r11, 94;                             jmp   nd$2F2_step
                        .size            n218_call_bx, .-n218_call_bx
                        .type            n219_var_ref_bx, @function
n219_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n219_var_ref_α:         mov              r11, 95
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 832], rax
                        mov              qword ptr [rbp + 840], rdx;          jmp   n220_lit_string_α
                        .size            n219_var_ref_bx, .-n219_var_ref_bx
                        .type            n220_lit_string_bx, @function
n220_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n220_lit_string_α:      mov              r11, 96
                        mov              qword ptr [rbp + 960], 2             # result
                        mov              dword ptr [rbp + 964], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_257_0]
                        mov              qword ptr [rbp + 968], rax;          jmp   n221_var_ref_α
.Llit_string_α_257_0:   .quad            .Llit_string_α_257_0_s
.Llit_string_α_257_0_s: .string          "p"
                        .size            n220_lit_string_bx, .-n220_lit_string_bx
                        .type            n221_var_ref_bx, @function
n221_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n221_var_ref_α:         mov              r11, 97
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n222_var_ref_α
                        .size            n221_var_ref_bx, .-n221_var_ref_bx
                        .type            n222_var_ref_bx, @function
n222_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n222_var_ref_α:         mov              r11, 98
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1216]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n223_call_α
                        .size            n222_var_ref_bx, .-n222_var_ref_bx
                        .type            n223_call_bx, @function
n223_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n223_call_α:            mov              r11, 99
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 928], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 936], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 912], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 920], rax
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 896], rax
                        mov              rax, qword ptr [rbp + 968]
                        mov              qword ptr [rbp + 904], rax
                        lea              rdi, [rbp + 896]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx
                        cmp              al, 104;                             je    nd$2F2_step
                                                                              jmp   n224_call_α
n223_call_β:            mov              r11, 99;                             jmp   nd$2F2_step
                        .size            n223_call_bx, .-n223_call_bx
                        .type            n224_call_bx, @function
n224_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n224_call_α:            mov              r11, 100
                        mov              rax, qword ptr [rbp + 880]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 888]
                        mov              qword ptr [rbp + 808], rax
                        mov              rax, qword ptr [rbp + 832]
                        mov              qword ptr [rbp + 784], rax
                        mov              rax, qword ptr [rbp + 840]
                        mov              qword ptr [rbp + 792], rax
                        lea              rdi, [rbp + 784]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx
                        cmp              al, 104;                             je    nd$2F2_step
                                                                              jmp   n225_var_ref_α
n224_call_β:            mov              r11, 100;                            jmp   nd$2F2_step
                        .size            n224_call_bx, .-n224_call_bx
                        .type            n225_var_ref_bx, @function
n225_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n225_var_ref_α:         mov              r11, 101
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1184]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n226_var_α
                        .size            n225_var_ref_bx, .-n225_var_ref_bx
                        .type            n226_var_bx, @function
n226_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n226_var_α:             mov              r11, 102
                        mov              rax, qword ptr [rbp + 1264]
                        mov              qword ptr [rbp + 736], rax
                        mov              rax, qword ptr [rbp + 1272]
                        mov              qword ptr [rbp + 744], rax;          jmp   n227_var_α
                        .size            n226_var_bx, .-n226_var_bx
                        .type            n227_var_bx, @function
n227_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n227_var_α:             mov              r11, 103
                        mov              rax, qword ptr [rbp + 1280]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 1288]
                        mov              qword ptr [rbp + 760], rax;          jmp   n228_call_α
                        .size            n227_var_bx, .-n227_var_bx
                        .type            n228_call_bx, @function
n228_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n228_call_α:            mov              r11, 104
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
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx
                        cmp              al, 104;                             je    nd$2F2_step
                                                                              jmp   n229_call_α
n228_call_β:            mov              r11, 104;                            jmp   nd$2F2_step
                        .size            n228_call_bx, .-n228_call_bx
                        .type            n229_call_bx, @function
n229_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n229_call_α:            mov              r11, 105
                        mov              rax, qword ptr [rbp + 672]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 680]
                        mov              qword ptr [rbp + 632], rax
                        mov              rax, qword ptr [rbp + 656]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 664]
                        mov              qword ptr [rbp + 616], rax
                        lea              rdi, [rbp + 608]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx
                        cmp              al, 104;                             je    nd$2F2_step
                                                                              jmp   n230_var_ref_α
n229_call_β:            mov              r11, 105;                            jmp   nd$2F2_step
                        .size            n229_call_bx, .-n229_call_bx
                        .type            n230_var_ref_bx, @function
n230_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n230_var_ref_α:         mov              r11, 106
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n231_var_α
                        .size            n230_var_ref_bx, .-n230_var_ref_bx
                        .type            n231_var_bx, @function
n231_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n231_var_α:             mov              r11, 107
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 560], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 568], rax;          jmp   n232_var_α
                        .size            n231_var_bx, .-n231_var_bx
                        .type            n232_var_bx, @function
n232_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n232_var_α:             mov              r11, 108
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 576], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 584], rax;          jmp   n233_call_α
                        .size            n232_var_bx, .-n232_var_bx
                        .type            n233_call_bx, @function
n233_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n233_call_α:            mov              r11, 109
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    nd$2F2_step
                                                                              jmp   n234_call_α
n233_call_β:            mov              r11, 109;                            jmp   nd$2F2_step
                        .size            n233_call_bx, .-n233_call_bx
                        .type            n234_call_bx, @function
n234_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n234_call_α:            mov              r11, 110
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    nd$2F2_step
                                                                              jmp   n235_var_α
n234_call_β:            mov              r11, 110;                            jmp   nd$2F2_step
                        .size            n234_call_bx, .-n234_call_bx
                        .type            n235_var_bx, @function
n235_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n235_var_α:             mov              r11, 111
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 392], rax;          jmp   n236_var_α
                        .size            n235_var_bx, .-n235_var_bx
                        .type            n236_var_bx, @function
n236_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n236_var_α:             mov              r11, 112
                        mov              rax, qword ptr [rbp + 1248]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 1256]
                        mov              qword ptr [rbp + 408], rax;          jmp   n237_call_α
                        .size            n236_var_bx, .-n236_var_bx
                        .type            n237_call_bx, @function
n237_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n237_call_α:            mov              r11, 113
                        mov              rax, qword ptr [rbp + 400]
                        mov              qword ptr [rbp + 352], rax
                        mov              rax, qword ptr [rbp + 408]
                        mov              qword ptr [rbp + 360], rax
                        mov              rax, qword ptr [rbp + 384]
                        mov              qword ptr [rbp + 336], rax
                        mov              rax, qword ptr [rbp + 392]
                        mov              qword ptr [rbp + 344], rax
                        lea              rdi, [rbp + 336]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx
                        cmp              al, 104;                             je    nd$2F2_step
                                                                              jmp   n238_var_ref_α
n237_call_β:            mov              r11, 113;                            jmp   nd$2F2_step
                        .size            n237_call_bx, .-n237_call_bx
                        .type            n238_var_ref_bx, @function
n238_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n238_var_ref_α:         mov              r11, 114
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1200]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n239_var_α
                        .size            n238_var_ref_bx, .-n238_var_ref_bx
                        .type            n239_var_bx, @function
n239_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n239_var_α:             mov              r11, 115
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 288], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 296], rax;          jmp   n240_var_α
                        .size            n239_var_bx, .-n239_var_bx
                        .type            n240_var_bx, @function
n240_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n240_var_α:             mov              r11, 116
                        mov              rax, qword ptr [rbp + 1232]
                        mov              qword ptr [rbp + 304], rax
                        mov              rax, qword ptr [rbp + 1240]
                        mov              qword ptr [rbp + 312], rax;          jmp   n241_call_α
                        .size            n240_var_bx, .-n240_var_bx
                        .type            n241_call_bx, @function
n241_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n241_call_α:            mov              r11, 117
                        mov              rax, qword ptr [rbp + 304]
                        mov              qword ptr [rbp + 256], rax
                        mov              rax, qword ptr [rbp + 312]
                        mov              qword ptr [rbp + 264], rax
                        mov              rax, qword ptr [rbp + 288]
                        mov              qword ptr [rbp + 240], rax
                        mov              rax, qword ptr [rbp + 296]
                        mov              qword ptr [rbp + 248], rax
                        lea              rdi, [rbp + 240]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_ax_sub@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        cmp              al, 104;                             je    nd$2F2_step
                                                                              jmp   n242_call_α
n241_call_β:            mov              r11, 117;                            jmp   nd$2F2_step
                        .size            n241_call_bx, .-n241_call_bx
                        .type            n242_call_bx, @function
n242_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n242_call_α:            mov              r11, 118
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_is_v@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    nd$2F2_step
                                                                              jmp   n243_var_α
n242_call_β:            mov              r11, 118;                            jmp   nd$2F2_step
                        .size            n242_call_bx, .-n242_call_bx
                        .type            n243_var_bx, @function
n243_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n243_var_α:             mov              r11, 119
                        mov              rax, qword ptr [rbp + 1184]
                        mov              qword ptr [rbp + 112], rax
                        mov              rax, qword ptr [rbp + 1192]
                        mov              qword ptr [rbp + 120], rax;          jmp   n244_var_α
                        .size            n243_var_bx, .-n243_var_bx
                        .type            n244_var_bx, @function
n244_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n244_var_α:             mov              r11, 120
                        mov              rax, qword ptr [rbp + 1200]
                        mov              qword ptr [rbp + 128], rax
                        mov              rax, qword ptr [rbp + 1208]
                        mov              qword ptr [rbp + 136], rax;          jmp   n245_call_α
                        .size            n244_var_bx, .-n244_var_bx
                        .type            n245_call_bx, @function
n245_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n245_call_α:            mov              r11, 121
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
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
                        call             rt_pl_dop_cmp_ne@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    nd$2F2_step
                                                                              jmp   nd$2F2_γ
n245_call_β:            mov              r11, 121;                            jmp   nd$2F2_step
                        .size            n245_call_bx, .-n245_call_bx
#-----------------------------------------------------------------------------------------------------------------------
nd$2F2_step:
                        mov              rdi, qword ptr [rbp + 1312]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1328], 0
                        lea              rdi, [rbp + 48]
                        xor              eax, eax
                        mov              ecx, 144
                        rep              stosb
                        mov              rax, qword ptr [rbp + 1320]
                        test             rax, rax
                                                                              je    nd$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
nd$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
nd$2F2_β:
                        test             r15, r15
                                                                              jne   nd$2F2_ω
                        mov              rax, qword ptr [rbp + 1328]
                        mov              qword ptr [rbp + 1328], 0
                        test             rax, rax
                                                                              jne   nd$2F2_βres
                                                                              jmp   nd$2F2_step
nd$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
nd$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1352]
                        mov              rax, qword ptr [rbp + 1336]
                        cmp              r13, rax;                            je    nd$2F2_altdet
                        lea              rdx, [rip + nd$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1368];         jmp   rcx
nd$2F2_altdet:          xor              eax, eax
                        lea              rsp, [rbp + 1376]
                        mov              rbp, qword ptr [rbp + 1368];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
nd$2F2_ω:
                        mov              rcx, qword ptr [rbp + 1360]
                        mov              r13, qword ptr [rbp + 1336]
                        lea              rsp, [rbp + 1376]
                        mov              rbp, qword ptr [rbp + 1368];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__safe$2F2:
                        sub              rsp, 1008
                        mov              qword ptr [rsp + 984], rcx
                        mov              qword ptr [rsp + 992], rdx
                        mov              qword ptr [rsp + 1000], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 968], r13
                        mov              qword ptr [rsp + 960], 0
                        mov              qword ptr [rsp + 952], 0
                        mov              qword ptr [rsp + 944], r12
                        lea              rax, [rip + safe$2F2_alt1]
                        mov              qword ptr [rsp + 952], rax
                        lea              rdi, [rsp + 944]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 880
                        mov              edx, 944
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
safe$2F2_α_body:
                        .type            n298_var_ref_bx, @function
n298_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n298_var_ref_α:         mov              r11, 122
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n299_var_ref_α
                        .size            n298_var_ref_bx, .-n298_var_ref_bx
                        .type            n299_var_ref_bx, @function
n299_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n299_var_ref_α:         mov              r11, 123
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n300_call_α
                        .size            n299_var_ref_bx, .-n299_var_ref_bx
                        .type            n300_call_bx, @function
n300_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n300_call_α:            mov              r11, 124
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    safe$2F2_step
                                                                              jmp   n301_var_ref_α
n300_call_β:            mov              r11, 124;                            jmp   safe$2F2_step
                        .size            n300_call_bx, .-n300_call_bx
                        .type            n301_var_ref_bx, @function
n301_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n301_var_ref_α:         mov              r11, 125
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n302_lit_string_α
                        .size            n301_var_ref_bx, .-n301_var_ref_bx
                        .type            n302_lit_string_bx, @function
n302_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n302_lit_string_α:      mov              r11, 126
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_329_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n303_call_α
.Llit_string_α_329_0:   .quad            .Llit_string_α_329_0_s
.Llit_string_α_329_0_s: .string          "[]"
                        .size            n302_lit_string_bx, .-n302_lit_string_bx
                        .type            n303_call_bx, @function
n303_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n303_call_α:            mov              r11, 127
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              rsi, qword ptr [rip + .Lcall_α_330_2]
                                                                              jmp   .Lcall_α_330_3
.Lcall_α_330_2:         .quad            .Lcall_α_330_2_s
.Lcall_α_330_2_s:       .string          "[]"
.Lcall_α_330_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    safe$2F2_step
                                                                              jmp   safe$2F2_γ
n303_call_β:            mov              r11, 127;                            jmp   safe$2F2_step
                        .size            n303_call_bx, .-n303_call_bx
                        .type            n304_var_ref_bx, @function
n304_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n304_var_ref_α:         mov              r11, 128
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 848], rax
                        mov              qword ptr [rbp + 856], rdx;          jmp   n305_var_ref_α
                        .size            n304_var_ref_bx, .-n304_var_ref_bx
                        .type            n305_var_ref_bx, @function
n305_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n305_var_ref_α:         mov              r11, 129
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 864], rax
                        mov              qword ptr [rbp + 872], rdx;          jmp   n306_call_α
                        .size            n305_var_ref_bx, .-n305_var_ref_bx
                        .type            n306_call_bx, @function
n306_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n306_call_α:            mov              r11, 130
                        mov              rax, qword ptr [rbp + 864]
                        mov              qword ptr [rbp + 816], rax
                        mov              rax, qword ptr [rbp + 872]
                        mov              qword ptr [rbp + 824], rax
                        mov              rax, qword ptr [rbp + 848]
                        mov              qword ptr [rbp + 800], rax
                        mov              rax, qword ptr [rbp + 856]
                        mov              qword ptr [rbp + 808], rax
                        lea              rdi, [rbp + 800]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx
                        cmp              al, 104;                             je    safe$2F2_step
                                                                              jmp   n307_var_ref_α
n306_call_β:            mov              r11, 130;                            jmp   safe$2F2_step
                        .size            n306_call_bx, .-n306_call_bx
                        .type            n307_var_ref_bx, @function
n307_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n307_var_ref_α:         mov              r11, 131
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 640], rax
                        mov              qword ptr [rbp + 648], rdx;          jmp   n308_lit_string_α
                        .size            n307_var_ref_bx, .-n307_var_ref_bx
                        .type            n308_lit_string_bx, @function
n308_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n308_lit_string_α:      mov              r11, 132
                        mov              qword ptr [rbp + 768], 2             # result
                        mov              dword ptr [rbp + 772], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_338_0]
                        mov              qword ptr [rbp + 776], rax;          jmp   n309_var_ref_α
.Llit_string_α_338_0:   .quad            .Llit_string_α_338_0_s
.Llit_string_α_338_0_s: .string          "."
                        .size            n308_lit_string_bx, .-n308_lit_string_bx
                        .type            n309_var_ref_bx, @function
n309_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n309_var_ref_α:         mov              r11, 133
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 672], rax
                        mov              qword ptr [rbp + 680], rdx;          jmp   n310_var_ref_α
                        .size            n309_var_ref_bx, .-n309_var_ref_bx
                        .type            n310_var_ref_bx, @function
n310_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n310_var_ref_α:         mov              r11, 134
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 656], rax
                        mov              qword ptr [rbp + 664], rdx;          jmp   n311_call_α
                        .size            n310_var_ref_bx, .-n310_var_ref_bx
                        .type            n311_call_bx, @function
n311_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n311_call_α:            mov              r11, 135
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
                        cmp              al, 104;                             je    safe$2F2_step
                                                                              jmp   n312_call_α
n311_call_β:            mov              r11, 135;                            jmp   safe$2F2_step
                        .size            n311_call_bx, .-n311_call_bx
                        .type            n312_call_bx, @function
n312_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n312_call_α:            mov              r11, 136
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 608], rax
                        mov              rax, qword ptr [rbp + 696]
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
                        cmp              al, 104;                             je    safe$2F2_step
                                                                              jmp   n313_var_ref_α
n312_call_β:            mov              r11, 136;                            jmp   safe$2F2_step
                        .size            n312_call_bx, .-n312_call_bx
                        .type            n313_var_ref_bx, @function
n313_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n313_var_ref_α:         mov              r11, 137
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 544], rax
                        mov              qword ptr [rbp + 552], rdx;          jmp   n314_var_ref_α
                        .size            n313_var_ref_bx, .-n313_var_ref_bx
                        .type            n314_var_ref_bx, @function
n314_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n314_var_ref_α:         mov              r11, 138
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n315_call_proc_staged_α
                        .size            n314_var_ref_bx, .-n314_var_ref_bx
                        .type            n315_call_proc_staged_bx, @function
n315_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n315_call_proc_staged_α:
                        mov              r11, 139
                        mov              qword ptr [rbp + 512], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_350_200
                        mov              rax, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_350_201
.Lcall_proc_staged_α_350_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 544]
                        mov              rdx, qword ptr [rbp + 552]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_350_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_350_202
                        mov              rax, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_350_203
.Lcall_proc_staged_α_350_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 560]
                        mov              rdx, qword ptr [rbp + 568]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_350_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_350_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_350_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_350_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_350_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_350_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_350_3:
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_350_21
                        add              rsp, 32
.Lcall_proc_staged_α_350_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_350_2
.Lcall_proc_staged_α_350_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 512], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_350_2
.Lcall_proc_staged_α_350_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_350_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   safe$2F2_step
.Lcall_proc_staged_α_350_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_350_29
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
.Lcall_proc_staged_α_350_29:
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    safe$2F2_step
                                                                              jmp   n316_lit_string_α
n315_call_proc_staged_β:
                        mov              r11, 139
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_350_22
                        mov              rax, qword ptr [rbp + 512]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_350_22
                        mov              rcx, qword ptr [rbp + 520]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_350_22:
                                                                              jmp   safe$2F2_step
.Lcall_proc_staged_α_350_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx
                        cmp              al, 104;                             je    safe$2F2_step
                                                                              jmp   n316_lit_string_α
.Lcall_proc_staged_α_350_0:
                        .quad            .Lcall_proc_staged_α_350_0_s
.Lcall_proc_staged_α_350_0_s:
                        .string          "test/2"
                        .size            n315_call_proc_staged_bx, .-n315_call_proc_staged_bx
                        .type            n316_lit_string_bx, @function
n316_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n316_lit_string_α:      mov              r11, 140
                        mov              qword ptr [rbp + 432], 2             # result
                        mov              dword ptr [rbp + 436], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_351_0]
                        mov              qword ptr [rbp + 440], rax;          jmp   n317_var_ref_α
.Llit_string_α_351_0:   .quad            .Llit_string_α_351_0_s
.Llit_string_α_351_0_s: .string          "."
                        .size            n316_lit_string_bx, .-n316_lit_string_bx
                        .type            n317_var_ref_bx, @function
n317_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n317_var_ref_α:         mov              r11, 141
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 896]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n318_var_ref_α
                        .size            n317_var_ref_bx, .-n317_var_ref_bx
                        .type            n318_var_ref_bx, @function
n318_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n318_var_ref_α:         mov              r11, 142
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 880]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n319_call_α
                        .size            n318_var_ref_bx, .-n318_var_ref_bx
                        .type            n319_call_bx, @function
n319_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n319_call_α:            mov              r11, 143
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 400], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 408], rax
                        mov              rax, qword ptr [rbp + 336]
                        mov              qword ptr [rbp + 384], rax
                        mov              rax, qword ptr [rbp + 344]
                        mov              qword ptr [rbp + 392], rax
                        mov              rax, qword ptr [rbp + 432]
                        mov              qword ptr [rbp + 368], rax
                        mov              rax, qword ptr [rbp + 440]
                        mov              qword ptr [rbp + 376], rax
                        lea              rdi, [rbp + 368]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    safe$2F2_step
                                                                              jmp   n320_var_ref_α
n319_call_β:            mov              r11, 143;                            jmp   safe$2F2_step
                        .size            n319_call_bx, .-n319_call_bx
                        .type            n320_var_ref_bx, @function
n320_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n320_var_ref_α:         mov              r11, 144
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 912]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n321_call_proc_staged_α
                        .size            n320_var_ref_bx, .-n320_var_ref_bx
                        .type            n321_call_proc_staged_bx, @function
n321_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n321_call_proc_staged_α:
                        mov              r11, 145
                        mov              qword ptr [rbp + 288], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_360_200
                        mov              rax, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_360_201
.Lcall_proc_staged_α_360_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 352]
                        mov              rdx, qword ptr [rbp + 360]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_360_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_360_202
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_360_203
.Lcall_proc_staged_α_360_202:
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
.Lcall_proc_staged_α_360_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_360_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_360_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_360_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_360_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_360_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_360_3:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_360_21
                        add              rsp, 32
.Lcall_proc_staged_α_360_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_360_2
.Lcall_proc_staged_α_360_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 288], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_360_2
.Lcall_proc_staged_α_360_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_360_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n315_call_proc_staged_β
.Lcall_proc_staged_α_360_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_360_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
.Lcall_proc_staged_α_360_29:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n315_call_proc_staged_β
                                                                              jmp   safe$2F2_ret1
n321_call_proc_staged_β:
                        mov              r11, 145
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_360_22
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_360_22
                        mov              rcx, qword ptr [rbp + 296]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_360_22:
                                                                              jmp   n315_call_proc_staged_β
.Lcall_proc_staged_α_360_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n315_call_proc_staged_β
                                                                              jmp   safe$2F2_ret1
.Lcall_proc_staged_α_360_0:
                        .quad            .Lcall_proc_staged_α_360_0_s
.Lcall_proc_staged_α_360_0_s:
                        .string          "safe/2"
                        .size            n321_call_proc_staged_bx, .-n321_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
safe$2F2_ret1:
                        lea              rax, [rip + n321_call_proc_staged_β]
                        mov              qword ptr [rbp + 960], rax
                                                                              jmp   safe$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
safe$2F2_step:
                        mov              rdi, qword ptr [rbp + 944]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 960], 0
                        lea              rdi, [rbp + 48]
                        xor              eax, eax
                        mov              ecx, 64
                        rep              stosb
                        mov              rax, qword ptr [rbp + 952]
                        test             rax, rax
                                                                              je    safe$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
safe$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 952], rax
                                                                              jmp   n304_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
safe$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
safe$2F2_β:
                        test             r15, r15
                                                                              jne   safe$2F2_ω
                        mov              rax, qword ptr [rbp + 960]
                        mov              qword ptr [rbp + 960], 0
                        test             rax, rax
                                                                              jne   safe$2F2_βres
                                                                              jmp   safe$2F2_step
safe$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
safe$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 984]
                        mov              rax, qword ptr [rbp + 968]
                        cmp              r13, rax;                            je    safe$2F2_altdet
                        lea              rdx, [rip + safe$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1000];         jmp   rcx
safe$2F2_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 1008]
                        mov              rbp, qword ptr [rbp + 1000];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
safe$2F2_ω:
                        mov              rcx, qword ptr [rbp + 992]
                        mov              r13, qword ptr [rbp + 968]
                        lea              rsp, [rbp + 1008]
                        mov              rbp, qword ptr [rbp + 1000];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__perm$2F2:
                        sub              rsp, 944
                        mov              qword ptr [rsp + 920], rcx
                        mov              qword ptr [rsp + 928], rdx
                        mov              qword ptr [rsp + 936], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 904], r13
                        mov              qword ptr [rsp + 896], 0
                        mov              qword ptr [rsp + 888], 0
                        mov              qword ptr [rsp + 880], r12
                        lea              rax, [rip + perm$2F2_alt1]
                        mov              qword ptr [rsp + 888], rax
                        lea              rdi, [rsp + 880]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 800
                        mov              edx, 880
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
perm$2F2_α_body:
                        .type            n361_var_ref_bx, @function
n361_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n361_var_ref_α:         mov              r11, 146
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 208], rax
                        mov              qword ptr [rbp + 216], rdx;          jmp   n362_lit_string_α
                        .size            n361_var_ref_bx, .-n361_var_ref_bx
                        .type            n362_lit_string_bx, @function
n362_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n362_lit_string_α:      mov              r11, 147
                        mov              qword ptr [rbp + 224], 2             # result
                        mov              dword ptr [rbp + 228], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_385_0]
                        mov              qword ptr [rbp + 232], rax;          jmp   n363_call_α
.Llit_string_α_385_0:   .quad            .Llit_string_α_385_0_s
.Llit_string_α_385_0_s: .string          "[]"
                        .size            n362_lit_string_bx, .-n362_lit_string_bx
                        .type            n363_call_bx, @function
n363_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n363_call_α:            mov              r11, 148
                        mov              rax, qword ptr [rbp + 208]
                        mov              qword ptr [rbp + 160], rax
                        mov              rax, qword ptr [rbp + 216]
                        mov              qword ptr [rbp + 168], rax
                        lea              rdi, [rbp + 160]
                        mov              rsi, qword ptr [rip + .Lcall_α_386_2]
                                                                              jmp   .Lcall_α_386_3
.Lcall_α_386_2:         .quad            .Lcall_α_386_2_s
.Lcall_α_386_2_s:       .string          "[]"
.Lcall_α_386_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx
                        cmp              al, 104;                             je    perm$2F2_step
                                                                              jmp   n364_var_ref_α
n363_call_β:            mov              r11, 148;                            jmp   perm$2F2_step
                        .size            n363_call_bx, .-n363_call_bx
                        .type            n364_var_ref_bx, @function
n364_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n364_var_ref_α:         mov              r11, 149
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 112], rax
                        mov              qword ptr [rbp + 120], rdx;          jmp   n365_lit_string_α
                        .size            n364_var_ref_bx, .-n364_var_ref_bx
                        .type            n365_lit_string_bx, @function
n365_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n365_lit_string_α:      mov              r11, 150
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_389_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n366_call_α
.Llit_string_α_389_0:   .quad            .Llit_string_α_389_0_s
.Llit_string_α_389_0_s: .string          "[]"
                        .size            n365_lit_string_bx, .-n365_lit_string_bx
                        .type            n366_call_bx, @function
n366_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n366_call_α:            mov              r11, 151
                        mov              rax, qword ptr [rbp + 112]
                        mov              qword ptr [rbp + 64], rax
                        mov              rax, qword ptr [rbp + 120]
                        mov              qword ptr [rbp + 72], rax
                        lea              rdi, [rbp + 64]
                        mov              rsi, qword ptr [rip + .Lcall_α_390_2]
                                                                              jmp   .Lcall_α_390_3
.Lcall_α_390_2:         .quad            .Lcall_α_390_2_s
.Lcall_α_390_2_s:       .string          "[]"
.Lcall_α_390_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    perm$2F2_step
                                                                              jmp   perm$2F2_γ
n366_call_β:            mov              r11, 151;                            jmp   perm$2F2_step
                        .size            n366_call_bx, .-n366_call_bx
                        .type            n367_var_ref_bx, @function
n367_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n367_var_ref_α:         mov              r11, 152
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 768], rax
                        mov              qword ptr [rbp + 776], rdx;          jmp   n368_var_ref_α
                        .size            n367_var_ref_bx, .-n367_var_ref_bx
                        .type            n368_var_ref_bx, @function
n368_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n368_var_ref_α:         mov              r11, 153
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 784], rax
                        mov              qword ptr [rbp + 792], rdx;          jmp   n369_call_α
                        .size            n368_var_ref_bx, .-n368_var_ref_bx
                        .type            n369_call_bx, @function
n369_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n369_call_α:            mov              r11, 154
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 704], rax
                        mov              qword ptr [rbp + 712], rdx
                        cmp              al, 104;                             je    perm$2F2_step
                                                                              jmp   n370_var_ref_α
n369_call_β:            mov              r11, 154;                            jmp   perm$2F2_step
                        .size            n369_call_bx, .-n369_call_bx
                        .type            n370_var_ref_bx, @function
n370_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n370_var_ref_α:         mov              r11, 155
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n371_lit_string_α
                        .size            n370_var_ref_bx, .-n370_var_ref_bx
                        .type            n371_lit_string_bx, @function
n371_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n371_lit_string_α:      mov              r11, 156
                        mov              qword ptr [rbp + 688], 2             # result
                        mov              dword ptr [rbp + 692], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_398_0]
                        mov              qword ptr [rbp + 696], rax;          jmp   n372_var_ref_α
.Llit_string_α_398_0:   .quad            .Llit_string_α_398_0_s
.Llit_string_α_398_0_s: .string          "."
                        .size            n371_lit_string_bx, .-n371_lit_string_bx
                        .type            n372_var_ref_bx, @function
n372_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n372_var_ref_α:         mov              r11, 157
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n373_var_ref_α
                        .size            n372_var_ref_bx, .-n372_var_ref_bx
                        .type            n373_var_ref_bx, @function
n373_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n373_var_ref_α:         mov              r11, 158
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n374_call_α
                        .size            n373_var_ref_bx, .-n373_var_ref_bx
                        .type            n374_call_bx, @function
n374_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n374_call_α:            mov              r11, 159
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 648], rax
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 624], rax
                        mov              rax, qword ptr [rbp + 696]
                        mov              qword ptr [rbp + 632], rax
                        lea              rdi, [rbp + 624]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx
                        cmp              al, 104;                             je    perm$2F2_step
                                                                              jmp   n375_call_α
n374_call_β:            mov              r11, 159;                            jmp   perm$2F2_step
                        .size            n374_call_bx, .-n374_call_bx
                        .type            n375_call_bx, @function
n375_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n375_call_α:            mov              r11, 160
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    perm$2F2_step
                                                                              jmp   n376_var_ref_α
n375_call_β:            mov              r11, 160;                            jmp   perm$2F2_step
                        .size            n375_call_bx, .-n375_call_bx
                        .type            n376_var_ref_bx, @function
n376_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n376_var_ref_α:         mov              r11, 161
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 832]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n377_var_ref_α
                        .size            n376_var_ref_bx, .-n376_var_ref_bx
                        .type            n377_var_ref_bx, @function
n377_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n377_var_ref_α:         mov              r11, 162
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 848]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n378_var_ref_α
                        .size            n377_var_ref_bx, .-n377_var_ref_bx
                        .type            n378_var_ref_bx, @function
n378_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n378_var_ref_α:         mov              r11, 163
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n379_call_proc_staged_α
                        .size            n378_var_ref_bx, .-n378_var_ref_bx
                        .type            n379_call_proc_staged_bx, @function
n379_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n379_call_proc_staged_α:
                        mov              r11, 164
                        mov              qword ptr [rbp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_412_200
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_412_201
.Lcall_proc_staged_α_412_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_412_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_412_202
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_412_203
.Lcall_proc_staged_α_412_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_412_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_412_204
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_412_205
.Lcall_proc_staged_α_412_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_412_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_412_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_412_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_412_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_412_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_412_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_412_3:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_412_21
                        add              rsp, 32
.Lcall_proc_staged_α_412_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_412_2
.Lcall_proc_staged_α_412_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 416], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_412_2
.Lcall_proc_staged_α_412_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_412_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   perm$2F2_step
.Lcall_proc_staged_α_412_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_412_29
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
.Lcall_proc_staged_α_412_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    perm$2F2_step
                                                                              jmp   n380_var_ref_α
n379_call_proc_staged_β:
                        mov              r11, 164
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_412_22
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_412_22
                        mov              rcx, qword ptr [rbp + 424]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_412_22:
                                                                              jmp   perm$2F2_step
.Lcall_proc_staged_α_412_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    perm$2F2_step
                                                                              jmp   n380_var_ref_α
.Lcall_proc_staged_α_412_0:
                        .quad            .Lcall_proc_staged_α_412_0_s
.Lcall_proc_staged_α_412_0_s:
                        .string          "sel/3"
                        .size            n379_call_proc_staged_bx, .-n379_call_proc_staged_bx
                        .type            n380_var_ref_bx, @function
n380_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n380_var_ref_α:         mov              r11, 165
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 800]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n381_var_ref_α
                        .size            n380_var_ref_bx, .-n380_var_ref_bx
                        .type            n381_var_ref_bx, @function
n381_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n381_var_ref_α:         mov              r11, 166
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 816]
                        mov              qword ptr [rbp + 336], rax
                        mov              qword ptr [rbp + 344], rdx;          jmp   n382_call_proc_staged_α
                        .size            n381_var_ref_bx, .-n381_var_ref_bx
                        .type            n382_call_proc_staged_bx, @function
n382_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n382_call_proc_staged_α:
                        mov              r11, 167
                        mov              qword ptr [rbp + 288], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_418_200
                        mov              rax, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_418_201
.Lcall_proc_staged_α_418_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 320]
                        mov              rdx, qword ptr [rbp + 328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_418_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_418_202
                        mov              rax, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_418_203
.Lcall_proc_staged_α_418_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 336]
                        mov              rdx, qword ptr [rbp + 344]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_418_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_418_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_418_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_418_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_418_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_418_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_418_3:
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_418_21
                        add              rsp, 32
.Lcall_proc_staged_α_418_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_418_2
.Lcall_proc_staged_α_418_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 288], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_418_2
.Lcall_proc_staged_α_418_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_418_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n379_call_proc_staged_β
.Lcall_proc_staged_α_418_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_418_29
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              edx, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_nret_fix_tiny@PLT
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 240]
                        mov              rdx, qword ptr [rbp + 248]
.Lcall_proc_staged_α_418_29:
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n379_call_proc_staged_β
                                                                              jmp   perm$2F2_ret1
n382_call_proc_staged_β:
                        mov              r11, 167
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_418_22
                        mov              rax, qword ptr [rbp + 288]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_418_22
                        mov              rcx, qword ptr [rbp + 296]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_418_22:
                                                                              jmp   n379_call_proc_staged_β
.Lcall_proc_staged_α_418_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 240], rax
                        mov              qword ptr [rbp + 248], rdx
                        cmp              al, 104;                             je    n379_call_proc_staged_β
                                                                              jmp   perm$2F2_ret1
.Lcall_proc_staged_α_418_0:
                        .quad            .Lcall_proc_staged_α_418_0_s
.Lcall_proc_staged_α_418_0_s:
                        .string          "perm/2"
                        .size            n382_call_proc_staged_bx, .-n382_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
perm$2F2_ret1:
                        lea              rax, [rip + n382_call_proc_staged_β]
                        mov              qword ptr [rbp + 896], rax
                                                                              jmp   perm$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
perm$2F2_step:
                        mov              rdi, qword ptr [rbp + 880]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 896], 0
                        lea              rdi, [rbp + 48]
                        xor              eax, eax
                        mov              ecx, 80
                        rep              stosb
                        mov              rax, qword ptr [rbp + 888]
                        test             rax, rax
                                                                              je    perm$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
perm$2F2_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 888], rax
                                                                              jmp   n367_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
perm$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
perm$2F2_β:
                        test             r15, r15
                                                                              jne   perm$2F2_ω
                        mov              rax, qword ptr [rbp + 896]
                        mov              qword ptr [rbp + 896], 0
                        test             rax, rax
                                                                              jne   perm$2F2_βres
                                                                              jmp   perm$2F2_step
perm$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
perm$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 920]
                        mov              rax, qword ptr [rbp + 904]
                        cmp              r13, rax;                            je    perm$2F2_altdet
                        lea              rdx, [rip + perm$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 936];          jmp   rcx
perm$2F2_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 944]
                        mov              rbp, qword ptr [rbp + 936];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
perm$2F2_ω:
                        mov              rcx, qword ptr [rbp + 928]
                        mov              r13, qword ptr [rbp + 904]
                        lea              rsp, [rbp + 944]
                        mov              rbp, qword ptr [rbp + 936];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__pair$2F3:
                        sub              rsp, 1392
                        mov              qword ptr [rsp + 1368], rcx
                        mov              qword ptr [rsp + 1376], rdx
                        mov              qword ptr [rsp + 1384], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 1352], r13
                        mov              qword ptr [rsp + 1344], 0
                        mov              qword ptr [rsp + 1336], 0
                        mov              qword ptr [rsp + 1328], r12
                        lea              rax, [rip + pair$2F3_alt1]
                        mov              qword ptr [rsp + 1336], rax
                        lea              rdi, [rsp + 1328]
                        call             rt_pl_choice_open@PLT
                        mov              rdi, rsp
                        mov              esi, 1232
                        mov              edx, 1328
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 3
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
pair$2F3_α_body:
                        .type            n419_var_ref_bx, @function
n419_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n419_var_ref_α:         mov              r11, 168
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 320], rax
                        mov              qword ptr [rbp + 328], rdx;          jmp   n420_lit_string_α
                        .size            n419_var_ref_bx, .-n419_var_ref_bx
                        .type            n420_lit_string_bx, @function
n420_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n420_lit_string_α:      mov              r11, 169
                        mov              qword ptr [rbp + 336], 2             # result
                        mov              dword ptr [rbp + 340], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_455_0]
                        mov              qword ptr [rbp + 344], rax;          jmp   n421_call_α
.Llit_string_α_455_0:   .quad            .Llit_string_α_455_0_s
.Llit_string_α_455_0_s: .string          "[]"
                        .size            n420_lit_string_bx, .-n420_lit_string_bx
                        .type            n421_call_bx, @function
n421_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n421_call_α:            mov              r11, 170
                        mov              rax, qword ptr [rbp + 320]
                        mov              qword ptr [rbp + 272], rax
                        mov              rax, qword ptr [rbp + 328]
                        mov              qword ptr [rbp + 280], rax
                        lea              rdi, [rbp + 272]
                        mov              rsi, qword ptr [rip + .Lcall_α_456_2]
                                                                              jmp   .Lcall_α_456_3
.Lcall_α_456_2:         .quad            .Lcall_α_456_2_s
.Lcall_α_456_2_s:       .string          "[]"
.Lcall_α_456_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx
                        cmp              al, 104;                             je    pair$2F3_step
                                                                              jmp   n422_var_ref_α
n421_call_β:            mov              r11, 170;                            jmp   pair$2F3_step
                        .size            n421_call_bx, .-n421_call_bx
                        .type            n422_var_ref_bx, @function
n422_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n422_var_ref_α:         mov              r11, 171
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx;          jmp   n423_lit_string_α
                        .size            n422_var_ref_bx, .-n422_var_ref_bx
                        .type            n423_lit_string_bx, @function
n423_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n423_lit_string_α:      mov              r11, 172
                        mov              qword ptr [rbp + 240], 2             # result
                        mov              dword ptr [rbp + 244], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_459_0]
                        mov              qword ptr [rbp + 248], rax;          jmp   n424_call_α
.Llit_string_α_459_0:   .quad            .Llit_string_α_459_0_s
.Llit_string_α_459_0_s: .string          "[]"
                        .size            n423_lit_string_bx, .-n423_lit_string_bx
                        .type            n424_call_bx, @function
n424_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n424_call_α:            mov              r11, 173
                        mov              rax, qword ptr [rbp + 224]
                        mov              qword ptr [rbp + 176], rax
                        mov              rax, qword ptr [rbp + 232]
                        mov              qword ptr [rbp + 184], rax
                        lea              rdi, [rbp + 176]
                        mov              rsi, qword ptr [rip + .Lcall_α_460_2]
                                                                              jmp   .Lcall_α_460_3
.Lcall_α_460_2:         .quad            .Lcall_α_460_2_s
.Lcall_α_460_2_s:       .string          "[]"
.Lcall_α_460_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    pair$2F3_step
                                                                              jmp   n425_var_ref_α
n424_call_β:            mov              r11, 173;                            jmp   pair$2F3_step
                        .size            n424_call_bx, .-n424_call_bx
                        .type            n425_var_ref_bx, @function
n425_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n425_var_ref_α:         mov              r11, 174
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx;          jmp   n426_lit_string_α
                        .size            n425_var_ref_bx, .-n425_var_ref_bx
                        .type            n426_lit_string_bx, @function
n426_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n426_lit_string_α:      mov              r11, 175
                        mov              qword ptr [rbp + 144], 2             # result
                        mov              dword ptr [rbp + 148], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_463_0]
                        mov              qword ptr [rbp + 152], rax;          jmp   n427_call_α
.Llit_string_α_463_0:   .quad            .Llit_string_α_463_0_s
.Llit_string_α_463_0_s: .string          "[]"
                        .size            n426_lit_string_bx, .-n426_lit_string_bx
                        .type            n427_call_bx, @function
n427_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n427_call_α:            mov              r11, 176
                        mov              rax, qword ptr [rbp + 128]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 136]
                        mov              qword ptr [rbp + 88], rax
                        lea              rdi, [rbp + 80]
                        mov              rsi, qword ptr [rip + .Lcall_α_464_2]
                                                                              jmp   .Lcall_α_464_3
.Lcall_α_464_2:         .quad            .Lcall_α_464_2_s
.Lcall_α_464_2_s:       .string          "[]"
.Lcall_α_464_3:         mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify_cs@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 64], rax
                        mov              qword ptr [rbp + 72], rdx
                        cmp              al, 104;                             je    pair$2F3_step
                                                                              jmp   pair$2F3_γ
n427_call_β:            mov              r11, 176;                            jmp   pair$2F3_step
                        .size            n427_call_bx, .-n427_call_bx
                        .type            n428_var_ref_bx, @function
n428_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n428_var_ref_α:         mov              r11, 177
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 1088], rax
                        mov              qword ptr [rbp + 1096], rdx;         jmp   n429_lit_string_α
                        .size            n428_var_ref_bx, .-n428_var_ref_bx
                        .type            n429_lit_string_bx, @function
n429_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n429_lit_string_α:      mov              r11, 178
                        mov              qword ptr [rbp + 1216], 2            # result
                        mov              dword ptr [rbp + 1220], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_467_0]
                        mov              qword ptr [rbp + 1224], rax;         jmp   n430_var_ref_α
.Llit_string_α_467_0:   .quad            .Llit_string_α_467_0_s
.Llit_string_α_467_0_s: .string          "."
                        .size            n429_lit_string_bx, .-n429_lit_string_bx
                        .type            n430_var_ref_bx, @function
n430_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n430_var_ref_α:         mov              r11, 179
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 1120], rax
                        mov              qword ptr [rbp + 1128], rdx;         jmp   n431_var_ref_α
                        .size            n430_var_ref_bx, .-n430_var_ref_bx
                        .type            n431_var_ref_bx, @function
n431_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n431_var_ref_α:         mov              r11, 180
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 1104], rax
                        mov              qword ptr [rbp + 1112], rdx;         jmp   n432_call_α
                        .size            n431_var_ref_bx, .-n431_var_ref_bx
                        .type            n432_call_bx, @function
n432_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n432_call_α:            mov              r11, 181
                        mov              rax, qword ptr [rbp + 1104]
                        mov              qword ptr [rbp + 1184], rax
                        mov              rax, qword ptr [rbp + 1112]
                        mov              qword ptr [rbp + 1192], rax
                        mov              rax, qword ptr [rbp + 1120]
                        mov              qword ptr [rbp + 1168], rax
                        mov              rax, qword ptr [rbp + 1128]
                        mov              qword ptr [rbp + 1176], rax
                        mov              rax, qword ptr [rbp + 1216]
                        mov              qword ptr [rbp + 1152], rax
                        mov              rax, qword ptr [rbp + 1224]
                        mov              qword ptr [rbp + 1160], rax
                        lea              rdi, [rbp + 1152]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1136], rax
                        mov              qword ptr [rbp + 1144], rdx
                        cmp              al, 104;                             je    pair$2F3_step
                                                                              jmp   n433_call_α
n432_call_β:            mov              r11, 181;                            jmp   pair$2F3_step
                        .size            n432_call_bx, .-n432_call_bx
                        .type            n433_call_bx, @function
n433_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n433_call_α:            mov              r11, 182
                        mov              rax, qword ptr [rbp + 1136]
                        mov              qword ptr [rbp + 1056], rax
                        mov              rax, qword ptr [rbp + 1144]
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
                        cmp              al, 104;                             je    pair$2F3_step
                                                                              jmp   n434_var_ref_α
n433_call_β:            mov              r11, 182;                            jmp   pair$2F3_step
                        .size            n433_call_bx, .-n433_call_bx
                        .type            n434_var_ref_bx, @function
n434_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n434_var_ref_α:         mov              r11, 183
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 880], rax
                        mov              qword ptr [rbp + 888], rdx;          jmp   n435_lit_string_α
                        .size            n434_var_ref_bx, .-n434_var_ref_bx
                        .type            n435_lit_string_bx, @function
n435_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n435_lit_string_α:      mov              r11, 184
                        mov              qword ptr [rbp + 1008], 2            # result
                        mov              dword ptr [rbp + 1012], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_476_0]
                        mov              qword ptr [rbp + 1016], rax;         jmp   n436_var_ref_α
.Llit_string_α_476_0:   .quad            .Llit_string_α_476_0_s
.Llit_string_α_476_0_s: .string          "."
                        .size            n435_lit_string_bx, .-n435_lit_string_bx
                        .type            n436_var_ref_bx, @function
n436_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n436_var_ref_α:         mov              r11, 185
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 912], rax
                        mov              qword ptr [rbp + 920], rdx;          jmp   n437_var_ref_α
                        .size            n436_var_ref_bx, .-n436_var_ref_bx
                        .type            n437_var_ref_bx, @function
n437_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n437_var_ref_α:         mov              r11, 186
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 896], rax
                        mov              qword ptr [rbp + 904], rdx;          jmp   n438_call_α
                        .size            n437_var_ref_bx, .-n437_var_ref_bx
                        .type            n438_call_bx, @function
n438_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n438_call_α:            mov              r11, 187
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
                        cmp              al, 104;                             je    pair$2F3_step
                                                                              jmp   n439_call_α
n438_call_β:            mov              r11, 187;                            jmp   pair$2F3_step
                        .size            n438_call_bx, .-n438_call_bx
                        .type            n439_call_bx, @function
n439_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n439_call_α:            mov              r11, 188
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
                        cmp              al, 104;                             je    pair$2F3_step
                                                                              jmp   n440_var_ref_α
n439_call_β:            mov              r11, 188;                            jmp   pair$2F3_step
                        .size            n439_call_bx, .-n439_call_bx
                        .type            n440_var_ref_bx, @function
n440_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n440_var_ref_α:         mov              r11, 189
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 48]
                        mov              qword ptr [rbp + 560], rax
                        mov              qword ptr [rbp + 568], rdx;          jmp   n441_lit_string_α
                        .size            n440_var_ref_bx, .-n440_var_ref_bx
                        .type            n441_lit_string_bx, @function
n441_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n441_lit_string_α:      mov              r11, 190
                        mov              qword ptr [rbp + 800], 2             # result
                        mov              dword ptr [rbp + 804], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_485_0]
                        mov              qword ptr [rbp + 808], rax;          jmp   n442_lit_string_α
.Llit_string_α_485_0:   .quad            .Llit_string_α_485_0_s
.Llit_string_α_485_0_s: .string          "."
                        .size            n441_lit_string_bx, .-n441_lit_string_bx
                        .type            n442_lit_string_bx, @function
n442_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n442_lit_string_α:      mov              r11, 191
                        mov              qword ptr [rbp + 704], 2             # result
                        mov              dword ptr [rbp + 708], 1
                        mov              rax, qword ptr [rip + .Llit_string_α_486_0]
                        mov              qword ptr [rbp + 712], rax;          jmp   n443_var_ref_α
.Llit_string_α_486_0:   .quad            .Llit_string_α_486_0_s
.Llit_string_α_486_0_s: .string          "p"
                        .size            n442_lit_string_bx, .-n442_lit_string_bx
                        .type            n443_var_ref_bx, @function
n443_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n443_var_ref_α:         mov              r11, 192
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1280]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n444_var_ref_α
                        .size            n443_var_ref_bx, .-n443_var_ref_bx
                        .type            n444_var_ref_bx, @function
n444_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n444_var_ref_α:         mov              r11, 193
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1296]
                        mov              qword ptr [rbp + 608], rax
                        mov              qword ptr [rbp + 616], rdx;          jmp   n445_call_α
                        .size            n444_var_ref_bx, .-n444_var_ref_bx
                        .type            n445_call_bx, @function
n445_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n445_call_α:            mov              r11, 194
                        mov              rax, qword ptr [rbp + 608]
                        mov              qword ptr [rbp + 672], rax
                        mov              rax, qword ptr [rbp + 616]
                        mov              qword ptr [rbp + 680], rax
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 656], rax
                        mov              rax, qword ptr [rbp + 600]
                        mov              qword ptr [rbp + 664], rax
                        mov              rax, qword ptr [rbp + 704]
                        mov              qword ptr [rbp + 640], rax
                        mov              rax, qword ptr [rbp + 712]
                        mov              qword ptr [rbp + 648], rax
                        lea              rdi, [rbp + 640]
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_mkc@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 624], rax
                        mov              qword ptr [rbp + 632], rdx
                        cmp              al, 104;                             je    pair$2F3_ω
                                                                              jmp   n446_var_ref_α
n445_call_β:            mov              r11, 194;                            jmp   pair$2F3_ω
                        .size            n445_call_bx, .-n445_call_bx
                        .type            n446_var_ref_bx, @function
n446_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n446_var_ref_α:         mov              r11, 195
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n447_call_α
                        .size            n446_var_ref_bx, .-n446_var_ref_bx
                        .type            n447_call_bx, @function
n447_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n447_call_α:            mov              r11, 196
                        mov              rax, qword ptr [rbp + 576]
                        mov              qword ptr [rbp + 768], rax
                        mov              rax, qword ptr [rbp + 584]
                        mov              qword ptr [rbp + 776], rax
                        mov              rax, qword ptr [rbp + 624]
                        mov              qword ptr [rbp + 752], rax
                        mov              rax, qword ptr [rbp + 632]
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
                        cmp              al, 104;                             je    pair$2F3_step
                                                                              jmp   n448_call_α
n447_call_β:            mov              r11, 196;                            jmp   pair$2F3_step
                        .size            n447_call_bx, .-n447_call_bx
                        .type            n448_call_bx, @function
n448_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n448_call_α:            mov              r11, 197
                        mov              rax, qword ptr [rbp + 720]
                        mov              qword ptr [rbp + 528], rax
                        mov              rax, qword ptr [rbp + 728]
                        mov              qword ptr [rbp + 536], rax
                        mov              rax, qword ptr [rbp + 560]
                        mov              qword ptr [rbp + 512], rax
                        mov              rax, qword ptr [rbp + 568]
                        mov              qword ptr [rbp + 520], rax
                        lea              rdi, [rbp + 512]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx
                        cmp              al, 104;                             je    pair$2F3_step
                                                                              jmp   n449_var_ref_α
n448_call_β:            mov              r11, 197;                            jmp   pair$2F3_step
                        .size            n448_call_bx, .-n448_call_bx
                        .type            n449_var_ref_bx, @function
n449_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n449_var_ref_α:         mov              r11, 198
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1232]
                        mov              qword ptr [rbp + 448], rax
                        mov              qword ptr [rbp + 456], rdx;          jmp   n450_var_ref_α
                        .size            n449_var_ref_bx, .-n449_var_ref_bx
                        .type            n450_var_ref_bx, @function
n450_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n450_var_ref_α:         mov              r11, 199
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1248]
                        mov              qword ptr [rbp + 464], rax
                        mov              qword ptr [rbp + 472], rdx;          jmp   n451_var_ref_α
                        .size            n450_var_ref_bx, .-n450_var_ref_bx
                        .type            n451_var_ref_bx, @function
n451_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n451_var_ref_α:         mov              r11, 200
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 1264]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n452_call_proc_staged_α
                        .size            n451_var_ref_bx, .-n451_var_ref_bx
                        .type            n452_call_proc_staged_bx, @function
n452_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n452_call_proc_staged_α:
                        mov              r11, 201
                        mov              qword ptr [rbp + 416], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_503_200
                        mov              rax, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_503_201
.Lcall_proc_staged_α_503_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 448]
                        mov              rdx, qword ptr [rbp + 456]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_503_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_503_202
                        mov              rax, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_503_203
.Lcall_proc_staged_α_503_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 464]
                        mov              rdx, qword ptr [rbp + 472]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_503_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_503_204
                        mov              rax, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_503_205
.Lcall_proc_staged_α_503_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 480]
                        mov              rdx, qword ptr [rbp + 488]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_503_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_503_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 6
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_503_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_503_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_503_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_503_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_503_3:
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_503_21
                        add              rsp, 32
.Lcall_proc_staged_α_503_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_503_2
.Lcall_proc_staged_α_503_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 416], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_503_2
.Lcall_proc_staged_α_503_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_503_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   pair$2F3_step
.Lcall_proc_staged_α_503_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_503_29
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
.Lcall_proc_staged_α_503_29:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    pair$2F3_step
                                                                              jmp   pair$2F3_ret1
n452_call_proc_staged_β:
                        mov              r11, 201
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_503_22
                        mov              rax, qword ptr [rbp + 416]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_503_22
                        mov              rcx, qword ptr [rbp + 424]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_503_22:
                                                                              jmp   pair$2F3_step
.Lcall_proc_staged_α_503_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        cmp              al, 104;                             je    pair$2F3_step
                                                                              jmp   pair$2F3_ret1
.Lcall_proc_staged_α_503_0:
                        .quad            .Lcall_proc_staged_α_503_0_s
.Lcall_proc_staged_α_503_0_s:
                        .string          "pair/3"
                        .size            n452_call_proc_staged_bx, .-n452_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
pair$2F3_ret1:
                        lea              rax, [rip + n452_call_proc_staged_β]
                        mov              qword ptr [rbp + 1344], rax
                                                                              jmp   pair$2F3_γ
#-----------------------------------------------------------------------------------------------------------------------
pair$2F3_step:
                        mov              rdi, qword ptr [rbp + 1328]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 1344], 0
                        lea              rdi, [rbp + 64]
                        xor              eax, eax
                        mov              ecx, 128
                        rep              stosb
                        mov              rax, qword ptr [rbp + 1336]
                        test             rax, rax
                                                                              je    pair$2F3_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
pair$2F3_alt1:
                        xor              eax, eax
                        mov              qword ptr [rbp + 1336], rax
                                                                              jmp   n428_var_ref_α
#-----------------------------------------------------------------------------------------------------------------------
pair$2F3_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
pair$2F3_β:
                        test             r15, r15
                                                                              jne   pair$2F3_ω
                        mov              rax, qword ptr [rbp + 1344]
                        mov              qword ptr [rbp + 1344], 0
                        test             rax, rax
                                                                              jne   pair$2F3_βres
                                                                              jmp   pair$2F3_step
pair$2F3_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
pair$2F3_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 1368]
                        mov              rax, qword ptr [rbp + 1352]
                        cmp              r13, rax;                            je    pair$2F3_altdet
                        lea              rdx, [rip + pair$2F3_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 1384];         jmp   rcx
pair$2F3_altdet:        xor              eax, eax
                        lea              rsp, [rbp + 1392]
                        mov              rbp, qword ptr [rbp + 1384];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
pair$2F3_ω:
                        mov              rcx, qword ptr [rbp + 1376]
                        mov              r13, qword ptr [rbp + 1352]
                        lea              rsp, [rbp + 1392]
                        mov              rbp, qword ptr [rbp + 1384];         jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
FN__q$2F2:
                        sub              rsp, 736
                        mov              qword ptr [rsp + 712], rcx
                        mov              qword ptr [rsp + 720], rdx
                        mov              qword ptr [rsp + 728], rbp
                        mov              rbp, rsp
                        mov              qword ptr [rsp + 696], r13
                        mov              qword ptr [rsp + 688], 0
                        mov              qword ptr [rsp + 680], 0
                        mov              qword ptr [rsp + 672], r12
                        mov              rdi, rsp
                        mov              esi, 608
                        mov              edx, 672
                        call             rt_jmp_frame_lexprep2@PLT
                        mov              rdi, rsp
                        mov              esi, 2
                        mov              edx, 0
                        call             rt_icn_zframe_args_install@PLT
q$2F2_α_body:
                        .type            n504_var_ref_bx, @function
n504_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n504_var_ref_α:         mov              r11, 202
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 16]
                        mov              qword ptr [rbp + 576], rax
                        mov              qword ptr [rbp + 584], rdx;          jmp   n505_var_ref_α
                        .size            n504_var_ref_bx, .-n504_var_ref_bx
                        .type            n505_var_ref_bx, @function
n505_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n505_var_ref_α:         mov              r11, 203
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 592], rax
                        mov              qword ptr [rbp + 600], rdx;          jmp   n506_call_α
                        .size            n505_var_ref_bx, .-n505_var_ref_bx
                        .type            n506_call_bx, @function
n506_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n506_call_α:            mov              r11, 204
                        mov              rax, qword ptr [rbp + 592]
                        mov              qword ptr [rbp + 544], rax
                        mov              rax, qword ptr [rbp + 600]
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
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 512], rax
                        mov              qword ptr [rbp + 520], rdx
                        cmp              al, 104;                             je    q$2F2_step
                                                                              jmp   n507_var_ref_α
n506_call_β:            mov              r11, 204;                            jmp   q$2F2_step
                        .size            n506_call_bx, .-n506_call_bx
                        .type            n507_var_ref_bx, @function
n507_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n507_var_ref_α:         mov              r11, 205
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 32]
                        mov              qword ptr [rbp + 480], rax
                        mov              qword ptr [rbp + 488], rdx;          jmp   n508_var_ref_α
                        .size            n507_var_ref_bx, .-n507_var_ref_bx
                        .type            n508_var_ref_bx, @function
n508_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n508_var_ref_α:         mov              r11, 206
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 496], rax
                        mov              qword ptr [rbp + 504], rdx;          jmp   n509_call_α
                        .size            n508_var_ref_bx, .-n508_var_ref_bx
                        .type            n509_call_bx, @function
n509_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n509_call_α:            mov              r11, 207
                        mov              rax, qword ptr [rbp + 496]
                        mov              qword ptr [rbp + 448], rax
                        mov              rax, qword ptr [rbp + 504]
                        mov              qword ptr [rbp + 456], rax
                        mov              rax, qword ptr [rbp + 480]
                        mov              qword ptr [rbp + 432], rax
                        mov              rax, qword ptr [rbp + 488]
                        mov              qword ptr [rbp + 440], rax
                        lea              rdi, [rbp + 432]
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_dop_unify@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 416], rax
                        mov              qword ptr [rbp + 424], rdx
                        cmp              al, 104;                             je    q$2F2_step
                                                                              jmp   n510_var_ref_α
n509_call_β:            mov              r11, 207;                            jmp   q$2F2_step
                        .size            n509_call_bx, .-n509_call_bx
                        .type            n510_var_ref_bx, @function
n510_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n510_var_ref_α:         mov              r11, 208
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 384], rax
                        mov              qword ptr [rbp + 392], rdx;          jmp   n511_var_ref_α
                        .size            n510_var_ref_bx, .-n510_var_ref_bx
                        .type            n511_var_ref_bx, @function
n511_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n511_var_ref_α:         mov              r11, 209
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 400], rax
                        mov              qword ptr [rbp + 408], rdx;          jmp   n512_call_proc_staged_α
                        .size            n511_var_ref_bx, .-n511_var_ref_bx
                        .type            n512_call_proc_staged_bx, @function
n512_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n512_call_proc_staged_α:
                        mov              r11, 210
                        mov              qword ptr [rbp + 352], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_535_200
                        mov              rax, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_535_201
.Lcall_proc_staged_α_535_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 384]
                        mov              rdx, qword ptr [rbp + 392]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_535_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_535_202
                        mov              rax, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_535_203
.Lcall_proc_staged_α_535_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 400]
                        mov              rdx, qword ptr [rbp + 408]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_535_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_535_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 5
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_535_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_535_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_535_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_535_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_535_3:
                        mov              qword ptr [rbp + 352], rax
                        mov              qword ptr [rbp + 360], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_535_21
                        add              rsp, 32
.Lcall_proc_staged_α_535_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_535_2
.Lcall_proc_staged_α_535_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 352], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_535_2
.Lcall_proc_staged_α_535_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_535_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   q$2F2_step
.Lcall_proc_staged_α_535_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_535_29
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
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              rax, qword ptr [rbp + 304]
                        mov              rdx, qword ptr [rbp + 312]
.Lcall_proc_staged_α_535_29:
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    q$2F2_step
                                                                              jmp   n513_var_ref_α
n512_call_proc_staged_β:
                        mov              r11, 210
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_535_22
                        mov              rax, qword ptr [rbp + 352]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_535_22
                        mov              rcx, qword ptr [rbp + 360]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_535_22:
                                                                              jmp   q$2F2_step
.Lcall_proc_staged_α_535_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 304], rax
                        mov              qword ptr [rbp + 312], rdx
                        cmp              al, 104;                             je    q$2F2_step
                                                                              jmp   n513_var_ref_α
.Lcall_proc_staged_α_535_0:
                        .quad            .Lcall_proc_staged_α_535_0_s
.Lcall_proc_staged_α_535_0_s:
                        .string          "perm/2"
                        .size            n512_call_proc_staged_bx, .-n512_call_proc_staged_bx
                        .type            n513_var_ref_bx, @function
n513_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n513_var_ref_α:         mov              r11, 211
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 624]
                        mov              qword ptr [rbp + 256], rax
                        mov              qword ptr [rbp + 264], rdx;          jmp   n514_var_ref_α
                        .size            n513_var_ref_bx, .-n513_var_ref_bx
                        .type            n514_var_ref_bx, @function
n514_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n514_var_ref_α:         mov              r11, 212
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 640]
                        mov              qword ptr [rbp + 272], rax
                        mov              qword ptr [rbp + 280], rdx;          jmp   n515_var_ref_α
                        .size            n514_var_ref_bx, .-n514_var_ref_bx
                        .type            n515_var_ref_bx, @function
n515_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n515_var_ref_α:         mov              r11, 213
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 288], rax
                        mov              qword ptr [rbp + 296], rdx;          jmp   n516_call_proc_staged_α
                        .size            n515_var_ref_bx, .-n515_var_ref_bx
                        .type            n516_call_proc_staged_bx, @function
n516_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n516_call_proc_staged_α:
                        mov              r11, 214
                        mov              qword ptr [rbp + 224], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_543_200
                        mov              rax, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_543_201
.Lcall_proc_staged_α_543_200:
                        mov              edi, 0
                        mov              rsi, qword ptr [rbp + 256]
                        mov              rdx, qword ptr [rbp + 264]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_543_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_543_202
                        mov              rax, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_543_203
.Lcall_proc_staged_α_543_202:
                        mov              edi, 1
                        mov              rsi, qword ptr [rbp + 272]
                        mov              rdx, qword ptr [rbp + 280]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_543_203:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_543_204
                        mov              rax, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 32], rax
                        mov              qword ptr [r8 + 40], rdx;            jmp   .Lcall_proc_staged_α_543_205
.Lcall_proc_staged_α_543_204:
                        mov              edi, 2
                        mov              rsi, qword ptr [rbp + 288]
                        mov              rdx, qword ptr [rbp + 296]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_arg_stage@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
.Lcall_proc_staged_α_543_205:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_543_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 6
                        mov              esi, 3
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_543_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_543_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_543_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_543_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_543_3:
                        mov              qword ptr [rbp + 224], rax
                        mov              qword ptr [rbp + 232], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_543_21
                        add              rsp, 32
.Lcall_proc_staged_α_543_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_543_2
.Lcall_proc_staged_α_543_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 224], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_543_2
.Lcall_proc_staged_α_543_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_543_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n512_call_proc_staged_β
.Lcall_proc_staged_α_543_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_543_29
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
.Lcall_proc_staged_α_543_29:
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n512_call_proc_staged_β
                                                                              jmp   n517_lit_string_α
n516_call_proc_staged_β:
                        mov              r11, 214
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_543_22
                        mov              rax, qword ptr [rbp + 224]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_543_22
                        mov              rcx, qword ptr [rbp + 232]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_543_22:
                                                                              jmp   n512_call_proc_staged_β
.Lcall_proc_staged_α_543_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx
                        cmp              al, 104;                             je    n512_call_proc_staged_β
                                                                              jmp   n517_lit_string_α
.Lcall_proc_staged_α_543_0:
                        .quad            .Lcall_proc_staged_α_543_0_s
.Lcall_proc_staged_α_543_0_s:
                        .string          "pair/3"
                        .size            n516_call_proc_staged_bx, .-n516_call_proc_staged_bx
                        .type            n517_lit_string_bx, @function
n517_lit_string_bx:
#-----------------------------------------------------------------------------------------------------------------------
n517_lit_string_α:      mov              r11, 215
                        mov              qword ptr [rbp + 128], 2             # result
                        mov              dword ptr [rbp + 132], 2
                        mov              rax, qword ptr [rip + .Llit_string_α_544_0]
                        mov              qword ptr [rbp + 136], rax;          jmp   n518_var_ref_α
.Llit_string_α_544_0:   .quad            .Llit_string_α_544_0_s
.Llit_string_α_544_0_s: .string          "[]"
                        .size            n517_lit_string_bx, .-n517_lit_string_bx
                        .type            n518_var_ref_bx, @function
n518_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n518_var_ref_α:         mov              r11, 216
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 608]
                        mov              qword ptr [rbp + 144], rax
                        mov              qword ptr [rbp + 152], rdx;          jmp   n519_call_proc_staged_α
                        .size            n518_var_ref_bx, .-n518_var_ref_bx
                        .type            n519_call_proc_staged_bx, @function
n519_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n519_call_proc_staged_α:
                        mov              r11, 217
                        mov              qword ptr [rbp + 96], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_548_200
                        mov              rax, qword ptr [rbp + 128]
                        mov              rdx, qword ptr [rbp + 136]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_548_201
.Lcall_proc_staged_α_548_200:
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
.Lcall_proc_staged_α_548_201:
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_548_202
                        mov              rax, qword ptr [rbp + 144]
                        mov              rdx, qword ptr [rbp + 152]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 16], rax
                        mov              qword ptr [r8 + 24], rdx;            jmp   .Lcall_proc_staged_α_548_203
.Lcall_proc_staged_α_548_202:
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
.Lcall_proc_staged_α_548_203:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_548_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 4
                        mov              esi, 2
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_548_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_548_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_548_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_548_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_548_3:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_548_21
                        add              rsp, 32
.Lcall_proc_staged_α_548_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_548_2
.Lcall_proc_staged_α_548_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 96], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_548_2
.Lcall_proc_staged_α_548_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_548_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   n516_call_proc_staged_β
.Lcall_proc_staged_α_548_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_548_29
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
.Lcall_proc_staged_α_548_29:
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n516_call_proc_staged_β
                                                                              jmp   q$2F2_ret0
n519_call_proc_staged_β:
                        mov              r11, 217
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_548_22
                        mov              rax, qword ptr [rbp + 96]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_548_22
                        mov              rcx, qword ptr [rbp + 104]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_548_22:
                                                                              jmp   n516_call_proc_staged_β
.Lcall_proc_staged_α_548_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 48], rax
                        mov              qword ptr [rbp + 56], rdx
                        cmp              al, 104;                             je    n516_call_proc_staged_β
                                                                              jmp   q$2F2_ret0
.Lcall_proc_staged_α_548_0:
                        .quad            .Lcall_proc_staged_α_548_0_s
.Lcall_proc_staged_α_548_0_s:
                        .string          "safe/2"
                        .size            n519_call_proc_staged_bx, .-n519_call_proc_staged_bx
#-----------------------------------------------------------------------------------------------------------------------
q$2F2_ret0:
                        lea              rax, [rip + n519_call_proc_staged_β]
                        mov              qword ptr [rbp + 688], rax
                                                                              jmp   q$2F2_γ
#-----------------------------------------------------------------------------------------------------------------------
q$2F2_step:
                        mov              rdi, qword ptr [rbp + 672]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_tr_unwind@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        mov              qword ptr [rbp + 688], 0
                        lea              rdi, [rbp + 48]
                        xor              eax, eax
                        mov              ecx, 48
                        rep              stosb
                        mov              rax, qword ptr [rbp + 680]
                        test             rax, rax
                                                                              je    q$2F2_ω
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
q$2F2_res:
                        add              rsp, 8
                        pop              rsp
#-----------------------------------------------------------------------------------------------------------------------
q$2F2_β:
                        test             r15, r15
                                                                              jne   q$2F2_ω
                        mov              rax, qword ptr [rbp + 688]
                        mov              qword ptr [rbp + 688], 0
                        test             rax, rax
                                                                              jne   q$2F2_βres
                                                                              jmp   q$2F2_step
q$2F2_βres:
                                                                              jmp   rax
#-----------------------------------------------------------------------------------------------------------------------
q$2F2_γ:
                        mov              rdi, rax
                        mov              rsi, rdx
                        mov              rcx, qword ptr [rbp + 712]
                        mov              rax, qword ptr [rbp + 696]
                        cmp              r13, rax;                            je    q$2F2_altdet
                        lea              rdx, [rip + q$2F2_β]
                        mov              rax, rbp
                        mov              rbp, qword ptr [rbp + 728];          jmp   rcx
q$2F2_altdet:           xor              eax, eax
                        lea              rsp, [rbp + 736]
                        mov              rbp, qword ptr [rbp + 728];          jmp   rcx
#-----------------------------------------------------------------------------------------------------------------------
q$2F2_ω:
                        mov              rcx, qword ptr [rbp + 720]
                        mov              r13, qword ptr [rbp + 696]
                        lea              rsp, [rbp + 736]
                        mov              rbp, qword ptr [rbp + 728];          jmp   rcx
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
                        .type            n549_var_ref_bx, @function
n549_var_ref_bx:
#-----------------------------------------------------------------------------------------------------------------------
n549_var_ref_α:         mov              r11, 218
                        mov              rax, 4294967336
                        lea              rdx, [rbp + 176]
                        mov              qword ptr [rbp + 160], rax
                        mov              qword ptr [rbp + 168], rdx;          jmp   n550_call_proc_staged_α
                        .size            n549_var_ref_bx, .-n549_var_ref_bx
                        .type            n550_call_proc_staged_bx, @function
n550_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n550_call_proc_staged_α:
                        mov              r11, 219
                        mov              qword ptr [rbp + 128], 0
                        lea              r8, [rip + g_gc_pending]
                        mov              eax, dword ptr [r8 + 0]
                        test             eax, eax;                            jne   .Lcall_proc_staged_α_557_200
                        mov              rax, qword ptr [rbp + 160]
                        mov              rdx, qword ptr [rbp + 168]
                        lea              r8, [rip + g_call_args]
                        mov              qword ptr [r8 + 0], rax
                        mov              qword ptr [r8 + 8], rdx;             jmp   .Lcall_proc_staged_α_557_201
.Lcall_proc_staged_α_557_200:
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
.Lcall_proc_staged_α_557_201:
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_557_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
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
                        test             rax, rax;                            je    .Lcall_proc_staged_α_557_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_557_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_557_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_557_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_557_3:
                        mov              qword ptr [rbp + 128], rax
                        mov              qword ptr [rbp + 136], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_557_21
                        add              rsp, 32
.Lcall_proc_staged_α_557_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_557_2
.Lcall_proc_staged_α_557_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 128], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_557_2
.Lcall_proc_staged_α_557_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_557_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main$2F0_step
.Lcall_proc_staged_α_557_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_557_29
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
.Lcall_proc_staged_α_557_29:
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n551_var_α
n550_call_proc_staged_β:
                        mov              r11, 219
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_557_22
                        mov              rax, qword ptr [rbp + 128]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_557_22
                        mov              rcx, qword ptr [rbp + 136]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_557_22:
                                                                              jmp   main$2F0_step
.Lcall_proc_staged_α_557_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 96], rax
                        mov              qword ptr [rbp + 104], rdx
                        cmp              al, 104;                             je    main$2F0_step
                                                                              jmp   n551_var_α
.Lcall_proc_staged_α_557_0:
                        .quad            .Lcall_proc_staged_α_557_0_s
.Lcall_proc_staged_α_557_0_s:
                        .string          "q10/1"
                        .size            n550_call_proc_staged_bx, .-n550_call_proc_staged_bx
                        .type            n551_var_bx, @function
n551_var_bx:
#-----------------------------------------------------------------------------------------------------------------------
n551_var_α:             mov              r11, 220
                        mov              rax, qword ptr [rbp + 176]
                        mov              qword ptr [rbp + 80], rax
                        mov              rax, qword ptr [rbp + 184]
                        mov              qword ptr [rbp + 88], rax;           jmp   n552_call_α
                        .size            n551_var_bx, .-n551_var_bx
                        .type            n552_call_bx, @function
n552_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n552_call_α:            mov              r11, 221
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
                        cmp              al, 104;                             je    n550_call_proc_staged_β
                                                                              jmp   n553_call_α
n552_call_β:            mov              r11, 221;                            jmp   n550_call_proc_staged_β
                        .size            n552_call_bx, .-n552_call_bx
                        .type            n553_call_bx, @function
n553_call_bx:
#-----------------------------------------------------------------------------------------------------------------------
n553_call_α:            mov              r11, 222
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
                        cmp              al, 104;                             je    n550_call_proc_staged_β
                                                                              jmp   main$2F0_ret0
n553_call_β:            mov              r11, 222;                            jmp   n550_call_proc_staged_β
                        .size            n553_call_bx, .-n553_call_bx
#-----------------------------------------------------------------------------------------------------------------------
main$2F0_ret0:
                        lea              rax, [rip + n550_call_proc_staged_β]
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
                        .type            n562_call_proc_staged_bx, @function
n562_call_proc_staged_bx:
#-----------------------------------------------------------------------------------------------------------------------
n562_call_proc_staged_α:
                        mov              r11, 223
                        mov              qword ptr [rbp + 16], 0
                        sub              rsp, 8
                        lea              rax, [rip + .Lcall_proc_staged_α_564_7] # PL-CALL-ALIGN: pad the lone L(7) push to a 16B unit -- one bare 8B push here left rsp 8-mod-16 into rt_proc_call_open_det and the callee jmp, a real ABI violation (SIGSEGV in a later vsnprintf movaps; witness prolog-call-n-user-predicate-segfault). L(7) stays at [rsp+0]; the matching add-rsp-8 landings become 16.
                        push             rax
                        mov              edi, 8
                        mov              esi, 0
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_proc_call_open_det@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64]
                        test             rax, rax;                            je    .Lcall_proc_staged_α_564_1
                        lea              rcx, [rip + .Lcall_proc_staged_α_564_4]
                        push             rcx
                        lea              rcx, [rip + .Lcall_proc_staged_α_564_3]
                        push             rcx
                        lea              rdx, [rip + .Lcall_proc_staged_α_564_4]
                                                                              jmp   rax
.Lcall_proc_staged_α_564_3:
                        mov              qword ptr [rbp + 16], rax
                        mov              qword ptr [rbp + 24], rdx
                        test             rax, rax;                            jne   .Lcall_proc_staged_α_564_21
                        add              rsp, 32
.Lcall_proc_staged_α_564_21:
                        call             rt_gen_spine_pass_γ@PLT;             jmp   .Lcall_proc_staged_α_564_2
.Lcall_proc_staged_α_564_4:
                        add              rsp, 32
                        mov              qword ptr [rbp + 16], 0
                        call             rt_gen_spine_pass_ω@PLT;             jmp   .Lcall_proc_staged_α_564_2
.Lcall_proc_staged_α_564_1:
                        mov              rdi, qword ptr [rip + .Lcall_proc_staged_α_564_0]
                        mov              qword ptr [rip + rtccb+40], r8
                        mov              qword ptr [rip + rtccb+56], r10
                        mov              qword ptr [rip + rtccb+64], r11
                        call             rt_pl_iso_throw_existence_key@PLT
                        mov              r8,  qword ptr [rip + rtccb+40]
                        mov              r10, qword ptr [rip + rtccb+56]
                        mov              r11, qword ptr [rip + rtccb+64];     jmp   main_step
.Lcall_proc_staged_α_564_2:
                        mov              rcx, qword ptr [rip + rt_g_ret_by_name@GOTPCREL] # NRETURN by-name consult (live wn, consumed)
                        mov              ecx, dword ptr [rcx + 0]
                        cmp              ecx, 0;                              je    .Lcall_proc_staged_α_564_29
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
.Lcall_proc_staged_α_564_29:
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
n562_call_proc_staged_β:
                        mov              r11, 223
                        test             r15, r15;                            jne   .Lcall_proc_staged_β_564_22
                        mov              rax, qword ptr [rbp + 16]
                        test             rax, rax;                            je    .Lcall_proc_staged_β_564_22
                        mov              rcx, qword ptr [rbp + 24]
                        mov              rbp, rax
                        call             rt_gen_spine_resume_enter@PLT;       jmp   rcx
.Lcall_proc_staged_β_564_22:
                                                                              jmp   main_step
.Lcall_proc_staged_α_564_7:
                        add              rsp, 8
                        mov              qword ptr [rbp + 0], rax
                        mov              qword ptr [rbp + 8], rdx
                        cmp              al, 104;                             je    main_step
                                                                              jmp   main_γ
.Lcall_proc_staged_α_564_0:
                        .quad            .Lcall_proc_staged_α_564_0_s
.Lcall_proc_staged_α_564_0_s:
                        .string          "main/0"
                        .size            n562_call_proc_staged_bx, .-n562_call_proc_staged_bx
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
.Lstartup_pname0:       .string          "sel/3"
                        .align           8
.Lstartup_prec0:
                        .quad            .Lstartup_pname0
                        .quad            FN__sel$2F3
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
.Lstartup_pname1:       .string          "q10/1"
                        .align           8
.Lstartup_prec1:
                        .quad            .Lstartup_pname1
                        .quad            FN__q10$2F1
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            1
                        .long            0
                        .long            1376
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec1]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname2:       .string          "test/2"
                        .align           8
.Lstartup_prec2:
                        .quad            .Lstartup_pname2
                        .quad            FN__test$2F2
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
                        lea              rdi, [rip + .Lstartup_prec2]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname3:       .string          "nd/2"
                        .align           8
.Lstartup_prec3:
                        .quad            .Lstartup_pname3
                        .quad            FN__nd$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            1296
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec3]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname4:       .string          "safe/2"
                        .align           8
.Lstartup_prec4:
                        .quad            .Lstartup_pname4
                        .quad            FN__safe$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            928
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec4]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname5:       .string          "perm/2"
                        .align           8
.Lstartup_prec5:
                        .quad            .Lstartup_pname5
                        .quad            FN__perm$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            864
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec5]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname6:       .string          "pair/3"
                        .align           8
.Lstartup_prec6:
                        .quad            .Lstartup_pname6
                        .quad            FN__pair$2F3
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            3
                        .long            0
                        .long            1312
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec6]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname7:       .string          "q/2"
                        .align           8
.Lstartup_prec7:
                        .quad            .Lstartup_pname7
                        .quad            FN__q$2F2
                        .quad            0
                        .quad            0
                        .quad            0
                        .long            2
                        .long            0
                        .long            656
                        .long            24
                        .long            0
                        .long            0
                        .section         .text
                        .intel_syntax    noprefix
                        lea              rdi, [rip + .Lstartup_prec7]
                        call             rt_proc_register_rec@PLT
                        .section         .rodata
.Lstartup_pname8:       .string          "main/0"
                        .align           8
.Lstartup_prec8:
                        .quad            .Lstartup_pname8
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
                        lea              rdi, [rip + .Lstartup_prec8]
                        call             rt_proc_register_rec@PLT
                        add              rsp, 8
                        ret
                        .section         .note.GNU-stack,"",@progbits
